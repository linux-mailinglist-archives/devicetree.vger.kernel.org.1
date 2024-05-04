Return-Path: <devicetree+bounces-64964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C14C8BBD72
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 19:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C028A282238
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 17:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92215433C4;
	Sat,  4 May 2024 17:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cqq/rUPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86A75A110
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 17:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714843929; cv=none; b=EvOUHDFSokTPfBBb+JMaEKhlTbl2cHrPx5TOEQk5op8TvfdFiZfRTbaVuxjrdqjywtmKCHMReOj5LZ/cE3QkxRjrdOrZh0IPEDt3J8nWeRPXe9A0YYsOFwWNHpHqF/3ACQ9ZBoDNs4x8RnyZdvn8EInC/uHTk0/mmxGk0kAkGO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714843929; c=relaxed/simple;
	bh=YdCx58Dzs7qzvyXpz7/ECTcvdAG6wMlTtZUSvbUZVAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mg4IKCzl+qmq0uXFQqQecrG49vR3uVOPEI+MIS2++mhcOfjpUp1ZcNELYVRPRJY5/Was/6rgHCBFoFMb5pKxmLQH8TMfAN0clSJ5TdQdnQG6f8HnKnGetkabguB2OtAdPu6dhylz2v4oDb9VCtDc516DTUtoGcxtC0EPtyew/7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cqq/rUPz; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e4266673bbso5433465ad.2
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 10:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843927; x=1715448727; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uPClDvvcJ7mIDpHrOSstQQDeTN9jXeugtf0sVKW/w48=;
        b=cqq/rUPzbYk0F1ROLea9AhwGBDzubjvDI0UlYE44J3IY4RDa8Q62Qw9QrTZgPmGALI
         /LMnv7YlazD3x6btybZIXRwKzOGcpwfK1Igh34kOt+Fycf2fGkyj0wF9DxdMCuWDEmx4
         W5YPjHqkiIyKSDL3Zve4ilii04BbiN5K43CrHzaWgMcr3WaPlXUVFV/FVzlXTgVhgqTE
         yNJfxrfFllD44PjaBMyXQDb1NwhBo2s24iDzGsbBiggn1F2t46YOmrLWwgDUUw1O8ltg
         x1D0phS1hX+3YJeN1XI+v3GImlVsZhcccmCpEqDZ8UMcScB08ygWz15BRH3nl7A95Iiu
         HKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843927; x=1715448727;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPClDvvcJ7mIDpHrOSstQQDeTN9jXeugtf0sVKW/w48=;
        b=MhcXReQ1voB1aZu/rO0LWkUj+cJ7jS53+7zFGKQXWRzAb3CmF6pcZESkILJ+5H6s/e
         7AA/SCPppR+6DjDy9Qz6wsQ5zdi8Pu8n2wnLJMnA15DICeWWIOIzJxC6kJqEEsp/MXWQ
         xupw7c69cqoFQ+Ycmz41HqA4KO2IMH5MsvHEqqfJQ6AMi84kjJh92biXUfOrIACvLbQZ
         DpYLqzeJ3StIzccrcy1JPayb7tqQfoiDLucczbcwIQwYK5v4Dq+eDfVdtZm0FJvGlfp6
         LuFH5hQ9h1SqtHhTsjMT321QkEg/A2JNE4o7x8xt4zIGtLuiftuau06c/MVI8l56WoCI
         MPEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkyaIUIZNRe1BZD1y6oMvN3hOywtAsIKqfyVyNsZz77AaxGH6WzCDnOam0TlogY7RXoCdEG5rX5o84ehR2F4+e8IauFf/f0zVEgw==
X-Gm-Message-State: AOJu0YwrOGgbFL9Ta3FgDl/8vuZvu4Q1xyE06tkjA2o06NEvU6oEmK9H
	4aRH7hPpEkqAFEFfQ+zImG6jFBjtAlm/WB5OTquBxYwLt8fJ/Al9aW4rsY8qmsXMsRjMGp5HIAQ
	=
X-Google-Smtp-Source: AGHT+IEXftDK9fMK1i4RLPnA/9Dg6ygF5E57CTQbTcZw86EdPYpviVAnYeDNhGUiAke2ggqBk1QTmg==
X-Received: by 2002:a17:902:dac1:b0:1ea:d979:d778 with SMTP id q1-20020a170902dac100b001ead979d778mr7619821plx.5.1714843926927;
        Sat, 04 May 2024 10:32:06 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id i9-20020a17090332c900b001e3e244e5c0sm5260146plr.78.2024.05.04.10.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:32:06 -0700 (PDT)
Date: Sat, 4 May 2024 23:02:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 11/14] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <20240504173201.GH4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-11-a0f5ee2a77b6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-11-a0f5ee2a77b6@kernel.org>

On Tue, Apr 30, 2024 at 02:01:08PM +0200, Niklas Cassel wrote:
> The PCIe controller in rk3568 and rk3588 can operate in endpoint mode.
> This endpoint mode support heavily leverages the existing code in
> pcie-designware-ep.c.
> 
> Add support for endpoint mode to the existing pcie-dw-rockchip glue
> driver.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  drivers/pci/controller/dwc/Kconfig            |  17 ++-
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 177 ++++++++++++++++++++++++++
>  2 files changed, 191 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 8afacc90c63b..9fae0d977271 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -311,16 +311,27 @@ config PCIE_RCAR_GEN4_EP
>  	  SoCs. To compile this driver as a module, choose M here: the module
>  	  will be called pcie-rcar-gen4.ko. This uses the DesignWare core.
>  
> +config PCIE_ROCKCHIP_DW
> +	bool
> +
>  config PCIE_ROCKCHIP_DW_HOST
> -	bool "Rockchip DesignWare PCIe controller"
> -	select PCIE_DW
> +	bool "Rockchip DesignWare PCIe controller (host mode)"
>  	select PCIE_DW_HOST
>  	depends on PCI_MSI
>  	depends on ARCH_ROCKCHIP || COMPILE_TEST
>  	depends on OF
>  	help
>  	  Enables support for the DesignWare PCIe controller in the
> -	  Rockchip SoC except RK3399.
> +	  Rockchip SoC (except RK3399) to work in host mode.

Just curious. RK3399 is an exception because lack of driver support or it
doesn't support EP mode at all?

> +
> +config PCIE_ROCKCHIP_DW_EP
> +	bool "Rockchip DesignWare PCIe controller (endpoint mode)"
> +	select PCIE_DW_EP
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OF
> +	help
> +	  Enables support for the DesignWare PCIe controller in the
> +	  Rockchip SoC (except RK3399) to work in endpoint mode.
>  
>  config PCI_EXYNOS
>  	tristate "Samsung Exynos PCIe controller"
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index f38d267e4e64..7614c20c7112 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -34,10 +34,16 @@
>  #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
>  
>  #define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
> +#define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
>  #define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
> +#define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
> +#define PCIE_CLIENT_INTR_STATUS_MISC	0x10
> +#define PCIE_CLIENT_INTR_MASK_MISC	0x24
>  #define PCIE_SMLH_LINKUP		BIT(16)
>  #define PCIE_RDLH_LINKUP		BIT(17)
>  #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
> +#define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
> +#define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
>  #define PCIE_L0S_ENTRY			0x11
>  #define PCIE_CLIENT_GENERAL_CONTROL	0x0
>  #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
> @@ -159,6 +165,12 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  				 PCIE_CLIENT_GENERAL_CONTROL);
>  }
>  
> +static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
> +{
> +	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DISABLE_LTSSM,
> +				 PCIE_CLIENT_GENERAL_CONTROL);
> +}
> +
>  static int rockchip_pcie_link_up(struct dw_pcie *pci)
>  {
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> @@ -195,6 +207,13 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
>  	return 0;
>  }
>  
> +static void rockchip_pcie_stop_link(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +
> +	rockchip_pcie_disable_ltssm(rockchip);
> +}
> +
>  static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -220,6 +239,59 @@ static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
>  	.init = rockchip_pcie_host_init,
>  };
>  
> +static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	enum pci_barno bar;
> +
> +	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
> +		dw_pcie_ep_reset_bar(pci, bar);
> +};
> +
> +static int rockchip_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
> +				   unsigned int type, u16 interrupt_num)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +
> +	switch (type) {
> +	case PCI_IRQ_INTX:
> +		return dw_pcie_ep_raise_intx_irq(ep, func_no);
> +	case PCI_IRQ_MSI:
> +		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
> +	case PCI_IRQ_MSIX:
> +		return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
> +	default:
> +		dev_err(pci->dev, "UNKNOWN IRQ type\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct pci_epc_features rockchip_pcie_epc_features = {
> +	.linkup_notifier = true,
> +	.msi_capable = true,
> +	.msix_capable = true,
> +	.align = SZ_64K,
> +	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
> +	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
> +	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
> +	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
> +	.bar[BAR_4] = { .type = BAR_RESERVED, },

You have documented the reason for this in cover letter. But it'd be good if you
do the same in commit message also.

> +	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
> +};
> +
> +static const struct pci_epc_features *
> +rockchip_pcie_get_features(struct dw_pcie_ep *ep)
> +{
> +	return &rockchip_pcie_epc_features;
> +}
> +
> +static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
> +	.init = rockchip_pcie_ep_init,
> +	.raise_irq = rockchip_pcie_raise_irq,
> +	.get_features = rockchip_pcie_get_features,
> +};
> +
>  static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
>  {
>  	struct device *dev = rockchip->pci.dev;
> @@ -284,8 +356,39 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
>  static const struct dw_pcie_ops dw_pcie_ops = {
>  	.link_up = rockchip_pcie_link_up,
>  	.start_link = rockchip_pcie_start_link,
> +	.stop_link = rockchip_pcie_stop_link,
>  };
>  
> +static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
> +{
> +	struct rockchip_pcie *rockchip = arg;
> +	struct dw_pcie *pci = &rockchip->pci;
> +	struct device *dev = pci->dev;
> +	u32 reg, val;
> +
> +	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
> +
> +	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
> +	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_ltssm(rockchip));
> +
> +	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
> +		dev_dbg(dev, "hot reset or link-down reset\n");

'hot reset' means the host doing a hot reset?

Rest LGTM!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

