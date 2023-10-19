Return-Path: <devicetree+bounces-10228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C49A57D040D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19A311F2359B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 21:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70CCE3C6A0;
	Thu, 19 Oct 2023 21:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FDDC140
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 21:29:06 +0000 (UTC)
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 19 Oct 2023 14:29:04 PDT
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64A8106
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:29:04 -0700 (PDT)
Received: from localhost (88-113-24-34.elisa-laajakaista.fi [88.113.24.34])
	by fgw22.mail.saunalahti.fi (Halon) with ESMTP
	id 5fac9ca2-6ec6-11ee-a9de-005056bdf889;
	Fri, 20 Oct 2023 00:27:58 +0300 (EEST)
From: andy.shevchenko@gmail.com
Date: Fri, 20 Oct 2023 00:27:58 +0300
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 0/5] gpio: add pinctrl based generic gpio driver
Message-ID: <ZTGfXsLc_Z6yj_HB@surfacebook.localdomain>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005025843.508689-1-takahiro.akashi@linaro.org>

Thu, Oct 05, 2023 at 11:58:38AM +0900, AKASHI Takahiro kirjoitti:
> This is a revised version of my previous RFC[1]. Although I modified
> the commits to make them look SCMI-independent, they are still posted
> as RFC because I have never tested them on real hardware.
> 
> (background)
> I'm currently working on implementing SCMI pinctrl/gpio drivers
> on U-Boot[2]. Although the pinctrl driver for the kernel[3] was submitted
> by EPAM, it doesn't contain the gpio driver and I believe that we should
> discuss a couple of points on the kernel side to finalize my design for
> U-Boot. 
> 
> So this RFC is intended for reviews, especially to raise some issues.
> 
> 1) how to obtain a value on an input pin
>    All the existing gpio drivers are set to obtain a value on an input
>    pin by accessing the hardware directly. In SCMI case, however, this is
>    just impossible in its nature and must be supported via a protocol
>    using "Input-value" configuration type. (See the spec[4], table-23.)
> 
>    The current pinconf framework is missing the feature (the pinconf
>    parameter and a helper function). See patch#1, #2 and #3.
> 
>    Please note that there is an issue around the pin configuration in
>    EPAM's current pinctrl driver as I commented[5].
> 
> 2) DT bindings
>    I would like to propose a generic binding for pinctrl based gpio driver.
>    This allows a "consumer" driver to handle gpio pins like as other
>    normal gpio controllers support. (patch#5)
> 
> 3) generic GPIO driver
>    Based on (2), I tried to prototype a generic driver in patch#4.
>    Thanks to a set of existing pinctrl_gpio helper functions, except (1),
>    It seems that the driver can be implemented not relying on pin controller
>    specific code, at least for SCMI pinctrl.
> 
> I will appreciate any comments.

Any comment here: I'm listed as a designated reviewer of GPIO patches, why am I
not Cc'ed on this? I definitely have some comments against the code (no DT,
though). Please, use (up-to-date) MAINTAINERS in your v3.

-- 
With Best Regards,
Andy Shevchenko



