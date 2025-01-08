Return-Path: <devicetree+bounces-136587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DE0A059E9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18586164EE1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFD91FF1D2;
	Wed,  8 Jan 2025 11:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oF18cXjP"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8791FF1A3;
	Wed,  8 Jan 2025 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335718; cv=none; b=d0wjw82nVAYQFRT93ifjXnB92R9EbaMl3ENdOYnW04mKVfFXyXf8iwYSVM7qXW28fX7E2RdgcXofn/RafLG9gGbJZbP15Fsfz0opYOqJbG5s1gsd2FgUA5lRRXDkHOUGxYChOGliEtvai9HNcqiXuL7kRTH6p3cgbaZNjcT7z/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335718; c=relaxed/simple;
	bh=WfGh8V4ZTmQDPQ/inKwv9tchKgtASbWDAHeucVmHQNs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T5SQvl2JfrkPrJdHH8/r/hDyYBmDeH6nOpwGE68gCRYubfx5XbnmnV+h22fsPHpSaP09va5bY9pcrVcipti5eNEowl9OGk97XENLA1R0hhkaU9WtzGubr78p+nBRKuZ2xXbW3zF9G0q7U4Qn1fd/uaMLMUggzN1zSRJbs4PDlcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oF18cXjP; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335715;
	bh=WfGh8V4ZTmQDPQ/inKwv9tchKgtASbWDAHeucVmHQNs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oF18cXjPWjpmiV0rvu1m6Cy5Gh+JOVgYZwn/5kI097BwByrWt6m6GLOqMyW/+8S9/
	 yI8rDI8Lq9Nt1V6Fx//0RoYssjwZYFB7WasAbXQ93ugHZvIo1/G0tyq238bDzAyhcH
	 juWALk0nsgcOFxbejxkh5bAujv6ZMeTGv1C4NVwKNhYfoaiEWK+6/aLJUCt9Kpb7zZ
	 HbKpKxCWo/Qc0q+uABxTX5D1NoZzJLCrL7nEJyH87X3R1lSF3SfQaqQR22NGhMg0TC
	 RK2igw5+jAQwZH0uFt/Yp6+xOBrX5ceaUxuVjuoYxUFIC+3fvpgZRO4i2QMZpOGKAL
	 zw+HhPeSPCfUg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A6DD117E156C;
	Wed,  8 Jan 2025 12:28:33 +0100 (CET)
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
Subject: [PATCH v4 24/34] drm/mediatek: mtk_hdmi: Use devm managed version of drm_bridge_add
Date: Wed,  8 Jan 2025 12:27:34 +0100
Message-ID: <20250108112744.64686-25-angelogioacchino.delregno@collabora.com>
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

Simplify the probe/remove functions by using devm_drm_bridge_add()
as now there is no more need to manually remove the bridge.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index cc75f9caabc5..772032b59ef0 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1672,14 +1672,15 @@ static int mtk_hdmi_probe(struct platform_device *pdev)
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "MediaTek";
 	hdmi->bridge.product = "On-Chip HDMI";
-	drm_bridge_add(&hdmi->bridge);
+
+	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add bridge\n");
 
 	ret = mtk_hdmi_clk_enable_audio(hdmi);
-	if (ret) {
-		drm_bridge_remove(&hdmi->bridge);
+	if (ret)
 		return dev_err_probe(dev, ret,
 				     "Failed to enable audio clocks\n");
-	}
 
 	return 0;
 }
@@ -1688,7 +1689,6 @@ static void mtk_hdmi_remove(struct platform_device *pdev)
 {
 	struct mtk_hdmi *hdmi = platform_get_drvdata(pdev);
 
-	drm_bridge_remove(&hdmi->bridge);
 	mtk_hdmi_clk_disable_audio(hdmi);
 }
 
-- 
2.47.0


