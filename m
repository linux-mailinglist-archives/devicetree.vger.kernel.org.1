Return-Path: <devicetree+bounces-91965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8D494B74D
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15EC21C234F9
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 07:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7A518B472;
	Thu,  8 Aug 2024 07:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kltMQayP"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F44189BBE;
	Thu,  8 Aug 2024 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723101116; cv=none; b=GH4D861ST07FoYzWUlnAWxxR+nqaby1vd8eM0XoDxNgSQIvWJUeAb2PxiDCEltk17a+IrD54lAlqkab1PH8w+ro3YNdd4m77fDxYeCAT6VQQBJ8UjZK1kqcxaGkfVf273TeP5b5gd1+DjOuRmXDYLkEIZIRfZLBe0wif2MjwMlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723101116; c=relaxed/simple;
	bh=tf3yEnLy6hz5tA0teZmEcogjgsPMz/GZgYxe71iTFHE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eSfbUIYxAn0o+Zf6euIbpr0cDLR8oiyxbwVToug5+NuZtBWyW8GDhWc7+50AKBDufbXORoVkx66y5DvnSanJlfA+F4lXccyOeIrUCriXsnm9/+fj6SbkDSOCu5XkItn93Xzj/kOTaWCjqmgrEzNlQsUad3bIaoSfLvHQDhn+PjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=kltMQayP; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id D26EFC0003;
	Thu,  8 Aug 2024 07:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1723101112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MHg3HP7c5auUlRoAbWHwCc/VjOiwCEiJpIw8nensMgk=;
	b=kltMQayPVSAq/gx4A60Nog+eoB7UgZP6QLBmIjpOEq7qpzRCgyHEBIuY/ZfioVkBcqd7OA
	euMTQzybpwPUCWnFUnILq1f2t3fF4OcaxsSBgel+krX+l+dncOv5NuWpyv+DIZhc3PRX3Z
	6Ji3Q/mlw87yh32USWlblup+juKwYpClmm9ohEogqDYr7ts0byB50ijNtyBw33WM7jRi93
	/VFeIPmk6lal1xpo56qa8Hrp82J0ya31W7iZksSp5cQsNYIawXl3xCXeYMyXAnm0CUQkwJ
	XeKyrQEypHb5H9HGc6chsUIeprirpSWn4FpAIex+y1iRse6sk5sEHc07+S9DMA==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	Mark Brown <broonie@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 18/36] soc: fsl: cpm1: qmc: Use BIT(), GENMASK() and FIELD_PREP() macros
Date: Thu,  8 Aug 2024 09:11:11 +0200
Message-ID: <20240808071132.149251-19-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240808071132.149251-1-herve.codina@bootlin.com>
References: <20240808071132.149251-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

checkpatch.pl signals the following improvement for qmc.c
  CHECK: Prefer using the BIT macro

Follow its suggestion and convert the code to BIT() and related macros.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/soc/fsl/qe/qmc.c | 132 +++++++++++++++++++++------------------
 1 file changed, 72 insertions(+), 60 deletions(-)

diff --git a/drivers/soc/fsl/qe/qmc.c b/drivers/soc/fsl/qe/qmc.c
index 721e0770510c..e2ac3e59bb79 100644
--- a/drivers/soc/fsl/qe/qmc.c
+++ b/drivers/soc/fsl/qe/qmc.c
@@ -8,6 +8,7 @@
  */
 
 #include <soc/fsl/qe/qmc.h>
+#include <linux/bitfield.h>
 #include <linux/dma-mapping.h>
 #include <linux/hdlc.h>
 #include <linux/interrupt.h>
@@ -23,23 +24,24 @@
 
 /* SCC general mode register high (32 bits) */
 #define SCC_GSMRL	0x00
-#define SCC_GSMRL_ENR		(1 << 5)
-#define SCC_GSMRL_ENT		(1 << 4)
-#define SCC_GSMRL_MODE_QMC	(0x0A << 0)
+#define SCC_GSMRL_ENR		BIT(5)
+#define SCC_GSMRL_ENT		BIT(4)
+#define SCC_GSMRL_MODE_MASK	GENMASK(3, 0)
+#define SCC_GSMRL_MODE_QMC	FIELD_PREP_CONST(SCC_GSMRL_MODE_MASK, 0x0A)
 
 /* SCC general mode register low (32 bits) */
 #define SCC_GSMRH	0x04
-#define   SCC_GSMRH_CTSS	(1 << 7)
-#define   SCC_GSMRH_CDS		(1 << 8)
-#define   SCC_GSMRH_CTSP	(1 << 9)
-#define   SCC_GSMRH_CDP		(1 << 10)
+#define   SCC_GSMRH_CTSS	BIT(7)
+#define   SCC_GSMRH_CDS		BIT(8)
+#define   SCC_GSMRH_CTSP	BIT(9)
+#define   SCC_GSMRH_CDP		BIT(10)
 
 /* SCC event register (16 bits) */
 #define SCC_SCCE	0x10
-#define   SCC_SCCE_IQOV		(1 << 3)
-#define   SCC_SCCE_GINT		(1 << 2)
-#define   SCC_SCCE_GUN		(1 << 1)
-#define   SCC_SCCE_GOV		(1 << 0)
+#define   SCC_SCCE_IQOV		BIT(3)
+#define   SCC_SCCE_GINT		BIT(2)
+#define   SCC_SCCE_GUN		BIT(1)
+#define   SCC_SCCE_GOV		BIT(0)
 
 /* SCC mask register (16 bits) */
 #define SCC_SCCM	0x14
@@ -75,25 +77,31 @@
 #define QMC_GBL_C_MASK16	0xA0
 
 /* TSA entry (16bit entry in TSATRX and TSATTX) */
-#define QMC_TSA_VALID		(1 << 15)
-#define QMC_TSA_WRAP		(1 << 14)
-#define QMC_TSA_MASK_8BIT	(0x303F)
-#define QMC_TSA_CHANNEL(x)	((x) << 6)
+#define QMC_TSA_VALID		BIT(15)
+#define QMC_TSA_WRAP		BIT(14)
+#define QMC_TSA_MASK_MASKH	GENMASK(13, 12)
+#define QMC_TSA_MASK_MASKL	GENMASK(5, 0)
+#define QMC_TSA_MASK_8BIT	(FIELD_PREP_CONST(QMC_TSA_MASK_MASKH, 0x3) | \
+				 FIELD_PREP_CONST(QMC_TSA_MASK_MASKL, 0x3F))
+#define QMC_TSA_CHANNEL_MASK	GENMASK(11, 6)
+#define QMC_TSA_CHANNEL(x)	FIELD_PREP(QMC_TSA_CHANNEL_MASK, x)
 
 /* Tx buffer descriptor base address (16 bits, offset from MCBASE) */
 #define QMC_SPE_TBASE	0x00
 
 /* Channel mode register (16 bits) */
 #define QMC_SPE_CHAMR	0x02
-#define   QMC_SPE_CHAMR_MODE_HDLC	(1 << 15)
-#define   QMC_SPE_CHAMR_MODE_TRANSP	((0 << 15) | (1 << 13))
-#define   QMC_SPE_CHAMR_ENT		(1 << 12)
-#define   QMC_SPE_CHAMR_POL		(1 << 8)
-#define   QMC_SPE_CHAMR_HDLC_IDLM	(1 << 13)
-#define   QMC_SPE_CHAMR_HDLC_CRC	(1 << 7)
-#define   QMC_SPE_CHAMR_HDLC_NOF	(0x0f << 0)
-#define   QMC_SPE_CHAMR_TRANSP_RD	(1 << 14)
-#define   QMC_SPE_CHAMR_TRANSP_SYNC	(1 << 10)
+#define   QMC_SPE_CHAMR_MODE_MASK	GENMASK(15, 15)
+#define   QMC_SPE_CHAMR_MODE_HDLC	FIELD_PREP_CONST(QMC_SPE_CHAMR_MODE_MASK, 1)
+#define   QMC_SPE_CHAMR_MODE_TRANSP	(FIELD_PREP_CONST(QMC_SPE_CHAMR_MODE_MASK, 0) | BIT(13))
+#define   QMC_SPE_CHAMR_ENT		BIT(12)
+#define   QMC_SPE_CHAMR_POL		BIT(8)
+#define   QMC_SPE_CHAMR_HDLC_IDLM	BIT(13)
+#define   QMC_SPE_CHAMR_HDLC_CRC	BIT(7)
+#define   QMC_SPE_CHAMR_HDLC_NOF_MASK	GENMASK(3, 0)
+#define   QMC_SPE_CHAMR_HDLC_NOF(x)	FIELD_PREP(QMC_SPE_CHAMR_HDLC_NOF_MASK, x)
+#define   QMC_SPE_CHAMR_TRANSP_RD	BIT(14)
+#define   QMC_SPE_CHAMR_TRANSP_SYNC	BIT(10)
 
 /* Tx internal state (32 bits) */
 #define QMC_SPE_TSTATE	0x04
@@ -120,43 +128,47 @@
 
 /* Transparent synchronization (16 bits) */
 #define QMC_SPE_TRNSYNC 0x3C
-#define   QMC_SPE_TRNSYNC_RX(x)	((x) << 8)
-#define   QMC_SPE_TRNSYNC_TX(x)	((x) << 0)
+#define   QMC_SPE_TRNSYNC_RX_MASK	GENMASK(15, 8)
+#define   QMC_SPE_TRNSYNC_RX(x)		FIELD_PREP(QMC_SPE_TRNSYNC_RX_MASK, x)
+#define   QMC_SPE_TRNSYNC_TX_MASK	GENMASK(7, 0)
+#define   QMC_SPE_TRNSYNC_TX(x)		FIELD_PREP(QMC_SPE_TRNSYNC_TX_MASK, x)
 
 /* Interrupt related registers bits */
-#define QMC_INT_V		(1 << 15)
-#define QMC_INT_W		(1 << 14)
-#define QMC_INT_NID		(1 << 13)
-#define QMC_INT_IDL		(1 << 12)
-#define QMC_INT_GET_CHANNEL(x)	(((x) & 0x0FC0) >> 6)
-#define QMC_INT_MRF		(1 << 5)
-#define QMC_INT_UN		(1 << 4)
-#define QMC_INT_RXF		(1 << 3)
-#define QMC_INT_BSY		(1 << 2)
-#define QMC_INT_TXB		(1 << 1)
-#define QMC_INT_RXB		(1 << 0)
+#define QMC_INT_V		BIT(15)
+#define QMC_INT_W		BIT(14)
+#define QMC_INT_NID		BIT(13)
+#define QMC_INT_IDL		BIT(12)
+#define QMC_INT_CHANNEL_MASK	GENMASK(11, 6)
+#define QMC_INT_GET_CHANNEL(x)	FIELD_GET(QMC_INT_CHANNEL_MASK, x)
+#define QMC_INT_MRF		BIT(5)
+#define QMC_INT_UN		BIT(4)
+#define QMC_INT_RXF		BIT(3)
+#define QMC_INT_BSY		BIT(2)
+#define QMC_INT_TXB		BIT(1)
+#define QMC_INT_RXB		BIT(0)
 
 /* BD related registers bits */
-#define QMC_BD_RX_E	(1 << 15)
-#define QMC_BD_RX_W	(1 << 13)
-#define QMC_BD_RX_I	(1 << 12)
-#define QMC_BD_RX_L	(1 << 11)
-#define QMC_BD_RX_F	(1 << 10)
-#define QMC_BD_RX_CM	(1 << 9)
-#define QMC_BD_RX_UB	(1 << 7)
-#define QMC_BD_RX_LG	(1 << 5)
-#define QMC_BD_RX_NO	(1 << 4)
-#define QMC_BD_RX_AB	(1 << 3)
-#define QMC_BD_RX_CR	(1 << 2)
-
-#define QMC_BD_TX_R	(1 << 15)
-#define QMC_BD_TX_W	(1 << 13)
-#define QMC_BD_TX_I	(1 << 12)
-#define QMC_BD_TX_L	(1 << 11)
-#define QMC_BD_TX_TC	(1 << 10)
-#define QMC_BD_TX_CM	(1 << 9)
-#define QMC_BD_TX_UB	(1 << 7)
-#define QMC_BD_TX_PAD	(0x0f << 0)
+#define QMC_BD_RX_E	BIT(15)
+#define QMC_BD_RX_W	BIT(13)
+#define QMC_BD_RX_I	BIT(12)
+#define QMC_BD_RX_L	BIT(11)
+#define QMC_BD_RX_F	BIT(10)
+#define QMC_BD_RX_CM	BIT(9)
+#define QMC_BD_RX_UB	BIT(7)
+#define QMC_BD_RX_LG	BIT(5)
+#define QMC_BD_RX_NO	BIT(4)
+#define QMC_BD_RX_AB	BIT(3)
+#define QMC_BD_RX_CR	BIT(2)
+
+#define QMC_BD_TX_R		BIT(15)
+#define QMC_BD_TX_W		BIT(13)
+#define QMC_BD_TX_I		BIT(12)
+#define QMC_BD_TX_L		BIT(11)
+#define QMC_BD_TX_TC		BIT(10)
+#define QMC_BD_TX_CM		BIT(9)
+#define QMC_BD_TX_UB		BIT(7)
+#define QMC_BD_TX_PAD_MASK	GENMASK(3, 0)
+#define QMC_BD_TX_PAD(x)	FIELD_PREP(QMC_BD_TX_PAD_MASK, x)
 
 /* Numbers of BDs and interrupt items */
 #define QMC_NB_TXBDS	8
@@ -662,7 +674,7 @@ static int qmc_chan_setup_tsa_64rxtx(struct qmc_chan *chan, const struct tsa_ser
 			continue;
 
 		qmc_clrsetbits16(chan->qmc->scc_pram + QMC_GBL_TSATRX + (i * 2),
-				 ~QMC_TSA_WRAP, enable ? val : 0x0000);
+				 (u16)~QMC_TSA_WRAP, enable ? val : 0x0000);
 	}
 
 	return 0;
@@ -698,7 +710,7 @@ static int qmc_chan_setup_tsa_32rx(struct qmc_chan *chan, const struct tsa_seria
 			continue;
 
 		qmc_clrsetbits16(chan->qmc->scc_pram + QMC_GBL_TSATRX + (i * 2),
-				 ~QMC_TSA_WRAP, enable ? val : 0x0000);
+				 (u16)~QMC_TSA_WRAP, enable ? val : 0x0000);
 	}
 
 	return 0;
@@ -734,7 +746,7 @@ static int qmc_chan_setup_tsa_32tx(struct qmc_chan *chan, const struct tsa_seria
 			continue;
 
 		qmc_clrsetbits16(chan->qmc->scc_pram + QMC_GBL_TSATTX + (i * 2),
-				 ~QMC_TSA_WRAP, enable ? val : 0x0000);
+				 (u16)~QMC_TSA_WRAP, enable ? val : 0x0000);
 	}
 
 	return 0;
-- 
2.45.0


