Return-Path: <devicetree+bounces-318465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2cV6OY4HRWqq5QoAu9opvQ
	(envelope-from <devicetree+bounces-318465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:26:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 795B36ED4CD
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:26:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=GXHMWvN2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318465-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318465-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 94D8C3077500
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CCE4A139D;
	Wed,  1 Jul 2026 12:20:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D7349691A;
	Wed,  1 Jul 2026 12:20:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908423; cv=none; b=jD609fUwEDgrpR6yzj2w9xiJJzXL4zze42vY8BMkwodiT8jb2nVVPuRd6RZDqxG0sBJdaEdDQ4sliNEBZtHTIQrYNob5c6U738s5y03oRjVwfeCob9D2lGZ7CzZX/BLoagnoHx2BvO68b3Uz9rrnnNYRKWOfV9poc4megeNfRF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908423; c=relaxed/simple;
	bh=SdRF1XZc4THnpf0rodKRaR+353m58f1gyI5xPw1OBqI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y5u8ddlechLRUsSRkmfUTclRoCJqLGpoPM0rD0kzJ5mMj4kBhLB8jrczOpyrUp/9VGNp25rNiG0UCUjJAkGHFE1857LjTJECWdZwyluATQEZjO4s+0UBZ0iNnqWKj2YergT6SGx9/COdA06OjOIZ1X4yZojIwnP7W9UXENyIPL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=GXHMWvN2; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908420;
	bh=SdRF1XZc4THnpf0rodKRaR+353m58f1gyI5xPw1OBqI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GXHMWvN2CiCFYPKE6v53xY0vRVZp0kWiInzsAnLiX34/OdvP61WmUAklBe1cKbe+m
	 bHZ07NIYY3y4YXmpNpVWxLt8LmUCEugOxt54U6uvS97Tw/a0eSqe9hm6KWBUsNbaAW
	 RtU4j7+9D3h1UNGvIfjunwzd3YPch/bJSyNoSxYnM7deUrdPzpX6qV3gPqFK2/QbGi
	 +WdDXCMoXCH90xaaqrwTLN5U1WGdtf8zZCO5I8g/lQAPeqYJaKaEP7MoZCdAsCeaGR
	 tMTZwQIMcGsF4bqcJL8YlqwrZG7ozxzfYqJRU2UUAqpAqx1AxxDusBT0B37koYHDkI
	 gqbXLWcuraEVA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1C35A17E15D0;
	Wed,  1 Jul 2026 14:20:20 +0200 (CEST)
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
Subject: [PATCH 11/12] phy: phy-mtk-dp: Add PHYD Lane EN register mask to SoC data
Date: Wed,  1 Jul 2026 14:20:07 +0200
Message-ID: <20260701122008.19509-12-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-318465-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 795B36ED4CD

In preparation for adding support for the eDP PHY found in newer
SoCs, transfer the register mask for PHYD_TX_LN_EN to SoC specific
data.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index 73fc724e0ecc..2c402b416683 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -214,6 +214,7 @@ struct mtk_dp_phya_imp_sel {
  * @regs_ana_lane:  Register (layout) offsets for ana_lan
  * @regs_dig_glb:   Register (layout) offsets for dig_glb
  * @regs_dig_lane:  Register (layout) offsets for dig_lan
+ * @mask_dig_tx_ln: Register mask for PHYD_TX_LN_EN field
  * @val_dig_bitrate:IP Version specific register values for Bit Rate setting
  * @ana_bias_r:     Internal resistance "R" Selection Settings (global)
  * @ana_cktx_imp:   TX Clock Impedance Selection Settings (global)
@@ -233,6 +234,9 @@ struct mtk_dp_phy_pdata {
 	const u8 *regs_dig_glb;
 	const u8 *regs_dig_lane;
 
+	/* Register masks */
+	u32 mask_dig_tx_ln;
+
 	/* IP-Version specific register value arrays */
 	const u8 *val_dig_bitrate;
 
@@ -370,10 +374,10 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 
 		val = 0;
 		for (i = 0; i < opts->dp.lanes; i++)
-			val |= FIELD_PREP(PHYD_TX_LN_EN, BIT(i));
+			val |= field_prep(pdata->mask_dig_tx_ln, BIT(i));
 
 		regmap_update_bits(dp_phy->regmap, pdata->off_dig_glb + reg_dig_tx_ctl,
-				   PHYD_TX_LN_EN, val);
+				   pdata->mask_dig_tx_ln, val);
 	}
 
 	if (opts->dp.set_voltages) {
@@ -442,7 +446,7 @@ static int mtk_dp_phy_disable_all_lanes(struct mtk_dp_phy *dp_phy)
 		return ret;
 
 	/* Get mask of currently enabled lane */
-	val = FIELD_GET(PHYD_TX_LN_EN, val);
+	val = field_get(pdata->mask_dig_tx_ln, val);
 
 	/* Disable all lanes (needs to be done one by one, from last to first) */
 	do {
@@ -451,7 +455,7 @@ static int mtk_dp_phy_disable_all_lanes(struct mtk_dp_phy *dp_phy)
 
 		ret = regmap_clear_bits(dp_phy->regmap,
 					pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0],
-					FIELD_PREP(PHYD_TX_LN_EN, lane_num));
+					field_prep(pdata->mask_dig_tx_ln, lane_num));
 		if (ret)
 			return ret;
 	} while (val);
@@ -726,6 +730,7 @@ static const struct mtk_dp_phy_pdata mt8195_dp_phy_data = {
 	.regs_ana_lane = mt8195_phy_ana_lane_regs,
 	.regs_dig_glb = mt8195_phy_dig_glb_regs,
 	.regs_dig_lane = mt8195_phy_dig_lane_regs,
+	.mask_dig_tx_ln = PHYD_TX_LN_EN,
 	.val_dig_bitrate = mt8195_phy_dig_bitrate_val,
 	.ana_bias_r = 15,
 	.ana_cktx_imp = 8,
-- 
2.54.0


