Return-Path: <devicetree+bounces-3105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2195D7AD5C2
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:23:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C575C2820A3
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FE115E80;
	Mon, 25 Sep 2023 10:23:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC8610A3D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:23:28 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C7DFA3;
	Mon, 25 Sep 2023 03:23:25 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-503f39d3236so9639480e87.0;
        Mon, 25 Sep 2023 03:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695637404; x=1696242204; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MqmhHFuPn9TXDgBGsBKENILi5/Q3cVkH5awadFf6wGc=;
        b=XaV/j+gzH/jrlKN8K6ib3RuxP3xyMAcZlvI7SQM9ksbH2e3M04KTEnBi3xyJzxKIqc
         ycRjyiIJaGtbyKofzzq8JGKAtnXBTgz9EXd6Xi4tNEcY3CEVt7Hxg91XviUE1BtUS3yU
         VbPHT5LCWDz4XFicCjAmoY/hXx8aTioCOGt3GaHHTaUHc3cxqFArCKUSqwuD7N7bujP7
         P+My5h7HOBMdo9UR7/WWYJYVeSpTWD/fvpMgMMIkWLGsseyUao0ldyiTLYcKWtu2xfZh
         zXBJk8z8M/6WSb7RksF1J86ygI88QityyEUOeM9IP/+SFGJmOl+uJx3bVMq4CqFmVsTo
         KkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695637404; x=1696242204;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MqmhHFuPn9TXDgBGsBKENILi5/Q3cVkH5awadFf6wGc=;
        b=G72Sn/Yv4cid52LYhXxfsl4ZcfyFJXrAUrm+XJeRVNDg1J1qnxsYgZZFzwLBqVSBa+
         YzpK6iH8GQh3YlMarJdieUvrkoPdtyyWjFo6EAX9vjfOLBdOgcBp/tZ2Ey7nuw/3bWfY
         du3CzA81VXxaYMwbKyvi7B74sx8cGhxgEceAc4zQKIuFG4vgmC2KH5b/fvqCYFFWT2R5
         RzKMUXYjcntqy3izybcVKgPokf8mM1U0ADvUB6iNxsKTVxOENCF7ctIQdasPsL6sW2gr
         5LoB9u6imk7Jh5WZgNa/QXddRysfuFscBnD4pi2nKgggOXLrYfNzOQj5edBTHnnshQNb
         xAKg==
X-Gm-Message-State: AOJu0YzA7ZMCU2IhHqLRlVwx54lyKRI6AUFyMwStEZHuGeBz16T74lTf
	iN2kgiBg8OOFHecgRSpZGKk=
X-Google-Smtp-Source: AGHT+IEEgbQpiygPuatZuXWhS8892JUb1FxcKRMDfjeRtVRJ71ZirrCbq4/1AbHFhpkGO/oao3h+qw==
X-Received: by 2002:a05:6512:3297:b0:503:3787:f75a with SMTP id p23-20020a056512329700b005033787f75amr4392890lfe.62.1695637402340;
        Mon, 25 Sep 2023 03:23:22 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id z6-20020ac25de6000000b00503555aa934sm1776008lfq.11.2023.09.25.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 03:23:21 -0700 (PDT)
Date: Mon, 25 Sep 2023 13:23:19 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, mani@kernel.org, 
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v22 13/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe
 controller support
Message-ID: <hosrzwdlkedp6sddia465a27b5mdncjxmhof5jpa2b5senobhf@5c5ldtmjbzee>
References: <20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com>
 <20230925072130.3901087-14-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230925072130.3901087-14-yoshihiro.shimoda.uh@renesas.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 04:21:27PM +0900, Yoshihiro Shimoda wrote:
> Add R-Car Gen4 PCIe controller support for host mode.
> 
> This controller is based on Synopsys DesignWare PCIe. However, this
> particular controller has a number of vendor-specific registers, and as
> such, requires initialization code like mode setting and retraining and
> so on.
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-17-yoshihiro.shimoda.uh@renesas.com
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> ---
>  drivers/pci/controller/dwc/Kconfig          |  14 +
>  drivers/pci/controller/dwc/Makefile         |   1 +
>  drivers/pci/controller/dwc/pcie-rcar-gen4.c | 381 ++++++++++++++++++++
>  3 files changed, 396 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-rcar-gen4.c
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index ab96da43e0c2..bc69fcab2e2a 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -415,4 +415,18 @@ config PCIE_VISCONTI_HOST
>  	  Say Y here if you want PCIe controller support on Toshiba Visconti SoC.
>  	  This driver supports TMPV7708 SoC.
>  
> +config PCIE_RCAR_GEN4
> +	tristate
> +
> +config PCIE_RCAR_GEN4_HOST
> +	tristate "Renesas R-Car Gen4 PCIe controller (host mode)"
> +	depends on ARCH_RENESAS || COMPILE_TEST
> +	depends on PCI_MSI
> +	select PCIE_DW_HOST
> +	select PCIE_RCAR_GEN4
> +	help
> +	  Say Y here if you want PCIe controller (host mode) on R-Car Gen4 SoCs.
> +	  To compile this driver as a module, choose M here: the module will be
> +	  called pcie-rcar-gen4.ko. This uses the DesignWare core.
> +
>  endmenu
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index bf5c311875a1..bac103faa523 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -26,6 +26,7 @@ obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
>  obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
>  obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
>  obj-$(CONFIG_PCIE_VISCONTI_HOST) += pcie-visconti.o
> +obj-$(CONFIG_PCIE_RCAR_GEN4) += pcie-rcar-gen4.o
>  
>  # The following drivers are for devices that use the generic ACPI
>  # pci_root.c driver but don't support standard ECAM config access.
> diff --git a/drivers/pci/controller/dwc/pcie-rcar-gen4.c b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
> new file mode 100644
> index 000000000000..f6b3c3ef187c
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
> @@ -0,0 +1,381 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * PCIe controller driver for Renesas R-Car Gen4 Series SoCs
> + * Copyright (C) 2022-2023 Renesas Electronics Corporation
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/pci.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +
> +#include "../../pci.h"
> +#include "pcie-designware.h"
> +
> +/* Renesas-specific */
> +/* PCIe Mode Setting Register 0 */
> +#define PCIEMSR0		0x0000
> +#define BIFUR_MOD_SET_ON	BIT(0)
> +#define DEVICE_TYPE_EP		0
> +#define DEVICE_TYPE_RC		BIT(4)
> +
> +/* PCIe Interrupt Status 0 */
> +#define PCIEINTSTS0		0x0084
> +
> +/* PCIe Interrupt Status 0 Enable */
> +#define PCIEINTSTS0EN		0x0310
> +#define MSI_CTRL_INT		BIT(26)
> +#define SMLH_LINK_UP		BIT(7)
> +#define RDLH_LINK_UP		BIT(6)
> +
> +/* PCIe DMA Interrupt Status Enable */
> +#define PCIEDMAINTSTSEN		0x0314
> +#define PCIEDMAINTSTSEN_INIT	GENMASK(15, 0)
> +
> +/* PCIe Reset Control Register 1 */
> +#define PCIERSTCTRL1		0x0014
> +#define APP_HOLD_PHY_RST	BIT(16)
> +#define APP_LTSSM_ENABLE	BIT(0)
> +
> +#define RCAR_NUM_SPEED_CHANGE_RETRIES	10
> +#define RCAR_MAX_LINK_SPEED		4
> +
> +struct rcar_gen4_pcie {
> +	struct dw_pcie dw;
> +	void __iomem *base;
> +	struct platform_device *pdev;
> +	enum dw_pcie_device_mode mode;
> +};
> +#define to_rcar_gen4_pcie(_dw)	container_of(_dw, struct rcar_gen4_pcie, dw)
> +
> +static void rcar_gen4_pcie_ltssm_enable(struct rcar_gen4_pcie *rcar,
> +					bool enable)
> +{
> +	u32 val;
> +
> +	val = readl(rcar->base + PCIERSTCTRL1);
> +	if (enable) {
> +		val |= APP_LTSSM_ENABLE;
> +		val &= ~APP_HOLD_PHY_RST;
> +	} else {
> +		/*
> +		 * Since the datasheet of R-Car doesn't mention how to assert
> +		 * the APP_HOLD_PHY_RST, don't assert it again. Otherwise,
> +		 * hang-up issue happened in the dw_edma_core_off() when
> +		 * the controller didn't detect a PCI device.
> +		 */
> +		val &= ~APP_LTSSM_ENABLE;
> +	}
> +	writel(val, rcar->base + PCIERSTCTRL1);
> +}
> +
> +static int rcar_gen4_pcie_link_up(struct dw_pcie *dw)
> +{
> +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> +	u32 val, mask;
> +
> +	val = readl(rcar->base + PCIEINTSTS0);
> +	mask = RDLH_LINK_UP | SMLH_LINK_UP;
> +
> +	return (val & mask) == mask;
> +}
> +
> +/*
> + * Manually initiate the speed change. Return true if the change succeeded,
> + * false if the change didn't finish within certain periods.
> + */
> +static int rcar_gen4_pcie_speed_change(struct dw_pcie *dw)
> +{
> +	u32 val;
> +	int i;
> +
> +	val = dw_pcie_readl_dbi(dw, PCIE_LINK_WIDTH_SPEED_CONTROL);
> +	val &= ~PORT_LOGIC_SPEED_CHANGE;
> +	dw_pcie_writel_dbi(dw, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
> +
> +	val = dw_pcie_readl_dbi(dw, PCIE_LINK_WIDTH_SPEED_CONTROL);
> +	val |= PORT_LOGIC_SPEED_CHANGE;
> +	dw_pcie_writel_dbi(dw, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
> +
> +	for (i = 0; i < RCAR_NUM_SPEED_CHANGE_RETRIES; i++) {
> +		val = dw_pcie_readl_dbi(dw, PCIE_LINK_WIDTH_SPEED_CONTROL);
> +		if (!(val & PORT_LOGIC_SPEED_CHANGE))
> +			return 0;
> +		usleep_range(10000, 11000);
> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +/*
> + * Enable LTSSM of this controller and manually initiate the speed change.
> + * Always return 0.
> + */
> +static int rcar_gen4_pcie_start_link(struct dw_pcie *dw)
> +{
> +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> +	int i, changes;
> +
> +	rcar_gen4_pcie_ltssm_enable(rcar, true);
> +
> +	/*
> +	 * Require direct speed change with retrying here if the link_gen is
> +	 * PCIe Gen2 or higher.
> +	 */
> +	changes = min_not_zero(dw->link_gen, RCAR_MAX_LINK_SPEED) - 1;
> +
> +	/*
> +	 * Since dw_pcie_setup_rc() sets it once, PCIe Gen2 will be trained.
> +	 * So, this needs remaining times for up to PCIe Gen4 if RC mode.
> +	 */
> +	if (changes && rcar->mode == DW_PCIE_RC_TYPE)
> +		changes--;
> +
> +	for (i = 0; i < changes; i++) {
> +		/* No error because possible disconnected here if EP mode */
> +		if (rcar_gen4_pcie_speed_change(dw))
> +			break;
> +	}
> +
> +	return 0;
> +}
> +
> +static void rcar_gen4_pcie_stop_link(struct dw_pcie *dw)
> +{
> +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> +
> +	rcar_gen4_pcie_ltssm_enable(rcar, false);
> +}
> +
> +static int rcar_gen4_pcie_common_init(struct rcar_gen4_pcie *rcar)
> +{
> +	struct dw_pcie *dw = &rcar->dw;
> +	u32 val;
> +	int ret;
> +
> +	ret = clk_bulk_prepare_enable(DW_PCIE_NUM_CORE_CLKS, dw->core_clks);
> +	if (ret) {
> +		dev_err(dw->dev, "Failed to enable ref clocks\n");
> +		return ret;
> +	}
> +
> +	if (!reset_control_status(dw->core_rsts[DW_PCIE_PWR_RST].rstc))
> +		reset_control_assert(dw->core_rsts[DW_PCIE_PWR_RST].rstc);
> +
> +	val = readl(rcar->base + PCIEMSR0);
> +	if (rcar->mode == DW_PCIE_RC_TYPE) {
> +		val |= DEVICE_TYPE_RC;

> +	} else if (rcar->mode == DW_PCIE_EP_TYPE) {
> +		val |= DEVICE_TYPE_EP;

Ideally this should have been moved to the patch
[PATCH v22 14/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe Endpoint support

-Serge(y)

> +	} else {
> +		ret = -EINVAL;
> +		goto err_unprepare;
> +	}
> +
> +	if (dw->num_lanes < 4)
> +		val |= BIFUR_MOD_SET_ON;
> +
> +	writel(val, rcar->base + PCIEMSR0);
> +
> +	ret = reset_control_deassert(dw->core_rsts[DW_PCIE_PWR_RST].rstc);
> +	if (ret)
> +		goto err_unprepare;
> +
> +	return 0;
> +
> +err_unprepare:
> +	clk_bulk_disable_unprepare(DW_PCIE_NUM_CORE_CLKS, dw->core_clks);
> +
> +	return ret;
> +}
> +
> +static void rcar_gen4_pcie_common_deinit(struct rcar_gen4_pcie *rcar)
> +{
> +	struct dw_pcie *dw = &rcar->dw;
> +
> +	reset_control_assert(dw->core_rsts[DW_PCIE_PWR_RST].rstc);
> +	clk_bulk_disable_unprepare(DW_PCIE_NUM_CORE_CLKS, dw->core_clks);
> +}
> +
> +static int rcar_gen4_pcie_prepare(struct rcar_gen4_pcie *rcar)
> +{
> +	struct device *dev = rcar->dw.dev;
> +	int err;
> +
> +	pm_runtime_enable(dev);
> +	err = pm_runtime_resume_and_get(dev);
> +	if (err < 0) {
> +		dev_err(dev, "Failed to resume/get Runtime PM\n");
> +		pm_runtime_disable(dev);
> +	}
> +
> +	return err;
> +}
> +
> +static void rcar_gen4_pcie_unprepare(struct rcar_gen4_pcie *rcar)
> +{
> +	struct device *dev = rcar->dw.dev;
> +
> +	pm_runtime_put(dev);
> +	pm_runtime_disable(dev);
> +}
> +
> +static int rcar_gen4_pcie_get_resources(struct rcar_gen4_pcie *rcar)
> +{
> +	/* Renesas-specific registers */
> +	rcar->base = devm_platform_ioremap_resource_byname(rcar->pdev, "app");
> +
> +	return PTR_ERR_OR_ZERO(rcar->base);
> +}
> +
> +static const struct dw_pcie_ops dw_pcie_ops = {
> +	.start_link = rcar_gen4_pcie_start_link,
> +	.stop_link = rcar_gen4_pcie_stop_link,
> +	.link_up = rcar_gen4_pcie_link_up,
> +};
> +
> +static struct
> +rcar_gen4_pcie *rcar_gen4_pcie_devm_alloc(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rcar_gen4_pcie *rcar;
> +
> +	rcar = devm_kzalloc(dev, sizeof(*rcar), GFP_KERNEL);
> +	if (!rcar)
> +		return ERR_PTR(-ENOMEM);
> +
> +	rcar->dw.ops = &dw_pcie_ops;
> +	rcar->dw.dev = dev;
> +	rcar->pdev = pdev;
> +	dw_pcie_cap_set(&rcar->dw, EDMA_UNROLL);
> +	dw_pcie_cap_set(&rcar->dw, REQ_RES);
> +	platform_set_drvdata(pdev, rcar);
> +
> +	return rcar;
> +}
> +
> +/* Host mode */
> +static int rcar_gen4_pcie_host_init(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *dw = to_dw_pcie_from_pp(pp);
> +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> +	int ret;
> +	u32 val;
> +
> +	gpiod_set_value_cansleep(dw->pe_rst, 1);
> +
> +	ret = rcar_gen4_pcie_common_init(rcar);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> +	 * Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> +	 * assignment during device enumeration.
> +	 */
> +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_0, 0x0);
> +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_1, 0x0);
> +
> +	/* Enable MSI interrupt signal */
> +	val = readl(rcar->base + PCIEINTSTS0EN);
> +	val |= MSI_CTRL_INT;
> +	writel(val, rcar->base + PCIEINTSTS0EN);
> +
> +	msleep(PCIE_T_PVPERL_MS);	/* pe_rst requires 100msec delay */
> +
> +	gpiod_set_value_cansleep(dw->pe_rst, 0);
> +
> +	return 0;
> +}
> +
> +static void rcar_gen4_pcie_host_deinit(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *dw = to_dw_pcie_from_pp(pp);
> +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> +
> +	gpiod_set_value_cansleep(dw->pe_rst, 1);
> +	rcar_gen4_pcie_common_deinit(rcar);
> +}
> +
> +static const struct dw_pcie_host_ops rcar_gen4_pcie_host_ops = {
> +	.host_init = rcar_gen4_pcie_host_init,
> +	.host_deinit = rcar_gen4_pcie_host_deinit,
> +};
> +
> +static int rcar_gen4_add_dw_pcie_rp(struct rcar_gen4_pcie *rcar)
> +{
> +	struct dw_pcie_rp *pp = &rcar->dw.pp;
> +
> +	pp->num_vectors = MAX_MSI_IRQS;
> +	pp->ops = &rcar_gen4_pcie_host_ops;
> +	rcar->mode = DW_PCIE_RC_TYPE;
> +
> +	return dw_pcie_host_init(pp);
> +}
> +
> +static void rcar_gen4_remove_dw_pcie_rp(struct rcar_gen4_pcie *rcar)
> +{
> +	dw_pcie_host_deinit(&rcar->dw.pp);
> +}
> +
> +static int rcar_gen4_pcie_probe(struct platform_device *pdev)
> +{
> +	struct rcar_gen4_pcie *rcar;
> +	int err;
> +
> +	rcar = rcar_gen4_pcie_devm_alloc(pdev);
> +	if (IS_ERR(rcar))
> +		return PTR_ERR(rcar);
> +
> +	err = rcar_gen4_pcie_get_resources(rcar);
> +	if (err)
> +		return err;
> +
> +	err = rcar_gen4_pcie_prepare(rcar);
> +	if (err)
> +		return err;
> +
> +	err = rcar_gen4_add_dw_pcie_rp(rcar);
> +	if (err)
> +		goto err_unprepare;
> +
> +	return 0;
> +
> +err_unprepare:
> +	rcar_gen4_pcie_unprepare(rcar);
> +
> +	return err;
> +}
> +
> +static void rcar_gen4_pcie_remove(struct platform_device *pdev)
> +{
> +	struct rcar_gen4_pcie *rcar = platform_get_drvdata(pdev);
> +
> +	rcar_gen4_remove_dw_pcie_rp(rcar);
> +	rcar_gen4_pcie_unprepare(rcar);
> +}
> +
> +static const struct of_device_id rcar_gen4_pcie_of_match[] = {
> +	{ .compatible = "renesas,rcar-gen4-pcie", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, rcar_gen4_pcie_of_match);
> +
> +static struct platform_driver rcar_gen4_pcie_driver = {
> +	.driver = {
> +		.name = "pcie-rcar-gen4",
> +		.of_match_table = rcar_gen4_pcie_of_match,
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> +	},
> +	.probe = rcar_gen4_pcie_probe,
> +	.remove_new = rcar_gen4_pcie_remove,
> +};
> +module_platform_driver(rcar_gen4_pcie_driver);
> +
> +MODULE_DESCRIPTION("Renesas R-Car Gen4 PCIe controller driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 

