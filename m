Return-Path: <devicetree+bounces-81872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C7791DC55
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 471CEB24F55
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 10:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0014314387C;
	Mon,  1 Jul 2024 10:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpCg38lh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C818514374E;
	Mon,  1 Jul 2024 10:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719829352; cv=none; b=fVaJXhGTLhsLkfPHjiBBHWIoVjxjPFshyBIDVKMM43LhhxSpjNIm1lnp58FLTnUg2WO/9IywwtqlNBqpdYIx7NjqocpgekMjCOYn16ZwCRjuSQN5Zha2xK0h9GKPFj7P5bdYBrWTJ2MGAujo+44D61/dhlXdV3I0CSHAGemE/Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719829352; c=relaxed/simple;
	bh=fc6Ms4PWJs0kF5edzOO8m2NGcaggFfcjjc+qkc/e6tY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TBn6YuK79ln2cvyartZfpPpaoT7gVrTQi4le9pV1JALBbMl7IufjjnKe/blDO0LZDTB4dRApoKBOuEwjNcjLtgbrAfKJ58z12F+bAVN12YlD04XsFzgD20bYEWTAenLBFLp9hEF9pP1pZyo06dVfBOmpHunEvU3QdXqJDnTS98g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpCg38lh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6FD7C32786;
	Mon,  1 Jul 2024 10:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719829352;
	bh=fc6Ms4PWJs0kF5edzOO8m2NGcaggFfcjjc+qkc/e6tY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NpCg38lhPe4EpzDlbZnCneq7u7EfRsnKD4t48JqZ2lQiwjtUnvgxn9GYVJTzkSjd1
	 2PM2YOAgX47Kxj9DpzRmPAcIl93AjvT0TeFUsskWVp48Rm+g2QXzU58PK3Kj/zyQSx
	 1XQxrmxqEBr/6RYzKSMIkzgFUezN5O9oNhzcYPDY3wJgsMvl1uXv4XF6QkvJ1N2VUG
	 u7HOvTHNReObTt1Y1Z4S5Y30EZyl5asGEIrT+BdvLrrWObfVuGTbzUvpNuYixgynR9
	 /F87MynNLGxnWaA/qMIdz+nqGpMXHiFWd6Urx6ZB/6qUvmbwuzH1VsWSRxkGcHl3ZH
	 r5+CtgfriPuqw==
From: Conor Dooley <conor@kernel.org>
To: linux-pci@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/2] PCI: microchip: rework reg region handing to support using either instance 1 or 2
Date: Mon,  1 Jul 2024 11:22:12 +0100
Message-ID: <20240701-charger-recognize-fd8a65026a89@spud>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240701-plant-tycoon-db11909036e6@spud>
References: <20240701-plant-tycoon-db11909036e6@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=17019; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=hgjCXRRnWAjIdehL9SEGBBFb1EPfTqxggY43GdLCdKE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlNzSEZejJGgptNN++/lnU+LV600nnOU7Pb2fvUWr7KC HJ/VbjQUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIl8kGBk+LDo3CPT/48cFZJF Q+4wtsjaLe64Le2muf5Uv53UbPey5wy/2c6oPlw0o+P+Asst2x/GqdSUli05+vxw0MP66qzVk0I vMAAA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The PCI host controller on PolarFire SoC has multiple "instances", each
with their own bridge and ctrl address spaces. The original binding has
an "apb" register region, and it is expected to be set to the base
address of the host controllers register space. Defines in the driver
were used to compute the addresses of the bridge and ctrl address ranges
corresponding to instance1. Some customers want to use instance0 however
and that requires changing the defines in the driver, which is clearly
not a portable solution.

The binding has been changed from a single register region to a pair,
corresponding to the bridge and ctrl regions respectively, so modify the
driver to read these regions directly from the devicetree rather than
compute them from the base address of the abp region.

To maintain backwards compatibility with the existing binding, the
driver retains code to handle the "abp" reg and computes the base
address of the bridge and ctrl regions using the defines if it is
present. reg-names has always been a required property, so this is
safe to do.

Acked-by: Daire McNamara <daire.mcnamara@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/pci/controller/pcie-microchip-host.c | 155 +++++++++----------
 1 file changed, 73 insertions(+), 82 deletions(-)

diff --git a/drivers/pci/controller/pcie-microchip-host.c b/drivers/pci/controller/pcie-microchip-host.c
index 137fb8570ba2..c05259224d36 100644
--- a/drivers/pci/controller/pcie-microchip-host.c
+++ b/drivers/pci/controller/pcie-microchip-host.c
@@ -27,9 +27,6 @@
 #define MC_PCIE1_BRIDGE_ADDR			0x00008000u
 #define MC_PCIE1_CTRL_ADDR			0x0000a000u
 
-#define MC_PCIE_BRIDGE_ADDR			(MC_PCIE1_BRIDGE_ADDR)
-#define MC_PCIE_CTRL_ADDR			(MC_PCIE1_CTRL_ADDR)
-
 /* PCIe Bridge Phy Regs */
 #define PCIE_PCI_IRQ_DW0			0xa8
 #define  MSIX_CAP_MASK				BIT(31)
@@ -207,7 +204,6 @@
 	[EVENT_LOCAL_ ## x] = { __stringify(x), s }
 
 #define PCIE_EVENT(x) \
-	.base = MC_PCIE_CTRL_ADDR, \
 	.offset = PCIE_EVENT_INT, \
 	.mask_offset = PCIE_EVENT_INT, \
 	.mask_high = 1, \
@@ -215,7 +211,6 @@
 	.enb_mask = PCIE_EVENT_INT_ENB_MASK
 
 #define SEC_EVENT(x) \
-	.base = MC_PCIE_CTRL_ADDR, \
 	.offset = SEC_ERROR_INT, \
 	.mask_offset = SEC_ERROR_INT_MASK, \
 	.mask = SEC_ERROR_INT_ ## x ## _INT, \
@@ -223,7 +218,6 @@
 	.enb_mask = 0
 
 #define DED_EVENT(x) \
-	.base = MC_PCIE_CTRL_ADDR, \
 	.offset = DED_ERROR_INT, \
 	.mask_offset = DED_ERROR_INT_MASK, \
 	.mask_high = 1, \
@@ -231,7 +225,6 @@
 	.enb_mask = 0
 
 #define LOCAL_EVENT(x) \
-	.base = MC_PCIE_BRIDGE_ADDR, \
 	.offset = ISTATUS_LOCAL, \
 	.mask_offset = IMASK_LOCAL, \
 	.mask_high = 0, \
@@ -265,7 +258,8 @@ struct mc_msi {
 };
 
 struct mc_pcie {
-	void __iomem *axi_base_addr;
+	void __iomem *bridge_base_addr;
+	void __iomem *ctrl_base_addr;
 	struct device *dev;
 	struct irq_domain *intx_domain;
 	struct irq_domain *event_domain;
@@ -344,7 +338,6 @@ static struct event_map local_status_to_event[] = {
 };
 
 static struct {
-	u32 base;
 	u32 offset;
 	u32 mask;
 	u32 shift;
@@ -415,18 +408,17 @@ static void mc_handle_msi(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct device *dev = port->dev;
 	struct mc_msi *msi = &port->msi;
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	unsigned long status;
 	u32 bit;
 	int ret;
 
 	chained_irq_enter(chip, desc);
 
-	status = readl_relaxed(bridge_base_addr + ISTATUS_LOCAL);
+	status = readl_relaxed(port->bridge_base_addr + ISTATUS_LOCAL);
 	if (status & PM_MSI_INT_MSI_MASK) {
-		writel_relaxed(status & PM_MSI_INT_MSI_MASK, bridge_base_addr + ISTATUS_LOCAL);
-		status = readl_relaxed(bridge_base_addr + ISTATUS_MSI);
+		writel_relaxed(status & PM_MSI_INT_MSI_MASK,
+			       port->bridge_base_addr + ISTATUS_LOCAL);
+		status = readl_relaxed(port->bridge_base_addr + ISTATUS_MSI);
 		for_each_set_bit(bit, &status, msi->num_vectors) {
 			ret = generic_handle_domain_irq(msi->dev_domain, bit);
 			if (ret)
@@ -441,11 +433,9 @@ static void mc_handle_msi(struct irq_desc *desc)
 static void mc_msi_bottom_irq_ack(struct irq_data *data)
 {
 	struct mc_pcie *port = irq_data_get_irq_chip_data(data);
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	u32 bitpos = data->hwirq;
 
-	writel_relaxed(BIT(bitpos), bridge_base_addr + ISTATUS_MSI);
+	writel_relaxed(BIT(bitpos), port->bridge_base_addr + ISTATUS_MSI);
 }
 
 static void mc_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
@@ -564,15 +554,13 @@ static void mc_handle_intx(struct irq_desc *desc)
 	struct mc_pcie *port = irq_desc_get_handler_data(desc);
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct device *dev = port->dev;
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	unsigned long status;
 	u32 bit;
 	int ret;
 
 	chained_irq_enter(chip, desc);
 
-	status = readl_relaxed(bridge_base_addr + ISTATUS_LOCAL);
+	status = readl_relaxed(port->bridge_base_addr + ISTATUS_LOCAL);
 	if (status & PM_MSI_INT_INTX_MASK) {
 		status &= PM_MSI_INT_INTX_MASK;
 		status >>= PM_MSI_INT_INTX_SHIFT;
@@ -590,42 +578,36 @@ static void mc_handle_intx(struct irq_desc *desc)
 static void mc_ack_intx_irq(struct irq_data *data)
 {
 	struct mc_pcie *port = irq_data_get_irq_chip_data(data);
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	u32 mask = BIT(data->hwirq + PM_MSI_INT_INTX_SHIFT);
 
-	writel_relaxed(mask, bridge_base_addr + ISTATUS_LOCAL);
+	writel_relaxed(mask, port->bridge_base_addr + ISTATUS_LOCAL);
 }
 
 static void mc_mask_intx_irq(struct irq_data *data)
 {
 	struct mc_pcie *port = irq_data_get_irq_chip_data(data);
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	unsigned long flags;
 	u32 mask = BIT(data->hwirq + PM_MSI_INT_INTX_SHIFT);
 	u32 val;
 
 	raw_spin_lock_irqsave(&port->lock, flags);
-	val = readl_relaxed(bridge_base_addr + IMASK_LOCAL);
+	val = readl_relaxed(port->bridge_base_addr + IMASK_LOCAL);
 	val &= ~mask;
-	writel_relaxed(val, bridge_base_addr + IMASK_LOCAL);
+	writel_relaxed(val, port->bridge_base_addr + IMASK_LOCAL);
 	raw_spin_unlock_irqrestore(&port->lock, flags);
 }
 
 static void mc_unmask_intx_irq(struct irq_data *data)
 {
 	struct mc_pcie *port = irq_data_get_irq_chip_data(data);
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	unsigned long flags;
 	u32 mask = BIT(data->hwirq + PM_MSI_INT_INTX_SHIFT);
 	u32 val;
 
 	raw_spin_lock_irqsave(&port->lock, flags);
-	val = readl_relaxed(bridge_base_addr + IMASK_LOCAL);
+	val = readl_relaxed(port->bridge_base_addr + IMASK_LOCAL);
 	val |= mask;
-	writel_relaxed(val, bridge_base_addr + IMASK_LOCAL);
+	writel_relaxed(val, port->bridge_base_addr + IMASK_LOCAL);
 	raw_spin_unlock_irqrestore(&port->lock, flags);
 }
 
@@ -656,8 +638,7 @@ static inline u32 reg_to_event(u32 reg, struct event_map field)
 
 static u32 pcie_events(struct mc_pcie *port)
 {
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
-	u32 reg = readl_relaxed(ctrl_base_addr + PCIE_EVENT_INT);
+	u32 reg = readl_relaxed(port->ctrl_base_addr + PCIE_EVENT_INT);
 	u32 val = 0;
 	int i;
 
@@ -669,8 +650,7 @@ static u32 pcie_events(struct mc_pcie *port)
 
 static u32 sec_errors(struct mc_pcie *port)
 {
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
-	u32 reg = readl_relaxed(ctrl_base_addr + SEC_ERROR_INT);
+	u32 reg = readl_relaxed(port->ctrl_base_addr + SEC_ERROR_INT);
 	u32 val = 0;
 	int i;
 
@@ -682,8 +662,7 @@ static u32 sec_errors(struct mc_pcie *port)
 
 static u32 ded_errors(struct mc_pcie *port)
 {
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
-	u32 reg = readl_relaxed(ctrl_base_addr + DED_ERROR_INT);
+	u32 reg = readl_relaxed(port->ctrl_base_addr + DED_ERROR_INT);
 	u32 val = 0;
 	int i;
 
@@ -695,8 +674,7 @@ static u32 ded_errors(struct mc_pcie *port)
 
 static u32 local_events(struct mc_pcie *port)
 {
-	void __iomem *bridge_base_addr = port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
-	u32 reg = readl_relaxed(bridge_base_addr + ISTATUS_LOCAL);
+	u32 reg = readl_relaxed(port->bridge_base_addr + ISTATUS_LOCAL);
 	u32 val = 0;
 	int i;
 
@@ -758,8 +736,12 @@ static void mc_ack_event_irq(struct irq_data *data)
 	void __iomem *addr;
 	u32 mask;
 
-	addr = port->axi_base_addr + event_descs[event].base +
-		event_descs[event].offset;
+	if (event_descs[event].offset == ISTATUS_LOCAL)
+		addr = port->bridge_base_addr;
+	else
+		addr = port->ctrl_base_addr;
+
+	addr += event_descs[event].offset;
 	mask = event_descs[event].mask;
 	mask |= event_descs[event].enb_mask;
 
@@ -774,8 +756,12 @@ static void mc_mask_event_irq(struct irq_data *data)
 	u32 mask;
 	u32 val;
 
-	addr = port->axi_base_addr + event_descs[event].base +
-		event_descs[event].mask_offset;
+	if (event_descs[event].offset == ISTATUS_LOCAL)
+		addr = port->bridge_base_addr;
+	else
+		addr = port->ctrl_base_addr;
+
+	addr += event_descs[event].mask_offset;
 	mask = event_descs[event].mask;
 	if (event_descs[event].enb_mask) {
 		mask <<= PCIE_EVENT_INT_ENB_SHIFT;
@@ -804,8 +790,12 @@ static void mc_unmask_event_irq(struct irq_data *data)
 	u32 mask;
 	u32 val;
 
-	addr = port->axi_base_addr + event_descs[event].base +
-		event_descs[event].mask_offset;
+	if (event_descs[event].offset == ISTATUS_LOCAL)
+		addr = port->bridge_base_addr;
+	else
+		addr = port->ctrl_base_addr;
+
+	addr += event_descs[event].mask_offset;
 	mask = event_descs[event].mask;
 
 	if (event_descs[event].enb_mask)
@@ -972,8 +962,6 @@ static void mc_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
 static int mc_pcie_setup_windows(struct platform_device *pdev,
 				 struct mc_pcie *port)
 {
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	struct pci_host_bridge *bridge = platform_get_drvdata(pdev);
 	struct resource_entry *entry;
 	u64 pci_addr;
@@ -982,7 +970,7 @@ static int mc_pcie_setup_windows(struct platform_device *pdev,
 	resource_list_for_each_entry(entry, &bridge->windows) {
 		if (resource_type(entry->res) == IORESOURCE_MEM) {
 			pci_addr = entry->res->start - entry->offset;
-			mc_pcie_setup_window(bridge_base_addr, index,
+			mc_pcie_setup_window(port->bridge_base_addr, index,
 					     entry->res->start, pci_addr,
 					     resource_size(entry->res));
 			index++;
@@ -994,26 +982,20 @@ static int mc_pcie_setup_windows(struct platform_device *pdev,
 
 static inline void mc_clear_secs(struct mc_pcie *port)
 {
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
-
-	writel_relaxed(SEC_ERROR_INT_ALL_RAM_SEC_ERR_INT, ctrl_base_addr +
+	writel_relaxed(SEC_ERROR_INT_ALL_RAM_SEC_ERR_INT, port->ctrl_base_addr +
 		       SEC_ERROR_INT);
-	writel_relaxed(0, ctrl_base_addr + SEC_ERROR_EVENT_CNT);
+	writel_relaxed(0, port->ctrl_base_addr + SEC_ERROR_EVENT_CNT);
 }
 
 static inline void mc_clear_deds(struct mc_pcie *port)
 {
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
-
-	writel_relaxed(DED_ERROR_INT_ALL_RAM_DED_ERR_INT, ctrl_base_addr +
+	writel_relaxed(DED_ERROR_INT_ALL_RAM_DED_ERR_INT, port->ctrl_base_addr +
 		       DED_ERROR_INT);
-	writel_relaxed(0, ctrl_base_addr + DED_ERROR_EVENT_CNT);
+	writel_relaxed(0, port->ctrl_base_addr + DED_ERROR_EVENT_CNT);
 }
 
 static void mc_disable_interrupts(struct mc_pcie *port)
 {
-	void __iomem *bridge_base_addr = port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
-	void __iomem *ctrl_base_addr = port->axi_base_addr + MC_PCIE_CTRL_ADDR;
 	u32 val;
 
 	/* Ensure ECC bypass is enabled */
@@ -1021,22 +1003,22 @@ static void mc_disable_interrupts(struct mc_pcie *port)
 	      ECC_CONTROL_RX_RAM_ECC_BYPASS |
 	      ECC_CONTROL_PCIE2AXI_RAM_ECC_BYPASS |
 	      ECC_CONTROL_AXI2PCIE_RAM_ECC_BYPASS;
-	writel_relaxed(val, ctrl_base_addr + ECC_CONTROL);
+	writel_relaxed(val, port->ctrl_base_addr + ECC_CONTROL);
 
 	/* Disable SEC errors and clear any outstanding */
-	writel_relaxed(SEC_ERROR_INT_ALL_RAM_SEC_ERR_INT, ctrl_base_addr +
+	writel_relaxed(SEC_ERROR_INT_ALL_RAM_SEC_ERR_INT, port->ctrl_base_addr +
 		       SEC_ERROR_INT_MASK);
 	mc_clear_secs(port);
 
 	/* Disable DED errors and clear any outstanding */
-	writel_relaxed(DED_ERROR_INT_ALL_RAM_DED_ERR_INT, ctrl_base_addr +
+	writel_relaxed(DED_ERROR_INT_ALL_RAM_DED_ERR_INT, port->ctrl_base_addr +
 		       DED_ERROR_INT_MASK);
 	mc_clear_deds(port);
 
 	/* Disable local interrupts and clear any outstanding */
-	writel_relaxed(0, bridge_base_addr + IMASK_LOCAL);
-	writel_relaxed(GENMASK(31, 0), bridge_base_addr + ISTATUS_LOCAL);
-	writel_relaxed(GENMASK(31, 0), bridge_base_addr + ISTATUS_MSI);
+	writel_relaxed(0, port->bridge_base_addr + IMASK_LOCAL);
+	writel_relaxed(GENMASK(31, 0), port->bridge_base_addr + ISTATUS_LOCAL);
+	writel_relaxed(GENMASK(31, 0), port->bridge_base_addr + ISTATUS_MSI);
 
 	/* Disable PCIe events and clear any outstanding */
 	val = PCIE_EVENT_INT_L2_EXIT_INT |
@@ -1045,11 +1027,11 @@ static void mc_disable_interrupts(struct mc_pcie *port)
 	      PCIE_EVENT_INT_L2_EXIT_INT_MASK |
 	      PCIE_EVENT_INT_HOTRST_EXIT_INT_MASK |
 	      PCIE_EVENT_INT_DLUP_EXIT_INT_MASK;
-	writel_relaxed(val, ctrl_base_addr + PCIE_EVENT_INT);
+	writel_relaxed(val, port->ctrl_base_addr + PCIE_EVENT_INT);
 
 	/* Disable host interrupts and clear any outstanding */
-	writel_relaxed(0, bridge_base_addr + IMASK_HOST);
-	writel_relaxed(GENMASK(31, 0), bridge_base_addr + ISTATUS_HOST);
+	writel_relaxed(0, port->bridge_base_addr + IMASK_HOST);
+	writel_relaxed(GENMASK(31, 0), port->bridge_base_addr + ISTATUS_HOST);
 }
 
 static int mc_init_interrupts(struct platform_device *pdev, struct mc_pcie *port)
@@ -1112,14 +1094,11 @@ static int mc_platform_init(struct pci_config_window *cfg)
 {
 	struct device *dev = cfg->parent;
 	struct platform_device *pdev = to_platform_device(dev);
-	void __iomem *bridge_base_addr =
-		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	int ret;
 
 	/* Configure address translation table 0 for PCIe config space */
-	mc_pcie_setup_window(bridge_base_addr, 0, cfg->res.start,
-			     cfg->res.start,
-			     resource_size(&cfg->res));
+	mc_pcie_setup_window(port->bridge_base_addr, 0, cfg->res.start,
+			     cfg->res.start, resource_size(&cfg->res));
 
 	/* Need some fixups in config space */
 	mc_pcie_enable_msi(port, cfg->win);
@@ -1140,7 +1119,7 @@ static int mc_platform_init(struct pci_config_window *cfg)
 static int mc_host_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	void __iomem *bridge_base_addr;
+	void __iomem *apb_base_addr;
 	int ret;
 	u32 val;
 
@@ -1150,28 +1129,40 @@ static int mc_host_probe(struct platform_device *pdev)
 
 	port->dev = dev;
 
-	port->axi_base_addr = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(port->axi_base_addr))
-		return PTR_ERR(port->axi_base_addr);
+	port->bridge_base_addr = devm_platform_ioremap_resource_byname(pdev, "bridge");
+	port->ctrl_base_addr = devm_platform_ioremap_resource_byname(pdev, "ctrl");
+	if(!IS_ERR(port->bridge_base_addr) && !IS_ERR(port->ctrl_base_addr))
+		goto addrs_set;
 
+	/*
+	 * The original, incorrect, binding that lumped the control and
+	 * bridge addresses together still needs to be handled by the driver.
+	 */
+	apb_base_addr = devm_platform_ioremap_resource_byname(pdev, "apb");
+	if (IS_ERR(apb_base_addr))
+		return dev_err_probe(dev, PTR_ERR(port->bridge_base_addr),
+				     "both legacy apb register and ctrl/bridge regions missing");
+
+	port->bridge_base_addr = apb_base_addr + MC_PCIE1_BRIDGE_ADDR;
+	port->ctrl_base_addr = apb_base_addr + MC_PCIE1_CTRL_ADDR;
+
+addrs_set:
 	mc_disable_interrupts(port);
 
-	bridge_base_addr = port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
-
 	/* Allow enabling MSI by disabling MSI-X */
-	val = readl(bridge_base_addr + PCIE_PCI_IRQ_DW0);
+	val = readl(port->bridge_base_addr + PCIE_PCI_IRQ_DW0);
 	val &= ~MSIX_CAP_MASK;
-	writel(val, bridge_base_addr + PCIE_PCI_IRQ_DW0);
+	writel(val, port->bridge_base_addr + PCIE_PCI_IRQ_DW0);
 
 	/* Pick num vectors from bitfile programmed onto FPGA fabric */
-	val = readl(bridge_base_addr + PCIE_PCI_IRQ_DW0);
+	val = readl(port->bridge_base_addr + PCIE_PCI_IRQ_DW0);
 	val &= NUM_MSI_MSGS_MASK;
 	val >>= NUM_MSI_MSGS_SHIFT;
 
 	port->msi.num_vectors = 1 << val;
 
 	/* Pick vector address from design */
-	port->msi.vector_phy = readl_relaxed(bridge_base_addr + IMSI_ADDR);
+	port->msi.vector_phy = readl_relaxed(port->bridge_base_addr + IMSI_ADDR);
 
 	ret = mc_pcie_init_clks(dev);
 	if (ret) {
-- 
2.43.0


