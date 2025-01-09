Return-Path: <devicetree+bounces-136898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7D5A06C48
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFB3716063A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7264C13D281;
	Thu,  9 Jan 2025 03:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="QoIxyBpm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12746.qiye.163.com (mail-m12746.qiye.163.com [115.236.127.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F454A32;
	Thu,  9 Jan 2025 03:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393607; cv=none; b=YJeql2/6VvCJd+OArqKdSUj12+QP9Uq7PYmfDhQ2Fg8fBZ8TjajxhZ9KffLuDNX4uxrfxjNQrwq1l1OIVEaC4Ofz0srWmVYSHj0YDYyEFg3goWEah02RLiWB+JhCwYmrLVLIpEc1bF9kjaqmJ/oBR34kTsm6zELrjfgbVgB6u7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393607; c=relaxed/simple;
	bh=VYBM79WtxxOLCqnMPIYtYEGDwr9EgNpPrkE8QkDwbzk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RQJY/l3IZcLNEyV9yMd5S0A24T+YXqm+fKyPf0fPcqEK4O3ejyJquiEQqBoMGelvTrgz6/1eok5K6h+5twiIxB0kpgwtd1NSPxO+NCCPauUXhsL0gwF6uQi6bryIsFEnK5Z2j8K1WxTvNTUNozDIxHinP93+UYBZ8iTLMDY/ZUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=QoIxyBpm; arc=none smtp.client-ip=115.236.127.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a26;
	Thu, 9 Jan 2025 11:28:06 +0800 (GMT+08:00)
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
Subject: [PATCH v5 05/20] drm/rockchip: analogix_dp: Replace DRM_...() functions with drm_...() or dev_...()
Date: Thu,  9 Jan 2025 11:27:10 +0800
Message-Id: <20250109032725.1102465-6-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pISVYfSxgeTB1CQkIfHRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a94491ae58503a3kunm82c01a26
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P1E6CTo6CzILPRQIFgJCTBc0
	EzZPFDhVSlVKTEhNSEJISUNDTU5LVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSkJJNwY+
DKIM-Signature:a=rsa-sha256;
	b=QoIxyBpmEC2qTazAgYcFXJcaX0t2tE5AhAv8qyRJpq5RdaQEW+YEv/xlVKWpfVJBXqK0hH6KGt+NkuxtVTs6muBC8tZif1TNdqBpDVVrHiRWO61i7+73Fv4kgF9FvED9FDqIbWZE/pZHqdaoBmm/dcfrPjMx39a9Z8/TPTduaWM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hUhp79OUJHQ64SYdSOOhsCMc+94NAAoeH98P6b2yS9s=;
	h=date:mime-version:subject:message-id:from;

According to the comments in include/drm/drm_print.h, the DRM_...()
functions are deprecated in favor of drm_...() or dev_...() functions.

Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS() after
rockchip_dp_bind() is called, and replace DRM_DEV_ERROR() with dev_err()
before calling it.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 546d13f19f9b..8114c3238609 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
 
 	ret = clk_prepare_enable(dp->pclk);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
+		drm_err(dp->drm_dev, "failed to enable pclk %d\n", ret);
 		return ret;
 	}
 
 	ret = rockchip_dp_pre_init(dp);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to dp pre init %d\n", ret);
+		drm_err(dp->drm_dev, "failed to dp pre init %d\n", ret);
 		clk_disable_unprepare(dp->pclk);
 		return ret;
 	}
@@ -126,12 +126,13 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
 static int rockchip_dp_get_modes(struct analogix_dp_plat_data *plat_data,
 				 struct drm_connector *connector)
 {
+	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
 	struct drm_display_info *di = &connector->display_info;
 	/* VOP couldn't output YUV video format for eDP rightly */
 	u32 mask = DRM_COLOR_FORMAT_YCBCR444 | DRM_COLOR_FORMAT_YCBCR422;
 
 	if ((di->color_formats & mask)) {
-		DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
+		drm_dbg_kms(dp->drm_dev, "Swapping display color format from YUV to RGB\n");
 		di->color_formats &= ~mask;
 		di->color_formats |= DRM_COLOR_FORMAT_RGB444;
 		di->bpc = 8;
@@ -201,17 +202,17 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	else
 		val = dp->data->lcdsel_big;
 
-	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
+	drm_dbg_core(dp->drm_dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
 
 	ret = clk_prepare_enable(dp->grfclk);
 	if (ret < 0) {
-		DRM_DEV_ERROR(dp->dev, "failed to enable grfclk %d\n", ret);
+		drm_err(dp->drm_dev, "failed to enable grfclk %d\n", ret);
 		return;
 	}
 
 	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
 	if (ret != 0)
-		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
+		drm_err(dp->drm_dev, "Could not write to GRF: %d\n", ret);
 
 	clk_disable_unprepare(dp->grfclk);
 }
@@ -236,7 +237,7 @@ static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
 
 	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
 	if (ret)
-		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
+		drm_err(dp->drm_dev, "line flag irq timed out\n");
 }
 
 static int
@@ -277,7 +278,7 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 
 	dp->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dp->grf)) {
-		DRM_DEV_ERROR(dev, "failed to get rockchip,grf property\n");
+		dev_err(dev, "failed to get rockchip,grf property\n");
 		return PTR_ERR(dp->grf);
 	}
 
@@ -287,19 +288,19 @@ static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 	} else if (PTR_ERR(dp->grfclk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
 	} else if (IS_ERR(dp->grfclk)) {
-		DRM_DEV_ERROR(dev, "failed to get grf clock\n");
+		dev_err(dev, "failed to get grf clock\n");
 		return PTR_ERR(dp->grfclk);
 	}
 
 	dp->pclk = devm_clk_get(dev, "pclk");
 	if (IS_ERR(dp->pclk)) {
-		DRM_DEV_ERROR(dev, "failed to get pclk property\n");
+		dev_err(dev, "failed to get pclk property\n");
 		return PTR_ERR(dp->pclk);
 	}
 
 	dp->rst = devm_reset_control_get(dev, "dp");
 	if (IS_ERR(dp->rst)) {
-		DRM_DEV_ERROR(dev, "failed to get dp reset control\n");
+		dev_err(dev, "failed to get dp reset control\n");
 		return PTR_ERR(dp->rst);
 	}
 
@@ -315,12 +316,12 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
 							     dev->of_node);
-	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
+	drm_dbg_kms(drm_dev, "possible_crtcs = 0x%x\n", encoder->possible_crtcs);
 
 	ret = drm_simple_encoder_init(drm_dev, encoder,
 				      DRM_MODE_ENCODER_TMDS);
 	if (ret) {
-		DRM_ERROR("failed to initialize encoder with drm\n");
+		drm_err(drm_dev, "failed to initialize encoder with drm\n");
 		return ret;
 	}
 
@@ -340,7 +341,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 
 	ret = rockchip_dp_drm_create_encoder(dp);
 	if (ret) {
-		DRM_ERROR("failed to create drm encoder\n");
+		drm_err(drm_dev, "failed to create drm encoder\n");
 		return ret;
 	}
 
-- 
2.34.1


