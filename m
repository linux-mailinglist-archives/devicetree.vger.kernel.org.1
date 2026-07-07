Return-Path: <devicetree+bounces-322177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +xLzCHIhTWpavgEAu9opvQ
	(envelope-from <devicetree+bounces-322177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:55:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD9071D8C8
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:55:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=Jh8D3xgY;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322177-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322177-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 92B2E3046643
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FCE430CDB;
	Tue,  7 Jul 2026 15:42:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C453E638D;
	Tue,  7 Jul 2026 15:42:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438974; cv=none; b=fYp6Rl4zzBl1dADqOO9Ux8kUZv07Sk+BkN98kk99JeMh8N0F6p2LI+eCR8aQEH5g0XbskUXuv4aTyvRgQP/7X+FzDuLN9ixHmb58MvUsjT7lh0kIFVdg26crlq0WZvqRl4OxsntvDgDPt51BrdtLQwy0OrGPLtepVrUns4AZcSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438974; c=relaxed/simple;
	bh=Fpr4J7bO1R1Pm+TZdFppZ1A0MM8X93iN5iTtvTrw/Ic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i5JrKkd/7W9y1CrEto02bGuVbiRML3psoievi/+hZXjXtms0ZHL1EvdfXWJC9u/3YK9Jf7VyMuJ01MdDqYxmUPEVIJmiHoukkujDneXHlBfLVFxJSzcL55dCHIdY9Xvo4vGu6fNfZObBR5TFgln3ZP1oIMU10WgWLfWjBxlZphE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Jh8D3xgY; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783438971;
	bh=Fpr4J7bO1R1Pm+TZdFppZ1A0MM8X93iN5iTtvTrw/Ic=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Jh8D3xgYIc+VGSEDYcKl3Lk3WAtanzraR8h0ySgEPIZpeebN6XEt/F6ZrgYQ2Y1R9
	 hTB4xAEk2pXh+DO/knv55dj3ZShHE/1jxHTcdwX2XDszULci60HV2NNnqC/LIQGVxb
	 LWIw7xNGIGCcpV00T/AKRb7wkX+ZwazeKQ+7xC1gPQGLFBh2Vjv8OAbnI5ZGAP1Y7w
	 gkorTDHHL/xuJFVpEnf53Sjsi8+SRVrOlsrqUKyQdIfzlSytAJsb1sk4y9niMu+V5p
	 2RtVJi3oZhbcYOE6rYtuDu5FceozG47wNIsAHYGl4NJC0svNfF+3rZbc8wd5YLJDwC
	 Cbf0Gt0YUUJwA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F172017E0E95;
	Tue, 07 Jul 2026 17:42:50 +0200 (CEST)
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
Subject: [PATCH v3 03/12] phy: phy-mtk-dp: Allow probing with devicetree match
Date: Tue,  7 Jul 2026 17:42:36 +0200
Message-ID: <20260707154245.198361-4-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322177-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECD9071D8C8

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
 drivers/phy/mediatek/phy-mtk-dp.c | 88 +++++++++++++++++++++++++++----
 1 file changed, 78 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index bf7b3a95e72d..d241004e2828 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -12,6 +12,7 @@
 #include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #define PHY_OFFSET			0x1000
@@ -79,6 +80,7 @@
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
 struct mtk_dp_phy {
+	struct device *dev;
 	struct regmap *regmap;
 };
 
@@ -160,43 +162,109 @@ static const struct phy_ops mtk_dp_phy_dev_ops = {
 	.owner = THIS_MODULE,
 };
 
+static void mtk_dp_phy_legacy_remove_lookup(void *data)
+{
+	struct phy *phy = data;
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+
+	phy_remove_lookup(phy, "dp", dev_name(dp_phy->dev));
+}
+
+static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct mtk_dp_phy *dp_phy)
+{
+	struct device *dev = &pdev->dev;
+	struct phy *phy;
+	int ret;
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
+	ret = phy_create_lookup(phy, "dp", dev_name(dev));
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, mtk_dp_phy_legacy_remove_lookup, phy);
+	if (ret)
+		return ret;
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
+	int ret;
 
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
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
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


