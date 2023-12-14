Return-Path: <devicetree+bounces-25169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A168D812945
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9071C1C20AE5
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65743CA5F;
	Thu, 14 Dec 2023 07:29:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5BD194;
	Wed, 13 Dec 2023 23:29:38 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id A214B24E304;
	Thu, 14 Dec 2023 15:29:37 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Dec
 2023 15:29:37 +0800
Received: from ubuntu.localdomain (113.72.145.168) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Dec
 2023 15:29:35 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Conor Dooley <conor@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?=
	<kw@linux.com>, Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pci@vger.kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>, Minda Chen
	<minda.chen@starfivetech.com>
Subject: [PATCH v13 15/21] PCI: microchip: Add event irqchip field to host port and add PLDA irqchip
Date: Thu, 14 Dec 2023 15:28:33 +0800
Message-ID: <20231214072839.2367-16-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231214072839.2367-1-minda.chen@starfivetech.com>
References: <20231214072839.2367-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

PolarFire PCIE event IRQs includes PLDA local interrupts and PolarFire
their own IRQs. PolarFire PCIe event irq_chip ops using an event_desc to
unify different IRQ register addresses. On PLDA sides, PLDA irqchip codes
only require to set PLDA local interrupt register. So the PLDA irqchip ops
codes can not be extracted from PolarFire codes.

To support PLDA its own event IRQ process, implements PLDA irqchip ops and
add event irqchip field to struct pcie_plda_rp.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../pci/controller/plda/pcie-microchip-host.c | 65 ++++++++++++++++++-
 drivers/pci/controller/plda/pcie-plda.h       |  3 +
 2 files changed, 67 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index fd0d92c3d03f..ff40c1622173 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -771,6 +771,63 @@ static struct irq_chip mc_event_irq_chip = {
 	.irq_unmask = mc_unmask_event_irq,
 };
 
+static u32 plda_hwirq_to_mask(int hwirq)
+{
+	u32 mask;
+
+	if (hwirq < EVENT_PM_MSI_INT_INTX)
+		mask = BIT(hwirq + A_ATR_EVT_POST_ERR_SHIFT);
+	else if (hwirq == EVENT_PM_MSI_INT_INTX)
+		mask = PM_MSI_INT_INTX_MASK;
+	else
+		mask = BIT(hwirq + PM_MSI_TO_MASK_OFFSET);
+
+	return mask;
+}
+
+static void plda_ack_event_irq(struct irq_data *data)
+{
+	struct plda_pcie_rp *port = irq_data_get_irq_chip_data(data);
+
+	writel_relaxed(plda_hwirq_to_mask(data->hwirq),
+		       port->bridge_addr + ISTATUS_LOCAL);
+}
+
+static void plda_mask_event_irq(struct irq_data *data)
+{
+	struct plda_pcie_rp *port = irq_data_get_irq_chip_data(data);
+	u32 mask, val;
+
+	mask = plda_hwirq_to_mask(data->hwirq);
+
+	raw_spin_lock(&port->lock);
+	val = readl_relaxed(port->bridge_addr + IMASK_LOCAL);
+	val &= ~mask;
+	writel_relaxed(val, port->bridge_addr + IMASK_LOCAL);
+	raw_spin_unlock(&port->lock);
+}
+
+static void plda_unmask_event_irq(struct irq_data *data)
+{
+	struct plda_pcie_rp *port = irq_data_get_irq_chip_data(data);
+	u32 mask, val;
+
+	mask = plda_hwirq_to_mask(data->hwirq);
+
+	raw_spin_lock(&port->lock);
+	val = readl_relaxed(port->bridge_addr + IMASK_LOCAL);
+	val |= mask;
+	writel_relaxed(val, port->bridge_addr + IMASK_LOCAL);
+	raw_spin_unlock(&port->lock);
+}
+
+static struct irq_chip plda_event_irq_chip = {
+	.name = "PLDA PCIe EVENT",
+	.irq_ack = plda_ack_event_irq,
+	.irq_mask = plda_mask_event_irq,
+	.irq_unmask = plda_unmask_event_irq,
+};
+
 static const struct plda_event_ops plda_event_ops = {
 	.get_events = plda_get_events,
 };
@@ -778,7 +835,9 @@ static const struct plda_event_ops plda_event_ops = {
 static int plda_pcie_event_map(struct irq_domain *domain, unsigned int irq,
 			       irq_hw_number_t hwirq)
 {
-	irq_set_chip_and_handler(irq, &mc_event_irq_chip, handle_level_irq);
+	struct plda_pcie_rp *port = (void *)domain->host_data;
+
+	irq_set_chip_and_handler(irq, port->event_irq_chip, handle_level_irq);
 	irq_set_chip_data(irq, domain->host_data);
 
 	return 0;
@@ -963,6 +1022,9 @@ static int plda_init_interrupts(struct platform_device *pdev,
 	if (!port->event_ops)
 		port->event_ops = &plda_event_ops;
 
+	if (!port->event_irq_chip)
+		port->event_irq_chip = &plda_event_irq_chip;
+
 	ret = plda_pcie_init_irq_domains(port);
 	if (ret) {
 		dev_err(dev, "failed creating IRQ domains\n");
@@ -1040,6 +1102,7 @@ static int mc_platform_init(struct pci_config_window *cfg)
 		return ret;
 
 	port->plda.event_ops = &mc_event_ops;
+	port->plda.event_irq_chip = &mc_event_irq_chip;
 
 	/* Address translation is up; safe to enable interrupts */
 	ret = plda_init_interrupts(pdev, &port->plda, &mc_event);
diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
index dd8bc2750bfc..24ac50c458dc 100644
--- a/drivers/pci/controller/plda/pcie-plda.h
+++ b/drivers/pci/controller/plda/pcie-plda.h
@@ -128,6 +128,8 @@
  * DMA end : reserved for vendor implement
  */
 
+#define PM_MSI_TO_MASK_OFFSET			19
+
 struct plda_pcie_rp;
 
 struct plda_event_ops {
@@ -150,6 +152,7 @@ struct plda_pcie_rp {
 	raw_spinlock_t lock;
 	struct plda_msi msi;
 	const struct plda_event_ops *event_ops;
+	const struct irq_chip *event_irq_chip;
 	void __iomem *bridge_addr;
 	int num_events;
 };
-- 
2.17.1


