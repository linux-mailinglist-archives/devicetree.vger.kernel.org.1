Return-Path: <devicetree+bounces-318456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J0+7NfwIRWon5goAu9opvQ
	(envelope-from <devicetree+bounces-318456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:33:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E0F6ED61A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:33:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=AwzCr+h4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318456-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318456-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B1E631D0AD9
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA297495530;
	Wed,  1 Jul 2026 12:20:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A89495517;
	Wed,  1 Jul 2026 12:20:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908416; cv=none; b=qs4Bqi5HT+GLbzIM1EWJv594DzkZ379/4kxxi4Fr0Co+ruuT/7MQR5YWZsTKG3i6LS7QVKkmeQPC5HpDWQmDgy56GhekjX4N1Haqj43YRH7THufnbtVJswRAzl8s0hDT1gHeEZDdCXoG+WTsDY0C1tAUOTjqdNYV5qS/NMY0JWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908416; c=relaxed/simple;
	bh=drPuGk1RrigxZ+IaT2E5KeHFHxa9PckPt6j7NykPerI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gQBwnnnw+qdktvCw9iuXUjS1FROiZIZ/XmvUMhdDNqeBYjjU0lLWUUxCrzsAvZA44svgKr+2+4xR8ujS7c6r6kp9nN/Unob4OI6vs36iBC7zp/KNNdG4dVW38N1P6oancZXmZ7jVB5gfq7A8grQwxU9dMVQ4NIC2eVZuQZTYFGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AwzCr+h4; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908413;
	bh=drPuGk1RrigxZ+IaT2E5KeHFHxa9PckPt6j7NykPerI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AwzCr+h4AjkUG7277e+JQ1BirFKqAHFrkvtu6hkXO4nc5pwcIac5HTfk51kaEhxVp
	 N1k34nfU9MelEha0ESjmGdMlrArC6bVkvLgdPn3otHxKYfvxsQKiKi3t59uVDHPkFX
	 EwOJrhp1Hs+jLWAeGJMTMPRBUJfOgnQhdpeofw4CKReIm1BUVxI6fj3Vu6gpa9w5ws
	 OMRhut6WqnzkpsIgueoVtvnB4NY1vqucMCFa3eww1bdhV75jYtVxwJLQuSCSgnB1s4
	 7VGW+ufkfIb/cszTNSq7lsZKSYiXmX8aa+EwSGM9qyD8awnpPdXAk3OyUUTwe//GIi
	 Hv7THpEDcG9UQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3579C17E0F44;
	Wed,  1 Jul 2026 14:20:13 +0200 (CEST)
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
Subject: [PATCH 03/12] phy: phy-mtk-dp: Allow probing with devicetree match
Date: Wed,  1 Jul 2026 14:19:59 +0200
Message-ID: <20260701122008.19509-4-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-318456-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36E0F6ED61A

Make it possible to decouple the registration of the DisplayPort
PHY driver from the DisplayPort IP driver by adding a devicetree
match to probe the PHY, registering an OF PHY provider and this
device's own MMIO regmap - if, and only if, this PHY driver was
registered with an OF match.

In order to retain compatibility with older devicetrees that are
not declaring the DisplayPort PHY as a separate node, the legacy
code was moved in a `mtk_dp_phy_legacy_probe()` function, which
gets called if the driver was registered by the DisplayPort one.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 70 ++++++++++++++++++++++++++-----
 1 file changed, 60 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index bf7b3a95e72d..98e05fe05ce3 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -79,6 +79,7 @@
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
 struct mtk_dp_phy {
+	struct device *dev;
 	struct regmap *regmap;
 };
 
@@ -160,43 +161,92 @@ static const struct phy_ops mtk_dp_phy_dev_ops = {
 	.owner = THIS_MODULE,
 };
 
+static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct mtk_dp_phy *dp_phy)
+{
+	struct device *dev = &pdev->dev;
+	struct phy *phy;
+
+	dp_phy->regmap = *(struct regmap **)dev->platform_data;
+	if (!dp_phy->regmap)
+		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
+
+	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy),
+				     "Failed to create DP PHY\n");
+
+	phy_set_drvdata(phy, dp_phy);
+	phy_create_lookup(phy, "dp", dev_name(dev));
+
+	return 0;
+}
+
+static const struct regmap_config mtk_dp_phy_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.disable_locking = true,
+};
+
 static int mtk_dp_phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
 	struct mtk_dp_phy *dp_phy;
+	void __iomem *base;
 	struct phy *phy;
-	struct regmap *regs;
-
-	regs = *(struct regmap **)dev->platform_data;
-	if (!regs)
-		return dev_err_probe(dev, -EINVAL,
-				     "No data passed, requires struct regmap**\n");
 
 	dp_phy = devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
 	if (!dp_phy)
 		return -ENOMEM;
 
-	dp_phy->regmap = regs;
+	dp_phy->dev = dev;
+
+	/* If there's no devicetree, go for legacy pdev probe */
+	if (!dev->of_node)
+		return mtk_dp_phy_legacy_probe(pdev, dp_phy);
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	dp_phy->regmap = devm_regmap_init_mmio(dev, base, &mtk_dp_phy_regmap_cfg);
+	if (IS_ERR(dp_phy->regmap))
+		return PTR_ERR(dp_phy->regmap);
+
 	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
 	if (IS_ERR(phy))
 		return dev_err_probe(dev, PTR_ERR(phy),
 				     "Failed to create DP PHY\n");
 
 	phy_set_drvdata(phy, dp_phy);
-	if (!dev->of_node)
-		phy_create_lookup(phy, "dp", dev_name(dev));
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return PTR_ERR(provider);
+
+	pm_runtime_enable(dev);
+	pm_runtime_get_sync(dev);
 
 	return 0;
 }
 
+static const struct of_device_id mtk_dp_phy_of_match[] = {
+	{ .compatible = "mediatek,mt8195-dp-phy" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mtk_dp_phy_of_match);
+
 static struct platform_driver mtk_dp_phy_driver = {
 	.probe = mtk_dp_phy_probe,
 	.driver = {
 		.name = "mediatek-dp-phy",
+		.of_match_table = mtk_dp_phy_of_match,
 	},
 };
 module_platform_driver(mtk_dp_phy_driver);
 
+MODULE_AUTHOR("AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>");
 MODULE_AUTHOR("Markus Schneider-Pargmann <msp@baylibre.com>");
-MODULE_DESCRIPTION("MediaTek DP PHY Driver");
+MODULE_DESCRIPTION("MediaTek DisplayPort PHY Driver");
 MODULE_LICENSE("GPL");
-- 
2.54.0


