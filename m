Return-Path: <devicetree+bounces-322179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oBbgHPggTWpGvgEAu9opvQ
	(envelope-from <devicetree+bounces-322179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:53:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA1671D87F
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:53:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=j+KY8fIv;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322179-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322179-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F092D31C43F2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E3B4314BF;
	Tue,  7 Jul 2026 15:42:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6361E51E0;
	Tue,  7 Jul 2026 15:42:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438976; cv=none; b=V7Jy4N3zEtqpiY2aqZGk2Qf/SCtlBKXEOp/KDiuQb389txQ3nDcQBR1xfL6Q+N673B1+07Wlf25KjeDnb9lFh1w1k/vHRUmPHQdM50iUCvTsyCuIeqPtM/3gHk4w8Bsg6t/M9vr7HBOdPfc3tBlghCTAEWE6/6OMuAOYIJ/92GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438976; c=relaxed/simple;
	bh=beuRaKY+PZJXEQbVFQkHrQ+SXJHwEJYxUVLJhGY9UX4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n4yHTaTylJ3dZG0sN2i6fKGj1zHbFxzSCJyq3jZ4DVHftTU9lcHIzjvW0T3vcqEDK369yoXndOQPjxDj8xjx7h7fs+s9O0Z1E6ceM3R3ghzp+jUQ7vQUIBoN71le143Hy/fGrmNb3Nj4MWqOhAJN5pwryNFWIMdE9JOeG9w2MPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=j+KY8fIv; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783438973;
	bh=beuRaKY+PZJXEQbVFQkHrQ+SXJHwEJYxUVLJhGY9UX4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j+KY8fIvbohUa/n7LHOHH9FYsyZ13+LyN5biaMWLwXOFoa+p8UutwN5BmDQ3FY60b
	 7liljiBQVaO/CLGWemBJ6uIGzfgufZeCJ+hlLCjsAuVL+y96IYvp/nh9NPyGfT/Avw
	 nE3dzgyCPLI9tL3MKLZoeeduiSyLwhSDI/ot42amI1ociHdsckpfRt/iVXnAfnBvD3
	 /fXJ4Rsud3zea7r+/v4bKEnwjDVouUPgBh/cO2laKjuRhQLbEptGRXB/bTxNO4kuh0
	 +7/3GMP9dpSwzv2aJQExhD9XEWoqv53Q73yzBJpNOsxaVYgwP98JGmTb+xGdZQYsV9
	 9rK8NkM3Cch6Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 97D7D17E0EF3;
	Tue, 07 Jul 2026 17:42:52 +0200 (CEST)
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
Subject: [PATCH v3 05/12] phy: phy-mtk-dp: Implement power_on and power_off PHY callbacks
Date: Tue,  7 Jul 2026 17:42:38 +0200
Message-ID: <20260707154245.198361-6-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322179-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:chunfeng.yun@mediatek.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:justin.yeh@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAA1671D87F

Add .power_on() and .power_off() callbacks to mtk_dp_phy_dev_ops
to be able to call those with phy_power_on() and phy_power_off()
API in the DisplayPort driver to be able to stop using all of
those hardcoded register writes in that external driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 88 +++++++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 20974650d940..f6b0e83d4833 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -21,6 +21,9 @@
 
 #define MTK_DP_PHY_MAX_LANES		4
 
+/* DP_PHYA_GLB_FORCE_CTRL_1 */
+#define CKM_CKTX0_EN_FORCE_MODE		BIT(10)
+
 /* DP_PHYD_PLL_CTL_1 */
 #define TPLL_SSC_EN			BIT(3)
 
@@ -38,6 +41,11 @@
 #  define DP_GLB_SW_RST_XTAL_CLK	BIT(2)
 #  define DP_GLB_SW_RST_MAIN_LINK	BIT(3)
 
+/* DP_PHYD_AUX_RX_CTL */
+#define PHYD_DIG_DPAUX_RX_EN		BIT(0)
+#define PHYD_DIG_XTP_GLB_CKDET_EN	BIT(1)
+#define PHYD_DIG_DPAUX_RX_DEGLITCH_EN	BIT(2)
+
 #define DRIVING_PARAM_0_DEFAULT	0x0
 #define DRIVING_PARAM_1_DEFAULT	0x0
 #define DRIVING_PARAM_2_DEFAULT	0x0
@@ -88,6 +96,12 @@
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
@@ -98,9 +112,15 @@ enum mtk_dp_phyd_dig_glb_regidx {
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
@@ -110,21 +130,26 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
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
@@ -208,6 +233,65 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
+static int mtk_dp_phy_power_on(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u8 *regs_dig = pdata->regs_dig_glb;
+	const u8 *regs_ana = pdata->regs_ana_glb;
+	int ret;
+
+	/* Enable AUX Channel with RX De-Glitch and input clock detection */
+	ret = regmap_write(dp_phy->regmap,
+			   pdata->off_dig_glb + regs_dig[DP_PHYD_AUX_RX_CTL],
+			   PHYD_DIG_DPAUX_RX_EN |
+			   PHYD_DIG_XTP_GLB_CKDET_EN |
+			   PHYD_DIG_DPAUX_RX_DEGLITCH_EN);
+	if (ret)
+		return ret;
+
+	ret = regmap_clear_bits(dp_phy->regmap,
+				pdata->off_ana_glb + regs_ana[DP_PHYA_GLB_FORCE_CTRL_1],
+				CKM_CKTX0_EN_FORCE_MODE);
+	if (ret) {
+		/* Shut down AUX channel */
+		regmap_write(dp_phy->regmap,
+			     pdata->off_dig_glb + regs_dig[DP_PHYD_AUX_RX_CTL], 0);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mtk_dp_phy_power_off(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u8 *regs_dig = pdata->regs_dig_glb;
+	const u8 *regs_ana = pdata->regs_ana_glb;
+	int ret_cktx, ret_aux;
+
+	ret_cktx = regmap_set_bits(dp_phy->regmap,
+				   pdata->off_ana_glb + regs_ana[DP_PHYA_GLB_FORCE_CTRL_1],
+				   CKM_CKTX0_EN_FORCE_MODE);
+
+	/* Disable RX unconditionally */
+	ret_aux = regmap_write(dp_phy->regmap,
+			       pdata->off_dig_glb + regs_dig[DP_PHYD_AUX_RX_CTL], 0);
+	if (ret_aux) {
+		dev_err(&phy->dev, "Could not disable AUX RX: %d\n", ret_aux);
+		return ret_aux;
+	}
+
+	/* Still fail if CKTX0_EN was not disabled, but at least AUX is off */
+	if (ret_cktx) {
+		dev_err(&phy->dev, "Could not disable CKTX0: %d\n", ret_cktx);
+		return ret_cktx;
+	}
+
+	return 0;
+}
+
 static int mtk_dp_phy_reset(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
@@ -228,6 +312,8 @@ static int mtk_dp_phy_reset(struct phy *phy)
 
 static const struct phy_ops mtk_dp_phy_dev_ops = {
 	.init = mtk_dp_phy_init,
+	.power_on = mtk_dp_phy_power_on,
+	.power_off = mtk_dp_phy_power_off,
 	.configure = mtk_dp_phy_configure,
 	.reset = mtk_dp_phy_reset,
 	.owner = THIS_MODULE,
@@ -330,8 +416,10 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
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


