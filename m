Return-Path: <devicetree+bounces-3771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB67B7B0158
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C58151C209F0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3135C273DA;
	Wed, 27 Sep 2023 10:08:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3257E273F9
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:08:20 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 878F719A;
	Wed, 27 Sep 2023 03:08:17 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 5ADD324E2FD;
	Wed, 27 Sep 2023 18:08:16 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 18:08:16 +0800
Received: from ubuntu.localdomain (113.72.144.128) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 18:08:14 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Daire McNamara <daire.mcnamara@microchip.com>, Conor Dooley
	<conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pci@vger.kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>, Minda Chen
	<minda.chen@starfivetech.com>
Subject: [PATCH v7 11/19] PCI: microchip: Add request_event_irq() callback function
Date: Wed, 27 Sep 2023 18:07:54 +0800
Message-ID: <20230927100802.46620-12-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230927100802.46620-1-minda.chen@starfivetech.com>
References: <20230927100802.46620-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [113.72.144.128]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

PolarFire register 28 interrupts symbols name.
PLDA just reguster 13 interrupts, it is not require to
register symbol name. So add a callback functions
to support StarFive and Microchip platforms.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../pci/controller/plda/pcie-microchip-host.c | 25 ++++++++++++++++---
 drivers/pci/controller/plda/pcie-plda.h       |  5 ++++
 2 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index d9dd63084e2b..e3c7d5e66150 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -798,6 +798,17 @@ static int mc_pcie_init_clks(struct device *dev)
 	return 0;
 }
 
+static int mc_request_event_irq(struct plda_pcie_rp *plda, int event_irq,
+				int event)
+{
+	return devm_request_irq(plda->dev, event_irq, mc_event_handler,
+				0, event_cause[event].sym, plda);
+}
+
+static const struct plda_event mc_event = {
+	.request_event_irq      = mc_request_event_irq,
+};
+
 static int plda_pcie_init_irq_domains(struct plda_pcie_rp *port)
 {
 	struct device *dev = port->dev;
@@ -897,7 +908,9 @@ static void mc_disable_interrupts(struct mc_pcie *port)
 	writel_relaxed(GENMASK(31, 0), bridge_base_addr + ISTATUS_HOST);
 }
 
-static int plda_init_interrupts(struct platform_device *pdev, struct plda_pcie_rp *port)
+static int plda_init_interrupts(struct platform_device *pdev,
+				struct plda_pcie_rp *port,
+				const struct plda_event *event)
 {
 	struct device *dev = &pdev->dev;
 	int irq;
@@ -921,8 +934,12 @@ static int plda_init_interrupts(struct platform_device *pdev, struct plda_pcie_r
 			return -ENXIO;
 		}
 
-		ret = devm_request_irq(dev, event_irq, mc_event_handler,
-				       0, event_cause[i].sym, port);
+		if (event->request_event_irq)
+			ret = event->request_event_irq(port, event_irq, i);
+		else
+			ret = devm_request_irq(dev, event_irq, plda_event_handler,
+					       0, NULL, port);
+
 		if (ret) {
 			dev_err(dev, "failed to request IRQ %d\n", event_irq);
 			return ret;
@@ -976,7 +993,7 @@ static int mc_platform_init(struct pci_config_window *cfg)
 		return ret;
 
 	/* Address translation is up; safe to enable interrupts */
-	ret = plda_init_interrupts(pdev, &port->plda);
+	ret = plda_init_interrupts(pdev, &port->plda, &mc_event);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/plda/pcie-plda.h b/drivers/pci/controller/plda/pcie-plda.h
index 5b09ffed623c..4e0712c9365e 100644
--- a/drivers/pci/controller/plda/pcie-plda.h
+++ b/drivers/pci/controller/plda/pcie-plda.h
@@ -153,6 +153,11 @@ struct plda_pcie_rp {
 	int num_events;
 };
 
+struct plda_event {
+	int (*request_event_irq)(struct plda_pcie_rp *pcie,
+				 int event_irq, int event);
+};
+
 irqreturn_t plda_event_handler(int irq, void *dev_id);
 void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
 			    phys_addr_t axi_addr, phys_addr_t pci_addr,
-- 
2.17.1


