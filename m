Return-Path: <devicetree+bounces-207220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE2CB2EE66
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9843BA0619B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6132E7196;
	Thu, 21 Aug 2025 06:39:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 612DE2E3B0D
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758395; cv=none; b=dJg16rO2G4iEsNedeSOxh85+FGJSaF+Y+f9j3hlwKvnvO63k+kHV3xT/5oEPHVtSM7SafsrMPxJ0yySoG0Mdcumkq8fA8zOxhBjk2CjpG3PmrK+BlyC7fShKIndiqOJ9QB3tm7jiejlTvcmF4L6j+vtebWTsA4lFFeVQIniRZh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758395; c=relaxed/simple;
	bh=Gh6oF+rb9ZQDlhn6aHNj/BL/YeuRVpM/kp+ZICOMNco=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mBOjlToFKdSyA4Um3oO+Sive4T8I1Lv2Ls8TNd+9vJDkvScDAzsD3E2HH3gIIaOoUv0L1zfVupMKZ0Ju+c1HLMn7xtt1lkW8993QpjLPEbuEkPhx66yuGq63pn7i2UtZ4Asf+yoCBragD6xR90JyelcKgf+oimAj78B0IV8uoGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8Bx1tApv6Zo8E0BAA--.2387S3;
	Thu, 21 Aug 2025 14:39:37 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJDxrcEhv6ZowvRcAA--.65049S3;
	Thu, 21 Aug 2025 14:39:36 +0800 (CST)
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
Subject: [PATCH v3 5/7] mtd: rawnand: loongson: Add Loongson-2K0500 NAND controller support
Date: Thu, 21 Aug 2025 14:39:19 +0800
Message-ID: <589b4dfab9c1edd95fa05cba80ec58ea9ca099da.1755757841.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1755757841.git.zhoubinbin@loongson.cn>
References: <cover.1755757841.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJDxrcEhv6ZowvRcAA--.65049S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Jw13JFykCr17XF4xGryUArc_yoWxGrWUpr
	45Zay3Krs7KF42ka1Yqa45Cr1fZ34fJryDAa1qv3yjgwnxJw1jga4UCF4Syr12yr1rWryx
	uFWku39Y9anxJwbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6rxl6s0DM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
	kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWrXVW3
	AwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwCY1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWU
	JVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4
	vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IY
	x2IY67AKxVW7JVWDJwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK8V
	AvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWxJVW8Jr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0eOJUUUUUU==

The Loongson-2K0500 NAND controller is similar to the Loongson-1C.

It supports a maximum capacity of 16GB FLASH per chip with a maximum
page size of 8KB, and it supports up to 4 chip selects and 4 RDY
signals.

Its DMA controller is defaulted to APBDMA0.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/mtd/nand/raw/Kconfig                  |  2 +-
 .../mtd/nand/raw/loongson-nand-controller.c   | 52 ++++++++++++++++++-
 2 files changed, 51 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index d9e3f13666ac..7b0c5d06aa95 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -464,7 +464,7 @@ config MTD_NAND_NUVOTON_MA35
 
 config MTD_NAND_LOONGSON
 	tristate "Loongson NAND controller"
-	depends on LOONGSON1_APB_DMA || COMPILE_TEST
+	depends on LOONGSON1_APB_DMA || LOONGSON2_APB_DMA || COMPILE_TEST
 	select REGMAP_MMIO
 	help
 	  Enables support for NAND controller on Loongson family chips.
diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/mtd/nand/raw/loongson-nand-controller.c
index b26d1e133594..7b331d0ca2f0 100644
--- a/drivers/mtd/nand/raw/loongson-nand-controller.c
+++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
@@ -3,6 +3,7 @@
  * NAND Controller Driver for Loongson family chips
  *
  * Copyright (C) 2015-2025 Keguang Zhang <keguang.zhang@gmail.com>
+ * Copyright (C) 2025 Binbin Zhou <zhoubinbin@loongson.cn>
  */
 
 #include <linux/kernel.h>
@@ -26,6 +27,7 @@
 #define LOONGSON_NAND_IDH_STATUS	0x14
 #define LOONGSON_NAND_PARAM		0x18
 #define LOONGSON_NAND_OP_NUM		0x1c
+#define LOONGSON_NAND_CS_RDY_MAP	0x20
 
 /* Bitfields of nand command register */
 #define LOONGSON_NAND_CMD_OP_DONE	BIT(10)
@@ -40,6 +42,23 @@
 #define LOONGSON_NAND_CMD_READ		BIT(1)
 #define LOONGSON_NAND_CMD_VALID		BIT(0)
 
+/* Bitfields of nand cs/rdy map register */
+#define LOONGSON_NAND_MAP_CS1_SEL	GENMASK(11, 8)
+#define LOONGSON_NAND_MAP_RDY1_SEL	GENMASK(15, 12)
+#define LOONGSON_NAND_MAP_CS2_SEL	GENMASK(19, 16)
+#define LOONGSON_NAND_MAP_RDY2_SEL	GENMASK(23, 20)
+#define LOONGSON_NAND_MAP_CS3_SEL	GENMASK(27, 24)
+#define LOONGSON_NAND_MAP_RDY3_SEL	GENMASK(31, 28)
+
+#define LOONGSON_NAND_CS_SEL0	BIT(0)
+#define LOONGSON_NAND_CS_SEL1	BIT(1)
+#define LOONGSON_NAND_CS_SEL2	BIT(2)
+#define LOONGSON_NAND_CS_SEL3	BIT(3)
+#define LOONGSON_NAND_CS_RDY0	BIT(0)
+#define LOONGSON_NAND_CS_RDY1	BIT(1)
+#define LOONGSON_NAND_CS_RDY2	BIT(2)
+#define LOONGSON_NAND_CS_RDY3	BIT(3)
+
 /* Bitfields of nand timing register */
 #define LOONGSON_NAND_WAIT_CYCLE_MASK	GENMASK(7, 0)
 #define LOONGSON_NAND_HOLD_CYCLE_MASK	GENMASK(15, 8)
@@ -53,6 +72,8 @@
 #define LOONGSON_NAND_READ_ID_SLEEP_US		1000
 #define LOONGSON_NAND_READ_ID_TIMEOUT_US	5000
 
+#define LOONGSON_NAND_64BIT_DMA		BIT(0)
+
 #define BITS_PER_WORD			(4 * BITS_PER_BYTE)
 
 struct loongson_nand_host;
@@ -83,6 +104,7 @@ struct loongson_nand_data {
 	unsigned int hold_cycle;
 	unsigned int wait_cycle;
 	unsigned int nand_cs;
+	unsigned int flags;
 	void (*set_addr)(struct loongson_nand_host *host, struct loongson_nand_op *op);
 };
 
@@ -745,7 +767,7 @@ static int loongson_nand_controller_init(struct loongson_nand_host *host)
 	struct device *dev = host->dev;
 	struct dma_chan *chan;
 	struct dma_slave_config cfg = {};
-	int ret;
+	int ret, val;
 
 	host->regmap = devm_regmap_init_mmio(dev, host->reg_base, &loongson_nand_regmap_config);
 	if (IS_ERR(host->regmap))
@@ -755,6 +777,9 @@ static int loongson_nand_controller_init(struct loongson_nand_host *host)
 		regmap_update_bits(host->regmap, LOONGSON_NAND_PARAM, host->data->id_cycle_field,
 				   host->data->max_id_cycle << __ffs(host->data->id_cycle_field));
 
+	if (host->data->flags & LOONGSON_NAND_64BIT_DMA)
+		dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+
 	chan = dma_request_chan(dev, "rxtx");
 	if (IS_ERR(chan))
 		return dev_err_probe(dev, PTR_ERR(chan), "failed to request DMA channel\n");
@@ -770,7 +795,14 @@ static int loongson_nand_controller_init(struct loongson_nand_host *host)
 
 	init_completion(&host->dma_complete);
 
-	return 0;
+	val = FIELD_PREP(LOONGSON_NAND_MAP_CS1_SEL, LOONGSON_NAND_CS_SEL1)
+	    | FIELD_PREP(LOONGSON_NAND_MAP_RDY1_SEL, LOONGSON_NAND_CS_RDY1)
+	    | FIELD_PREP(LOONGSON_NAND_MAP_CS2_SEL, LOONGSON_NAND_CS_SEL2)
+	    | FIELD_PREP(LOONGSON_NAND_MAP_RDY2_SEL, LOONGSON_NAND_CS_RDY2)
+	    | FIELD_PREP(LOONGSON_NAND_MAP_CS3_SEL, LOONGSON_NAND_CS_SEL3)
+	    | FIELD_PREP(LOONGSON_NAND_MAP_RDY3_SEL, LOONGSON_NAND_CS_RDY3);
+
+	return regmap_write(host->regmap, LOONGSON_NAND_CS_RDY_MAP, val);
 }
 
 static int loongson_nand_chip_init(struct loongson_nand_host *host)
@@ -896,6 +928,17 @@ static const struct loongson_nand_data ls1c_nand_data = {
 	.set_addr = ls1c_nand_set_addr,
 };
 
+static const struct loongson_nand_data ls2k0500_nand_data = {
+	.max_id_cycle = 6,
+	.id_cycle_field = GENMASK(14, 12),
+	.status_field = GENMASK(23, 16),
+	.op_scope_field = GENMASK(29, 16),
+	.hold_cycle = 0x4,
+	.wait_cycle = 0x12,
+	.flags = LOONGSON_NAND_64BIT_DMA,
+	.set_addr = ls1c_nand_set_addr,
+};
+
 static const struct of_device_id loongson_nand_match[] = {
 	{
 		.compatible = "loongson,ls1b-nand-controller",
@@ -905,6 +948,10 @@ static const struct of_device_id loongson_nand_match[] = {
 		.compatible = "loongson,ls1c-nand-controller",
 		.data = &ls1c_nand_data,
 	},
+	{
+		.compatible = "loongson,ls2k0500-nand-controller",
+		.data = &ls2k0500_nand_data,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, loongson_nand_match);
@@ -921,5 +968,6 @@ static struct platform_driver loongson_nand_driver = {
 module_platform_driver(loongson_nand_driver);
 
 MODULE_AUTHOR("Keguang Zhang <keguang.zhang@gmail.com>");
+MODULE_AUTHOR("Binbin Zhou <zhoubinbin@loongson.cn>");
 MODULE_DESCRIPTION("Loongson NAND Controller Driver");
 MODULE_LICENSE("GPL");
-- 
2.47.3


