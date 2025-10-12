Return-Path: <devicetree+bounces-225767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3138FBD0C5E
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 22:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A995434731D
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 20:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D52251793;
	Sun, 12 Oct 2025 20:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nsc6IO06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4F7246778
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 20:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760302758; cv=none; b=d9vg2PCVsv23era/IeFFgSFJzQFfJNAARiB0on1O3nMMLn2Qqzhu0tN9viGFpEyTpeTrtJhxHUklergoVI4MIBuXxr2TrVNok6QcUHJH192WbL7Sfjn27rgDVeeviC/BOYkl7IqNbMsQbR2GUJwmbBmEAqZ3oB/AXgZxTbLUgqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760302758; c=relaxed/simple;
	bh=Y9B4pzLzBUoQ9UIuQ9tIIiCjBmPz1CktqXuCtCWM/sI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iykhiZ+Oj0VBoMjjKpYzOW5KEPki/TRT9Zwy1DwXxm0OSyAgK55RZziA5RXFCMcQEsZqlQkO0MBnugdle3BOBN0lsJ07SIi3L9wpdZf7qkxh3nYWRVmILd/bzyDvzjw13yUwIxuF8OScnFEnWi379EHgPmICz13fF8qpgupNMrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nsc6IO06; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso2339059f8f.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 13:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760302755; x=1760907555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HfCCKZmM8pHKKYsT+xDhYQD00mwQ4CthcxXjlQ/ajbw=;
        b=nsc6IO06Tlyq7aYcLRg/jr0M5+naBwyxEy3UUtJgdS2QAN7AeRMzf966b4s3JQMt+u
         jikZHsnMSBBTUO1c0LPzA8f5RwKmwOqmLgGrYeZM/7uCJGxaal7l/JGi9wqzk0K1vsNh
         7qL6dJ3PvoajOHpb4MoTHGOH7TvWfes4ndwnpU8a0fgEv1Pr5htOAvsi2Qpvj41JobjL
         JMrCydbyzBvNlOvh5G1zQVfRuKVAO9/gdo78K0b3XDqFV/2STAfeMurhyvZtRc7SwG42
         X7NeznZn6ivEjz8TKQScgYgmCImPpV7AI4CGFAiql6XhwuwOT4Xcsd759VXRVFqtdI6M
         dTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760302755; x=1760907555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HfCCKZmM8pHKKYsT+xDhYQD00mwQ4CthcxXjlQ/ajbw=;
        b=vxXh0lx4tA00EvRhqNG6SpIIvS6SGCrJUm+LNZqdMHZDfzX2msxZxB6UrlS2ZcW/aU
         2zR6Pd7nL3+ceVHv2JgWHQtnHkT4ob5+sedrGi/2nzVRzeG5kfAAATXlfl5VQ+SJr8O6
         yaAJ2gafKdgbNF0FUU265LPJbgADJESDb7JpVrQdY0C2jDtpVVN3jTDyf/ULhkbjqXwq
         +lEZgodgKZraFc/NWOJHpfFrK5c36DpEUVFPLV9zozAdwx7I1/VaFHGI0/yZ6Uev28vg
         20aHm3dsXgX1aOtiw5m5pzfYv6gtv/txaZ5v+ZggsqjRI+4wO6fich4u/6MByg0j9Sow
         CXIA==
X-Forwarded-Encrypted: i=1; AJvYcCVoCKYL1j5G4IRQLlhIglw3IRmLaZGH5u73GcJflXhAPNNROvydAG1JdTCGgJqhEgawt8G0wLvVmkf9@vger.kernel.org
X-Gm-Message-State: AOJu0YyeB8bO574UzPrp+PRpILyGVDUFbAeeX6G+eAANjBFB+cOj3X3K
	aj0SIt5SKRx8phce+O/Hnfq2qEVPJsu+YKezENFx2c3VeM3ozte8APKD
X-Gm-Gg: ASbGncuPKgf9DY7ZpOpaIdtipGU+SC/ggPK0dnZ6AgTdWwRuEBiZief4bRxcG1tI9ha
	nkeivW33UR7ZDh92/ZOIVmFAMGNJUkxyvKizRNaSMWGOdEZb0h5aPUzybZ1O63ClIQIBH1qjyEn
	mbrq3L8Db1YNmjTmB6oClKB08HeF0cr5jizWVjRxr12GPyCOu0ad+Q5NRxE+DDbAF5PKEMdpYjB
	fvja+Z4sWFNK4QW/aUbPxfC+AReeoLsgV61XfVHQFtu41EHaiuFBKMRpUuTDU0zwuYhIkPFnXhF
	+89BgJqkLitIwF0wN3AI/gwn1CjgmHx+tlMNEJvEDtAUAiBrTbBXBDloaCbm3YpSNHMeqXm2N3/
	lfeasbBCLUTPR7aSbym6OEF0wddA+vhHaaKMmqVuz2BUQI6Ass3UdmY+5fhpM6vyvW40QCZTaG0
	jZcyBJvCDC
X-Google-Smtp-Source: AGHT+IH7sgN1Uipv2qIehYyfPkgfd4Xy/W9AcNWaxkV0fmExJBTYScLNQstD+s0qCJYHU+iZtjXiGQ==
X-Received: by 2002:a05:6000:4027:b0:401:2cbf:ccad with SMTP id ffacd0b85a97d-425829e78e9mr16695402f8f.17.1760302754926;
        Sun, 12 Oct 2025 13:59:14 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-92-177.ip49.fastwebnet.it. [93.34.92.177])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm156506505e9.10.2025.10.12.13.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 13:59:14 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v5 5/5] PCI: mediatek: add support for Airoha AN7583 SoC
Date: Sun, 12 Oct 2025 22:56:59 +0200
Message-ID: <20251012205900.5948-6-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251012205900.5948-1-ansuelsmth@gmail.com>
References: <20251012205900.5948-1-ansuelsmth@gmail.com>
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

Introduce a new flag to skip having to reset signals and also introduce
some additional logic to configure the PBUS registers required for
Airoha SoC.

While at it, also add additional info on the PERST# Signal delay
comments and use dedicated macro.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/pci/controller/pcie-mediatek.c | 92 ++++++++++++++++++++------
 1 file changed, 70 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 1678461e56d3..3340c005da4b 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -148,6 +148,7 @@ enum mtk_pcie_flags {
 	NO_MSI = BIT(2), /* Bridge has no MSI support, and relies on an
 			  * external block
 			  */
+	SKIP_PCIE_RSTB	= BIT(3), /* Skip calling RSTB bits on PCIe probe */
 };
 
 /**
@@ -684,28 +685,32 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 		regmap_update_bits(pcie->cfg, PCIE_SYS_CFG_V2, val, val);
 	}
 
-	/* Assert all reset signals */
-	writel(0, port->base + PCIE_RST_CTRL);
-
-	/*
-	 * Enable PCIe link down reset, if link status changed from link up to
-	 * link down, this will reset MAC control registers and configuration
-	 * space.
-	 */
-	writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
-
-	/*
-	 * Described in PCIe CEM specification sections 2.2 (PERST# Signal) and
-	 * 2.2.1 (Initial Power-Up (G3 to S0)). The deassertion of PERST# should
-	 * be delayed 100ms (TPVPERL) for the power and clock to become stable.
-	 */
-	msleep(100);
-
-	/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
-	val = readl(port->base + PCIE_RST_CTRL);
-	val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
-	       PCIE_MAC_SRSTB | PCIE_CRSTB;
-	writel(val, port->base + PCIE_RST_CTRL);
+	if (!(soc->flags & SKIP_PCIE_RSTB)) {
+		/* Assert all reset signals */
+		writel(0, port->base + PCIE_RST_CTRL);
+
+		/*
+		 * Enable PCIe link down reset, if link status changed from
+		 * link up to link down, this will reset MAC control registers
+		 * and configuration space.
+		 */
+		writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
+
+		/*
+		 * Described in PCIe CEM specification revision 3.0 sections
+		 * 2.2 (PERST# Signal) and 2.2.1 (Initial Power-Up (G3 to S0)).
+		 *
+		 * The deassertion of PERST# should be delayed 100ms (TPVPERL)
+		 * for the power and clock to become stable.
+		 */
+		msleep(PCIE_T_PVPERL_MS);
+
+		/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
+		val = readl(port->base + PCIE_RST_CTRL);
+		val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
+		       PCIE_MAC_SRSTB | PCIE_CRSTB;
+		writel(val, port->base + PCIE_RST_CTRL);
+	}
 
 	/* Set up vendor ID and class code */
 	if (soc->flags & NEED_FIX_CLASS_ID) {
@@ -826,6 +831,41 @@ static int mtk_pcie_startup_port(struct mtk_pcie_port *port)
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
@@ -1210,6 +1250,13 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
 	.flags = NEED_FIX_CLASS_ID,
 };
 
+static const struct mtk_pcie_soc mtk_pcie_soc_an7583 = {
+	.ops = &mtk_pcie_ops_v2,
+	.startup = mtk_pcie_startup_port_an7583,
+	.setup_irq = mtk_pcie_setup_irq,
+	.flags = NEED_FIX_CLASS_ID | SKIP_PCIE_RSTB,
+};
+
 static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 	.device_id = PCI_DEVICE_ID_MEDIATEK_7629,
 	.ops = &mtk_pcie_ops_v2,
@@ -1219,6 +1266,7 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 };
 
 static const struct of_device_id mtk_pcie_ids[] = {
+	{ .compatible = "airoha,an7583-pcie", .data = &mtk_pcie_soc_an7583 },
 	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
-- 
2.51.0


