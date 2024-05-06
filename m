Return-Path: <devicetree+bounces-65254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EFE8BD4FB
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 20:57:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 392ECB20AE8
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 18:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF086158D95;
	Mon,  6 May 2024 18:57:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw22-7.mail.saunalahti.fi (fgw22-7.mail.saunalahti.fi [62.142.5.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696F38494
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 18:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715021831; cv=none; b=LwdmUo8gWKb2PUb8Z++oVlMQ2fRzBmIrzRMmFtSdomvF/a+6aXctkIfBwRTohiugwDbmVTneb7LNshe4ahBQfBjoBkSYIguYgzFkvtY5JzDgvDA/tWaqZXySldfVqC8939dgoMLQsfOshD17f753qHRLH/xQGONWiIXC1Y4yPvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715021831; c=relaxed/simple;
	bh=J20Je3Zl2WUSUaB+UdJsru3txq1hJF2mfkkZNQTlaQk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kiEExLXKpoyUEXS1T5uSmZ2RHRVtGqA/3TW9pJFWMrI3BrG1MllTIjVtjFE1iQZMY5ZtizlTWRb/kWoAR5/PpJ8ugqhkx7xtHzefT9UVyQRPFBQjASX3qgOXTYwcyhL3GUSYcX2ETbseWcysIdILXWrGS0mluTdl+gIjkACvcCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-25-208.elisa-laajakaista.fi [88.113.25.208])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 6f9ad5fd-0bda-11ef-b972-005056bdfda7;
	Mon, 06 May 2024 21:57:07 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2024 21:57:07 +0300
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Das Srinagesh <quic_gurus@quicinc.com>,
	Satya Priya <quic_c_skakit@quicinc.com>,
	Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 03/13] mfd: pm8008: deassert reset on probe
Message-ID: <ZjkoAzHnYTKk_6Yr@surfacebook.localdomain>
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-4-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240506150830.23709-4-johan+linaro@kernel.org>

Mon, May 06, 2024 at 05:08:20PM +0200, Johan Hovold kirjoitti:
> Request and deassert any (optional) reset gpio during probe in case it
> has been left asserted by the boot firmware.
> 
> Note the reset line is not asserted to avoid reverting to the default
> I2C address in case the firmware has configured an alternate address.

...

> +	reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(reset))
> +		return PTR_ERR(reset);

Shouldn't you wait a bit to make chip settle down?

-- 
With Best Regards,
Andy Shevchenko



