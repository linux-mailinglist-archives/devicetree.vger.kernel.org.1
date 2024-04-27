Return-Path: <devicetree+bounces-63318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4CC8B463B
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 199F61C22744
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5114D9EC;
	Sat, 27 Apr 2024 11:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kLyEM9zr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD6243176
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714218470; cv=none; b=I8LXYGhl5/zRWHQKGQcskFywQDn3SaetYK1zRPBX2C9X8osVPNm7SC6GQyzeevasBALYBnNyteMLyEb8YzOUAo9hBupus877c4h6QRFsTG5qjEmMASfTIhwyHh6rtDhhmTKyid/DrV00JKqph6FVWyHHn+MvWKRRehL9ecosaIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714218470; c=relaxed/simple;
	bh=m64OPA49saGqYh5NGoDkpU02HfGnplA/FI6YB5a3TLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jAkAsOZ09EfypqWBwlBWh3DbsAQXzOO4Mx9HBewWTQi0mRN2jwzal/6YLDV86x8DzqOEFSoefK3wxNC3nTKi0a/sxPmPhM/HwRrAESiylswylLzN2eSwN5jzh8nYMn5Rqln8YQW6dGJs+shERO0DUmcTQK7Q02wW7UbNOMDM3WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kLyEM9zr; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2a526803fccso2076259a91.1
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 04:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714218467; x=1714823267; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HcfbaR8kZq8OLnUAT2pXDqoM8fNnWHLJf3IpXP9uecY=;
        b=kLyEM9zrTI5eK+RrsFYCyZNfXnKslK8ea/a25GIFfydplVvzKyR0Md5/lP5ykk5oSN
         Jla/CYOtU4BRZGno2UpHQDiNlYhZlV6BywABDhxhycRQN1ho/RwspwP662vtNSeBLfN7
         MtOdtSd9Kwmv0bn+MkrK4N6TAVoxN+JJaD72cOW532e/nzTSz8PBGN+bYJRnzYKuigq3
         KbMAGZyKFeLq5EFtDWMpO97KFib46La12GRkhe1eOoZ0oywWmauBCz77xD/WwsqCLtMt
         3fRrX7QsZ8z5R4AsVq/V3VUMTKZEB5WlUgLkw2JVc130GynaS7xDR8W/YgX1wtHEo/rj
         HeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714218467; x=1714823267;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HcfbaR8kZq8OLnUAT2pXDqoM8fNnWHLJf3IpXP9uecY=;
        b=Ikmw2LC9POeub7JLtdo5h5jMjKDU+Q+fZZhlb66WwN2NWoi2DSVVKyY9G5V5LOTqyt
         qxCny15YVPszRgNFKWrrqM1X19msWmS94WVRAUasF4Y/4TswMaholPt9Sw+L5Ou+8P0d
         hNTt+A2z4vxMnBc1OWJYEhqaua1fDusH4bjndpA0IAcg54d6FTCp7zYG3ArpUxTh6eDW
         4W4+auldF5KoD+Kg8hG1ozEb6k3qXdMfrq9zeVxcISSpkTnENoMXfB3QHHKIAT+ooPwA
         olsKhEunwc5U1ykVOEjTkqCZ27ftEEHGBcXltsbN/t9ijJMrDylw14Iuhen5rVAiFsiY
         BbDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0dkzJNslrj6SDYgWGfdUQC3dDDHXzKbsFHkKW24fwscjW6wMsbjuEyi0HdZJc93rcUJpB66ytopy6Lyt94F7VIYJ1+qVS4EtYvA==
X-Gm-Message-State: AOJu0Yxsw3q/UaOOfAlXMrcH+rRni3ZH7ScjvbpnKClJufKZkP0fl5v3
	2WzaxQVleQShVpkcUbx+lFUZqi0pGROomlZ/ZI3zXPqWu33RHlPnELXKKTi8RQ==
X-Google-Smtp-Source: AGHT+IGeS2NJ9XxwhqftWfQ5PmQrFQpYK3kdhK248fghwiiRxIGhENovfD8acLiKv+RBllo0edUJtw==
X-Received: by 2002:a17:90a:5d0e:b0:2af:f382:158b with SMTP id s14-20020a17090a5d0e00b002aff382158bmr4524138pji.49.1714218466853;
        Sat, 27 Apr 2024 04:47:46 -0700 (PDT)
Received: from thinkpad ([117.213.97.210])
        by smtp.gmail.com with ESMTPSA id l9-20020a17090a070900b002a528a1f907sm19257945pjl.56.2024.04.27.04.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 04:47:46 -0700 (PDT)
Date: Sat, 27 Apr 2024 17:17:36 +0530
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
Subject: Re: [PATCH v3 11/11] PCI: imx6: Add i.MX8Q PCIe support
Message-ID: <20240427114736.GO1981@thinkpad>
References: <20240402-pci2_upstream-v3-0-803414bdb430@nxp.com>
 <20240402-pci2_upstream-v3-11-803414bdb430@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240402-pci2_upstream-v3-11-803414bdb430@nxp.com>

On Tue, Apr 02, 2024 at 10:33:47AM -0400, Frank Li wrote:
> From: Richard Zhu <hongxing.zhu@nxp.com>
> 
> Add i.MX8Q (i.MX8QM, i.MX8QXP and i.MX8DXL) PCIe support.
> 

Add some info like IP version, PCIe Gen, how different the code support
comparted to previous SoCs etc...

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-imx.c | 54 +++++++++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-imx.c b/drivers/pci/controller/dwc/pcie-imx.c
> index 378808262d16b..af7c79e869e70 100644
> --- a/drivers/pci/controller/dwc/pcie-imx.c
> +++ b/drivers/pci/controller/dwc/pcie-imx.c
> @@ -30,6 +30,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/reset.h>
>  #include <linux/phy/phy.h>
> +#include <linux/phy/pcie.h>
>  #include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
>  
> @@ -81,6 +82,7 @@ enum imx_pcie_variants {
>  	IMX8MQ,
>  	IMX8MM,
>  	IMX8MP,
> +	IMX8Q,
>  	IMX95,
>  	IMX8MQ_EP,
>  	IMX8MM_EP,
> @@ -96,6 +98,7 @@ enum imx_pcie_variants {
>  #define IMX_PCIE_FLAG_HAS_PHY_RESET		BIT(5)
>  #define IMX_PCIE_FLAG_HAS_SERDES		BIT(6)
>  #define IMX_PCIE_FLAG_SUPPORT_64BIT		BIT(7)
> +#define IMX_PCIE_FLAG_CPU_ADDR_FIXUP		BIT(8)
>  
>  #define imx_check_flag(pci, val)     (pci->drvdata->flags & val)
>  
> @@ -132,6 +135,7 @@ struct imx_pcie {
>  	struct regmap		*iomuxc_gpr;
>  	u16			msi_ctrl;
>  	u32			controller_id;
> +	u32			local_addr;
>  	struct reset_control	*pciephy_reset;
>  	struct reset_control	*apps_reset;
>  	struct reset_control	*turnoff_reset;
> @@ -402,6 +406,10 @@ static void imx_pcie_configure_type(struct imx_pcie *imx_pcie)
>  	if (!drvdata->mode_mask[id])
>  		id = 0;
>  
> +	/* If mode_mask is 0, means use phy driver to set mode */
> +	if (!drvdata->mode_mask[id])
> +		return;

There is already a check above for 0 mode_mask. Please consolidate.

> +
>  	mask = drvdata->mode_mask[id];
>  	val = mode << (ffs(mask) - 1);
>  
> @@ -957,6 +965,7 @@ static void imx_pcie_ltssm_enable(struct device *dev)
>  	struct imx_pcie *imx_pcie = dev_get_drvdata(dev);
>  	const struct imx_pcie_drvdata *drvdata = imx_pcie->drvdata;
>  
> +	phy_set_speed(imx_pcie->phy, PCI_EXP_LNKCAP_SLS_2_5GB);
>  	if (drvdata->ltssm_mask)
>  		regmap_update_bits(imx_pcie->iomuxc_gpr, drvdata->ltssm_off, drvdata->ltssm_mask,
>  				   drvdata->ltssm_mask);
> @@ -969,6 +978,7 @@ static void imx_pcie_ltssm_disable(struct device *dev)
>  	struct imx_pcie *imx_pcie = dev_get_drvdata(dev);
>  	const struct imx_pcie_drvdata *drvdata = imx_pcie->drvdata;
>  
> +	phy_set_speed(imx_pcie->phy, 0);
>  	if (drvdata->ltssm_mask)
>  		regmap_update_bits(imx_pcie->iomuxc_gpr, drvdata->ltssm_off,
>  				   drvdata->ltssm_mask, 0);
> @@ -1104,6 +1114,12 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
>  			goto err_clk_disable;
>  		}
>  
> +		ret = phy_set_mode_ext(imx_pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
> +		if (ret) {
> +			dev_err(dev, "unable to set pcie PHY mode\n");
> +			goto err_phy_off;
> +		}

This is not i.MX8Q specific. Please add it in a separate patch.

> +
>  		ret = phy_power_on(imx_pcie->phy);
>  		if (ret) {
>  			dev_err(dev, "waiting for PHY ready timeout!\n");
> @@ -1154,6 +1170,28 @@ static void imx_pcie_host_exit(struct dw_pcie_rp *pp)
>  		regulator_disable(imx_pcie->vpcie);
>  }
>  
> +static u64 imx_pcie_cpu_addr_fixup(struct dw_pcie *pcie, u64 cpu_addr)
> +{
> +	struct imx_pcie *imx_pcie = to_imx_pcie(pcie);
> +	struct dw_pcie_ep *ep = &pcie->ep;
> +	struct dw_pcie_rp *pp = &pcie->pp;
> +	struct resource_entry *entry;
> +	unsigned int offset;
> +
> +	if (!(imx_pcie->drvdata->flags & IMX_PCIE_FLAG_CPU_ADDR_FIXUP))

This flag should be documented in the commit message.

> +		return cpu_addr;
> +
> +	if (imx_pcie->drvdata->mode == DW_PCIE_EP_TYPE) {
> +		offset = ep->phys_base;
> +	} else {
> +		entry = resource_list_first_type(&pp->bridge->windows,
> +						 IORESOURCE_MEM);

Check for NULL entry.

> +		offset = entry->res->start;
> +	}
> +
> +	return (cpu_addr + imx_pcie->local_addr - offset);
> +}
> +
>  static const struct dw_pcie_host_ops imx_pcie_host_ops = {
>  	.init = imx_pcie_host_init,
>  	.deinit = imx_pcie_host_exit,
> @@ -1162,6 +1200,7 @@ static const struct dw_pcie_host_ops imx_pcie_host_ops = {
>  static const struct dw_pcie_ops dw_pcie_ops = {
>  	.start_link = imx_pcie_start_link,
>  	.stop_link = imx_pcie_stop_link,
> +	.cpu_addr_fixup = imx_pcie_cpu_addr_fixup,
>  };
>  
>  static void imx_pcie_ep_init(struct dw_pcie_ep *ep)
> @@ -1481,6 +1520,12 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  					     "Failed to get PCIEPHY reset control\n");
>  	}
>  
> +	if (imx_check_flag(imx_pcie, IMX_PCIE_FLAG_CPU_ADDR_FIXUP)) {
> +		ret = of_property_read_u32(node, "fsl,local-address", &imx_pcie->local_addr);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "Failed to get local-address");

Is it OK to continue?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

