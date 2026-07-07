Return-Path: <devicetree+bounces-322186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5Nb7JiMgTWoIvgEAu9opvQ
	(envelope-from <devicetree+bounces-322186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:49:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD9971D7EF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:49:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=nIGWtEjK;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322186-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322186-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 749E530C29D7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C53435A9B;
	Tue,  7 Jul 2026 15:43:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98498434E29;
	Tue,  7 Jul 2026 15:43:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438982; cv=none; b=gX6PR9zcqr6ren9gt4zfscj+kxXWS7ALuhHdHDAHBp/e7YklkS+QEskGVIUNujSnVO9NAKr9IW6iaK/595bqoGIOdaOd+qA/JRnZH4fkxDAuOMf8LXtiEQzvb3JbI53mmqbVvqLbX3i/MHCDYNW1rf28Z1xyJHN3qMuh9Qht1hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438982; c=relaxed/simple;
	bh=+l0JxPVMWizDtm7st0nxfuuabxoYFY3ab2cxUYpVGhs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cyKRhFENgCssBTc39Ub2GX+wI1OqOBVwQAkhZFsz3rsT1n81MzuZ3we8Q0aI8Hym9He1v2r81ZSgxYzu3lV3+rnvFEQuwQm0qTORAnIRIKuhs8qqOOFUbD33tPtkS9o1mJ/61j9R7L46vyvRKcBtlNmmaBFz3/saz13JKZvZIIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nIGWtEjK; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783438979;
	bh=+l0JxPVMWizDtm7st0nxfuuabxoYFY3ab2cxUYpVGhs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nIGWtEjKDxprqxhn4jWdJ9+N5r3huvsEt9hZDz5O0jQ5jIJpZEYlvhS48SRAWHIJd
	 omQy3NaiHkzj6yq7C39mY7ZsytQ+DDM+TIIOBAfwmJ+gW//JYj+WQJRZcvydXtUV3p
	 42lZK1/PzHW1KP569CoYuppW84qiK2wzdvYASXpXY7rMQJhQkbZaa2jP6+FJMKrEth
	 OcnELanv0uQTAyDLbp23kuAKakXkcnxAewX2XkkPl4D69EdJba5G3w/5zwylI4nFxM
	 gVe+xCQDX1ddpkZortmw8Xjxwnkvjeh1SZHe8f+RMVW+8LPgugNGJuGikkuYNqetpv
	 GJwEcf8iF3iGQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5A56017E1078;
	Tue, 07 Jul 2026 17:42:58 +0200 (CEST)
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
Subject: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP PHY
Date: Tue,  7 Jul 2026 17:42:45 +0200
Message-ID: <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322186-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BD9971D7EF

The MT8196 SoC features an updated PHY IP compared to the older
ones, and there is one that is specific to Embedded DisplayPort.

Add support for the eDP PHY found in the MediaTek MT8196 SoC and
all of its variants.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 66 ++++++++++++++++++++++++++++++-
 1 file changed, 65 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index f5aadc5fdc42..5decc29c77cb 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -5,7 +5,7 @@
  * Copyright (c) 2022, BayLibre Inc.
  * Copyright (c) 2022, MediaTek Inc.
  *
- * Major refactoring
+ * Major refactoring and new SoCs support
  * Copyright (c) 2026, Collabora Ltd.
  *                     AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
  */
@@ -43,6 +43,7 @@
 #define TPLL_SSC_EN			BIT(3)
 
 /* DP_PHYD_BIT_RATE */
+#define PHYD_DIG_RG_BIT_RATE_V2		GENMASK(3, 0)
 #define PHYD_DIG_RG_BIT_RATE		GENMASK(1, 0)
 
 /* DP_PHYD_SW_RST */
@@ -63,6 +64,7 @@
 
 /* DP_PHYD_TX_CTL_0 */
 #define PHYD_TX_LN_EN			GENMASK(7, 4)
+#define PHYD_TX_LN_EN_V2		GENMASK(3, 0)
 
 /* DP_PHYD_DRIVING_FORCE */
 #define PHYD_DP_TX_FORCE_VOLT_SWING_EN	BIT(0)
@@ -129,6 +131,16 @@
 #define MT8195_DRIVING_PARAM_7_DEFAULT	BUILD_DRIVING_PARAM_12(0, 6, 12, 0)
 #define MT8195_DRIVING_PARAM_8_DEFAULT	BUILD_DRIVING_PARAM_23(8, 0)
 
+/* MT8196/MT6991: Logic State Change Point (LC TX C) */
+#define MT8196_DRIVING_PARAM_3_DEFAULT	BUILD_DRIVING_PARAM_0( 10, 12, 14, 17)
+#define MT8196_DRIVING_PARAM_4_DEFAULT	BUILD_DRIVING_PARAM_12(14, 17, 18, 18)
+#define MT8196_DRIVING_PARAM_5_DEFAULT	BUILD_DRIVING_PARAM_23(21, 24)
+
+/* MT8196/MT6991: Positive Edge (LC TX CP) */
+#define MT8196_DRIVING_PARAM_6_DEFAULT	BUILD_DRIVING_PARAM_0( 0, 2, 4, 7)
+#define MT8196_DRIVING_PARAM_7_DEFAULT	BUILD_DRIVING_PARAM_12(0, 3, 6, 0)
+#define MT8196_DRIVING_PARAM_8_DEFAULT	BUILD_DRIVING_PARAM_23(3, 0)
+
 enum mtk_dp_phya_ana_glb_regidx {
 	DP_PHYA_GLB_BIAS_GEN_0,
 	DP_PHYA_GLB_BIAS_GEN_1,
@@ -184,6 +196,11 @@ static const u8 mt8195_phy_dig_lane_regs[DP_PHYD_LAN_MAX] = {
 	[DP_PHYD_LAN_DRIVING_PARAM_0] = 0x2c,
 };
 
+static const u8 mt8196_phy_dig_lane_regs[DP_PHYD_LAN_MAX] = {
+	[DP_PHYD_LAN_DRIVING_FORCE] = 0x30,
+	[DP_PHYD_LAN_DRIVING_PARAM_0] = 0x34,
+};
+
 static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_PLL_CTL_0] = 0x10,
 	[DP_PHYD_PLL_CTL_1] = 0x14,
@@ -193,6 +210,15 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_TX_CTL_0] = 0x44,
 };
 
+static const u8 mt8196_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
+	[DP_PHYD_PLL_CTL_0] = 0x10,
+	[DP_PHYD_PLL_CTL_1] = 0x14,
+	[DP_PHYD_SW_RST] = 0x38,
+	[DP_PHYD_BIT_RATE] = 0x3c,
+	[DP_PHYD_AUX_RX_CTL] = 0x40,
+	[DP_PHYD_TX_CTL_0] = 0x74,
+};
+
 static const u8 mt8195_phy_dig_bitrate_val[DP_PHYD_BIT_RATE_MAX] = {
 	[DP_PHYD_BIT_RATE_RBR] = 0,
 	[DP_PHYD_BIT_RATE_HBR] = 1,
@@ -200,6 +226,13 @@ static const u8 mt8195_phy_dig_bitrate_val[DP_PHYD_BIT_RATE_MAX] = {
 	[DP_PHYD_BIT_RATE_HBR3] = 3
 };
 
+static const u8 mt8196_edp_phy_dig_bitrate_val[DP_PHYD_BIT_RATE_MAX] = {
+	[DP_PHYD_BIT_RATE_RBR] = 1,
+	[DP_PHYD_BIT_RATE_HBR] = 4,
+	[DP_PHYD_BIT_RATE_HBR2] = 7,
+	[DP_PHYD_BIT_RATE_HBR3] = 9
+};
+
 /**
  * struct mtk_dp_phya_imp_sel - Per-Lane Impedance Selection
  * @pmos: Impedance selection for P-Channel MOSFET
@@ -805,8 +838,39 @@ static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
 	},
 };
 
+static const struct mtk_dp_phy_pdata mt8196_edp_phy_data = {
+	.off_ana_glb = 0x400,
+	.off_ana_lane = (const u16[]) { 0x0, 0x100, 0x200, 0x300 },
+	.off_dig_glb = 0x1400,
+	.off_dig_lane = (const u16[]) { 0x1000, 0x1100, 0x1200, 0x1300 },
+	.regs_ana_glb = mt8195_phy_ana_glb_regs,
+	.regs_ana_lane = mt8195_phy_ana_lane_regs,
+	.regs_dig_glb = mt8196_phy_dig_glb_regs,
+	.regs_dig_lane = mt8196_phy_dig_lane_regs,
+	.mask_dig_tx_ln = PHYD_TX_LN_EN_V2,
+	.val_dig_bitrate = mt8196_edp_phy_dig_bitrate_val,
+	.ana_bias_r = 15,
+	.ana_cktx_imp = 8,
+	.ana_lanes_imp = {
+		.pmos = 8,
+		.nmos = 8,
+	},
+	.driving_params = (const u32[]) {
+		[0] = 0,
+		[1] = 0,
+		[2] = 0,
+		[3] = MT8196_DRIVING_PARAM_3_DEFAULT,
+		[4] = MT8196_DRIVING_PARAM_4_DEFAULT,
+		[5] = MT8196_DRIVING_PARAM_5_DEFAULT,
+		[6] = MT8196_DRIVING_PARAM_6_DEFAULT,
+		[7] = MT8196_DRIVING_PARAM_7_DEFAULT,
+		[8] = MT8196_DRIVING_PARAM_8_DEFAULT
+	},
+};
+
 static const struct of_device_id mtk_dp_phy_of_match[] = {
 	{ .compatible = "mediatek,mt8195-dp-phy", .data = &mt8195_dp_phy_data },
+	{ .compatible = "mediatek,mt8196-edp-phy", .data = &mt8196_edp_phy_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mtk_dp_phy_of_match);
-- 
2.54.0


