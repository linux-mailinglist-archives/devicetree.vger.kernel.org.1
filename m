Return-Path: <devicetree+bounces-136593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A70D8A059F4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58CF116150F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0743C1FFC78;
	Wed,  8 Jan 2025 11:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oKEr+h9J"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0D21FF7AC;
	Wed,  8 Jan 2025 11:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335728; cv=none; b=PyVdSNTj9QOIKKSOSwJ0JbrN+zwSNq/nXjxJC3z5kf1F3JAZqbtq2HR8H9UcTQp03i2NzcedxPPuE3a9z+Ygf3UFcsww6HefrycoYVH1kZjfVqT9SeN/n9AyTMM+rQ593Xa0Wg5Arcg605TfzI7H7tZEPwVXYVMxLJBPz4Im5+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335728; c=relaxed/simple;
	bh=BvXoGbFs5MCONXk3Q7M0t/JPZjjrEQmPZCAQM0/VvpM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uHPnyVW+3hyw24dm13+13RsifqvPxqj/40eytuDF71BcBX08ZrwpvpTZNjoVIAkJET6UEGamPtm+paOJIxdz/L6WG4TXppp9+tUtHqnnwHB7BcQOLyYUhRk+WyadxcxU1vZbnzkT1xA5xmj0GlWJBExk3TNsBzdGWFXMTSKoKCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oKEr+h9J; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335725;
	bh=BvXoGbFs5MCONXk3Q7M0t/JPZjjrEQmPZCAQM0/VvpM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oKEr+h9JMH4ZjaCh8XDkJcVeIVFfyJ5rUk6kSbJGRKid8nFGkrpdpJzOza3wBaC1b
	 2bx386FoE66yozi70nmJMb2ehELp7d0vnIpNi15IMPGtOr6+uKBk//hFzLxgOR/0id
	 gmwMuXgE//7sUWWbmE0LoiQZQx+X6Zo/Oi/Bz9xhyTI9CKcE6IABP7zoe/fTjxLD7s
	 VMZ8PqTG/dyYHsS2m0ANca70k+xYeOODh99fNfhyIAlJVBNwZzZcCl/cPJKdkqpcu2
	 JVfZss2zGLqwybhprFBOVYx/aA9XNPlgFXwAvcGN+048mFE9SuCNiW5PR3afHk20y/
	 U0fgs7T+scpOg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5DBF817E1578;
	Wed,  8 Jan 2025 12:28:44 +0100 (CET)
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
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com,
	ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v4 31/34] drm/mediatek: mtk_hdmi_common: Add OP_HDMI if helper funcs assigned
Date: Wed,  8 Jan 2025 12:27:41 +0100
Message-ID: <20250108112744.64686-32-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In preparation for adding the HDMI TX v2 driver, and to allow
a future modernization of the HDMI v1 one, perform changes
that enable the usage of the HDMI Helpers provided by DRM.

Check if the HDMI driver provides the function pointers to
hdmi_{clear,write}_infoframe used by the HDMI Helper API and,
if present, add DRM_BRIDGE_OP_HDMI to the drm_bridge ops,
enabling the drm API to register the bridge as HDMI and to use
the HDMI Helper functions.

If the hdmi_{write,clear}_infoframe pointers are not assigned,
vendor and product strings and HDMI helpers will not be used,
hence this commit brings no functional changes to drivers that
have not been refactored to use the new helpers.

This also means that, in the current state, there is effectively
no functional change to mtk_hdmi and its other components.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
index 7c7c50a478b8..b0d048a95a4a 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
@@ -409,6 +409,11 @@ struct mtk_hdmi *mtk_hdmi_common_probe(struct platform_device *pdev)
 	hdmi->bridge.of_node = pdev->dev.of_node;
 	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID
 			 | DRM_BRIDGE_OP_HPD;
+
+	if (ver_conf->bridge_funcs->hdmi_write_infoframe &&
+	    ver_conf->bridge_funcs->hdmi_clear_infoframe)
+		hdmi->bridge.ops |= DRM_BRIDGE_OP_HDMI;
+
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.ddc = hdmi->ddc_adpt;
 	hdmi->bridge.vendor = "MediaTek";
-- 
2.47.0


