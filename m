Return-Path: <devicetree+bounces-318458-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n9ssGZ0IRWoN5goAu9opvQ
	(envelope-from <devicetree+bounces-318458-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:31:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C986ED5D6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:31:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ayQYx6Is;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318458-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318458-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CC8C310617A
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15504963A6;
	Wed,  1 Jul 2026 12:20:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167BD495501;
	Wed,  1 Jul 2026 12:20:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908417; cv=none; b=Q6hliHaVWNM7dD9Qsbe55QvJcd49u6qliI78MMBNZF87ReM8pYtTMgTpjVfEIYYjWOHD1vFkytEgVZkmZbemHefJ3N2qH449/Mzt3xq4rTA/P709sQAMb4diMSYmTXfjPMIS5vIWCLWic6ZEKhSZWpFzyXQUHq8nq9jZeu1P2MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908417; c=relaxed/simple;
	bh=U6ptaCRIBTuu6TtdNgVk6FYeE4TCtGKvw6TAUNktPuY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H66PUPkTiaHLeBljfPgsutOkgwM0VRhQVnR4okqA6G+u66DR+WwE+zyXtkyX9L4sZSHe0C1bHdroq3ssxfAku4/OMWJA2bfg3Y58iFV7hzWTj79NM83R5axdCln4oYcTebHoVpyq2/EbL5pI4ui77V1YNxtU1jtWiuImS9xQLRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ayQYx6Is; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908414;
	bh=U6ptaCRIBTuu6TtdNgVk6FYeE4TCtGKvw6TAUNktPuY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ayQYx6Isel99dFp8bYIxomctlGhVA8acBcDVaspFVbIIQepgZZglIrz81ydvsF0iO
	 lGFvSBmM3X/U/pDNR3lesscM4Yu6yPYv61jCPzUETwINpjg2lJSnPfHPrJ5PtLGLPm
	 bMaG1pXfA6OMOE6E9SFGlSVHoxMBZc3ISDYaH5wtYcLYS+uKSsp+TyLqGU9xfeDpMu
	 ugCBeGyAEK2uINW1y44cjHQE0UF3iJM1v4Q8VcAg9qC++A2ITLdvLYUXcxC5P771PR
	 5mWl8Y7SzqfiCREuLm4xhPK2MEbSxxbywr0f3Tsd4Aboc143cp2wApZBgONv1so4s2
	 lbX4nYN3J+daw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1227517E0FAA;
	Wed,  1 Jul 2026 14:20:14 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH 04/12] phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata
Date: Wed,  1 Jul 2026 14:20:00 +0200
Message-ID: <20260701122008.19509-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-318458-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2C986ED5D6

In preparation for adding support for newer SoCs and for adding
more capabilities to this driver in an efficient manner, migrate
all of the hardcoded register offsets to SoC specific pdata and
assign that for both DT and platform probing.

While at it also cleanup writing the driving parameters to the PHY
by iterating through all lanes with a loop instead.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 138 +++++++++++++++++++++++-------
 1 file changed, 109 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 98e05fe05ce3..ce33f6812bae 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -4,6 +4,10 @@
  *
  * Copyright (c) 2022, BayLibre Inc.
  * Copyright (c) 2022, MediaTek Inc.
+ *
+ * Major refactoring
+ * Copyright (c) 2026, Collabora Ltd.
+ *                     AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
  */
 
 #include <linux/delay.h>
@@ -14,24 +18,25 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
-#define PHY_OFFSET			0x1000
+#define MTK_DP_PHY_MAX_LANES		4
 
-#define MTK_DP_PHY_DIG_PLL_CTL_1	(PHY_OFFSET + 0x14)
+/* DP_PHYD_PLL_CTL_1 */
 #define TPLL_SSC_EN			BIT(3)
 
-#define MTK_DP_PHY_DIG_BIT_RATE		(PHY_OFFSET + 0x3C)
-#define BIT_RATE_RBR			0
-#define BIT_RATE_HBR			1
-#define BIT_RATE_HBR2			2
-#define BIT_RATE_HBR3			3
+/* DP_PHYD_BIT_RATE */
+#define PHYD_DIG_RG_BIT_RATE		GENMASK(1, 0)
+#  define BIT_RATE_RBR			0
+#  define BIT_RATE_HBR			1
+#  define BIT_RATE_HBR2			2
+#  define BIT_RATE_HBR3			3
 
-#define MTK_DP_PHY_DIG_SW_RST		(PHY_OFFSET + 0x38)
-#define DP_GLB_SW_RST_PHYD		BIT(0)
+/* DP_PHYD_SW_RST */
+#define PHYD_DIG_GLB_SW_RST_B		GENMASK(7, 0)
+#  define DP_GLB_SW_RST_PHYD		BIT(0)
+#  define DP_GLB_SW_RST_TFIFO_ANA	BIT(1)
+#  define DP_GLB_SW_RST_XTAL_CLK	BIT(2)
+#  define DP_GLB_SW_RST_MAIN_LINK	BIT(3)
 
-#define MTK_DP_LANE0_DRIVING_PARAM_3		(PHY_OFFSET + 0x138)
-#define MTK_DP_LANE1_DRIVING_PARAM_3		(PHY_OFFSET + 0x238)
-#define MTK_DP_LANE2_DRIVING_PARAM_3		(PHY_OFFSET + 0x338)
-#define MTK_DP_LANE3_DRIVING_PARAM_3		(PHY_OFFSET + 0x438)
 #define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
 #define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
 #define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
@@ -78,14 +83,58 @@
 #define DRIVING_PARAM_8_DEFAULT	(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT | \
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
+enum mtk_dp_phyd_dig_lane_regidx {
+	DP_PHYD_LAN_DRIVING_PARAM_0,
+	DP_PHYD_LAN_MAX
+};
+
+enum mtk_dp_phyd_dig_glb_regidx {
+	DP_PHYD_PLL_CTL_0,
+	DP_PHYD_PLL_CTL_1,
+	DP_PHYD_SW_RST,
+	DP_PHYD_BIT_RATE,
+	DP_PHYD_GLOBAL_MAX
+};
+
+static const u8 mt8195_phy_dig_lane_regs[DP_PHYD_LAN_MAX] = {
+	[DP_PHYD_LAN_DRIVING_PARAM_0] = 0x2c,
+};
+
+static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
+	[DP_PHYD_PLL_CTL_0] = 0x10,
+	[DP_PHYD_PLL_CTL_1] = 0x14,
+	[DP_PHYD_SW_RST] = 0x38,
+	[DP_PHYD_BIT_RATE] = 0x3c,
+};
+
+/**
+ * struct mtk_dp_phy_pdata - Platform data and defaults for MediaTek DP/eDP PHY
+ * @off_dig_glb:    Base offset for dptx_phyd_sifslv_dig_glb
+ * @off_dig_lane:   Base offsets for dptx_phyd_sifslv_dig_lan (for each lane)
+ * @regs_dig_glb:   Register (layout) offsets for dig_glb
+ * @regs_dig_lane:  Register (layout) offsets for dig_lan
+ */
+struct mtk_dp_phy_pdata {
+	/* Register offsets */
+	u16 off_dig_glb;
+	u16 off_dig_lane[MTK_DP_PHY_MAX_LANES];
+
+	/* Register maps */
+	const u8 *regs_dig_glb;
+	const u8 *regs_dig_lane;
+};
+
 struct mtk_dp_phy {
 	struct device *dev;
 	struct regmap *regmap;
+	const struct mtk_dp_phy_pdata *pdata;
 };
 
 static int mtk_dp_phy_init(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u32 reg = pdata->regs_dig_lane[DP_PHYD_LAN_DRIVING_PARAM_0];
 	static const u32 driving_params[] = {
 		DRIVING_PARAM_3_DEFAULT,
 		DRIVING_PARAM_4_DEFAULT,
@@ -94,15 +143,21 @@ static int mtk_dp_phy_init(struct phy *phy)
 		DRIVING_PARAM_7_DEFAULT,
 		DRIVING_PARAM_8_DEFAULT
 	};
-
-	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE0_DRIVING_PARAM_3,
-			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE1_DRIVING_PARAM_3,
-			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE2_DRIVING_PARAM_3,
-			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE3_DRIVING_PARAM_3,
-			  driving_params, ARRAY_SIZE(driving_params));
+	int i, ret;
+
+	/*
+	 * Assume that all lanes need the same driving parameters: this
+	 * will bulk write from DRIVING_PARAM_0 to DRIVING_PARAM_8 on
+	 * all lanes (a grand total of [9 * num_lanes] 32-bit writes)
+	 */
+	for (i = 0; i < MTK_DP_PHY_MAX_LANES; i++) {
+		ret = regmap_bulk_write(dp_phy->regmap,
+					pdata->off_dig_lane[i] + reg,
+					driving_params,
+					ARRAY_SIZE(driving_params));
+		if (ret)
+			return ret;
+	};
 
 	return 0;
 }
@@ -110,9 +165,12 @@ static int mtk_dp_phy_init(struct phy *phy)
 static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	u32 val;
 
 	if (opts->dp.set_rate) {
+		const u32 reg_bit_rate = pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
+
 		switch (opts->dp.link_rate) {
 		default:
 			dev_err(&phy->dev,
@@ -132,10 +190,11 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 			val = BIT_RATE_HBR3;
 			break;
 		}
-		regmap_write(dp_phy->regmap, MTK_DP_PHY_DIG_BIT_RATE, val);
+		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
 	}
 
-	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_PLL_CTL_1,
+	regmap_update_bits(dp_phy->regmap,
+			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
 
 	return 0;
@@ -144,12 +203,17 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 static int mtk_dp_phy_reset(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u32 reg_rst = pdata->regs_dig_glb[DP_PHYD_SW_RST];
+
+	/* Clearing bits sets reset state */
+	regmap_clear_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
 
-	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
-			   DP_GLB_SW_RST_PHYD, 0);
+	/* PHYD needs 50uS to guarantee reset done */
 	usleep_range(50, 200);
-	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
-			   DP_GLB_SW_RST_PHYD, 1);
+
+	/* Setting bits means go out of reset */
+	regmap_set_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
 
 	return 0;
 }
@@ -161,11 +225,18 @@ static const struct phy_ops mtk_dp_phy_dev_ops = {
 	.owner = THIS_MODULE,
 };
 
+static const struct mtk_dp_phy_pdata mt8195_dp_phy_data;
+
 static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct mtk_dp_phy *dp_phy)
 {
 	struct device *dev = &pdev->dev;
 	struct phy *phy;
 
+	/*
+	 * If legacy platform driver probe, assume this is MT8195 or compatible
+	 * with a devicetree that was not migrated to the new, proper bindings.
+	 */
+	dp_phy->pdata = &mt8195_dp_phy_data;
 	dp_phy->regmap = *(struct regmap **)dev->platform_data;
 	if (!dp_phy->regmap)
 		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
@@ -214,6 +285,8 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(dp_phy->regmap))
 		return PTR_ERR(dp_phy->regmap);
 
+	dp_phy->pdata = device_get_match_data(dev);
+
 	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
 	if (IS_ERR(phy))
 		return dev_err_probe(dev, PTR_ERR(phy),
@@ -231,8 +304,15 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
+	.off_dig_glb = 0x1000,
+	.off_dig_lane = (const u16[]) { 0x1100, 0x1200, 0x1300, 0x1400 },
+	.regs_dig_glb = mt8195_phy_dig_glb_regs,
+	.regs_dig_lane = mt8195_phy_dig_lane_regs,
+};
+
 static const struct of_device_id mtk_dp_phy_of_match[] = {
-	{ .compatible = "mediatek,mt8195-dp-phy" },
+	{ .compatible = "mediatek,mt8195-dp-phy", .data = &mt8195_dp_phy_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_dp_phy_of_match);
-- 
2.54.0


