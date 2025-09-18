Return-Path: <devicetree+bounces-203068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD7FB1FEF1
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B54216D690
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 06:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA94277C96;
	Mon, 11 Aug 2025 06:04:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECBF718FC91
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754892248; cv=none; b=rmt087c/oEBOJiXt4Q27N/fNUY9kjYaOtkmkjKos/PAlrGNdOpyFsti7ZAQtDetkTNx8YNVTSWEqCFCQrZPEd9WXxrG5YrCzwah6Ou/mZk3NzY7leYcbFir/tpQ1ynbHEUyUsLfvsjdL0fZRCXaLZiVMuvxABeCjp8AVYg9f6Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754892248; c=relaxed/simple;
	bh=iVvz6MUwXjAPHbA64SONI9wIhMXsfDth8lSOTjCKqVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WezqJA2bl20YPJg/TFz6ydF2/hJ5YickGVUnbE83gsNydsaTQQ2ZdY5iOxmBWyRkrp2Smna1ovL28fYt86k9xyoapsnFi1hpuCEoChlx5WpAnhw1j47+SCLNmUmsZEg4a3Z4RGojo/pGyB98N91xN40tJhTmyQ28JEmUa+aniLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8Bx22rTh5loLUM+AQ--.17557S3;
	Mon, 11 Aug 2025 14:04:03 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJBxzsHMh5loslVCAA--.24696S2;
	Mon, 11 Aug 2025 14:03:58 +0800 (CST)
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
Subject: [PATCH v2 8/8] mtd: rawnand: loongson: Add Loongson-2K1000 NAND controller support
Date: Mon, 11 Aug 2025 14:03:48 +0800
Message-ID: <1097082673acb35e41c07937a24c184eb7000437.1754890670.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1754890670.git.zhoubinbin@loongson.cn>
References: <cover.1754890670.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJBxzsHMh5loslVCAA--.24696S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxGw45WFW3CrW8Cr1UXw48Zrc_yoW5Kr47pa
	y5Aay3KFy5KF4Y9a98tayrCr13Z34fJr9rJFZrW34xK3s3J3srWFy8GF10qF4avryfXryx
	ZFyvgas7uFsrXrbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBlb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Cr1j6rxdM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVW3
	AVW8Xw1lYx0Ex4A2jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
	Ij64vIr41lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1lIxAIcV
	CF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26F4j6r4UJwCI42IY6I8E87Iv
	6xkF7I0E14v26r4UJVWxJrUvcSsGvfC2KfnxnUUI43ZEXa7IU08-BtUUUUU==

The Loongson-2K1000 NAND controller is also similar to the Loongson-1C.

It supports a maximum capacity of 16GB FLASH per chip with a maximum
page size of 8KB, and it supports up to 4 chip selects and 4 RDY
signals.

The key difference from the Loongson-2K0500 is that it requires explicit
configuration of the DMA control route. Typically, it is configured as
APBDMA0.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../mtd/nand/raw/loongson-nand-controller.c   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/mtd/nand/raw/loongson-nand-controller.c
index 7a15df3fcd31..9c377062a3a1 100644
--- a/drivers/mtd/nand/raw/loongson-nand-controller.c
+++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
@@ -73,9 +73,18 @@
 #define LOONGSON_NAND_READ_ID_TIMEOUT_US	5000
 
 #define LOONGSON_NAND_64BIT_DMA		BIT(0)
+#define LOONGSON_NAND_DMA_CONFIG	BIT(1)
 
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
@@ -768,6 +777,23 @@ static void loongson_nand_controller_cleanup(struct loongson_nand_host *host)
 		dma_release_channel(host->dma_chan);
 }
 
+static int ls2k1000_nand_apbdma_config(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	void __iomem *regs;
+	int val;
+
+	regs = devm_platform_ioremap_resource(pdev, 2);
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
@@ -786,6 +812,12 @@ static int loongson_nand_controller_init(struct loongson_nand_host *host)
 	if (host->data->flags & LOONGSON_NAND_64BIT_DMA)
 		dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
 
+	if (host->data->flags & LOONGSON_NAND_DMA_CONFIG) {
+		ret = ls2k1000_nand_apbdma_config(dev);
+		if (ret)
+			return ret;
+	}
+
 	chan = dma_request_chan(dev, "rxtx");
 	if (IS_ERR(chan))
 		return dev_err_probe(dev, PTR_ERR(chan), "failed to request DMA channel\n");
@@ -950,6 +982,18 @@ static const struct loongson_nand_data ls2k0500_nand_data = {
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
+	.flags = LOONGSON_NAND_64BIT_DMA | LOONGSON_NAND_DMA_CONFIG,
+	.set_addr = ls1c_nand_set_addr,
+};
+
 static const struct of_device_id loongson_nand_match[] = {
 	{
 		.compatible = "loongson,ls1b-nand-controller",
@@ -963,6 +1007,10 @@ static const struct of_device_id loongson_nand_match[] = {
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


