Return-Path: <devicetree+bounces-14629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1502D7E5C2D
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E478B20CCB
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEBC33035C;
	Wed,  8 Nov 2023 17:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="W+ppcYQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D8B1EB46
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 17:16:46 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7291D198D;
	Wed,  8 Nov 2023 09:16:46 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3A8HGOeO108995;
	Wed, 8 Nov 2023 11:16:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1699463784;
	bh=pC2PHqTj6EjEXD7n3F7w1pC0GCTt4w4rj9lwdcAWRw8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=W+ppcYQ24zDbCDfaKQF6R7hKHnAODSd8q3o8SuoFz/Q9KwEFnIwhW6RAo18SCkRqj
	 X5LVgqMBS2bjpEwIVfsMQ80UC5kb+lnv6VLnuaQTuuAAPqIwyLWQlNsRZoNQa2hQya
	 yxE5nzFKcDxXJ3A5WAxnARTuYxUEygYweWiVIeo8=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3A8HGOKD031756
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Nov 2023 11:16:24 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Nov 2023 11:16:23 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Nov 2023 11:16:23 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3A8HGNGS000559;
	Wed, 8 Nov 2023 11:16:23 -0600
From: Aradhya Bhatia <a-bhatia1@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Jyri Sarha
	<jyri.sarha@iki.fi>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List
	<devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        Jayesh
 Choudhary <j-choudhary@ti.com>, Jai Luthra <j-luthra@ti.com>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>
Subject: [PATCH v3 2/2] drivers/tidss: Add support for AM62A7 DSS
Date: Wed, 8 Nov 2023 22:46:19 +0530
Message-ID: <20231108171619.978438-3-a-bhatia1@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231108171619.978438-1-a-bhatia1@ti.com>
References: <20231108171619.978438-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add support for the DSS controller on TI's AM62A7 SoC in the tidss
driver.

This controller has 2 video pipelines that can render 2 video planes on
over a screen, using the overlay managers. The output of the DSS comes
from video port 2 (VP2) in the form of RGB88 DPI signals, while the VP1
is tied off inside the SoC.

Also add and use a new type of VP, DISPC_VP_TIED_OFF, for the tied-off
VP1 of AM62A DSS.

Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
---
Notes:
       Changes from V2:
       * Add new DISPC_VP_TIED_OFF for tied-off video-ports.

       Changes from V1:
       * Correctly sort DISPC_AM62A7 macro after DISPC_AM625.

 drivers/gpu/drm/tidss/tidss_dispc.c | 59 +++++++++++++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc.h |  3 ++
 drivers/gpu/drm/tidss/tidss_drv.c   |  1 +
 3 files changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index 9d9dee7abaef..7af416457c57 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -322,6 +322,60 @@ const struct dispc_features dispc_am625_feats = {
 	.vid_order = { 1, 0 },
 };
 
+const struct dispc_features dispc_am62a7_feats = {
+	/*
+	 * if the code reaches dispc_mode_valid with VP1,
+	 * it should return MODE_BAD.
+	 */
+	.max_pclk_khz = {
+		[DISPC_VP_TIED_OFF] = 0,
+		[DISPC_VP_DPI] = 165000,
+	},
+
+	.scaling = {
+		.in_width_max_5tap_rgb = 1280,
+		.in_width_max_3tap_rgb = 2560,
+		.in_width_max_5tap_yuv = 2560,
+		.in_width_max_3tap_yuv = 4096,
+		.upscale_limit = 16,
+		.downscale_limit_5tap = 4,
+		.downscale_limit_3tap = 2,
+		/*
+		 * The max supported pixel inc value is 255. The value
+		 * of pixel inc is calculated like this: 1+(xinc-1)*bpp.
+		 * The maximum bpp of all formats supported by the HW
+		 * is 8. So the maximum supported xinc value is 32,
+		 * because 1+(32-1)*8 < 255 < 1+(33-1)*4.
+		 */
+		.xinc_max = 32,
+	},
+
+	.subrev = DISPC_AM62A7,
+
+	.common = "common",
+	.common_regs = tidss_am65x_common_regs,
+
+	.num_vps = 2,
+	.vp_name = { "vp1", "vp2" },
+	.ovr_name = { "ovr1", "ovr2" },
+	.vpclk_name =  { "vp1", "vp2" },
+	/* VP1 of the DSS in AM62A7 SoC is tied off internally */
+	.vp_bus_type = { DISPC_VP_TIED_OFF, DISPC_VP_DPI },
+
+	.vp_feat = { .color = {
+			.has_ctm = true,
+			.gamma_size = 256,
+			.gamma_type = TIDSS_GAMMA_8BIT,
+		},
+	},
+
+	.num_planes = 2,
+	/* note: vid is plane_id 0 and vidl1 is plane_id 1 */
+	.vid_name = { "vid", "vidl1" },
+	.vid_lite = { false, true, },
+	.vid_order = { 1, 0 },
+};
+
 static const u16 *dispc_common_regmap;
 
 struct dss_vp_data {
@@ -824,6 +878,7 @@ dispc_irq_t dispc_read_and_clear_irqstatus(struct dispc_device *dispc)
 	case DISPC_K2G:
 		return dispc_k2g_read_and_clear_irqstatus(dispc);
 	case DISPC_AM625:
+	case DISPC_AM62A7:
 	case DISPC_AM65X:
 	case DISPC_J721E:
 		return dispc_k3_read_and_clear_irqstatus(dispc);
@@ -840,6 +895,7 @@ void dispc_set_irqenable(struct dispc_device *dispc, dispc_irq_t mask)
 		dispc_k2g_set_irqenable(dispc, mask);
 		break;
 	case DISPC_AM625:
+	case DISPC_AM62A7:
 	case DISPC_AM65X:
 	case DISPC_J721E:
 		dispc_k3_set_irqenable(dispc, mask);
@@ -1331,6 +1387,7 @@ void dispc_ovr_set_plane(struct dispc_device *dispc, u32 hw_plane,
 					x, y, layer);
 		break;
 	case DISPC_AM625:
+	case DISPC_AM62A7:
 	case DISPC_AM65X:
 		dispc_am65x_ovr_set_plane(dispc, hw_plane, hw_videoport,
 					  x, y, layer);
@@ -2250,6 +2307,7 @@ static void dispc_plane_init(struct dispc_device *dispc)
 		dispc_k2g_plane_init(dispc);
 		break;
 	case DISPC_AM625:
+	case DISPC_AM62A7:
 	case DISPC_AM65X:
 	case DISPC_J721E:
 		dispc_k3_plane_init(dispc);
@@ -2357,6 +2415,7 @@ static void dispc_vp_write_gamma_table(struct dispc_device *dispc,
 		dispc_k2g_vp_write_gamma_table(dispc, hw_videoport);
 		break;
 	case DISPC_AM625:
+	case DISPC_AM62A7:
 	case DISPC_AM65X:
 		dispc_am65x_vp_write_gamma_table(dispc, hw_videoport);
 		break;
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index 33ac5ad7a423..086327d51a90 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc.h
@@ -54,12 +54,14 @@ enum dispc_vp_bus_type {
 	DISPC_VP_DPI,		/* DPI output */
 	DISPC_VP_OLDI,		/* OLDI (LVDS) output */
 	DISPC_VP_INTERNAL,	/* SoC internal routing */
+	DISPC_VP_TIED_OFF,	/* Tied off / Unavailable */
 	DISPC_VP_MAX_BUS_TYPE,
 };
 
 enum dispc_dss_subrevision {
 	DISPC_K2G,
 	DISPC_AM625,
+	DISPC_AM62A7,
 	DISPC_AM65X,
 	DISPC_J721E,
 };
@@ -88,6 +90,7 @@ struct dispc_features {
 
 extern const struct dispc_features dispc_k2g_feats;
 extern const struct dispc_features dispc_am625_feats;
+extern const struct dispc_features dispc_am62a7_feats;
 extern const struct dispc_features dispc_am65x_feats;
 extern const struct dispc_features dispc_j721e_feats;
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 4d063eb9cd0b..edf69d020544 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -231,6 +231,7 @@ static void tidss_shutdown(struct platform_device *pdev)
 static const struct of_device_id tidss_of_table[] = {
 	{ .compatible = "ti,k2g-dss", .data = &dispc_k2g_feats, },
 	{ .compatible = "ti,am625-dss", .data = &dispc_am625_feats, },
+	{ .compatible = "ti,am62a7-dss", .data = &dispc_am62a7_feats, },
 	{ .compatible = "ti,am65x-dss", .data = &dispc_am65x_feats, },
 	{ .compatible = "ti,j721e-dss", .data = &dispc_j721e_feats, },
 	{ }
-- 
2.42.0


