Return-Path: <devicetree+bounces-7664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 545337C50E6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:05:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F64A282743
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B197F1DDCA;
	Wed, 11 Oct 2023 11:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4209B1DDD6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:05:34 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8CABB7;
	Wed, 11 Oct 2023 04:05:31 -0700 (PDT)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by ex01.ufhost.com (Postfix) with ESMTP id 6E3FA24E381;
	Wed, 11 Oct 2023 19:05:30 +0800 (CST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 5795824DEED;
	Wed, 11 Oct 2023 19:05:30 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 11 Oct
 2023 19:05:30 +0800
Received: from ubuntu.localdomain (183.27.96.95) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 11 Oct
 2023 19:05:29 +0800
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
Subject: [PATCH v8 16/22] PCI: microchip: Add event IRQ domain ops to struct plda_event
Date: Wed, 11 Oct 2023 19:05:08 +0800
Message-ID: <20231011110514.107528-17-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231011110514.107528-1-minda.chen@starfivetech.com>
References: <20231011110514.107528-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.96.95]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

PolarFire Implements none-PLDA event interrupts. So the whole event
domain ops can not be re-used.
PLDA event domain ops instances will be implemented
in later patch.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 drivers/pci/controller/plda/pcie-microchip-host.c | 9 ++++++---
 drivers/pci/controller/plda/pcie-plda.h           | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index fca1520d56c9..2825c1f5563d 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -811,13 +811,15 @@ static const struct plda_event_ops mc_event_ops = {
 };
 
 static const struct plda_event mc_event = {
+	.domain_ops             = &mc_event_domain_ops,
 	.event_ops              = &mc_event_ops,
 	.request_event_irq      = mc_request_event_irq,
 	.intx_event             = EVENT_LOCAL_PM_MSI_INT_INTX,
 	.msi_event              = EVENT_LOCAL_PM_MSI_INT_MSI,
 };
 
-static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
+static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port,
+				      const struct irq_domain_ops *ops)
 {
 	struct device *dev = port->dev;
 	struct device_node *node = dev->of_node;
@@ -831,7 +833,8 @@ static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
 	}
 
 	port->event_domain = irq_domain_add_linear(pcie_intc_node, port->num_events,
-						   &mc_event_domain_ops, port);
+						   ops, port);
+
 	if (!port->event_domain) {
 		dev_err(dev, "failed to get event domain\n");
 		of_node_put(pcie_intc_node);
@@ -930,7 +933,7 @@ static int plda_init_interrupts(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
-	ret = plda_pcie_init_irq_domains(port);
+	ret = plda_pcie_init_irq_domains(port, event->domain_ops);
 	if (ret) {
 		dev_err(dev, "failed creating IRQ domains\n");
 		return ret;
diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
index 6571a4befac9..080932cbe8c4 100644
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


