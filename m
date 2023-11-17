Return-Path: <devicetree+bounces-16758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4C17EF8A2
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B04511C20A64
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F288645C05;
	Fri, 17 Nov 2023 20:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OlCPTe2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A536FD7E
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1f0f94943d9so1115977fac.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252743; x=1700857543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJ6tnoZIYc0esGkHYxps8BxQcHrsvuUBO5cAlPjqZoY=;
        b=OlCPTe2BomxDJbqjat+yCiVIWGwesl8OFfdADS0NV7TF1iSdOc/TX19bhxlM0qtNI4
         M9qXpR2vRXGDlDSzrMx4wua+1pSU2Hmnm2vsDStYFjTrupp0xI3SnY4QBxv7Iherbw5t
         gzWhh0B9eLFljdgFqrXCdxmzd6TXv3qkDapBmqkaZvYK2I7mYiXpV5BTgHaAHYRMBccm
         VcUPeA4JL16BGoDYjg2tXEVWHLuOXRx/dHXEdmIaIbu27LprXAhGvLPOPKsZf1Oek14r
         pmW7WuJbBHrCLTkU7s2cyXx1nyPN1gAiQMWxxeao+K/3Eo4M/SUVQlXVKL+9DUwkBIdF
         HnLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252743; x=1700857543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sJ6tnoZIYc0esGkHYxps8BxQcHrsvuUBO5cAlPjqZoY=;
        b=ZXosJrZabX9QF5KUVtMvPI1Oy0lVIPxk8dJ36mBjD+UZBXAXjpv7M7yrzh/fK1gn7J
         VYlCLi5nQEqZbEkv0y9uefyxSp0Q5J/efGMt2ndyuwwXL6TMxk/03N/fcmzSuc+5Sbjz
         OQIpu7rYN8u+VhuF+IXmzKSW/HNC0VgyMyzf4yJSP97lfjFYZQxcy59q1GKU2YbTbeOc
         c8rBFf7kNNPVx6HROGtLrcQ3tth8B4677dKgYL0FPFk0830jIYtEzr0AJ4xsGC7aL7rl
         vckQFrA/HD9EiVXwEAsrTJJHz62ZKfZ0Ky/ioi1TiEIqnGohExmKH6QhFO81BB+/JIbb
         GKYA==
X-Gm-Message-State: AOJu0Yz5YINrGyy7KDmt/qeMaAZvwHLKW8B2tbPs5BOgMHo7ewtUcHwc
	k5sMaJEADGiEDfUFBxP4BYc=
X-Google-Smtp-Source: AGHT+IFk4J2OmTVMjuI5VIiXd9uWVsgzhem4+m7eZf+wTjane5QwTMB59UT2ne03GAxke7tc202Oew==
X-Received: by 2002:a05:6871:5ce:b0:1e9:de37:a75d with SMTP id v14-20020a05687105ce00b001e9de37a75dmr347182oan.17.1700252742953;
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: [PATCH V4 3/6] drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
Date: Fri, 17 Nov 2023 14:25:33 -0600
Message-Id: <20231117202536.1387815-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Refactor the driver to add support for the powkiddy,rk2023-panel
panel. This panel is extremely similar to the rg353p-panel but
requires a smaller vertical back porch and isn't as tolerant of
higher speeds. Note that while all of these panels are identical in
size (70x57) it is possible future panels may not be.

Tested on my RG351V, RG353P, RG353V, and RK2023.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 55 +++++++++++++++----
 1 file changed, 44 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index c44c6945662f..94d89ffd596b 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -28,6 +28,7 @@ struct nv3051d_panel_info {
 	unsigned int num_modes;
 	u16 width_mm, height_mm;
 	u32 bus_flags;
+	u32 mode_flags;
 };
 
 struct panel_nv3051d {
@@ -387,15 +388,7 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 
 	dsi->lanes = 4;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
-
-	/*
-	 * The panel in the RG351V is identical to the 353P, except it
-	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
-	 */
-	if (of_device_is_compatible(dev->of_node, "anbernic,rg351v-panel"))
-		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
+	dsi->mode_flags = ctx->panel_info->mode_flags;
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
@@ -483,16 +476,56 @@ static const struct drm_display_mode nv3051d_rgxx3_modes[] = {
 	},
 };
 
-static const struct nv3051d_panel_info nv3051d_rgxx3_info = {
+static const struct drm_display_mode nv3051d_rk2023_modes[] = {
+	{
+		.hdisplay       = 640,
+		.hsync_start    = 640 + 40,
+		.hsync_end      = 640 + 40 + 2,
+		.htotal         = 640 + 40 + 2 + 80,
+		.vdisplay       = 480,
+		.vsync_start    = 480 + 18,
+		.vsync_end      = 480 + 18 + 2,
+		.vtotal         = 480 + 18 + 2 + 4,
+		.clock          = 24150,
+		.flags          = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	},
+};
+
+static const struct nv3051d_panel_info nv3051d_rg351v_info = {
 	.display_modes = nv3051d_rgxx3_modes,
 	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
 	.width_mm = 70,
 	.height_mm = 57,
 	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
+		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
+};
+
+static const struct nv3051d_panel_info nv3051d_rg353p_info = {
+	.display_modes = nv3051d_rgxx3_modes,
+	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
+	.width_mm = 70,
+	.height_mm = 57,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
+};
+
+static const struct nv3051d_panel_info nv3051d_rk2023_info = {
+	.display_modes = nv3051d_rk2023_modes,
+	.num_modes = ARRAY_SIZE(nv3051d_rk2023_modes),
+	.width_mm = 70,
+	.height_mm = 57,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
 };
 
 static const struct of_device_id newvision_nv3051d_of_match[] = {
-	{ .compatible = "newvision,nv3051d", .data = &nv3051d_rgxx3_info },
+	{ .compatible = "anbernic,rg351v-panel", .data = &nv3051d_rg351v_info },
+	{ .compatible = "anbernic,rg353p-panel", .data = &nv3051d_rg353p_info },
+	{ .compatible = "powkiddy,rk2023-panel", .data = &nv3051d_rk2023_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, newvision_nv3051d_of_match);
-- 
2.34.1


