Return-Path: <devicetree+bounces-73628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D06759001CA
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 13:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8B831C21952
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 11:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78545187343;
	Fri,  7 Jun 2024 11:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8LApsXl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031F14F11B;
	Fri,  7 Jun 2024 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717758914; cv=none; b=IC3bK+40ohJiJCiBR1WRbU81x7alSTJycAunLwJyLEgKCBFGtIqnFnNJXzckD5PeNb826Sh55tDHK//rfFKJ7pWgtTzofin6vTR0OQDl3+5terA7rMCtDXe5zxwpnz7LOOVJmq8RfOJCMAKX2ORfhFxB+aRdkW4rF50bNprZ6Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717758914; c=relaxed/simple;
	bh=9jDJlEfoL0ZhQwes4OQ+ED0VPqS/88G8V7CnmKAjyRk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cf7qX0Px5zRehlYqEz6rK5WRjlJMy372erQRYYPDtrssrBzdMFQDmR+NZ0uOG2VvD6BazjJ7QLS3n/W/H4yPbte8CeZckrMXBSgI1mEr7Oo6BNM6t6PJyxj38WWiYtR0kYxsC2SIgAFpjBx/mOlqw+glvct8CnP5OYgmxJ9GkW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8LApsXl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE5DC2BBFC;
	Fri,  7 Jun 2024 11:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758913;
	bh=9jDJlEfoL0ZhQwes4OQ+ED0VPqS/88G8V7CnmKAjyRk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Q8LApsXllRLb6gOJOxiiaHt8QswALM6nFoM6tIxciyviStSR7YMgDvsbbA+frhlUZ
	 FTQV0Rkcb328WZf1NAWqZ/7Pmv9D38U4kHB3MEzO81XcvKxnyYpZD92BXn6DJXvmNo
	 +nd76s1/B6jSWna0rdRN2410b7ZIcNUXrlTmpPDCBY/e4+fk844PaDl/n+xZnN3Jky
	 k6FqLQq77olVwpZ1kr0e+lHgQF+Rhz/pnpkvvXmbwcoHSWx1s4VcASE2L+tlQ0lWQK
	 zIHLWLzZWHB9hT0o5x0NiajItIGp2/OPTCJn7ee+RflIVXaj0SFkiWrriaNuxM+MmY
	 Vs6nLG7ZkKB/A==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:30 +0200
Subject: [PATCH v5 10/13] PCI: dw-rockchip: Add endpoint mode support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-10-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12173; i=cassel@kernel.org;
 h=from:subject:message-id; bh=9jDJlEfoL0ZhQwes4OQ+ED0VPqS/88G8V7CnmKAjyRk=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk8KNXBXYnrSrJXl8O2LQK/CpHN1ew7n6G66YmcV5
 bXaQv1LRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACYi8IKRoTfk5J71alt16q4m
 +jrszJkmdGqF4tK/n9tX5txoLNrydzXD//JTmSzrg06vkWI+FXxqleA2rVvPnefqv93MbTzpm8k
 tHiYA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA

The PCIe controller in rk3568 and rk3588 can operate in endpoint mode.
This endpoint mode support heavily leverages the existing code in
pcie-designware-ep.c.

Add support for endpoint mode to the existing pcie-dw-rockchip glue
driver.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/Kconfig            |  21 ++-
 drivers/pci/controller/dwc/Makefile           |   2 +-
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 209 ++++++++++++++++++++++++++
 3 files changed, 227 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index 8afacc90c63b..9c4fb8ba7573 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -311,16 +311,29 @@ config PCIE_RCAR_GEN4_EP
 	  SoCs. To compile this driver as a module, choose M here: the module
 	  will be called pcie-rcar-gen4.ko. This uses the DesignWare core.
 
+config PCIE_ROCKCHIP_DW
+	bool
+
 config PCIE_ROCKCHIP_DW_HOST
-	bool "Rockchip DesignWare PCIe controller"
-	select PCIE_DW
-	select PCIE_DW_HOST
+	bool "Rockchip DesignWare PCIe controller (host mode)"
 	depends on PCI_MSI
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on OF
+	select PCIE_DW_HOST
+	select PCIE_ROCKCHIP_DW
+	help
+	  Enables support for the DesignWare PCIe controller in the
+	  Rockchip SoC (except RK3399) to work in host mode.
+
+config PCIE_ROCKCHIP_DW_EP
+	bool "Rockchip DesignWare PCIe controller (endpoint mode)"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on OF
+	select PCIE_DW_EP
+	select PCIE_ROCKCHIP_DW
 	help
 	  Enables support for the DesignWare PCIe controller in the
-	  Rockchip SoC except RK3399.
+	  Rockchip SoC (except RK3399) to work in endpoint mode.
 
 config PCI_EXYNOS
 	tristate "Samsung Exynos PCIe controller"
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index bac103faa523..ec215b3d6191 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -16,7 +16,7 @@ obj-$(CONFIG_PCIE_QCOM) += pcie-qcom.o
 obj-$(CONFIG_PCIE_QCOM_EP) += pcie-qcom-ep.o
 obj-$(CONFIG_PCIE_ARMADA_8K) += pcie-armada8k.o
 obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
-obj-$(CONFIG_PCIE_ROCKCHIP_DW_HOST) += pcie-dw-rockchip.o
+obj-$(CONFIG_PCIE_ROCKCHIP_DW) += pcie-dw-rockchip.o
 obj-$(CONFIG_PCIE_INTEL_GW) += pcie-intel-gw.o
 obj-$(CONFIG_PCIE_KEEMBAY) += pcie-keembay.o
 obj-$(CONFIG_PCIE_KIRIN) += pcie-kirin.o
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index bd35620b1a96..0a0fdfc66b91 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -34,10 +34,16 @@
 #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
 
 #define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
 #define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
+#define PCIE_CLIENT_INTR_STATUS_MISC	0x10
+#define PCIE_CLIENT_INTR_MASK_MISC	0x24
 #define PCIE_SMLH_LINKUP		BIT(16)
 #define PCIE_RDLH_LINKUP		BIT(17)
 #define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
+#define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
+#define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
 #define PCIE_L0S_ENTRY			0x11
 #define PCIE_CLIENT_GENERAL_CONTROL	0x0
 #define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
@@ -63,6 +69,7 @@ struct rockchip_pcie {
 
 struct rockchip_pcie_of_data {
 	enum dw_pcie_device_mode mode;
+	const struct pci_epc_features *epc_features;
 };
 
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
@@ -159,6 +166,12 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 				 PCIE_CLIENT_GENERAL_CONTROL);
 }
 
+static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DISABLE_LTSSM,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+}
+
 static int rockchip_pcie_link_up(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
@@ -195,6 +208,13 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	return 0;
 }
 
+static void rockchip_pcie_stop_link(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	rockchip_pcie_disable_ltssm(rockchip);
+}
+
 static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -220,6 +240,82 @@ static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
 	.init = rockchip_pcie_host_init,
 };
 
+static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	enum pci_barno bar;
+
+	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
+		dw_pcie_ep_reset_bar(pci, bar);
+};
+
+static int rockchip_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
+				   unsigned int type, u16 interrupt_num)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+
+	switch (type) {
+	case PCI_IRQ_INTX:
+		return dw_pcie_ep_raise_intx_irq(ep, func_no);
+	case PCI_IRQ_MSI:
+		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
+	case PCI_IRQ_MSIX:
+		return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
+	default:
+		dev_err(pci->dev, "UNKNOWN IRQ type\n");
+	}
+
+	return 0;
+}
+
+static const struct pci_epc_features rockchip_pcie_epc_features_rk3568 = {
+	.linkup_notifier = true,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = SZ_64K,
+	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_4] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+};
+
+/*
+ * BAR4 on rk3588 exposes the ATU Port Logic Structure to the host regardless of
+ * iATU settings for BAR4. This means that BAR4 cannot be used by an EPF driver,
+ * so mark it as RESERVED. (rockchip_pcie_ep_init() will disable all BARs by
+ * default.) If the host could write to BAR4, the iATU settings (for all other
+ * BARs) would be overwritten, resulting in (all other BARs) no longer working.
+ */
+static const struct pci_epc_features rockchip_pcie_epc_features_rk3588 = {
+	.linkup_notifier = true,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = SZ_64K,
+	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_4] = { .type = BAR_RESERVED, },
+	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+};
+
+static const struct pci_epc_features *
+rockchip_pcie_get_features(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	return rockchip->data->epc_features;
+}
+
+static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
+	.init = rockchip_pcie_ep_init,
+	.raise_irq = rockchip_pcie_raise_irq,
+	.get_features = rockchip_pcie_get_features,
+};
+
 static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
 {
 	struct device *dev = rockchip->pci.dev;
@@ -290,13 +386,46 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = rockchip_pcie_link_up,
 	.start_link = rockchip_pcie_start_link,
+	.stop_link = rockchip_pcie_stop_link,
 };
 
+static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
+{
+	struct rockchip_pcie *rockchip = arg;
+	struct dw_pcie *pci = &rockchip->pci;
+	struct device *dev = pci->dev;
+	u32 reg, val;
+
+	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
+	rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
+
+	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
+	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
+
+	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
+		dev_dbg(dev, "hot reset or link-down reset\n");
+		dw_pcie_ep_linkdown(&pci->ep);
+	}
+
+	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
+		val = rockchip_pcie_get_ltssm(rockchip);
+		if ((val & PCIE_LINKUP) == PCIE_LINKUP) {
+			dev_dbg(dev, "link up\n");
+			dw_pcie_ep_linkup(&pci->ep);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
 static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
 {
 	struct dw_pcie_rp *pp;
 	u32 val;
 
+	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
+		return -ENODEV;
+
 	/* LTSSM enable control mode */
 	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
@@ -310,6 +439,63 @@ static int rockchip_pcie_configure_rc(struct rockchip_pcie *rockchip)
 	return dw_pcie_host_init(pp);
 }
 
+static int rockchip_pcie_configure_ep(struct platform_device *pdev,
+				      struct rockchip_pcie *rockchip)
+{
+	struct device *dev = &pdev->dev;
+	int irq, ret;
+	u32 val;
+
+	if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_EP))
+		return -ENODEV;
+
+	irq = platform_get_irq_byname(pdev, "sys");
+	if (irq < 0) {
+		dev_err(dev, "missing sys IRQ resource\n");
+		return irq;
+	}
+
+	ret = devm_request_threaded_irq(dev, irq, NULL,
+					rockchip_pcie_ep_sys_irq_thread,
+					IRQF_ONESHOT, "pcie-sys", rockchip);
+	if (ret) {
+		dev_err(dev, "failed to request PCIe sys IRQ\n");
+		return ret;
+	}
+
+	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_EP_MODE,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+
+	rockchip->pci.ep.ops = &rockchip_pcie_ep_ops;
+	rockchip->pci.ep.page_size = SZ_64K;
+
+	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+
+	ret = dw_pcie_ep_init(&rockchip->pci.ep);
+	if (ret) {
+		dev_err(dev, "failed to initialize endpoint\n");
+		return ret;
+	}
+
+	ret = dw_pcie_ep_init_registers(&rockchip->pci.ep);
+	if (ret) {
+		dev_err(dev, "failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(&rockchip->pci.ep);
+		return ret;
+	}
+
+	dw_pcie_ep_init_notify(&rockchip->pci.ep);
+
+	/* unmask DLL up/down indicator and hot reset/link-down reset */
+	rockchip_pcie_writel_apb(rockchip, 0x60000, PCIE_CLIENT_INTR_MASK_MISC);
+
+	return ret;
+}
+
 static int rockchip_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -371,6 +557,11 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		if (ret)
 			goto deinit_clk;
 		break;
+	case DW_PCIE_EP_TYPE:
+		ret = rockchip_pcie_configure_ep(pdev, rockchip);
+		if (ret)
+			goto deinit_clk;
+		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", data->mode);
 		ret = -EINVAL;
@@ -394,11 +585,29 @@ static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };
 
+static const struct rockchip_pcie_of_data rockchip_pcie_ep_of_data_rk3568 = {
+	.mode = DW_PCIE_EP_TYPE,
+	.epc_features = &rockchip_pcie_epc_features_rk3568,
+};
+
+static const struct rockchip_pcie_of_data rockchip_pcie_ep_of_data_rk3588 = {
+	.mode = DW_PCIE_EP_TYPE,
+	.epc_features = &rockchip_pcie_epc_features_rk3588,
+};
+
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{
 		.compatible = "rockchip,rk3568-pcie",
 		.data = &rockchip_pcie_rc_of_data_rk3568,
 	},
+	{
+		.compatible = "rockchip,rk3568-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data_rk3568,
+	},
+	{
+		.compatible = "rockchip,rk3588-pcie-ep",
+		.data = &rockchip_pcie_ep_of_data_rk3588,
+	},
 	{},
 };
 

-- 
2.45.2


