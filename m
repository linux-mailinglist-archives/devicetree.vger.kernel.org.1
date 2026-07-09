Return-Path: <devicetree+bounces-323567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qxHeNGx2T2rEhAIAu9opvQ
	(envelope-from <devicetree+bounces-323567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:22:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3604972F891
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:22:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=N0pAYCUs;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323567-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323567-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1EB7432964F8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3458F40B6EB;
	Thu,  9 Jul 2026 10:06:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1F9406832;
	Thu,  9 Jul 2026 10:06:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591594; cv=none; b=beinzCpogyPwxvGineMGG5XTjVT9FMnxfIF+c/xzu7ezGfqMxYBcF6qo2dLVVR+kKy52YOvYscb8SL+8u1whWK8VFOsWbq+ZzIDy3cZnnTHzbZSl3H77ie8tarKzPorcjNaH8zkGt49pSbrwupfEZP5ABos1etBNgw9kTiIlHI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591594; c=relaxed/simple;
	bh=nsuItBhJN740rMvT6QbbMjZdRo4XygZJG/um6JZTMDY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vj6WlcAy0v3cty2fRgtKfO6rGNJpKzWrV8jgMGfKKm6Y2vSgrD3bquQAOwKG4fnjwt2PwmxJUcPZskr2hD4ueUBN1YYee0TqqmKIdZxmn8iq4/zfzXVpJw9aLSImO3DlRR8ZUPNMQp+k56eng7glGLQH5OJSUllk5A3tTKfeb/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=N0pAYCUs; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783591589;
	bh=nsuItBhJN740rMvT6QbbMjZdRo4XygZJG/um6JZTMDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N0pAYCUsFnFkqhiOC8lRitS684ixTC8SzpBjHLV3HXKFXYVCQNeoKGEo48SeZ28IS
	 1RbGbuFE/X8bfiOfp5JIg9agEMxtBy8M9vmPDpSj4ly1ZKHb5Od3tzo0aNWXNAmPdN
	 PGtSUSF6J0N5hqBSTv0yIr9Cp6hDt+RgmnALl7BVI24dYLlhifdfaSxWBk3/eNKyhQ
	 X+80WZItkfuM+W9LmnoMhsZX/6DKFctxnmYsvKFschA2gm4YUknVJilMxGNWUacubn
	 DjrpX9Eo30YhavoNmx/2yDUL7nLHPXYpOFkkiRpiXTsaWbm6kgPE6DWxa3yl6Tsw5b
	 E8K59gBrZr6KA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 194E317E05E8;
	Thu, 09 Jul 2026 12:06:28 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	jitao.shi@mediatek.com,
	granquet@baylibre.com,
	rex-bc.chen@mediatek.com,
	dmitry.osipenko@collabora.com,
	ck.hu@mediatek.com,
	amergnat@baylibre.com,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 06/11] drm/mediatek: mtk_dp: Use PHY API for PHY power sequences
Date: Thu,  9 Jul 2026 12:06:12 +0200
Message-ID: <20260709100617.42583-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
References: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,mediatek.com,baylibre.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-323567-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:jitao.shi@mediatek.com,m:granquet@baylibre.com,m:rex-bc.chen@mediatek.com,m:dmitry.osipenko@collabora.com,m:ck.hu@mediatek.com,m:amergnat@baylibre.com,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3604972F891

The PHY driver has gained support for .power_on() and .power_off()
callbacks: use the API provided phy_power_on(), phy_power_off()
functions instead of writing into PHY registers from this driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c | 42 ++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 88e22a9553e0..9c28616c6ada 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -1404,6 +1404,8 @@ static void mtk_dp_aux_panel_poweron(struct mtk_dp *mtk_dp, bool pwron)
 
 static void mtk_dp_power_enable(struct mtk_dp *mtk_dp)
 {
+	int ret;
+
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_RESET_AND_PROBE,
 			   0, SW_RST_B_PHYD);
 
@@ -1414,20 +1416,35 @@ static void mtk_dp_power_enable(struct mtk_dp *mtk_dp)
 			   SW_RST_B_PHYD, SW_RST_B_PHYD);
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE,
 			   DP_PWR_STATE_BANDGAP_TPLL, DP_PWR_STATE_MASK);
-	regmap_write(mtk_dp->regs, DP_PHY_AUX_RX_CTL,
-		     RG_DPAUX_RX_VALID_DEGLITCH_EN | RG_XTP_GLB_CKDET_EN |
-		     RG_DPAUX_RX_EN);
-	regmap_clear_bits(mtk_dp->regs, MTK_DP_0034, DA_CKM_CKTX0_EN_FORCE_EN);
+
+	if (mtk_dp->phy_dev) {
+		regmap_write(mtk_dp->regs, DP_PHY_AUX_RX_CTL,
+			     RG_DPAUX_RX_VALID_DEGLITCH_EN | RG_XTP_GLB_CKDET_EN |
+			     RG_DPAUX_RX_EN);
+		regmap_clear_bits(mtk_dp->regs, MTK_DP_0034, DA_CKM_CKTX0_EN_FORCE_EN);
+	} else {
+		ret = phy_power_on(mtk_dp->phy);
+		if (ret)
+			dev_warn(mtk_dp->dev, "Could not power on PHY!\n");
+	}
 }
 
 static void mtk_dp_power_disable(struct mtk_dp *mtk_dp)
 {
+	int ret;
+
 	mtk_dp_write(mtk_dp, MTK_DP_TOP_PWR_STATE, 0);
 
-	regmap_set_bits(mtk_dp->regs, MTK_DP_0034, DA_CKM_CKTX0_EN_FORCE_EN);
+	if (unlikely(mtk_dp->phy_dev)) {
+		regmap_set_bits(mtk_dp->regs, MTK_DP_0034, DA_CKM_CKTX0_EN_FORCE_EN);
 
-	/* Disable RX */
-	regmap_write(mtk_dp->regs, DP_PHY_AUX_RX_CTL, 0);
+		/* Disable RX */
+		regmap_write(mtk_dp->regs, DP_PHY_AUX_RX_CTL, 0);
+	} else {
+		ret = phy_power_off(mtk_dp->phy);
+		if (ret)
+			dev_warn(mtk_dp->dev, "Could not power off PHY!\n");
+	}
 
 	mtk_dp_write(mtk_dp, MTK_DP_TOP_MEM_PD,
 		     0x550 | FUSE_SEL | MEM_ISO_EN);
@@ -2711,12 +2728,11 @@ static int mtk_dp_register_audio_driver(struct device *dev)
 	if (IS_ERR(mtk_dp->audio_pdev))
 		return PTR_ERR(mtk_dp->audio_pdev);
 
-	ret = devm_add_action_or_reset(dev, mtk_dp_unregister_pdevs, mtk_dp->phy_dev);
-	if (ret) {
-		platform_device_unregister(mtk_dp->audio_pdev);
+	ret = devm_add_action_or_reset(dev, mtk_dp_unregister_pdevs, mtk_dp->audio_pdev);
+	if (ret)
 		return dev_err_probe(dev, ret,
 				     "Failed to add codec unregister devm action");
-	}
+
 	return 0;
 }
 
@@ -2734,11 +2750,9 @@ static int mtk_dp_register_phy(struct mtk_dp *mtk_dp)
 				     "Failed to create device mediatek-dp-phy\n");
 
 	ret = devm_add_action_or_reset(dev, mtk_dp_unregister_pdevs, mtk_dp->phy_dev);
-	if (ret) {
-		platform_device_unregister(mtk_dp->phy_dev);
+	if (ret)
 		return dev_err_probe(dev, ret,
 				     "Failed to add phy unregister devm action");
-	}
 
 	mtk_dp_get_calibration_data(mtk_dp);
 
-- 
2.54.0


