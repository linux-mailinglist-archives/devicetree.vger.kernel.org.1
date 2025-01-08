Return-Path: <devicetree+bounces-136595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1317A059FD
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:34:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69B6A3A6A9B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92401200BA8;
	Wed,  8 Jan 2025 11:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="U7J0Je0w"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726A11FFC6B;
	Wed,  8 Jan 2025 11:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335732; cv=none; b=WTt4/ubxY/VVXwGYke6D9ou4aHz4nPdvi5+QTLS2pANxAo0Pl1eWssvbRGqdlG6F+mvzObNpQLOdGcBnh9JY/WIiySNgBmcwDbwZKR/jj/LhWXdUmW1H5Vt+JHj6Tg8rK7NZQ9sxXS2yi/Frt1wrAnu9ucEwgZXcTr2Aia6B8qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335732; c=relaxed/simple;
	bh=bW2Q6udBnRutTIp7P/AXDgwZQ5xd7Fw9EAFVpMVD/h8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o59nfkobGROBlb22W91VxBblryBjzI2K99svdLZpfAULxwcFHtwOR2flhdyFF+ciwlYsRZ2/e9i14xhbUcsUqL1GXN8m7H/1xgPKtN1PJoVforKBizuSQcsyz44hVGhh0ig88cHneBp8+GI4BpunLvp24qc50ovog/Rod0xrcjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=U7J0Je0w; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335728;
	bh=bW2Q6udBnRutTIp7P/AXDgwZQ5xd7Fw9EAFVpMVD/h8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U7J0Je0wR0Zfag4/Jukwcuaeotpoc4pFYpgLl76poBJii2yPzocqc5SpEg3QzFLZ8
	 Fe64fr4l0Mlu5hz1OPfLConW6Qeu1Pg02zIiquCv36Wlfg6MqMzGiGgu9CXx9hEJ2C
	 GGUprBfI1uYM/V2JvsMHaZYjbyuX94oj4Hkl8qdlmSztyvufu++wsRd54Dc+QoAdJ0
	 h9hGuWX0g2Edr2HkeZvTfeAF5VbZEQ0ntCE2faX3QCXZYPjS97Jdg3fnIMdxFsY4mx
	 yT0yiX2PVerLtXShH5VkS/H2Y+DHShlP0qmhc/Olg59Yomr/65hDqrL0WrGbkW1wIm
	 Rq3EEkI0iHNvg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C44C17E157C;
	Wed,  8 Jan 2025 12:28:47 +0100 (CET)
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
Subject: [PATCH v4 33/34] drm/mediatek: mtk_hdmi_common: Add var to enable interlaced modes
Date: Wed,  8 Jan 2025 12:27:43 +0100
Message-ID: <20250108112744.64686-34-angelogioacchino.delregno@collabora.com>
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

Add an interlace_allowed bool member to struct mtk_hdmi_ver_conf
which will be used to signal whether interlaced modes are supported
by the bridge (in our case, the HDMI IP), and enable it for HDMIv2.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 1 +
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h | 1 +
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c     | 3 ++-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
index 1804fe3f986c..be9b7a8e4a87 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
@@ -428,6 +428,7 @@ struct mtk_hdmi *mtk_hdmi_common_probe(struct platform_device *pdev)
 	hdmi->bridge.ddc = hdmi->ddc_adpt;
 	hdmi->bridge.vendor = "MediaTek";
 	hdmi->bridge.product = "On-Chip HDMI";
+	hdmi->bridge.interlace_allowed = ver_conf->interlace_allowed;
 
 	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
 	if (ret)
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
index e74fe1371324..de5e064585f8 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
@@ -137,6 +137,7 @@ struct mtk_hdmi_ver_conf {
 	const struct hdmi_codec_ops *codec_ops;
 	const char * const *mtk_hdmi_clock_names;
 	int num_clocks;
+	bool interlace_allowed;
 };
 
 struct mtk_hdmi_conf {
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
index 4cecfef1466b..8841fa4e476a 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
@@ -1301,7 +1301,8 @@ static const struct mtk_hdmi_ver_conf mtk_hdmi_conf_v2 = {
 	.bridge_funcs = &mtk_v2_hdmi_bridge_funcs,
 	.codec_ops = &mtk_hdmi_v2_audio_codec_ops,
 	.mtk_hdmi_clock_names = mtk_hdmi_v2_clk_names,
-	.num_clocks = MTK_HDMI_V2_CLK_COUNT
+	.num_clocks = MTK_HDMI_V2_CLK_COUNT,
+	.interlace_allowed = true
 };
 
 static const struct mtk_hdmi_conf mtk_hdmi_conf_mt8188 = {
-- 
2.47.0


