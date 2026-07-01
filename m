Return-Path: <devicetree+bounces-318457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zh7EFjUHRWqM5QoAu9opvQ
	(envelope-from <devicetree+bounces-318457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9966ED489
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=KuWQiqXO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318457-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318457-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D644B30492E5
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E7C9495537;
	Wed,  1 Jul 2026 12:20:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8E1495508;
	Wed,  1 Jul 2026 12:20:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908417; cv=none; b=BN7ub6w+GxLJr3pd2kObTno172LqnaNvYd4RnGLXXntWm1p3zOlk1VftYh/v77PG9Z67siVnde02iII8OZs8QcKOsoqKojQBg4I5OYfslvQrdfajiEt3RW46DGw/c/rh6nJQTMfw61r3bvL5cg8avpcckV99EfZi+SR5hkVA04I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908417; c=relaxed/simple;
	bh=WveJIKcSDFtln6moBUm4mMfeMv6Y8I/JiesYCykNM8g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jFIGTeRqwqgRjF3MFu9wcpgTv7NE+iU2mHDabPqPCOOdJkC+o8rQ6EOw65Wg1HBZhMjcJ9MSYHJLEF4iAvMeHTZiLrizfz0bBfAbBRcdJHuxjJvUmQBSyc1Dd8eRGpimI++yvK1gs1kWH/H3CCFgr1mrjMBvUEGLaSg1Ohl59SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KuWQiqXO; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908413;
	bh=WveJIKcSDFtln6moBUm4mMfeMv6Y8I/JiesYCykNM8g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KuWQiqXO3Bo3bL3GfEx3ALn6r1FYE+70kyIXjMrLlJEKwrsXVgFkgXpix7MHSCW+7
	 1GINPA2qAKDJ9Wq0DD8z8UjczYeYu8sczvDAVgK6MJ2bBJU7thsYXSmPw+rgsvLwVD
	 3YLUra77S2Lwp9Vk6PfRexipL+2q+/QMJBI6NUjTZ78wU5ioClQTVX1jYsW96qvu18
	 KeXaGWTfw22bN6vSnub8paTUGwVjLnvA1Fs6s1tPJk+9J3fyqkWgdW7qaaDNPp+WnA
	 Gr3ATRPJUi5BRRYZBScXN+9psjzSqAcShbfzD1BHlm+i3+bYfeZXIehZnYmG0oG1u0
	 es5Li1MWMGsFA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 54C6D17E0D72;
	Wed,  1 Jul 2026 14:20:12 +0200 (CEST)
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
Subject: [PATCH 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
Date: Wed,  1 Jul 2026 14:19:58 +0200
Message-ID: <20260701122008.19509-3-angelogioacchino.delregno@collabora.com>
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
	TAGGED_FROM(0.00)[bounces-318457-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: EC9966ED489

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


