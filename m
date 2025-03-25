Return-Path: <devicetree+bounces-160473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 085FBA6EDB0
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 11:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF1E03A4A06
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 10:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3822F256C70;
	Tue, 25 Mar 2025 10:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESDGk7Wi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BA22566F9;
	Tue, 25 Mar 2025 10:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742898397; cv=none; b=g1KGhPAP+CkgrOJcyq3hk2Tfu0TmIM5FiEoNWRSAALDBN5ZuhVNjHWjTv575o6bWw7GIBBpsdn3L2a0Bhlah60y2/KomDfzdYQJ9mhvHLc4Zh02EaqIUDL7WF7khjv2DcfC+1ghaYrHKbqlwGGzkOA/ihp/vDXkuW19BPxoDbsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742898397; c=relaxed/simple;
	bh=czd+MPsp+EPr6awmKw0tqPT1gQ4oD2xDV2CaKHLc66E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Bj+R0S1xLTy7NIczAq7cOqqb6edhyJBE2KxKLci9CAlqfiojgNNnnIziNTTPaiyLu6O0WWVJ2VVZeQ01kMmRzzLPaL/XptYQ8K1tjh6Qwz16sfGBmIM5iVi9qcdaIqNuJF8L8mLQI3tB9IRujT4UvhnC06lslVjbkSK2Jt5gcS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESDGk7Wi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B904DC4AF0C;
	Tue, 25 Mar 2025 10:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742898396;
	bh=czd+MPsp+EPr6awmKw0tqPT1gQ4oD2xDV2CaKHLc66E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ESDGk7WiRFkVbaT9vufJm5Bkn04/psQxnV/rAYkvTzR5tJqGQomdo4tBUu90Vzn4W
	 D2PhSpOSeEtc++fZBtVOGWfZ1tW8o2fpGL2LZ5qWVFHMvpMT9UtaQE+Cm2y9E9iYnM
	 eHH9Be4D+nx+pXIK3hVd/HK+PabxmTXs7q9cpRtf6RJJhISv82Wh8NByYtstR12Wyi
	 pRi7YaW22b515z0rZ+loD7QmAnR7jMqIdT8cHM00zsbyPSjWYmjvEML/4+W+9adMgn
	 uAQX5y2sdw6fO1auD/kozab6JYDvJVbwiLQVRDZC74kNCoNvoy1CZAiXPKR4D3S8s5
	 O2IZkcP8NJMbw==
Received: from sofa.misterjones.org ([185.219.108.64] helo=valley-girl.lan)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1tx1UQ-00GsRS-Va;
	Tue, 25 Mar 2025 10:26:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev
Cc: Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Janne Grunau <j@jannau.net>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH v2 12/13] PCI: apple: Abstract register offsets via a SoC-specific structure
Date: Tue, 25 Mar 2025 10:26:09 +0000
Message-Id: <20250325102610.2073863-13-maz@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250325102610.2073863-1-maz@kernel.org>
References: <20250325102610.2073863-1-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, alyssa@rosenzweig.io, j@jannau.net, marcan@marcan.st, sven@svenpeter.dev, bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

From: Hector Martin <marcan@marcan.st>

Newer versions of the Apple PCIe block have a bunch of small, but
annoying differences.

In order to embrace this diversity of implementations, move the
currently hardcoded offsets into a hw_info structure. Future SoCs
will provide their own structure describing the applicable offsets.

Signed-off-by: Hector Martin <marcan@marcan.st>
Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
[maz: split from original patch to only address T8103]
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/pci/controller/pcie-apple.c | 89 +++++++++++++++++++++++------
 1 file changed, 72 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index 505adf64bd66d..847cba753d28d 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -18,6 +18,7 @@
  * Author: Marc Zyngier <maz@kernel.org>
  */
 
+#include <linux/bitfield.h>
 #include <linux/gpio/consumer.h>
 #include <linux/kernel.h>
 #include <linux/iopoll.h>
@@ -29,6 +30,7 @@
 #include <linux/of_irq.h>
 #include <linux/pci-ecam.h>
 
+/* T8103 (original M1) and related SoCs */
 #define CORE_RC_PHYIF_CTL		0x00024
 #define   CORE_RC_PHYIF_CTL_RUN		BIT(0)
 #define CORE_RC_PHYIF_STAT		0x00028
@@ -104,7 +106,7 @@
 #define   PORT_REFCLK_CGDIS		BIT(8)
 #define PORT_PERST			0x00814
 #define   PORT_PERST_OFF		BIT(0)
-#define PORT_RID2SID(i16)		(0x00828 + 4 * (i16))
+#define PORT_RID2SID			0x00828
 #define   PORT_RID2SID_VALID		BIT(31)
 #define   PORT_RID2SID_SID_SHIFT	16
 #define   PORT_RID2SID_BUS_SHIFT	8
@@ -122,7 +124,8 @@
 #define   PORT_TUNSTAT_PERST_ACK_PEND	BIT(1)
 #define PORT_PREFMEM_ENABLE		0x00994
 
-#define MAX_RID2SID			64
+#define PORT_MSIMAP_ENABLE	BIT(31)
+#define PORT_MSIMAP_TARGET	GENMASK(7, 0)
 
 /*
  * The doorbell address is set to 0xfffff000, which by convention
@@ -133,10 +136,33 @@
  */
 #define DOORBELL_ADDR		CONFIG_PCIE_APPLE_MSI_DOORBELL_ADDR
 
+struct hw_info {
+	u32 phy_lane_ctl;
+	u32 port_msiaddr;
+	u32 port_msiaddr_hi;
+	u32 port_refclk;
+	u32 port_perst;
+	u32 port_rid2sid;
+	u32 port_msimap;
+	u32 max_rid2sid;
+};
+
+static const struct hw_info t8103_hw = {
+	.phy_lane_ctl		= PHY_LANE_CTL,
+	.port_msiaddr		= PORT_MSIADDR,
+	.port_msiaddr_hi	= 0,
+	.port_refclk		= PORT_REFCLK,
+	.port_perst		= PORT_PERST,
+	.port_rid2sid		= PORT_RID2SID,
+	.port_msimap		= 0,
+	.max_rid2sid		= 64,
+};
+
 struct apple_pcie {
 	struct mutex		lock;
 	struct device		*dev;
 	void __iomem            *base;
+	const struct hw_info	*hw;
 	struct irq_domain	*domain;
 	unsigned long		*bitmap;
 	struct list_head	ports;
@@ -380,7 +406,9 @@ static void apple_port_irq_handler(struct irq_desc *desc)
 static int apple_pcie_port_setup_irq(struct apple_pcie_port *port)
 {
 	struct fwnode_handle *fwnode = &port->np->fwnode;
+	struct apple_pcie *pcie = port->pcie;
 	unsigned int irq;
+	u32 val = 0;
 
 	/* FIXME: consider moving each interrupt under each port */
 	irq = irq_of_parse_and_map(to_of_node(dev_fwnode(port->pcie->dev)),
@@ -402,13 +430,23 @@ static int apple_pcie_port_setup_irq(struct apple_pcie_port *port)
 
 	/* Configure MSI base address */
 	BUILD_BUG_ON(upper_32_bits(DOORBELL_ADDR));
-	writel_relaxed(lower_32_bits(DOORBELL_ADDR), port->base + PORT_MSIADDR);
+	writel_relaxed(lower_32_bits(DOORBELL_ADDR),
+		       port->base + pcie->hw->port_msiaddr);
+	if (pcie->hw->port_msiaddr_hi)
+		writel_relaxed(0, port->base + pcie->hw->port_msiaddr_hi);
 
 	/* Enable MSIs, shared between all ports */
-	writel_relaxed(0, port->base + PORT_MSIBASE);
-	writel_relaxed((ilog2(port->pcie->nvecs) << PORT_MSICFG_L2MSINUM_SHIFT) |
-		       PORT_MSICFG_EN, port->base + PORT_MSICFG);
+	if (pcie->hw->port_msimap) {
+		for (int i = 0; i < pcie->nvecs; i++)
+			writel_relaxed(FIELD_PREP(PORT_MSIMAP_TARGET, i) |
+				       PORT_MSIMAP_ENABLE,
+				       port->base + pcie->hw->port_msimap + 4 * i);
+	} else {
+		writel_relaxed(0, port->base + PORT_MSIBASE);
+		val = ilog2(pcie->nvecs) << PORT_MSICFG_L2MSINUM_SHIFT;
+	}
 
+	writel_relaxed(val | PORT_MSICFG_EN, port->base + PORT_MSICFG);
 	return 0;
 }
 
@@ -475,7 +513,9 @@ static int apple_pcie_setup_refclk(struct apple_pcie *pcie,
 	u32 stat;
 	int res;
 
-	rmw_set(PHY_LANE_CTL_CFGACC, port->phy + PHY_LANE_CTL);
+	if (pcie->hw->phy_lane_ctl)
+		rmw_set(PHY_LANE_CTL_CFGACC, port->phy + pcie->hw->phy_lane_ctl);
+
 	rmw_set(PHY_LANE_CFG_REFCLK0REQ, port->phy + PHY_LANE_CFG);
 
 	res = readl_relaxed_poll_timeout(port->phy + PHY_LANE_CFG,
@@ -492,20 +532,28 @@ static int apple_pcie_setup_refclk(struct apple_pcie *pcie,
 	if (res < 0)
 		return res;
 
-	rmw_clear(PHY_LANE_CTL_CFGACC, port->phy + PHY_LANE_CTL);
+	if (pcie->hw->phy_lane_ctl)
+		rmw_clear(PHY_LANE_CTL_CFGACC, port->phy + pcie->hw->phy_lane_ctl);
 
 	rmw_set(PHY_LANE_CFG_REFCLKEN, port->phy + PHY_LANE_CFG);
-	rmw_set(PORT_REFCLK_EN, port->base + PORT_REFCLK);
+
+	if (pcie->hw->port_refclk)
+		rmw_set(PORT_REFCLK_EN, port->base + pcie->hw->port_refclk);
 
 	return 0;
 }
 
+static void __iomem *port_rid2sid_addr(struct apple_pcie_port *port, int idx)
+{
+	return port->base + port->pcie->hw->port_rid2sid + 4 * idx;
+}
+
 static u32 apple_pcie_rid2sid_write(struct apple_pcie_port *port,
 				    int idx, u32 val)
 {
-	writel_relaxed(val, port->base + PORT_RID2SID(idx));
+	writel_relaxed(val, port_rid2sid_addr(port, idx));
 	/* Read back to ensure completion of the write */
-	return readl_relaxed(port->base + PORT_RID2SID(idx));
+	return readl_relaxed(port_rid2sid_addr(port, idx));
 }
 
 static int apple_pcie_setup_port(struct apple_pcie *pcie,
@@ -528,7 +576,7 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 	if (!port)
 		return -ENOMEM;
 
-	port->sid_map = devm_bitmap_zalloc(pcie->dev, MAX_RID2SID, GFP_KERNEL);
+	port->sid_map = devm_bitmap_zalloc(pcie->dev, pcie->hw->max_rid2sid, GFP_KERNEL);
 	if (!port->sid_map)
 		return -ENOMEM;
 
@@ -572,7 +620,7 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 	usleep_range(100, 200);
 
 	/* Deassert PERST# */
-	rmw_set(PORT_PERST_OFF, port->base + PORT_PERST);
+	rmw_set(PORT_PERST_OFF, port->base + pcie->hw->port_perst);
 	gpiod_set_value_cansleep(reset, 0);
 
 	/* Wait for 100ms after PERST# deassertion (PCIe r5.0, 6.6.1) */
@@ -585,7 +633,11 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 		return ret;
 	}
 
-	rmw_clear(PORT_REFCLK_CGDIS, port->base + PORT_REFCLK);
+	if (pcie->hw->port_refclk)
+		rmw_clear(PORT_REFCLK_CGDIS, port->base + pcie->hw->port_refclk);
+	else
+		rmw_set(PHY_LANE_CFG_REFCLKCGEN, port->phy + PHY_LANE_CFG);
+
 	rmw_clear(PORT_APPCLK_CGDIS, port->base + PORT_APPCLK);
 
 	ret = apple_pcie_port_setup_irq(port);
@@ -593,7 +645,7 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 		return ret;
 
 	/* Reset all RID/SID mappings, and check for RAZ/WI registers */
-	for (i = 0; i < MAX_RID2SID; i++) {
+	for (i = 0; i < pcie->hw->max_rid2sid; i++) {
 		if (apple_pcie_rid2sid_write(port, i, 0xbad1d) != 0xbad1d)
 			break;
 		apple_pcie_rid2sid_write(port, i, 0);
@@ -741,7 +793,7 @@ static void apple_pcie_disable_device(struct pci_host_bridge *bridge, struct pci
 	for_each_set_bit(idx, port->sid_map, port->sid_map_sz) {
 		u32 val;
 
-		val = readl_relaxed(port->base + PORT_RID2SID(idx));
+		val = readl_relaxed(port_rid2sid_addr(port, idx));
 		if ((val & 0xffff) == rid) {
 			apple_pcie_rid2sid_write(port, idx, 0);
 			bitmap_release_region(port->sid_map, idx, 0);
@@ -794,6 +846,9 @@ static int apple_pcie_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	pcie->dev = dev;
+	pcie->hw = of_device_get_match_data(dev);
+	if (!pcie->hw)
+		return -ENODEV;
 	pcie->base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(pcie->base))
 		return PTR_ERR(pcie->base);
@@ -810,7 +865,7 @@ static int apple_pcie_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id apple_pcie_of_match[] = {
-	{ .compatible = "apple,pcie" },
+	{ .compatible = "apple,pcie",		.data = &t8103_hw },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, apple_pcie_of_match);
-- 
2.39.2


