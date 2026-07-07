Return-Path: <devicetree+bounces-322120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P2KGOZsOTWpjuQEAu9opvQ
	(envelope-from <devicetree+bounces-322120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:35:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3876471CB13
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:35:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=P3rCZigG;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322120-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322120-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D7FE32AA67B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7491742E8D8;
	Tue,  7 Jul 2026 14:19:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C6842379C;
	Tue,  7 Jul 2026 14:19:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433986; cv=none; b=AcE/pVpC5t23vUacCLG2hp3g4y9isHmcdJUZZVZ4l0jAuB/Nc5Vev7cjLisQJNMiM7ZXRIlGqIr05qNNSwwTpT4jMFdawuuPPi/MAyL6GXRK6yoOmt589aWLTP8a80MVwfVt9Z87QbRcectsJeDqI5kIx+cxlWrl2/bOwuWZAR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433986; c=relaxed/simple;
	bh=WveJIKcSDFtln6moBUm4mMfeMv6Y8I/JiesYCykNM8g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ralcaxs932kqffpOWg6AXJfsRBOp3TU9iv9sC+ANpZkyz8jMNKk+A4Nlf5LrR/5PUZ6hGKNDJ4+BlKW9WkPB9NaVWz0YuhDh1jxztpyRoekcFxIo2bKHtpnoKfAHDiKanuFdP0JWe6Ys1tCJYuc6M1jLe3L82a492XGbJ3eFGyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=P3rCZigG; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783433983;
	bh=WveJIKcSDFtln6moBUm4mMfeMv6Y8I/JiesYCykNM8g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=P3rCZigGNePOeVqgXIfA27gU7VeZpSthMnDYkEbWFAuhC7/2UvIWyq0dXHDtST9qv
	 DtDeWyQlcUD7f4CB6f81QCUbzrzfrsWnL9mUaPZlRzSr82Te9B+5PApGOza9A9CR7o
	 1kOqZ3+difP6MCv+Lkx+/GKjnrpqcJBadMxTJkHLPaCoZCbJrCzM3TRxAOmsdIj9rO
	 IvFuEhKiTML0w/SAqYDXTAk3ga0uw88gNXdeMuGpTtyuwsFDLbHu8rNJMFdnNPkRqc
	 3jmA8YYVogqR8zBXyM46p1Moy3GAjGOxmrBTDTD5F+xhTABTaPnkMYzpPp78bHq7hd
	 irAHCGLAfAWrA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C4FB417E018C;
	Tue, 07 Jul 2026 16:19:42 +0200 (CEST)
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
Subject: [PATCH v2 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
Date: Tue,  7 Jul 2026 16:19:21 +0200
Message-ID: <20260707141931.191172-3-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,pengutronix.de,mediatek.com,lists.infradead.org,vger.kernel.org,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-322120-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3876471CB13

In preparation to perform further cleanups and to extend the
driver to support more SoCs, rename the `regs` member to `regmap`
to improve readability, as this is a common name across many
kernel drivers for a struct regmap.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index d7024a144335..bf7b3a95e72d 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -79,7 +79,7 @@
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
 struct mtk_dp_phy {
-	struct regmap *regs;
+	struct regmap *regmap;
 };
 
 static int mtk_dp_phy_init(struct phy *phy)
@@ -94,13 +94,13 @@ static int mtk_dp_phy_init(struct phy *phy)
 		DRIVING_PARAM_8_DEFAULT
 	};
 
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE0_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE0_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE1_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE1_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE2_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE2_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE3_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE3_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
 
 	return 0;
@@ -131,10 +131,10 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 			val = BIT_RATE_HBR3;
 			break;
 		}
-		regmap_write(dp_phy->regs, MTK_DP_PHY_DIG_BIT_RATE, val);
+		regmap_write(dp_phy->regmap, MTK_DP_PHY_DIG_BIT_RATE, val);
 	}
 
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_PLL_CTL_1,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_PLL_CTL_1,
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
 
 	return 0;
@@ -144,10 +144,10 @@ static int mtk_dp_phy_reset(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
 			   DP_GLB_SW_RST_PHYD, 0);
 	usleep_range(50, 200);
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
 			   DP_GLB_SW_RST_PHYD, 1);
 
 	return 0;
@@ -176,7 +176,7 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
 	if (!dp_phy)
 		return -ENOMEM;
 
-	dp_phy->regs = regs;
+	dp_phy->regmap = regs;
 	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
 	if (IS_ERR(phy))
 		return dev_err_probe(dev, PTR_ERR(phy),
-- 
2.54.0


