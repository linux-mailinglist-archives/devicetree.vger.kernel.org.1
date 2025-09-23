Return-Path: <devicetree+bounces-220567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E07BB97776
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 22:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33C437A4137
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 20:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604AB30C370;
	Tue, 23 Sep 2025 20:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k78OxRq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E5D30C349
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 20:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758658383; cv=none; b=YqIfzMGe9h2Y+FuWI4eWr96OqytjarxWudeBytGu1J3LiHD+BfRA2dO56c2HAHYc4+aZIfqmcR9bN/ALz6qHfN7ASdZKB31++nGqkrYCFwq9yL8KXP6tG4Y9SFuMRpCVkwARHM7f7RXNNAz9mNniSOxOHmTprtXd/KhDLKZYM10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758658383; c=relaxed/simple;
	bh=gQpZKL9PYN00DxqOhZ2zLTrFv9ZJsPxReul3Hvo1omc=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qcyDboz3cOoCkAhnP6HH0eniBWo7qbwigxeFkU8vVUQL3li03KpS7ZhC8jK+tV5BE6/6kLh2JszjzlvK5NusZKAOI6rd/BW+hdr7WPtUiZr8YHIc3rRLzGoINZh9H6P/5PVIzSk30StxI4adUvFSr0xmpwz3XFyFOBCTWgIpIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k78OxRq0; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4060b4b1200so974439f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 13:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758658380; x=1759263180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aly97HE4DbfA98BoW1r98QzzxmSOsTSspnaWMcDHFeI=;
        b=k78OxRq0jDjdH/jSVoQ42tnSX4MziM/58G72QrK0KirNaygnUtcjxwaxFTP/bVEeHh
         V+hY5F8ghWi63phHNSGNo7fD0h4ynudLvkLnFTWbX80O07+c5QaGGoNke2Bw3cxVUPIh
         7qY+BVY8bd7wDncwtpd3JthZzFF6cKuCfaaIfjt7RL1r+M4s7mG5eBKQ/gUoN4KAmuBt
         xIOccVcifUXrDATGNVbJFl/OIc1kdVxALyVsfW//Yuf/YDhPpNBoGomOgC5m/DxiHz2u
         DkiSVUn++xV2q48Q685kX8Asv1h7pcDXDM4O2Q/9/go9hJhRzTa1ZaH6JQrRuBvn/ckY
         c71g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758658380; x=1759263180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aly97HE4DbfA98BoW1r98QzzxmSOsTSspnaWMcDHFeI=;
        b=SX7IHHoGw2K78lx0MqWsYF/cabPgbaZS0LYY9QEmoxo3RSD3lT/oWr4r2sX6Ep2a+Z
         6ph1x3PqzqFTkYH4YorJttCLC1WlpDrIVfNEVvr4sWBnGmnMlG3VGn5IPz2EKcLPEJDd
         iTY2iqxJi8/IgshMKGFy80z6zLmIiCtcvhfM8f4uNS4espZzZRNV/GLPKqKxl57AP5xN
         be8oW05tdh05Mkvn1/6FW7dPxGYWS6/bp7sxLICAMztxYMFhIO7WqG05/Yy7CpOL5GwI
         1dvqPkWxnsN5TXb9Se8CTo8HpXKtAKjccDj29/DSJBbaP7Ali4UyUNCFuwMv8lPZpMkM
         9Wag==
X-Forwarded-Encrypted: i=1; AJvYcCUWBTTSwV48FLgkw1x6fMW3/CFvGhlp+TGgInxYvr1zHorqiRgGpW9Tj2jyFfNKXLCN6S6WhEVkknUs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5SKtHAinCbuaZ6T6fgebTqTQpagiq3za2Itb9ssMWR3q3xbuL
	Sibah36urVkX4jZT6mEWqt1Hb49uZE1ckG26Toba/ukOG57bd+yJNRgj
X-Gm-Gg: ASbGncun9qZS/76Oj9M1hwHy/y9/GVk1lSrAj4kCrVkVNFYozhljzFxZ8+Y8qIm7rSc
	rKT/sSPsDLG25z7+1QXWDHVn4cqmbL55r0t+NeLaKFMKniAdvC5FKda79IRrb0gKILVqWJYidjN
	6IU8H4PXYxDGLGLjJsjeEERG6Yd0DHTzS11RMmFpBADDTR2EC4kYz2mccdYY5y30nCEMfKplfJl
	dDKt2qZeAlAtykJJpUEhm3AtgHLVh04eXSuleXfZlk87SzjjUmNkj6II3/THyjIeT7IJMSEuHvK
	imYG1OZpIRoe0lj7IWNELhgwZ6TvW8ZQ6Vhq8uRMJEnNCR6i8DoLqYfLN5B38vX9a31E8UJnD3Y
	Ya2653torKcrdGiM2GmXy4nmAox42VlNak5YLPpzlUViN0uUvOvZYb91GcIKHiPBLKTYTqbo=
X-Google-Smtp-Source: AGHT+IFbHn8VL6NabBiNOJDmra87r8MK+4nqnknbe3Uap+qkSdJFvH4B0H/cqDTPX4N5G1MGJJWP8Q==
X-Received: by 2002:a5d:5889:0:b0:3ec:d78d:8fde with SMTP id ffacd0b85a97d-405cb7bbd49mr3615361f8f.44.1758658379499;
        Tue, 23 Sep 2025 13:12:59 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee141e9cf7sm24889690f8f.12.2025.09.23.13.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 13:12:59 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-pci@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH v2 4/4] PCI: mediatek: add support for Airoha AN7583 SoC
Date: Tue, 23 Sep 2025 22:12:32 +0200
Message-ID: <20250923201244.952-5-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250923201244.952-1-ansuelsmth@gmail.com>
References: <20250923201244.952-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the second PCIe line present on Airoha AN7583 SoC.

This is based on the Mediatek Gen1/2 PCIe driver and similar to Gen3
also require workaround for the reset signals.

Introduce a new bool to skip having to reset signals and also introduce
some additional logic to configure the PBUS registers required for
Airoha SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/pci/controller/pcie-mediatek.c | 85 +++++++++++++++++++-------
 1 file changed, 63 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 24cc30a2ab6c..640d1f1a6478 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -147,6 +147,7 @@ struct mtk_pcie_port;
  * @need_fix_class_id: whether this host's class ID needed to be fixed or not
  * @need_fix_device_id: whether this host's device ID needed to be fixed or not
  * @no_msi: Bridge has no MSI support, and relies on an external block
+ * @skip_pcie_rstb: Skip calling RSTB bits on PCIe probe
  * @device_id: device ID which this host need to be fixed
  * @ops: pointer to configuration access functions
  * @startup: pointer to controller setting functions
@@ -156,6 +157,7 @@ struct mtk_pcie_soc {
 	bool need_fix_class_id;
 	bool need_fix_device_id;
 	bool no_msi;
+	bool skip_pcie_rstb;
 	unsigned int device_id;
 	struct pci_ops *ops;
 	int (*startup)(struct mtk_pcie_port *port);
@@ -679,28 +681,30 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
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
+	if (!soc->skip_pcie_rstb) {
+		/* Assert all reset signals */
+		writel(0, port->base + PCIE_RST_CTRL);
+
+		/*
+		 * Enable PCIe link down reset, if link status changed from link up to
+		 * link down, this will reset MAC control registers and configuration
+		 * space.
+		 */
+		writel(PCIE_LINKDOWN_RST_EN, port->base + PCIE_RST_CTRL);
+
+		/*
+		 * Described in PCIe CEM specification sections 2.2 (PERST# Signal) and
+		 * 2.2.1 (Initial Power-Up (G3 to S0)). The deassertion of PERST# should
+		 * be delayed 100ms (TPVPERL) for the power and clock to become stable.
+		 */
+		msleep(100);
+
+		/* De-assert PHY, PE, PIPE, MAC and configuration reset	*/
+		val = readl(port->base + PCIE_RST_CTRL);
+		val |= PCIE_PHY_RSTB | PCIE_PERSTB | PCIE_PIPE_SRSTB |
+		       PCIE_MAC_SRSTB | PCIE_CRSTB;
+		writel(val, port->base + PCIE_RST_CTRL);
+	}
 
 	/* Set up vendor ID and class code */
 	if (soc->need_fix_class_id) {
@@ -1105,6 +1109,33 @@ static int mtk_pcie_probe(struct platform_device *pdev)
 	if (err)
 		goto put_resources;
 
+	if (device_is_compatible(dev, "airoha,an7583-pcie")) {
+		struct resource_entry *entry;
+		struct regmap *pbus_regmap;
+		resource_size_t addr;
+		u32 args[2], size;
+
+		/*
+		 * Configure PBus base address and base address mask to allow the
+		 * hw to detect if a given address is accessible on PCIe controller.
+		 */
+		pbus_regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
+								   "mediatek,pbus-csr",
+								   ARRAY_SIZE(args),
+								   args);
+		if (IS_ERR(pbus_regmap))
+			return PTR_ERR(pbus_regmap);
+
+		entry = resource_list_first_type(&host->windows, IORESOURCE_MEM);
+		if (!entry)
+			return -ENODEV;
+
+		addr = entry->res->start - entry->offset;
+		regmap_write(pbus_regmap, args[0], lower_32_bits(addr));
+		size = lower_32_bits(resource_size(entry->res));
+		regmap_write(pbus_regmap, args[1], GENMASK(31, __fls(size)));
+	}
+
 	return 0;
 
 put_resources:
@@ -1205,6 +1236,15 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
 	.setup_irq = mtk_pcie_setup_irq,
 };
 
+static const struct mtk_pcie_soc mtk_pcie_soc_an7583 = {
+	.skip_pcie_rstb = true,
+	.need_fix_class_id = true,
+	.need_fix_device_id = false,
+	.ops = &mtk_pcie_ops_v2,
+	.startup = mtk_pcie_startup_port_v2,
+	.setup_irq = mtk_pcie_setup_irq,
+};
+
 static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 	.need_fix_class_id = true,
 	.need_fix_device_id = true,
@@ -1215,6 +1255,7 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
 };
 
 static const struct of_device_id mtk_pcie_ids[] = {
+	{ .compatible = "airoha,an7583-pcie", .data = &mtk_pcie_soc_an7583 },
 	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
 	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
-- 
2.51.0


