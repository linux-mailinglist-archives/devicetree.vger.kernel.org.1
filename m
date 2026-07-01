Return-Path: <devicetree+bounces-318459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9Lc0OTcIRWrq5QoAu9opvQ
	(envelope-from <devicetree+bounces-318459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6229C6ED56A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:29:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=aOIecFkZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318459-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 770F43107864
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD564963B9;
	Wed,  1 Jul 2026 12:20:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF22495531;
	Wed,  1 Jul 2026 12:20:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908418; cv=none; b=HsnFZ9ajzk0/+E6w8m6LDV0cJo8Yl3FWG62R5kf06rKsc6kmdbK9+Odsp5U+Rjom8uz6S5/fYIuLfrikkNsPPrSZQpA15rIcK92K/tCn2b2x+tNxRwdBzBsZt5H1OIgAMq32WMfzDPjrNioJe/bBlqkJao58hO4mZ0MKnKUzAt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908418; c=relaxed/simple;
	bh=bRMKMGSLcucjrOoiYuWObf4Zp9x+zEQ+vrSfpZkz6bQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S+B18an+95MEcoH/QWm3Fmb9TIyReBuVk7O+1jvIYsLexEMKbBTN6468B7cStwLgou6GrSvwQcUJsuiR/QFmfD1T22kgfXqFjWzRIu2Gtg48sdXV0WjxRWa3awDRrdqm03cKr85WcVQn9QgkXehXkRqXl/ddF3yIG9Eftf/ayQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aOIecFkZ; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908415;
	bh=bRMKMGSLcucjrOoiYuWObf4Zp9x+zEQ+vrSfpZkz6bQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aOIecFkZxG6Y53vyVc3B5TPA0fYPr7qM+F8g+ipsy0fTT8XJCtDOyrAHuplciZl1Z
	 5/7plM+JEv5SxM+0PotMgSfXZ1sOh8t4u9a/Fx9n8oqgQCDZBgxK+DePAdjdLXMYQi
	 0/GmQ4PQEWLaQbYqrStbgAYZDpFp5HBK/mFKzKslYrp5PSRcXH8YDx08riuK543mmt
	 Q4N7K9YlytVITgsT6tHexuK71Mx+oTVT1zpPmPI3TtZbDgrNLuwz+B2zYqyTQJbLk4
	 QgQDDpbxZZ8RDND4COjp6c5wkh2ho+iwjb39E8rBhiHbW+EqkW/TEqhdVoOibpyeBm
	 wgkOv6duxSx0Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E35F817E116D;
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
Subject: [PATCH 05/12] phy: phy-mtk-dp: Implement power_on and power_off PHY callbacks
Date: Wed,  1 Jul 2026 14:20:01 +0200
Message-ID: <20260701122008.19509-6-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-318459-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6229C6ED56A

Add .power_on() and .power_off() callbacks to mtk_dp_phy_dev_ops
to be able to call those with phy_power_on() and phy_power_off()
API in the DisplayPort driver to be able to stop using all of
those hardcoded register writes in that external driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 87 +++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index ce33f6812bae..586e72795633 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -20,6 +20,9 @@
 
 #define MTK_DP_PHY_MAX_LANES		4
 
+/* DP_PHYA_GLB_FORCE_CTRL_1 */
+#define CKM_CKTX0_EN_FORCE_MODE		BIT(10)
+
 /* DP_PHYD_PLL_CTL_1 */
 #define TPLL_SSC_EN			BIT(3)
 
@@ -37,6 +40,11 @@
 #  define DP_GLB_SW_RST_XTAL_CLK	BIT(2)
 #  define DP_GLB_SW_RST_MAIN_LINK	BIT(3)
 
+/* DP_PHYD_AUX_RX_CTL */
+#define PHYD_DIG_DPAUX_RX_EN		BIT(0)
+#define PHYD_DIG_XTP_GLB_CKDET_EN	BIT(1)
+#define PHYD_DIG_DPAUX_RX_DEGLITCH_EN	BIT(2)
+
 #define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
 #define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
 #define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
@@ -83,6 +91,12 @@
 #define DRIVING_PARAM_8_DEFAULT	(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT | \
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
+enum mtk_dp_phya_ana_glb_regidx {
+	DP_PHYA_GLB_FORCE_CTRL_0,
+	DP_PHYA_GLB_FORCE_CTRL_1,
+	DP_PHYA_GLOBAL_MAX
+};
+
 enum mtk_dp_phyd_dig_lane_regidx {
 	DP_PHYD_LAN_DRIVING_PARAM_0,
 	DP_PHYD_LAN_MAX
@@ -93,9 +107,15 @@ enum mtk_dp_phyd_dig_glb_regidx {
 	DP_PHYD_PLL_CTL_1,
 	DP_PHYD_SW_RST,
 	DP_PHYD_BIT_RATE,
+	DP_PHYD_AUX_RX_CTL,
 	DP_PHYD_GLOBAL_MAX
 };
 
+static const u8 mt8195_phy_ana_glb_regs[DP_PHYA_GLOBAL_MAX] = {
+	[DP_PHYA_GLB_FORCE_CTRL_0] = 0x30,
+	[DP_PHYA_GLB_FORCE_CTRL_1] = 0x34,
+};
+
 static const u8 mt8195_phy_dig_lane_regs[DP_PHYD_LAN_MAX] = {
 	[DP_PHYD_LAN_DRIVING_PARAM_0] = 0x2c,
 };
@@ -105,21 +125,26 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_PLL_CTL_1] = 0x14,
 	[DP_PHYD_SW_RST] = 0x38,
 	[DP_PHYD_BIT_RATE] = 0x3c,
+	[DP_PHYD_AUX_RX_CTL] = 0x40,
 };
 
 /**
  * struct mtk_dp_phy_pdata - Platform data and defaults for MediaTek DP/eDP PHY
+ * @off_ana_glb:    Base offset for dptx_phyd_sifslv_ana_glb
  * @off_dig_glb:    Base offset for dptx_phyd_sifslv_dig_glb
  * @off_dig_lane:   Base offsets for dptx_phyd_sifslv_dig_lan (for each lane)
+ * @regs_ana_glb:   Register (layout) offsets for ana_glb
  * @regs_dig_glb:   Register (layout) offsets for dig_glb
  * @regs_dig_lane:  Register (layout) offsets for dig_lan
  */
 struct mtk_dp_phy_pdata {
 	/* Register offsets */
+	u16 off_ana_glb;
 	u16 off_dig_glb;
 	u16 off_dig_lane[MTK_DP_PHY_MAX_LANES];
 
 	/* Register maps */
+	const u8 *regs_ana_glb;
 	const u8 *regs_dig_glb;
 	const u8 *regs_dig_lane;
 };
@@ -193,6 +218,17 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
 	}
 
+	if (opts->dp.set_lanes) {
+		const u32 reg_dig_tx_ctl = pdata->regs_dig_glb[DP_PHYD_TX_CTL_0];
+
+		val = 0;
+		for (i = 0; i < opts->dp.lanes; i++)
+			val |= FIELD_PREP(PHYD_TX_LN_EN, i);
+
+		regmap_update_bits(dp_phy->regmap, pdata->off_dig_glb + reg_dig_tx_ctl,
+				   PHYD_TX_LN_EN, val);
+	}
+
 	regmap_update_bits(dp_phy->regmap,
 			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
@@ -200,6 +236,53 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
+static int mtk_dp_phy_power_on(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u8 *regs = pdata->regs_dig_glb;
+	int ret;
+
+	/* Enable AUX Channel with RX De-Glitch and input clock detection */
+	ret = regmap_write(dp_phy->regmap,
+			   pdata->off_dig_glb + regs[DP_PHYD_AUX_RX_CTL],
+			   PHYD_DIG_DPAUX_RX_EN |
+			   PHYD_DIG_XTP_GLB_CKDET_EN |
+			   PHYD_DIG_DPAUX_RX_DEGLITCH_EN);
+	if (ret)
+		return ret;
+
+	ret = regmap_clear_bits(dp_phy->regmap,
+				pdata->off_ana_glb + regs[DP_PHYA_GLB_FORCE_CTRL_1],
+				CKM_CKTX0_EN_FORCE_MODE);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int mtk_dp_phy_power_off(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u8 *regs = pdata->regs_dig_glb;
+	int ret;
+
+	ret = regmap_set_bits(dp_phy->regmap,
+				pdata->off_ana_glb + regs[DP_PHYA_GLB_FORCE_CTRL_1],
+				CKM_CKTX0_EN_FORCE_MODE);
+	if (ret)
+		return ret;
+
+	/* Disable RX */
+	ret = regmap_write(dp_phy->regmap,
+			   pdata->off_dig_glb + regs[DP_PHYD_AUX_RX_CTL], 0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static int mtk_dp_phy_reset(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
@@ -220,6 +303,8 @@ static int mtk_dp_phy_reset(struct phy *phy)
 
 static const struct phy_ops mtk_dp_phy_dev_ops = {
 	.init = mtk_dp_phy_init,
+	.power_on = mtk_dp_phy_power_on,
+	.power_off = mtk_dp_phy_power_off,
 	.configure = mtk_dp_phy_configure,
 	.reset = mtk_dp_phy_reset,
 	.owner = THIS_MODULE,
@@ -305,8 +390,10 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
+	.off_ana_glb = 0x0,
 	.off_dig_glb = 0x1000,
 	.off_dig_lane = (const u16[]) { 0x1100, 0x1200, 0x1300, 0x1400 },
+	.regs_ana_glb = mt8195_phy_ana_glb_regs,
 	.regs_dig_glb = mt8195_phy_dig_glb_regs,
 	.regs_dig_lane = mt8195_phy_dig_lane_regs,
 };
-- 
2.54.0


