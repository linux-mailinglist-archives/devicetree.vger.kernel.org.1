Return-Path: <devicetree+bounces-140507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3D7A1A1A2
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:13:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DB7D3A5AA6
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B07820D51A;
	Thu, 23 Jan 2025 10:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="D7rlLqUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49219.qiye.163.com (mail-m49219.qiye.163.com [45.254.49.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3CD20CCCC;
	Thu, 23 Jan 2025 10:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737627212; cv=none; b=qZZ2LuxIufHZKxJeHfmjn6xYEPcmprWRDOtt2EUbXToXBOhe1/TRaUn0e+duRRgZM9nU/ok1VB1d3+Sph4wCSUGBrc1DG8OlNjZoV7qnQOkgKnry0L3/HEkNWvfb7oCQuigSIGpq8VikgSrJa2Ph6WGoD+UlYUE4aaGXMW4M8As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737627212; c=relaxed/simple;
	bh=2xWx1sjVVApUipq9eOE/Vsi1jv794p67DbVdr9AgpvI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M0bAXMO0Ipui6/Jvn9lIFN6CtvF2DNudFBiLWAmLfz696GrH0hkB+3Anfi7dNZY+9BGYq6f9YVpkWH9WFANjlwoZuIGWdgH0nPSdIx7rzRztnQ2gWDEI1ypiaNuujNjDpUA/9SBJV6rZOFNWfS5JXj/JVbBuo+TuL2gB7ZxnFTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=D7rlLqUQ; arc=none smtp.client-ip=45.254.49.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9818ae74;
	Thu, 23 Jan 2025 18:08:12 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v6 07/14] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu, 23 Jan 2025 18:07:40 +0800
Message-Id: <20250123100747.1841357-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250123100747.1841357-1-damon.ding@rock-chips.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGklKH1ZDS0JKGBhKT0keSUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9492a2399303a3kunm9818ae74
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBg6Mio4LzIKTywXQygxFDAv
	SRIaCTBVSlVKTEhMTUlNQ0JPT09MVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSktONwY+
DKIM-Signature:a=rsa-sha256;
	b=D7rlLqUQo6MQKawE24cLBm2x/q7JDuk/Ibe7X90wiDrFQwxleejlHww7+fyFtTw1jBgx1NFOiC8yzDL+tAkv/cL+RbGAYg50cM5mYGeqE55Hh70lgczwVsFNLr4y/GyCek+pddLuJfrCSRlLZiC0zZXqu7mjrFu+GTp7s6S2EHc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wuzMB2HxpJdf0PRUIaPV1oMpS63xhv9DGCM48lkLtN0=;
	h=date:mime-version:subject:message-id:from;

The main modification is moving the DP AUX initialization from function
analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
eDP panel during probing, it is also needed to advance PM operaions to
ensure that eDP controller and phy are prepared for AUX transmission.

In addtion, add a new function analogix_dp_remove() to ensure symmetry
for PM operations.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus

Changes in v5:
- Advance PM operations to make eDP AUX work well

Changes in v6:
- Use devm_pm_runtime_enable() instead of devm_add_action_or_reset()
- Add a new function analogix_dp_remove() to ensure symmetry for PM
  operations
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 57 ++++++++++---------
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  4 ++
 include/drm/bridge/analogix_dp.h              |  1 +
 3 files changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8251adfce2f9..30da8a14361e 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1658,14 +1658,42 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	}
 	disable_irq(dp->irq);
 
+	dp->aux.name = "DP-AUX";
+	dp->aux.transfer = analogix_dpaux_transfer;
+	dp->aux.dev = dp->dev;
+	drm_dp_aux_init(&dp->aux);
+
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_use_autosuspend(dp->dev);
+		pm_runtime_set_autosuspend_delay(dp->dev, 100);
+		ret = devm_pm_runtime_enable(dp->dev);
+		if (ret)
+			goto err_disable_pm_runtime;
+	} else {
+		ret = analogix_dp_resume(dp);
+		if (ret)
+			goto err_disable_clk;
+	}
+
 	return dp;
 
+err_disable_pm_runtime:
+	pm_runtime_dont_use_autosuspend(dp->dev);
 err_disable_clk:
 	clk_disable_unprepare(dp->clock);
 	return ERR_PTR(ret);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_probe);
 
+void analogix_dp_remove(struct analogix_dp_device *dp)
+{
+	if (IS_ENABLED(CONFIG_PM))
+		pm_runtime_dont_use_autosuspend(dp->dev);
+	else
+		analogix_dp_suspend(dp);
+}
+EXPORT_SYMBOL_GPL(analogix_dp_remove);
+
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
 	phy_power_off(dp->phy);
@@ -1708,25 +1736,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_use_autosuspend(dp->dev);
-		pm_runtime_set_autosuspend_delay(dp->dev, 100);
-		pm_runtime_enable(dp->dev);
-	} else {
-		ret = analogix_dp_resume(dp);
-		if (ret)
-			return ret;
-	}
-
-	dp->aux.name = "DP-AUX";
-	dp->aux.transfer = analogix_dpaux_transfer;
-	dp->aux.dev = dp->dev;
 	dp->aux.drm_dev = drm_dev;
 
 	ret = drm_dp_aux_register(&dp->aux);
 	if (ret) {
 		DRM_ERROR("failed to register AUX (%d)\n", ret);
-		goto err_disable_pm_runtime;
+		return ret;
 	}
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
@@ -1739,13 +1754,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 
 err_unregister_aux:
 	drm_dp_aux_unregister(&dp->aux);
-err_disable_pm_runtime:
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_dont_use_autosuspend(dp->dev);
-		pm_runtime_disable(dp->dev);
-	} else {
-		analogix_dp_suspend(dp);
-	}
 
 	return ret;
 }
@@ -1762,13 +1770,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
-
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_dont_use_autosuspend(dp->dev);
-		pm_runtime_disable(dp->dev);
-	} else {
-		analogix_dp_suspend(dp);
-	}
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index a63c2c867059..13f32aeea7ca 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -459,6 +459,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 static void rockchip_dp_remove(struct platform_device *pdev)
 {
+	struct rockchip_dp_device *dp = dev_get_drvdata(&pdev->dev);
+
+	analogix_dp_remove(dp->adp);
+
 	component_del(&pdev->dev, &rockchip_dp_component_ops);
 }
 
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 1b119b547988..d9b721fd7201 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -43,6 +43,7 @@ int analogix_dp_suspend(struct analogix_dp_device *dp);
 
 struct analogix_dp_device *
 analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data);
+void analogix_dp_remove(struct analogix_dp_device *dp);
 int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev);
 void analogix_dp_unbind(struct analogix_dp_device *dp);
 
-- 
2.34.1


