Return-Path: <devicetree+bounces-10348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D30357D0DAD
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 12:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39901B213F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCC618AEE;
	Fri, 20 Oct 2023 10:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5B8182BE
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 10:43:58 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1347114;
	Fri, 20 Oct 2023 03:43:56 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id C624D24E374;
	Fri, 20 Oct 2023 18:43:55 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 20 Oct
 2023 18:43:56 +0800
Received: from ubuntu.localdomain (183.27.99.123) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 20 Oct
 2023 18:43:54 +0800
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
Subject: [PATCH v9 15/20] PCI: microchip: Add event IRQ domain ops to struct plda_event
Date: Fri, 20 Oct 2023 18:43:36 +0800
Message-ID: <20231020104341.63157-16-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231020104341.63157-1-minda.chen@starfivetech.com>
References: <20231020104341.63157-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.99.123]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

For PLDA lack of an MSI controller, The new added
PCIe interrupts can not be added to MSI.PolarFire event
domain ops can not be re-used.

PLDA event domain ops instances will be implemented
in later patch.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/pci/controller/plda/pcie-microchip-host.c | 9 ++++++---
 drivers/pci/controller/plda/pcie-plda.h           | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index 5a8c134bf643..4765a596a517 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -816,13 +816,15 @@ static const struct plda_event_ops mc_event_ops = {
 };
 
 static const struct plda_event mc_event = {
+	.domain_ops        = &mc_event_domain_ops,
 	.event_ops         = &mc_event_ops,
 	.request_event_irq = mc_request_event_irq,
 	.intx_event        = EVENT_LOCAL_PM_MSI_INT_INTX,
 	.msi_event         = EVENT_LOCAL_PM_MSI_INT_MSI,
 };
 
-static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
+static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port,
+				      const struct irq_domain_ops *ops)
 {
 	struct device *dev = port->dev;
 	struct device_node *node = dev->of_node;
@@ -836,7 +838,8 @@ static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
 	}
 
 	port->event_domain = irq_domain_add_linear(pcie_intc_node, port->num_events,
-						   &mc_event_domain_ops, port);
+						   ops, port);
+
 	if (!port->event_domain) {
 		dev_err(dev, "failed to get event domain\n");
 		of_node_put(pcie_intc_node);
@@ -935,7 +938,7 @@ static int plda_init_interrupts(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
-	ret = plda_pcie_init_irq_domains(port);
+	ret = plda_pcie_init_irq_domains(port, event->domain_ops);
 	if (ret) {
 		dev_err(dev, "failed creating IRQ domains\n");
 		return ret;
diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
index df1729095952..820ea16855b5 100644
--- a/drivers/pci/controller/plda/pcie-plda.h
+++ b/drivers/pci/controller/plda/pcie-plda.h
@@ -129,6 +129,7 @@ struct plda_pcie_rp {
 };
 
 struct plda_event {
+	const struct irq_domain_ops *domain_ops;
 	const struct plda_event_ops *event_ops;
 	int (*request_event_irq)(struct plda_pcie_rp *pcie,
 				 int event_irq, int event);
-- 
2.17.1


