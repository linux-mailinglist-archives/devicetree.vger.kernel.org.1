Return-Path: <devicetree+bounces-136582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 983AEA059DE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E1737A2345
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9F5C1FE46D;
	Wed,  8 Jan 2025 11:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LkI8gTgc"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D031FE456;
	Wed,  8 Jan 2025 11:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335711; cv=none; b=E9BnfswdYMh12az0dgImA6XV7VDF9aq8nVCfxWVN6iujKtp0Z6koHDaxl+rJvcu2qKm9CUKeP3phb+8TMcBZ7BPAJHlBoQg8TtClHiJtG1HKOhDDgI+kIJPDU7mulnPLmqtZuY6U+IucCBv1lsj6SKSF1ciNnYO4TL5P46dq530=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335711; c=relaxed/simple;
	bh=cISJnH6KQK8yqtXXOBp3N6WuuDpqVCNgWs+Yc+My1ms=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sJGvFCr6irguUrJ9Lmc3kalfUCs91mORVWWFxl9BygK4IMYfiInptTX/8UT8qHBAzvHHw2+8g8/x/bl+INMLdCC+pAApaNs4QR1xn+NL3gCWKACfxgXpk1B1znVwzJ2dW0SvJCkNYe0O0dQRwrj788MHchsSeNK10A0j0x0XTXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LkI8gTgc; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335707;
	bh=cISJnH6KQK8yqtXXOBp3N6WuuDpqVCNgWs+Yc+My1ms=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LkI8gTgcTGa4BqbwiyaBSkqaXGnXOMv6Z6vQl04WrlySNf+wfzKVsQqfd+TTRZlOu
	 EkuoVe8KEKyxbcWY+E0aMRT1wO8wK1z1vETItXUOogYYJ3cbe5hIfHh6uUK7aWCBYH
	 zwFeQc/e61XUN5Zd008gMXSs5h/VYoOMis4h8wPBAOklHquBpUwohruPoK23dk4KSx
	 D2Xsz7xPjOOdCJtJ0XEW5PZmxDtr6oU4oBvCNOA1Uj5S1TwdCXB8Ee7KFr+Hauud0l
	 Lt2B4bg6PT4u3193rQ8ktKt+DF0w0e4DFHHpxHrUjbrcMM36ShmEQeY53vQF8KRcax
	 8DXju5jqoiKBg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0896C17E1587;
	Wed,  8 Jan 2025 12:28:25 +0100 (CET)
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
Subject: [PATCH v4 19/34] drm/mediatek: mtk_hdmi: Move vendor/product strings to drm_bridge
Date: Wed,  8 Jan 2025 12:27:29 +0100
Message-ID: <20250108112744.64686-20-angelogioacchino.delregno@collabora.com>
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

Move the vendor and product strings to the appropriate entries
of struct drm_bridge and use that in mtk_hdmi_setup_spd_infoframe
instead of having the same as function parameters.

While at it, also beautify the strings, setting them to read
"MediaTek On-Chip HDMI".

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index bde7c1b068af..cde5f1f7e9e0 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -952,15 +952,14 @@ static int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi,
 	return 0;
 }
 
-static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
-					const char *vendor,
-					const char *product)
+static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi)
 {
+	struct drm_bridge *bridge = &hdmi->bridge;
 	struct hdmi_spd_infoframe frame;
 	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_SPD_INFOFRAME_SIZE];
 	ssize_t err;
 
-	err = hdmi_spd_infoframe_init(&frame, vendor, product);
+	err = hdmi_spd_infoframe_init(&frame, bridge->vendor, bridge->product);
 	if (err < 0) {
 		dev_err(hdmi->dev, "Failed to initialize SPD infoframe: %zd\n",
 			err);
@@ -1328,7 +1327,7 @@ static void mtk_hdmi_send_infoframe(struct mtk_hdmi *hdmi,
 {
 	mtk_hdmi_setup_audio_infoframe(hdmi);
 	mtk_hdmi_setup_avi_infoframe(hdmi, mode);
-	mtk_hdmi_setup_spd_infoframe(hdmi, "mediatek", "On-chip HDMI");
+	mtk_hdmi_setup_spd_infoframe(hdmi);
 	if (mode->flags & DRM_MODE_FLAG_3D_MASK)
 		mtk_hdmi_setup_vendor_specific_infoframe(hdmi, mode);
 }
@@ -1707,6 +1706,8 @@ static int mtk_hdmi_probe(struct platform_device *pdev)
 	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID
 			 | DRM_BRIDGE_OP_HPD;
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
+	hdmi->bridge.vendor = "MediaTek";
+	hdmi->bridge.product = "On-Chip HDMI";
 	drm_bridge_add(&hdmi->bridge);
 
 	ret = mtk_hdmi_clk_enable_audio(hdmi);
-- 
2.47.0


