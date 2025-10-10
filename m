Return-Path: <devicetree+bounces-225284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D9DBCC2E5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D5824221AF
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6021E27F00F;
	Fri, 10 Oct 2025 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LpU9p1ff"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A93E27BF89
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760085708; cv=none; b=DwRlwjbY38yFwTjkvTj/3+lWFIy/HUneko7PZ7y/hdcf/WRZD4Wab3WUyPfkvDYeCnVdvh2DmautinZQO/Pik4gGEvEJwbf4hYokRsVhKt5nS4TEe2lFUR5CyASwfKOfIfN83hlcdjRNXhGRBOAKaQsEWA1F9I765sCgxEU3EW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760085708; c=relaxed/simple;
	bh=f1fjm6RU57+kLetvSv8gY+IOYw/ReAHy/ATibqXmLUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jgXzZBl2MGkD+Y9o8QYoAgAyhxmBhLlnSFs9vrAc52haPC6LSk2tbNT4qKmbNIxcpspes5akyPLMUffELrv0zrQIP2vq0NdINtTkK9JaAb6r9Lw94EPb3YjXARniLY27o7WFPSl0GdD97Vj0PD7f/6Z+T+Olbwim0J6axShbB94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LpU9p1ff; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 7ABC5C08CC8;
	Fri, 10 Oct 2025 08:41:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2464160667;
	Fri, 10 Oct 2025 08:41:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 01C7B102F2208;
	Fri, 10 Oct 2025 10:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760085703; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=lW1eckNNd4gUWt6X3y+zdKi8wIuDsKB6Px2Lg2bPV3A=;
	b=LpU9p1ffpGEUeYTIuGZkdQj3DKkIaaHGucVWXc3d0Gi4Ns0Km0feYRSJTofCozJeQozaj2
	Be1IYEumru8wNU5eYF7dsZi207ezDL5VO6BWQ1zNXF35AoJX3Rm4o7VCGdA0Go7kqhZxJt
	V7hUrMTU/+Z2AeVWc0Ts1U3mw5mqG8vtCe6HvtwjCAjPN+Uhcb66TuI5kh71Zp+Xng1Uwy
	EijpeIo6uHMjV9TU3MxU2nATzwJDh4LRy5nULNT/xCLKXLZDIHbUFysBWAKVuZuwWm9JWv
	sXnW6Nco7YQ3BZJwa5DMnkAn0h+NY7CyFdivdpq+an/pLkuxJ9M19Ii3RJmkhg==
From: Richard Genoud <richard.genoud@bootlin.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Wentao Liang <vulab@iscas.ac.cn>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH 06/15] mtd: nand: sunxi: introduce reg_user_data in sunxi_nfc_caps
Date: Fri, 10 Oct 2025 10:40:33 +0200
Message-ID: <20251010084042.341224-7-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251010084042.341224-1-richard.genoud@bootlin.com>
References: <20251010084042.341224-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The H6/H616 USER_DATA register is not at the same offset as the
A10/A23 one, so move its offset into sunxi_nfc_caps

No functional change.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index faaac71e7be3..6c78370a6095 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -48,7 +48,8 @@
 #define NFC_REG_DEBUG		0x003C
 #define NFC_REG_A10_ECC_ERR_CNT	0x0040
 #define NFC_REG_ECC_ERR_CNT(nfc, x)	((nfc->caps->reg_ecc_err_cnt + (x)) & ~0x3)
-#define NFC_REG_USER_DATA(x)	(0x0050 + ((x) * 4))
+#define NFC_REG_A10_USER_DATA	0x0050
+#define NFC_REG_USER_DATA(nfc, x)	(nfc->caps->reg_user_data + ((x) * 4))
 #define NFC_REG_SPARE_AREA	0x00A0
 #define NFC_REG_PAT_ID		0x00A4
 #define NFC_REG_MDMA_ADDR	0x00C0
@@ -214,6 +215,7 @@ static inline struct sunxi_nand_chip *to_sunxi_nand(struct nand_chip *nand)
  *			through MBUS on A23/A33 needs extra configuration.
  * @reg_io_data:	I/O data register
  * @reg_ecc_err_cnt:	ECC error counter register
+ * @reg_user_data:	User data register
  * @dma_maxburst:	DMA maxburst
  * @ecc_strengths:	Available ECC strengths array
  * @nstrengths:		Size of @ecc_strengths
@@ -222,6 +224,7 @@ struct sunxi_nfc_caps {
 	bool has_mdma;
 	unsigned int reg_io_data;
 	unsigned int reg_ecc_err_cnt;
+	unsigned int reg_user_data;
 	unsigned int dma_maxburst;
 	const u8 *ecc_strengths;
 	unsigned int nstrengths;
@@ -723,8 +726,8 @@ static void sunxi_nfc_hw_ecc_get_prot_oob_bytes(struct nand_chip *nand, u8 *oob,
 {
 	struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 
-	sunxi_nfc_user_data_to_buf(readl(nfc->regs + NFC_REG_USER_DATA(step)),
-				   oob);
+	sunxi_nfc_user_data_to_buf(readl(nfc->regs +
+					 NFC_REG_USER_DATA(nfc, step)), oob);
 
 	/* De-randomize the Bad Block Marker. */
 	if (bbm && (nand->options & NAND_NEED_SCRAMBLING))
@@ -746,7 +749,7 @@ static void sunxi_nfc_hw_ecc_set_prot_oob_bytes(struct nand_chip *nand,
 	}
 
 	writel(sunxi_nfc_buf_to_user_data(oob),
-	       nfc->regs + NFC_REG_USER_DATA(step));
+	       nfc->regs + NFC_REG_USER_DATA(nfc, step));
 }
 
 static void sunxi_nfc_hw_ecc_update_stats(struct nand_chip *nand,
@@ -2181,6 +2184,7 @@ static const u8 sunxi_ecc_strengths_a10[] = {
 static const struct sunxi_nfc_caps sunxi_nfc_a10_caps = {
 	.reg_io_data = NFC_REG_A10_IO_DATA,
 	.reg_ecc_err_cnt = NFC_REG_A10_ECC_ERR_CNT,
+	.reg_user_data = NFC_REG_A10_USER_DATA,
 	.dma_maxburst = 4,
 	.ecc_strengths = sunxi_ecc_strengths_a10,
 	.nstrengths = ARRAY_SIZE(sunxi_ecc_strengths_a10),
@@ -2190,6 +2194,7 @@ static const struct sunxi_nfc_caps sunxi_nfc_a23_caps = {
 	.has_mdma = true,
 	.reg_io_data = NFC_REG_A23_IO_DATA,
 	.reg_ecc_err_cnt = NFC_REG_A10_ECC_ERR_CNT,
+	.reg_user_data = NFC_REG_A10_USER_DATA,
 	.dma_maxburst = 8,
 	.ecc_strengths = sunxi_ecc_strengths_a10,
 	.nstrengths = ARRAY_SIZE(sunxi_ecc_strengths_a10),
-- 
2.47.3


