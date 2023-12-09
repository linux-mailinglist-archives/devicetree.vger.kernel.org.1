Return-Path: <devicetree+bounces-23390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2FE80B260
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 07:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E5DAB20C2E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 06:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1081C35;
	Sat,  9 Dec 2023 06:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="KjAcCKW3"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 098BCCF
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 22:37:40 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9B93D87185;
	Sat,  9 Dec 2023 07:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1702103858;
	bh=MOTcAFz5O3XHCz6fvyNTnvT4+8NExjHejdjjMnKIH7I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KjAcCKW38n+YHU6Uiu2F0GNfXC5sXAEwCn8CkckDSDFIwIYXkl2ixrkoX5kTkZcrH
	 tlpReJI7tzU6pKjH07DJR01yLlTUsApYbqTd/0TCmBbdCZDE7+km8+gtoi/eQW2luc
	 lKtBO7zqRuSIolAAGwmBOLp1h9riNmy4md83h80ox3FLqCLsJLT/3kS3tOhWIVAr+P
	 9wUdwVMsLb1rZR4MjBhI9g1jYhO6Xn0tawL2Go9klfeXXBwtbUT52v8RxvC6MTce/B
	 caSSk+Md0gf2/4BDacwXoRCtSoQzPQRUkjNQJB2Oqw12wjO2iW/ohHGZJDMqxJxwUH
	 M0usZxeOIILbg==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Elmar Albert <ealbert@data-modul.com>,
	Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liu Ying <victor.liu@nxp.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] drm/panel: simple: Add AUO G156HAN04.0 LVDS display support
Date: Sat,  9 Dec 2023 07:37:00 +0100
Message-ID: <20231209063714.1381913-2-marex@denx.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231209063714.1381913-1-marex@denx.de>
References: <20231209063714.1381913-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

From: Elmar Albert <ealbert@data-modul.com>

G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to support the 16:9 FHD, 1920(H) x 1080(V) screen
and 16.7M colors (RGB 8-bits) with LED backlight driving circuit.
All input signals are LVDS interface compatible.

G156HAN04.0 is designed for a display unit of notebook style
personal computer and industrial machine.

Signed-off-by: Elmar Albert <ealbert@data-modul.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liu Ying <victor.liu@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
V2: - Rebase the patch
    - Fix up commit message
    - Tx parameter comments are retained, they refer to datasheet
      timings and are generally useful when checking if the timing
      requirements are properly fulfilled
---
 drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 6bdd97ee71fec..83039c6b50e05 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1135,6 +1135,37 @@ static const struct panel_desc auo_g133han01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing auo_g156han04_timings = {
+	.pixelclock = { 137000000, 141000000, 146000000 },
+	.hactive = { 1920, 1920, 1920 },
+	.hfront_porch = { 60, 60, 60 },
+	.hback_porch = { 90, 92, 111 },
+	.hsync_len =  { 32, 32, 32 },
+	.vactive = { 1080, 1080, 1080 },
+	.vfront_porch = { 12, 12, 12 },
+	.vback_porch = { 24, 36, 56 },
+	.vsync_len = { 8, 8, 8 },
+};
+
+static const struct panel_desc auo_g156han04 = {
+	.timings = &auo_g156han04_timings,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 344,
+		.height = 194,
+	},
+	.delay = {
+		.prepare = 50,		/* T2 */
+		.enable = 200,		/* T3 */
+		.disable = 110,		/* T10 */
+		.unprepare = 1000,	/* T13 */
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode auo_g156xtn01_mode = {
 	.clock = 76000,
 	.hdisplay = 1366,
@@ -4289,6 +4320,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "auo,g133han01",
 		.data = &auo_g133han01,
+	}, {
+		.compatible = "auo,g156han04",
+		.data = &auo_g156han04,
 	}, {
 		.compatible = "auo,g156xtn01",
 		.data = &auo_g156xtn01,
-- 
2.42.0


