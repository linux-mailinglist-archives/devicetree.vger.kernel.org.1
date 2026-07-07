Return-Path: <devicetree+bounces-322128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z63qN0YTTWqtugEAu9opvQ
	(envelope-from <devicetree+bounces-322128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:55:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6333F71CE49
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:55:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=gAYBUVS5;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322128-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322128-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 268FB32CDD41
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D881434E3C;
	Tue,  7 Jul 2026 14:19:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E49C432BF9;
	Tue,  7 Jul 2026 14:19:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433993; cv=none; b=ll+OxaMDkPMZYh+PclcHj/cgWo3p5BP3+Kl8f9JbzUju2PaRMEjainK/GcXVntAm9fLXVo3lN7qhl//V5gyEFrnnz4rQfKWMHpyVwbkf/GDQciH3hwtNF1xy8JB4tJTWIlxgW9EpgyHdHNeuNz4C8LXZwbtUUPYUtrvaVfwIzJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433993; c=relaxed/simple;
	bh=1mFwOiUnJoBtpdzPigcW8ucCsQx6xBaelg4YAbDZAJw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G7EkXLFn8HRqty57aDVtRchCNoM57ZOgjFe4RL1pbsNmpVvmidDDUMkumrl393qvTDyPB/DCEZKDwV42uiDLudAqqxf9496mGbIUQGRbaB4lZ0JXD1UlXQ0RsOjblS3pWN08eSuz2ZbUhpuVCWpUivMO6xs8Smmm/XkGDgyVFZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=gAYBUVS5; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783433990;
	bh=1mFwOiUnJoBtpdzPigcW8ucCsQx6xBaelg4YAbDZAJw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gAYBUVS5YAHxL44NpBbw6lJESG2MwC+fA1bhwtE4X8RoSiQzZ1kNWUAOXATS7sp9z
	 ME4SsMDnDv9QWmWnDIw0z9qWhmAGEbHhygDwoMW+5rcInMHS9sOM1cRV5rF2NLS39K
	 YwAsqMOaLWllP8B8JW60RadNMXDfuDDRpYGBfro4i5rUN3wWJoSEwm+8VIlR9nZfid
	 XX8hbHDZaWOWfPBduDpCXQWPPZAZA0+0ScrvS/bsnmeUc9tDuSuaUV5sf8Eufwc3yD
	 b6G3W88qtXEurUpzvGTds6vRttS1mQOLi0VrvBzXJBHX5hBk2pdtCZ54jB6sp0sX3b
	 tn1pMR2uwkDOA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B3BB17E0076;
	Tue, 07 Jul 2026 16:19:49 +0200 (CEST)
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
Subject: [PATCH v2 10/12] phy: phy-mtk-dp: Add bitrate register val definitions to SoC data
Date: Tue,  7 Jul 2026 16:19:29 +0200
Message-ID: <20260707141931.191172-11-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322128-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6333F71CE49

In preparation for adding support for the eDP PHY found in newer
SoCs, transfer the bitrate register value definitions to SoC
specific data.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 36 +++++++++++++++++++++++--------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 9a800d6b91c3..8ac086360138 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -42,10 +42,6 @@
 
 /* DP_PHYD_BIT_RATE */
 #define PHYD_DIG_RG_BIT_RATE		GENMASK(1, 0)
-#  define BIT_RATE_RBR			0
-#  define BIT_RATE_HBR			1
-#  define BIT_RATE_HBR2			2
-#  define BIT_RATE_HBR3			3
 
 /* DP_PHYD_SW_RST */
 #define PHYD_DIG_GLB_SW_RST_B		GENMASK(7, 0)
@@ -157,6 +153,14 @@ enum mtk_dp_phyd_dig_glb_regidx {
 	DP_PHYD_GLOBAL_MAX
 };
 
+enum mtk_dp_phyd_bit_rate_regval {
+	DP_PHYD_BIT_RATE_RBR,
+	DP_PHYD_BIT_RATE_HBR,
+	DP_PHYD_BIT_RATE_HBR2,
+	DP_PHYD_BIT_RATE_HBR3,
+	DP_PHYD_BIT_RATE_MAX,
+};
+
 static const u8 mt8195_phy_ana_glb_regs[DP_PHYA_GLOBAL_MAX] = {
 	[DP_PHYA_GLB_BIAS_GEN_0] = 0x0,
 	[DP_PHYA_GLB_BIAS_GEN_1] = 0x4,
@@ -183,6 +187,13 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_TX_CTL_0] = 0x44,
 };
 
+static const u8 mt8195_phy_dig_bitrate_val[DP_PHYD_BIT_RATE_MAX] = {
+	[DP_PHYD_BIT_RATE_RBR] = 0,
+	[DP_PHYD_BIT_RATE_HBR] = 1,
+	[DP_PHYD_BIT_RATE_HBR2] = 2,
+	[DP_PHYD_BIT_RATE_HBR3] = 3
+};
+
 /**
  * struct mtk_dp_phya_imp_sel - Per-Lane Impedance Selection
  * @pmos: Impedance selection for P-Channel MOSFET
@@ -203,6 +214,7 @@ struct mtk_dp_phya_imp_sel {
  * @regs_ana_lane:  Register (layout) offsets for ana_lan
  * @regs_dig_glb:   Register (layout) offsets for dig_glb
  * @regs_dig_lane:  Register (layout) offsets for dig_lan
+ * @val_dig_bitrate:IP Version specific register values for Bit Rate setting
  * @ana_bias_r:     Internal resistance "R" Selection Settings (global)
  * @ana_cktx_imp:   TX Clock Impedance Selection Settings (global)
  * @ana_lanes_imp:  TX Impedance Selection Settings (for all lanes)
@@ -221,6 +233,9 @@ struct mtk_dp_phy_pdata {
 	const u8 *regs_dig_glb;
 	const u8 *regs_dig_lane;
 
+	/* IP-Version specific register value arrays */
+	const u8 *val_dig_bitrate;
+
 	/* Calibration defaults */
 	u8 ana_bias_r;
 	u8 ana_cktx_imp;
@@ -326,6 +341,7 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 
 	if (opts->dp.set_rate) {
 		const u32 reg_bit_rate = pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
+		enum mtk_dp_phyd_bit_rate_regval regval_idx;
 
 		switch (opts->dp.link_rate) {
 		default:
@@ -334,19 +350,20 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 				opts->dp.link_rate);
 			return -EINVAL;
 		case 1620:
-			val = BIT_RATE_RBR;
+			regval_idx = DP_PHYD_BIT_RATE_RBR;
 			break;
 		case 2700:
-			val = BIT_RATE_HBR;
+			regval_idx = DP_PHYD_BIT_RATE_HBR;
 			break;
 		case 5400:
-			val = BIT_RATE_HBR2;
+			regval_idx = DP_PHYD_BIT_RATE_HBR2;
 			break;
 		case 8100:
-			val = BIT_RATE_HBR3;
+			regval_idx = DP_PHYD_BIT_RATE_HBR3;
 			break;
 		}
-		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
+		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate,
+			     pdata->val_dig_bitrate[regval_idx]);
 	}
 
 	if (opts->dp.set_lanes) {
@@ -744,6 +761,7 @@ static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
 	.regs_ana_lane = mt8195_phy_ana_lane_regs,
 	.regs_dig_glb = mt8195_phy_dig_glb_regs,
 	.regs_dig_lane = mt8195_phy_dig_lane_regs,
+	.val_dig_bitrate = mt8195_phy_dig_bitrate_val,
 	.ana_bias_r = 15,
 	.ana_cktx_imp = 8,
 	.ana_lanes_imp = {
-- 
2.54.0


