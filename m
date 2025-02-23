Return-Path: <devicetree+bounces-150083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBEFA4125C
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 00:52:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F1513A304C
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 23:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63638204C0B;
	Sun, 23 Feb 2025 23:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AC8MTrwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA061FCFE6
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740354722; cv=none; b=fmW0yx+iBg8TlzQR1ghlwtPu6XjNytZ8S4mBYJqg35agM4ORxIC/GfN98fyxV9nfm0RWOkb7AUhrnqslYKd1EnXLhGMbB9NBnj/92fQaCisJACaW46CifAI4pEOjuXNJd9sLX9AFl2qRjzrVkmKmsZX442WzLPUNGM5tpO0sBSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740354722; c=relaxed/simple;
	bh=cVnkL0OykbviiyBibblWdxGIMtt3l46QEn5+cgf3624=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z0SQ8/a89jRB39HZsEHJGZPsu//zd7egzFEGZhHa9b9GzldoFtSZNp/FixaJHU0/Tmn3eAFUMu3FTSmnFCc8r5wknUKwTvLRnljXeCGq2AGS0tsDsBEvoMfBPRNBQEvFczfaZyJCZWYU46tI9qIXJXmT0Z+NpSfd+QEf+iPbUbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AC8MTrwM; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30613802a04so40798631fa.2
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 15:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354718; x=1740959518; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZqpsSfd4hK9sMOyyiNPBFdSaUXrM9eOMXEQlPVLZ1L4=;
        b=AC8MTrwMoPeeFkM3OZA+Uyqwp9FIDY3KLJwf6dSg1pmoj72j3tneWZ028YrW0SO7mN
         HR0WGvBcusaivXlIOq+o0BorOULyx3/vSXQu8Banrfm4M5yeIj+KEEcwHy49KPjTKFv7
         pLGbc7fuPUdaXxBATogUbVWQcqvz+kECGjTdEbZ2in1u4FTPN13XTuZSMOkAtZnXrtH+
         1qP1IUh7JfIwffmwAJZYbHOl/GGX2dt4SF0B2HgepACL3dQdo2umdKm5c0TSoh6b8NyX
         Keml95KywYgSRAOOGWd9K2VlHsSJrb6VRkjmTILgadTYVJCTDV+lkhysNX7YOpJZ2apf
         m83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354718; x=1740959518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqpsSfd4hK9sMOyyiNPBFdSaUXrM9eOMXEQlPVLZ1L4=;
        b=RvUC8dMZItNGuSh6cKacLLo7FBUqEAwdP2vKyeyQ7w0PpQ825b2pSxOnpc/aIrQPj6
         eyQ9XLPb5Fm206uBERVcvZLcIGP2Sqzzyp/TC0s7DMr4ameCddU/IwmgS5I14ueakK8Q
         h9vdyYI/ctcKlxSRxAZC/jnrf+ErZGe2AEplpJnpd59XyMwW9wpTCIG2gsdxvOC5BE3c
         ukNAxd7D5yXQIu58ixytCQsLHNduudBT2UdENALwCvTD8IpAmi8WPbrB9W8CppsDs6Gw
         /I8xIOrxHADEf8/Tm8kTDa5SksQqp2AWOxGf/rfGbdFszuKhzMaIj1ZN4KaCt6XpqkyG
         gXCA==
X-Forwarded-Encrypted: i=1; AJvYcCWolayiLz90xqq7RMBPhRox4ffgl6K52tFluAAXvfJLGdRKhhxI0R4h36yICbxXGYOVIMbCOANKGnBJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwRNlXdYHublUhhTgPnyoTrtP9y0COqwhP7diCQy/xK1o7Rr8vV
	u5ZiV+RLG8pWBNnrD8GFsiaN0Qn+81oz28ZUawGYERKFESr/DcrLw6KpFCjtXIQ=
X-Gm-Gg: ASbGncvh9m5JfvEvpOr7XhJNh6y6iDHDPWXLQ2Iu55gmhmv5r96OhEnYWNMnvplggim
	WWndLVeQYB4CLRwb+3enFr0Fkhu5boDv0B3/2D5W3w66iutU9PDju7ohkRPwyV1+uvORzNZdZY8
	bRdCpaOh+RTX18cq4sZHgqjZ9Aua8gvaFQggf2g2TVSvn2otRnXQl5hCtz7uBggpakgfHtT5h18
	/vBVgtcmRiY3njTnSZwsBiuMVGHByQJmRcXKa2ht3n5G+u9F6jDATYqgjFO/OLAh7Sx98Ww5tiR
	AP4XJ/pGGy0+PeXNNifdXSe6aT+j/xoyu+CyBSrgYdagEgyVrsCQTf4FKFJ9zFbqZxjYpKQi58O
	FoKb3SA==
X-Google-Smtp-Source: AGHT+IEpJwtjfAQELBV6QLX+Dx/RJbukpSeVjI5C/XlxolpeCymBYYRyu1xtRVKJ/uK17lMxs8fvVw==
X-Received: by 2002:a05:6512:12c4:b0:546:3136:f03d with SMTP id 2adb3069b0e04-5483925996emr3876237e87.35.1740354718344;
        Sun, 23 Feb 2025 15:51:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54530df9016sm2706600e87.36.2025.02.23.15.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:51:56 -0800 (PST)
Date: Mon, 24 Feb 2025 01:51:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] phy: phy-snps-eusb2: add support for exynos2200
Message-ID: <ac7bq3toicuoppmspqvohiss5wkhgw4v6aozzstd5pr66bfcse@k7tqijab4csq>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-8-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-8-ivo.ivanov.ivanov1@gmail.com>

On Sun, Feb 23, 2025 at 02:22:26PM +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC reuses the Synopsis eUSB2 PHY IP, alongside an
> external repeater, for USB 2.0. Add support for it to the existing
> driver.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/Kconfig          |   2 +-
>  drivers/phy/phy-snps-eusb2.c | 172 +++++++++++++++++++++++++++++++++++
>  2 files changed, 173 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 11c166204..58c911e1b 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -45,7 +45,7 @@ config PHY_PISTACHIO_USB
>  
>  config PHY_SNPS_EUSB2
>  	tristate "SNPS eUSB2 PHY Driver"
> -	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> +	depends on OF && (ARCH_EXYNOS || ARCH_QCOM || COMPILE_TEST)
>  	select GENERIC_PHY
>  	help
>  	  Enable support for the USB high-speed SNPS eUSB2 phy on select
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 7a242fe32..67a19d671 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -13,6 +13,39 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  
> +#define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
> +#define USB_PHY_RST_MASK		GENMASK(1, 0)
> +#define UTMI_PORT_RST_MASK		GENMASK(5, 4)
> +
> +#define EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON	(0x4)
> +#define RPTR_MODE			BIT(10)
> +#define FSEL_20_MHZ_VAL			(0x1)
> +#define FSEL_24_MHZ_VAL			(0x2)
> +#define FSEL_26_MHZ_VAL			(0x3)
> +#define FSEL_48_MHZ_VAL			(0x2)
> +
> +#define EXYNOS_USB_PHY_CFG_PLLCFG0	(0x8)
> +#define PHY_CFG_PLL_FB_DIV_19_8_MASK	GENMASK(19, 8)
> +#define DIV_19_8_19_2_MHZ_VAL		(0x170)
> +#define DIV_19_8_20_MHZ_VAL		(0x160)
> +#define DIV_19_8_24_MHZ_VAL		(0x120)
> +#define DIV_19_8_26_MHZ_VAL		(0x107)
> +#define DIV_19_8_48_MHZ_VAL		(0x120)
> +
> +#define EXYNOS_USB_PHY_CFG_PLLCFG1	(0xc)
> +#define EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK	GENMASK(11, 8)
> +#define EXYNOS_DIV_11_8_19_2_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_20_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_24_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_26_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_48_MHZ_VAL	(0x1)
> +
> +#define EXYNOS_PHY_CFG_TX		(0x14)
> +#define EXYNOS_PHY_CFG_TX_FSLS_VREF_TUNE_MASK	GENMASK(2, 1)
> +
> +#define EXYNOS_USB_PHY_UTMI_TESTSE	(0x20)
> +#define TEST_IDDQ			BIT(6)
> +
>  #define QCOM_USB_PHY_UTMI_CTRL0		(0x3c)
>  #define SLEEPM				BIT(0)
>  #define OPMODE_MASK			GENMASK(4, 3)
> @@ -196,6 +229,93 @@ static void qcom_eusb2_default_parameters(struct snps_eusb2_hsphy *phy)
>  				    FIELD_PREP(PHY_CFG_TX_HS_XV_TUNE_MASK, 0x0));
>  }
>  
> +static int exynos_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
> +{
> +	unsigned long ref_clk_freq = clk_get_rate(phy->ref_clk);
> +
> +	switch (ref_clk_freq) {
> +	case 19200000:
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON,
> +					    FSEL_MASK,
> +					    FIELD_PREP(FSEL_MASK, FSEL_19_2_MHZ_VAL));
> +

Could you please unify the switchcase? assign the values to temp
variables, then program them from a single code stream. Or maybe even
replace switch-case with a table-based lookup.

(we probably should implement the similar change for qcom part. Maybe
you can refactor it too?)

Other than that LGTM.

> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG0,
> +					    PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +					    FIELD_PREP(PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +						       DIV_19_8_19_2_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG1,
> +					    EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK,
> +					    EXYNOS_DIV_11_8_19_2_MHZ_VAL);
> +		break;
> +
> +	case 20000000:
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON,
> +					    FSEL_MASK,
> +					    FIELD_PREP(FSEL_MASK, FSEL_20_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG0,
> +					    PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +					    FIELD_PREP(PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +						       DIV_19_8_20_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG1,
> +					    EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK,
> +					    EXYNOS_DIV_11_8_20_MHZ_VAL);
> +		break;
> +

-- 
With best wishes
Dmitry

