Return-Path: <devicetree+bounces-7653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B097C50D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CB53282401
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BB81DDCA;
	Wed, 11 Oct 2023 11:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26211DA20
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:05:28 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CC7EB9;
	Wed, 11 Oct 2023 04:05:26 -0700 (PDT)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by ex01.ufhost.com (Postfix) with ESMTP id 8F70424E370;
	Wed, 11 Oct 2023 19:05:23 +0800 (CST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 79E3924DEED;
	Wed, 11 Oct 2023 19:05:23 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 11 Oct
 2023 19:05:23 +0800
Received: from ubuntu.localdomain (183.27.96.95) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 11 Oct
 2023 19:05:22 +0800
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
Subject: [PATCH v8 08/22] PCI: microchip: Change the argument of plda_pcie_setup_iomems()
Date: Wed, 11 Oct 2023 19:05:00 +0800
Message-ID: <20231011110514.107528-9-minda.chen@starfivetech.com>
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

If other vendor do not select PCI_HOST_COMMON,
The driver data is not struct pci_host_bridge.
So move calling platform_get_drvdata() to
mc_platform_init().

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/pci/controller/plda/pcie-microchip-host.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/plda/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
index 4877d130ee4c..31ca8d44ee2a 100644
--- a/drivers/pci/controller/plda/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -876,11 +876,10 @@ static void plda_pcie_setup_window(void __iomem *bridge_base_addr, u32 index,
 	writel(0, bridge_base_addr + ATR0_PCIE_WIN0_SRC_ADDR);
 }
 
-static int plda_pcie_setup_iomems(struct platform_device *pdev,
+static int plda_pcie_setup_iomems(struct pci_host_bridge *bridge,
 				  struct plda_pcie_rp *port)
 {
 	void __iomem *bridge_base_addr = port->bridge_addr;
-	struct pci_host_bridge *bridge = platform_get_drvdata(pdev);
 	struct resource_entry *entry;
 	u64 pci_addr;
 	u32 index = 1;
@@ -1018,6 +1017,7 @@ static int mc_platform_init(struct pci_config_window *cfg)
 {
 	struct device *dev = cfg->parent;
 	struct platform_device *pdev = to_platform_device(dev);
+	struct pci_host_bridge *bridge = platform_get_drvdata(pdev);
 	void __iomem *bridge_base_addr =
 		port->axi_base_addr + MC_PCIE_BRIDGE_ADDR;
 	int ret;
@@ -1031,7 +1031,7 @@ static int mc_platform_init(struct pci_config_window *cfg)
 	mc_pcie_enable_msi(port, cfg->win);
 
 	/* Configure non-config space outbound ranges */
-	ret = plda_pcie_setup_iomems(pdev, &port->plda);
+	ret = plda_pcie_setup_iomems(bridge, &port->plda);
 	if (ret)
 		return ret;
 
-- 
2.17.1


