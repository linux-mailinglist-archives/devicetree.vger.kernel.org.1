Return-Path: <devicetree+bounces-161771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3862A75678
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 14:40:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1DE13AEB58
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 13:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867211D6DBC;
	Sat, 29 Mar 2025 13:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="vax+7uYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580831D5CEA
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 13:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743255609; cv=none; b=p5Rf7WDHpK3b3Dl470niZQk9h6xZph8UICYJR2L/UajFF1zdvexoqCCIOSXfMFLnwR1LYhRyH13ZymHgHlmezVdBCEQybz9cQY/AmBnuc3HY510HCdbB27O473rGgVgMBuyDpjuTdnUoqdiqwJe+hVpdBkxL4U0CQrTM1v4zZLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743255609; c=relaxed/simple;
	bh=KN3uEYrFwzDRnLtxqVZDqQPAp8U7X09zckh+4C3gH1Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HxmIfqmAygY6erRsW18DCB5XJ1hQF1zcK7PzYm5MtOqrnrwBwTVdefr3qVh3+S+AVCsUjJjXMkkbSjMKs8Onzg9d8HekS4YDbRiTZFqPY4P8ME7K4PUVynk9MQgB+6biznieyNIJ6v5e4S/NtgitPKReEFOhXy18ZY5aqdeSp28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=vax+7uYZ; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1743255605;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yAXsjxxrJRgPNbJaGkCH6FIHRSRqLARCpvmYwkl+NuM=;
	b=vax+7uYZCyfyiiIh6LMGwaoluZqwr61ALSogu5YJLZPTfr2kIHKwzoOQpMwoIJJ5c74adn
	sD6tsU1da9/SeBHmLQI+o8SyGhyGqbF/kXkiFrirWG1LrQ/GKJyCY1U2apwMRnJn5jkDF3
	BL91GtYMSbZG0nWd7DztuNLxu2nmT8c=
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Jyri Sarha <jyri.sarha@iki.fi>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Devarsh Thakkar <devarsht@ti.com>,
	Praneeth Bajjuri <praneeth@ti.com>,
	Udit Kumar <u-kumar1@ti.com>,
	Jayesh Choudhary <j-choudhary@ti.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	DRI Development List <dri-devel@lists.freedesktop.org>,
	Devicetree List <devicetree@vger.kernel.org>,
	Linux Kernel List <linux-kernel@vger.kernel.org>,
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: [PATCH v7 3/4] drm/tidss: Mark AM65x OLDI code separately
Date: Sat, 29 Mar 2025 19:09:42 +0530
Message-Id: <20250329133943.110698-4-aradhya.bhatia@linux.dev>
In-Reply-To: <20250329133943.110698-1-aradhya.bhatia@linux.dev>
References: <20250329133943.110698-1-aradhya.bhatia@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The dss dt schema and the tidss driver have kept the single-link OLDI in
AM65x integrated with the parent video-port (VP) from DSS (as the OLDI
configuration happens from the source VP only).
To help configure the dual-lvds modes that the OLDI has to offer in
devices AM62x and later, a new OLDI bridge driver will be introduced.

Mark the existing OLDI code separately by renaming all the current OLDI
identifiers with the 'AM65X_' prefix in tidss driver, to help
distinguish from the upcoming OLDI bridge driver.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 drivers/gpu/drm/tidss/tidss_dispc.c      | 68 ++++++++++++------------
 drivers/gpu/drm/tidss/tidss_dispc.h      |  2 +-
 drivers/gpu/drm/tidss/tidss_dispc_regs.h | 15 +++---
 drivers/gpu/drm/tidss/tidss_kms.c        |  2 +-
 4 files changed, 44 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index cacb5f3d8085..7e5a062da896 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -139,7 +139,7 @@ static const u16 tidss_am65x_common_regs[DISPC_COMMON_REG_TABLE_LEN] = {
 const struct dispc_features dispc_am65x_feats = {
 	.max_pclk_khz = {
 		[DISPC_VP_DPI] = 165000,
-		[DISPC_VP_OLDI] = 165000,
+		[DISPC_VP_OLDI_AM65X] = 165000,
 	},
 
 	.scaling = {
@@ -169,7 +169,7 @@ const struct dispc_features dispc_am65x_feats = {
 	.vp_name = { "vp1", "vp2" },
 	.ovr_name = { "ovr1", "ovr2" },
 	.vpclk_name =  { "vp1", "vp2" },
-	.vp_bus_type = { DISPC_VP_OLDI, DISPC_VP_DPI },
+	.vp_bus_type = { DISPC_VP_OLDI_AM65X, DISPC_VP_DPI },
 
 	.vp_feat = { .color = {
 			.has_ctm = true,
@@ -391,7 +391,7 @@ struct dispc_device {
 	void __iomem *base_ovr[TIDSS_MAX_PORTS];
 	void __iomem *base_vp[TIDSS_MAX_PORTS];
 
-	struct regmap *oldi_io_ctrl;
+	struct regmap *am65x_oldi_io_ctrl;
 
 	struct clk *vp_clk[TIDSS_MAX_PORTS];
 
@@ -906,13 +906,11 @@ void dispc_set_irqenable(struct dispc_device *dispc, dispc_irq_t mask)
 	}
 }
 
-enum dispc_oldi_mode_reg_val { SPWG_18 = 0, JEIDA_24 = 1, SPWG_24 = 2 };
-
 struct dispc_bus_format {
 	u32 bus_fmt;
 	u32 data_width;
 	bool is_oldi_fmt;
-	enum dispc_oldi_mode_reg_val oldi_mode_reg_val;
+	enum oldi_mode_reg_val am65x_oldi_mode_reg_val;
 };
 
 static const struct dispc_bus_format dispc_bus_formats[] = {
@@ -956,7 +954,7 @@ int dispc_vp_bus_check(struct dispc_device *dispc, u32 hw_videoport,
 		return -EINVAL;
 	}
 
-	if (dispc->feat->vp_bus_type[hw_videoport] != DISPC_VP_OLDI &&
+	if (dispc->feat->vp_bus_type[hw_videoport] != DISPC_VP_OLDI_AM65X &&
 	    fmt->is_oldi_fmt) {
 		dev_dbg(dispc->dev, "%s: %s is not OLDI-port\n",
 			__func__, dispc->feat->vp_name[hw_videoport]);
@@ -966,23 +964,23 @@ int dispc_vp_bus_check(struct dispc_device *dispc, u32 hw_videoport,
 	return 0;
 }
 
-static void dispc_oldi_tx_power(struct dispc_device *dispc, bool power)
+static void dispc_am65x_oldi_tx_power(struct dispc_device *dispc, bool power)
 {
-	u32 val = power ? 0 : OLDI_PWRDN_TX;
+	u32 val = power ? 0 : AM65X_OLDI_PWRDN_TX;
 
-	if (WARN_ON(!dispc->oldi_io_ctrl))
+	if (WARN_ON(!dispc->am65x_oldi_io_ctrl))
 		return;
 
-	regmap_update_bits(dispc->oldi_io_ctrl, OLDI_DAT0_IO_CTRL,
-			   OLDI_PWRDN_TX, val);
-	regmap_update_bits(dispc->oldi_io_ctrl, OLDI_DAT1_IO_CTRL,
-			   OLDI_PWRDN_TX, val);
-	regmap_update_bits(dispc->oldi_io_ctrl, OLDI_DAT2_IO_CTRL,
-			   OLDI_PWRDN_TX, val);
-	regmap_update_bits(dispc->oldi_io_ctrl, OLDI_DAT3_IO_CTRL,
-			   OLDI_PWRDN_TX, val);
-	regmap_update_bits(dispc->oldi_io_ctrl, OLDI_CLK_IO_CTRL,
-			   OLDI_PWRDN_TX, val);
+	regmap_update_bits(dispc->am65x_oldi_io_ctrl, AM65X_OLDI_DAT0_IO_CTRL,
+			   AM65X_OLDI_PWRDN_TX, val);
+	regmap_update_bits(dispc->am65x_oldi_io_ctrl, AM65X_OLDI_DAT1_IO_CTRL,
+			   AM65X_OLDI_PWRDN_TX, val);
+	regmap_update_bits(dispc->am65x_oldi_io_ctrl, AM65X_OLDI_DAT2_IO_CTRL,
+			   AM65X_OLDI_PWRDN_TX, val);
+	regmap_update_bits(dispc->am65x_oldi_io_ctrl, AM65X_OLDI_DAT3_IO_CTRL,
+			   AM65X_OLDI_PWRDN_TX, val);
+	regmap_update_bits(dispc->am65x_oldi_io_ctrl, AM65X_OLDI_CLK_IO_CTRL,
+			   AM65X_OLDI_PWRDN_TX, val);
 }
 
 static void dispc_set_num_datalines(struct dispc_device *dispc,
@@ -1011,8 +1009,8 @@ static void dispc_set_num_datalines(struct dispc_device *dispc,
 	VP_REG_FLD_MOD(dispc, hw_videoport, DISPC_VP_CONTROL, v, 10, 8);
 }
 
-static void dispc_enable_oldi(struct dispc_device *dispc, u32 hw_videoport,
-			      const struct dispc_bus_format *fmt)
+static void dispc_enable_am65x_oldi(struct dispc_device *dispc, u32 hw_videoport,
+				    const struct dispc_bus_format *fmt)
 {
 	u32 oldi_cfg = 0;
 	u32 oldi_reset_bit = BIT(5 + hw_videoport);
@@ -1031,7 +1029,7 @@ static void dispc_enable_oldi(struct dispc_device *dispc, u32 hw_videoport,
 
 	oldi_cfg |= BIT(7); /* DEPOL */
 
-	oldi_cfg = FLD_MOD(oldi_cfg, fmt->oldi_mode_reg_val, 3, 1);
+	oldi_cfg = FLD_MOD(oldi_cfg, fmt->am65x_oldi_mode_reg_val, 3, 1);
 
 	oldi_cfg |= BIT(12); /* SOFTRST */
 
@@ -1060,10 +1058,10 @@ void dispc_vp_prepare(struct dispc_device *dispc, u32 hw_videoport,
 	if (WARN_ON(!fmt))
 		return;
 
-	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI) {
-		dispc_oldi_tx_power(dispc, true);
+	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI_AM65X) {
+		dispc_am65x_oldi_tx_power(dispc, true);
 
-		dispc_enable_oldi(dispc, hw_videoport, fmt);
+		dispc_enable_am65x_oldi(dispc, hw_videoport, fmt);
 	}
 }
 
@@ -1119,7 +1117,7 @@ void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport,
 	align = true;
 
 	/* always use DE_HIGH for OLDI */
-	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI)
+	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI_AM65X)
 		ieo = false;
 
 	dispc_vp_write(dispc, hw_videoport, DISPC_VP_POL_FREQ,
@@ -1145,10 +1143,10 @@ void dispc_vp_disable(struct dispc_device *dispc, u32 hw_videoport)
 
 void dispc_vp_unprepare(struct dispc_device *dispc, u32 hw_videoport)
 {
-	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI) {
+	if (dispc->feat->vp_bus_type[hw_videoport] == DISPC_VP_OLDI_AM65X) {
 		dispc_vp_write(dispc, hw_videoport, DISPC_VP_DSS_OLDI_CFG, 0);
 
-		dispc_oldi_tx_power(dispc, false);
+		dispc_am65x_oldi_tx_power(dispc, false);
 	}
 }
 
@@ -2735,15 +2733,15 @@ static int dispc_iomap_resource(struct platform_device *pdev, const char *name,
 static int dispc_init_am65x_oldi_io_ctrl(struct device *dev,
 					 struct dispc_device *dispc)
 {
-	dispc->oldi_io_ctrl =
+	dispc->am65x_oldi_io_ctrl =
 		syscon_regmap_lookup_by_phandle(dev->of_node,
 						"ti,am65x-oldi-io-ctrl");
-	if (PTR_ERR(dispc->oldi_io_ctrl) == -ENODEV) {
-		dispc->oldi_io_ctrl = NULL;
-	} else if (IS_ERR(dispc->oldi_io_ctrl)) {
+	if (PTR_ERR(dispc->am65x_oldi_io_ctrl) == -ENODEV) {
+		dispc->am65x_oldi_io_ctrl = NULL;
+	} else if (IS_ERR(dispc->am65x_oldi_io_ctrl)) {
 		dev_err(dev, "%s: syscon_regmap_lookup_by_phandle failed %ld\n",
-			__func__, PTR_ERR(dispc->oldi_io_ctrl));
-		return PTR_ERR(dispc->oldi_io_ctrl);
+			__func__, PTR_ERR(dispc->am65x_oldi_io_ctrl));
+		return PTR_ERR(dispc->am65x_oldi_io_ctrl);
 	}
 	return 0;
 }
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index 086327d51a90..d8e3f18c610f 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc.h
@@ -52,7 +52,7 @@ struct dispc_errata {
 
 enum dispc_vp_bus_type {
 	DISPC_VP_DPI,		/* DPI output */
-	DISPC_VP_OLDI,		/* OLDI (LVDS) output */
+	DISPC_VP_OLDI_AM65X,	/* OLDI (LVDS) output for AM65x DSS */
 	DISPC_VP_INTERNAL,	/* SoC internal routing */
 	DISPC_VP_TIED_OFF,	/* Tied off / Unavailable */
 	DISPC_VP_MAX_BUS_TYPE,
diff --git a/drivers/gpu/drm/tidss/tidss_dispc_regs.h b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
index e88148e44937..30ce5ee40e1e 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc_regs.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc_regs.h
@@ -226,18 +226,21 @@ enum dispc_common_regs {
 #define DISPC_VP_DSS_DMA_THREADSIZE		0x170 /* J721E */
 #define DISPC_VP_DSS_DMA_THREADSIZE_STATUS	0x174 /* J721E */
 
+/* LVDS Format values for OLDI_MAP field in DISPC_VP_OLDI_CFG register */
+enum oldi_mode_reg_val { SPWG_18 = 0, JEIDA_24 = 1, SPWG_24 = 2 };
+
 /*
  * OLDI IO_CTRL register offsets. On AM654 the registers are found
  * from CTRL_MMR0, there the syscon regmap should map 0x14 bytes from
  * CTRLMMR0P1_OLDI_DAT0_IO_CTRL to CTRLMMR0P1_OLDI_CLK_IO_CTRL
  * register range.
  */
-#define OLDI_DAT0_IO_CTRL			0x00
-#define OLDI_DAT1_IO_CTRL			0x04
-#define OLDI_DAT2_IO_CTRL			0x08
-#define OLDI_DAT3_IO_CTRL			0x0C
-#define OLDI_CLK_IO_CTRL			0x10
+#define AM65X_OLDI_DAT0_IO_CTRL		0x00
+#define AM65X_OLDI_DAT1_IO_CTRL		0x04
+#define AM65X_OLDI_DAT2_IO_CTRL		0x08
+#define AM65X_OLDI_DAT3_IO_CTRL		0x0C
+#define AM65X_OLDI_CLK_IO_CTRL		0x10
 
-#define OLDI_PWRDN_TX				BIT(8)
+#define AM65X_OLDI_PWRDN_TX		BIT(8)
 
 #endif /* __TIDSS_DISPC_REGS_H */
diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
index f371518f8697..d4b8780e3e19 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -144,7 +144,7 @@ static int tidss_dispc_modeset_init(struct tidss_device *tidss)
 			dev_dbg(dev, "Setting up panel for port %d\n", i);
 
 			switch (feat->vp_bus_type[i]) {
-			case DISPC_VP_OLDI:
+			case DISPC_VP_OLDI_AM65X:
 				enc_type = DRM_MODE_ENCODER_LVDS;
 				conn_type = DRM_MODE_CONNECTOR_LVDS;
 				break;
-- 
2.34.1


