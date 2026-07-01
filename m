Return-Path: <devicetree+bounces-318460-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8BXXJFsHRWqV5QoAu9opvQ
	(envelope-from <devicetree+bounces-318460-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:26:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD616ED49A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:26:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Ztp9vqbS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318460-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318460-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BFCA304C589
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 978414963D5;
	Wed,  1 Jul 2026 12:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F5F4963A2;
	Wed,  1 Jul 2026 12:20:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908419; cv=none; b=kQyxcK/MVt6jolx3T4NDpActUJIjgC1ptspKXw4fuRZ+JjOOvrkucXuaY97W1RujVs/g0INecraIAGPS+up23qqxtHbxeTeBUOuXTwFYxFCMVCCi6Uf5pyaOO3yeCyYH450QF2itwojeaPxEsRJZP/Dc3KKDPfj3iaxkUEA0NxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908419; c=relaxed/simple;
	bh=GZx1BpRsJ1/r23jIc+VNsKGA3T7ArkhsjieJzJ25f8s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BrKFXkgauCUPZoUHPO/+hSyG35CYWzWfyJC4gQi40oJz2/nlWtzflhKfp2khq8YRCvshhbeExztg9FlQ98bltvanadCeBLPOYOZBho2ZvZkty5kugJOdh3LoSe/nceB4YAWZqNfr3/HKa9i5rhLVVIr7UIYJ20Bp9p4uHbwF7yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Ztp9vqbS; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908416;
	bh=GZx1BpRsJ1/r23jIc+VNsKGA3T7ArkhsjieJzJ25f8s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ztp9vqbSRIwEWQQfxHbnTRyB8eBxPlyEbbpzZqsSXyziUL1IbUj1VfJ0KiqkjJ8w5
	 lvfg0x63LuzHxzeR0+/c3b60YtqYx+ynyMN/2ufnTIwJYutZrl+s7si+h7XKhdhBRv
	 XrnWQGQJRp7V/fquuaCYMzBrEK5ZaDkhRC1/LAU/NtFZzIb90f1mBZRk+04NcTdAOv
	 wXoKldWhKYtgggVALplYBkNhC3ftuIyGtIXMjQrKz7uU18ESu3yqTREsP70sfHAVJL
	 8TfBdiAUTnINp7Z8tYfxqlmrsngg1yzSTTGuv+Fyjh3m4gYT0iz0rWpI8+Hlenq5Fa
	 PoPqSstZnUWoA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C312717E1553;
	Wed,  1 Jul 2026 14:20:15 +0200 (CEST)
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
Subject: [PATCH 06/12] phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup
Date: Wed,  1 Jul 2026 14:20:02 +0200
Message-ID: <20260701122008.19509-7-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-318460-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FD616ED49A

Add support for enabling a specifically requested number of lanes
in the .configure() callback and disable all lanes in power off
and reset callbacks for proper hardware cleanup.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 49 ++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 586e72795633..a2cd22b9da06 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -45,6 +45,9 @@
 #define PHYD_DIG_XTP_GLB_CKDET_EN	BIT(1)
 #define PHYD_DIG_DPAUX_RX_DEGLITCH_EN	BIT(2)
 
+/* DP_PHYD_TX_CTL_0 */
+#define PHYD_TX_LN_EN			GENMASK(7, 4)
+
 #define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	BIT(4)
 #define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(BIT(10) | BIT(12))
 #define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	GENMASK(20, 19)
@@ -108,6 +111,7 @@ enum mtk_dp_phyd_dig_glb_regidx {
 	DP_PHYD_SW_RST,
 	DP_PHYD_BIT_RATE,
 	DP_PHYD_AUX_RX_CTL,
+	DP_PHYD_TX_CTL_0,
 	DP_PHYD_GLOBAL_MAX
 };
 
@@ -126,6 +130,7 @@ static const u8 mt8195_phy_dig_glb_regs[DP_PHYD_GLOBAL_MAX] = {
 	[DP_PHYD_SW_RST] = 0x38,
 	[DP_PHYD_BIT_RATE] = 0x3c,
 	[DP_PHYD_AUX_RX_CTL] = 0x40,
+	[DP_PHYD_TX_CTL_0] = 0x44,
 };
 
 /**
@@ -192,6 +197,7 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	u32 val;
+	int i;
 
 	if (opts->dp.set_rate) {
 		const u32 reg_bit_rate = pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
@@ -223,7 +229,7 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 
 		val = 0;
 		for (i = 0; i < opts->dp.lanes; i++)
-			val |= FIELD_PREP(PHYD_TX_LN_EN, i);
+			val |= FIELD_PREP(PHYD_TX_LN_EN, BIT(i));
 
 		regmap_update_bits(dp_phy->regmap, pdata->off_dig_glb + reg_dig_tx_ctl,
 				   PHYD_TX_LN_EN, val);
@@ -261,6 +267,35 @@ static int mtk_dp_phy_power_on(struct phy *phy)
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
+
+	/* Disable all lanes (needs to be done one by one, from last to first) */
+	do {
+		u32 lane_num = fls(val) - 1;
+		val &= ~BIT(lane_num);
+
+		ret = regmap_clear_bits(dp_phy->regmap,
+					pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0],
+					FIELD_PREP(PHYD_TX_LN_EN, lane_num));
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
@@ -280,6 +315,12 @@ static int mtk_dp_phy_power_off(struct phy *phy)
 	if (ret)
 		return ret;
 
+	ret = mtk_dp_phy_disable_all_lanes(dp_phy);
+	if (ret) {
+		dev_err(dp_phy->dev, "Could not disable lanes for poweroff!\n");
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -288,6 +329,7 @@ static int mtk_dp_phy_reset(struct phy *phy)
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 	const struct mtk_dp_phy_pdata *pdata = dp_phy->pdata;
 	const u32 reg_rst = pdata->regs_dig_glb[DP_PHYD_SW_RST];
+	int ret;
 
 	/* Clearing bits sets reset state */
 	regmap_clear_bits(dp_phy->regmap, pdata->off_dig_glb + reg_rst, DP_GLB_SW_RST_PHYD);
@@ -298,6 +340,11 @@ static int mtk_dp_phy_reset(struct phy *phy)
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


