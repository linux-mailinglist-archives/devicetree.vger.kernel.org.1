Return-Path: <devicetree+bounces-164672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E73A81E71
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A99023B8951
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 07:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4D925A340;
	Wed,  9 Apr 2025 07:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZWZgXYt0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9263D76
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 07:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744184429; cv=none; b=gHe3N26yrXTlCvCqHhQRxzB3mr9GJbRJKYEEdq8be3oMnNuOr3zpJ8rmkCwjdgupYVxxpwQxywQpuLHkOBOf7mFamX9qzM38q0MheiNT3sWMT3S7QqCqvFKguxIyfkCg8DzxmPMlC9z3tRZJ2Ibo9mkvD3Gt/wnfhmgBvWotzgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744184429; c=relaxed/simple;
	bh=gQPkNht8vfqHsb3RfK+g47uQNFlXBo79zKmQ92Okk68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UFN3MsDGGEn56+JZUMxUbIm7DYEDd7AmA/pHWn9+88CdB4HUV8w4q9jfN0qKpIxi2hEqcaDh2OTeKVs70ZAcT7xMuTRXxNp5P9I31WbOVnAfJWY2JlJ+ERt6JxVLN3KXoM+Ke+rjVzbsjcNtFrvJy47hconf48z7bEZeaypItRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZWZgXYt0; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2ff6cf448b8so7652324a91.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 00:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744184427; x=1744789227; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+oFe8u9FxKBuH4K/iHPol/vApb7aiLAQIa3mJ+POQHI=;
        b=ZWZgXYt0buL62+6MrI9AfVeKtaCmH5F3GsgHkuDqLcgSOiSMi0PY3Z9XYdCjuEoqV1
         HPXShJmJoZOgdWdB9Rs80daxI/0QXx/b1028Mpi15T1A62b73fkVTRF8B/NAkEl9cipM
         77OatpmIPQIPbiYkgPoGvKPoMNpGS5ElR4YjWOqZvcZhEuloVYHTOI++EPqdh+dnpxpv
         rpFNxUquZhPJP9yXuRdtsFz9LuSfLPN2dHB2NqbRdygWSdRbYKGtG/rCBxeP4HuQuRfc
         5uM/C21xDJEpYB2BiETRHNbeYV9hiP4kiS4yQJpf0R8paqpmIqtrpaNAH1Mp29a/WrkX
         JTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744184427; x=1744789227;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+oFe8u9FxKBuH4K/iHPol/vApb7aiLAQIa3mJ+POQHI=;
        b=Q6e9fbAxPOyqmfXPqAC7dG9oeuq3DqGZDI2tu7+x6JVBvAlRfkMTMRx2rw/ZG1Zvo9
         AflXlXxtbLJK+DAsMcbox/ey3wim8MS06/nVHFF+E+hUJRjyb6rNeKE2ioC/+OwUrTBy
         v3uGHvCxAyojgpEG4iraCAjzUUpqHfWy1XCpvWyRKE7lRyaKnYlkyzVW6ldMxwEEcvtf
         gEeOe8y6zEZerW7SSyO61SABujNSpnE9sZXX4wJxc8pr17bvHwKy+bznSj3Vjvz2X8BW
         ykDnhwGRk6hDBa/U/OvSHDbq64gJzbd3XON2TohtO7HQmYDm07vX7y3FH98T0lnm0ScU
         7ceA==
X-Forwarded-Encrypted: i=1; AJvYcCWYtq0Kku3sEdydLT2SJjadOEU7Gym/EJCA2jxuHZR43S9XquQIUK4mXaVcls9wX/YXwMztY96omiQW@vger.kernel.org
X-Gm-Message-State: AOJu0YzbwjU9tWSoUQobbrmEfAyGcIe+jnOGRYZxt69dUb3uSjaZt6Y2
	a+J88QUjoLNWUv6rcowBD8ztsndzR2qBM+DHByeN76ICfAvLyq94HZ/IrjkBSw==
X-Gm-Gg: ASbGncuQPQUdwkCL/MDkzIFe7W4pip20xtTPyV4J7tr0LjhNyiLWaulsyd7NPZmTn4+
	DLGp0vwL4ipMzBAbmphegTNRU0tgDkdRJKm+QXvc2VgBSMYn0HGQSwUFa58WoPPwsdli97Ba/nz
	prwi4TOoYuEP9XKw+XQMkomKPij+1d0KBTBrZYYBDl1VIEjy0zquYNFzQDBGpybYRVLUkfJrX+G
	voXSHHp/km6y+hIgPVuwSxi/PZI69ZCXX68y+DYhNVC7j8bbHPR25zayeIWCnxWzibYVep1Pc79
	7hEONrLx0ExS3+OTQ3Me1DtRz07LhWiFFeDJs8oGVsfARABB2Do=
X-Google-Smtp-Source: AGHT+IFzdnJzxhvhrD0BDt0+1Tqyf41zBSU8dtNoZbiYIb/yvsvm6G4GtmJ26GxqNSWOJa1ka3OoZQ==
X-Received: by 2002:a17:90b:2811:b0:2ea:bf1c:1e3a with SMTP id 98e67ed59e1d1-306dbbb0b9bmr3596481a91.12.1744184426800;
        Wed, 09 Apr 2025 00:40:26 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-306dd11e79fsm880237a91.19.2025.04.09.00.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 00:40:25 -0700 (PDT)
Date: Wed, 9 Apr 2025 13:10:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, p.zabel@pengutronix.de, 
	johan+linaro@kernel.org, cassel@kernel.org, quic_schintav@quicinc.com, 
	fabrice.gasnier@foss.st.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/9 RESEND] PCI: stm32: Add PCIe host support for
 STM32MP25
Message-ID: <bfwrsby7okn3huuwijfkeurtldr2xszfkpvzzc5m72bzj3mdmj@ypcwl5chipbx>
References: <20250325065935.908886-1-christian.bruel@foss.st.com>
 <20250325065935.908886-3-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250325065935.908886-3-christian.bruel@foss.st.com>

On Tue, Mar 25, 2025 at 07:59:28AM +0100, Christian Bruel wrote:
> Add driver for the STM32MP25 SoC PCIe Gen1 2.5 GT/s and Gen2 5GT/s
> controller based on the DesignWare PCIe core.
> 
> Supports MSI via GICv2m, Single Virtual Channel, Single Function
> 
> Supports WAKE# GPIO.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  drivers/pci/controller/dwc/Kconfig      |  12 +
>  drivers/pci/controller/dwc/Makefile     |   1 +
>  drivers/pci/controller/dwc/pcie-stm32.c | 367 ++++++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-stm32.h |  15 +
>  4 files changed, 395 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-stm32.c
>  create mode 100644 drivers/pci/controller/dwc/pcie-stm32.h
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index b6d6778b0698..0c18879b604c 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -389,6 +389,18 @@ config PCIE_SPEAR13XX
>  	help
>  	  Say Y here if you want PCIe support on SPEAr13XX SoCs.
>  
> +config PCIE_STM32

PCIE_STM32_HOST since you are adding the PCIE_STM32_EP Kconfig.

> +	tristate "STMicroelectronics STM32MP25 PCIe Controller (host mode)"
> +	depends on ARCH_STM32 || COMPILE_TEST
> +	depends on PCI_MSI
> +	select PCIE_DW_HOST
> +	help
> +	  Enables support for the DesignWare core based PCIe host controller
> +	  found in STM32MP25 SoC.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called pcie-stm32.
> +
>  config PCI_DRA7XX
>  	tristate
>  
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index a8308d9ea986..576d99cb3bc5 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
>  obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
>  obj-$(CONFIG_PCIE_VISCONTI_HOST) += pcie-visconti.o
>  obj-$(CONFIG_PCIE_RCAR_GEN4) += pcie-rcar-gen4.o
> +obj-$(CONFIG_PCIE_STM32) += pcie-stm32.o
>  
>  # The following drivers are for devices that use the generic ACPI
>  # pci_root.c driver but don't support standard ECAM config access.
> diff --git a/drivers/pci/controller/dwc/pcie-stm32.c b/drivers/pci/controller/dwc/pcie-stm32.c
> new file mode 100644
> index 000000000000..3937777d9eb9
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-stm32.c
> @@ -0,0 +1,367 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * STMicroelectronics STM32MP25 PCIe root complex driver.
> + *
> + * Copyright (C) 2025 STMicroelectronics
> + * Author: Christian Bruel <christian.bruel@foss.st.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +#include <linux/pinctrl/devinfo.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/pm_wakeirq.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include "pcie-designware.h"
> +#include "pcie-stm32.h"
> +#include "../../pci.h"
> +
> +struct stm32_pcie {
> +	struct dw_pcie pci;
> +	struct regmap *regmap;
> +	struct reset_control *rst;
> +	struct phy *phy;
> +	struct clk *clk;
> +	struct gpio_desc *perst_gpio;
> +	struct gpio_desc *wake_gpio;
> +};
> +
> +static void stm32_pcie_deassert_perst(struct stm32_pcie *stm32_pcie)
> +{

You should add a delay of PCIE_T_PVPERL_MS to satisfy the PERST# deassertion
requirement as per the spec.

> +	gpiod_set_value(stm32_pcie->perst_gpio, 0);
> +
> +	if (stm32_pcie->perst_gpio)
> +		msleep(PCIE_T_RRS_READY_MS);
> +}
> +
> +static void stm32_pcie_assert_perst(struct stm32_pcie *stm32_pcie)
> +{
> +	gpiod_set_value(stm32_pcie->perst_gpio, 1);
> +}
> +
> +static int stm32_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	return regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +				  STM32MP25_PCIECR_LTSSM_EN,
> +				  STM32MP25_PCIECR_LTSSM_EN);
> +}
> +
> +static void stm32_pcie_stop_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +			   STM32MP25_PCIECR_LTSSM_EN, 0);
> +}
> +
> +static int stm32_pcie_suspend_noirq(struct device *dev)
> +{
> +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = dw_pcie_suspend_noirq(&stm32_pcie->pci);
> +	if (ret) {
> +		stm32_pcie_deassert_perst(stm32_pcie);
> +		return ret;
> +	}
> +
> +	stm32_pcie_assert_perst(stm32_pcie);
> +	
> +	clk_disable_unprepare(stm32_pcie->clk);
> +
> +	if (!device_wakeup_path(dev))
> +		phy_exit(stm32_pcie->phy);
> +
> +	return pinctrl_pm_select_sleep_state(dev);
> +}
> +
> +static int stm32_pcie_resume_noirq(struct device *dev)
> +{
> +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> +	int ret;
> +
> +	/*
> +	 * The core clock is gated with CLKREQ# from the COMBOPHY REFCLK,
> +	 * thus if no device is present, must force it low with an init pinmux
> +	 * to be able to access the DBI registers.
> +	 */
> +	if (!IS_ERR(dev->pins->init_state))
> +		ret = pinctrl_select_state(dev->pins->p, dev->pins->init_state);
> +	else
> +		ret = pinctrl_pm_select_default_state(dev);
> +
> +	if (ret) {
> +		dev_err(dev, "Failed to activate pinctrl pm state: %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (!device_wakeup_path(dev)) {
> +		ret = phy_init(stm32_pcie->phy);
> +		if (ret) {
> +			pinctrl_pm_select_default_state(dev);
> +			return ret;
> +		}
> +	}
> +
> +	ret = clk_prepare_enable(stm32_pcie->clk);
> +	if (ret)
> +		goto err_phy_exit;
> +
> +	stm32_pcie_deassert_perst(stm32_pcie);
> +
> +	ret = dw_pcie_resume_noirq(&stm32_pcie->pci);
> +	if (ret)
> +		goto err_disable_clk;
> +
> +	pinctrl_pm_select_default_state(dev);
> +
> +	return 0;
> +
> +err_disable_clk:
> +	stm32_pcie_assert_perst(stm32_pcie);
> +	clk_disable_unprepare(stm32_pcie->clk);
> +
> +err_phy_exit:
> +	phy_exit(stm32_pcie->phy);
> +	pinctrl_pm_select_default_state(dev);
> +
> +	return ret;
> +}
> +
> +static const struct dev_pm_ops stm32_pcie_pm_ops = {
> +	NOIRQ_SYSTEM_SLEEP_PM_OPS(stm32_pcie_suspend_noirq,
> +				  stm32_pcie_resume_noirq)
> +};
> +
> +static const struct dw_pcie_host_ops stm32_pcie_host_ops = {
> +};
> +
> +static const struct dw_pcie_ops dw_pcie_ops = {
> +	.start_link = stm32_pcie_start_link,
> +	.stop_link = stm32_pcie_stop_link
> +};
> +
> +static int stm32_add_pcie_port(struct stm32_pcie *stm32_pcie,
> +			       struct platform_device *pdev)
> +{
> +	struct device *dev = stm32_pcie->pci.dev;
> +	unsigned int wake_irq;
> +	int ret;
> +
> +	/* Start to enable resources with PERST# asserted from GPIO */
> +

'Start to enable resources with PERST# asserted'

> +	ret = phy_set_mode(stm32_pcie->phy, PHY_MODE_PCIE);
> +	if (ret)
> +		return ret;
> +
> +	ret = phy_init(stm32_pcie->phy);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +				 STM32MP25_PCIECR_TYPE_MASK,
> +				 STM32MP25_PCIECR_RC);
> +	if (ret)
> +		goto err_phy_exit;
> +
> +	stm32_pcie_deassert_perst(stm32_pcie);
> +
> +	if (stm32_pcie->wake_gpio) {
> +		wake_irq = gpiod_to_irq(stm32_pcie->wake_gpio);
> +		ret = dev_pm_set_dedicated_wake_irq(dev, wake_irq);
> +		if (ret) {
> +			dev_info(dev, "Failed to enable wake# %d\n", ret);
> +			goto err_disable_clk;

err_assert_perst

Reset LGTM!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

