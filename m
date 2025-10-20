Return-Path: <devicetree+bounces-228800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680ABF0C3B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:13:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33D0A189FD8B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97F132FBE02;
	Mon, 20 Oct 2025 11:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JcoaVsmf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B882E2FC034
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958710; cv=none; b=IBF9zBUKwuBcO9tVEuARZc5d8dr/EOs4+DT22nAGLF5/nGWKu92l26s/NGKYOpCDB+uKprDEeq5GEJceTUUh/qEtbtOs6VVZwbuZ7ES756HHPEcY4+x9jLtrAok9wPh2YKx50xKlE3A/bCbu+ETk3mv8Nhjnjtww55z/c46IErI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958710; c=relaxed/simple;
	bh=TXVMSVKr7qOF8hxFoE16OYMWYnXG64+kVUadI/8l4wY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P2oMsfG5ASHRi9Vt+4zlCXopjVpE0pNdZ7xvM4sj5BqgSE24v7UGXhLGNM1TjZmI/40Nw1ZZTLargg1MSCaeaovfCuWkR6flFOfdem/Pv+8whYZlHH3GhKHEczuw1Ta3AvKfv2YOEVGjYw61a9tCGdHG89/vZD+jxuKGGo1npuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JcoaVsmf; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-427015003eeso3085004f8f.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760958706; x=1761563506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pPXQlJHmF4oh6NBrps4WHzY7MPHl2PKqTkZLsKWcZ4A=;
        b=JcoaVsmf9nKfAK+EYipoaOEhhb1ZnErlyGhFID2wyAXexwvLfsiFfmvmZBzGur6I6e
         WXER5UuCNc1k6muBhkiwCdegkW86xmLxtBIudB7DjNvjp3Fu4mPmVfUlOxJCyijPEz33
         xlL3uMSJZsodBk0CUUGRbreuUDbzqSlhZ6EtddLQEc0AXluR1+pTpe+NJaz9bTN0sdkG
         AVUkSXAihqSZRLZs5hNfrXvLIBS7EnW3YSvdQyitc0NwamTfvALrDuDgJKucgysLlk32
         NMCkvPZW5f6iroW1UqiYSF+/dkYefvALMKQeb65QlV9X5bhy9XTcsMkxMic6+x8yFVM/
         OO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958706; x=1761563506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pPXQlJHmF4oh6NBrps4WHzY7MPHl2PKqTkZLsKWcZ4A=;
        b=vq+e1DNB4ESWqbkDLhoQaFpoJ/8NxI0eXEy8H4WAeQm0vnotg9nbJer+2dord6u033
         M3+aq0F/xGonqNf7guu+YTnaoPdSLaUIE1ioOCckNFB47VbkWNKifx9Oy6cVIZcy7eKV
         knBBoE7dvoO8JqOIM7Gp6axyjnq3ySitIu27oy5XnZeRCd+4JSyaATVddu/omeiIl1+l
         GdGO+vSpicGtR7gw7fn4N1FN1sjGWrE6463BJ1l6+BXlOvYbYjXsfCTTTVp6RRsMIlZ8
         khcerkIctcWTKvQCvt1GRwSW7rBrggOLAvuCfshnbaOIsGjMOiBUT1cK3nKx2YuA72CU
         sgeg==
X-Forwarded-Encrypted: i=1; AJvYcCWhjU7t6QfYsbNC831HZur/niTy0YOFKM7b4U0tzSPYsvuUmTwD1gg+rc7oeEm3YRHA4Goyor2RfQBW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3fMKpDK1vZ3XEyXaXWOPEkxRlAyX/786KBXvfZt8sILKRKHCw
	xbJ7sAgdnLVvTf6QHf0lvbQh03xIgHfDGrjboSJ7Xg86jL1kGH97NKxG
X-Gm-Gg: ASbGncunyCkUwnhQIUyhJsfoDx9cFRrn8bjTqyBIqmTV7rEUhZj5Z2Le8JacvLHi4+s
	I5qQlzaWCC1HoaMvXo+uaYuIHa23txq3h0Svy0CNBBjQm+k2aO10LB+NNWWRGeLmny8DX4ZVOsu
	IeAUNt0SVmUnVXFGB+sud+eLYuXA9N2N0UFPyRS7swTpNFzQsXWBxvH6D6xKC0DUgbjMeB9Wxdn
	AGaAmpWMoyLpJtyBm+jQsFKa5z+9vIUe5HA4Ui7t5cgEjbtatc7KivyeS4hoAAnnUZzIWMR6ww8
	uAf8OIGvW6eKZRiPGLtaJYNK3JN80ss7cdsL/VnZYRwIwihXQEHLmBrWvdxdfiPLjK/kb9DGmhI
	fqkJNj4HMTPL/pNfhLzjyKJ+fz/0N9SUJz4S8+VPotkSeKw78pBjT5EYh24Y2dgGpjbPQsji2fE
	6yIlratz9po63eMTVpEemxuL/eiCld4fUE
X-Google-Smtp-Source: AGHT+IFBsfG4mDpuxI4J6L+KtUyhOVfV2XO1Jy56tSGTqhQz+pjBeuHuXsCZpnVJzTfM6p4J9vjM2Q==
X-Received: by 2002:a05:6000:2911:b0:426:da92:d390 with SMTP id ffacd0b85a97d-42704d83ce7mr8733199f8f.10.1760958705757;
        Mon, 20 Oct 2025 04:11:45 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-92-177.ip49.fastwebnet.it. [93.34.92.177])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4283e7804f4sm12692219f8f.10.2025.10.20.04.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:11:45 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Russell King <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH v6 5/5] PCI: mediatek: Add support for Airoha AN7583 SoC
Date: Mon, 20 Oct 2025 13:11:09 +0200
Message-ID: <20251020111121.31779-6-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251020111121.31779-1-ansuelsmth@gmail.com>
References: <20251020111121.31779-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the second PCIe Root Complex present on Airoha AN7583
SoC.

This is based on the Mediatek Gen1/2 PCIe driver and similar to Gen3
also require workaround for the reset signals.

Introduce a new quirk to skip having to reset signals and also introduce
some additional logic to configure the PBUS registers required for
Airoha SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/pci/controller/pcie-mediatek.c | 75 +++++++++++++++++++++-----
 1 file changed, 61 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 313da61a0b8a..4b78b6528f9f 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -147,11 +147,13 @@ struct mtk_pcie_port;
  * @MTK_PCIE_FIX_CLASS_ID: host's class ID needed to be fixed
  * @MTK_PCIE_FIX_DEVICE_ID: host's device ID needed to be fixed
  * @MTK_PCIE_NO_MSI: Bridge has no MSI support, and relies on an external block
+ * @MTK_PCIE_SKIP_RSTB: Skip calling RSTB bits on PCIe probe
  */
 enum mtk_pcie_quirks {
 	MTK_PCIE_FIX_CLASS_ID = BIT(0),
 	MTK_PCIE_FIX_DEVICE_ID = BIT(1),
 	MTK_PCIE_NO_MSI = BIT(2),
+	MTK_PCIE_SKIP_RSTB = BIT(3),
 };
 
 /**
@@ -687,23 +689,25 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 		regmap_update_bits(pcie->cfg, PCIE_SYS_CFG_V2, val, val);
 	}
 
-	/* Assert all reset signals */
-	writel(0, port->base + PCIE_RST_CTRL);
+	if (!(soc->quirks & MTK_PCIE_SKIP_RSTB)) {
+		/* Assert all reset signals */
+		writel(0, port->base + PCIE_RST_CTRL);
 
-	/*
-	 * Enable PCIe link down reset, if link status changed from link up to
-	 * link down, this will reset MAC control registers and configuration
-	 * space.
-	 */
-	writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
+		/*
+		 * Enable PCIe link down reset, if link status changed from
+		 * link up to link down, this will reset MAC control registers
+		 * and configuration space.
+		 */
+		writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
 
-	msleep(PCIE_T_PVPERL_MS);
+		msleep(PCIE_T_PVPERL_MS);
 
-	/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
-	val = readl(port->base + PCIE_RST_CTRL);
-	val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
-	       PCIE_MAC_SRSTB | PCIE_CRSTB;
-	writel(val, port->base + PCIE_RST_CTRL);
+		/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
+		val = readl(port->base + PCIE_RST_CTRL);
+		val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
+		       PCIE_MAC_SRSTB | PCIE_CRSTB;
+		writel(val, port->base + PCIE_RST_CTRL);
+	}
 
 	/* Set up vendor ID and class code */
 	if (soc->quirks & MTK_PCIE_FIX_CLASS_ID) {
@@ -824,6 +828,41 @@ static int mtk_pcie_startup_port(struct mtk_pcie_port *port)
 	return 0;
 }
 
+static int mtk_pcie_startup_port_an7583(struct mtk_pcie_port *port)
+{
+	struct mtk_pcie *pcie = port->pcie;
+	struct device *dev = pcie->dev;
+	struct pci_host_bridge *host;
+	struct resource_entry *entry;
+	struct regmap *pbus_regmap;
+	resource_size_t addr;
+	u32 args[2], size;
+
+	/*
+	 * Configure PBus base address and base address mask to allow
+	 * the hw to detect if a given address is accessible on PCIe
+	 * controller.
+	 */
+	pbus_regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
+							   "mediatek,pbus-csr",
+							   ARRAY_SIZE(args),
+							   args);
+	if (IS_ERR(pbus_regmap))
+		return PTR_ERR(pbus_regmap);
+
+	host = pci_host_bridge_from_priv(pcie);
+	entry = resource_list_first_type(&host->windows, IORESOURCE_MEM);
+	if (!entry)
+		return -ENODEV;
+
+	addr = entry->res->start - entry->offset;
+	regmap_write(pbus_regmap, args[0], lower_32_bits(addr));
+	size = lower_32_bits(resource_size(entry->res));
+	regmap_write(pbus_regmap, args[1], GENMASK(31, __fls(size)));
+
+	return mtk_pcie_startup_port_v2(port);
+}
+
 static void mtk_pcie_enable_port(struct mtk_pcie_port *port)
 {
 	struct mtk_pcie *pcie = port->pcie;
@@ -1208,6 +1247,13 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
 	.quirks = MTK_PCIE_FIX_CLASS_ID,
 };
 
+static const struct mtk_pcie_soc mtk_pcie_soc_an7583 = {
+	.ops = &mtk_pcie_ops_v2,
+	.startup = mtk_pcie_startup_port_an7583,
+	.setup_irq = mtk_pcie_setup_irq,
+	.quirks = MTK_PCIE_FIX_CLASS_ID | MTK_PCIE_SKIP_RSTB,
+};
+
 static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 	.device_id = PCI_DEVICE_ID_MEDIATEK_7629,
 	.ops = &mtk_pcie_ops_v2,
@@ -1217,6 +1263,7 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 };
 
 static const struct of_device_id mtk_pcie_ids[] = {
+	{ .compatible = "airoha,an7583-pcie", .data = &mtk_pcie_soc_an7583 },
 	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
-- 
2.51.0


