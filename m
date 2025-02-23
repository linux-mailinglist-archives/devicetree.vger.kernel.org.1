Return-Path: <devicetree+bounces-149939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2815DA40DA6
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 10:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07B081778D3
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 09:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075BD204684;
	Sun, 23 Feb 2025 09:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FnlslSkN"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1792202F60;
	Sun, 23 Feb 2025 09:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740303165; cv=none; b=L2MCAAk+GLqnUbq+uU0K0oJbjHgsK7Mf65SZc2+FHvRSvkYnHa2zk2fy7qjLlteUY5Of7zPr6sBdrDIHq/RwbV3f68iJDBBwVAjYxY3IgyfMy4ocSOr4bWoHm7t/WCrTDnQhJ3QheHi8Oi+NjscPQKHIPMI7arIx9XcZq8VDbrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740303165; c=relaxed/simple;
	bh=PEU6ikhVTWTxbi9wgL9WnhXL5oGGC62yON8INrvf3aM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d/MTAH8hlWBRq5Ha2GhC1LtznrkCwYU1uMJLEoxmD3QkuW1qKQXr5zfUh/4CGllUMbUth+CIzhguWdZBmX8o3TCeHqBAE0/gx/FGiHT/6ZrcVZy1ZKu00/PNLGHWOudPwzL4VkUanysv8dgLK/qq02R1l6XZvxE2905zZSxH0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FnlslSkN; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740303155;
	bh=PEU6ikhVTWTxbi9wgL9WnhXL5oGGC62yON8INrvf3aM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FnlslSkNQOU8Cce7Q5/1VCuW0wNh42pLw4bcbsiiBOCfhlruauhv1fVOIjCWcYEfE
	 wLgYR7jOmQZ1EUzTGTaXFxT8jqLpjcAwPVKBXE7wnAplFlxBBKB9fouqruTPRbBOJa
	 I7Wlg3uOPNMXPMv+3ujzFY5cy53sVPvdrwUTQ39BehSDqumRCExLI5YaUlMpVpOzov
	 /rdNkU4dwTUVWdZtm83BwIWLCd7LZPM0woTihwRRFQPAtKEG9TAwRHymN5pgK7gfeK
	 dpescf6Ky3S1aMl55ZIr9rQtnTQ8oEQZtMfL9wWw7OJHfKjOAL2HZ59UV+K0+ZDbLb
	 ZHpCxcW8ViYBA==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 9455317E087E;
	Sun, 23 Feb 2025 10:32:35 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 23 Feb 2025 11:31:38 +0200
Subject: [PATCH v2 2/5] drm/rockchip: vop2: Consistently use
 dev_err_probe()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250223-vop2-hdmi1-disp-modes-v2-2-f4cec5e06fbe@collabora.com>
References: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
In-Reply-To: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2

Replace drm_err() calls in vop2_bind() and vop2_create_crtcs() with
dev_err_probe(), to simplify error handling and improve consistency.

Additionally, ensure the already existing dev_err_probe() invocations
pass drm->dev instead of dev as their first argument, so that we get the
actual reason in case of -EPROBE_DEFER errors:

  platform display-subsystem: deferred probe pending: (reason unknown)
    vs.
  platform display-subsystem: deferred probe pending: rockchip-drm: <actual reason>

While at it, add the missing '\n' to some of the message strings.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 83 +++++++++++++---------------
 1 file changed, 37 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 14e039e9143ab855f32c392c5b097b97bcba70b8..7b893b4447b6015c440790614c1fdeba967e8395 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -3273,10 +3273,9 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 
 		snprintf(dclk_name, sizeof(dclk_name), "dclk_vp%d", vp->id);
 		vp->dclk = devm_clk_get(vop2->dev, dclk_name);
-		if (IS_ERR(vp->dclk)) {
-			drm_err(vop2->drm, "failed to get %s\n", dclk_name);
-			return PTR_ERR(vp->dclk);
-		}
+		if (IS_ERR(vp->dclk))
+			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk),
+					     "failed to get %s\n", dclk_name);
 
 		np = of_graph_get_remote_node(dev->of_node, i, -1);
 		if (!np) {
@@ -3286,11 +3285,9 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		of_node_put(np);
 
 		port = of_graph_get_port_by_id(dev->of_node, i);
-		if (!port) {
-			drm_err(vop2->drm, "no port node found for video_port%d\n", i);
-			return -ENOENT;
-		}
-
+		if (!port)
+			return dev_err_probe(drm->dev, -ENOENT,
+					     "no port node found for video_port%d\n", i);
 		vp->crtc.port = port;
 		nvps++;
 	}
@@ -3330,11 +3327,9 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 			possible_crtcs = (1 << nvps) - 1;
 
 		ret = vop2_plane_init(vop2, win, possible_crtcs);
-		if (ret) {
-			drm_err(vop2->drm, "failed to init plane %s: %d\n",
-				win->data->name, ret);
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(drm->dev, ret, "failed to init plane %s\n",
+					     win->data->name);
 	}
 
 	for (i = 0; i < vop2_data->nr_vps; i++) {
@@ -3348,10 +3343,9 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 		ret = drm_crtc_init_with_planes(drm, &vp->crtc, plane, NULL,
 						&vop2_crtc_funcs,
 						"video_port%d", vp->id);
-		if (ret) {
-			drm_err(vop2->drm, "crtc init for video_port%d failed\n", i);
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(drm->dev, ret,
+					     "crtc init for video_port%d failed\n", i);
 
 		drm_crtc_helper_add(&vp->crtc, &vop2_crtc_helper_funcs);
 		if (vop2->lut_regs) {
@@ -3678,10 +3672,9 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	dev_set_drvdata(dev, vop2);
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vop");
-	if (!res) {
-		drm_err(vop2->drm, "failed to get vop2 register byname\n");
-		return -EINVAL;
-	}
+	if (!res)
+		return dev_err_probe(drm->dev, -EINVAL,
+				     "failed to get vop2 register byname\n");
 
 	vop2->res = res;
 	vop2->regs = devm_ioremap_resource(dev, res);
@@ -3706,50 +3699,50 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	if (vop2_data->feature & VOP2_FEATURE_HAS_SYS_GRF) {
 		vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
 		if (IS_ERR(vop2->sys_grf))
-			return dev_err_probe(dev, PTR_ERR(vop2->sys_grf), "cannot get sys_grf");
+			return dev_err_probe(drm->dev, PTR_ERR(vop2->sys_grf),
+					     "cannot get sys_grf\n");
 	}
 
 	if (vop2_data->feature & VOP2_FEATURE_HAS_VOP_GRF) {
 		vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
 		if (IS_ERR(vop2->vop_grf))
-			return dev_err_probe(dev, PTR_ERR(vop2->vop_grf), "cannot get vop_grf");
+			return dev_err_probe(drm->dev, PTR_ERR(vop2->vop_grf),
+					     "cannot get vop_grf\n");
 	}
 
 	if (vop2_data->feature & VOP2_FEATURE_HAS_VO1_GRF) {
 		vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
 		if (IS_ERR(vop2->vo1_grf))
-			return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf), "cannot get vo1_grf");
+			return dev_err_probe(drm->dev, PTR_ERR(vop2->vo1_grf),
+					     "cannot get vo1_grf\n");
 	}
 
 	if (vop2_data->feature & VOP2_FEATURE_HAS_SYS_PMU) {
 		vop2->sys_pmu = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
 		if (IS_ERR(vop2->sys_pmu))
-			return dev_err_probe(dev, PTR_ERR(vop2->sys_pmu), "cannot get sys_pmu");
+			return dev_err_probe(drm->dev, PTR_ERR(vop2->sys_pmu),
+					     "cannot get sys_pmu\n");
 	}
 
 	vop2->hclk = devm_clk_get(vop2->dev, "hclk");
-	if (IS_ERR(vop2->hclk)) {
-		drm_err(vop2->drm, "failed to get hclk source\n");
-		return PTR_ERR(vop2->hclk);
-	}
+	if (IS_ERR(vop2->hclk))
+		return dev_err_probe(drm->dev, PTR_ERR(vop2->hclk),
+				     "failed to get hclk source\n");
 
 	vop2->aclk = devm_clk_get(vop2->dev, "aclk");
-	if (IS_ERR(vop2->aclk)) {
-		drm_err(vop2->drm, "failed to get aclk source\n");
-		return PTR_ERR(vop2->aclk);
-	}
+	if (IS_ERR(vop2->aclk))
+		return dev_err_probe(drm->dev, PTR_ERR(vop2->aclk),
+				     "failed to get aclk source\n");
 
 	vop2->pclk = devm_clk_get_optional(vop2->dev, "pclk_vop");
-	if (IS_ERR(vop2->pclk)) {
-		drm_err(vop2->drm, "failed to get pclk source\n");
-		return PTR_ERR(vop2->pclk);
-	}
+	if (IS_ERR(vop2->pclk))
+		return dev_err_probe(drm->dev, PTR_ERR(vop2->pclk),
+				     "failed to get pclk source\n");
 
 	vop2->pll_hdmiphy0 = devm_clk_get_optional(vop2->dev, "pll_hdmiphy0");
-	if (IS_ERR(vop2->pll_hdmiphy0)) {
-		drm_err(vop2->drm, "failed to get pll_hdmiphy0\n");
-		return PTR_ERR(vop2->pll_hdmiphy0);
-	}
+	if (IS_ERR(vop2->pll_hdmiphy0))
+		return dev_err_probe(drm->dev, PTR_ERR(vop2->pll_hdmiphy0),
+				     "failed to get pll_hdmiphy0\n");
 
 	vop2->pll_hdmiphy1 = devm_clk_get_optional(vop2->dev, "pll_hdmiphy1");
 	if (IS_ERR(vop2->pll_hdmiphy1))
@@ -3757,10 +3750,8 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 				     "failed to get pll_hdmiphy1\n");
 
 	vop2->irq = platform_get_irq(pdev, 0);
-	if (vop2->irq < 0) {
-		drm_err(vop2->drm, "cannot find irq for vop2\n");
-		return vop2->irq;
-	}
+	if (vop2->irq < 0)
+		return dev_err_probe(drm->dev, vop2->irq, "cannot find irq for vop2\n");
 
 	mutex_init(&vop2->vop2_lock);
 

-- 
2.48.1


