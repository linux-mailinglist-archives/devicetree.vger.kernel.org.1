Return-Path: <devicetree+bounces-162219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9755A77782
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 11:19:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F05F3AC24E
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 09:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F591EFFB2;
	Tue,  1 Apr 2025 09:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCNt5RoS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FEE1EF39F;
	Tue,  1 Apr 2025 09:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743499059; cv=none; b=RoI1oikGwBTWBYkDVXLIkMu4LMKqPgzwc6W9kvgQNnJ1yusRLW+zvxjeCYVgyhJ4tH9FuIkatnNPnsebpXSt6r9vSaRWAc+YeAatZ4VC4ecgp6SreCEssiVo1LjuhOPN+WKzh+TAFvKb/Lkz3nOvLohubIfe1zSk6UnTa4Ht870=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743499059; c=relaxed/simple;
	bh=EBSOtpSc/6vHsHkDO7brKbWCI1HIqRXrpQE1DO7mtEE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mksvpEeZMbdZSLEfygBAAf4mcJ4iN6yjnw6BdLFJrx7bq3AACDir8owEr1Ro2BISu1zI+RfQVeYZCpwx4PuDK85AE44aUY25M2tQ1khwsm1vfQmjiBtzQqgS+ri8uO7dHDl0O0z6ytBsVf/ycC1U2dDjuNSYLSOuYaNXOBhtYbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCNt5RoS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E09A3C4AF0D;
	Tue,  1 Apr 2025 09:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743499059;
	bh=EBSOtpSc/6vHsHkDO7brKbWCI1HIqRXrpQE1DO7mtEE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NCNt5RoSTJFyXb50Y+wWLdtLLGtoFM5psy/axV/vIaWT0zRb4FJQk9P+hF2MQwKmc
	 TpSHKLXG8V79z+Ff6Q1smd83zmnY3eQT4InTyuehGZhf3D6pXlMz2knHsf2H9MJfUD
	 0c+xbNJgmXBPMgUFDRJ/vzINg36l9Jj2ZdPy1xFrnQYmHoiu9d51dAqDyE2HYidgLy
	 frIAE1BkhmsrIiAW+lCOm3nginx6WilYI3MWKxN7tTSlqV89quKYYGMmwyqHdyfTlq
	 EKD2+Pao/XVHEyWXYPVB42qnuqIe0i1Ns58fRyON12n3QVXY7/V3muM2rOwJImCBpN
	 W9e3koBZA9tpA==
Received: from sofa.misterjones.org ([185.219.108.64] helo=valley-girl.lan)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1tzXkW-001GqU-Sc;
	Tue, 01 Apr 2025 10:17:36 +0100
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
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: [PATCH v3 09/13] PCI: apple: Move port PHY registers to their own reg items
Date: Tue,  1 Apr 2025 10:17:09 +0100
Message-Id: <20250401091713.2765724-10-maz@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20250401091713.2765724-1-maz@kernel.org>
References: <20250401091713.2765724-1-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, alyssa@rosenzweig.io, j@jannau.net, marcan@marcan.st, sven@svenpeter.dev, bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, mark.kettenis@xs4all.nl
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

From: Hector Martin <marcan@marcan.st>

T602x PCIe cores move these registers around. Instead of hardcoding in
another offset, let's move them into their own reg entries. This matches
what Apple does on macOS device trees too.

Maintains backwards compatibility with old DTs by using the old offsets.

Note that we open code devm_platform_ioremap_resource_byname() to avoid
error messages on older platforms with missing resources in the pcie
node. ("pcie-apple 590000000.pcie: invalid resource (null)" on probe)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
Tested-by: Janne Grunau <j@jannau.net>
Co-developed-by: Janne Grunau <j@jannau.net>
Signed-off-by: Janne Grunau <j@jannau.net>
Signed-off-by: Hector Martin <marcan@marcan.st>
Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/pci/controller/pcie-apple.c | 55 +++++++++++++++++++----------
 1 file changed, 37 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index 23d9f62bd2ad4..94c49611b74df 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -39,14 +39,18 @@
 #define   CORE_RC_STAT_READY		BIT(0)
 #define CORE_FABRIC_STAT		0x04000
 #define   CORE_FABRIC_STAT_MASK		0x001F001F
-#define CORE_LANE_CFG(port)		(0x84000 + 0x4000 * (port))
-#define   CORE_LANE_CFG_REFCLK0REQ	BIT(0)
-#define   CORE_LANE_CFG_REFCLK1REQ	BIT(1)
-#define   CORE_LANE_CFG_REFCLK0ACK	BIT(2)
-#define   CORE_LANE_CFG_REFCLK1ACK	BIT(3)
-#define   CORE_LANE_CFG_REFCLKEN	(BIT(9) | BIT(10))
-#define CORE_LANE_CTL(port)		(0x84004 + 0x4000 * (port))
-#define   CORE_LANE_CTL_CFGACC		BIT(15)
+
+#define CORE_PHY_DEFAULT_BASE(port)	(0x84000 + 0x4000 * (port))
+
+#define PHY_LANE_CFG			0x00000
+#define   PHY_LANE_CFG_REFCLK0REQ	BIT(0)
+#define   PHY_LANE_CFG_REFCLK1REQ	BIT(1)
+#define   PHY_LANE_CFG_REFCLK0ACK	BIT(2)
+#define   PHY_LANE_CFG_REFCLK1ACK	BIT(3)
+#define   PHY_LANE_CFG_REFCLKEN		(BIT(9) | BIT(10))
+#define   PHY_LANE_CFG_REFCLKCGEN	(BIT(30) | BIT(31))
+#define PHY_LANE_CTL			0x00004
+#define   PHY_LANE_CTL_CFGACC		BIT(15)
 
 #define PORT_LTSSMCTL			0x00080
 #define   PORT_LTSSMCTL_START		BIT(0)
@@ -146,6 +150,7 @@ struct apple_pcie_port {
 	struct apple_pcie	*pcie;
 	struct device_node	*np;
 	void __iomem		*base;
+	void __iomem		*phy;
 	struct irq_domain	*domain;
 	struct list_head	entry;
 	unsigned long		*sid_map;
@@ -476,26 +481,26 @@ static int apple_pcie_setup_refclk(struct apple_pcie *pcie,
 	if (res < 0)
 		return res;
 
-	rmw_set(CORE_LANE_CTL_CFGACC, pcie->base + CORE_LANE_CTL(port->idx));
-	rmw_set(CORE_LANE_CFG_REFCLK0REQ, pcie->base + CORE_LANE_CFG(port->idx));
+	rmw_set(PHY_LANE_CTL_CFGACC, port->phy + PHY_LANE_CTL);
+	rmw_set(PHY_LANE_CFG_REFCLK0REQ, port->phy + PHY_LANE_CFG);
 
-	res = readl_relaxed_poll_timeout(pcie->base + CORE_LANE_CFG(port->idx),
-					 stat, stat & CORE_LANE_CFG_REFCLK0ACK,
+	res = readl_relaxed_poll_timeout(port->phy + PHY_LANE_CFG,
+					 stat, stat & PHY_LANE_CFG_REFCLK0ACK,
 					 100, 50000);
 	if (res < 0)
 		return res;
 
-	rmw_set(CORE_LANE_CFG_REFCLK1REQ, pcie->base + CORE_LANE_CFG(port->idx));
-	res = readl_relaxed_poll_timeout(pcie->base + CORE_LANE_CFG(port->idx),
-					 stat, stat & CORE_LANE_CFG_REFCLK1ACK,
+	rmw_set(PHY_LANE_CFG_REFCLK1REQ, port->phy + PHY_LANE_CFG);
+	res = readl_relaxed_poll_timeout(port->phy + PHY_LANE_CFG,
+					 stat, stat & PHY_LANE_CFG_REFCLK1ACK,
 					 100, 50000);
 
 	if (res < 0)
 		return res;
 
-	rmw_clear(CORE_LANE_CTL_CFGACC, pcie->base + CORE_LANE_CTL(port->idx));
+	rmw_clear(PHY_LANE_CTL_CFGACC, port->phy + PHY_LANE_CTL);
 
-	rmw_set(CORE_LANE_CFG_REFCLKEN, pcie->base + CORE_LANE_CFG(port->idx));
+	rmw_set(PHY_LANE_CFG_REFCLKEN, port->phy + PHY_LANE_CFG);
 	rmw_set(PORT_REFCLK_EN, port->base + PORT_REFCLK);
 
 	return 0;
@@ -515,6 +520,8 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 	struct platform_device *platform = to_platform_device(pcie->dev);
 	struct apple_pcie_port *port;
 	struct gpio_desc *reset;
+	struct resource *res;
+	char name[16];
 	u32 stat, idx;
 	int ret, i;
 
@@ -542,10 +549,22 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
 
 	raw_spin_lock_init(&port->lock);
 
-	port->base = devm_platform_ioremap_resource(platform, port->idx + 2);
+	snprintf(name, sizeof(name), "port%d", port->idx);
+	res = platform_get_resource_byname(platform, IORESOURCE_MEM, name);
+	if (!res)
+		res = platform_get_resource(platform, IORESOURCE_MEM, port->idx + 2);
+
+	port->base = devm_ioremap_resource(&platform->dev, res);
 	if (IS_ERR(port->base))
 		return PTR_ERR(port->base);
 
+	snprintf(name, sizeof(name), "phy%d", port->idx);
+	res = platform_get_resource_byname(platform, IORESOURCE_MEM, name);
+	if (res)
+		port->phy = devm_ioremap_resource(&platform->dev, res);
+	else
+		port->phy = pcie->base + CORE_PHY_DEFAULT_BASE(port->idx);
+
 	rmw_set(PORT_APPCLK_EN, port->base + PORT_APPCLK);
 
 	/* Assert PERST# before setting up the clock */
-- 
2.39.2


