Return-Path: <devicetree+bounces-15864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EC87EC199
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 12:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFC2BB20D1F
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 11:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C47E9182AC;
	Wed, 15 Nov 2023 11:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998C317993
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 11:49:31 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E13C7120;
	Wed, 15 Nov 2023 03:49:28 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 85D4A8082;
	Wed, 15 Nov 2023 19:49:27 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Nov
 2023 19:49:27 +0800
Received: from ubuntu.localdomain (183.27.97.246) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Nov
 2023 19:49:26 +0800
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
Subject: [PATCH v11 14/20] PCI: microchip: Add get_events() callback function
Date: Wed, 15 Nov 2023 19:49:06 +0800
Message-ID: <20231115114912.71448-15-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231115114912.71448-1-minda.chen@starfivetech.com>
References: <20231115114912.71448-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.97.246]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

PolarFire implements its own PCIe interrupts, additional to the regular
PCIe interrupts, due to lack of an MSI controller, so the interrupt to
event number mapping is different to the PLDA local interrupts,
necessitating a custom get_events() implementation.

plda_handle_events() will call the get_events() callback function pointer
directly. For the robustness of codes, add checking in
plda_init_interrupts().

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/pci/controller/plda/pcie-microchip-host.c | 14 +++++++++++++-
 drivers/pci/controller/plda/pcie-plda.h           |  8 ++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index 2c03b0354f15..f5e7da242aec 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -657,7 +657,7 @@ static void plda_handle_event(struct irq_desc *desc)
 
 	chained_irq_enter(chip, desc);
 
-	events = mc_get_events(port);
+	events = port->event_ops->get_events(port);
 
 	for_each_set_bit(bit, &events, port->num_events)
 		generic_handle_domain_irq(port->event_domain, bit);
@@ -816,7 +816,12 @@ static int mc_request_event_irq(struct plda_pcie_rp *plda, int event_irq,
 				0, event_cause[event].sym, plda);
 }
 
+static const struct plda_event_ops mc_event_ops = {
+	.get_events = mc_get_events,
+};
+
 static const struct plda_event mc_event = {
+	.event_ops         = &mc_event_ops,
 	.request_event_irq = mc_request_event_irq,
 	.intx_event        = EVENT_LOCAL_PM_MSI_INT_INTX,
 	.msi_event         = EVENT_LOCAL_PM_MSI_INT_MSI,
@@ -931,6 +936,11 @@ static int plda_init_interrupts(struct platform_device *pdev,
 	int i, intx_irq, msi_irq, event_irq;
 	int ret;
 
+	if (!event->event_ops || !event->event_ops->get_events) {
+		dev_err(dev, "no get events ops\n");
+		return -EINVAL;
+	}
+
 	ret = plda_pcie_init_irq_domains(port);
 	if (ret) {
 		dev_err(dev, "failed creating IRQ domains\n");
@@ -941,6 +951,8 @@ static int plda_init_interrupts(struct platform_device *pdev,
 	if (irq < 0)
 		return -ENODEV;
 
+	port->event_ops = event->event_ops;
+
 	for (i = 0; i < port->num_events; i++) {
 		event_irq = irq_create_mapping(port->event_domain, i);
 		if (!event_irq) {
diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
index fba7343f9a96..df1729095952 100644
--- a/drivers/pci/controller/plda/pcie-plda.h
+++ b/drivers/pci/controller/plda/pcie-plda.h
@@ -102,6 +102,12 @@
 #define EVENT_PM_MSI_INT_SYS_ERR		12
 #define NUM_PLDA_EVENTS				13
 
+struct plda_pcie_rp;
+
+struct plda_event_ops {
+	u32 (*get_events)(struct plda_pcie_rp *pcie);
+};
+
 struct plda_msi {
 	struct mutex lock;		/* Protect used bitmap */
 	struct irq_domain *msi_domain;
@@ -117,11 +123,13 @@ struct plda_pcie_rp {
 	struct irq_domain *event_domain;
 	raw_spinlock_t lock;
 	struct plda_msi msi;
+	const struct plda_event_ops *event_ops;
 	void __iomem *bridge_addr;
 	int num_events;
 };
 
 struct plda_event {
+	const struct plda_event_ops *event_ops;
 	int (*request_event_irq)(struct plda_pcie_rp *pcie,
 				 int event_irq, int event);
 	int intx_event;
-- 
2.17.1


