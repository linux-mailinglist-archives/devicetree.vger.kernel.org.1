Return-Path: <devicetree+bounces-253120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2BCD07B00
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F850304EFB3
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1F42ED866;
	Fri,  9 Jan 2026 08:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Emm0ph8J"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42C11925BC;
	Fri,  9 Jan 2026 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945745; cv=none; b=bf9gDH0rodWbKaZn0tQ2eLr1AFDIj7kqgJPpH3g9ueaA3toVNgIQ1B8kzCLcADZyYPvmkD1BNfEPzodiQ+QyuA7Bs1g66mopOit7s6EmLWYTVM6pkfkNZmpeyDC5wehYFBEd+Fz4Dj9SXAi7hAi4Gp5JJlABIuiFiIbm/8Pq+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945745; c=relaxed/simple;
	bh=wrINV9A9rp1Vq1si8zTEbted7kpEy9/lZQHl3yTl14E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ESznpxsna+rE/91SMhixnJ22wZ4EYJQWPTlsz0ESRLyVfFFxhydwl1ul5vj8fXOX9hR10F4iG2QbJwQ3GTHXMVcyvy8T5DA54T51eM7CbOuTeLa1jrS81gCdq409WB9bx3SidWMbz/e+12leYAGcsV9IooWriLon2UEGYZi4y00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Emm0ph8J; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ia
	YHVcImdBLKGfQw9sedC6WnKdhgC7H3cJg2Yik2d0s=; b=Emm0ph8J6yEUfzZMH3
	2WzkIujksoRefW/gNhl66GyRZswIwGj8oYR1DUeRVxsJLQgaV4JTKJiLei+tjXZ4
	ZxZv2sr+ksGrxljTAbE3LO4q5O3C1jSJVS1AJcsnFAMDarfDFmXlyqjmUyJARP3T
	j6WH/1uOnfOw4UJYFztQbq8CM=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S4;
	Fri, 09 Jan 2026 16:01:02 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	hjc@rock-chips.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
Date: Fri,  9 Jan 2026 16:00:45 +0800
Message-ID: <20260109080054.228671-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260109080054.228671-1-andyshrk@163.com>
References: <20260109080054.228671-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S4
X-Coremail-Antispam: 1Uf129KBjvJXoWxuF1kXFyDCw47Jw1rCF4rXwb_yoWrXF13pF
	WxAFW5KrWqgF4Y9a4kAr4kCFn0yw1qkayxJa97Kw1Ik34fKFykXr9Ivr15Gwn3XF9xur17
	CrsrJrW8Z3W2krUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jmrWwUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7R4PbWlgtb710wAA31

From: Andy Yan <andy.yan@rock-chips.com>

The DW DisplayPort hardware block can be configured to work in single,
dual,quad pixel mode on differnt platforms, so make the pixel mode set
by plat_data to support the upcoming rk3576 variant.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/bridge/synopsys/dw-dp.c   |  8 +-------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 19 +++++++++++++++----
 include/drm/bridge/dw_dp.h                |  7 +++++++
 3 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 82aaf74e1bc0..eccf6299bdb7 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -352,12 +352,6 @@ enum {
 	DW_DP_YCBCR420_16BIT,
 };
 
-enum {
-	DW_DP_MP_SINGLE_PIXEL,
-	DW_DP_MP_DUAL_PIXEL,
-	DW_DP_MP_QUAD_PIXEL,
-};
-
 enum {
 	DW_DP_SDP_VERTICAL_INTERVAL = BIT(0),
 	DW_DP_SDP_HORIZONTAL_INTERVAL = BIT(1),
@@ -1984,7 +1978,7 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
 		return ERR_CAST(dp);
 
 	dp->dev = dev;
-	dp->pixel_mode = DW_DP_MP_QUAD_PIXEL;
+	dp->pixel_mode = plat_data->pixel_mode;
 
 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
 	bridge = &dp->bridge;
diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
index 25ab4e46301e..89d614d53596 100644
--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
@@ -75,7 +75,7 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
 static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
-	struct dw_dp_plat_data plat_data;
+	const struct dw_dp_plat_data *plat_data;
 	struct drm_device *drm_dev = data;
 	struct rockchip_dw_dp *dp;
 	struct drm_encoder *encoder;
@@ -89,7 +89,10 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 	dp->dev = dev;
 	platform_set_drvdata(pdev, dp);
 
-	plat_data.max_link_rate = 810000;
+	plat_data = of_device_get_match_data(dev);
+	if (!plat_data)
+		return -ENODEV;
+
 	encoder = &dp->encoder.encoder;
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
 	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
@@ -99,7 +102,7 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
 		return ret;
 	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
 
-	dp->base = dw_dp_bind(dev, encoder, &plat_data);
+	dp->base = dw_dp_bind(dev, encoder, plat_data);
 	if (IS_ERR(dp->base)) {
 		ret = PTR_ERR(dp->base);
 		return ret;
@@ -134,8 +137,16 @@ static void dw_dp_remove(struct platform_device *pdev)
 	component_del(dp->dev, &dw_dp_rockchip_component_ops);
 }
 
+static const struct dw_dp_plat_data rk3588_dp_plat_data = {
+	.max_link_rate = 810000,
+	.pixel_mode = DW_DP_MP_QUAD_PIXEL,
+};
+
 static const struct of_device_id dw_dp_of_match[] = {
-	{ .compatible = "rockchip,rk3588-dp", },
+	{
+		.compatible = "rockchip,rk3588-dp",
+		.data = &rk3588_dp_plat_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, dw_dp_of_match);
diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
index d05df49fd884..25363541e69d 100644
--- a/include/drm/bridge/dw_dp.h
+++ b/include/drm/bridge/dw_dp.h
@@ -11,8 +11,15 @@
 struct drm_encoder;
 struct dw_dp;
 
+enum {
+	DW_DP_MP_SINGLE_PIXEL,
+	DW_DP_MP_DUAL_PIXEL,
+	DW_DP_MP_QUAD_PIXEL,
+};
+
 struct dw_dp_plat_data {
 	u32 max_link_rate;
+	u8 pixel_mode;
 };
 
 struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
-- 
2.43.0


