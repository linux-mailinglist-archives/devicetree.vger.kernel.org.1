Return-Path: <devicetree+bounces-318474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NpWRK/MHRWrL5QoAu9opvQ
	(envelope-from <devicetree+bounces-318474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:28:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA0B6ED513
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:28:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=e2kPL7Mn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318474-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318474-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CF6493088DB7
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D822B4ADD94;
	Wed,  1 Jul 2026 12:20:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B5648A2DC;
	Wed,  1 Jul 2026 12:20:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908438; cv=none; b=sLe2UD+B/6e72Fh+dyLc8HAe6zBCIMOEFMQzi/BfFh3S1bdXNQZ6kOh5/53IJoZb71ISkHa8Pfq4jWP7XONP+9yiHkr9D4/Uox5cDxPZbZwTfbwaNCYilTQ5lgyiN3r1pgaCaxSLlBZljC+FAT4gVWlrKxYr9Wz05bBUYUNBrO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908438; c=relaxed/simple;
	bh=5qrR17bDP11PF0Y+AWGupsl3Ns6N2I8PqUxjSFIFbA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CyW6w0vJPW9Y8AznWh7LZwZGXxj3x8ByumktYG7h54vlJvWfikJuY00LSZTcpDarWAbq85y5/P1YT0VwMOJ9eavtSWRdx4/o00o9EsLxkZr1jEsMJSfQDT5OF0sMMc3lpGXyGYzdFUCVODhP0ECEWsGKiz8NqRiwoP/KELBDEV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=e2kPL7Mn; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908436;
	bh=5qrR17bDP11PF0Y+AWGupsl3Ns6N2I8PqUxjSFIFbA0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e2kPL7MnT2+MWveBSV0kY0rYIVauYSqzQ6zmGgJAnbd76UlhZ2PxS2PvZBSa4rkHg
	 xHy5g6sN41ZRPZBWxQbKqSXoZxkB6Wassddep/2xT/ZGUxsDS+OX/JcZyE9tLRvzOq
	 sVe+HrxgXEyN2M4FT43cFh8e5oJsVb5q+eYDVGaa35ELmScxxscZmB9Z0+WqRXjOoH
	 Ph/Ffs2zieRN1L7knpO03t/GxLuHQlIaTVhara3PXQhNc9tLMDpT8//J6wnrxX7WiN
	 /c85/rKFf09TXBpv+OLh4XZTdSoOYT5FkmhP1mVCRcao3eG64xPU9edt0esiBXrsJ/
	 OTVW0FESC9YTQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0671B17E0857;
	Wed,  1 Jul 2026 14:20:34 +0200 (CEST)
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
Subject: [PATCH 07/11] drm/mediatek: mtk_dp: Add support for PHY from devicetree
Date: Wed,  1 Jul 2026 14:20:20 +0200
Message-ID: <20260701122024.19557-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122024.19557-1-angelogioacchino.delregno@collabora.com>
References: <20260701122024.19557-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,mediatek.com,baylibre.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-318474-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AA0B6ED513

Add support for specifying `phys` in devicetree to pass handle
to the DisplayPort PHY.

In order to retain compatibility with older devicetrees, check if
`phys` was specified: if not, initialize the regmap_mmio with the
legacy configuration and register the mediatek-dp-phy platform
device from this driver, and get the PHY calibration data.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dp.c | 50 ++++++++++++++++++++++++++-----
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek/mtk_dp.c
index 3b5348ab487d..bf3a4b15f3ec 100644
--- a/drivers/gpu/drm/mediatek/mtk_dp.c
+++ b/drivers/gpu/drm/mediatek/mtk_dp.c
@@ -426,6 +426,15 @@ static const struct regmap_config mtk_dp_regmap_legacy_config = {
 	.name = "mtk-dp-registers",
 };
 
+static const struct regmap_config mtk_dp_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = SEC_OFFSET + 0x90,
+	.name = "mtk-dp-registers",
+};
+
+
 static struct mtk_dp *mtk_dp_from_bridge(struct drm_bridge *b)
 {
 	return container_of(b, struct mtk_dp, bridge);
@@ -1298,7 +1307,13 @@ static int mtk_dp_phy_configure(struct mtk_dp *mtk_dp,
 	if (ret)
 		return ret;
 
-	mtk_dp_set_calibration_data(mtk_dp);
+	/*
+	 * For legacy, deprecated strategy, set partial PHY calibration here.
+	 * New-style will set all PHY calibrations with phy ops instead.
+	 */
+	if (mtk_dp->phy_dev)
+		mtk_dp_set_calibration_data(mtk_dp);
+
 	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE,
 			   DP_PWR_STATE_BANDGAP_TPLL_LANE, DP_PWR_STATE_MASK);
 
@@ -2132,8 +2147,9 @@ static int mtk_dp_wait_hpd_asserted(struct drm_dp_aux *mtk_aux, unsigned long wa
 static int mtk_dp_dt_parse(struct mtk_dp *mtk_dp,
 			   struct platform_device *pdev)
 {
-	struct device_node *endpoint;
+	const struct regmap_config *regmap_cfg;
 	struct device *dev = &pdev->dev;
+	struct device_node *endpoint;
 	int ret;
 	void __iomem *base;
 	u32 linkrate;
@@ -2143,7 +2159,12 @@ static int mtk_dp_dt_parse(struct mtk_dp *mtk_dp,
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	mtk_dp->regs = devm_regmap_init_mmio(dev, base, &mtk_dp_regmap_legacy_config);
+	if (!mtk_dp->legacy_regoff)
+		regmap_cfg = &mtk_dp_regmap_config;
+	else
+		regmap_cfg = &mtk_dp_regmap_legacy_config;
+
+	mtk_dp->regs = devm_regmap_init_mmio(dev, base, regmap_cfg);
 	if (IS_ERR(mtk_dp->regs))
 		return PTR_ERR(mtk_dp->regs);
 
@@ -2769,6 +2790,7 @@ static int mtk_dp_register_phy(struct mtk_dp *mtk_dp)
 				     "Failed to add phy unregister devm action");
 	}
 
+	/* PHY calibration data is in mtk_dp only for legacy devicetree */
 	mtk_dp_get_calibration_data(mtk_dp);
 
 	mtk_dp->phy = devm_phy_get(&mtk_dp->phy_dev->dev, "dp");
@@ -2821,7 +2843,12 @@ static int mtk_dp_probe(struct platform_device *pdev)
 
 	mtk_dp->dev = dev;
 	mtk_dp->data = (struct mtk_dp_data *)of_device_get_match_data(dev);
-	mtk_dp->legacy_regoff = MTK_DP_TOP_OFFSET_LEGACY;
+
+	/* Prefer PHY from devicetree - if not found, this is legacy */
+	if (of_property_present(dev->of_node, "phys"))
+		mtk_dp->legacy_regoff = 0;
+	else
+		mtk_dp->legacy_regoff = MTK_DP_TOP_OFFSET_LEGACY;
 
 	ret = mtk_dp_dt_parse(mtk_dp, pdev);
 	if (ret)
@@ -2872,9 +2899,18 @@ static int mtk_dp_probe(struct platform_device *pdev)
 					     "Failed to register audio driver\n");
 	}
 
-	ret = mtk_dp_register_phy(mtk_dp);
-	if (ret)
-		return ret;
+	if (!mtk_dp->legacy_regoff) {
+		mtk_dp->phy = devm_phy_get(dev, NULL);
+		if (IS_ERR(mtk_dp->phy))
+			return dev_err_probe(dev, PTR_ERR(mtk_dp->phy),
+					     "Failed to get phy\n");
+
+		mtk_dp->phy_dev = NULL;
+	} else {
+		ret = mtk_dp_register_phy(mtk_dp);
+		if (ret)
+			return ret;
+	}
 
 	mtk_dp->bridge.of_node = dev->of_node;
 	mtk_dp->bridge.type = mtk_dp->data->bridge_type;
-- 
2.54.0


