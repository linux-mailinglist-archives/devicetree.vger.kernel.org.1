Return-Path: <devicetree+bounces-226107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B43BD4EDC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:20:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB694507A09
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF418315D43;
	Mon, 13 Oct 2025 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SUoSskjX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2317331579B
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760369254; cv=none; b=AZtmk8TigK824hO3nIkacmm9wtCs/cDNYG5EkfShx4HT53RjEshx2GM6JMslJOlrbfAIA0mH6Wdg0RwlE7ABvXJTN0sE3uQcnlQavsMTtBXakz7ikPqAZ2KL5iDMguMJvY8C/Q48AdHz9SHznIm1x6tkxPreiXNAZlUUoqmeV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760369254; c=relaxed/simple;
	bh=zCdVIfT3/lJV5ewa+JtXbF/AwV1pJJ2zuoy9j7fYm4o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rIFa7yMvB+EjLHM9rj4l8WH3vultv8Wdx/zF4oOqGzVkNAxeBxJ2wcLQcJezAPLzDXtJ4CLNSxkdJUDwLYkI/T++Ppxi8+3f5f0yL5eQ+4XLnOzzQDzwn6eA1uGUeMF/hNYxjAQer+A216D+t5e1v+TV1KI85c6oI2Cfvm7tIrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SUoSskjX; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 00B5FC093B1;
	Mon, 13 Oct 2025 15:27:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E987B6067B;
	Mon, 13 Oct 2025 15:27:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DD8BB102F226E;
	Mon, 13 Oct 2025 17:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1760369250; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=+2C6Y7QvX0FPwTw070QW7rXZAP/U111s0G+dQuIpjU4=;
	b=SUoSskjXqGjUJ44lWbsBZyewVY3yJhY1PWe6JpAVZ48Qe9fTjfuLBUOLF5Gm0mlGA3nDph
	77nQ4xzTAEdJ3IcI7D15nMVGtcb2VhRKlRZNPjpGLka7i/68HqR24sEzKaJSaWSgFhSG37
	wcsF/a8Kfdxvbt529MB2D3hFP1YmrPmJ+fnEicAetJgrVRIiMWVYlI1AJB6926TjsOeCst
	+HEb2LOicOWufqGIPcqwXpXWwm6McJQzEZjJ2dzpwQqLJiSCLzgWm12/bvqVTQ8hR782ln
	4cpHqxZ7jqoSQCo6eWe+9SbHO0oIcYL4k7Hkl1iJJW7/u9zkRn6MdrA6xlFNaw==
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
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Wentao Liang <vulab@iscas.ac.cn>,
	Johan Hovold <johan@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH v2 03/15] mtd: rawnand: sunxi: introduce reg_ecc_err_cnt in sunxi_nfc_caps
Date: Mon, 13 Oct 2025 17:26:33 +0200
Message-ID: <20251013152645.1119308-4-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013152645.1119308-1-richard.genoud@bootlin.com>
References: <20251013152645.1119308-1-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The H6/H616 ECC_ERR_CNT register is not at the same offset as the
A10/A23 one, so move its offset into sunxi_nfc_caps

No functional change.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index d3b17d54f04c..0285e4d0ca7f 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -46,7 +46,8 @@
 #define NFC_REG_ECC_CTL		0x0034
 #define NFC_REG_ECC_ST		0x0038
 #define NFC_REG_DEBUG		0x003C
-#define NFC_REG_ECC_ERR_CNT(x)	((0x0040 + (x)) & ~0x3)
+#define NFC_REG_A10_ECC_ERR_CNT	0x0040
+#define NFC_REG_ECC_ERR_CNT(nfc, x)	((nfc->caps->reg_ecc_err_cnt + (x)) & ~0x3)
 #define NFC_REG_USER_DATA(x)	(0x0050 + ((x) * 4))
 #define NFC_REG_SPARE_AREA	0x00A0
 #define NFC_REG_PAT_ID		0x00A4
@@ -212,6 +213,7 @@ static inline struct sunxi_nand_chip *to_sunxi_nand(struct nand_chip *nand)
  * @has_mdma:		Use mbus dma mode, otherwise general dma
  *			through MBUS on A23/A33 needs extra configuration.
  * @reg_io_data:	I/O data register
+ * @reg_ecc_err_cnt:	ECC error counter register
  * @dma_maxburst:	DMA maxburst
  * @ecc_strengths:	Available ECC strengths array
  * @nstrengths:		Size of @ecc_strengths
@@ -219,6 +221,7 @@ static inline struct sunxi_nand_chip *to_sunxi_nand(struct nand_chip *nand)
 struct sunxi_nfc_caps {
 	bool has_mdma;
 	unsigned int reg_io_data;
+	unsigned int reg_ecc_err_cnt;
 	unsigned int dma_maxburst;
 	const u8 *ecc_strengths;
 	unsigned int nstrengths;
@@ -790,7 +793,7 @@ static int sunxi_nfc_hw_ecc_correct(struct nand_chip *nand, u8 *data, u8 *oob,
 		return 0;
 	}
 
-	tmp = readl(nfc->regs + NFC_REG_ECC_ERR_CNT(step));
+	tmp = readl(nfc->regs + NFC_REG_ECC_ERR_CNT(nfc, step));
 
 	return NFC_ECC_ERR_CNT(step, tmp);
 }
@@ -2177,6 +2180,7 @@ static const u8 sunxi_ecc_strengths_a10[] = {
 
 static const struct sunxi_nfc_caps sunxi_nfc_a10_caps = {
 	.reg_io_data = NFC_REG_A10_IO_DATA,
+	.reg_ecc_err_cnt = NFC_REG_A10_ECC_ERR_CNT,
 	.dma_maxburst = 4,
 	.ecc_strengths = sunxi_ecc_strengths_a10,
 	.nstrengths = ARRAY_SIZE(sunxi_ecc_strengths_a10),
@@ -2185,6 +2189,7 @@ static const struct sunxi_nfc_caps sunxi_nfc_a10_caps = {
 static const struct sunxi_nfc_caps sunxi_nfc_a23_caps = {
 	.has_mdma = true,
 	.reg_io_data = NFC_REG_A23_IO_DATA,
+	.reg_ecc_err_cnt = NFC_REG_A10_ECC_ERR_CNT,
 	.dma_maxburst = 8,
 	.ecc_strengths = sunxi_ecc_strengths_a10,
 	.nstrengths = ARRAY_SIZE(sunxi_ecc_strengths_a10),

