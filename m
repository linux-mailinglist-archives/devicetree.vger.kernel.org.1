Return-Path: <devicetree+bounces-322180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XHz4E5YfTWrzvQEAu9opvQ
	(envelope-from <devicetree+bounces-322180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:47:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8F771D7A5
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:47:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Xv9p1OUC;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322180-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322180-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B3033087128
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB560432BC2;
	Tue,  7 Jul 2026 15:42:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C2A430CF9;
	Tue,  7 Jul 2026 15:42:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438977; cv=none; b=PJNOVD/YFG1InIpGyeCh+mONlXfddO4QV+H5EnPYQLUIBzSZysNC17cVJcxNPuQeX9qesInwMg6hJGNVODAtuHZoRbDGladU5hFJSW44/4A4XfrLnfVBnU7Sk/QPvdlX68PAEVsyTjHgHIObNss+qK5PXJFxe1nsC68rH2paQBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438977; c=relaxed/simple;
	bh=c+SkD5zNo9ytRpYW/UIephuNwLTBwjCNOA2fMq0NvLk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dLqG9rwXp8Y1Uzn48oU2fPVMDgSE87pwhHxIWUTaiRxB7f+x/iWAg/H+IJbzPL3EEMX5y0Umo9OcB8g3YJFlwahBbPFIdQFs1iNloY9E90kdp9U908XGjp1LfJy0NI+jS7EeoxN4sF3RnMvyDvP/tIxdz57nv/h4i8izMIuKY4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Xv9p1OUC; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783438974;
	bh=c+SkD5zNo9ytRpYW/UIephuNwLTBwjCNOA2fMq0NvLk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Xv9p1OUCxJh37jnZ66mhi+UKP0fLbisGPjnBtd3D2GSbr26eFCrI04t5n8jIjKG6U
	 gvDLPexB3wcE1qezkPGx5IxXSubd0Sp3HHcbIDAPLfLIB2apJvt4C6x7AYbg1fz4p+
	 XDIwRgy7PSw4qiIU94QpknCxJ0UVoeUYfpD5Wkdpg4gV0dLeAcX0uTlKrAtfob6d8m
	 gcVb7fPYHOdVBfsoXJWJSbbuP2KrBFDKERnXVYhj8y8LMz5Dq5Xt+KSLJy0GGzvrLw
	 T1mtquM7VWmq1R7vcLtEUa1T0df2dMlQ8GXDuPM/sKSw2dzFiMJ/hR7vbh8hTGvZM1
	 8wc2vu563PZWw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6AEAD17E0FAC;
	Tue, 07 Jul 2026 17:42:53 +0200 (CEST)
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
Subject: [PATCH v3 06/12] phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup
Date: Tue,  7 Jul 2026 17:42:39 +0200
Message-ID: <20260707154245.198361-7-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-322180-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: AF8F771D7A5

Add support for enabling a specifically requested number of lanes
in the .configure() callback and disable all lanes in power off
and reset callbacks for proper hardware cleanup.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 75 ++++++++++++++++++++++++++++---
 1 file changed, 68 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index f6b0e83d4833..2c8bc0b37486 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -10,6 +10,7 @@
  *                     AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/mfd/syscon.h>
@@ -50,6 +51,9 @@
 #define DRIVING_PARAM_1_DEFAULT	0x0
 #define DRIVING_PARAM_2_DEFAULT	0x0
 
+/* DP_PHYD_TX_CTL_0 */
+#define PHYD_TX_LN_EN			GENMASK(7, 4)
+
 #define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
 #define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
 #define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
@@ -113,6 +117,7 @@ enum mtk_dp_phyd_dig_glb_regidx {
 	DP_PHYD_SW_RST,
 	DP_PHYD_BIT_RATE,
 	DP_PHYD_AUX_RX_CTL,
+	DP_PHYD_TX_CTL_0,
 	DP_PHYD_GLOBAL_MAX
 };
 
@@ -131,6 +136,7 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_SW_RST] = 0x38,
 	[DP_PHYD_BIT_RATE] = 0x3c,
 	[DP_PHYD_AUX_RX_CTL] = 0x40,
+	[DP_PHYD_TX_CTL_0] = 0x44,
 };
 
 /**
@@ -200,6 +206,7 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	u32 val;
+	int i;
 
 	if (opts->dp.set_rate) {
 		const u32 reg_bit_rate = pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
@@ -226,6 +233,17 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
 	}
 
+	if (opts->dp.set_lanes) {
+		const u32 reg_dig_tx_ctl = pdata->regs_dig_glb[DP_PHYD_TX_CTL_0];
+
+		val = 0;
+		for (i = 0; i < opts->dp.lanes; i++)
+			val |= FIELD_PREP(PHYD_TX_LN_EN, BIT(i));
+
+		regmap_update_bits(dp_phy->regmap, pdata->off_dig_glb + reg_dig_tx_ctl,
+				   PHYD_TX_LN_EN, val);
+	}
+
 	regmap_update_bits(dp_phy->regmap,
 			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
@@ -263,31 +281,68 @@ static int mtk_dp_phy_power_on(struct phy *phy)
 	return 0;
 }
 
+static int mtk_dp_phy_disable_all_lanes(struct mtk_dp_phy *dp_phy)
+{
+	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
+	const u8 *regs = pdata->regs_dig_glb;
+	int ret;
+	u32 val;
+
+	ret = regmap_read(dp_phy->regmap, pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0], &val);
+	if (ret)
+		return ret;
+
+	/* Get mask of currently enabled lane */
+	val = FIELD_GET(PHYD_TX_LN_EN, val);
+	if (val == 0)
+		return 0;
+
+	/* Disable all lanes (needs to be done one by one, from last to first) */
+	do {
+		u32 lane_num = fls(val) - 1;
+		val &= ~BIT(lane_num);
+
+		ret = regmap_clear_bits(dp_phy->regmap,
+					pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0],
+					FIELD_PREP(PHYD_TX_LN_EN, BIT(lane_num)));
+		if (ret)
+			return ret;
+	} while (val);
+
+	return 0;
+}
+
 static int mtk_dp_phy_power_off(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	const u8 *regs_dig = pdata->regs_dig_glb;
 	const u8 *regs_ana = pdata->regs_ana_glb;
-	int ret_cktx, ret_aux;
+	int ret_cktx, ret_aux, ret;
 
 	ret_cktx = regmap_set_bits(dp_phy->regmap,
 				   pdata->off_ana_glb + regs_ana[DP_PHYA_GLB_FORCE_CTRL_1],
 				   CKM_CKTX0_EN_FORCE_MODE);
+	if (ret_cktx)
+		dev_err(&phy->dev, "Could not disable CKTX0: %d\n", ret_cktx);
 
 	/* Disable RX unconditionally */
 	ret_aux = regmap_write(dp_phy->regmap,
 			       pdata->off_dig_glb + regs_dig[DP_PHYD_AUX_RX_CTL], 0);
-	if (ret_aux) {
+	if (ret_aux)
 		dev_err(&phy->dev, "Could not disable AUX RX: %d\n", ret_aux);
-		return ret_aux;
+
+	ret = mtk_dp_phy_disable_all_lanes(dp_phy);
+	if (ret) {
+		dev_err(dp_phy->dev, "Could not disable lanes for poweroff!\n");
+		return ret;
 	}
 
-	/* Still fail if CKTX0_EN was not disabled, but at least AUX is off */
-	if (ret_cktx) {
-		dev_err(&phy->dev, "Could not disable CKTX0: %d\n", ret_cktx);
+	/* Still return a failure if any of CKTX or AUX could not disable */
+	if (ret_cktx)
 		return ret_cktx;
-	}
+	if (ret_aux)
+		return ret_aux;
 
 	return 0;
 }
@@ -297,6 +352,7 @@ static int mtk_dp_phy_reset(struct phy *phy)
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	const u32 reg_rst = pdata->regs_dig_glb[DP_PHYD_SW_RST];
+	int ret;
 
 	/* Clearing bits sets reset state */
 	regmap_clear_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
@@ -307,6 +363,11 @@ static int mtk_dp_phy_reset(struct phy *phy)
 	/* Setting bits means go out of reset */
 	regmap_set_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
 
+	/* Disable all lanes and continue reset even if this fails, but notify */
+	ret = mtk_dp_phy_disable_all_lanes(dp_phy);
+	if (ret)
+		dev_err(dp_phy->dev, "Could not disable lanes during reset!\n");
+
 	return 0;
 }
 
-- 
2.54.0


