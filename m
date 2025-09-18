Return-Path: <devicetree+bounces-212806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85820B43C96
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52FB11C8042E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A911930102F;
	Thu,  4 Sep 2025 13:07:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AABA72F28E0
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756991273; cv=none; b=Wf1c1XtBufAZgUx053ZfLiYc749vC5LgAmGHUgjBXcJ5KsGScLmN7+L/oQRXAu6EMjwPa6A/AS79xf+ITe6Oisb1tvqz2r5/DwLe3FUn60kSEppUMWLNulWEIlBYTNh9mzNmIDf3dHseB+o7Wnh4IKnX36XwtxWmnzpuIk29gXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756991273; c=relaxed/simple;
	bh=DhE0eL3FCB3LnEeDU37nVit4zSnZ+uCwievCawz5WA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WEV6R1KtPwBoaJ7VvweUxSkD9f57besT3Bu4mBfTDsNOTxMl0V6J4Szekz5h9aJmPABN0gwQ34FO9J2pd0j2ww7qE2unRFMyGJCSRt+DvkrhHCpla6aRpCFE2o9Nox/v36rHP4My7FYmf761qTe9ih2+BePrH50WpPWQmaUtjtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.89])
	by gateway (Coremail) with SMTP id _____8BxmdEmj7lomqwGAA--.14230S3;
	Thu, 04 Sep 2025 21:07:50 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.89])
	by front1 (Coremail) with SMTP id qMiowJAxfcEIj7lotA5+AA--.16416S5;
	Thu, 04 Sep 2025 21:07:49 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v4 7/7] mtd: rawnand: loongson: Add Loongson-2K1000 NAND controller support
Date: Thu,  4 Sep 2025 21:07:11 +0800
Message-ID: <b9e9dd704ad62290218757e9ba9ea8c14d0e6878.1756991031.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1756991031.git.zhoubinbin@loongson.cn>
References: <cover.1756991031.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJAxfcEIj7lotA5+AA--.16416S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxGw45WFW3CrW8uF47Ar4UJrc_yoWrJr48pa
	yUAay3KFW5tF45ua98tayrCF13Z34ftr9rJa9rW34Ik3sxJ3srWFy8GF1YvF4Yvry2gr12
	qFyFgas7CFsrXrbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUm0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AK
	xVW0oVCq3wAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0c
	Ia020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_ZF0_
	GryDMcIj6I8E87Iv67AKxVW8Jr0_Cr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x
	0EwIxGrwACjcxG6xCI17CEII8vrVW3JVW8Jr1lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IY
	c2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxV
	Aqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q
	6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6x
	kF7I0E14v26r4UJVWxJr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE
	14v26r4UJVWxJr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0x
	ZFpf9x07bYoGQUUUUU=

The Loongson-2K1000 NAND controller is also similar to the Loongson-1C.

It supports a maximum capacity of 16GB FLASH per chip with a maximum
page size of 8KB, and it supports up to 4 chip selects and 4 RDY
signals.

The key difference from the Loongson-2K0500 is that it requires explicit
configuration of the DMA control route. Typically, it is configured as
APBDMA0.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../mtd/nand/raw/loongson-nand-controller.c   | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/mtd/nand/raw/loongson-nand-controller.c
index 427a0daf8c55..8490412d5be1 100644
--- a/drivers/mtd/nand/raw/loongson-nand-controller.c
+++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
@@ -74,6 +74,14 @@
 
 #define BITS_PER_WORD			(4 * BITS_PER_BYTE)
 
+/* Loongson-2K1000 NAND DMA routing register */
+#define LS2K1000_NAND_DMA_MASK         GENMASK(2, 0)
+#define LS2K1000_DMA0_CONF             0x0
+#define LS2K1000_DMA1_CONF             0x1
+#define LS2K1000_DMA2_CONF             0x2
+#define LS2K1000_DMA3_CONF             0x3
+#define LS2K1000_DMA4_CONF             0x4
+
 struct loongson_nand_host;
 
 struct loongson_nand_op {
@@ -103,6 +111,7 @@ struct loongson_nand_data {
 	unsigned int wait_cycle;
 	unsigned int nand_cs;
 	unsigned int dma_bits;
+	int (*dma_config)(struct device *dev);
 	void (*set_addr)(struct loongson_nand_host *host, struct loongson_nand_op *op);
 };
 
@@ -759,6 +768,23 @@ static void loongson_nand_controller_cleanup(struct loongson_nand_host *host)
 		dma_release_channel(host->dma_chan);
 }
 
+static int ls2k1000_nand_apbdma_config(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	void __iomem *regs;
+	int val;
+
+	regs = devm_platform_ioremap_resource_byname(pdev, "dma-config");
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
+	val = readl(regs);
+	val |= FIELD_PREP(LS2K1000_NAND_DMA_MASK, LS2K1000_DMA0_CONF);
+	writel(val, regs);
+
+	return 0;
+}
+
 static int loongson_nand_controller_init(struct loongson_nand_host *host)
 {
 	struct device *dev = host->dev;
@@ -787,6 +813,12 @@ static int loongson_nand_controller_init(struct loongson_nand_host *host)
 
 	regmap_write(host->regmap, LOONGSON_NAND_CS_RDY_MAP, val);
 
+	if (host->data->dma_config) {
+		ret = host->data->dma_config(dev);
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to config DMA routing\n");
+	}
+
 	chan = dma_request_chan(dev, "rxtx");
 	if (IS_ERR(chan))
 		return dev_err_probe(dev, PTR_ERR(chan), "failed to request DMA channel\n");
@@ -941,6 +973,19 @@ static const struct loongson_nand_data ls2k0500_nand_data = {
 	.set_addr = ls1c_nand_set_addr,
 };
 
+static const struct loongson_nand_data ls2k1000_nand_data = {
+	.max_id_cycle = 6,
+	.id_cycle_field = GENMASK(14, 12),
+	.status_field = GENMASK(23, 16),
+	.op_scope_field = GENMASK(29, 16),
+	.hold_cycle = 0x4,
+	.wait_cycle = 0x12,
+	.nand_cs = 0x2,
+	.dma_bits = 64,
+	.dma_config = ls2k1000_nand_apbdma_config,
+	.set_addr = ls1c_nand_set_addr,
+};
+
 static const struct of_device_id loongson_nand_match[] = {
 	{
 		.compatible = "loongson,ls1b-nand-controller",
@@ -954,6 +999,10 @@ static const struct of_device_id loongson_nand_match[] = {
 		.compatible = "loongson,ls2k0500-nand-controller",
 		.data = &ls2k0500_nand_data,
 	},
+	{
+		.compatible = "loongson,ls2k1000-nand-controller",
+		.data = &ls2k1000_nand_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, loongson_nand_match);
-- 
2.47.3


