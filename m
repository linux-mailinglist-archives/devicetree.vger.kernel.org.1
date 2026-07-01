Return-Path: <devicetree+bounces-318490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uw+tMlwKRWqV5goAu9opvQ
	(envelope-from <devicetree+bounces-318490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:38:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A07C16ED6FB
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:38:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ocJoGaIM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318490-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318490-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B191307C3FB
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E40D48BD3E;
	Wed,  1 Jul 2026 12:21:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9724C0435;
	Wed,  1 Jul 2026 12:21:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908470; cv=none; b=fy89BLgmUHclP6+xmvDy6YwRk9lB3enME8MGvxQhHGe0EH4FheFQIJ3/nKwIPKv+pmVOfGydh9piv6gndBz1lsmMi6H1y99k0SIkXwzypMXv0h1swFWAVLbFw0xyfWfKVqIY3q3/6Xazkmvb9T8CVGduLqlfwoFt8sVWn79TTIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908470; c=relaxed/simple;
	bh=gcCOGWCtiQjkn/Cjq5l9iNxePEf+xSdyXx0qiipj9bo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kDu6P4jNdFc05ZRTmqJVvu0lm/Dd/SrmPgx0oP4B9uGgYxBRK5+k81zORUwRsqvxmZ9ohANsUKkSLsugK4Rfe3XIDbNl+J8G86idStI5KjMiK2csI8wIsyAYH48wzGL7HjfmoopQYAyOA4qJxKFR0CjDHade1UHbW/ylpn3MCpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ocJoGaIM; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908466;
	bh=gcCOGWCtiQjkn/Cjq5l9iNxePEf+xSdyXx0qiipj9bo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ocJoGaIMy03Ch2z8HPk0z8wYBTim3UYrCopjIhpdc7hI7VhA9nHBdbj02AJH148ng
	 e1iKXbTZ7PyDMDA+URErghDfnxJiE1GGZeeq8yfyWaTRK4MhovW7PUEkUQ7W+jwn2Y
	 xjn4m7bBqgsuIH+fIhQ+D+3eQ7gQmcA4W5PF0iiMPCkhqCIXGepfC7aZEaAT1uXyW2
	 NMJhpsB4xR9XPOayBAfUwfX+W3WkXCuGA7RM1DOtWHBovHuwmGlvUwvn9TmuSmFw9y
	 y+m7N+lb5NzRZuFgxr38FfpgAGLYQxBLkcbrFd6BZB2KaGe4c/duMqObc95xzihMeF
	 39og/sC5ma/hA==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EDDA617E0FAA;
	Wed,  1 Jul 2026 14:21:05 +0200 (CEST)
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
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 05/42] drm/mediatek: Rename all display component type to have DISP_ prefix
Date: Wed,  1 Jul 2026 14:20:20 +0200
Message-ID: <20260701122057.19648-6-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
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
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318490-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A07C16ED6FB

The mtk_ddp_comp_type enumeration will end up containing both the
Display Controller and Media Data Path Controller components: this
is because those can be interconnected together (as in, using MDP
components in Display Controller paths is possible!) and because
both MMSYS and MuteX are managing both of those in practically the
same way.

Rename all of the Display Controller related HW components in the
list to always have a "DISP_" prefix.
This includes components that are in the MDP Controller instead,
and the strategy here is for some of those to also have the same
DISP_ prefix, so that:
 - Display Controller specific components have a DISP_ prefix
   - Example: MTK_DISP_(NAME)
 - MDP Controller components that can be interconnected to the
   Display Controller will have both DISP_ and MDP_ prefixes
   - Example: MTK_DISP_MDP_(NAME)
 - MDP Controller components that are exclusive to MDP and can
   not be interconnected with Display Controller will only have
   an MDP_ prefix but not a DISP_ prefix
   - Example: MTK_MDP_(NAME).

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c | 28 +++++++++----------
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 36 ++++++++++++-------------
 include/linux/soc/mediatek/mtk-mmsys.h  |  6 ++---
 3 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index 94b356da6de7..a6c1815ffa39 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -423,9 +423,9 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_RDMA] = "rdma",
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DISP_WDMA] = "wdma",
-	[MTK_DP_INTF] = "dp-intf",
-	[MTK_DPI] = "dpi",
-	[MTK_DSI] = "dsi",
+	[MTK_DISP_DP_INTF] = "dp-intf",
+	[MTK_DISP_DPI] = "dpi",
+	[MTK_DISP_DSI] = "dsi",
 };
 
 struct mtk_ddp_comp_match {
@@ -442,17 +442,17 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_COLOR0]		= { MTK_DISP_COLOR,		0, &ddp_color },
 	[DDP_COMPONENT_COLOR1]		= { MTK_DISP_COLOR,		1, &ddp_color },
 	[DDP_COMPONENT_DITHER0]		= { MTK_DISP_DITHER,		0, &ddp_dither },
-	[DDP_COMPONENT_DP_INTF0]	= { MTK_DP_INTF,		0, &ddp_dpi },
-	[DDP_COMPONENT_DP_INTF1]	= { MTK_DP_INTF,		1, &ddp_dpi },
-	[DDP_COMPONENT_DPI0]		= { MTK_DPI,			0, &ddp_dpi },
-	[DDP_COMPONENT_DPI1]		= { MTK_DPI,			1, &ddp_dpi },
+	[DDP_COMPONENT_DP_INTF0]	= { MTK_DISP_DP_INTF,		0, &ddp_dpi },
+	[DDP_COMPONENT_DP_INTF1]	= { MTK_DISP_DP_INTF,		1, &ddp_dpi },
+	[DDP_COMPONENT_DPI0]		= { MTK_DISP_DPI,		0, &ddp_dpi },
+	[DDP_COMPONENT_DPI1]		= { MTK_DISP_DPI,		1, &ddp_dpi },
 	[DDP_COMPONENT_DRM_OVL_ADAPTOR]	= { MTK_DISP_OVL_ADAPTOR,	0, &ddp_ovl_adaptor },
 	[DDP_COMPONENT_DSC0]		= { MTK_DISP_DSC,		0, &ddp_dsc },
 	[DDP_COMPONENT_DSC1]		= { MTK_DISP_DSC,		1, &ddp_dsc },
-	[DDP_COMPONENT_DSI0]		= { MTK_DSI,			0, &ddp_dsi },
-	[DDP_COMPONENT_DSI1]		= { MTK_DSI,			1, &ddp_dsi },
-	[DDP_COMPONENT_DSI2]		= { MTK_DSI,			2, &ddp_dsi },
-	[DDP_COMPONENT_DSI3]		= { MTK_DSI,			3, &ddp_dsi },
+	[DDP_COMPONENT_DSI0]		= { MTK_DISP_DSI,		0, &ddp_dsi },
+	[DDP_COMPONENT_DSI1]		= { MTK_DISP_DSI,		1, &ddp_dsi },
+	[DDP_COMPONENT_DSI2]		= { MTK_DISP_DSI,		2, &ddp_dsi },
+	[DDP_COMPONENT_DSI3]		= { MTK_DISP_DSI,		3, &ddp_dsi },
 	[DDP_COMPONENT_GAMMA]		= { MTK_DISP_GAMMA,		0, &ddp_gamma },
 	[DDP_COMPONENT_MERGE0]		= { MTK_DISP_MERGE,		0, &ddp_merge },
 	[DDP_COMPONENT_MERGE1]		= { MTK_DISP_MERGE,		1, &ddp_merge },
@@ -659,9 +659,9 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node, struct mtk_d
 	    type == MTK_DISP_PWM ||
 	    type == MTK_DISP_RDMA ||
 	    type == MTK_DISP_WDMA ||
-	    type == MTK_DPI ||
-	    type == MTK_DP_INTF ||
-	    type == MTK_DSI)
+	    type == MTK_DISP_DPI ||
+	    type == MTK_DISP_DP_INTF ||
+	    type == MTK_DISP_DSI)
 		return 0;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index e54f0654f2f9..9c6dfc1e384b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -801,35 +801,35 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	{ .compatible = "mediatek,mt8173-disp-wdma",
 	  .data = (void *)MTK_DISP_WDMA },
 	{ .compatible = "mediatek,mt2701-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt8167-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8173-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt8183-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt8186-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt8188-dp-intf",
-	  .data = (void *)MTK_DP_INTF },
+	  .data = (void *)MTK_DISP_DP_INTF },
 	{ .compatible = "mediatek,mt8192-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt8195-dp-intf",
-	  .data = (void *)MTK_DP_INTF },
+	  .data = (void *)MTK_DISP_DP_INTF },
 	{ .compatible = "mediatek,mt8195-dpi",
-	  .data = (void *)MTK_DPI },
+	  .data = (void *)MTK_DISP_DPI },
 	{ .compatible = "mediatek,mt2701-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8173-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8183-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8186-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8188-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ .compatible = "mediatek,mt8196-dsi",
-	  .data = (void *)MTK_DSI },
+	  .data = (void *)MTK_DISP_DSI },
 	{ }
 };
 
@@ -1176,9 +1176,9 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		    comp_type == MTK_DISP_OVL_ADAPTOR ||
 		    comp_type == MTK_DISP_RDMA ||
 		    comp_type == MTK_DISP_WDMA ||
-		    comp_type == MTK_DP_INTF ||
-		    comp_type == MTK_DPI ||
-		    comp_type == MTK_DSI) {
+		    comp_type == MTK_DISP_DP_INTF ||
+		    comp_type == MTK_DISP_DPI ||
+		    comp_type == MTK_DISP_DSI) {
 			dev_info(dev, "Adding component match for %pOF\n",
 				 node);
 			drm_of_component_match_add(dev, &match, component_compare_of,
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index 3ddfdeac658d..bbdd0b01927d 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -111,9 +111,9 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_MDP_RDMA,
 
 	/* Keep Display outputs at the end for readability */
-	MTK_DPI,
-	MTK_DP_INTF,
-	MTK_DSI,
+	MTK_DISP_DPI,
+	MTK_DISP_DP_INTF,
+	MTK_DISP_DSI,
 
 	MTK_DDP_COMP_TYPE_MAX
 };
-- 
2.54.0


