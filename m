Return-Path: <devicetree+bounces-150084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C8AA41260
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 00:55:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 866F9188C6C3
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 23:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4FC202F62;
	Sun, 23 Feb 2025 23:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fPRZ2NQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F9E78F2D
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740354902; cv=none; b=ivInzjs1eeM6UE8oRx2NY+5KGtaF8X0QYQr3fdxhbmzxh4BK1Z0wRVlugY1SBPrRq4txvBYjqZbKdijAX9xqz3ALaTNQFgJgwjj3dnk8EtmSCN64+L/jigQOV1JYen1x5KmzON0cRJUG2RUSLlmv/r/xmzjS2VO1LFnqgOi7c8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740354902; c=relaxed/simple;
	bh=MhI3+YlO7szsaGLZnhXiCP4zRGkkr3TjGs8hymUVHF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jw4PAgLi9+VO7acw/C2TKNQaAZ+UjaH54sVp6/3LmvYYKPU1Yj/rgy7gP+mcojsai0IAxX7XXdzjmvTh8I7RiIAuvkJpe90ozG65hSVNZEWTYfDNVNuZzEAErvoHNRN2O2mv6Ddp/AynN3LlcuQz5Ktg/+yBK/phvrlRIc4VGhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fPRZ2NQt; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30737db1aa9so36876851fa.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 15:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354899; x=1740959699; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MO69vvfxawoe2HNuQ/9QFZVUJBZNSU898FyLnskC1yc=;
        b=fPRZ2NQtvgsPig3m6Sg3uuOKpF/Ni0VekaWfR+tWDabrHpbvvJPDAAy/GtY/YLcEvp
         jiYnq7lyNTRp30gdAOUt8x7XHAHLMtzCvALp2/QILlhb9XKF9szjeGFiNFasaNMRMAww
         UmEWPgoiVP65ZxLtkyYSTsGqJJhihDYKJr5NOUivQ2fX/N2HlAeZkAkA1qeFtvl4S/Lm
         CG8t8+L2sPeNRKmbGj+NxMSKxTragh49IgAYdYy/W/5UwkBD94uCIaKI30mW4o++8i8O
         RVd2NVO5OG5v4Sjuwnkd47fxvF0FOhfNMwmxzTKYLWjuExLU2cOZjZrhImc+hzwSpSrB
         XMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354899; x=1740959699;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MO69vvfxawoe2HNuQ/9QFZVUJBZNSU898FyLnskC1yc=;
        b=jgo78iZnwN5Z0vcHK9EFmDVz2gHq0ERmOWgP3ypFZ6SfG/RJz3cRoLhTpVSRm6nSRF
         Quy7L6Bu7bp/UjS/lWZKFKFjVV/lJx0MJJK7rrhlhn2hJcB4OU3NUC/cIFuc6CMGFAUw
         WQNx5yNFDsgqBCi+3PtOsthWVExMv6zdH/mp79DtD8Fgo6uMAO34Sls7+OpVEYEWaVto
         aZuc2VIjiEY46h4VVQaP62ziRgtCjsV3YiQBiwC7GyQoj7gKMXwVZKO6ZwDtJKsLFAs/
         BryCJEe8x+94110W2srVnfLd2rXpS4T8o1hCakp3ibrSK42ynIJAyp3eRxSFAtQBfIVj
         uyWw==
X-Forwarded-Encrypted: i=1; AJvYcCWVozV7J/9ioFuFgHs2OHn0vE+mtGCTQmDm4jqYxCW9SpWfZhbezDIULjgabCsQi5q+ZkGhhPHE0BP3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzafzin/klAwQf/DOXi51WfH+EwDsh+ukPTvGzj2zXyO6GrLd9f
	BvJAes6VQSem7JR+Oxy5jiTu7RbU/HaTs2n9EznOlDNugQ6Mg3mDUB1ywLBoHOc=
X-Gm-Gg: ASbGncvu/5PbSlo7K0c52zHzT1zZmqE+w/plz3hDmTXx82corUGHpmkh0p1unVupHz8
	nG3CNfSGlyWRjyU0olDWpAzeZSrjXQEK2GewpG3Sg6MHTjNCQt3ghbJGTqZIp/XseZcAyt0WViz
	S0f/uh8+wLeIEw6SfdseEEZCR//1UYG9h512hOY9DOZPwklc6Ox7RXF0NQcrm1FI5j0zxvXaJlu
	w47Q432hQ1apCQmW1EjYLuK4jbiAN9pgeSplsa8TWzI3aOBvOdsTwUix7eiKcn7fZk7ufaN/V+M
	q/q5Yf4evXS0O0gIMSaydDOqbseR0pULmjMeAfQ2hPb4gAtq9HNyZXrRfFzIOtKCy83EdUWNF4k
	HJOr15g==
X-Google-Smtp-Source: AGHT+IHWZiY9l4ceFSLMfzXCkrvrA7BoZtPrqLKoUOz7ReQ2TLLajGXi72SpKOyuPoZptA2mBy16jg==
X-Received: by 2002:a05:6512:3b10:b0:545:2efc:745d with SMTP id 2adb3069b0e04-54838f79c81mr4594575e87.46.1740354898995;
        Sun, 23 Feb 2025 15:54:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462f125a0esm1423144e87.24.2025.02.23.15.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:54:57 -0800 (PST)
Date: Mon, 24 Feb 2025 01:54:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/8] phy: samsung: add Exynos2200 usb phy controller
Message-ID: <tkzfgfbu6j22c75zieponozeld5vvlqv65fnzjy3n2am2ajim5@yhc3tcr5ulfy>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-9-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-9-ivo.ivanov.ivanov1@gmail.com>

On Sun, Feb 23, 2025 at 02:22:27PM +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC comes with a TI external repeater and 3 USB PHYs:
> - snps eUSB2 for UTMI
> - snps USBDP combophy for PIPE3 and DP
> - samsung USBCON phy
> 
> The USBCON phy is an intermediary between the USB controller (DWC3)
> and the underlying PHYs. Add a new driver for it, modelled to take
> a phandle to the high-speed PHY for now.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/samsung/Kconfig                 |  12 +
>  drivers/phy/samsung/Makefile                |   1 +
>  drivers/phy/samsung/phy-exynos2200-usbcon.c | 250 ++++++++++++++++++++
>  3 files changed, 263 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-exynos2200-usbcon.c
> 
> diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
> index e2330b089..0f809a382 100644
> --- a/drivers/phy/samsung/Kconfig
> +++ b/drivers/phy/samsung/Kconfig
> @@ -77,6 +77,18 @@ config PHY_S5PV210_USB2
>  	  particular SoC is compiled in the driver. In case of S5PV210 two phys
>  	  are available - device and host.
>  
> +config PHY_EXYNOS2200_USBCON
> +	tristate "Exynos2200 USBCON PHY driver"
> +	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	select MFD_SYSCON
> +	default y
> +	help
> +	  Enable USBCON PHY support for Exynos2200 SoC.
> +	  This driver provides PHY interface for the USBCON phy, which acts as
> +	  an intermediary between the USB controller and underlying PHYs.
> +
>  config PHY_EXYNOS5_USBDRD
>  	tristate "Exynos5 SoC series USB DRD PHY driver"
>  	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index fea1f96d0..e2686a3f5 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -14,5 +14,6 @@ phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4X12_USB2)	+= phy-exynos4x12-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS5250_USB2)	+= phy-exynos5250-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_S5PV210_USB2)	+= phy-s5pv210-usb2.o
> +obj-$(CONFIG_PHY_EXYNOS2200_USBCON)	+= phy-exynos2200-usbcon.o
>  obj-$(CONFIG_PHY_EXYNOS5_USBDRD)	+= phy-exynos5-usbdrd.o
>  obj-$(CONFIG_PHY_EXYNOS5250_SATA)	+= phy-exynos5250-sata.o
> diff --git a/drivers/phy/samsung/phy-exynos2200-usbcon.c b/drivers/phy/samsung/phy-exynos2200-usbcon.c
> new file mode 100644
> index 000000000..aad59349e
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynos2200-usbcon.c
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/soc/samsung/exynos-regs-pmu.h>
> +
> +#define EXYNOS2200_USBCON_LINKCTRL		0x4
> +#define LINKCTRL_FORCE_QACT			BIT(8)
> +
> +#define EXYNOS2200_USBCON_UTMI_CTRL		0x10
> +#define UTMI_CTRL_FORCESLEEP			BIT(13)
> +#define UTMI_CTRL_FORCESUSPEND			BIT(12)
> +#define UTMI_CTRL_FORCE_VBUSVALID		BIT(1)
> +#define UTMI_CTRL_FORCE_BVALID			BIT(0)
> +
> +#define EXYNOS2200_USBCON_LINK_CLKRST		0xc
> +#define LINK_CLKRST_SW_RST			BIT(0)
> +
> +struct exynos2200_usbcon_phy_drvdata {
> +	const char * const *clk_names;
> +	int num_clks;
> +};
> +
> +struct exynos2200_usbcon_phy {
> +	struct phy *phy;
> +	void __iomem *base;
> +	struct regmap *reg_pmu;
> +	struct clk_bulk_data *clks;
> +	const struct exynos2200_usbcon_phy_drvdata *drv_data;
> +	u32 pmu_offset;
> +	struct phy *hs_phy;
> +};
> +
> +static void exynos2200_usbcon_phy_isol(struct exynos2200_usbcon_phy *inst,
> +				       bool isolate)
> +{
> +	unsigned int val;
> +
> +	if (!inst->reg_pmu)
> +		return;
> +
> +	val = isolate ? 0 : EXYNOS4_PHY_ENABLE;
> +
> +	regmap_update_bits(inst->reg_pmu, inst->pmu_offset,
> +			   EXYNOS4_PHY_ENABLE, val);
> +}
> +
> +static void exynos2200_usbcon_phy_write_mask(void __iomem *base, u32 offset,
> +					     u32 mask, u32 val)
> +{
> +	u32 reg;
> +
> +	reg = readl(base + offset);
> +	reg &= ~mask;
> +	reg |= val & mask;
> +	writel(reg, base + offset);

Does this need any kind of locking? Maybe you can use regmap for this
access too?

> +
> +	/* Ensure above write is completed */
> +	readl(base + offset);
> +}

[...]

> +
> +	generic_phy = devm_phy_create(dev, NULL, &exynos2200_usbcon_phy_ops);
> +	if (IS_ERR(generic_phy))
> +		return dev_err_probe(dev, PTR_ERR(generic_phy),
> +				     "failed to create phy %d\n", ret);
> +
> +	dev_set_drvdata(dev, phy);

Nit: unused. LGTM otherwise.

> +	phy_set_drvdata(generic_phy, phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return dev_err_probe(dev, PTR_ERR(phy_provider),
> +				     "failed to register phy provider\n");
> +
> +	return 0;
> +}
> +
> +static const char * const exynos2200_clk_names[] = {
> +	"bus",
> +};
> +
> +static const struct exynos2200_usbcon_phy_drvdata exynos2200_usbcon_phy = {
> +	.clk_names		= exynos2200_clk_names,
> +	.num_clks		= ARRAY_SIZE(exynos2200_clk_names),
> +};
> +
> +static const struct of_device_id exynos2200_usbcon_phy_of_match_table[] = {
> +	{
> +		.compatible = "samsung,exynos2200-usbcon-phy",
> +		.data = &exynos2200_usbcon_phy,
> +	}, { },
> +};
> +MODULE_DEVICE_TABLE(of, exynos2200_usbcon_phy_of_match_table);
> +
> +static struct platform_driver exynos2200_usbcon_phy_driver = {
> +	.probe		= exynos2200_usbcon_phy_probe,
> +	.driver = {
> +		.name	= "exynos2200-usbcon-phy",
> +		.of_match_table = exynos2200_usbcon_phy_of_match_table,
> +	},
> +};
> +
> +module_platform_driver(exynos2200_usbcon_phy_driver);
> +MODULE_DESCRIPTION("Exynos2200 USBCON PHY driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

