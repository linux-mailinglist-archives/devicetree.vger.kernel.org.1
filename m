Return-Path: <devicetree+bounces-219174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD2CB8845A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C62A1C872FB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1F72E9755;
	Fri, 19 Sep 2025 07:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="fdE34BRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CE02EAB8E
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758268331; cv=none; b=KAJPSQ3p/kk6asJGW+bQBF4wrrgzQrHe6E4cfJ4I7uoP4jMA/gGcjnFJiAPsylifP5+6noJia+0yvhokmx08x1Awfyjy6ookYfZOeX5RR57C9Kcs0j7qldOHZ3mrunGMryPo33UBFSoxEt9DA21eoGgU+znQNAsiw3gj95L03vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758268331; c=relaxed/simple;
	bh=9jaUyE8YhxdeVtylMCC8Ao4iQ0WQk4RAVwwltRlEmd4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n5sj1+7YUynuW/+KXDr4VINZ5qjoz7V+2zAvc7oBZ1Zzbhw4cS5dmfNpNT86S2iI60sNmoU3g3yUaVi9AWzpaHMFEwyjqODkvc5W0A7zBDEXuE2icq9NGzSTBKuqqS+mG76udtyZ7HVT7snrV+/64oNzHnhk5IL2K9wnO+AbHsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=fdE34BRP; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1758268326; x=1758873126;
	i=markus.stockhausen@gmx.de;
	bh=oEa0L7FbM9XvrVKFnCJx/fu7l5UctB4qVBiWK2MRf8I=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=fdE34BRPvtHR6OItNCO+AGmVP4PwKgxP6/s2bROkgESwnnQK9KYptS+gG1u4BeJv
	 EQyA4KWZe5oMKf4EVZpKhqdpWewrGcS7n4BUYvhemgGtiWeujTnwC57Sl20Jv3ygE
	 GmY/Gtw9cw+R8LKUq4Kn8ltF7lVxT0gJjDVwECxn5GacqJtzre47icPyFyI2kcExG
	 s2IyCYMreRTcD/Flk8KR8x6czlJ3pVs03465h6T9HfgI/9WSCog416aD2h7PSvI5c
	 r0wElsruwNbSZilOVAh5QyGrMlmP5sd6O+2pl/3T1iEmAR01Fln5Kc6jm6Hr4UZea
	 QgW9+Bqx+jdcviux9w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N3bSj-1uI1pN1ySp-014ZNH; Fri, 19
 Sep 2025 09:52:06 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v3 2/2] mtd: nand: realtek-ecc: Add Realtek external ECC engine support
Date: Fri, 19 Sep 2025 03:52:01 -0400
Message-ID: <20250919075201.4177901-3-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250919075201.4177901-1-markus.stockhausen@gmx.de>
References: <20250919075201.4177901-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:6FeGTinIOU7D8sftuU1bxwZRKxRH3tzeMngns4TmhTvdu+cOUTq
 up75DuBhVR3hFCfuILYjTGg9ldMueVJ2u8XNgJ2ISbXlYP/mfS7iUNrwiCergj4703iOgOz
 vol1bC2fPlZBuSohDF1Og0QSjZxdS3w/8M/bFsu7ZNcXND33/gR7ijJTAZ3LA6pe9dP4n6F
 9liinE1PApWT+VRiDS0yA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jdHwryy88L8=;+8opi+NVBuIL/mnQJFbX5jz8Jiy
 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

The Realtek RTl93xx switch SoC series has a built in ECC controller
that can provide BCH6 or BCH12 over 512 data and 6 tag bytes. It
generates 10 (BCH6) or 20 (BCH12) bytes of parity.

This engine will most likely work in conjunction with the Realtek
spi-mem based NAND controller but can work on its own. Therefore
the initial implementation will be of type external.

Remark! The engine can support any data blocks that are multiples
of 512 bytes. For now limit it to data+oob layouts that have been
analyzed from existing devices. This way it keeps compatibility
and pre-existing vendor data can be read.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
Changes in v3:
- remember strength in context
- increase timeout to one second when waiting for hardware
- use software fallback to detect bitflips in erased blocks
- 2 minor style fixups from last feedback

Changes in v2:
- include bitfield.h
- fill mtd->ecc_stats.corrected
- Reduce chattiness with dev_dbg()
- Convert return codes from context based to function based
- Add more documentation about vendor specifications
- Convert variables from vendor style to kernel style (e.g. tag)
=2D--
 drivers/mtd/nand/Kconfig       |   8 +
 drivers/mtd/nand/Makefile      |   1 +
 drivers/mtd/nand/ecc-realtek.c | 464 +++++++++++++++++++++++++++++++++
 3 files changed, 473 insertions(+)
 create mode 100644 drivers/mtd/nand/ecc-realtek.c

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 5b0c2c95f10c..4a17271076bc 100644
=2D-- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -61,6 +61,14 @@ config MTD_NAND_ECC_MEDIATEK
 	help
 	  This enables support for the hardware ECC engine from Mediatek.
=20
+config MTD_NAND_ECC_REALTEK
+        tristate "Realtek RTL93xx hardware ECC engine"
+        depends on HAS_IOMEM
+        depends on MACH_REALTEK_RTL || COMPILE_TEST
+        select MTD_NAND_ECC
+        help
+          This enables support for the hardware ECC engine from Realtek.
+
 endmenu
=20
 endmenu
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 44913ff1bf12..2e0e56267718 100644
=2D-- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -3,6 +3,7 @@
 nandcore-objs :=3D core.o bbt.o
 obj-$(CONFIG_MTD_NAND_CORE) +=3D nandcore.o
 obj-$(CONFIG_MTD_NAND_ECC_MEDIATEK) +=3D ecc-mtk.o
+obj-$(CONFIG_MTD_NAND_ECC_REALTEK) +=3D ecc-realtek.o
 obj-$(CONFIG_SPI_QPIC_SNAND) +=3D qpic_common.o
 obj-$(CONFIG_MTD_NAND_QCOM) +=3D qpic_common.o
 obj-y	+=3D onenand/
diff --git a/drivers/mtd/nand/ecc-realtek.c b/drivers/mtd/nand/ecc-realtek=
.c
new file mode 100644
index 000000000000..7d718934c909
=2D-- /dev/null
+++ b/drivers/mtd/nand/ecc-realtek.c
@@ -0,0 +1,464 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Support for Realtek hardware ECC engine in RTL93xx SoCs
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dma-mapping.h>
+#include <linux/mtd/nand.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+/*
+ * The Realtek ECC engine has two operation modes.
+ *
+ * - BCH6  : Generate 10 ECC bytes from 512 data bytes plus 6 free bytes
+ * - BCH12 : Generate 20 ECC bytes from 512 data bytes plus 6 free bytes
+ *
+ * It can run for arbitrary NAND flash chips with different block and OOB=
 sizes. Currently there
+ * are only two known devices in the wild that have NAND flash and make u=
se of this ECC engine
+ * (Linksys LGS328C & LGS352C). To keep compatibility with vendor firmwar=
e, new modes can only
+ * be added when new data layouts have been analyzed. For now allow BCH6 =
on flash with 2048 byte
+ * blocks and 64 bytes oob.
+ *
+ * This driver aligns with kernel ECC naming conventions. Neverthless a s=
hort notice on the
+ * Realtek naming conventions for the different structures in the OOB are=
a.
+ *
+ * - BBI      : Bad block indicator. The first two bytes of OOB. Protecte=
d by ECC!
+ * - tag      : 6 User/free bytes. First tag "contains" 2 bytes BBI. Prot=
ected by ECC!
+ * - syndrome : ECC/parity bytes
+ *
+ * Altogether this gives currently the following block layout.
+ *
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ * |  512 |  512 |  512 |  512 |   2 |    4 |    6 |    6 |    6 |  10 | =
 10 |  10 |  10 |
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ * | data | data | data | data | BBI | free | free | free | free | ECC | =
ECC | ECC | ECC |
+ * +------+------+------+------+-----+------+------+------+------+-----+-=
=2D---+-----+-----+
+ */
+
+#define RTL_ECC_ALLOWED_PAGE_SIZE 	2048
+#define RTL_ECC_ALLOWED_OOB_SIZE	64
+#define RTL_ECC_ALLOWED_STRENGTH	6
+
+#define RTL_ECC_BLOCK_SIZE 		512
+#define RTL_ECC_FREE_SIZE 		6
+#define RTL_ECC_PARITY_SIZE_BCH6	10
+#define RTL_ECC_PARITY_SIZE_BCH12	20
+
+/*
+ * The engine is fed with two DMA regions. One for data (always 512 bytes=
) and one for free bytes
+ * and parity (either 16 bytes for BCH6 or 26 bytes for BCH12). Start and=
 length of each must be
+ * aligned to a multiple of 4.
+ */
+
+#define RTL_ECC_DMA_FREE_PARITY_SIZE	ALIGN(RTL_ECC_FREE_SIZE + RTL_ECC_PA=
RITY_SIZE_BCH12, 4)
+#define RTL_ECC_DMA_SIZE		(RTL_ECC_BLOCK_SIZE + RTL_ECC_DMA_FREE_PARITY_S=
IZE)
+
+#define RTL_ECC_CFG			0x00
+#define   RTL_ECC_BCH6			0
+#define   RTL_ECC_BCH12			BIT(28)
+#define   RTL_ECC_DMA_PRECISE		BIT(12)
+#define   RTL_ECC_BURST_128		GENMASK(1, 0)
+#define RTL_ECC_DMA_TRIGGER 		0x08
+#define   RTL_ECC_OP_DECODE		0
+#define   RTL_ECC_OP_ENCODE		BIT(0)
+#define RTL_ECC_DMA_START		0x0c
+#define RTL_ECC_DMA_TAG			0x10
+#define RTL_ECC_STATUS			0x14
+#define   RTL_ECC_CORR_COUNT		GENMASK(19, 12)
+#define   RTL_ECC_RESULT		BIT(8)
+#define   RTL_ECC_ALL_ONE		BIT(4)
+#define   RTL_ECC_OP_STATUS		BIT(0)
+
+struct rtl_ecc_engine {
+	struct device *dev;
+	struct nand_ecc_engine engine;
+	struct mutex lock;
+	char *buf;
+	dma_addr_t buf_dma;
+	struct regmap *regmap;
+};
+
+struct rtl_ecc_ctx {
+	struct rtl_ecc_engine * rtlc;
+	struct nand_ecc_req_tweak_ctx req_ctx;
+	int steps;
+	int bch_mode;
+	int strength;
+	int parity_size;
+};
+
+static const struct regmap_config rtl_ecc_regmap_config =3D {
+	.reg_bits	=3D 32,
+	.val_bits	=3D 32,
+	.reg_stride	=3D 4,
+};
+
+static inline void *nand_to_ctx(struct nand_device *nand)
+{
+	return nand->ecc.ctx.priv;
+}
+
+static inline struct rtl_ecc_engine *nand_to_rtlc(struct nand_device *nan=
d)
+{
+	struct nand_ecc_engine *eng =3D nand->ecc.engine;
+
+	return container_of(eng, struct rtl_ecc_engine, engine);
+}
+
+static int rtl_ecc_ooblayout_ecc(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand =3D mtd_to_nanddev(mtd);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+
+	if (section < 0 || section >=3D ctx->steps)
+		return -ERANGE;
+
+	oobregion->offset =3D ctx->steps * RTL_ECC_FREE_SIZE + section * ctx->pa=
rity_size;
+	oobregion->length =3D ctx->parity_size;
+
+	return 0;
+}
+
+static int rtl_ecc_ooblayout_free(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	struct nand_device *nand =3D mtd_to_nanddev(mtd);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	int bbm;
+
+	if (section < 0 || section >=3D ctx->steps)
+		return -ERANGE;
+
+	/* reserve 2 BBM bytes in first block */
+	bbm =3D section ? 0 : 2;
+	oobregion->offset =3D section * RTL_ECC_FREE_SIZE + bbm;
+	oobregion->length =3D RTL_ECC_FREE_SIZE - bbm;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops rtl_ecc_ooblayout_ops =3D {
+	.ecc =3D rtl_ecc_ooblayout_ecc,
+	.free =3D rtl_ecc_ooblayout_free,
+};
+
+static void rtl_ecc_kick_engine(struct rtl_ecc_ctx *ctx, int operation)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+
+	regmap_write(rtlc->regmap, RTL_ECC_CFG,
+		     ctx->bch_mode | RTL_ECC_BURST_128 | RTL_ECC_DMA_PRECISE);
+
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_START, rtlc->buf_dma);
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_TAG, rtlc->buf_dma + RTL_ECC_BLOC=
K_SIZE);
+	regmap_write(rtlc->regmap, RTL_ECC_DMA_TRIGGER, operation);
+}
+
+static int rtl_ecc_wait_for_engine(struct rtl_ecc_ctx *ctx)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+	int ret, status, bitflips;
+	bool all_one;
+
+	/*
+	 * The ECC engine needs 6-8 us to encode/decode a BCH6 syndrome for 512 =
bytes of data
+	 * and 6 free bytes. In case the NAND area has been erased and all data =
and oob is
+	 * set to 0xff, decoding takes 30us (reason unknown). Although the engin=
e can trigger
+	 * interrupts when finished, use active polling for now. 12 us maximum w=
ait time has
+	 * proven to be a good tradeoff between performance and overhead.
+	 */
+
+	ret =3D regmap_read_poll_timeout(rtlc->regmap, RTL_ECC_STATUS, status,
+				       !(status & RTL_ECC_OP_STATUS), 12, 1000000);
+	if (ret)
+		return ret;
+
+	ret =3D FIELD_GET(RTL_ECC_RESULT, status);
+	all_one =3D FIELD_GET(RTL_ECC_ALL_ONE, status);
+	bitflips =3D FIELD_GET(RTL_ECC_CORR_COUNT, status);
+
+	/* For erased blocks (all bits one) error status can be ignored */
+	if (all_one)
+		ret =3D 0;
+
+	return ret ? -EBADMSG : bitflips;
+}
+
+static int rtl_ecc_run_engine(struct rtl_ecc_ctx *ctx, char *data, char *=
free,
+			      char *parity, int operation)
+{
+	struct rtl_ecc_engine *rtlc =3D ctx->rtlc;
+	char *buf_parity =3D rtlc->buf + RTL_ECC_BLOCK_SIZE + RTL_ECC_FREE_SIZE;
+	char *buf_free =3D rtlc->buf + RTL_ECC_BLOCK_SIZE;
+	char *buf_data =3D rtlc->buf;
+	int ret;
+
+	mutex_lock(&rtlc->lock);
+
+	memcpy(buf_data, data, RTL_ECC_BLOCK_SIZE);
+	memcpy(buf_free, free, RTL_ECC_FREE_SIZE);
+	memcpy(buf_parity, parity, ctx->parity_size);
+
+	dma_sync_single_for_device(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, D=
MA_TO_DEVICE);
+	rtl_ecc_kick_engine(ctx, operation);
+	ret =3D rtl_ecc_wait_for_engine(ctx);
+	dma_sync_single_for_cpu(rtlc->dev, rtlc->buf_dma, RTL_ECC_DMA_SIZE, DMA_=
FROM_DEVICE);
+
+	if (ret >=3D 0) {
+		memcpy(data, buf_data, RTL_ECC_BLOCK_SIZE);
+		memcpy(free, buf_free, RTL_ECC_FREE_SIZE);
+		memcpy(parity, buf_parity, ctx->parity_size);
+	}
+
+	mutex_unlock(&rtlc->lock);
+
+	return ret;
+}
+
+static int rtl_ecc_prepare_io_req(struct nand_device *nand, struct nand_p=
age_io_req *req)
+{
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	char *data, *free, *parity;
+	int ret =3D 0;
+
+	if (req->mode =3D=3D MTD_OPS_RAW)
+		return 0;
+
+	nand_ecc_tweak_req(&ctx->req_ctx, req);
+
+	if (req->type =3D=3D NAND_PAGE_READ)
+		return 0;
+
+	free =3D req->oobbuf.in;
+	data =3D req->databuf.in;
+	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
+
+	for (int i =3D 0; i < ctx->steps; i++) {
+		ret |=3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_ENCODE)=
;
+
+		free +=3D RTL_ECC_FREE_SIZE;
+		data +=3D RTL_ECC_BLOCK_SIZE;
+		parity +=3D ctx->parity_size;
+	}
+
+	if (unlikely(ret))
+		dev_dbg(rtlc->dev, "ECC calculation failed\n");
+
+	return ret ? -EBADMSG : 0;
+}
+
+static int rtl_ecc_finish_io_req(struct nand_device *nand, struct nand_pa=
ge_io_req *req)
+{
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	char *data, *free, *parity;
+	bool failure =3D false;
+	int bitflips =3D 0;
+
+	if (req->mode =3D=3D MTD_OPS_RAW)
+		return 0;
+
+	if (req->type =3D=3D NAND_PAGE_WRITE) {
+		nand_ecc_restore_req(&ctx->req_ctx, req);
+		return 0;
+	}
+
+	free =3D req->oobbuf.in;
+	data =3D req->databuf.in;
+	parity =3D req->oobbuf.in + ctx->steps * RTL_ECC_FREE_SIZE;
+
+	for (int i =3D 0 ; i < ctx->steps; i++) {
+		int ret =3D rtl_ecc_run_engine(ctx, data, free, parity, RTL_ECC_OP_DECO=
DE);
+
+		if (unlikely(ret < 0))
+			/* ECC totally fails for bitflips in erased blocks */
+			ret =3D nand_check_erased_ecc_chunk(data, RTL_ECC_BLOCK_SIZE,
+							  parity, ctx->parity_size,
+							  free, RTL_ECC_FREE_SIZE,
+							  ctx->strength);
+		if (unlikely(ret < 0)) {
+			failure =3D true;
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected +=3D ret;
+			bitflips =3D max_t(unsigned int, bitflips, ret);
+		}
+
+		free +=3D RTL_ECC_FREE_SIZE;
+		data +=3D RTL_ECC_BLOCK_SIZE;
+		parity +=3D ctx->parity_size;
+	}
+
+	nand_ecc_restore_req(&ctx->req_ctx, req);
+
+	if (unlikely(failure))
+		dev_dbg(rtlc->dev, "ECC correction failed\n");
+	else if (unlikely(bitflips > 2))
+		dev_dbg(rtlc->dev, "%d bitflips detected\n", bitflips);
+
+	return failure ? -EBADMSG : bitflips;
+}
+
+static int rtl_ecc_check_support(struct nand_device *nand)
+{
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	struct device *dev =3D nand->ecc.engine->dev;
+
+	if (mtd->oobsize !=3D RTL_ECC_ALLOWED_OOB_SIZE ||
+	    mtd->writesize !=3D RTL_ECC_ALLOWED_PAGE_SIZE) {
+		dev_err(dev, "only flash geometry data=3D%d, oob=3D%d supported\n",
+			RTL_ECC_ALLOWED_PAGE_SIZE, RTL_ECC_ALLOWED_OOB_SIZE);
+		return -EINVAL;
+	}
+
+	if (nand->ecc.user_conf.algo !=3D NAND_ECC_ALGO_BCH ||
+	    nand->ecc.user_conf.strength !=3D RTL_ECC_ALLOWED_STRENGTH ||
+	    nand->ecc.user_conf.placement !=3D NAND_ECC_PLACEMENT_OOB ||
+	    nand->ecc.user_conf.step_size !=3D RTL_ECC_BLOCK_SIZE) {
+		dev_err(dev, "only algo=3Dbch, strength=3D%d, placement=3Doob, step=3D%=
d supported\n",
+			RTL_ECC_ALLOWED_STRENGTH, RTL_ECC_BLOCK_SIZE);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rtl_ecc_init_ctx(struct nand_device *nand)
+{
+	struct nand_ecc_props *conf =3D &nand->ecc.ctx.conf;
+	struct rtl_ecc_engine *rtlc =3D nand_to_rtlc(nand);
+	struct mtd_info *mtd =3D nanddev_to_mtd(nand);
+	int strength =3D nand->ecc.user_conf.strength;
+	struct device *dev =3D nand->ecc.engine->dev;
+	struct rtl_ecc_ctx *ctx;
+	int ret;
+
+	ret =3D rtl_ecc_check_support(nand);
+	if (ret)
+		return ret;
+
+	ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	nand->ecc.ctx.priv =3D ctx;
+	mtd_set_ooblayout(mtd, &rtl_ecc_ooblayout_ops);
+
+	conf->algo =3D NAND_ECC_ALGO_BCH;
+	conf->strength =3D strength;
+	conf->step_size =3D RTL_ECC_BLOCK_SIZE;
+	conf->engine_type =3D NAND_ECC_ENGINE_TYPE_ON_HOST;
+
+	ctx->rtlc =3D rtlc;
+	ctx->steps =3D mtd->writesize / RTL_ECC_BLOCK_SIZE;
+	ctx->strength =3D strength;
+	ctx->bch_mode =3D strength =3D=3D 6 ? RTL_ECC_BCH6 : RTL_ECC_BCH12;
+	ctx->parity_size =3D strength =3D=3D 6 ? RTL_ECC_PARITY_SIZE_BCH6 : RTL_=
ECC_PARITY_SIZE_BCH12;
+
+	ret =3D nand_ecc_init_req_tweaking(&ctx->req_ctx, nand);
+	if (ret)
+		return ret;
+
+	dev_dbg(dev, "using bch%d with geometry data=3D%dx%d, free=3D%dx6, parit=
y=3D%dx%d",
+		conf->strength, ctx->steps, conf->step_size,
+		ctx->steps, ctx->steps, ctx->parity_size);
+
+	return 0;
+}
+
+static void rtl_ecc_cleanup_ctx(struct nand_device *nand)
+{
+	struct rtl_ecc_ctx *ctx =3D nand_to_ctx(nand);
+
+	if (ctx)
+		nand_ecc_cleanup_req_tweaking(&ctx->req_ctx);
+}
+
+static struct nand_ecc_engine_ops rtl_ecc_engine_ops =3D {
+	.init_ctx =3D rtl_ecc_init_ctx,
+	.cleanup_ctx =3D rtl_ecc_cleanup_ctx,
+	.prepare_io_req =3D rtl_ecc_prepare_io_req,
+	.finish_io_req =3D rtl_ecc_finish_io_req,
+};
+
+static int rtl_ecc_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct rtl_ecc_engine *rtlc;
+	void __iomem *base;
+	int ret;
+
+	rtlc =3D devm_kzalloc(dev, sizeof(*rtlc), GFP_KERNEL);
+	if (!rtlc)
+		return -ENOMEM;
+
+	base =3D devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	ret =3D devm_mutex_init(dev, &rtlc->lock);
+	if (ret)
+		return ret;
+
+	rtlc->regmap =3D devm_regmap_init_mmio(dev, base, &rtl_ecc_regmap_config=
);
+	if (IS_ERR(rtlc->regmap))
+		return PTR_ERR(rtlc->regmap);
+
+	/*
+	 * Focus on simplicity and use a preallocated DMA buffer for data exchan=
ge with the
+	 * engine. For now make it a noncoherent memory model as invalidating/fl=
ushing caches
+	 * is faster than reading/writing uncached memory on the known architect=
ures.
+	 */
+
+	rtlc->buf =3D dma_alloc_noncoherent(dev, RTL_ECC_DMA_SIZE, &rtlc->buf_dm=
a,
+					  DMA_BIDIRECTIONAL, GFP_KERNEL);
+	if (IS_ERR(rtlc->buf))
+		return PTR_ERR(rtlc->buf);
+
+	rtlc->dev =3D dev;
+	rtlc->engine.dev =3D dev;
+	rtlc->engine.ops =3D &rtl_ecc_engine_ops;
+	rtlc->engine.integration =3D NAND_ECC_ENGINE_INTEGRATION_EXTERNAL;
+
+	nand_ecc_register_on_host_hw_engine(&rtlc->engine);
+
+	platform_set_drvdata(pdev, rtlc);
+
+	return 0;
+}
+
+static void rtl_ecc_remove(struct platform_device *pdev)
+{
+	struct rtl_ecc_engine *rtlc =3D platform_get_drvdata(pdev);
+
+	nand_ecc_unregister_on_host_hw_engine(&rtlc->engine);
+	dma_free_noncoherent(rtlc->dev, RTL_ECC_DMA_SIZE, rtlc->buf, rtlc->buf_d=
ma,
+			     DMA_BIDIRECTIONAL);
+}
+
+static const struct of_device_id rtl_ecc_of_ids[] =3D {
+	{
+		.compatible =3D "realtek,rtl9301-ecc",
+	},
+	{ /* sentinel */ },
+};
+
+static struct platform_driver rtl_ecc_driver =3D {
+	.driver	=3D {
+		.name =3D "rtl-nand-ecc-engine",
+		.of_match_table =3D rtl_ecc_of_ids,
+	},
+	.probe =3D rtl_ecc_probe,
+	.remove =3D rtl_ecc_remove,
+};
+module_platform_driver(rtl_ecc_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
+MODULE_DESCRIPTION("Realtek NAND hardware ECC controller");
=2D-=20
2.49.0


