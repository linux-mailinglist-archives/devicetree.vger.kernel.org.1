Return-Path: <devicetree+bounces-112119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3059A1156
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:15:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6490C1F24008
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882532139B5;
	Wed, 16 Oct 2024 18:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WoxKUiTn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCAF210C1B
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 18:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729102502; cv=none; b=EC+NgIlQWbA2kNzVJ1GiKaO0ea1YiH+lcm9bJcPAp55zShdL3FhK+EoOgynsBKrJXrIElkIbj/YAusOYG/Qb16pXJ34OqvifOcu7zGtsFRG3AGQx2ZKaZ/wNoK3nSgWQIrVmJjOy2U+WicmqpTLRzACiEK4BSZxAfJEo9LZugOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729102502; c=relaxed/simple;
	bh=kMOkuyqyDiBU70N6lFEUOgEkhx4xtPTR2JIeyK1sEbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nQjSvpcRmzcFb8Zng6ANmMdZGHv2muOE18nx2bomsBhh22DVsJET2DVixmrYwU077jUDLb9TBSBIOqK1ADz/N0q0omi1BAv7efLyLyTM2lFPWpBf5dnVPBV2Gfk38nTQ62l0E9LGYaOyxQcqEhS5oKCvtD7qCKg68eU/R9PPZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WoxKUiTn; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20cf6eea3c0so1110265ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 11:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729102500; x=1729707300; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JqcNJoZn1LzotoHmCYaem8+wwJv3TspcxGY5Y2wT3qE=;
        b=WoxKUiTn5OslPtg43cEmzj27uJIYDX67GDDpKv4rOBb56sZy4Sf7OdHkz++L/aVNX+
         w8iyM70Vg2aidMust5bKD4Cm7NFh66tM7/cWjuTvoRpM3lTSEx/heMa6PKgNfTkoZyEx
         YJ+4x2BSZx2fdzRRQuBVCtCTZieqWHl2gVp+4ZqyIJdSmE+pPiRoOJhLAF/pITa2shKf
         nlMHMNlGTsuFZ/DASRLQmkSI83fM0hwkCRWAoxBV/8RH3B0UlzfRDmeEKXL4Ubp6RMDY
         RYAeQLfF2uPlRsF3fQxwjGvn4K08g5ttBsNZEUDagZGyS451SH6iuwmCuOrJq4lA7jBA
         dFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729102500; x=1729707300;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JqcNJoZn1LzotoHmCYaem8+wwJv3TspcxGY5Y2wT3qE=;
        b=S4V2lk7KS8jUnb6mJ7dDfbmT8DMtuDxtjLgZI/o0W8AlStcsP+HHYtROL94nM+14aS
         QOzAr3TDfVVMUS7McDeVXkU/CanYA2EKXaWm5mhZSSoMsWin1I2byFYRhgMpqdB2v2ny
         ztHwRC+M2uJSUvmtdzQA+Kr7kUO8z/KB4hbyiQUQCshCxl9Qjou+SO3fy3lVob7SjhrD
         XYXhNSp94PKOC+r5m6rYJnUEvsr2/UpiYkqPVaL6WXPrbRzHBJkenU+evRXDKnVzaoQg
         xATjBbw07M4iyeRdEeoEKavqwoGy/Qc6UvdESRdpSgqLngXB2hbvlnktBxBsiz8sfK5O
         ATug==
X-Forwarded-Encrypted: i=1; AJvYcCUKkmMCV6y7hTpoArj/Z4rCi7iaypgw3z37rvCCdPbkLRo27tFoaeLedqq5W8QBPXGM24BErf3IOTKo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp6BYA0Qdu456xvxXo26DipYw8DVSKiuytCdxLrLD59knUlr0S
	EIyDQYivmxBqqPKbFX+aIffWIm19ywsjNBBdbadjr6oYBz+esSaeEpxt/wQgUg==
X-Google-Smtp-Source: AGHT+IFkhn/1WXaFJTfDH4EjM24/sVzkY4clftH7mc2KR4khd66Aw1VpnRIVe5BuWrMJFdiif8PjyA==
X-Received: by 2002:a17:903:2405:b0:20c:9bf9:1d97 with SMTP id d9443c01a7336-20d27f41971mr51867625ad.60.1729102500172;
        Wed, 16 Oct 2024 11:15:00 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1805a175sm31465615ad.247.2024.10.16.11.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 11:14:59 -0700 (PDT)
Date: Wed, 16 Oct 2024 23:44:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@axis.com, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Subject: Re: [PATCH v2 4/4] PCI: imx6: Add i.MX8Q PCIe Endpoint (EP) support
Message-ID: <20241016181451.atzbuvubsxrpsaiw@thinkpad>
References: <20240923-pcie_ep_range-v2-0-78d2ea434d9f@nxp.com>
 <20240923-pcie_ep_range-v2-4-78d2ea434d9f@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923-pcie_ep_range-v2-4-78d2ea434d9f@nxp.com>

On Mon, Sep 23, 2024 at 02:59:22PM -0400, Frank Li wrote:

Subject should specify 'i.MX8Q series of SoCs'. So it would become:

'PCI: imx6: Add PCIe Endpoint (EP) support for i.MX8Q series of SoCs'

> Add support for i.MX8Q series (i.MX8QM, i.MX8QXP, and i.MX8DXL) PCIe
> Endpoint (EP). On i.MX8Q platforms, the PCI bus addresses differ from the
> CPU addresses. The DesignWare (DWC) driver already handles this in the
> common code.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index bdc2b372e6c13..1e58c24137e7f 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -70,6 +70,7 @@ enum imx_pcie_variants {
>  	IMX8MQ_EP,
>  	IMX8MM_EP,
>  	IMX8MP_EP,
> +	IMX8Q_EP,
>  	IMX95_EP,
>  };
>  
> @@ -1079,6 +1080,16 @@ static const struct pci_epc_features imx8m_pcie_epc_features = {
>  	.align = SZ_64K,
>  };
>  
> +static const struct pci_epc_features imx8q_pcie_epc_features = {
> +	.linkup_notifier = false,
> +	.msi_capable = true,
> +	.msix_capable = false,
> +	.bar[BAR_1] = { .type = BAR_RESERVED, },
> +	.bar[BAR_3] = { .type = BAR_RESERVED, },
> +	.bar[BAR_5] = { .type = BAR_RESERVED, },
> +	.align = SZ_64K,
> +};
> +
>  /*
>   * BAR#	| Default BAR enable	| Default BAR Type	| Default BAR Size	| BAR Sizing Scheme
>   * ================================================================================================
> @@ -1645,6 +1656,14 @@ static const struct imx_pcie_drvdata drvdata[] = {
>  		.epc_features = &imx8m_pcie_epc_features,
>  		.enable_ref_clk = imx8mm_pcie_enable_ref_clk,
>  	},
> +	[IMX8Q_EP] = {
> +		.variant = IMX8Q_EP,
> +		.flags = IMX_PCIE_FLAG_HAS_PHYDRV,
> +		.mode = DW_PCIE_EP_TYPE,
> +		.epc_features = &imx8q_pcie_epc_features,
> +		.clk_names = imx8q_clks,
> +		.clks_cnt = ARRAY_SIZE(imx8q_clks),
> +	},
>  	[IMX95_EP] = {
>  		.variant = IMX95_EP,
>  		.flags = IMX_PCIE_FLAG_HAS_SERDES |
> @@ -1674,6 +1693,7 @@ static const struct of_device_id imx_pcie_of_match[] = {
>  	{ .compatible = "fsl,imx8mq-pcie-ep", .data = &drvdata[IMX8MQ_EP], },
>  	{ .compatible = "fsl,imx8mm-pcie-ep", .data = &drvdata[IMX8MM_EP], },
>  	{ .compatible = "fsl,imx8mp-pcie-ep", .data = &drvdata[IMX8MP_EP], },
> +	{ .compatible = "fsl,imx8q-pcie-ep", .data = &drvdata[IMX8Q_EP], },
>  	{ .compatible = "fsl,imx95-pcie-ep", .data = &drvdata[IMX95_EP], },
>  	{},
>  };
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

