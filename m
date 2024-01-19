Return-Path: <devicetree+bounces-33131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D158325A4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 09:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4372C1C22638
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 08:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B8E1D684;
	Fri, 19 Jan 2024 08:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VC4qEhkr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40457DDD2
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 08:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705652496; cv=none; b=MT0h3nueXu+iS3d4ZGpv+kR0SXBOGRnQJJdKQmz3iKGQjFmM/pmyAPBY/m5f7HyOx65hJo1Rs0Jx1qPsd5Wc3kok6FMGzE0r4e/zkVnKbAhdR8TOrgSPvFnO/xEySeYGl5OSQIuHiEih4OSNGwA1L0DhQnztFWt7VAonF83Af9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705652496; c=relaxed/simple;
	bh=zn3EF8QerR5hBzBmKIvNp2U4qAYqmyg0w+hUZQ6N5FY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCBdNFnZfSminJcW6TqOY786//cQHgPYA2Uvd1YUIOB/85mVHo4tXLIuyPGIitZckk43L9PxVt6n1nB2/Q0W0E8BN7zeamgQxitfxQRwCQnmDQOvyJN3xn/zJaaAx/0hFEuxPZbsFtd00zN3Y1RL5A6ukacf3WXK1ncftOAIaqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VC4qEhkr; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6db0fdd2b8fso374524b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 00:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705652494; x=1706257294; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vzKTnHwxbCMPGZQPhDaxWJVi4qnGS8BV5+OJPh3a1F0=;
        b=VC4qEhkr7rfthC+D7enZsbF0+jmBeD3Tn4YEj8znBMR7y8Jj7g0u5LNhgollg8QRh6
         VaqVAQEFlhm6k3wJ6q5j7ycu4VVHobxeFxBkWOqwWoUsC77jHqyOAGGN2Iq6kuLqUlNg
         gP91h9cyLEV0F0nRrmA03C8JdHXItg01YcM4uGcpd4rCT38COEWzWeKYkVUO0nnOC46e
         aUyc55F/3+OIzJK85v/izuB6pjgZ0u2m20ZIzKQjQM1UqVKhokV0fP//vDWP+g//u95N
         M6NkMkqXDDfRONLOE03z5RmxGdi6c/o3VYO6AtJLogSjNzGEJjpK3Vvm2hYBfHsRpFEg
         5bGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705652494; x=1706257294;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vzKTnHwxbCMPGZQPhDaxWJVi4qnGS8BV5+OJPh3a1F0=;
        b=Qk+3UnvHtr7hA26nugMbDOfwNj0uDwA6le5vCA4TanAgJfSN1m/UJIpdIFDSqXlE23
         cfMjP+UU1MvOhSzTFHVwSaJQmIcxBANQIN2OAdL8KB23zX5THN/mnN+RU8y5sfLMXHgh
         jf51+rm16b0E0eqcTqkAk7EnOY78rv8BDUoNaYD01gVGR+VDGirx9XPbU0QPCJ0ImphW
         BRhY2Bfygaadv3JIhv1S+HvvF2BgqnFkkCqtaqzB9hUiWtWOkzduA9tfAjGGX4Vpzixe
         VZNlJfCJ1OR7w1+yP87fBgqQJwFixkkLSG5qFxHMIdC/1p2bjMu8ebLA0NztttpZlpF7
         0yvA==
X-Gm-Message-State: AOJu0YxzsIT1JFZ5ahDJx0cm4Ze+rZIQkIXb+yKNxiZVZVIIwiwQkpsZ
	s58870ky9myd1usXcsn2QArNwt4FEkQNsyqPRvkwmc9MdqsrTkTsEcIY3kS33A==
X-Google-Smtp-Source: AGHT+IGtKsOMu6fz5BnJN92myr8axyoZasZEJtgQOOfeJp65T4qLjy6ks0VOBpseItPjFwP+nFnowA==
X-Received: by 2002:a17:902:e5ce:b0:1d7:14ad:dc61 with SMTP id u14-20020a170902e5ce00b001d714addc61mr1504246plf.70.1705652494560;
        Fri, 19 Jan 2024 00:21:34 -0800 (PST)
Received: from thinkpad ([117.248.2.56])
        by smtp.gmail.com with ESMTPSA id q4-20020a170902c9c400b001d71c6df049sm848181pld.210.2024.01.19.00.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 00:21:34 -0800 (PST)
Date: Fri, 19 Jan 2024 13:51:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: krzysztof.kozlowski@linaro.org, bhelgaas@google.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org, festevam@gmail.com,
	helgaas@kernel.org, hongxing.zhu@nxp.com, imx@lists.linux.dev,
	kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
	kw@linux.com, l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	lpieralisi@kernel.org, robh@kernel.org, s.hauer@pengutronix.de,
	shawnguo@kernel.org
Subject: Re: [PATCH v8 02/16] PCI: imx6: Simplify phy handling by using
 IMX6_PCIE_FLAG_HAS_PHYDRV
Message-ID: <20240119082127.GE2866@thinkpad>
References: <20240108232145.2116455-1-Frank.Li@nxp.com>
 <20240108232145.2116455-3-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240108232145.2116455-3-Frank.Li@nxp.com>

On Mon, Jan 08, 2024 at 06:21:31PM -0500, Frank Li wrote:
> Add IMX6_PCIE_FLAG_HAS_PHYDRV bitmask define for drvdata::flags. Reduce
> switch-case structure for handling phy.
> 

"Since some i.MX platforms make use of the separate PHY driver, use
IMX6_PCIE_FLAG_HAS_PHYDRV flag to identify them and get the reference to PHY
from DT. This simplifies the code."

> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> 
> Notes:
>     Change from v7 to v8:
>     - renmae IMX6_PCIE_FLAG_HAS_PHY to IMX6_PCIE_FLAG_HAS_PHYDRV
>     Change from v6 to v7:
>     - none
>     Change from v4 to v5:
>     - none, Keep IMX6_PCIE_FLAG_HAS_PHY to indicate dts mismatch when platform
>     require phy suppport.
>     
>     Change from v1 to v3:
>     - none
> 
>  drivers/pci/controller/dwc/pci-imx6.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 4912c6b08ecf8..adc90099ec7f8 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -60,6 +60,9 @@ enum imx6_pcie_variants {
>  #define IMX6_PCIE_FLAG_IMX6_PHY			BIT(0)
>  #define IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE	BIT(1)
>  #define IMX6_PCIE_FLAG_SUPPORTS_SUSPEND		BIT(2)
> +#define IMX6_PCIE_FLAG_HAS_PHYDRV			BIT(3)
> +
> +#define imx6_check_flag(pci, val)     (pci->drvdata->flags & val)
>  
>  #define IMX6_PCIE_MAX_CLKS       6
>  
> @@ -1277,6 +1280,13 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	if (imx6_check_flag(imx6_pcie, IMX6_PCIE_FLAG_HAS_PHYDRV)) {
> +		imx6_pcie->phy = devm_phy_get(dev, "pcie-phy");
> +		if (IS_ERR(imx6_pcie->phy))
> +			return dev_err_probe(dev, PTR_ERR(imx6_pcie->phy),
> +					     "failed to get pcie phy\n");
> +	}
> +
>  	switch (imx6_pcie->drvdata->variant) {
>  	case IMX7D:
>  		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
> @@ -1306,11 +1316,6 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  			return dev_err_probe(dev, PTR_ERR(imx6_pcie->apps_reset),
>  					     "failed to get pcie apps reset control\n");
>  
> -		imx6_pcie->phy = devm_phy_get(dev, "pcie-phy");
> -		if (IS_ERR(imx6_pcie->phy))
> -			return dev_err_probe(dev, PTR_ERR(imx6_pcie->phy),
> -					     "failed to get pcie phy\n");
> -
>  		break;
>  	default:
>  		break;
> @@ -1458,14 +1463,17 @@ static const struct imx6_pcie_drvdata drvdata[] = {
>  	},
>  	[IMX8MM] = {
>  		.variant = IMX8MM,
> -		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND |
> +			 IMX6_PCIE_FLAG_HAS_PHYDRV |
> +			 IMX6_PCIE_FLAG_HAS_APP_RESET,
>  		.gpr = "fsl,imx8mm-iomuxc-gpr",
>  		.clk_names = imx6_3clks_bus_pcie_aux,
>  		.clks_cnt = ARRAY_SIZE(imx6_3clks_bus_pcie_aux),
>  	},
>  	[IMX8MP] = {
>  		.variant = IMX8MP,
> -		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND |
> +			 IMX6_PCIE_FLAG_HAS_PHYDRV,
>  		.gpr = "fsl,imx8mp-iomuxc-gpr",
>  		.clk_names = imx6_3clks_bus_pcie_aux,
>  		.clks_cnt = ARRAY_SIZE(imx6_3clks_bus_pcie_aux),
> @@ -1479,6 +1487,7 @@ static const struct imx6_pcie_drvdata drvdata[] = {
>  	},
>  	[IMX8MM_EP] = {
>  		.variant = IMX8MM_EP,
> +		.flags = IMX6_PCIE_FLAG_HAS_PHYDRV,
>  		.mode = DW_PCIE_EP_TYPE,
>  		.gpr = "fsl,imx8mm-iomuxc-gpr",
>  		.clk_names = imx6_3clks_bus_pcie_aux,
> @@ -1486,6 +1495,7 @@ static const struct imx6_pcie_drvdata drvdata[] = {
>  	},
>  	[IMX8MP_EP] = {
>  		.variant = IMX8MP_EP,
> +		.flags = IMX6_PCIE_FLAG_HAS_PHYDRV,
>  		.mode = DW_PCIE_EP_TYPE,
>  		.gpr = "fsl,imx8mp-iomuxc-gpr",
>  		.clk_names = imx6_3clks_bus_pcie_aux,
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

