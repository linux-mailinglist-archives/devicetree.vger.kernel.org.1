Return-Path: <devicetree+bounces-133509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 043AA9FAD4F
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DF5C7A1C8B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2E77192B9D;
	Mon, 23 Dec 2024 10:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qp9sfv/6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE90D2F3E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951106; cv=none; b=rUHqCS8wHTsdmGkBv5LnxHbSrXuPWe2IHPuvO+O3Idf4CqRfKW4CuiQgeiDA2e33s55gq/itl3b/g+oatz/EIkM9ZW/8f8z2rEC3q94Uiyk8rU1frlkS4dIeuqeZ85zX1hj273b95l481EYmC/rOFmHwayPDiQi/HYibb50tFss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951106; c=relaxed/simple;
	bh=WI7HhcfpjcBt5fd7xwBht5+u2wyeHlcBV3wwBiN6ADY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nZhYxyuaYwMQQhl8ZJnT1krwQAVSBPuOB/cz0jVpAN0f62sgRPxoDJb2JRx8MFFlS/MJmh2088EVG6Fil+q5hE78vRFTXLiTL66ld8NKIyqhufLUXsHCMA+uykpl/s1pCnbhm/FqYnBHxAgitTUi1CuSkUYMVbS9SkGr3T8k6T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qp9sfv/6; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-303489e8775so43021531fa.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734951103; x=1735555903; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PysGQXFhFIaY82I36Y7kVr5DOhB1P1lEm8vqt8odrR0=;
        b=qp9sfv/6b/TIeLFX+haIkjrV13px+eiR4So7jhnkwaonusTgvOs55+imc17hfvKUYu
         yDxhZ7T/GPfUvAA5lJYRdYUtFf0991FdfBAJcRtxKYUC3CfSJRH0SyoycamF+gGar6DL
         0/qs8oDbZ5hjAOGDr76BsbDDyqCS5SyKsRt2G0JD1nvjCB92oUzcKKWidq1ikYCLhwyG
         cJeBwfQITGbFixJHPVVbHsWKEd0yjYyatqtpqrirLIpvod+APMzms6OOYlfiBWR0Xz+/
         1T03nFfBB0QnCUp3YsLMoOnyFH1y5BVyPYAY1aRqNaxUpW8hmnFcEgLWAjGaD3xt0R3f
         OX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734951103; x=1735555903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PysGQXFhFIaY82I36Y7kVr5DOhB1P1lEm8vqt8odrR0=;
        b=kEsbKDDbocSwCFYu0BLA3FSIVNe7saedshnpAl43UdDXvzl2Mx4mzkL15/iBjdgkly
         Urqqpouo1is6CZ+8rkSMZqYmgS/NK6kd6YvFZia5n/ioVmVY8kKpkj87116QqY8DlRVX
         IufhgI1gLLI8gqoYLE+k7ri92CQvvG6ZB4SqKt5oB1VFn6hQiUDwpYIOFBD/m739D46j
         5If65HHsR8swXishQa1ywSscp2TjKOtaI1gJc5Qn1hAU0O4nGamEydRHSNOvt1sjTiJ0
         29UWuB9EAchkXO2o1r6i4DaLgpoxg7u0lfjjVARlmpMkTVt9vEtyWw2IMIx4YB0DadER
         pS5A==
X-Forwarded-Encrypted: i=1; AJvYcCVlwJuoBhLWnAEuxF80rl2L1zD/5k/+St0DsiRaQYjlAyGqEGsySnP+e66EPs/qvWzrvdVP93lGutUG@vger.kernel.org
X-Gm-Message-State: AOJu0YzTPcUDVYbziI9JgU2uk8P9ylizR8SkidvlnnLzQTmjtcgU40+k
	dALUo6Isq9IV3QH93qSu5LdEyUwv60s2lCuN5yZZGSUA99QlkoeN/N9iM3BmJ0Q=
X-Gm-Gg: ASbGncvvT1gAFsh35Z+9dMuIEetS0wAC15XlY5ovf1Puusg9+VfGtOoV1AlctzBEDIp
	EI7nbzW/JJnWHBPkzp1mL3f8ev0TVwYh6tRWXO2lHMKtU/Pudy61zpBUdDKzJ7x1L6GRqOgK6j3
	aYrXwrpjGi48Xy632hRD/mhBbAn6p8X3hoxHJFZ9HUemjUWHuDQQUnLQpXFZRf8b180X+MTqceU
	6gGula+soK0HLbW9B8ZFPWLzeMvqChMwBLbPQPP5F3T8vPBWBhFg9ArYpJKwJojJ9kI9hZg7e6i
	hJHL5hdlSgk611mV8SKkoYRk5Um1lK8wQfpd
X-Google-Smtp-Source: AGHT+IG+15flgGLqsMrZ5BL4gMnDHWQG9KiSz+F4gPV4kBjlj5dHbyvd5yf8E3fFs/QR/3iviG06Bg==
X-Received: by 2002:a05:6512:1150:b0:541:cdef:7ca3 with SMTP id 2adb3069b0e04-5422953c1a8mr3075505e87.27.1734951102906;
        Mon, 23 Dec 2024 02:51:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238216c0sm1231593e87.218.2024.12.23.02.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 02:51:42 -0800 (PST)
Date: Mon, 23 Dec 2024 12:51:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <6mhlb26vdfc7v3jmb7y3tlcuo336x7vkblbkzd5sosd6urirou@bbfalnfisdij>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-10-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-10-victor.liu@nxp.com>

On Mon, Dec 23, 2024 at 02:41:37PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The FrameGen driver, TCon driver and display engine driver
> are components to be aggregated by a master registered in the upcoming
> DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.

Unfortunately no. Your instances are compatible on the hardware level
(at least they were with the previous versions, I don't think that
there was a silicon change).

> * Collect Maxime's R-b tag.
> * Trivial tweaks.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-{de,fg,tc}.c. (Uwe)
> * Select REGMAP and REGMAP_MMIO Kconfig options.
> * Fix commit message to state that display engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_fg_displaymode() and dc_fg_panic_displaymode() function calls from
>   KMS routine to initialization stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.
> * Add dev member to struct dc_tc.
> 
>  drivers/gpu/drm/imx/Kconfig     |   1 +
>  drivers/gpu/drm/imx/Makefile    |   1 +
>  drivers/gpu/drm/imx/dc/Kconfig  |   7 +
>  drivers/gpu/drm/imx/dc/Makefile |   5 +
>  drivers/gpu/drm/imx/dc/dc-de.c  | 153 +++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h  |  62 ++++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
>  drivers/gpu/drm/imx/dc/dc-drv.h |  29 +++
>  drivers/gpu/drm/imx/dc/dc-fg.c  | 378 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-tc.c  | 142 ++++++++++++
>  10 files changed, 810 insertions(+)
>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> 

[...]

> +
> +static int dc_de_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	void __iomem *base_top;
> +	struct dc_de *de;
> +	int ret;
> +
> +	de = devm_kzalloc(dev, sizeof(*de), GFP_KERNEL);
> +	if (!de)
> +		return -ENOMEM;
> +
> +	de->id = (enum dc_de_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base_top = devm_platform_ioremap_resource_byname(pdev, "top");
> +	if (IS_ERR(base_top))
> +		return PTR_ERR(base_top);
> +
> +	de->reg_top = devm_regmap_init_mmio(dev, base_top,
> +					    &dc_de_top_regmap_config);
> +	if (IS_ERR(de->reg_top))
> +		return PTR_ERR(de->reg_top);
> +
> +	de->irq_shdld = platform_get_irq_byname(pdev, "shdload");

Nit: shdload or shdld? Which one is used in the documentation?

> +	if (de->irq_shdld < 0)
> +		return de->irq_shdld;
> +
> +	de->irq_framecomplete = platform_get_irq_byname(pdev, "framecomplete");
> +	if (de->irq_framecomplete < 0)
> +		return de->irq_framecomplete;
> +
> +	de->irq_seqcomplete = platform_get_irq_byname(pdev, "seqcomplete");
> +	if (de->irq_seqcomplete < 0)
> +		return de->irq_seqcomplete;
> +
> +	de->dev = dev;
> +
> +	dev_set_drvdata(dev, de);
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
> +
> +	dc_drm->de[de->id] = de;
> +
> +	return 0;
> +}
> +

[...]

> +
> +struct dc_de {
> +	struct device *dev;
> +	struct regmap *reg_top;
> +	struct dc_fg *fg;
> +	struct dc_tc *tc;
> +	int irq_shdld;
> +	int irq_framecomplete;
> +	int irq_seqcomplete;
> +	enum dc_de_id id;

Why do you need to store it? This patch makes use of it just for the
registration.

> +};
> +

[...]

> +static int dc_fg_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	void __iomem *base;
> +	enum dc_fg_id id;
> +	struct dc_fg *fg;
> +	struct dc_de *de;
> +
> +	fg = devm_kzalloc(dev, sizeof(*fg), GFP_KERNEL);
> +	if (!fg)
> +		return -ENOMEM;
> +
> +	id = (enum dc_fg_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	fg->reg = devm_regmap_init_mmio(dev, base, &dc_fg_regmap_config);
> +	if (IS_ERR(fg->reg))
> +		return PTR_ERR(fg->reg);
> +
> +	fg->clk_disp = devm_clk_get(dev, NULL);
> +	if (IS_ERR(fg->clk_disp))
> +		return dev_err_probe(dev, PTR_ERR(fg->clk_disp),
> +				     "failed to get display clock\n");
> +
> +	fg->dev = dev;
> +
> +	de = dc_drm->de[id];

This depends on a particular order of component's being bound. If the
order changes for whatever reason (e.g. due to component.c
implementation being changed) then your driver might crash here.

This applies to several other places in the driver.

> +	de->fg = fg;
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

