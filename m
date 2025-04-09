Return-Path: <devicetree+bounces-164690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 449F3A81F5A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47AB8189042E
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E73C025B68C;
	Wed,  9 Apr 2025 08:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X0HfnFIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F407225B687
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744185843; cv=none; b=QRCjuv+X2Jd7VhhMIM+RVLIJEo+32SnocIMFoMK+U5EgTPvSvRE8oDUo5Ci9fNfuPRwgvdivzOU/VxLMMm7ZAlR2S5rUdeu4cZF/CHcwkYhbVtDwsehsMFdLJ56rVlepgah9DMA4q/VzyMUYKHyqLmo+7F9l2NqYrgiM1bA8k50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744185843; c=relaxed/simple;
	bh=ZaVw5OY/Fp/j2BL95jCBKv6mfWVHYmdtI7BWrOnSXVs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lw0FkEJQPgIOlqywQ6UyexAFqPKaLmJGXc38FU0lOAzdKcDruMAloRhZG/JH9nRxoSxgiB+G7b9zosz9KgDU1zk1JEnBqp/q+MnlGMU91w+djAGhpWKqS/mCTgqjwEjaPVQAw1h8Gg1JcvOrhbwyhquYvHnEAxHIy+pMqi7dRd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X0HfnFIR; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22435603572so62773265ad.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744185841; x=1744790641; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cZkefp3SsqAWOBBxs1VEWuV1y8jA3RO3nWFxkIRrTSA=;
        b=X0HfnFIRj5VA6KsJPY1o4BRlXI9ouuU3TeMDv0VG+E1uM+ynGugnAOd7AUrmNMaAMw
         wG/PXZw1ixv65Auj+TgkA7+lUdbh0X1Qt8EdZfIeQxoNf0QO62SPO+hQUHPvOaO4KRQf
         dtreqXyh4fz+sCxV+bLXTbBQAqb9qPBvidNnsFvwCeSMSwXXohM9ZAONEedDvVFtIkDj
         7WUf2fiORiwLi3zJ4V+qJOY2oU9gJ6AP8C16dVDJKebS8t5+tDUfsCyIhzyCUaeruPOW
         iW9yXE2QEhelS4Q0nBQA9g+dKZxtXJcBjU/LpM7Qnp1jRwdxsEgT+OrKD5CktTODSHd/
         Ln1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744185841; x=1744790641;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cZkefp3SsqAWOBBxs1VEWuV1y8jA3RO3nWFxkIRrTSA=;
        b=AmKvQRhvpUTSvV9AY2C/Q/UkDAFbfRrWhH3n+YI0k8ArE8HieX0F2t6N0LwsgglVul
         9FeI/8v3d7ixplFN/mFh1g70KqSrk9TGY7ywm+4rIcqVWRrtW56w6sL8B1MpE3OPnJOp
         emOxGLvW2fxNlt+OjeRNnsw24Ta778i8BQxly3CiePDBtX4uD4Qr3pmcPKknl23zS1T7
         E3kb2exaVP9qj+sdC052M1uYpionCBd8dGGRs4eWCOoPPrRvM0aY7Rmg9lt9VEAp1jF0
         Nt8U0/YM4roQZjyBrCTfBsgDPwf1ITs96JyAzaLVLMH2u7QzcXj9FVx6IgFzl5rYBTV1
         jx8A==
X-Forwarded-Encrypted: i=1; AJvYcCUCxvUys+cFqWku2+WTvfxhxZCTbhuapOqSHzinrz2rzc0sJLkOc40epCG0DcSOe/h2KrZ9rMZCPy/k@vger.kernel.org
X-Gm-Message-State: AOJu0YxXeXNhEOT/9x4BxKWCNEs1o0OEEHBi2Zx3PlLwD1t18llxNP3Y
	odkLIroTIVaKP6N9xYR4Cl12r9rPvUvhbsUrPlm3v+ojw0PY34yiTWlzs+c3gA==
X-Gm-Gg: ASbGncvksIdHrsVZf0ovxgi5MYp0KbNN2fjennQgXdXOS/FekOUuhHvYZoQuOHr9GcH
	xmGwplzgZK5cG+uAZdKtDOY2MDFNsoxTVCRYuHwP8jc5cf7ZNH96ExCkx43YZLE0zLE6SPGCJmn
	kebooiAcUaq/VPXCLF6XGGYQ2oWVy0iWKB8s2kk3qwaSWIiZsKnHP0ldgXKKUC342RlkA+cZK2P
	Pfxhob578l9kF2VT0qtyAatnrc5KNIq3z5M8A1wmI2LIxFouQf+0PnM+1ySauP99fd2y6OlWFOt
	sr3f+msrb5E/pZFFZ8qPhEgXorKu3+g4pP8o79EbhckqenpQSfo=
X-Google-Smtp-Source: AGHT+IHzv+8zIVtNQ9GRK5QB/aNaohw8UHnO+WeQYD3ggOvprCdhZxsimpY14GlAS7+65p73hE+tow==
X-Received: by 2002:a17:902:ccc8:b0:224:c46:d162 with SMTP id d9443c01a7336-22ac2992075mr29880945ad.20.1744185841087;
        Wed, 09 Apr 2025 01:04:01 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c9937fsm5677465ad.155.2025.04.09.01.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:04:00 -0700 (PDT)
Date: Wed, 9 Apr 2025 13:33:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, p.zabel@pengutronix.de, 
	johan+linaro@kernel.org, cassel@kernel.org, quic_schintav@quicinc.com, 
	fabrice.gasnier@foss.st.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/9 RESEND] PCI: stm32: Add PCIe Endpoint support for
 STM32MP25
Message-ID: <dirqsnrzjoiht7vvzzwh73gf3zuwyco6lc46k6s6pkifde2uzw@icmtn7x53swc>
References: <20250325065935.908886-1-christian.bruel@foss.st.com>
 <20250325065935.908886-5-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250325065935.908886-5-christian.bruel@foss.st.com>

On Tue, Mar 25, 2025 at 07:59:30AM +0100, Christian Bruel wrote:
> Add driver to configure the STM32MP25 SoC PCIe Gen1 2.5GT/s or Gen2 5GT/s
> controller based on the DesignWare PCIe core in endpoint mode.
> 
> Uses the common reference clock provided by the host.
> 
> The PCIe core_clk receives the pipe0_clk from the ComboPHY as input,
> and the ComboPHY PLL must be locked for pipe0_clk to be ready.
> Consequently, PCIe core registers cannot be accessed until the ComboPHY is
> fully initialised and refclk is enabled and ready.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  drivers/pci/controller/dwc/Kconfig         |  12 +
>  drivers/pci/controller/dwc/Makefile        |   1 +
>  drivers/pci/controller/dwc/pcie-stm32-ep.c | 420 +++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-stm32.h    |   1 +
>  4 files changed, 434 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-stm32-ep.c
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0c18879b604c..4a3eb838557c 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -401,6 +401,18 @@ config PCIE_STM32
>  	  This driver can also be built as a module. If so, the module
>  	  will be called pcie-stm32.
>  
> +config PCIE_STM32_EP
> +	tristate "STMicroelectronics STM32MP25 PCIe Controller (endpoint mode)"
> +	depends on ARCH_STM32 || COMPILE_TEST
> +	depends on PCI_ENDPOINT
> +	select PCIE_DW_EP
> +	help
> +	  Enables endpoint support for DesignWare core based PCIe controller
> +	  found in STM32MP25 SoC.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called pcie-stm32-ep.
> +
>  config PCI_DRA7XX
>  	tristate
>  
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index 576d99cb3bc5..caebd98f6dd3 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -29,6 +29,7 @@ obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
>  obj-$(CONFIG_PCIE_VISCONTI_HOST) += pcie-visconti.o
>  obj-$(CONFIG_PCIE_RCAR_GEN4) += pcie-rcar-gen4.o
>  obj-$(CONFIG_PCIE_STM32) += pcie-stm32.o
> +obj-$(CONFIG_PCIE_STM32_EP) += pcie-stm32-ep.o
>  
>  # The following drivers are for devices that use the generic ACPI
>  # pci_root.c driver but don't support standard ECAM config access.
> diff --git a/drivers/pci/controller/dwc/pcie-stm32-ep.c b/drivers/pci/controller/dwc/pcie-stm32-ep.c
> new file mode 100644
> index 000000000000..a8e9c5a9b127
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-stm32-ep.c
> @@ -0,0 +1,420 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * STMicroelectronics STM32MP25 PCIe endpoint driver.
> + *
> + * Copyright (C) 2025 STMicroelectronics
> + * Author: Christian Bruel <christian.bruel@foss.st.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/of_platform.h>
> +#include <linux/of_gpio.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include "pcie-designware.h"
> +#include "pcie-stm32.h"
> +
> +enum stm32_pcie_ep_link_status {
> +	STM32_PCIE_EP_LINK_DISABLED,
> +	STM32_PCIE_EP_LINK_ENABLED,
> +};
> +
> +struct stm32_pcie {
> +	struct dw_pcie pci;
> +	struct regmap *regmap;
> +	struct reset_control *rst;
> +	struct phy *phy;
> +	struct clk *clk;
> +	struct gpio_desc *perst_gpio;
> +	enum stm32_pcie_ep_link_status link_status;
> +	unsigned int perst_irq;
> +};
> +
> +static void stm32_pcie_ep_init(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	enum pci_barno bar;
> +
> +	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
> +		dw_pcie_ep_reset_bar(pci, bar);
> +}
> +
> +static int stm32_pcie_enable_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +			   STM32MP25_PCIECR_LTSSM_EN,
> +			   STM32MP25_PCIECR_LTSSM_EN);
> +
> +	return dw_pcie_wait_for_link(pci);
> +}
> +
> +static void stm32_pcie_disable_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR, STM32MP25_PCIECR_LTSSM_EN, 0);
> +}
> +
> +static int stm32_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +	struct dw_pcie_ep *ep = &pci->ep;
> +	int ret;
> +
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_ENABLED) {
> +		dev_dbg(pci->dev, "Link is already enabled\n");
> +		return 0;
> +	}
> +
> +	ret = stm32_pcie_enable_link(pci);
> +	if (ret) {
> +		dev_err(pci->dev, "PCIe cannot establish link: %d\n", ret);
> +		return ret;
> +	}
> +
> +	dw_pcie_ep_linkup(ep);
> +

This callback should only be used when the epc_features::linkup_notifier flag is
set. That only applies to platforms supporting LINK_UP interrupt. In this case,
once the start_link() callback returns, it is assumed that the link is active.
So no need to call dw_pcie_ep_linkup().

> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_ENABLED;
> +
> +	enable_irq(stm32_pcie->perst_irq);
> +
> +	return 0;
> +}
> +
> +static void stm32_pcie_stop_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_DISABLED) {
> +		dev_dbg(pci->dev, "Link is already disabled\n");
> +		return;
> +	}
> +
> +	disable_irq(stm32_pcie->perst_irq);
> +
> +	stm32_pcie_disable_link(pci);
> +
> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_DISABLED;
> +}
> +
> +static int stm32_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
> +				unsigned int type, u16 interrupt_num)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +
> +	switch (type) {
> +	case PCI_IRQ_INTX:
> +		return dw_pcie_ep_raise_intx_irq(ep, func_no);
> +	case PCI_IRQ_MSI:
> +		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
> +	default:
> +		dev_err(pci->dev, "UNKNOWN IRQ type\n");
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct pci_epc_features stm32_pcie_epc_features = {
> +	.msi_capable = true,
> +	.align = SZ_64K,
> +};
> +
> +static const struct pci_epc_features*
> +stm32_pcie_get_features(struct dw_pcie_ep *ep)
> +{
> +	return &stm32_pcie_epc_features;
> +}
> +
> +static const struct dw_pcie_ep_ops stm32_pcie_ep_ops = {
> +	.init = stm32_pcie_ep_init,
> +	.raise_irq = stm32_pcie_raise_irq,
> +	.get_features = stm32_pcie_get_features,
> +};
> +
> +static const struct dw_pcie_ops dw_pcie_ops = {
> +	.start_link = stm32_pcie_start_link,
> +	.stop_link = stm32_pcie_stop_link,
> +};
> +
> +static int stm32_pcie_enable_resources(struct stm32_pcie *stm32_pcie)
> +{
> +	int ret;
> +
> +	ret = phy_init(stm32_pcie->phy);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(stm32_pcie->clk);
> +	if (ret)
> +		phy_exit(stm32_pcie->phy);
> +
> +	return ret;
> +}
> +
> +static void stm32_pcie_disable_resources(struct stm32_pcie *stm32_pcie)
> +{
> +	clk_disable_unprepare(stm32_pcie->clk);
> +
> +	phy_exit(stm32_pcie->phy);
> +}
> +
> +static void stm32_pcie_perst_assert(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +	struct device *dev = pci->dev;
> +
> +	dev_dbg(dev, "PERST asserted by host. Shutting down the PCIe link\n");
> +
> +	/*
> +	 * Do not try to release resources if the PERST# is
> +	 * asserted before the link is started.

Make use of 80 columns.

> +	 */
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_DISABLED) {
> +		dev_dbg(pci->dev, "Link is already disabled\n");
> +		return;
> +	}
> +
> +	stm32_pcie_disable_link(pci);
> +
> +	stm32_pcie_disable_resources(stm32_pcie);
> +
> +	pm_runtime_put_sync(dev);
> +
> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_DISABLED;
> +}
> +
> +static void stm32_pcie_perst_deassert(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +	struct device *dev = pci->dev;
> +	struct dw_pcie_ep *ep = &pci->ep;
> +	int ret;
> +
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_ENABLED) {
> +		dev_dbg(pci->dev, "Link is already enabled\n");
> +		return;
> +	}
> +
> +	dev_dbg(dev, "PERST de-asserted by host. Starting link training\n");
> +
> +	ret = pm_runtime_resume_and_get(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "pm runtime resume failed: %d\n", ret);
> +		return;
> +	}
> +
> +	ret = stm32_pcie_enable_resources(stm32_pcie);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable resources: %d\n", ret);
> +		goto err_pm_put_sync;
> +	}
> +
> +	ret = dw_pcie_ep_init_registers(ep);
> +	if (ret) {
> +		dev_err(dev, "Failed to complete initialization: %d\n", ret);
> +		goto err_disable_resources;
> +	}
> +
> +	pci_epc_init_notify(ep->epc);
> +
> +	ret = stm32_pcie_enable_link(pci);
> +	if (ret) {
> +		dev_err(dev, "PCIe Cannot establish link: %d\n", ret);
> +		goto err_deinit_notify;
> +	}

Link is supposed to be enabled only by the start_link() callback.

> +
> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_ENABLED;
> +
> +	return;
> +
> +err_deinit_notify:
> +	pci_epc_deinit_notify(ep->epc);
> +
> +err_disable_resources:
> +	stm32_pcie_disable_resources(stm32_pcie);
> +
> +err_pm_put_sync:
> +	pm_runtime_put_sync(dev);
> +}
> +
> +static irqreturn_t stm32_pcie_ep_perst_irq_thread(int irq, void *data)
> +{
> +	struct stm32_pcie *stm32_pcie = data;
> +	struct dw_pcie *pci = &stm32_pcie->pci;
> +	u32 perst;
> +
> +	perst = gpiod_get_value(stm32_pcie->perst_gpio);
> +	if (perst)
> +		stm32_pcie_perst_assert(pci);
> +	else
> +		stm32_pcie_perst_deassert(pci);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int stm32_add_pcie_ep(struct stm32_pcie *stm32_pcie,
> +			     struct platform_device *pdev)
> +{
> +	struct dw_pcie_ep *ep = &stm32_pcie->pci.ep;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "pm runtime resume failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +				 STM32MP25_PCIECR_TYPE_MASK,
> +				 STM32MP25_PCIECR_EP);
> +	if (ret) {
> +		goto err_pm_put_sync;
> +		return ret;
> +	}
> +
> +	reset_control_assert(stm32_pcie->rst);
> +	reset_control_deassert(stm32_pcie->rst);
> +
> +	ep->ops = &stm32_pcie_ep_ops;
> +
> +	ret = dw_pcie_ep_init(ep);
> +	if (ret) {
> +		dev_err(dev, "failed to initialize ep: %d\n", ret);
> +		goto err_pm_put_sync;
> +	}
> +
> +	ret = stm32_pcie_enable_resources(stm32_pcie);
> +	if (ret) {
> +		dev_err(dev, "failed to enable resources: %d\n", ret);
> +		goto err_ep_deinit;
> +	}
> +
> +	ret = dw_pcie_ep_init_registers(ep);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
> +		goto err_disable_resources;
> +	}
> +
> +	pci_epc_init_notify(ep->epc);
> +

You are calling dw_pcie_ep_init_registers() and  pci_epc_init_notify() from 2
places. I think the one in stm32_pcie_perst_deassert() should be dropped since
the DBI registers are available at this point itself.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

