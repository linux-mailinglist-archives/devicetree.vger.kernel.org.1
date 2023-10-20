Return-Path: <devicetree+bounces-10236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB287D05C6
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 02:21:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E2E91C20AB7
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 00:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A622375;
	Fri, 20 Oct 2023 00:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FHp5a9aG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7EA369
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 00:21:10 +0000 (UTC)
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394AA11D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 17:21:08 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2739c8862d2so68567a91.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 17:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697761268; x=1698366068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AazS8e3mWG6qdiQRzyWIWi2ZxzZq0l/gtqP+3nsv/Jw=;
        b=FHp5a9aGsUNZjUm8d8jjYNZGyAjt53FYzftWu/t8lLZHuKS/ESqwnZkrquB3aJ/fGv
         hHa1nKM2Z/mpfNFngMG4QhJ7pot1gOQfU0Gz5hDteOd4NXfad/ekVJKM3Cl+AaJNM+fx
         5Sly5ZWteChv5dA5MJNTxagT6yjhkv0ZWt3A4nZxJGMu+3z0CNpXa7OALwiqFQFZTKWU
         DTBQqKbBxXgU3N9qGkieTezxt9LG4rAAlXqRLUbEM4+CTf+x6ig1fKI+Jm0HY5ZGvxVD
         T3I88VC80A2PjKMDp/txl3DgFAvj/guh8ZYRnK27KgcqKnOm4rU3sxwmC/84g5fkHy9H
         AXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697761268; x=1698366068;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AazS8e3mWG6qdiQRzyWIWi2ZxzZq0l/gtqP+3nsv/Jw=;
        b=UhzbsHuQ/hFcI2IkXZAJHMncKGkqnh39YJGyU2rgdfnrDQ74/v9RN/pSXT+VZqzrs2
         Lswt2DxcAjUOPp9ZUuGXUUVqKALp06EDRAVsHpfKZJ+kmqtKW85gOvvLMV439Aj9QGE5
         wOh40Bwuntyx64PUCd1VHbnLsg8fSW+/MWwMVr7VZQMJ1qBWKiNG4DUQUI8LYB3weJB2
         8JNyyQlz7jgO2O1ZfgAePvrFeGrfOMlvAZRZb+Ty2mQLKoE3gi1tcZmpw8+pExQgb2Zn
         CC6LvByvVoTYb8cU6FEiFK1nr9rbRxN1eSR/l2yvUMiJt4UqsghIWPHd8I2SgbRwuBb+
         ymHw==
X-Gm-Message-State: AOJu0YyWpTXjlag946LJCfi9Wab66kmPTOeTFPAgM9EFnSTdVBbE3Jvn
	n+JHVaLTTHGKsA4RGGsYkaVFTg==
X-Google-Smtp-Source: AGHT+IGs8jvjaM8tAopk/BiBZwpdGjzq5RLDH6wWLbZD7+wzqgc9cO8iiFexYNATXB3GHDxFUwhTOA==
X-Received: by 2002:a17:90b:33c4:b0:274:60c7:e15a with SMTP id lk4-20020a17090b33c400b0027460c7e15amr461810pjb.4.1697761267551;
        Thu, 19 Oct 2023 17:21:07 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:8685:4bd3:8dc9:1f68])
        by smtp.gmail.com with ESMTPSA id cx3-20020a17090afd8300b0027d1366d113sm2060953pjb.43.2023.10.19.17.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 17:21:07 -0700 (PDT)
Date: Fri, 20 Oct 2023 09:21:02 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: andy.shevchenko@gmail.com
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 0/5] gpio: add pinctrl based generic gpio driver
Message-ID: <ZTHH7vwG7hRneZls@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	andy.shevchenko@gmail.com, sudeep.holla@arm.com,
	cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <ZTGfXsLc_Z6yj_HB@surfacebook.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZTGfXsLc_Z6yj_HB@surfacebook.localdomain>

Hi Andy,

On Fri, Oct 20, 2023 at 12:27:58AM +0300, andy.shevchenko@gmail.com wrote:
> Thu, Oct 05, 2023 at 11:58:38AM +0900, AKASHI Takahiro kirjoitti:
> > This is a revised version of my previous RFC[1]. Although I modified
> > the commits to make them look SCMI-independent, they are still posted
> > as RFC because I have never tested them on real hardware.
> > 
> > (background)
> > I'm currently working on implementing SCMI pinctrl/gpio drivers
> > on U-Boot[2]. Although the pinctrl driver for the kernel[3] was submitted
> > by EPAM, it doesn't contain the gpio driver and I believe that we should
> > discuss a couple of points on the kernel side to finalize my design for
> > U-Boot. 
> > 
> > So this RFC is intended for reviews, especially to raise some issues.
> > 
> > 1) how to obtain a value on an input pin
> >    All the existing gpio drivers are set to obtain a value on an input
> >    pin by accessing the hardware directly. In SCMI case, however, this is
> >    just impossible in its nature and must be supported via a protocol
> >    using "Input-value" configuration type. (See the spec[4], table-23.)
> > 
> >    The current pinconf framework is missing the feature (the pinconf
> >    parameter and a helper function). See patch#1, #2 and #3.
> > 
> >    Please note that there is an issue around the pin configuration in
> >    EPAM's current pinctrl driver as I commented[5].
> > 
> > 2) DT bindings
> >    I would like to propose a generic binding for pinctrl based gpio driver.
> >    This allows a "consumer" driver to handle gpio pins like as other
> >    normal gpio controllers support. (patch#5)
> > 
> > 3) generic GPIO driver
> >    Based on (2), I tried to prototype a generic driver in patch#4.
> >    Thanks to a set of existing pinctrl_gpio helper functions, except (1),
> >    It seems that the driver can be implemented not relying on pin controller
> >    specific code, at least for SCMI pinctrl.
> > 
> > I will appreciate any comments.
> 
> Any comment here: I'm listed as a designated reviewer of GPIO patches, why am I
> not Cc'ed on this?

My apologies. I will add you in Cc.

> I definitely have some comments against the code (no DT,
> though). Please, use (up-to-date) MAINTAINERS in your v3.

Please don't hesitate to make comments here on v2 so that I can
include your reviews in v3.

Thanks,
-Takahiro Akashi


> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

