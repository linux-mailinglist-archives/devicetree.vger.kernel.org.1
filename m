Return-Path: <devicetree+bounces-12721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE9B7DB429
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83CE52813B1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091414C84;
	Mon, 30 Oct 2023 07:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="L19WIkhK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0F44C7F
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:24:52 +0000 (UTC)
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EA4B10B
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:24:50 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1698650689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ffu90WtDRo2W/3jfpdwAvy06G2yV7afYyAHaAcaQMYQ=;
	b=L19WIkhKPhhOsi/XaTRnwCsr1RtkFTII2qWvIoiBKeHbZ3jxTiZl3GDMWg//uxCCaYbjVL
	DTsNFl+naun3yCzXcL6ucZqIJBQUMpCXNfI0DNZ8U2GulI6utBXd+6oQF1VCJXYf+a2tJ4
	k+M800MB9wcD63ruz4McX8n6Ya6tDrsJAWVTOH4bqr8ClnK13NGLA81HM8e//hdZqwm6Xs
	J0txQ3zFek7RVmPdONlTzdOW7s+syuutQJDkgqdH43NKcAjvr92VU+SOiYqxFg3WgOe8rI
	Oz4eOtlf68s3Dllpl9io+ntKIeGsrU0FmIyoskMpZiBW6JnCTxSDl6p1UjxfPQ==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 4/7] drm/panel: nv3052c: Add Fascontek FS035VG158 LCD display
Date: Mon, 30 Oct 2023 18:23:35 +1100
Message-ID: <20231030072337.2341539-6-contact@jookia.org>
In-Reply-To: <20231030072337.2341539-2-contact@jookia.org>
References: <20231030072337.2341539-2-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This display is extremely similar to the LTK035C5444T, but still has
some minor variations in panel initialization.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 .../gpu/drm/panel/panel-newvision-nv3052c.c   | 223 ++++++++++++++++++
 1 file changed, 223 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index b0114b5e8554..1aab0c9ae52f 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -238,6 +238,201 @@ static const struct nv3052c_reg ltk035c5444t_panel_regs[] = {
 	{ 0x36, 0x0a }, // bgr = 1, ss = 1, gs = 0
 };
 
+static const struct nv3052c_reg fs035vg158_panel_regs[] = {
+	// EXTC Command set enable, select page 1
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x01 },
+	// Mostly unknown registers
+	{ 0xe3, 0x00 },
+	{ 0x40, 0x00 },
+	{ 0x03, 0x40 },
+	{ 0x04, 0x00 },
+	{ 0x05, 0x03 },
+	{ 0x08, 0x00 },
+	{ 0x09, 0x07 },
+	{ 0x0a, 0x01 },
+	{ 0x0b, 0x32 },
+	{ 0x0c, 0x32 },
+	{ 0x0d, 0x0b },
+	{ 0x0e, 0x00 },
+	{ 0x23, 0x20 }, // RGB interface control: DE MODE PCLK-N
+	{ 0x24, 0x0c },
+	{ 0x25, 0x06 },
+	{ 0x26, 0x14 },
+	{ 0x27, 0x14 },
+	{ 0x38, 0x9c }, //VCOM_ADJ1, different to ltk035c5444t
+	{ 0x39, 0xa7 }, //VCOM_ADJ2, different to ltk035c5444t
+	{ 0x3a, 0x50 }, //VCOM_ADJ3, different to ltk035c5444t
+	{ 0x28, 0x40 },
+	{ 0x29, 0x01 },
+	{ 0x2a, 0xdf },
+	{ 0x49, 0x3c },
+	{ 0x91, 0x57 }, //EXTPW_CTRL2, different to ltk035c5444t
+	{ 0x92, 0x57 }, //EXTPW_CTRL3, different to ltk035c5444t
+	{ 0xa0, 0x55 },
+	{ 0xa1, 0x50 },
+	{ 0xa4, 0x9c },
+	{ 0xa7, 0x02 },
+	{ 0xa8, 0x01 },
+	{ 0xa9, 0x01 },
+	{ 0xaa, 0xfc },
+	{ 0xab, 0x28 },
+	{ 0xac, 0x06 },
+	{ 0xad, 0x06 },
+	{ 0xae, 0x06 },
+	{ 0xaf, 0x03 },
+	{ 0xb0, 0x08 },
+	{ 0xb1, 0x26 },
+	{ 0xb2, 0x28 },
+	{ 0xb3, 0x28 },
+	{ 0xb4, 0x03 }, // Unknown, different to ltk035c5444
+	{ 0xb5, 0x08 },
+	{ 0xb6, 0x26 },
+	{ 0xb7, 0x08 },
+	{ 0xb8, 0x26 },
+	{ 0xf0, 0x00 },
+	{ 0xf6, 0xc0 },
+	// EXTC Command set enable, select page 0
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x02 },
+	// Set gray scale voltage to adjust gamma
+	{ 0xb0, 0x0b }, // PGAMVR0
+	{ 0xb1, 0x16 }, // PGAMVR1
+	{ 0xb2, 0x17 }, // PGAMVR2
+	{ 0xb3, 0x2c }, // PGAMVR3
+	{ 0xb4, 0x32 }, // PGAMVR4
+	{ 0xb5, 0x3b }, // PGAMVR5
+	{ 0xb6, 0x29 }, // PGAMPR0
+	{ 0xb7, 0x40 }, // PGAMPR1
+	{ 0xb8, 0x0d }, // PGAMPK0
+	{ 0xb9, 0x05 }, // PGAMPK1
+	{ 0xba, 0x12 }, // PGAMPK2
+	{ 0xbb, 0x10 }, // PGAMPK3
+	{ 0xbc, 0x12 }, // PGAMPK4
+	{ 0xbd, 0x15 }, // PGAMPK5
+	{ 0xbe, 0x19 }, // PGAMPK6
+	{ 0xbf, 0x0e }, // PGAMPK7
+	{ 0xc0, 0x16 }, // PGAMPK8
+	{ 0xc1, 0x0a }, // PGAMPK9
+	// Set gray scale voltage to adjust gamma
+	{ 0xd0, 0x0c }, // NGAMVR0
+	{ 0xd1, 0x17 }, // NGAMVR0
+	{ 0xd2, 0x14 }, // NGAMVR1
+	{ 0xd3, 0x2e }, // NGAMVR2
+	{ 0xd4, 0x32 }, // NGAMVR3
+	{ 0xd5, 0x3c }, // NGAMVR4
+	{ 0xd6, 0x22 }, // NGAMPR0
+	{ 0xd7, 0x3d }, // NGAMPR1
+	{ 0xd8, 0x0d }, // NGAMPK0
+	{ 0xd9, 0x07 }, // NGAMPK1
+	{ 0xda, 0x13 }, // NGAMPK2
+	{ 0xdb, 0x13 }, // NGAMPK3
+	{ 0xdc, 0x11 }, // NGAMPK4
+	{ 0xdd, 0x15 }, // NGAMPK5
+	{ 0xde, 0x19 }, // NGAMPK6
+	{ 0xdf, 0x10 }, // NGAMPK7
+	{ 0xe0, 0x17 }, // NGAMPK8
+	{ 0xe1, 0x0a }, // NGAMPK9
+	// EXTC Command set enable, select page 3
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x03 },
+	// Set various timing settings
+	{ 0x00, 0x2a }, // GIP_VST_1
+	{ 0x01, 0x2a }, // GIP_VST_2
+	{ 0x02, 0x2a }, // GIP_VST_3
+	{ 0x03, 0x2a }, // GIP_VST_4
+	{ 0x04, 0x61 }, // GIP_VST_5
+	{ 0x05, 0x80 }, // GIP_VST_6
+	{ 0x06, 0xc7 }, // GIP_VST_7
+	{ 0x07, 0x01 }, // GIP_VST_8
+	{ 0x08, 0x03 }, // GIP_VST_9
+	{ 0x09, 0x04 }, // GIP_VST_10
+	{ 0x70, 0x22 }, // GIP_ECLK1
+	{ 0x71, 0x80 }, // GIP_ECLK2
+	{ 0x30, 0x2a }, // GIP_CLK_1
+	{ 0x31, 0x2a }, // GIP_CLK_2
+	{ 0x32, 0x2a }, // GIP_CLK_3
+	{ 0x33, 0x2a }, // GIP_CLK_4
+	{ 0x34, 0x61 }, // GIP_CLK_5
+	{ 0x35, 0xc5 }, // GIP_CLK_6
+	{ 0x36, 0x80 }, // GIP_CLK_7
+	{ 0x37, 0x23 }, // GIP_CLK_8
+	{ 0x40, 0x03 }, // GIP_CLKA_1
+	{ 0x41, 0x04 }, // GIP_CLKA_2
+	{ 0x42, 0x05 }, // GIP_CLKA_3
+	{ 0x43, 0x06 }, // GIP_CLKA_4
+	{ 0x44, 0x11 }, // GIP_CLKA_5
+	{ 0x45, 0xe8 }, // GIP_CLKA_6
+	{ 0x46, 0xe9 }, // GIP_CLKA_7
+	{ 0x47, 0x11 }, // GIP_CLKA_8
+	{ 0x48, 0xea }, // GIP_CLKA_9
+	{ 0x49, 0xeb }, // GIP_CLKA_10
+	{ 0x50, 0x07 }, // GIP_CLKB_1
+	{ 0x51, 0x08 }, // GIP_CLKB_2
+	{ 0x52, 0x09 }, // GIP_CLKB_3
+	{ 0x53, 0x0a }, // GIP_CLKB_4
+	{ 0x54, 0x11 }, // GIP_CLKB_5
+	{ 0x55, 0xec }, // GIP_CLKB_6
+	{ 0x56, 0xed }, // GIP_CLKB_7
+	{ 0x57, 0x11 }, // GIP_CLKB_8
+	{ 0x58, 0xef }, // GIP_CLKB_9
+	{ 0x59, 0xf0 }, // GIP_CLKB_10
+	// Map internal GOA signals to GOA output pad
+	{ 0xb1, 0x01 }, // PANELD2U2
+	{ 0xb4, 0x15 }, // PANELD2U5
+	{ 0xb5, 0x16 }, // PANELD2U6
+	{ 0xb6, 0x09 }, // PANELD2U7
+	{ 0xb7, 0x0f }, // PANELD2U8
+	{ 0xb8, 0x0d }, // PANELD2U9
+	{ 0xb9, 0x0b }, // PANELD2U10
+	{ 0xba, 0x00 }, // PANELD2U11
+	{ 0xc7, 0x02 }, // PANELD2U24
+	{ 0xca, 0x17 }, // PANELD2U27
+	{ 0xcb, 0x18 }, // PANELD2U28
+	{ 0xcc, 0x0a }, // PANELD2U29
+	{ 0xcd, 0x10 }, // PANELD2U30
+	{ 0xce, 0x0e }, // PANELD2U31
+	{ 0xcf, 0x0c }, // PANELD2U32
+	{ 0xd0, 0x00 }, // PANELD2U33
+	// Map internal GOA signals to GOA output pad
+	{ 0x81, 0x00 }, // PANELU2D2
+	{ 0x84, 0x15 }, // PANELU2D5
+	{ 0x85, 0x16 }, // PANELU2D6
+	{ 0x86, 0x10 }, // PANELU2D7
+	{ 0x87, 0x0a }, // PANELU2D8
+	{ 0x88, 0x0c }, // PANELU2D9
+	{ 0x89, 0x0e }, // PANELU2D10
+	{ 0x8a, 0x02 }, // PANELU2D11
+	{ 0x97, 0x00 }, // PANELU2D24
+	{ 0x9a, 0x17 }, // PANELU2D27
+	{ 0x9b, 0x18 }, // PANELU2D28
+	{ 0x9c, 0x0f }, // PANELU2D29
+	{ 0x9d, 0x09 }, // PANELU2D30
+	{ 0x9e, 0x0b }, // PANELU2D31
+	{ 0x9f, 0x0d }, // PANELU2D32
+	{ 0xa0, 0x01 }, // PANELU2D33
+	// EXTC Command set enable, select page 2
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x02 },
+	// Unknown registers
+	{ 0x01, 0x01 },
+	{ 0x02, 0xda },
+	{ 0x03, 0xba },
+	{ 0x04, 0xa8 },
+	{ 0x05, 0x9a },
+	{ 0x06, 0x70 },
+	{ 0x07, 0xff },
+	{ 0x08, 0x91 },
+	{ 0x09, 0x90 },
+	{ 0x0a, 0xff },
+	{ 0x0b, 0x8f },
+	{ 0x0c, 0x60 },
+	{ 0x0d, 0x58 },
+	{ 0x0e, 0x48 },
+	{ 0x0f, 0x38 },
+	{ 0x10, 0x2b },
+	// EXTC Command set enable, select page 0
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x00 },
+	// Display Access Control
+	{ 0x36, 0x0a }, // bgr = 1, ss = 1, gs = 0
+};
+
 static inline struct nv3052c *to_nv3052c(struct drm_panel *panel)
 {
 	return container_of(panel, struct nv3052c, panel);
@@ -460,6 +655,21 @@ static const struct drm_display_mode ltk035c5444t_modes[] = {
 	},
 };
 
+static const struct drm_display_mode fs035vg158_modes[] = {
+	{ /* 60 Hz */
+		.clock = 21000,
+		.hdisplay = 640,
+		.hsync_start = 640 + 34,
+		.hsync_end = 640 + 34 + 4,
+		.htotal = 640 + 34 + 4 + 20,
+		.vdisplay = 480,
+		.vsync_start = 480 + 12,
+		.vsync_end = 480 + 12 + 4,
+		.vtotal = 480 + 12 + 4 + 6,
+		.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	},
+};
+
 static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
 	.display_modes = ltk035c5444t_modes,
 	.num_modes = ARRAY_SIZE(ltk035c5444t_modes),
@@ -471,14 +681,27 @@ static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
 	.panel_regs_len = ARRAY_SIZE(ltk035c5444t_panel_regs),
 };
 
+static const struct nv3052c_panel_info fs035vg158_panel_info = {
+	.display_modes = fs035vg158_modes,
+	.num_modes = ARRAY_SIZE(fs035vg158_modes),
+	.width_mm = 70,
+	.height_mm = 53,
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.panel_regs = fs035vg158_panel_regs,
+	.panel_regs_len = ARRAY_SIZE(fs035vg158_panel_regs),
+};
+
 static const struct spi_device_id nv3052c_ids[] = {
 	{ "ltk035c5444t", },
+	{ "fs035vg158", },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(spi, nv3052c_ids);
 
 static const struct of_device_id nv3052c_of_match[] = {
 	{ .compatible = "leadtek,ltk035c5444t", .data = &ltk035c5444t_panel_info },
+	{ .compatible = "fascontek,fs035vg158", .data = &fs035vg158_panel_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, nv3052c_of_match);
-- 
2.42.0


