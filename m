Return-Path: <devicetree+bounces-30021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B08262FF
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 06:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9F0EB2194D
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 05:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4285B11CBB;
	Sun,  7 Jan 2024 05:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="krsR6mz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A394D125A4
	for <devicetree@vger.kernel.org>; Sun,  7 Jan 2024 05:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-360852ae88fso4331715ab.3
        for <devicetree@vger.kernel.org>; Sat, 06 Jan 2024 21:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704605604; x=1705210404; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sUxB7wKicUOyFSlq6s48xe3dcqB2CW2xhmx3XZD8AVg=;
        b=krsR6mz9BLFpHNaTtL7j8CUvHjsiIAiXUC8lUkTkUYEoDPMBxbFft25F1vnlFXDODg
         LCGjYo9YdWTy8uWJyrz01fwNkmMQBYEExz1AZjRjHKX11YUKpu+64BQyN77DU77nennr
         XJ6Zv21WINYnfyQ+c3chTk6CtdgJofOiUsdBgz2WBnCVQTb4KeebtZiAr7cXn8loKPzz
         Zd7zw4ZTbWg6g9dv0OPnCadHNSgW9dm+GsXYHhP47u62qcAE22LzOPjQ0IqpfEQjJ2FI
         RPK4d55uwWXG7Y039z7srqCUv1xdUEy9HOrBZEEZHgjOKXolnuGXirnPKjvvsbiQr+yS
         mAbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704605604; x=1705210404;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sUxB7wKicUOyFSlq6s48xe3dcqB2CW2xhmx3XZD8AVg=;
        b=vLiQVJAeFHQLU+DThNdx+bS8omV5Lw/3wMCpjo6jYUG8/rZduMa4rTxkFL10NO+6LL
         We5YR7Jp/J1WfCvmafzU5VdWP+pdpF/pZOTAmL/Ucny4jLFdjN2B7+hWHQmUKxRB4NvT
         Xp4EEdJovHCTk1WOh3VfzgbLgHZ4RO+fQldE+ldbArnt6UGwpWjSlBh0Su59m/5ktRTb
         694qtF/BTTs9pvbOq4Lm3F1oHNQ1iKrp5ztYjftd4aUQ6rBVfyswQ74XSo/lQUa7N+vB
         m4S1drES4f3CIYUF8JkbxW9aTv2l7TBJhpWAPAEgNnNkAg97XeOi4L9ZeCltL/8xYTTI
         oOww==
X-Gm-Message-State: AOJu0YzjpJPr8e//T5cD6AtlbIQgPZ+qUx1OWmrUbOcae0sxySmsu8Ii
	PnII8kVSnGz6XBF9q+WcfmyB/g5QDq/r
X-Google-Smtp-Source: AGHT+IFmtKRaDWh6kJgCVs2Mz99P6IEAGvyYDybSnJ6/LBG8vwMMYGCtIcWcTUqkJzaWX+SWHF8dkg==
X-Received: by 2002:a92:ca05:0:b0:360:7c05:e484 with SMTP id j5-20020a92ca05000000b003607c05e484mr3356916ils.54.1704605603671;
        Sat, 06 Jan 2024 21:33:23 -0800 (PST)
Received: from thinkpad ([103.197.115.97])
        by smtp.gmail.com with ESMTPSA id u13-20020a170902e80d00b001d072365b87sm3858364plg.106.2024.01.06.21.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 21:33:23 -0800 (PST)
Date: Sun, 7 Jan 2024 11:03:13 +0530
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
Subject: Re: [PATCH v7 08/16] PCI: imx6: Simplify switch-case logic by
 involve init_phy callback
Message-ID: <20240107053313.GH3416@thinkpad>
References: <20231227182727.1747435-1-Frank.Li@nxp.com>
 <20231227182727.1747435-9-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231227182727.1747435-9-Frank.Li@nxp.com>

On Wed, Dec 27, 2023 at 01:27:19PM -0500, Frank Li wrote:

Subject: PCI: imx6: Introduce init_phy() callback to simplify PHY initialization

> Add drvdata::init_phy() callback function, so difference SOC choose
> difference callback function to simple switch-case logic.
> 

Same subject can be used in commit message.

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> 
> Notes:
>     change from v1 to v4:
>     - none
> 
>  drivers/pci/controller/dwc/pci-imx6.c | 135 ++++++++++++++------------
>  1 file changed, 71 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 717e8fa030deb..d66a2db53bdb7 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -69,6 +69,9 @@ enum imx6_pcie_variants {
>  #define IMX6_PCIE_MAX_CLKS       6
>  
>  #define IMX6_PCIE_MAX_INSTANCES			2
> +
> +struct imx6_pcie;
> +
>  struct imx6_pcie_drvdata {
>  	enum imx6_pcie_variants variant;
>  	enum dw_pcie_device_mode mode;
> @@ -80,6 +83,7 @@ struct imx6_pcie_drvdata {
>  	const u32 ltssm_mask;
>  	const u32 mode_off[IMX6_PCIE_MAX_INSTANCES];
>  	const u32 mode_mask[IMX6_PCIE_MAX_INSTANCES];
> +	int (*init_phy)(struct imx6_pcie *pcie);
>  };
>  
>  struct imx6_pcie {
> @@ -323,76 +327,69 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, u16 data)
>  	return 0;
>  }
>  
> -static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
> +static int imx8mq_pcie_init_phy(struct imx6_pcie *imx6_pcie)
>  {
> -	switch (imx6_pcie->drvdata->variant) {
> -	case IMX8MM:
> -	case IMX8MM_EP:
> -	case IMX8MP:
> -	case IMX8MP_EP:
> -		/*
> -		 * The PHY initialization had been done in the PHY
> -		 * driver, break here directly.
> -		 */
> -		break;
> -	case IMX8MQ:
> -	case IMX8MQ_EP:
> -		/*
> -		 * TODO: Currently this code assumes external
> -		 * oscillator is being used
> -		 */
> +	/*
> +	 * TODO: Currently this code assumes external
> +	 * oscillator is being used

Wrap the comments to 80 column.

> +	 */
> +	regmap_update_bits(imx6_pcie->iomuxc_gpr,
> +			   imx6_pcie_grp_offset(imx6_pcie),
> +			   IMX8MQ_GPR_PCIE_REF_USE_PAD,
> +			   IMX8MQ_GPR_PCIE_REF_USE_PAD);
> +	/*
> +	 * Regarding the datasheet, the PCIE_VPH is suggested
> +	 * to be 1.8V. If the PCIE_VPH is supplied by 3.3V, the
> +	 * VREG_BYPASS should be cleared to zero.
> +	 */

Same here.

> +	if (imx6_pcie->vph && regulator_get_voltage(imx6_pcie->vph) > 3000000)
>  		regmap_update_bits(imx6_pcie->iomuxc_gpr,
>  				   imx6_pcie_grp_offset(imx6_pcie),
> -				   IMX8MQ_GPR_PCIE_REF_USE_PAD,
> -				   IMX8MQ_GPR_PCIE_REF_USE_PAD);
> -		/*
> -		 * Regarding the datasheet, the PCIE_VPH is suggested
> -		 * to be 1.8V. If the PCIE_VPH is supplied by 3.3V, the
> -		 * VREG_BYPASS should be cleared to zero.
> -		 */
> -		if (imx6_pcie->vph &&
> -		    regulator_get_voltage(imx6_pcie->vph) > 3000000)
> -			regmap_update_bits(imx6_pcie->iomuxc_gpr,
> -					   imx6_pcie_grp_offset(imx6_pcie),
> -					   IMX8MQ_GPR_PCIE_VREG_BYPASS,
> -					   0);
> -		break;
> -	case IMX7D:
> -		regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,
> +				   IMX8MQ_GPR_PCIE_VREG_BYPASS,
> +				   0);
> +
> +	return 0;
> +}
> +
> +static int imx7d_pcie_init_phy(struct imx6_pcie *imx6_pcie)
> +{
> +	return	regmap_update_bits(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12,

For consistency, return 0.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

