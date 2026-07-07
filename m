Return-Path: <devicetree+bounces-322125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QfrbMyYTTWqfugEAu9opvQ
	(envelope-from <devicetree+bounces-322125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:54:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 275CA71CE22
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:54:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=FB7g9hEh;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322125-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322125-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B54E32BE22E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B8E432BC1;
	Tue,  7 Jul 2026 14:19:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABBD42F70C;
	Tue,  7 Jul 2026 14:19:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433990; cv=none; b=EDkbYTGByrRZZlZftKHJVczhxVtFdtVG9Iag/7FcKDvyyyx1QQl/+lbdG8ZCyAfWHPthOPdDYBrK0MeQHOgAh4gOm0C9rHn2UvofCGdqN3xXKGL/yM6A60edY3dIUof2RFnuRvvuim5jaJbhjc12b3irbDGAl1djyGjxD1u1fjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433990; c=relaxed/simple;
	bh=Et7mc0fxDGDscgRTZmaSVlDH8n5Hd7CjUYz/srmnArU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oQBJM7gnlpYe1mQoNdGCaWJHem+Ist/F8FYD+B8tFRMarOopsJr42NGQJaJpwq6KdECq+eqU3F1f447E0+r+KSK4bWvY06jJm52/YuBKpmaHfND/t1w+j+hRTZiUDZnkjOx+++JpLWo3NXRpAGCJ3h8uHma+uWUWG41iAUtiyEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FB7g9hEh; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783433987;
	bh=Et7mc0fxDGDscgRTZmaSVlDH8n5Hd7CjUYz/srmnArU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FB7g9hEhhRhlaS9xJbog35MVSjZEQTc9jvmPLGwhFWkP2+yBbP5dklPuke/R0b0DA
	 FbWwqlpSNjJOzzzhtR3aeEUW/ZpdMDOMuKQQVS2RsUz3n5Phx0Ny/yOHr0+tme3T1u
	 Mg9Siz8gVT4zIbbgZ7sxGmxR6ZjAoNdR9oUuXBqcVNoz/2Cx+v3vufXjzCVlXs0++6
	 vRW5VNkg4C87Ggw/lgGHR5t4Tc6wQT/2OHlY0+BIbueWrUBH6NAIFd8RYbGOU1bCyV
	 AFl1tTh+Hf6rxR645zcetIJLzeVOX2MHHwfcTYp3Vhw3fU/n0gCid4k6esq/KiQFMO
	 esIWIumkrzcwg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E018B17E0EA6;
	Tue, 07 Jul 2026 16:19:46 +0200 (CEST)
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
Subject: [PATCH v2 07/12] phy: phy-mtk-dp: Support setting volt swing and preemphasis values
Date: Tue,  7 Jul 2026 16:19:26 +0200
Message-ID: <20260707141931.191172-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322125-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 275CA71CE22

Add support for honoring the set_voltages request to set the
voltage swing and preemphasis values in the .configure() callback.

For proper hardware cleanup, reset both in the .reset() callback.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 44 ++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 2f3ec3fa384d..270825f130a9 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -48,6 +48,11 @@
 /* DP_PHYD_TX_CTL_0 */
 #define PHYD_TX_LN_EN			GENMASK(7, 4)
 
+/* DP_PHYD_DRIVING_FORCE */
+#define PHYD_DP_TX_FORCE_VOLT_SWING_EN	BIT(0)
+#define PHYD_DP_TX_FORCE_VOLT_SWING_VAL	GENMASK(2, 1)
+#define PHYD_DP_TX_FORCE_PRE_EMPH_VAL	GENMASK(4, 3)
+
 #define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
 #define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
 #define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
@@ -101,6 +106,7 @@ enum mtk_dp_phya_ana_glb_regidx {
 };
 
 enum mtk_dp_phyd_dig_lane_regidx {
+	DP_PHYD_LAN_DRIVING_FORCE,
 	DP_PHYD_LAN_DRIVING_PARAM_0,
 	DP_PHYD_LAN_MAX
 };
@@ -121,6 +127,7 @@ static const u8 mt8195_phy_ana_glb_regs[DP_PHYA_GLOBAL_MAX] = {
 };
 
 static const u8 mt8195_phy_dig_lane_regs[DP_PHYD_LAN_MAX] = {
+	[DP_PHYD_LAN_DRIVING_FORCE] = 0x18,
 	[DP_PHYD_LAN_DRIVING_PARAM_0] = 0x2c,
 };
 
@@ -235,6 +242,30 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 				   PHYD_TX_LN_EN, val);
 	}
 
+	if (opts->dp.set_voltages) {
+		const u32 reg_drv_force = pdata->regs_dig_lane[DP_PHYD_LAN_DRIVING_FORCE];
+
+		if (opts->dp.lanes > 4) {
+			dev_err(&phy->dev, "Wrong lanes config %u\n", opts->dp.lanes);
+			return -EINVAL;
+		}
+
+		for (i = 0; i < opts->dp.lanes; i++) {
+			const u32 off_dig_lane = pdata->off_dig_lane[i];
+			u32 val;
+
+			val = FIELD_PREP(PHYD_DP_TX_FORCE_VOLT_SWING_VAL, opts->dp.voltage[i]);
+			val |= FIELD_PREP(PHYD_DP_TX_FORCE_PRE_EMPH_VAL, opts->dp.pre[i]);
+			val |= PHYD_DP_TX_FORCE_VOLT_SWING_EN;
+
+			regmap_update_bits(dp_phy->regmap, off_dig_lane + reg_drv_force,
+					   PHYD_DP_TX_FORCE_VOLT_SWING_EN |
+					   PHYD_DP_TX_FORCE_VOLT_SWING_VAL |
+					   PHYD_DP_TX_FORCE_PRE_EMPH_VAL,
+					   val);
+		}
+	}
+
 	regmap_update_bits(dp_phy->regmap,
 			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
@@ -337,7 +368,8 @@ static int mtk_dp_phy_reset(struct phy *phy)
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	const u32 reg_rst = pdata->regs_dig_glb[DP_PHYD_SW_RST];
-	int ret;
+	const u32 reg_drv_force = pdata->regs_dig_lane[DP_PHYD_LAN_DRIVING_FORCE];
+	int i, ret;
 
 	/* Clearing bits sets reset state */
 	regmap_clear_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
@@ -353,6 +385,16 @@ static int mtk_dp_phy_reset(struct phy *phy)
 	if (ret)
 		dev_err(dp_phy->dev, "Could not disable lanes during reset!\n");
 
+	/* Reset Voltage Swing and Preemphasis values */
+	for (i = 0; i < MTK_DP_PHY_MAX_LANES; i++) {
+		const u32 off_dig_lane = pdata->off_dig_lane[i];
+
+		regmap_clear_bits(dp_phy->regmap, off_dig_lane + reg_drv_force,
+				   PHYD_DP_TX_FORCE_VOLT_SWING_EN |
+				   PHYD_DP_TX_FORCE_VOLT_SWING_VAL |
+				   PHYD_DP_TX_FORCE_PRE_EMPH_VAL);
+	}
+
 	return 0;
 }
 
-- 
2.54.0


