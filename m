Return-Path: <devicetree+bounces-101454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD2971DCD
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 17:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 359721F237CF
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 15:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B8513B797;
	Mon,  9 Sep 2024 15:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="fv6iMB2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FC2502BE;
	Mon,  9 Sep 2024 15:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725894929; cv=none; b=EV0NKNJiNGM8YsewyFt5A+0BMglH7Z2dKf2XGd5kEfDm06ZFGCbKx2N/DRnsSrPLtAG8d1vDGEf0HMEeYwjnvSBE8CAUatu9ZsrOe42IxRW6frjnhr4FnF+NBGSkfzZET83725K5zNKkJYwWxF7599cbhlXDHLS2IAMtxKSUDNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725894929; c=relaxed/simple;
	bh=cWis6kfV8l8cxm0/XUEaf0a5Il/3yyxxQs2NEEfDgLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=nPQ3PoVBmeqqwZoHkAtvItYZSJrnlWVJjadragCi1AbRbDKM/SSxJEnAtGz1IWVsBhoTQ/Gh5LseqQ6NtoElm52SKehUOZfKDj6pQfVQaszKZ6iKbDWl8saiotcZ8I618wQ6LBf0qktv42wiH2GTL9Lxfqay0fBCJh+BE92UmXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=fv6iMB2Q; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894926; x=1757430926;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=cWis6kfV8l8cxm0/XUEaf0a5Il/3yyxxQs2NEEfDgLU=;
  b=fv6iMB2QRskBQDPG0gFKGgF+UaouvlruvzwGLoezqEdDrEahSPXhaJeq
   ngQt9XduLjxD//KrytTRrjmfL3Jcu7QOgPxMITd1sl8M+Nlk194bTBJ/8
   uaE/uhz01DRG6xmPTHnPPe000JaNantNNI0rCrYDgxuB75sqrcchxgizU
   uOo5vVRrW5rsGdcK+aTe1MymuIr73zL6AUGnodaB/bBMCzrMEvbv3QZk0
   WV0FEQEhmdbmGT0FJRO4I5Y8JLkitKRCX6UhTJbFeYLRpiwt6H6v1thx5
   SwmB2qi5uT3ZFubqSwH+RPyx1HK5fmyBbN4PEeSbcqnMFXb6Iyr9v/niS
   g==;
X-CSE-ConnectionGUID: /ltMKKTeRqSXWxXLFfJz/g==
X-CSE-MsgGUID: U6x+lJxlRjO5QAnZH9zcXQ==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="31514511"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:15:08 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:15:06 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:46 +0200
Subject: [PATCH v2 6/9] phy: sparx5-serdes: add indirection layer to
 register macros
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-6-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev

The register macros are used to read and write to the SERDES registers.
The registers are largely the same on Sparx5 and lan969x, however some
register target sizes differ. Therefore we introduce a new indirection
to the register macros. The target sizes are looked up, using a mapping
table (sparx5_serdes_tsize) that maps the register target to the
register target size.

With this addition, we can reuse all the existing macros for lan969x.

Also the autogenerated macros are now formatted slightly different, to
adhere to a 80 character limit.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c      |  14 +
 drivers/phy/microchip/sparx5_serdes.h      |   1 +
 drivers/phy/microchip/sparx5_serdes_regs.h | 746 +++++++++++++++++++----------
 3 files changed, 507 insertions(+), 254 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 5b918a2716dd..8a716bfaa023 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -28,6 +28,17 @@
 /* Optimal power settings from GUC */
 #define SPX5_SERDES_QUIET_MODE_VAL 0x01ef4e0c
 
+/* Register target sizes */
+const unsigned int sparx5_serdes_tsize[TSIZE_LAST] = {
+	[TC_SD10G_LANE] = 12,
+	[TC_SD_CMU] = 14,
+	[TC_SD_CMU_CFG] = 14,
+	[TC_SD_LANE] = 25,
+};
+
+/* Pointer to the register target size table */
+const unsigned int *tsize;
+
 enum sparx5_sd25g28_mode_preset_type {
 	SPX5_SD25G28_MODE_PRESET_25000,
 	SPX5_SD25G28_MODE_PRESET_10000,
@@ -2506,6 +2517,7 @@ static struct sparx5_serdes_io_resource sparx5_serdes_iomap[] =  {
 static const struct sparx5_serdes_match_data sparx5_desc = {
 	.iomap = sparx5_serdes_iomap,
 	.iomap_size = ARRAY_SIZE(sparx5_serdes_iomap),
+	.tsize = sparx5_serdes_tsize,
 	.consts = {
 		.sd_max       = 33,
 		.cmu_max      = 14,
@@ -2568,6 +2580,8 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 	if (!priv->data)
 		return -EINVAL;
 
+	tsize = priv->data->tsize;
+
 	/* Get coreclock */
 	clk = devm_clk_get(priv->dev, NULL);
 	if (IS_ERR(clk)) {
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index a7e92c1330e9..50900bf06c4c 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -60,6 +60,7 @@ struct sparx5_serdes_match_data {
 	const struct sparx5_serdes_ops ops;
 	const struct sparx5_serdes_io_resource *iomap;
 	int iomap_size;
+	const unsigned int *tsize;
 };
 
 struct sparx5_serdes_private {
diff --git a/drivers/phy/microchip/sparx5_serdes_regs.h b/drivers/phy/microchip/sparx5_serdes_regs.h
index d0543fd3dc94..11c4fdc593fa 100644
--- a/drivers/phy/microchip/sparx5_serdes_regs.h
+++ b/drivers/phy/microchip/sparx5_serdes_regs.h
@@ -1,11 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0+
  * Microchip Sparx5 SerDes driver
  *
- * Copyright (c) 2020 Microchip Technology Inc.
+ * Copyright (c) 2024 Microchip Technology Inc.
  */
 
-/* This file is autogenerated by cml-utils 2020-11-16 13:11:27 +0100.
- * Commit ID: 13bdf073131d8bf40c54901df6988ae4e9c8f29f
+/* This file is autogenerated by cml-utils 2023-04-13 15:02:00 +0200.
+ * Commit ID: 5ac560288d46048f872ecdb8add53717f1efc0e1
  */
 
 #ifndef _SPARX5_SERDES_REGS_H_
@@ -26,10 +26,25 @@ enum sparx5_serdes_target {
 	NUM_TARGETS = 332
 };
 
+enum sparx5_serdes_tsize_enum {
+	TC_SD10G_LANE,
+	TC_SD_CMU,
+	TC_SD_CMU_CFG,
+	TC_SD_LANE,
+	TSIZE_LAST,
+};
+
+/* sparx5_serdes.c */
+extern const unsigned int *tsize;
+
+#define TSIZE(o) tsize[o]
+
 #define __REG(...)    __VA_ARGS__
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_01 */
-#define SD10G_LANE_LANE_01(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 4, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_01 */
+#define SD10G_LANE_LANE_01(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 4, 0,  \
+	      1, 4)
 
 #define SD10G_LANE_LANE_01_CFG_PMA_TX_CK_BITWIDTH_2_0 GENMASK(2, 0)
 #define SD10G_LANE_LANE_01_CFG_PMA_TX_CK_BITWIDTH_2_0_SET(x)\
@@ -49,8 +64,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_01_CFG_RXDET_STR_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_01_CFG_RXDET_STR, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_02 */
-#define SD10G_LANE_LANE_02(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 8, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_02 */
+#define SD10G_LANE_LANE_02(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 8, 0,  \
+	      1, 4)
 
 #define SD10G_LANE_LANE_02_CFG_EN_ADV            BIT(0)
 #define SD10G_LANE_LANE_02_CFG_EN_ADV_SET(x)\
@@ -82,8 +99,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_02_CFG_TAP_ADV_3_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_02_CFG_TAP_ADV_3_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_03 */
-#define SD10G_LANE_LANE_03(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 12, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_03 */
+#define SD10G_LANE_LANE_03(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 12, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_03_CFG_TAP_MAIN          BIT(0)
 #define SD10G_LANE_LANE_03_CFG_TAP_MAIN_SET(x)\
@@ -91,8 +110,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_03_CFG_TAP_MAIN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_03_CFG_TAP_MAIN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_04 */
-#define SD10G_LANE_LANE_04(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 16, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_04 */
+#define SD10G_LANE_LANE_04(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 16, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_04_CFG_TAP_DLY_4_0       GENMASK(4, 0)
 #define SD10G_LANE_LANE_04_CFG_TAP_DLY_4_0_SET(x)\
@@ -100,8 +121,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_04_CFG_TAP_DLY_4_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_04_CFG_TAP_DLY_4_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_06 */
-#define SD10G_LANE_LANE_06(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 24, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_06 */
+#define SD10G_LANE_LANE_06(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 24, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_06_CFG_PD_DRIVER         BIT(0)
 #define SD10G_LANE_LANE_06_CFG_PD_DRIVER_SET(x)\
@@ -139,8 +162,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_06_CFG_EN_PREEMPH_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_06_CFG_EN_PREEMPH, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_0B */
-#define SD10G_LANE_LANE_0B(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 44, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_0B */
+#define SD10G_LANE_LANE_0B(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 44, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_0B_CFG_EQ_RES_3_0        GENMASK(3, 0)
 #define SD10G_LANE_LANE_0B_CFG_EQ_RES_3_0_SET(x)\
@@ -172,8 +197,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_0B_CFG_RESETB_OSCAL_SQ_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_0B_CFG_RESETB_OSCAL_SQ, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_0C */
-#define SD10G_LANE_LANE_0C(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 48, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_0C */
+#define SD10G_LANE_LANE_0C(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 48, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_0C_CFG_OSCAL_AFE         BIT(0)
 #define SD10G_LANE_LANE_0C_CFG_OSCAL_AFE_SET(x)\
@@ -223,8 +250,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_0C_CFG_RX_PCIE_GEN12_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_0C_CFG_RX_PCIE_GEN12, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_0D */
-#define SD10G_LANE_LANE_0D(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 52, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_0D */
+#define SD10G_LANE_LANE_0D(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 52, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_0D_CFG_CTLE_M_THR_1_0    GENMASK(1, 0)
 #define SD10G_LANE_LANE_0D_CFG_CTLE_M_THR_1_0_SET(x)\
@@ -238,8 +267,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_0D_CFG_EQR_BYP_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_0D_CFG_EQR_BYP, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_0E */
-#define SD10G_LANE_LANE_0E(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 56, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_0E */
+#define SD10G_LANE_LANE_0E(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 56, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_0E_CFG_EQC_FORCE_3_0     GENMASK(3, 0)
 #define SD10G_LANE_LANE_0E_CFG_EQC_FORCE_3_0_SET(x)\
@@ -265,8 +296,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_0E_CFG_SUM_SETCM_EN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_0E_CFG_SUM_SETCM_EN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_0F */
-#define SD10G_LANE_LANE_0F(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 60, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_0F */
+#define SD10G_LANE_LANE_0F(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 60, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_0F_R_CDR_M_GEN1_7_0      GENMASK(7, 0)
 #define SD10G_LANE_LANE_0F_R_CDR_M_GEN1_7_0_SET(x)\
@@ -274,8 +307,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_0F_R_CDR_M_GEN1_7_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_0F_R_CDR_M_GEN1_7_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_13 */
-#define SD10G_LANE_LANE_13(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 76, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_13 */
+#define SD10G_LANE_LANE_13(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 76, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_13_CFG_DCDR_PD           BIT(0)
 #define SD10G_LANE_LANE_13_CFG_DCDR_PD_SET(x)\
@@ -295,8 +330,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_13_CFG_CDRCK_EN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_13_CFG_CDRCK_EN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_14 */
-#define SD10G_LANE_LANE_14(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 80, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_14 */
+#define SD10G_LANE_LANE_14(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 80, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_14_CFG_PI_EXT_DAC_7_0    GENMASK(7, 0)
 #define SD10G_LANE_LANE_14_CFG_PI_EXT_DAC_7_0_SET(x)\
@@ -304,8 +341,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_14_CFG_PI_EXT_DAC_7_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_14_CFG_PI_EXT_DAC_7_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_15 */
-#define SD10G_LANE_LANE_15(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 84, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_15 */
+#define SD10G_LANE_LANE_15(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 84, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_15_CFG_PI_EXT_DAC_15_8   GENMASK(7, 0)
 #define SD10G_LANE_LANE_15_CFG_PI_EXT_DAC_15_8_SET(x)\
@@ -313,8 +352,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_15_CFG_PI_EXT_DAC_15_8_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_15_CFG_PI_EXT_DAC_15_8, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_16 */
-#define SD10G_LANE_LANE_16(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 88, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_16 */
+#define SD10G_LANE_LANE_16(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 88, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_16_CFG_PI_EXT_DAC_23_16  GENMASK(7, 0)
 #define SD10G_LANE_LANE_16_CFG_PI_EXT_DAC_23_16_SET(x)\
@@ -322,8 +363,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_16_CFG_PI_EXT_DAC_23_16_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_16_CFG_PI_EXT_DAC_23_16, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_1A */
-#define SD10G_LANE_LANE_1A(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 104, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_1A */
+#define SD10G_LANE_LANE_1A(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 104, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_1A_CFG_PI_R_SCAN_EN      BIT(0)
 #define SD10G_LANE_LANE_1A_CFG_PI_R_SCAN_EN_SET(x)\
@@ -355,8 +398,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_1A_CFG_PI_FLOOP_STEPS_1_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_1A_CFG_PI_FLOOP_STEPS_1_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_22 */
-#define SD10G_LANE_LANE_22(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 136, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_22 */
+#define SD10G_LANE_LANE_22(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 136, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_22_CFG_DFETAP_EN_5_1     GENMASK(4, 0)
 #define SD10G_LANE_LANE_22_CFG_DFETAP_EN_5_1_SET(x)\
@@ -364,8 +409,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_22_CFG_DFETAP_EN_5_1_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_22_CFG_DFETAP_EN_5_1, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_23 */
-#define SD10G_LANE_LANE_23(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 140, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_23 */
+#define SD10G_LANE_LANE_23(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 140, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_23_CFG_DFE_PD            BIT(0)
 #define SD10G_LANE_LANE_23_CFG_DFE_PD_SET(x)\
@@ -397,8 +444,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_23_CFG_DFEDIG_M_2_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_23_CFG_DFEDIG_M_2_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_24 */
-#define SD10G_LANE_LANE_24(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 144, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_24 */
+#define SD10G_LANE_LANE_24(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 144, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_24_CFG_PI_BW_GEN1_3_0    GENMASK(3, 0)
 #define SD10G_LANE_LANE_24_CFG_PI_BW_GEN1_3_0_SET(x)\
@@ -412,8 +461,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_24_CFG_PI_BW_GEN2_3_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_24_CFG_PI_BW_GEN2_3_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_26 */
-#define SD10G_LANE_LANE_26(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 152, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_26 */
+#define SD10G_LANE_LANE_26(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 152, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_26_CFG_ISCAN_EXT_DAC_7_0 GENMASK(7, 0)
 #define SD10G_LANE_LANE_26_CFG_ISCAN_EXT_DAC_7_0_SET(x)\
@@ -421,8 +472,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_26_CFG_ISCAN_EXT_DAC_7_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_26_CFG_ISCAN_EXT_DAC_7_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_2F */
-#define SD10G_LANE_LANE_2F(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 188, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_2F */
+#define SD10G_LANE_LANE_2F(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 188, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_2F_CFG_VGA_CP_2_0        GENMASK(2, 0)
 #define SD10G_LANE_LANE_2F_CFG_VGA_CP_2_0_SET(x)\
@@ -436,8 +489,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_2F_CFG_VGA_CTRL_3_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_2F_CFG_VGA_CTRL_3_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_30 */
-#define SD10G_LANE_LANE_30(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 192, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_30 */
+#define SD10G_LANE_LANE_30(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 192, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_30_CFG_SUMMER_EN         BIT(0)
 #define SD10G_LANE_LANE_30_CFG_SUMMER_EN_SET(x)\
@@ -451,8 +506,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_30_CFG_RXDIV_SEL_2_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_30_CFG_RXDIV_SEL_2_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_31 */
-#define SD10G_LANE_LANE_31(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 196, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_31 */
+#define SD10G_LANE_LANE_31(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 196, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_31_CFG_PI_RSTN           BIT(0)
 #define SD10G_LANE_LANE_31_CFG_PI_RSTN_SET(x)\
@@ -490,8 +547,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_31_CFG_R50_EN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_31_CFG_R50_EN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_32 */
-#define SD10G_LANE_LANE_32(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 200, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_32 */
+#define SD10G_LANE_LANE_32(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 200, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_32_CFG_ITX_IPCLK_BASE_1_0 GENMASK(1, 0)
 #define SD10G_LANE_LANE_32_CFG_ITX_IPCLK_BASE_1_0_SET(x)\
@@ -505,8 +564,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_32_CFG_ITX_IPCML_BASE_1_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_32_CFG_ITX_IPCML_BASE_1_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_33 */
-#define SD10G_LANE_LANE_33(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 204, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_33 */
+#define SD10G_LANE_LANE_33(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 204, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_33_CFG_ITX_IPDRIVER_BASE_2_0 GENMASK(2, 0)
 #define SD10G_LANE_LANE_33_CFG_ITX_IPDRIVER_BASE_2_0_SET(x)\
@@ -520,8 +581,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_33_CFG_ITX_IPPREEMP_BASE_1_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_33_CFG_ITX_IPPREEMP_BASE_1_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_35 */
-#define SD10G_LANE_LANE_35(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 212, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_35 */
+#define SD10G_LANE_LANE_35(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 212, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_35_CFG_TXRATE_1_0        GENMASK(1, 0)
 #define SD10G_LANE_LANE_35_CFG_TXRATE_1_0_SET(x)\
@@ -535,8 +598,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_35_CFG_RXRATE_1_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_35_CFG_RXRATE_1_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_36 */
-#define SD10G_LANE_LANE_36(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 216, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_36 */
+#define SD10G_LANE_LANE_36(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 216, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_36_CFG_PREDRV_SLEWRATE_1_0 GENMASK(1, 0)
 #define SD10G_LANE_LANE_36_CFG_PREDRV_SLEWRATE_1_0_SET(x)\
@@ -568,8 +633,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_36_CFG_PRBS_SETB_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_36_CFG_PRBS_SETB, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_37 */
-#define SD10G_LANE_LANE_37(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 220, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_37 */
+#define SD10G_LANE_LANE_37(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 220, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_37_CFG_RXDET_COMP_PD     BIT(0)
 #define SD10G_LANE_LANE_37_CFG_RXDET_COMP_PD_SET(x)\
@@ -595,8 +662,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_37_CFG_IP_PRE_BASE_1_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_37_CFG_IP_PRE_BASE_1_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_39 */
-#define SD10G_LANE_LANE_39(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 228, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_39 */
+#define SD10G_LANE_LANE_39(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 228, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_39_CFG_RXFILT_Y_2_0      GENMASK(2, 0)
 #define SD10G_LANE_LANE_39_CFG_RXFILT_Y_2_0_SET(x)\
@@ -610,8 +679,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_39_CFG_RX_SSC_LH_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_39_CFG_RX_SSC_LH, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_3A */
-#define SD10G_LANE_LANE_3A(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 232, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_3A */
+#define SD10G_LANE_LANE_3A(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 232, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_3A_CFG_MP_MIN_3_0        GENMASK(3, 0)
 #define SD10G_LANE_LANE_3A_CFG_MP_MIN_3_0_SET(x)\
@@ -625,8 +696,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_3A_CFG_MP_MAX_3_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_3A_CFG_MP_MAX_3_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_3C */
-#define SD10G_LANE_LANE_3C(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 240, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_3C */
+#define SD10G_LANE_LANE_3C(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 240, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_3C_CFG_DIS_ACC           BIT(0)
 #define SD10G_LANE_LANE_3C_CFG_DIS_ACC_SET(x)\
@@ -640,8 +713,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_3C_CFG_DIS_2NDORDER_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_3C_CFG_DIS_2NDORDER, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_40 */
-#define SD10G_LANE_LANE_40(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 256, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_40 */
+#define SD10G_LANE_LANE_40(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 256, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_40_CFG_LANE_RESERVE_7_0  GENMASK(7, 0)
 #define SD10G_LANE_LANE_40_CFG_LANE_RESERVE_7_0_SET(x)\
@@ -649,8 +724,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_40_CFG_LANE_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_40_CFG_LANE_RESERVE_7_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_41 */
-#define SD10G_LANE_LANE_41(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 260, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_41 */
+#define SD10G_LANE_LANE_41(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 260, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_41_CFG_LANE_RESERVE_15_8 GENMASK(7, 0)
 #define SD10G_LANE_LANE_41_CFG_LANE_RESERVE_15_8_SET(x)\
@@ -658,8 +735,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_41_CFG_LANE_RESERVE_15_8_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_41_CFG_LANE_RESERVE_15_8, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_0:LANE_42 */
-#define SD10G_LANE_LANE_42(t)     __REG(TARGET_SD10G_LANE, t, 12, 0, 0, 1, 288, 264, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_0:LANE_42 */
+#define SD10G_LANE_LANE_42(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 0, 0, 1, 288, 264, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_42_CFG_CDR_KF_GEN1_2_0   GENMASK(2, 0)
 #define SD10G_LANE_LANE_42_CFG_CDR_KF_GEN1_2_0_SET(x)\
@@ -673,8 +752,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_42_CFG_CDR_KF_GEN2_2_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_42_CFG_CDR_KF_GEN2_2_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_1:LANE_48 */
-#define SD10G_LANE_LANE_48(t)     __REG(TARGET_SD10G_LANE, t, 12, 288, 0, 1, 40, 0, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_1:LANE_48 */
+#define SD10G_LANE_LANE_48(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 288, 0, 1, 40, 0, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_48_CFG_ALOS_THR_3_0      GENMASK(3, 0)
 #define SD10G_LANE_LANE_48_CFG_ALOS_THR_3_0_SET(x)\
@@ -694,8 +775,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_48_CFG_CLK_ENQ_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_48_CFG_CLK_ENQ, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_1:LANE_50 */
-#define SD10G_LANE_LANE_50(t)     __REG(TARGET_SD10G_LANE, t, 12, 288, 0, 1, 40, 32, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_1:LANE_50 */
+#define SD10G_LANE_LANE_50(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 288, 0, 1, 40, 32, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_50_CFG_SSC_PI_STEP_1_0   GENMASK(1, 0)
 #define SD10G_LANE_LANE_50_CFG_SSC_PI_STEP_1_0_SET(x)\
@@ -727,8 +810,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_50_CFG_JT_EN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_50_CFG_JT_EN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_2:LANE_52 */
-#define SD10G_LANE_LANE_52(t)     __REG(TARGET_SD10G_LANE, t, 12, 328, 0, 1, 24, 0, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_2:LANE_52 */
+#define SD10G_LANE_LANE_52(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 328, 0, 1, 24, 0, 0, \
+	      1, 4)
 
 #define SD10G_LANE_LANE_52_CFG_IBIAS_TUNE_RESERVE_5_0 GENMASK(5, 0)
 #define SD10G_LANE_LANE_52_CFG_IBIAS_TUNE_RESERVE_5_0_SET(x)\
@@ -736,8 +821,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_52_CFG_IBIAS_TUNE_RESERVE_5_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_52_CFG_IBIAS_TUNE_RESERVE_5_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_4:LANE_83 */
-#define SD10G_LANE_LANE_83(t)     __REG(TARGET_SD10G_LANE, t, 12, 464, 0, 1, 112, 60, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_4:LANE_83 */
+#define SD10G_LANE_LANE_83(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 464, 0, 1, 112, 60,  \
+	      0, 1, 4)
 
 #define SD10G_LANE_LANE_83_R_TX_BIT_REVERSE      BIT(0)
 #define SD10G_LANE_LANE_83_R_TX_BIT_REVERSE_SET(x)\
@@ -781,8 +868,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_83_R_CTLE_RSTN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_83_R_CTLE_RSTN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_5:LANE_93 */
-#define SD10G_LANE_LANE_93(t)     __REG(TARGET_SD10G_LANE, t, 12, 576, 0, 1, 64, 12, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_5:LANE_93 */
+#define SD10G_LANE_LANE_93(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 576, 0, 1, 64, 12, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_93_R_RXEI_FIFO_RST_EN    BIT(0)
 #define SD10G_LANE_LANE_93_R_RXEI_FIFO_RST_EN_SET(x)\
@@ -832,8 +921,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_93_R_RX_PCIE_GEN12_FROM_HWT_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_93_R_RX_PCIE_GEN12_FROM_HWT, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_5:LANE_94 */
-#define SD10G_LANE_LANE_94(t)     __REG(TARGET_SD10G_LANE, t, 12, 576, 0, 1, 64, 16, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_5:LANE_94 */
+#define SD10G_LANE_LANE_94(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 576, 0, 1, 64, 16, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_94_R_DWIDTHCTRL_2_0      GENMASK(2, 0)
 #define SD10G_LANE_LANE_94_R_DWIDTHCTRL_2_0_SET(x)\
@@ -865,8 +956,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_94_R_SWING_REG_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_94_R_SWING_REG, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_5:LANE_9E */
-#define SD10G_LANE_LANE_9E(t)     __REG(TARGET_SD10G_LANE, t, 12, 576, 0, 1, 64, 56, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_5:LANE_9E */
+#define SD10G_LANE_LANE_9E(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 576, 0, 1, 64, 56, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_9E_R_RXEQ_REG            BIT(0)
 #define SD10G_LANE_LANE_9E_R_RXEQ_REG_SET(x)\
@@ -886,8 +979,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_9E_R_EN_AUTO_CDR_RSTN_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_9E_R_EN_AUTO_CDR_RSTN, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_6:LANE_A1 */
-#define SD10G_LANE_LANE_A1(t)     __REG(TARGET_SD10G_LANE, t, 12, 640, 0, 1, 128, 4, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_6:LANE_A1 */
+#define SD10G_LANE_LANE_A1(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 640, 0, 1, 128, 4, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_A1_R_PMA_TXCK_DIV_SEL_1_0 GENMASK(1, 0)
 #define SD10G_LANE_LANE_A1_R_PMA_TXCK_DIV_SEL_1_0_SET(x)\
@@ -919,8 +1014,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_A1_R_PCLK_GATING_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_A1_R_PCLK_GATING, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_6:LANE_A2 */
-#define SD10G_LANE_LANE_A2(t)     __REG(TARGET_SD10G_LANE, t, 12, 640, 0, 1, 128, 8, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_6:LANE_A2 */
+#define SD10G_LANE_LANE_A2(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 640, 0, 1, 128, 8, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_A2_R_PCS2PMA_PHYMODE_4_0 GENMASK(4, 0)
 #define SD10G_LANE_LANE_A2_R_PCS2PMA_PHYMODE_4_0_SET(x)\
@@ -928,8 +1025,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_A2_R_PCS2PMA_PHYMODE_4_0_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_A2_R_PCS2PMA_PHYMODE_4_0, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_8:LANE_DF */
-#define SD10G_LANE_LANE_DF(t)     __REG(TARGET_SD10G_LANE, t, 12, 832, 0, 1, 84, 60, 0, 1, 4)
+/* SD10G_LANE_TARGET:LANE_GRP_8:LANE_DF */
+#define SD10G_LANE_LANE_DF(t)                                                  \
+	__REG(TARGET_SD10G_LANE, t, TSIZE(TC_SD10G_LANE), 832, 0, 1, 84, 60, 0,\
+	      1, 4)
 
 #define SD10G_LANE_LANE_DF_LOL_UDL               BIT(0)
 #define SD10G_LANE_LANE_DF_LOL_UDL_SET(x)\
@@ -955,8 +1054,10 @@ enum sparx5_serdes_target {
 #define SD10G_LANE_LANE_DF_SQUELCH_GET(x)\
 	FIELD_GET(SD10G_LANE_LANE_DF_SQUELCH, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_09 */
-#define SD25G_LANE_CMU_09(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 36, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_09 */
+#define SD25G_LANE_CMU_09(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 36, 0, 1, 4)
 
 #define SD25G_LANE_CMU_09_CFG_REFCK_TERM_EN      BIT(0)
 #define SD25G_LANE_CMU_09_CFG_REFCK_TERM_EN_SET(x)\
@@ -988,8 +1089,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_09_CFG_PLL_TP_SEL_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_09_CFG_PLL_TP_SEL_1_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_0B */
-#define SD25G_LANE_CMU_0B(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 44, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_0B */
+#define SD25G_LANE_CMU_0B(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 44, 0, 1, 4)
 
 #define SD25G_LANE_CMU_0B_CFG_FORCE_RX_FILT      BIT(0)
 #define SD25G_LANE_CMU_0B_CFG_FORCE_RX_FILT_SET(x)\
@@ -1039,8 +1142,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_0B_CFG_RST_TREE_PD_MAN_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_0B_CFG_RST_TREE_PD_MAN, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_0C */
-#define SD25G_LANE_CMU_0C(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 48, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_0C */
+#define SD25G_LANE_CMU_0C(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 48, 0, 1, 4)
 
 #define SD25G_LANE_CMU_0C_CFG_PLL_LOL_SET        BIT(0)
 #define SD25G_LANE_CMU_0C_CFG_PLL_LOL_SET_SET(x)\
@@ -1072,8 +1177,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_0C_CFG_VCO_DIV_MODE_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_0C_CFG_VCO_DIV_MODE_1_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_0D */
-#define SD25G_LANE_CMU_0D(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 52, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_0D */
+#define SD25G_LANE_CMU_0D(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 52, 0, 1, 4)
 
 #define SD25G_LANE_CMU_0D_CFG_CK_TREE_PD         BIT(0)
 #define SD25G_LANE_CMU_0D_CFG_CK_TREE_PD_SET(x)\
@@ -1105,8 +1212,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_0D_CFG_PRE_DIVSEL_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_0D_CFG_PRE_DIVSEL_1_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_0E */
-#define SD25G_LANE_CMU_0E(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 56, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_0E */
+#define SD25G_LANE_CMU_0E(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 56, 0, 1, 4)
 
 #define SD25G_LANE_CMU_0E_CFG_SEL_DIV_3_0        GENMASK(3, 0)
 #define SD25G_LANE_CMU_0E_CFG_SEL_DIV_3_0_SET(x)\
@@ -1120,8 +1229,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_0E_CFG_PMAA_CENTR_CK_PD_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_0E_CFG_PMAA_CENTR_CK_PD, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_13 */
-#define SD25G_LANE_CMU_13(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 76, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_13 */
+#define SD25G_LANE_CMU_13(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 76, 0, 1, 4)
 
 #define SD25G_LANE_CMU_13_CFG_PLL_RESERVE_3_0    GENMASK(3, 0)
 #define SD25G_LANE_CMU_13_CFG_PLL_RESERVE_3_0_SET(x)\
@@ -1135,8 +1246,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_13_CFG_JT_EN_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_13_CFG_JT_EN, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_18 */
-#define SD25G_LANE_CMU_18(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 96, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_18 */
+#define SD25G_LANE_CMU_18(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 96, 0, 1, 4)
 
 #define SD25G_LANE_CMU_18_R_PLL_RSTN             BIT(0)
 #define SD25G_LANE_CMU_18_R_PLL_RSTN_SET(x)\
@@ -1162,8 +1275,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_18_R_PLL_TP_SEL_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_18_R_PLL_TP_SEL_1_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_19 */
-#define SD25G_LANE_CMU_19(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 100, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_19 */
+#define SD25G_LANE_CMU_19(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 100, 0, 1, 4)
 
 #define SD25G_LANE_CMU_19_R_CK_RESETB            BIT(0)
 #define SD25G_LANE_CMU_19_R_CK_RESETB_SET(x)\
@@ -1177,8 +1292,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_19_R_PLL_DLOL_EN_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_19_R_PLL_DLOL_EN, x)
 
-/*      SD25G_TARGET:CMU_GRP_0:CMU_1A */
-#define SD25G_LANE_CMU_1A(t)      __REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 104, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_0:CMU_1A */
+#define SD25G_LANE_CMU_1A(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 0, 0, 1, 132, 104, 0, 1, 4)
 
 #define SD25G_LANE_CMU_1A_R_DWIDTHCTRL_2_0       GENMASK(2, 0)
 #define SD25G_LANE_CMU_1A_R_DWIDTHCTRL_2_0_SET(x)\
@@ -1204,8 +1321,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_1A_R_REG_MANUAL_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_1A_R_REG_MANUAL, x)
 
-/*      SD25G_TARGET:CMU_GRP_1:CMU_2A */
-#define SD25G_LANE_CMU_2A(t)      __REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 36, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_1:CMU_2A */
+#define SD25G_LANE_CMU_2A(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 36, 0, 1, 4)
 
 #define SD25G_LANE_CMU_2A_R_DBG_SEL_1_0          GENMASK(1, 0)
 #define SD25G_LANE_CMU_2A_R_DBG_SEL_1_0_SET(x)\
@@ -1225,8 +1344,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_2A_R_DBG_LOL_STATUS_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_2A_R_DBG_LOL_STATUS, x)
 
-/*      SD25G_TARGET:CMU_GRP_1:CMU_30 */
-#define SD25G_LANE_CMU_30(t)      __REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 60, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_1:CMU_30 */
+#define SD25G_LANE_CMU_30(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 60, 0, 1, 4)
 
 #define SD25G_LANE_CMU_30_R_TXFIFO_CK_DIV_PMAD_2_0 GENMASK(2, 0)
 #define SD25G_LANE_CMU_30_R_TXFIFO_CK_DIV_PMAD_2_0_SET(x)\
@@ -1240,8 +1361,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_30_R_RXFIFO_CK_DIV_PMAD_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_30_R_RXFIFO_CK_DIV_PMAD_2_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_1:CMU_31 */
-#define SD25G_LANE_CMU_31(t)      __REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 64, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_1:CMU_31 */
+#define SD25G_LANE_CMU_31(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 132, 0, 1, 124, 64, 0, 1, 4)
 
 #define SD25G_LANE_CMU_31_CFG_COMMON_RESERVE_7_0 GENMASK(7, 0)
 #define SD25G_LANE_CMU_31_CFG_COMMON_RESERVE_7_0_SET(x)\
@@ -1249,8 +1372,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_31_CFG_COMMON_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_31_CFG_COMMON_RESERVE_7_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_2:CMU_40 */
-#define SD25G_LANE_CMU_40(t)      __REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_2:CMU_40 */
+#define SD25G_LANE_CMU_40(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 0, 0, 1, 4)
 
 #define SD25G_LANE_CMU_40_L0_CFG_CKSKEW_CTRL     BIT(0)
 #define SD25G_LANE_CMU_40_L0_CFG_CKSKEW_CTRL_SET(x)\
@@ -1288,8 +1413,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_40_L0_CFG_TXCAL_RST_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_40_L0_CFG_TXCAL_RST, x)
 
-/*      SD25G_TARGET:CMU_GRP_2:CMU_45 */
-#define SD25G_LANE_CMU_45(t)      __REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 20, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_2:CMU_45 */
+#define SD25G_LANE_CMU_45(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 20, 0, 1, 4)
 
 #define SD25G_LANE_CMU_45_L0_CFG_TX_RESERVE_7_0  GENMASK(7, 0)
 #define SD25G_LANE_CMU_45_L0_CFG_TX_RESERVE_7_0_SET(x)\
@@ -1297,8 +1424,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_45_L0_CFG_TX_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_45_L0_CFG_TX_RESERVE_7_0, x)
 
-/*      SD25G_TARGET:CMU_GRP_2:CMU_46 */
-#define SD25G_LANE_CMU_46(t)      __REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 24, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_2:CMU_46 */
+#define SD25G_LANE_CMU_46(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 256, 0, 1, 512, 24, 0, 1, 4)
 
 #define SD25G_LANE_CMU_46_L0_CFG_TX_RESERVE_15_8 GENMASK(7, 0)
 #define SD25G_LANE_CMU_46_L0_CFG_TX_RESERVE_15_8_SET(x)\
@@ -1306,8 +1435,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_46_L0_CFG_TX_RESERVE_15_8_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_46_L0_CFG_TX_RESERVE_15_8, x)
 
-/*      SD25G_TARGET:CMU_GRP_3:CMU_C0 */
-#define SD25G_LANE_CMU_C0(t)      __REG(TARGET_SD25G_LANE, t, 8, 768, 0, 1, 252, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_3:CMU_C0 */
+#define SD25G_LANE_CMU_C0(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 768, 0, 1, 252, 0, 0, 1, 4)
 
 #define SD25G_LANE_CMU_C0_READ_VCO_CTUNE_3_0     GENMASK(3, 0)
 #define SD25G_LANE_CMU_C0_READ_VCO_CTUNE_3_0_SET(x)\
@@ -1321,8 +1452,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_C0_PLL_LOL_UDL_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_C0_PLL_LOL_UDL, x)
 
-/*      SD25G_TARGET:CMU_GRP_4:CMU_FF */
-#define SD25G_LANE_CMU_FF(t)      __REG(TARGET_SD25G_LANE, t, 8, 1020, 0, 1, 4, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:CMU_GRP_4:CMU_FF */
+#define SD25G_LANE_CMU_FF(t)                                                   \
+	__REG(TARGET_SD25G_LANE, t, 8, 1020, 0, 1, 4, 0, 0, 1, 4)
 
 #define SD25G_LANE_CMU_FF_REGISTER_TABLE_INDEX   GENMASK(7, 0)
 #define SD25G_LANE_CMU_FF_REGISTER_TABLE_INDEX_SET(x)\
@@ -1330,8 +1463,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_CMU_FF_REGISTER_TABLE_INDEX_GET(x)\
 	FIELD_GET(SD25G_LANE_CMU_FF_REGISTER_TABLE_INDEX, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_00 */
-#define SD25G_LANE_LANE_00(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_00 */
+#define SD25G_LANE_LANE_00(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 0, 0, 1, 4)
 
 #define SD25G_LANE_LANE_00_LN_CFG_ITX_VC_DRIVER_3_0 GENMASK(3, 0)
 #define SD25G_LANE_LANE_00_LN_CFG_ITX_VC_DRIVER_3_0_SET(x)\
@@ -1345,8 +1480,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_00_LN_CFG_ITX_IPCML_BASE_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_00_LN_CFG_ITX_IPCML_BASE_1_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_01 */
-#define SD25G_LANE_LANE_01(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 4, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_01 */
+#define SD25G_LANE_LANE_01(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 4, 0, 1, 4)
 
 #define SD25G_LANE_LANE_01_LN_CFG_ITX_IPDRIVER_BASE_2_0 GENMASK(2, 0)
 #define SD25G_LANE_LANE_01_LN_CFG_ITX_IPDRIVER_BASE_2_0_SET(x)\
@@ -1360,8 +1497,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_01_LN_CFG_TX_PREDIV_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_01_LN_CFG_TX_PREDIV_1_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_03 */
-#define SD25G_LANE_LANE_03(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 12, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_03 */
+#define SD25G_LANE_LANE_03(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 12, 0, 1, 4)
 
 #define SD25G_LANE_LANE_03_LN_CFG_TAP_DLY_4_0    GENMASK(4, 0)
 #define SD25G_LANE_LANE_03_LN_CFG_TAP_DLY_4_0_SET(x)\
@@ -1369,8 +1508,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_03_LN_CFG_TAP_DLY_4_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_03_LN_CFG_TAP_DLY_4_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_04 */
-#define SD25G_LANE_LANE_04(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 16, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_04 */
+#define SD25G_LANE_LANE_04(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 16, 0, 1, 4)
 
 #define SD25G_LANE_LANE_04_LN_CFG_TX2RX_LP_EN    BIT(0)
 #define SD25G_LANE_LANE_04_LN_CFG_TX2RX_LP_EN_SET(x)\
@@ -1408,8 +1549,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_04_LN_CFG_TAP_MAIN_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_04_LN_CFG_TAP_MAIN, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_05 */
-#define SD25G_LANE_LANE_05(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 20, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_05 */
+#define SD25G_LANE_LANE_05(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 20, 0, 1, 4)
 
 #define SD25G_LANE_LANE_05_LN_CFG_TAP_DLY2_3_0   GENMASK(3, 0)
 #define SD25G_LANE_LANE_05_LN_CFG_TAP_DLY2_3_0_SET(x)\
@@ -1423,8 +1566,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_05_LN_CFG_BW_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_05_LN_CFG_BW_1_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_06 */
-#define SD25G_LANE_LANE_06(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 24, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_06 */
+#define SD25G_LANE_LANE_06(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 24, 0, 1, 4)
 
 #define SD25G_LANE_LANE_06_LN_CFG_EN_MAIN        BIT(0)
 #define SD25G_LANE_LANE_06_LN_CFG_EN_MAIN_SET(x)\
@@ -1438,8 +1583,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_06_LN_CFG_TAP_ADV_3_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_06_LN_CFG_TAP_ADV_3_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_07 */
-#define SD25G_LANE_LANE_07(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 28, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_07 */
+#define SD25G_LANE_LANE_07(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 28, 0, 1, 4)
 
 #define SD25G_LANE_LANE_07_LN_CFG_EN_ADV         BIT(0)
 #define SD25G_LANE_LANE_07_LN_CFG_EN_ADV_SET(x)\
@@ -1459,8 +1606,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_07_LN_CFG_EN_DLY_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_07_LN_CFG_EN_DLY, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_09 */
-#define SD25G_LANE_LANE_09(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 36, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_09 */
+#define SD25G_LANE_LANE_09(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 36, 0, 1, 4)
 
 #define SD25G_LANE_LANE_09_LN_CFG_TXCAL_VALID_SEL_3_0 GENMASK(3, 0)
 #define SD25G_LANE_LANE_09_LN_CFG_TXCAL_VALID_SEL_3_0_SET(x)\
@@ -1468,8 +1617,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_09_LN_CFG_TXCAL_VALID_SEL_3_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_09_LN_CFG_TXCAL_VALID_SEL_3_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0A */
-#define SD25G_LANE_LANE_0A(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 40, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0A */
+#define SD25G_LANE_LANE_0A(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 40, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0A_LN_CFG_TXCAL_SHIFT_CODE_5_0 GENMASK(5, 0)
 #define SD25G_LANE_LANE_0A_LN_CFG_TXCAL_SHIFT_CODE_5_0_SET(x)\
@@ -1477,8 +1628,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0A_LN_CFG_TXCAL_SHIFT_CODE_5_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0A_LN_CFG_TXCAL_SHIFT_CODE_5_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0B */
-#define SD25G_LANE_LANE_0B(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 44, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0B */
+#define SD25G_LANE_LANE_0B(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 44, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0B_LN_CFG_TXCAL_MAN_EN   BIT(0)
 #define SD25G_LANE_LANE_0B_LN_CFG_TXCAL_MAN_EN_SET(x)\
@@ -1498,8 +1651,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0B_LN_CFG_QUAD_MAN_1_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0B_LN_CFG_QUAD_MAN_1_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0C */
-#define SD25G_LANE_LANE_0C(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 48, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0C */
+#define SD25G_LANE_LANE_0C(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 48, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0C_LN_CFG_PMA_TX_CK_BITWIDTH_2_0 GENMASK(2, 0)
 #define SD25G_LANE_LANE_0C_LN_CFG_PMA_TX_CK_BITWIDTH_2_0_SET(x)\
@@ -1519,8 +1674,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0C_LN_CFG_RXTERM_PD_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0C_LN_CFG_RXTERM_PD, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0D */
-#define SD25G_LANE_LANE_0D(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 52, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0D */
+#define SD25G_LANE_LANE_0D(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 52, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0D_LN_CFG_RXTERM_2_0     GENMASK(2, 0)
 #define SD25G_LANE_LANE_0D_LN_CFG_RXTERM_2_0_SET(x)\
@@ -1552,8 +1709,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0D_LN_CFG_DFECK_EN_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0D_LN_CFG_DFECK_EN, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0E */
-#define SD25G_LANE_LANE_0E(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 56, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0E */
+#define SD25G_LANE_LANE_0E(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 56, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0E_LN_CFG_ISCAN_EN       BIT(0)
 #define SD25G_LANE_LANE_0E_LN_CFG_ISCAN_EN_SET(x)\
@@ -1579,8 +1738,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0E_LN_CFG_DFEDIG_M_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0E_LN_CFG_DFEDIG_M_2_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_0F */
-#define SD25G_LANE_LANE_0F(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 60, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_0F */
+#define SD25G_LANE_LANE_0F(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 60, 0, 1, 4)
 
 #define SD25G_LANE_LANE_0F_LN_CFG_DFETAP_EN_5_1  GENMASK(4, 0)
 #define SD25G_LANE_LANE_0F_LN_CFG_DFETAP_EN_5_1_SET(x)\
@@ -1588,8 +1749,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_0F_LN_CFG_DFETAP_EN_5_1_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_0F_LN_CFG_DFETAP_EN_5_1, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_18 */
-#define SD25G_LANE_LANE_18(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 96, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_18 */
+#define SD25G_LANE_LANE_18(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 96, 0, 1, 4)
 
 #define SD25G_LANE_LANE_18_LN_CFG_CDRCK_EN       BIT(0)
 #define SD25G_LANE_LANE_18_LN_CFG_CDRCK_EN_SET(x)\
@@ -1621,8 +1784,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_18_LN_CFG_RXDIV_SEL_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_18_LN_CFG_RXDIV_SEL_2_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_19 */
-#define SD25G_LANE_LANE_19(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 100, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_19 */
+#define SD25G_LANE_LANE_19(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 100, 0, 1, 4)
 
 #define SD25G_LANE_LANE_19_LN_CFG_DCDR_PD        BIT(0)
 #define SD25G_LANE_LANE_19_LN_CFG_DCDR_PD_SET(x)\
@@ -1672,8 +1837,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_19_LN_CFG_PD_CTLE_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_19_LN_CFG_PD_CTLE, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_1A */
-#define SD25G_LANE_LANE_1A(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 104, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_1A */
+#define SD25G_LANE_LANE_1A(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 104, 0, 1, 4)
 
 #define SD25G_LANE_LANE_1A_LN_CFG_CTLE_TP_EN     BIT(0)
 #define SD25G_LANE_LANE_1A_LN_CFG_CTLE_TP_EN_SET(x)\
@@ -1687,8 +1854,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_1A_LN_CFG_CDR_KF_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_1A_LN_CFG_CDR_KF_2_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_1B */
-#define SD25G_LANE_LANE_1B(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 108, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_1B */
+#define SD25G_LANE_LANE_1B(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 108, 0, 1, 4)
 
 #define SD25G_LANE_LANE_1B_LN_CFG_CDR_M_7_0      GENMASK(7, 0)
 #define SD25G_LANE_LANE_1B_LN_CFG_CDR_M_7_0_SET(x)\
@@ -1696,8 +1865,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_1B_LN_CFG_CDR_M_7_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_1B_LN_CFG_CDR_M_7_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_1C */
-#define SD25G_LANE_LANE_1C(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 112, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_1C */
+#define SD25G_LANE_LANE_1C(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 112, 0, 1, 4)
 
 #define SD25G_LANE_LANE_1C_LN_CFG_CDR_RSTN       BIT(0)
 #define SD25G_LANE_LANE_1C_LN_CFG_CDR_RSTN_SET(x)\
@@ -1723,8 +1894,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_1C_LN_CFG_EQC_FORCE_3_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_1C_LN_CFG_EQC_FORCE_3_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_1D */
-#define SD25G_LANE_LANE_1D(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 116, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_1D */
+#define SD25G_LANE_LANE_1D(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 116, 0, 1, 4)
 
 #define SD25G_LANE_LANE_1D_LN_CFG_ISCAN_EXT_OVR  BIT(0)
 #define SD25G_LANE_LANE_1D_LN_CFG_ISCAN_EXT_OVR_SET(x)\
@@ -1774,8 +1947,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_1D_LN_CFG_PI_HOLD_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_1D_LN_CFG_PI_HOLD, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_1E */
-#define SD25G_LANE_LANE_1E(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 120, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_1E */
+#define SD25G_LANE_LANE_1E(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 120, 0, 1, 4)
 
 #define SD25G_LANE_LANE_1E_LN_CFG_PI_STEPS_1_0   GENMASK(1, 0)
 #define SD25G_LANE_LANE_1E_LN_CFG_PI_STEPS_1_0_SET(x)\
@@ -1807,8 +1982,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_1E_LN_CFG_PMAD_CK_PD_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_1E_LN_CFG_PMAD_CK_PD, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_21 */
-#define SD25G_LANE_LANE_21(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 132, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_21 */
+#define SD25G_LANE_LANE_21(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 132, 0, 1, 4)
 
 #define SD25G_LANE_LANE_21_LN_CFG_VGA_CTRL_BYP_4_0 GENMASK(4, 0)
 #define SD25G_LANE_LANE_21_LN_CFG_VGA_CTRL_BYP_4_0_SET(x)\
@@ -1816,8 +1993,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_21_LN_CFG_VGA_CTRL_BYP_4_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_21_LN_CFG_VGA_CTRL_BYP_4_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_22 */
-#define SD25G_LANE_LANE_22(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 136, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_22 */
+#define SD25G_LANE_LANE_22(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 136, 0, 1, 4)
 
 #define SD25G_LANE_LANE_22_LN_CFG_EQR_FORCE_3_0  GENMASK(3, 0)
 #define SD25G_LANE_LANE_22_LN_CFG_EQR_FORCE_3_0_SET(x)\
@@ -1825,8 +2004,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_22_LN_CFG_EQR_FORCE_3_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_22_LN_CFG_EQR_FORCE_3_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_25 */
-#define SD25G_LANE_LANE_25(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 148, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_25 */
+#define SD25G_LANE_LANE_25(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 148, 0, 1, 4)
 
 #define SD25G_LANE_LANE_25_LN_CFG_INIT_POS_ISCAN_6_0 GENMASK(6, 0)
 #define SD25G_LANE_LANE_25_LN_CFG_INIT_POS_ISCAN_6_0_SET(x)\
@@ -1834,8 +2015,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_25_LN_CFG_INIT_POS_ISCAN_6_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_25_LN_CFG_INIT_POS_ISCAN_6_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_26 */
-#define SD25G_LANE_LANE_26(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 152, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_26 */
+#define SD25G_LANE_LANE_26(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 152, 0, 1, 4)
 
 #define SD25G_LANE_LANE_26_LN_CFG_INIT_POS_IPI_6_0 GENMASK(6, 0)
 #define SD25G_LANE_LANE_26_LN_CFG_INIT_POS_IPI_6_0_SET(x)\
@@ -1843,8 +2026,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_26_LN_CFG_INIT_POS_IPI_6_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_26_LN_CFG_INIT_POS_IPI_6_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_28 */
-#define SD25G_LANE_LANE_28(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 160, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_28 */
+#define SD25G_LANE_LANE_28(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 160, 0, 1, 4)
 
 #define SD25G_LANE_LANE_28_LN_CFG_ISCAN_MODE_EN  BIT(0)
 #define SD25G_LANE_LANE_28_LN_CFG_ISCAN_MODE_EN_SET(x)\
@@ -1870,8 +2055,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_28_LN_CFG_RX_SUBRATE_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_28_LN_CFG_RX_SUBRATE_2_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_2B */
-#define SD25G_LANE_LANE_2B(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 172, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_2B */
+#define SD25G_LANE_LANE_2B(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 172, 0, 1, 4)
 
 #define SD25G_LANE_LANE_2B_LN_CFG_PI_BW_3_0      GENMASK(3, 0)
 #define SD25G_LANE_LANE_2B_LN_CFG_PI_BW_3_0_SET(x)\
@@ -1891,8 +2078,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_2B_LN_CFG_RSTN_TXDUPU_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_2B_LN_CFG_RSTN_TXDUPU, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_2C */
-#define SD25G_LANE_LANE_2C(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 176, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_2C */
+#define SD25G_LANE_LANE_2C(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 176, 0, 1, 4)
 
 #define SD25G_LANE_LANE_2C_LN_CFG_TX_SUBRATE_2_0 GENMASK(2, 0)
 #define SD25G_LANE_LANE_2C_LN_CFG_TX_SUBRATE_2_0_SET(x)\
@@ -1906,8 +2095,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_2C_LN_CFG_DIS_2NDORDER_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_2C_LN_CFG_DIS_2NDORDER, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_2D */
-#define SD25G_LANE_LANE_2D(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 180, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_2D */
+#define SD25G_LANE_LANE_2D(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 180, 0, 1, 4)
 
 #define SD25G_LANE_LANE_2D_LN_CFG_ALOS_THR_2_0   GENMASK(2, 0)
 #define SD25G_LANE_LANE_2D_LN_CFG_ALOS_THR_2_0_SET(x)\
@@ -1921,8 +2112,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_2D_LN_CFG_SAT_CNTSEL_2_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_2D_LN_CFG_SAT_CNTSEL_2_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_2E */
-#define SD25G_LANE_LANE_2E(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 184, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_2E */
+#define SD25G_LANE_LANE_2E(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 184, 0, 1, 4)
 
 #define SD25G_LANE_LANE_2E_LN_CFG_EN_FAST_ISCAN  BIT(0)
 #define SD25G_LANE_LANE_2E_LN_CFG_EN_FAST_ISCAN_SET(x)\
@@ -1972,8 +2165,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_2E_LN_CFG_CTLE_RSTN_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_2E_LN_CFG_CTLE_RSTN, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_40 */
-#define SD25G_LANE_LANE_40(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 256, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_40 */
+#define SD25G_LANE_LANE_40(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 256, 0, 1, 4)
 
 #define SD25G_LANE_LANE_40_LN_R_TX_BIT_REVERSE   BIT(0)
 #define SD25G_LANE_LANE_40_LN_R_TX_BIT_REVERSE_SET(x)\
@@ -2017,8 +2212,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_40_LN_R_CTLE_RSTN_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_40_LN_R_CTLE_RSTN, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_42 */
-#define SD25G_LANE_LANE_42(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 264, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_42 */
+#define SD25G_LANE_LANE_42(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 264, 0, 1, 4)
 
 #define SD25G_LANE_LANE_42_LN_CFG_TX_RESERVE_7_0 GENMASK(7, 0)
 #define SD25G_LANE_LANE_42_LN_CFG_TX_RESERVE_7_0_SET(x)\
@@ -2026,8 +2223,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_42_LN_CFG_TX_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_42_LN_CFG_TX_RESERVE_7_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_43 */
-#define SD25G_LANE_LANE_43(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 268, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_43 */
+#define SD25G_LANE_LANE_43(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 268, 0, 1, 4)
 
 #define SD25G_LANE_LANE_43_LN_CFG_TX_RESERVE_15_8 GENMASK(7, 0)
 #define SD25G_LANE_LANE_43_LN_CFG_TX_RESERVE_15_8_SET(x)\
@@ -2035,8 +2234,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_43_LN_CFG_TX_RESERVE_15_8_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_43_LN_CFG_TX_RESERVE_15_8, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_44 */
-#define SD25G_LANE_LANE_44(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 272, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_44 */
+#define SD25G_LANE_LANE_44(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 272, 0, 1, 4)
 
 #define SD25G_LANE_LANE_44_LN_CFG_RX_RESERVE_7_0 GENMASK(7, 0)
 #define SD25G_LANE_LANE_44_LN_CFG_RX_RESERVE_7_0_SET(x)\
@@ -2044,8 +2245,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_44_LN_CFG_RX_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_44_LN_CFG_RX_RESERVE_7_0, x)
 
-/*      SD25G_TARGET:LANE_GRP_0:LANE_45 */
-#define SD25G_LANE_LANE_45(t)     __REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 276, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_0:LANE_45 */
+#define SD25G_LANE_LANE_45(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1024, 0, 1, 768, 276, 0, 1, 4)
 
 #define SD25G_LANE_LANE_45_LN_CFG_RX_RESERVE_15_8 GENMASK(7, 0)
 #define SD25G_LANE_LANE_45_LN_CFG_RX_RESERVE_15_8_SET(x)\
@@ -2053,8 +2256,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_45_LN_CFG_RX_RESERVE_15_8_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_45_LN_CFG_RX_RESERVE_15_8, x)
 
-/*      SD25G_TARGET:LANE_GRP_1:LANE_DE */
-#define SD25G_LANE_LANE_DE(t)     __REG(TARGET_SD25G_LANE, t, 8, 1792, 0, 1, 128, 120, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_TARGET:LANE_GRP_1:LANE_DE */
+#define SD25G_LANE_LANE_DE(t)                                                  \
+	__REG(TARGET_SD25G_LANE, t, 8, 1792, 0, 1, 128, 120, 0, 1, 4)
 
 #define SD25G_LANE_LANE_DE_LN_LOL_UDL            BIT(0)
 #define SD25G_LANE_LANE_DE_LN_LOL_UDL_SET(x)\
@@ -2080,8 +2285,10 @@ enum sparx5_serdes_target {
 #define SD25G_LANE_LANE_DE_LN_PMA_RXEI_GET(x)\
 	FIELD_GET(SD25G_LANE_LANE_DE_LN_PMA_RXEI, x)
 
-/*      SD10G_LANE_TARGET:LANE_GRP_8:LANE_DF */
-#define SD6G_LANE_LANE_DF(t)      __REG(TARGET_SD6G_LANE, t, 13, 832, 0, 1, 84, 60, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD10G_LANE_TARGET:LANE_GRP_8:LANE_DF */
+#define SD6G_LANE_LANE_DF(t)                                                   \
+	__REG(TARGET_SD6G_LANE, t, 13, 832, 0, 1, 84, 60, 0, 1, 4)
 
 #define SD6G_LANE_LANE_DF_LOL_UDL                BIT(0)
 #define SD6G_LANE_LANE_DF_LOL_UDL_SET(x)\
@@ -2107,8 +2314,9 @@ enum sparx5_serdes_target {
 #define SD6G_LANE_LANE_DF_SQUELCH_GET(x)\
 	FIELD_GET(SD6G_LANE_LANE_DF_SQUELCH, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_0:CMU_00 */
-#define SD_CMU_CMU_00(t)          __REG(TARGET_SD_CMU, t, 14, 0, 0, 1, 20, 0, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_0:CMU_00 */
+#define SD_CMU_CMU_00(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 0, 0, 1, 20, 0, 0, 1, 4)
 
 #define SD_CMU_CMU_00_R_HWT_SIMULATION_MODE      BIT(0)
 #define SD_CMU_CMU_00_R_HWT_SIMULATION_MODE_SET(x)\
@@ -2134,8 +2342,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0_GET(x)\
 	FIELD_GET(SD_CMU_CMU_00_CFG_PLL_TP_SEL_1_0, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_05 */
-#define SD_CMU_CMU_05(t)          __REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 0, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_1:CMU_05 */
+#define SD_CMU_CMU_05(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 20, 0, 1, 72, 0, 0, 1, 4)
 
 #define SD_CMU_CMU_05_CFG_REFCK_TERM_EN          BIT(0)
 #define SD_CMU_CMU_05_CFG_REFCK_TERM_EN_SET(x)\
@@ -2149,9 +2358,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0_GET(x)\
 	FIELD_GET(SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_06 */
-#define SD_CMU_CMU_06(t) \
-	__REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 4, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_1:CMU_06 */
+#define SD_CMU_CMU_06(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 20, 0, 1, 72, 4, 0, 1, 4)
 
 #define SD_CMU_CMU_06_CFG_DISLOS                 BIT(0)
 #define SD_CMU_CMU_06_CFG_DISLOS_SET(x)\
@@ -2201,9 +2410,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_06_CFG_VCO_CAL_BYP_GET(x)\
 	FIELD_GET(SD_CMU_CMU_06_CFG_VCO_CAL_BYP, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_08 */
-#define SD_CMU_CMU_08(t) \
-	__REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 12, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_1:CMU_08 */
+#define SD_CMU_CMU_08(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 20, 0, 1, 72, 12, 0, 1, 4)
 
 #define SD_CMU_CMU_08_CFG_VFILT2PAD              BIT(0)
 #define SD_CMU_CMU_08_CFG_VFILT2PAD_SET(x)\
@@ -2235,8 +2444,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN_GET(x)\
 	FIELD_GET(SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_09 */
-#define SD_CMU_CMU_09(t)          __REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 16, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_1:CMU_09 */
+#define SD_CMU_CMU_09(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 20, 0, 1, 72, 16, 0, 1, 4)
 
 #define SD_CMU_CMU_09_CFG_EN_TX_CK_UP            BIT(0)
 #define SD_CMU_CMU_09_CFG_EN_TX_CK_UP_SET(x)\
@@ -2262,8 +2472,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_09_CFG_SW_10G_GET(x)\
 	FIELD_GET(SD_CMU_CMU_09_CFG_SW_10G, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_0D */
-#define SD_CMU_CMU_0D(t)          __REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 32, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_1:CMU_0D */
+#define SD_CMU_CMU_0D(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 20, 0, 1, 72, 32, 0, 1, 4)
 
 #define SD_CMU_CMU_0D_CFG_PD_DIV64               BIT(0)
 #define SD_CMU_CMU_0D_CFG_PD_DIV64_SET(x)\
@@ -2295,8 +2506,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_0D_CFG_REFCK_PD_GET(x)\
 	FIELD_GET(SD_CMU_CMU_0D_CFG_REFCK_PD, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_3:CMU_1B */
-#define SD_CMU_CMU_1B(t)          __REG(TARGET_SD_CMU, t, 14, 104, 0, 1, 20, 4, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_3:CMU_1B */
+#define SD_CMU_CMU_1B(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 104, 0, 1, 20, 4, 0, 1, 4)
 
 #define SD_CMU_CMU_1B_CFG_RESERVE_7_0            GENMASK(7, 0)
 #define SD_CMU_CMU_1B_CFG_RESERVE_7_0_SET(x)\
@@ -2304,8 +2516,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_1B_CFG_RESERVE_7_0_GET(x)\
 	FIELD_GET(SD_CMU_CMU_1B_CFG_RESERVE_7_0, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_4:CMU_1F */
-#define SD_CMU_CMU_1F(t)          __REG(TARGET_SD_CMU, t, 14, 124, 0, 1, 68, 0, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_4:CMU_1F */
+#define SD_CMU_CMU_1F(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 124, 0, 1, 68, 0, 0, 1, 4)
 
 #define SD_CMU_CMU_1F_CFG_BIAS_DN_EN             BIT(0)
 #define SD_CMU_CMU_1F_CFG_BIAS_DN_EN_SET(x)\
@@ -2331,8 +2544,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_1F_CFG_VTUNE_SEL_GET(x)\
 	FIELD_GET(SD_CMU_CMU_1F_CFG_VTUNE_SEL, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_5:CMU_30 */
-#define SD_CMU_CMU_30(t)          __REG(TARGET_SD_CMU, t, 14, 192, 0, 1, 72, 0, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_5:CMU_30 */
+#define SD_CMU_CMU_30(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 192, 0, 1, 72, 0, 0, 1, 4)
 
 #define SD_CMU_CMU_30_R_PLL_DLOL_EN              BIT(0)
 #define SD_CMU_CMU_30_R_PLL_DLOL_EN_SET(x)\
@@ -2340,8 +2554,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_30_R_PLL_DLOL_EN_GET(x)\
 	FIELD_GET(SD_CMU_CMU_30_R_PLL_DLOL_EN, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_6:CMU_44 */
-#define SD_CMU_CMU_44(t)          __REG(TARGET_SD_CMU, t, 14, 264, 0, 1, 632, 8, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_6:CMU_44 */
+#define SD_CMU_CMU_44(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 264, 0, 1, 632, 8, 0, 1, 4)
 
 #define SD_CMU_CMU_44_R_PLL_RSTN                 BIT(0)
 #define SD_CMU_CMU_44_R_PLL_RSTN_SET(x)\
@@ -2355,8 +2570,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_44_R_CK_RESETB_GET(x)\
 	FIELD_GET(SD_CMU_CMU_44_R_CK_RESETB, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_6:CMU_45 */
-#define SD_CMU_CMU_45(t)          __REG(TARGET_SD_CMU, t, 14, 264, 0, 1, 632, 12, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_6:CMU_45 */
+#define SD_CMU_CMU_45(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 264, 0, 1, 632, 12, 0, 1, 4)
 
 #define SD_CMU_CMU_45_R_EN_RATECHG_CTRL          BIT(0)
 #define SD_CMU_CMU_45_R_EN_RATECHG_CTRL_SET(x)\
@@ -2406,8 +2622,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_45_R_AUTO_RST_TREE_PD_MAN_GET(x)\
 	FIELD_GET(SD_CMU_CMU_45_R_AUTO_RST_TREE_PD_MAN, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_6:CMU_47 */
-#define SD_CMU_CMU_47(t)          __REG(TARGET_SD_CMU, t, 14, 264, 0, 1, 632, 20, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_6:CMU_47 */
+#define SD_CMU_CMU_47(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 264, 0, 1, 632, 20, 0, 1, 4)
 
 #define SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0      GENMASK(4, 0)
 #define SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0_SET(x)\
@@ -2415,8 +2632,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0_GET(x)\
 	FIELD_GET(SD_CMU_CMU_47_R_PCS2PMA_PHYMODE_4_0, x)
 
-/*      SD10G_CMU_TARGET:CMU_GRP_7:CMU_E0 */
-#define SD_CMU_CMU_E0(t)          __REG(TARGET_SD_CMU, t, 14, 896, 0, 1, 8, 0, 0, 1, 4)
+/* SD10G_CMU_TARGET:CMU_GRP_7:CMU_E0 */
+#define SD_CMU_CMU_E0(t)                                                       \
+	__REG(TARGET_SD_CMU, t, TSIZE(TC_SD_CMU), 896, 0, 1, 8, 0, 0, 1, 4)
 
 #define SD_CMU_CMU_E0_READ_VCO_CTUNE_3_0         GENMASK(3, 0)
 #define SD_CMU_CMU_E0_READ_VCO_CTUNE_3_0_SET(x)\
@@ -2430,8 +2648,10 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_E0_PLL_LOL_UDL_GET(x)\
 	FIELD_GET(SD_CMU_CMU_E0_PLL_LOL_UDL, x)
 
-/*      SD_CMU_TARGET:SD_CMU_CFG:SD_CMU_CFG */
-#define SD_CMU_CFG_SD_CMU_CFG(t)  __REG(TARGET_SD_CMU_CFG, t, 14, 0, 0, 1, 8, 0, 0, 1, 4)
+/* SD_CMU_TARGET:SD_CMU_CFG:SD_CMU_CFG */
+#define SD_CMU_CFG_SD_CMU_CFG(t)                                               \
+	__REG(TARGET_SD_CMU_CFG, t, TSIZE(TC_SD_CMU_CFG), 0, 0, 1, 8, 0, 0, 1, \
+	      4)
 
 #define SD_CMU_CFG_SD_CMU_CFG_CMU_RST            BIT(0)
 #define SD_CMU_CFG_SD_CMU_CFG_CMU_RST_SET(x)\
@@ -2445,8 +2665,9 @@ enum sparx5_serdes_target {
 #define SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_GET(x)\
 	FIELD_GET(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST, x)
 
-/*      SD_LANE_TARGET:SD_RESET:SD_SER_RST */
-#define SD_LANE_SD_SER_RST(t)     __REG(TARGET_SD_LANE, t, 25, 0, 0, 1, 8, 0, 0, 1, 4)
+/* SD_LANE_TARGET:SD_RESET:SD_SER_RST */
+#define SD_LANE_SD_SER_RST(t)                                                  \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 0, 0, 1, 8, 0, 0, 1, 4)
 
 #define SD_LANE_SD_SER_RST_SER_RST               BIT(0)
 #define SD_LANE_SD_SER_RST_SER_RST_SET(x)\
@@ -2454,8 +2675,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_SD_SER_RST_SER_RST_GET(x)\
 	FIELD_GET(SD_LANE_SD_SER_RST_SER_RST, x)
 
-/*      SD_LANE_TARGET:SD_RESET:SD_DES_RST */
-#define SD_LANE_SD_DES_RST(t)     __REG(TARGET_SD_LANE, t, 25, 0, 0, 1, 8, 4, 0, 1, 4)
+/* SD_LANE_TARGET:SD_RESET:SD_DES_RST */
+#define SD_LANE_SD_DES_RST(t)                                                  \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 0, 0, 1, 8, 4, 0, 1, 4)
 
 #define SD_LANE_SD_DES_RST_DES_RST               BIT(0)
 #define SD_LANE_SD_DES_RST_DES_RST_SET(x)\
@@ -2463,8 +2685,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_SD_DES_RST_DES_RST_GET(x)\
 	FIELD_GET(SD_LANE_SD_DES_RST_DES_RST, x)
 
-/*      SD_LANE_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG */
-#define SD_LANE_SD_LANE_CFG(t)    __REG(TARGET_SD_LANE, t, 25, 8, 0, 1, 8, 0, 0, 1, 4)
+/* SD_LANE_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG */
+#define SD_LANE_SD_LANE_CFG(t)                                                 \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 8, 0, 1, 8, 0, 0, 1, 4)
 
 #define SD_LANE_SD_LANE_CFG_MACRO_RST            BIT(0)
 #define SD_LANE_SD_LANE_CFG_MACRO_RST_SET(x)\
@@ -2508,8 +2731,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_SD_LANE_CFG_LANE_RX_RST_GET(x)\
 	FIELD_GET(SD_LANE_SD_LANE_CFG_LANE_RX_RST, x)
 
-/*      SD_LANE_TARGET:SD_LANE_CFG_STAT:SD_LANE_STAT */
-#define SD_LANE_SD_LANE_STAT(t)   __REG(TARGET_SD_LANE, t, 25, 8, 0, 1, 8, 4, 0, 1, 4)
+/* SD_LANE_TARGET:SD_LANE_CFG_STAT:SD_LANE_STAT */
+#define SD_LANE_SD_LANE_STAT(t)                                                \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 8, 0, 1, 8, 4, 0, 1, 4)
 
 #define SD_LANE_SD_LANE_STAT_PMA_RST_DONE        BIT(0)
 #define SD_LANE_SD_LANE_STAT_PMA_RST_DONE_SET(x)\
@@ -2529,9 +2753,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_SD_LANE_STAT_DBG_OBS_GET(x)\
 	FIELD_GET(SD_LANE_SD_LANE_STAT_DBG_OBS, x)
 
-/*      SD_LANE_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
-#define SD_LANE_QUIET_MODE_6G(t) \
-	__REG(TARGET_SD_LANE, t, 25, 24, 0, 1, 8, 4, 0, 1, 4)
+/* SD_LANE_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
+#define SD_LANE_QUIET_MODE_6G(t)                                               \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 24, 0, 1, 8, 4, 0, 1, 4)
 
 #define SD_LANE_QUIET_MODE_6G_QUIET_MODE         GENMASK(24, 0)
 #define SD_LANE_QUIET_MODE_6G_QUIET_MODE_SET(x)\
@@ -2539,8 +2763,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_QUIET_MODE_6G_QUIET_MODE_GET(x)\
 	FIELD_GET(SD_LANE_QUIET_MODE_6G_QUIET_MODE, x)
 
-/*      SD_LANE_TARGET:CFG_STAT_FX100:MISC */
-#define SD_LANE_MISC(t)           __REG(TARGET_SD_LANE, t, 25, 56, 0, 1, 56, 0, 0, 1, 4)
+/* SD_LANE_TARGET:CFG_STAT_FX100:MISC */
+#define SD_LANE_MISC(t)                                                        \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 56, 0, 1, 56, 0, 0, 1, 4)
 
 #define SD_LANE_MISC_SD_125_RST_DIS              BIT(0)
 #define SD_LANE_MISC_SD_125_RST_DIS_SET(x)\
@@ -2560,14 +2785,16 @@ enum sparx5_serdes_target {
 #define SD_LANE_MISC_MUX_ENA_GET(x)\
 	FIELD_GET(SD_LANE_MISC_MUX_ENA, x)
 
+/* SPARX5 ONLY */
 #define SD_LANE_MISC_CORE_CLK_FREQ               GENMASK(5, 4)
 #define SD_LANE_MISC_CORE_CLK_FREQ_SET(x)\
 	FIELD_PREP(SD_LANE_MISC_CORE_CLK_FREQ, x)
 #define SD_LANE_MISC_CORE_CLK_FREQ_GET(x)\
 	FIELD_GET(SD_LANE_MISC_CORE_CLK_FREQ, x)
 
-/*      SD_LANE_TARGET:CFG_STAT_FX100:M_STAT_MISC */
-#define SD_LANE_M_STAT_MISC(t)    __REG(TARGET_SD_LANE, t, 25, 56, 0, 1, 56, 36, 0, 1, 4)
+/* SD_LANE_TARGET:CFG_STAT_FX100:M_STAT_MISC */
+#define SD_LANE_M_STAT_MISC(t)                                                 \
+	__REG(TARGET_SD_LANE, t, TSIZE(TC_SD_LANE), 56, 0, 1, 56, 36, 0, 1, 4)
 
 #define SD_LANE_M_STAT_MISC_M_RIS_EDGE_PTR_ADJ_SUM GENMASK(21, 0)
 #define SD_LANE_M_STAT_MISC_M_RIS_EDGE_PTR_ADJ_SUM_SET(x)\
@@ -2581,8 +2808,10 @@ enum sparx5_serdes_target {
 #define SD_LANE_M_STAT_MISC_M_LOCK_CNT_GET(x)\
 	FIELD_GET(SD_LANE_M_STAT_MISC_M_LOCK_CNT, x)
 
-/*      SD25G_CFG_TARGET:SD_RESET:SD_SER_RST */
-#define SD_LANE_25G_SD_SER_RST(t) __REG(TARGET_SD_LANE_25G, t, 8, 0, 0, 1, 8, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_RESET:SD_SER_RST */
+#define SD_LANE_25G_SD_SER_RST(t)                                              \
+	__REG(TARGET_SD_LANE_25G, t, 8, 0, 0, 1, 8, 0, 0, 1, 4)
 
 #define SD_LANE_25G_SD_SER_RST_SER_RST           BIT(0)
 #define SD_LANE_25G_SD_SER_RST_SER_RST_SET(x)\
@@ -2590,8 +2819,10 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_SER_RST_SER_RST_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_SER_RST_SER_RST, x)
 
-/*      SD25G_CFG_TARGET:SD_RESET:SD_DES_RST */
-#define SD_LANE_25G_SD_DES_RST(t) __REG(TARGET_SD_LANE_25G, t, 8, 0, 0, 1, 8, 4, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_RESET:SD_DES_RST */
+#define SD_LANE_25G_SD_DES_RST(t)                                              \
+	__REG(TARGET_SD_LANE_25G, t, 8, 0, 0, 1, 8, 4, 0, 1, 4)
 
 #define SD_LANE_25G_SD_DES_RST_DES_RST           BIT(0)
 #define SD_LANE_25G_SD_DES_RST_DES_RST_SET(x)\
@@ -2599,8 +2830,10 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_DES_RST_DES_RST_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_DES_RST_DES_RST, x)
 
-/*      SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG */
-#define SD_LANE_25G_SD_LANE_CFG(t) __REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 0, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG */
+#define SD_LANE_25G_SD_LANE_CFG(t)                                             \
+	__REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 0, 0, 1, 4)
 
 #define SD_LANE_25G_SD_LANE_CFG_MACRO_RST        BIT(0)
 #define SD_LANE_25G_SD_LANE_CFG_MACRO_RST_SET(x)\
@@ -2698,8 +2931,10 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_LANE_CFG_PCS2PMA_TXMARGIN_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_LANE_CFG_PCS2PMA_TXMARGIN, x)
 
-/*      SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG2 */
-#define SD_LANE_25G_SD_LANE_CFG2(t) __REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 4, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_CFG2 */
+#define SD_LANE_25G_SD_LANE_CFG2(t)                                            \
+	__REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 4, 0, 1, 4)
 
 #define SD_LANE_25G_SD_LANE_CFG2_DATA_WIDTH_SEL  GENMASK(2, 0)
 #define SD_LANE_25G_SD_LANE_CFG2_DATA_WIDTH_SEL_SET(x)\
@@ -2767,8 +3002,10 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_LANE_CFG2_RXRATE_SEL_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_LANE_CFG2_RXRATE_SEL, x)
 
-/*      SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_STAT */
-#define SD_LANE_25G_SD_LANE_STAT(t) __REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 8, 0, 1, 4)
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_LANE_CFG_STAT:SD_LANE_STAT */
+#define SD_LANE_25G_SD_LANE_STAT(t)                                            \
+	__REG(TARGET_SD_LANE_25G, t, 8, 8, 0, 1, 12, 8, 0, 1, 4)
 
 #define SD_LANE_25G_SD_LANE_STAT_PMA_RST_DONE    BIT(0)
 #define SD_LANE_25G_SD_LANE_STAT_PMA_RST_DONE_SET(x)\
@@ -2788,8 +3025,9 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_LANE_STAT_DBG_OBS_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_LANE_STAT_DBG_OBS, x)
 
-/*      SD25G_CFG_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
-#define SD_LANE_25G_QUIET_MODE_6G(t) \
+/* SPARX5 ONLY */
+/* SD25G_CFG_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
+#define SD_LANE_25G_QUIET_MODE_6G(t)                                           \
 	__REG(TARGET_SD_LANE_25G, t, 8, 28, 0, 1, 8, 4, 0, 1, 4)
 
 #define SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE     GENMASK(24, 0)

-- 
2.34.1


