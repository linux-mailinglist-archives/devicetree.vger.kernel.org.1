Return-Path: <devicetree+bounces-137472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EF3A0922B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBC703A40EE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895B720DD7F;
	Fri, 10 Jan 2025 13:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xru5tOYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9D520B7F1
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736516185; cv=none; b=RK5ic8EE4BYx2/uIcTvg3Pn3ZQxEN+evWKM3TfoFgmP/a1KQxry/D8aPn4aPa2JcE/T/t09q+LzRrc7r5Yed5+bqZb7CFySchU29V5QpY4CcbpLtd7WgsXfUMCHZ7vaVNnAtbFK23BQSxbuUMUZJtZb2/N1Fj5jVhX95x5zKcKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736516185; c=relaxed/simple;
	bh=Znhus7UGZj7Zqfb07SzAdHZBY8Z7LwdSJyHQY81hatc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YG+RlgMtOr9WDRBnFf5Nq0757qdHi9pSiJ63bMz3Qr/GWJ0Zm3efdbS5Vkv1lRZpuzUBY3GcPOeh941Otttl/hVRm96XG+fNlqVn3bCUyq9cLMpBfH8rqmemeiNRnKoAMWZKTSuttfl+k7XNg/Vh0H0nVs+40dQ8USa/uGLHEzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xru5tOYo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361c705434so15548585e9.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736516182; x=1737120982; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8P7iNv0mAXeAGSKfCf0HUawhqYYLf6sisnMlgkknW/s=;
        b=xru5tOYon1hpfbGXNZGjzffFTXojKH3IUYMxfoSJ8JMUOS/PtGr/xhI77FnEQKC+w1
         KwHGpovtsX67LsATtNy5Ug7xvkDKWmhbd8mFnwC/TpHMZ0iTQKU1CW5SwrzeTwqWFFzq
         k9JLXJNxk4/rmKrBMnuD+2+/vkMpHXDidFlk6QQzW9D6U035eNX1XA3NiXmvJ2+zNhbc
         uOFNjmB0M089SLCoxlz+lhbHImQj6qoGXGBNqZaWydM4P54ehpGVU8pxpH94/nfVG2os
         0WaWW4Bz3CM8cSEIoaYCyjQ/ordwkuHkeNVQYRCQloP6ksbt1P+mvRULAUbRbnliQJWh
         +TNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736516182; x=1737120982;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8P7iNv0mAXeAGSKfCf0HUawhqYYLf6sisnMlgkknW/s=;
        b=Q9+1huSbm8e3Hu8eEvv897T/FYQLa7+R+RgUkwNZpqJZ9hq9XxlFpORhsioVjZpBqa
         XccnhfTK0CfkBJaQrg2WdjArDe72lpgLSPziObLu5bsr4ZHyilxEuXth6cBQ48kkXoma
         W/Z0nBV68KBUDL9nLEg/TRl+R0RtpROk2VO1+e5Diz7qCjpf3E089HxQZrFUnHnm8ogI
         gMAMSb+sCFaeMyxlle1Lv4ls00NnhwILJAXGFQwhA3TWYoRD9Vjca4unJy1z60pXxvD0
         vQoDSaOeCf+OwPTJUuTJwH1V4v8Xi6ttGUuDOMYkDfcHsrQbakDJcZ4KziT6lhaIsAsa
         4BGA==
X-Forwarded-Encrypted: i=1; AJvYcCXcBPBZ78ZXe/vLlfCoWw39HklDyO0s7wzdQAxOaoIB15RhEXNv2sPjADjEVeDNiqQjInWO9ItfiU9W@vger.kernel.org
X-Gm-Message-State: AOJu0YwvzijIpfj1DNjnFhNXBMnNMNV5r/MdSzL67nJ4fMIigWj5a4nq
	5QeTNGRswOZcaMsUO33ZfMf2xriXPe9mprx22DiBgjBc7QyO+gzT5j8n7rkXYQI=
X-Gm-Gg: ASbGncvhdCy4KAvylYpZeIMYsfoLXrv+E4kscGbjlmtZJ+LLE5B4FntFQkAquDi6yo8
	LBtIjRWqodLV2sS1eKN/m/rI41bDcJ310DKcaQulIM2sgQP5MfaEhyWaD/Pu2/a6XtiRgOJhl+B
	zaeJPUQeZEVw12ix74MbduWpzKAz7XkipTSCSVOt5b5k6mR4zit4k+SkHyhZBruhm1RrIy/pf4J
	fvDSXNlmmdo03ESFEKzwRYBn28iplMscJKDUZfLyJPH6xPP1kCqn8w=
X-Google-Smtp-Source: AGHT+IE2t38/6Fgkasnk5z1oGlZWIwNNkxu56/ClKRywxNOMHRMUbu2KBmbq53eWMrvzd2a8fGu+uA==
X-Received: by 2002:a05:600c:5486:b0:434:f131:1e64 with SMTP id 5b1f17b1804b1-436e2696d1fmr96900075e9.9.1736516181737;
        Fri, 10 Jan 2025 05:36:21 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f3f7:a818:65b5:3db])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e383dedsm4640121f8f.35.2025.01.10.05.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:36:21 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
  Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
 <airlied@gmail.com>,  Simona Vetter <simona@ffwll.ch>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Kevin Hilman <khilman@baylibre.com>,
  Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
  ao.xu@amlogic.com,  dri-devel@lists.freedesktop.org,
  linux-amlogic@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/11] drm: meson: add S4 compatible for DRM driver
In-Reply-To: <20250110-drm-s4-v1-3-cbc2d5edaae8@amlogic.com> (Ao Xu via's
	message of "Fri, 10 Jan 2025 13:39:53 +0800")
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
	<20250110-drm-s4-v1-3-cbc2d5edaae8@amlogic.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Fri, 10 Jan 2025 14:36:20 +0100
Message-ID: <1j8qriaizv.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 10 Jan 2025 at 13:39, Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org> wrote:

> From: Ao Xu <ao.xu@amlogic.com>
>
> Add S4 compatible for DRM driver. This update driver logic to support
> S4-specific configurations. This also add vpu clock operation in
> bind, suspend, resume, shutdown stage.
>
> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
> ---
>  drivers/gpu/drm/meson/meson_drv.c | 127 +++++++++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/meson/meson_drv.h |   6 ++
>  2 files changed, 132 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
> index 81d2ee37e7732dca89d02347b9c972300b38771a..d28094efeb137ae0b9990ab3608825d563358dba 100644
> --- a/drivers/gpu/drm/meson/meson_drv.c
> +++ b/drivers/gpu/drm/meson/meson_drv.c
> @@ -11,6 +11,7 @@
>  #include <linux/aperture.h>
>  #include <linux/component.h>
>  #include <linux/module.h>
> +#include <linux/clk.h>
>  #include <linux/of_graph.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
> @@ -160,6 +161,34 @@ static void meson_vpu_init(struct meson_drm *priv)
>  	writel_relaxed(value, priv->io_base + _REG(VPU_WRARB_MODE_L2C1));
>  }
>  
> +static void meson_setup_clk(struct meson_drm *priv, bool enable)
> +{
> +	int ret;
> +
> +	if (!priv || !priv->vpu_clk || !priv->vapb_clk)
> +		return;
> +
> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4))
> +		return;
> +
> +	if (enable) {
> +		ret = clk_prepare_enable(priv->vpu_clk);
> +		if (ret) {
> +			dev_err(priv->dev, "Failed to set vpu clk\n");
> +			return;
> +		}
> +		ret = clk_prepare_enable(priv->vapb_clk);
> +		if (ret) {
> +			dev_err(priv->dev, "Failed to Set vapb clk\n");
> +			clk_disable_unprepare(priv->vpu_clk);
> +			return;
> +		}
> +	} else {
> +		clk_disable_unprepare(priv->vpu_clk);
> +		clk_disable_unprepare(priv->vapb_clk);
> +	}
> +}
> +
>  struct meson_drm_soc_attr {
>  	struct meson_drm_soc_limits limits;
>  	const struct soc_device_attribute *attrs;
> @@ -241,6 +270,83 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>  		goto free_drm;
>  	}
>  
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_S4)) {
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sysctrl");
> +		if (!res) {
> +			ret = -EINVAL;
> +			goto free_drm;
> +		}
> +		/* Simply ioremap since it may be a shared register zone */

This comment, the name of the zone and even the usage you are making of
it clearly show this is repeating the error of past, directly accessing
improperly shared registers which should otherwise have been implemented
as proper controller using the kernel available framework, such PD, phys,
clock, reset, etc ...

Worse, it gets encoded into the dt binding, making extremely difficult
to fix later on.

> +		regs = devm_ioremap(dev, res->start, resource_size(res));
> +		if (!regs) {
> +			ret = -EADDRNOTAVAIL;
> +			goto free_drm;
> +		}
> +
> +		priv->sysctrl = devm_regmap_init_mmio(dev, regs,
> +						  &meson_regmap_config);
> +		if (IS_ERR(priv->sysctrl)) {
> +			dev_err(&pdev->dev, "Couldn't create the SYSCTRL regmap\n");
> +			ret = PTR_ERR(priv->sysctrl);
> +			goto free_drm;
> +		}
> +
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "clkctrl");
> +		if (!res) {
> +			ret = -EINVAL;
> +			goto free_drm;
> +		}
> +		/* Simply ioremap since it may be a shared register zone */
> +		regs = devm_ioremap(dev, res->start, resource_size(res));
> +		if (!regs) {
> +			ret = -EADDRNOTAVAIL;
> +			goto free_drm;
> +		}
> +
> +		priv->clkctrl = devm_regmap_init_mmio(dev, regs,
> +						  &meson_regmap_config);
> +		if (IS_ERR(priv->clkctrl)) {
> +			dev_err(&pdev->dev, "Couldn't create the clkctrl regmap\n");
> +			ret = PTR_ERR(priv->clkctrl);
> +			goto free_drm;
> +		}
> +
> +		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "pwrctrl");
> +		if (!res) {
> +			ret = -EINVAL;
> +			goto free_drm;
> +		}
> +		/* Simply ioremap since it may be a shared register zone */
> +		regs = devm_ioremap(dev, res->start, resource_size(res));
> +		if (!regs) {
> +			ret = -EADDRNOTAVAIL;
> +			goto free_drm;
> +		}
> +
> +		priv->pwrctrl = devm_regmap_init_mmio(dev, regs,
> +						  &meson_regmap_config);
> +		if (IS_ERR(priv->pwrctrl)) {
> +			dev_err(&pdev->dev, "Couldn't create the pwrctrl regmap\n");
> +			ret = PTR_ERR(priv->pwrctrl);
> +			goto free_drm;
> +		}
> +
> +		priv->vpu_clk = devm_clk_get(&pdev->dev, "vpu");
> +		if (IS_ERR(priv->vpu_clk)) {
> +			dev_err(&pdev->dev, "vpu clock request failed\n");
> +			ret = PTR_ERR(priv->vpu_clk);
> +			goto free_drm;
> +		}
> +
> +		priv->vapb_clk = devm_clk_get(&pdev->dev, "vapb");
> +		if (IS_ERR(priv->vapb_clk)) {
> +			dev_err(&pdev->dev, "vapb clock request failed\n");
> +			ret = PTR_ERR(priv->vapb_clk);
> +			goto free_drm;
> +		}
> +		meson_setup_clk(priv, true);
> +	}
> +
>  	priv->canvas = meson_canvas_get(dev);
>  	if (IS_ERR(priv->canvas)) {
>  		ret = PTR_ERR(priv->canvas);
> @@ -424,12 +530,21 @@ static const struct component_master_ops meson_drv_master_ops = {
>  
>  static int __maybe_unused meson_drv_pm_suspend(struct device *dev)
>  {
> +	int ret;
>  	struct meson_drm *priv = dev_get_drvdata(dev);
>  
>  	if (!priv)
>  		return 0;
>  
> -	return drm_mode_config_helper_suspend(priv->drm);
> +	ret = drm_mode_config_helper_suspend(priv->drm);
> +	if (unlikely(ret)) {
> +		drm_err(dev, "suspend error: %d", ret);
> +		return ret;
> +	}
> +
> +	meson_setup_clk(priv, false);
> +
> +	return ret;
>  }
>  
>  static int __maybe_unused meson_drv_pm_resume(struct device *dev)
> @@ -439,6 +554,7 @@ static int __maybe_unused meson_drv_pm_resume(struct device *dev)
>  	if (!priv)
>  		return 0;
>  
> +	meson_setup_clk(priv, true);
>  	meson_vpu_init(priv);
>  	meson_venc_init(priv);
>  	meson_vpp_init(priv);
> @@ -458,6 +574,7 @@ static void meson_drv_shutdown(struct platform_device *pdev)
>  
>  	drm_kms_helper_poll_fini(priv->drm);
>  	drm_atomic_helper_shutdown(priv->drm);
> +	meson_setup_clk(priv, false);
>  }
>  
>  /*
> @@ -471,6 +588,7 @@ static const struct of_device_id components_dev_match[] = {
>  	{ .compatible = "amlogic,meson-gxl-dw-hdmi" },
>  	{ .compatible = "amlogic,meson-gxm-dw-hdmi" },
>  	{ .compatible = "amlogic,meson-g12a-dw-hdmi" },
> +	{ .compatible = "amlogic,meson-s4-dw-hdmi" },
>  	{}
>  };
>  
> @@ -539,6 +657,11 @@ static struct meson_drm_match_data meson_drm_g12a_data = {
>  	.afbcd_ops = &meson_afbcd_g12a_ops,
>  };
>  
> +static struct meson_drm_match_data meson_drm_s4_data = {
> +	.compat = VPU_COMPATIBLE_S4,
> +	.afbcd_ops = &meson_afbcd_g12a_ops,
> +};
> +
>  static const struct of_device_id dt_match[] = {
>  	{ .compatible = "amlogic,meson-gxbb-vpu",
>  	  .data       = (void *)&meson_drm_gxbb_data },
> @@ -548,6 +671,8 @@ static const struct of_device_id dt_match[] = {
>  	  .data       = (void *)&meson_drm_gxm_data },
>  	{ .compatible = "amlogic,meson-g12a-vpu",
>  	  .data       = (void *)&meson_drm_g12a_data },
> +	{ .compatible = "amlogic,meson-s4-vpu",
> +	  .data       = (void *)&meson_drm_s4_data },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> index 3f9345c14f31c13b071f420533fe8a450d3e0f36..c801a2e3e55a054247710aebae5602e44c9e1624 100644
> --- a/drivers/gpu/drm/meson/meson_drv.h
> +++ b/drivers/gpu/drm/meson/meson_drv.h
> @@ -22,6 +22,7 @@ enum vpu_compatible {
>  	VPU_COMPATIBLE_GXL  = 1,
>  	VPU_COMPATIBLE_GXM  = 2,
>  	VPU_COMPATIBLE_G12A = 3,
> +	VPU_COMPATIBLE_S4 = 4,
>  };
>  
>  enum {
> @@ -45,6 +46,11 @@ struct meson_drm {
>  	enum vpu_compatible compat;
>  	void __iomem *io_base;
>  	struct regmap *hhi;
> +	struct regmap *sysctrl;
> +	struct regmap *clkctrl;
> +	struct regmap *pwrctrl;
> +	struct clk *vpu_clk;
> +	struct clk *vapb_clk;
>  	int vsync_irq;
>  
>  	struct meson_canvas *canvas;

-- 
Jerome

