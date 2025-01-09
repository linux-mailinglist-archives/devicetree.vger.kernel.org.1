Return-Path: <devicetree+bounces-136892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB15A06C30
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34F53188249A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAADB19306F;
	Thu,  9 Jan 2025 03:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="dp1AxSiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3272.qiye.163.com (mail-m3272.qiye.163.com [220.197.32.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBF018DF73;
	Thu,  9 Jan 2025 03:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393310; cv=none; b=u/WAp+XhDNoHMxrYen+EeHYQOAGRVwDov7LmE14FYbhZHh+vnnrTzh1otCyJYZ5DwFwNwJt5cXrIrz9Cm+9XGXGzR02LUhcWurpgR+TvWf8Z1NIP6RAoqaUbffcUfwkCz3nUtMHifhwWdk9w3owbrHLnpt8FOwRYvyN5i1swKJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393310; c=relaxed/simple;
	bh=Uxwz33mWGv4qY6AnMyChDoZf6yXddxTxP0FXHyfKQ9I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JjlnrlZHjejcVqEDQ6GIucB4HRzanIEJwoWFZvdjQgoye3T4rgbMaYdHZ3Qc46R/1+5ufi9iD26B+UfHCn1rW3fVTO8EbvnxCo8uuR1Zy+nW+eQkHxuufyiw/WdgfkOf8Mxf26pQ++Nba7vdHDgqcNpZGwwub+DHZTW709+U+sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=dp1AxSiU; arc=none smtp.client-ip=220.197.32.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a81;
	Thu, 9 Jan 2025 11:28:18 +0800 (GMT+08:00)
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
Subject: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu,  9 Jan 2025 11:27:16 +0800
Message-Id: <20250109032725.1102465-12-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhNHlZITUxISRlITUpJH0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491b127903a3kunm82c01a81
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mj46PTo5PzIVIRRILEoOQypN
	Ei4KCitVSlVKTEhNSEJISEtLSU5KVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITExONwY+
DKIM-Signature:a=rsa-sha256;
	b=dp1AxSiUUL4UTk2GkXst7cOnju629zizuJEMU3Evq3vAjsZWQYtl5tvPp27uz2nBx3PzspXS2U+W41LMub6ykDz1n2n16doKbzwPKMhGuoVG5q+YnJu/Wlocie0x+K7/J23JPFmQ2SQn1TaeOH02LS8MXdutNlk2/Wpf8hjSM90=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Uf4UFxDsT5vSfWEZ+9rK9nvtFoknlN7ayfJQpa/hLWQ=;
	h=date:mime-version:subject:message-id:from;

The main modification is moving the DP AUX initialization from function
analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
eDP panel during probing, it is also needed to advance PM operaions to
ensure that eDP controller and phy are prepared for AUX transmission.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus

Changes in v5:
- Advance PM operations to make eDP AUX work well
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8251adfce2f9..78e78fb474d3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 	return ret;
 }
 
+static void analogix_dp_runtime_disable(void *data)
+{
+	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
+
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_dont_use_autosuspend(dp->dev);
+		pm_runtime_disable(dp->dev);
+	} else {
+		analogix_dp_suspend(dp);
+	}
+}
+
 struct analogix_dp_device *
 analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 {
@@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
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
+		pm_runtime_enable(dp->dev);
+	} else {
+		ret = analogix_dp_resume(dp);
+		if (ret)
+			goto err_disable_clk;
+	}
+
+	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);
+	if (ret)
+		goto err_disable_pm_runtime;
+
 	return dp;
 
+err_disable_pm_runtime:
+	analogix_dp_runtime_disable((void *)dp);
 err_disable_clk:
 	clk_disable_unprepare(dp->clock);
 	return ERR_PTR(ret);
@@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
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
@@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 
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
@@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
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
 
-- 
2.34.1


