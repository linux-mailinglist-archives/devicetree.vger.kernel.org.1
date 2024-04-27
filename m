Return-Path: <devicetree+bounces-63299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 072C88B456F
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 715801F2216A
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 09:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB37481AC;
	Sat, 27 Apr 2024 09:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pIswm4Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0314597D
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 09:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714211697; cv=none; b=jP83vweIKtRgODPk4qemacCoXJsIBZGw6PmgoKkzT7Y2ReZA4/5OHkIeaik1Q8pLeofXL0UpvvDNLBk37e6trb5HfezktzDwPVm0D9twIK5cx17cdQ4BKWl/zz+rM7XqjNwmgDmLMBWurO+1sXuJqSh7AuUVeaA4Q9eFeg1cVHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714211697; c=relaxed/simple;
	bh=oAKyMTR8eWOSyqxbhlem5MYmleLa9lzfZXEEcetSXnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJbHcYcYV1U7Tn+duHY3qE/vyHE4G+xPK73DIjs/d74tYBmXM8uWt3e8dqK42PbB9QvjX8bTMfQdGV24gqP2GWdTH8Oi7GYYBIA5QQQLz/jaNf6bcwmkAvk9HI8253WEejgiv8M70TN3Y/HKxb6h/mqy62UM0dQ6jXlzG+S3oOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pIswm4Uk; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6ee0642f718so3022790b3a.0
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 02:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714211694; x=1714816494; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q7IJCY5rJWmDi7bRkGY/6TU0zJug2sXYMpCIYdgYukw=;
        b=pIswm4Ukc6rmKVLWUGvJWHyPs98gMXeR90kSH0jvI5c08Cm1KVM2zhW3UxAdp4iCfQ
         +b2FnaURVHbMz31+axCsULCCL0jcxNCNw+87uDhRg7RVpt7jxXOL+Y2WFLFeTA4c1qA3
         OwYglePrkiu1zWLjygNp0qizeTbZK+L4gDJ2MABbywyFhS0HYuf8rsAVUZJcoweFmndF
         9lEvYkdEakkXuxAkoGM4Z2O0l7i1kKaIUKGPyKQoOaKnbW2a9ZUkBFbvb8QZk+ZS7FlI
         o08W688Sq/htJqz19qOOPCBTFPqtz57PGOo4ni2b/w0xI1xqGFJ9Gbi4M0k2O8vfkZpq
         9zjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714211694; x=1714816494;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q7IJCY5rJWmDi7bRkGY/6TU0zJug2sXYMpCIYdgYukw=;
        b=o4SswodH1uzKQ2LRVEMWS70U2ZZxn1TPvKx/5JCn7QotLYw/BdhiSZl/HSp8Vj2vPs
         C5S5z8+SyfYzsp/iU4O4QmKA6O9vI+Y0JMbG3CxF+475j4e8fEdRed1DfwBwu98JCHpw
         9OmSroOoODFNyF3b4QU3Iln3dlqgbNvM8eFXfh3uRbPQokL3f0ZXclCmIXFjRNEy0yGA
         hYN/cGRHTtrRWHVCpZCfq95F0Bbw7IyucssiTiGQcrjbeOEANuo4vSfXZ0n2DNfYrp/Q
         WSFkQBYdaFG1ntfp+Hyp1+OwHWAr41bsqjyfdW0pxFuhvckXL0VhkjiY/XawY3RheWQ/
         CBzg==
X-Forwarded-Encrypted: i=1; AJvYcCXPO7Gx0NViHfN7XZcsPtYmxIpsOMR887BcancP+kkipBQv5e0ny47GVGOTtU+PUgPf4kZIDHLrQsBWfkqUveXUOCGhC0VjqSxHcQ==
X-Gm-Message-State: AOJu0YxrYsCpfdHpRt/klYDmO6IU2O87uP5YXrYCkVqb35Gfrw6xIDSt
	ru+ELvGMwrGF9EtqrAQDaJr7pqr9kJdbZBWJ8fZ+8WgA8cDvQd0kIg5CFBQe4g==
X-Google-Smtp-Source: AGHT+IHbaVLmro9zr9PHmAJzQU4EgUaA+TXAd31urwcQTwZNnANEbssC6ijmrdtMi2g14n+SXgcytg==
X-Received: by 2002:a17:90b:246:b0:2aa:cadb:d290 with SMTP id fz6-20020a17090b024600b002aacadbd290mr7383922pjb.13.1714211694536;
        Sat, 27 Apr 2024 02:54:54 -0700 (PDT)
Received: from thinkpad ([117.213.97.210])
        by smtp.gmail.com with ESMTPSA id y10-20020a17090ad70a00b002a63e966fd7sm15753781pju.47.2024.04.27.02.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 02:54:54 -0700 (PDT)
Date: Sat, 27 Apr 2024 15:24:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 06/11] PCI: imx: Simplify switch-case logic by involve
 set_ref_clk callback
Message-ID: <20240427095444.GK1981@thinkpad>
References: <20240402-pci2_upstream-v3-0-803414bdb430@nxp.com>
 <20240402-pci2_upstream-v3-6-803414bdb430@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240402-pci2_upstream-v3-6-803414bdb430@nxp.com>

On Tue, Apr 02, 2024 at 10:33:42AM -0400, Frank Li wrote:

PCI: imx6: Introduce SoC specific callbacks for controlling REFCLK

> Instead of using the switch case statement to enable/disable the reference
> clock handled by this driver itself, let's introduce a new callback
> set_ref_clk() and define it for platforms that require it. This simplifies
> the code.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-imx.c | 119 ++++++++++++++++------------------
>  1 file changed, 55 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-imx.c b/drivers/pci/controller/dwc/pcie-imx.c
> index e93070d60df52..77dae5c3f7057 100644
> --- a/drivers/pci/controller/dwc/pcie-imx.c
> +++ b/drivers/pci/controller/dwc/pcie-imx.c
> @@ -103,6 +103,7 @@ struct imx_pcie_drvdata {
>  	const u32 mode_mask[IMX_PCIE_MAX_INSTANCES];
>  	const struct pci_epc_features *epc_features;
>  	int (*init_phy)(struct imx_pcie *pcie);
> +	int (*set_ref_clk)(struct imx_pcie *pcie, bool enable);
>  };
>  
>  struct imx_pcie {
> @@ -585,77 +586,54 @@ static int imx_pcie_attach_pd(struct device *dev)
>  	return 0;
>  }
>  
> -static int imx_pcie_enable_ref_clk(struct imx_pcie *imx_pcie)
> +static int imx6sx_pcie_set_ref_clk(struct imx_pcie *imx_pcie, bool enable)
>  {
> -	unsigned int offset;
> -	int ret = 0;
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12, IMX6SX_GPR12_PCIE_TEST_POWERDOWN,
> +			   enable ? 0 : IMX6SX_GPR12_PCIE_TEST_POWERDOWN);
>  
> -	switch (imx_pcie->drvdata->variant) {
> -	case IMX6SX:
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12,
> -				   IMX6SX_GPR12_PCIE_TEST_POWERDOWN, 0);
> -		break;
> -	case IMX6QP:
> -	case IMX6Q:
> +	return 0;
> +}
> +
> +static int imx6q_pcie_set_ref_clk(struct imx_pcie *imx_pcie, bool enable)
> +{
> +	if (enable) {
>  		/* power up core phy and enable ref clock */
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> -				   IMX6Q_GPR1_PCIE_TEST_PD, 0 << 18);
> +		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1, IMX6Q_GPR1_PCIE_TEST_PD, 0);
>  		/*
> -		 * the async reset input need ref clock to sync internally,
> -		 * when the ref clock comes after reset, internal synced
> -		 * reset time is too short, cannot meet the requirement.
> -		 * add one ~10us delay here.
> +		 * the async reset input need ref clock to sync internally, when the ref clock comes
> +		 * after reset, internal synced reset time is too short, cannot meet the
> +		 * requirement.add one ~10us delay here.

Please wrap the comments to 80 column width.

>  		 */
>  		usleep_range(10, 100);
>  		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> -				   IMX6Q_GPR1_PCIE_REF_CLK_EN, 1 << 16);
> -		break;
> -	case IMX7D:
> -	case IMX95:
> -	case IMX95_EP:
> -		break;
> -	case IMX8MM:
> -	case IMX8MM_EP:
> -	case IMX8MQ:
> -	case IMX8MQ_EP:
> -	case IMX8MP:
> -	case IMX8MP_EP:
> -		offset = imx_pcie_grp_offset(imx_pcie);
> -		/*
> -		 * Set the over ride low and enabled
> -		 * make sure that REF_CLK is turned on.
> -		 */
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, offset,
> -				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
> -				   0);
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, offset,
> -				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
> -				   IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN);
> -		break;
> +				   IMX6Q_GPR1_PCIE_REF_CLK_EN, IMX6Q_GPR1_PCIE_REF_CLK_EN);
> +	} else {
> +		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> +				   IMX6Q_GPR1_PCIE_REF_CLK_EN, 0);
> +		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> +				   IMX6Q_GPR1_PCIE_TEST_PD, IMX6Q_GPR1_PCIE_TEST_PD);
>  	}
>  
> -	return ret;
> +	return 0;
>  }
>  
> -static void imx_pcie_disable_ref_clk(struct imx_pcie *imx_pcie)
> +static int imx8mm_pcie_set_ref_clk(struct imx_pcie *imx_pcie, bool enable)
>  {
> -	switch (imx_pcie->drvdata->variant) {
> -	case IMX6QP:
> -	case IMX6Q:
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> -				IMX6Q_GPR1_PCIE_REF_CLK_EN, 0);
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR1,
> -				IMX6Q_GPR1_PCIE_TEST_PD,
> -				IMX6Q_GPR1_PCIE_TEST_PD);
> -		break;
> -	case IMX7D:
> -		regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12,
> -				   IMX7D_GPR12_PCIE_PHY_REFCLK_SEL,
> -				   IMX7D_GPR12_PCIE_PHY_REFCLK_SEL);
> -		break;
> -	default:
> -		break;
> -	}
> +	int offset = imx_pcie_grp_offset(imx_pcie);
> +
> +	/* Set the over ride low and enabled make sure that REF_CLK is turned on.*/
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, offset, IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE,
> +			   enable ? 0 : IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE);
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, offset, IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN,
> +			   enable ? IMX8MQ_GPR_PCIE_CLK_REQ_OVERRIDE_EN :  0);

Extra space after :

> +	return 0;
> +}
> +
> +static int imx7d_pcie_set_ref_clk(struct imx_pcie *imx_pcie, bool enable)
> +{
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12, IMX7D_GPR12_PCIE_PHY_REFCLK_SEL,
> +			    enable ? 0 : IMX7D_GPR12_PCIE_PHY_REFCLK_SEL);
> +	return 0;
>  }
>  
>  static int imx_pcie_clk_enable(struct imx_pcie *imx_pcie)
> @@ -668,10 +646,12 @@ static int imx_pcie_clk_enable(struct imx_pcie *imx_pcie)
>  	if (ret)
>  		return ret;
>  
> -	ret = imx_pcie_enable_ref_clk(imx_pcie);
> -	if (ret) {
> -		dev_err(dev, "unable to enable pcie ref clock\n");
> -		goto err_ref_clk;
> +	if (imx_pcie->drvdata->set_ref_clk) {
> +		ret = imx_pcie->drvdata->set_ref_clk(imx_pcie, true);
> +		if (ret) {
> +			dev_err(dev, "unable to enable pcie ref clock\n");

'Failed to enable PCIe REFCLK'

- Mani

-- 
மணிவண்ணன் சதாசிவம்

