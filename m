Return-Path: <devicetree+bounces-18394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC3E7F64E1
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50EC628187C
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5610B3FB3D;
	Thu, 23 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631F7CB
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 09:08:12 -0800 (PST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r6DBS-0001A4-70; Thu, 23 Nov 2023 18:08:10 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 23 Nov 2023 18:08:06 +0100
Subject:
 [PATCH 3/3] drm/panel: ilitek-ili9881c: Add Ampire AM8001280G LCD panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id:
 <20231123-drm-panel-ili9881c-am8001280g-v1-3-fdf4d624c211@pengutronix.de>
References:
 <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
In-Reply-To:
 <20231123-drm-panel-ili9881c-am8001280g-v1-0-fdf4d624c211@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
 kernel@pengutronix.de, Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.12-dev-aab37
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add support for Ampire AM8001280G LCD panels.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 223 ++++++++++++++++++++++++++
 1 file changed, 223 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
index 0c911ed9141b..2ffe5f68a890 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
@@ -830,6 +830,203 @@ static const struct ili9881c_instr w552946ab_init[] = {
 	ILI9881C_SWITCH_PAGE_INSTR(0),
 };
 
+static const struct ili9881c_instr am8001280g_init[] = {
+	ILI9881C_SWITCH_PAGE_INSTR(3),
+	ILI9881C_COMMAND_INSTR(0x01, 0x00),
+	ILI9881C_COMMAND_INSTR(0x02, 0x00),
+	ILI9881C_COMMAND_INSTR(0x03, 0x73),
+	ILI9881C_COMMAND_INSTR(0x04, 0xD3),
+	ILI9881C_COMMAND_INSTR(0x05, 0x00),
+	ILI9881C_COMMAND_INSTR(0x06, 0x0A),
+	ILI9881C_COMMAND_INSTR(0x07, 0x0E),
+	ILI9881C_COMMAND_INSTR(0x08, 0x00),
+	ILI9881C_COMMAND_INSTR(0x09, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0a, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0b, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0c, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0d, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0e, 0x01),
+	ILI9881C_COMMAND_INSTR(0x0f, 0x01),
+	ILI9881C_COMMAND_INSTR(0x10, 0x01),
+	ILI9881C_COMMAND_INSTR(0x11, 0x00),
+	ILI9881C_COMMAND_INSTR(0x12, 0x00),
+	ILI9881C_COMMAND_INSTR(0x13, 0x00),
+	ILI9881C_COMMAND_INSTR(0x14, 0x00),
+	ILI9881C_COMMAND_INSTR(0x15, 0x00),
+	ILI9881C_COMMAND_INSTR(0x16, 0x00),
+	ILI9881C_COMMAND_INSTR(0x17, 0x00),
+	ILI9881C_COMMAND_INSTR(0x18, 0x00),
+	ILI9881C_COMMAND_INSTR(0x19, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1a, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1b, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x1e, 0x40),
+	ILI9881C_COMMAND_INSTR(0x1f, 0x80),
+	ILI9881C_COMMAND_INSTR(0x20, 0x06),
+	ILI9881C_COMMAND_INSTR(0x21, 0x01),
+	ILI9881C_COMMAND_INSTR(0x22, 0x00),
+	ILI9881C_COMMAND_INSTR(0x23, 0x00),
+	ILI9881C_COMMAND_INSTR(0x24, 0x00),
+	ILI9881C_COMMAND_INSTR(0x25, 0x00),
+	ILI9881C_COMMAND_INSTR(0x26, 0x00),
+	ILI9881C_COMMAND_INSTR(0x27, 0x00),
+	ILI9881C_COMMAND_INSTR(0x28, 0x33),
+	ILI9881C_COMMAND_INSTR(0x29, 0x03),
+	ILI9881C_COMMAND_INSTR(0x2a, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2b, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2e, 0x00),
+	ILI9881C_COMMAND_INSTR(0x2f, 0x00),
+	ILI9881C_COMMAND_INSTR(0x30, 0x00),
+	ILI9881C_COMMAND_INSTR(0x31, 0x00),
+	ILI9881C_COMMAND_INSTR(0x32, 0x00),
+	ILI9881C_COMMAND_INSTR(0x33, 0x00),
+	ILI9881C_COMMAND_INSTR(0x34, 0x03),
+	ILI9881C_COMMAND_INSTR(0x35, 0x00),
+	ILI9881C_COMMAND_INSTR(0x36, 0x03),
+	ILI9881C_COMMAND_INSTR(0x37, 0x00),
+	ILI9881C_COMMAND_INSTR(0x38, 0x00),
+	ILI9881C_COMMAND_INSTR(0x39, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3a, 0x40),
+	ILI9881C_COMMAND_INSTR(0x3b, 0x40),
+	ILI9881C_COMMAND_INSTR(0x3c, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3d, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3e, 0x00),
+	ILI9881C_COMMAND_INSTR(0x3f, 0x00),
+	ILI9881C_COMMAND_INSTR(0x40, 0x00),
+	ILI9881C_COMMAND_INSTR(0x41, 0x00),
+	ILI9881C_COMMAND_INSTR(0x42, 0x00),
+	ILI9881C_COMMAND_INSTR(0x43, 0x00),
+	ILI9881C_COMMAND_INSTR(0x44, 0x00),
+
+	ILI9881C_COMMAND_INSTR(0x50, 0x01),
+	ILI9881C_COMMAND_INSTR(0x51, 0x23),
+	ILI9881C_COMMAND_INSTR(0x52, 0x45),
+	ILI9881C_COMMAND_INSTR(0x53, 0x67),
+	ILI9881C_COMMAND_INSTR(0x54, 0x89),
+	ILI9881C_COMMAND_INSTR(0x55, 0xab),
+	ILI9881C_COMMAND_INSTR(0x56, 0x01),
+	ILI9881C_COMMAND_INSTR(0x57, 0x23),
+	ILI9881C_COMMAND_INSTR(0x58, 0x45),
+	ILI9881C_COMMAND_INSTR(0x59, 0x67),
+	ILI9881C_COMMAND_INSTR(0x5a, 0x89),
+	ILI9881C_COMMAND_INSTR(0x5b, 0xab),
+	ILI9881C_COMMAND_INSTR(0x5c, 0xcd),
+	ILI9881C_COMMAND_INSTR(0x5d, 0xef),
+
+	ILI9881C_COMMAND_INSTR(0x5e, 0x11),
+	ILI9881C_COMMAND_INSTR(0x5f, 0x02),
+	ILI9881C_COMMAND_INSTR(0x60, 0x00),
+	ILI9881C_COMMAND_INSTR(0x61, 0x01),
+	ILI9881C_COMMAND_INSTR(0x62, 0x0D),
+	ILI9881C_COMMAND_INSTR(0x63, 0x0C),
+	ILI9881C_COMMAND_INSTR(0x64, 0x0F),
+	ILI9881C_COMMAND_INSTR(0x65, 0x0E),
+	ILI9881C_COMMAND_INSTR(0x66, 0x06),
+	ILI9881C_COMMAND_INSTR(0x67, 0x07),
+	ILI9881C_COMMAND_INSTR(0x68, 0x02),
+	ILI9881C_COMMAND_INSTR(0x69, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6a, 0x08),
+	ILI9881C_COMMAND_INSTR(0x6b, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6c, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6d, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6e, 0x02),
+	ILI9881C_COMMAND_INSTR(0x6f, 0x02),
+	ILI9881C_COMMAND_INSTR(0x70, 0x02),
+	ILI9881C_COMMAND_INSTR(0x71, 0x02),
+	ILI9881C_COMMAND_INSTR(0x72, 0x02),
+	ILI9881C_COMMAND_INSTR(0x73, 0x02),
+	ILI9881C_COMMAND_INSTR(0x74, 0x02),
+	ILI9881C_COMMAND_INSTR(0x75, 0x02),
+	ILI9881C_COMMAND_INSTR(0x76, 0x00),
+	ILI9881C_COMMAND_INSTR(0x77, 0x01),
+	ILI9881C_COMMAND_INSTR(0x78, 0x0D),
+	ILI9881C_COMMAND_INSTR(0x79, 0x0C),
+	ILI9881C_COMMAND_INSTR(0x7a, 0x0F),
+	ILI9881C_COMMAND_INSTR(0x7b, 0x0E),
+	ILI9881C_COMMAND_INSTR(0x7c, 0x06),
+	ILI9881C_COMMAND_INSTR(0x7d, 0x07),
+	ILI9881C_COMMAND_INSTR(0x7e, 0x02),
+	ILI9881C_COMMAND_INSTR(0x7f, 0x02),
+	ILI9881C_COMMAND_INSTR(0x80, 0x08),
+	ILI9881C_COMMAND_INSTR(0x81, 0x02),
+	ILI9881C_COMMAND_INSTR(0x82, 0x02),
+	ILI9881C_COMMAND_INSTR(0x83, 0x02),
+	ILI9881C_COMMAND_INSTR(0x84, 0x02),
+	ILI9881C_COMMAND_INSTR(0x85, 0x02),
+	ILI9881C_COMMAND_INSTR(0x86, 0x02),
+	ILI9881C_COMMAND_INSTR(0x87, 0x02),
+	ILI9881C_COMMAND_INSTR(0x88, 0x02),
+	ILI9881C_COMMAND_INSTR(0x89, 0x02),
+	ILI9881C_COMMAND_INSTR(0x8A, 0x02),
+
+	ILI9881C_SWITCH_PAGE_INSTR(4),
+	ILI9881C_COMMAND_INSTR(0x6c, 0x15),
+	ILI9881C_COMMAND_INSTR(0x6e, 0x30),
+	ILI9881C_COMMAND_INSTR(0x6f, 0x33),
+	ILI9881C_COMMAND_INSTR(0x8d, 0x15),
+	ILI9881C_COMMAND_INSTR(0x3a, 0xa4),
+	ILI9881C_COMMAND_INSTR(0x87, 0xba),
+	ILI9881C_COMMAND_INSTR(0x26, 0x76),
+	ILI9881C_COMMAND_INSTR(0xb2, 0xd1),
+
+	ILI9881C_SWITCH_PAGE_INSTR(1),
+	ILI9881C_COMMAND_INSTR(0x22, 0x0A),
+	ILI9881C_COMMAND_INSTR(0x31, 0x0B),
+	ILI9881C_COMMAND_INSTR(0x50, 0xa5),
+	ILI9881C_COMMAND_INSTR(0x51, 0xa0),
+	ILI9881C_COMMAND_INSTR(0x53, 0x70),
+	ILI9881C_COMMAND_INSTR(0x55, 0x7A),
+	ILI9881C_COMMAND_INSTR(0x60, 0x14),
+
+	ILI9881C_COMMAND_INSTR(0xA0, 0x00),
+	ILI9881C_COMMAND_INSTR(0xA1, 0x53),
+	ILI9881C_COMMAND_INSTR(0xA2, 0x50),
+	ILI9881C_COMMAND_INSTR(0xA3, 0x20),
+	ILI9881C_COMMAND_INSTR(0xA4, 0x27),
+	ILI9881C_COMMAND_INSTR(0xA5, 0x33),
+	ILI9881C_COMMAND_INSTR(0xA6, 0x25),
+	ILI9881C_COMMAND_INSTR(0xA7, 0x25),
+	ILI9881C_COMMAND_INSTR(0xA8, 0xD4),
+	ILI9881C_COMMAND_INSTR(0xA9, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xAA, 0x2B),
+	ILI9881C_COMMAND_INSTR(0xAB, 0xB5),
+	ILI9881C_COMMAND_INSTR(0xAC, 0x19),
+	ILI9881C_COMMAND_INSTR(0xAD, 0x18),
+	ILI9881C_COMMAND_INSTR(0xAE, 0x53),
+	ILI9881C_COMMAND_INSTR(0xAF, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xB0, 0x25),
+	ILI9881C_COMMAND_INSTR(0xB1, 0x62),
+	ILI9881C_COMMAND_INSTR(0xB2, 0x6A),
+	ILI9881C_COMMAND_INSTR(0xB3, 0x31),
+
+	ILI9881C_COMMAND_INSTR(0xC0, 0x00),
+	ILI9881C_COMMAND_INSTR(0xC1, 0x53),
+	ILI9881C_COMMAND_INSTR(0xC2, 0x50),
+	ILI9881C_COMMAND_INSTR(0xC3, 0x20),
+	ILI9881C_COMMAND_INSTR(0xC4, 0x27),
+	ILI9881C_COMMAND_INSTR(0xC5, 0x33),
+	ILI9881C_COMMAND_INSTR(0xC6, 0x25),
+	ILI9881C_COMMAND_INSTR(0xC7, 0x25),
+	ILI9881C_COMMAND_INSTR(0xC8, 0xD4),
+	ILI9881C_COMMAND_INSTR(0xC9, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xCA, 0x2B),
+	ILI9881C_COMMAND_INSTR(0xCB, 0xB5),
+	ILI9881C_COMMAND_INSTR(0xCC, 0x19),
+	ILI9881C_COMMAND_INSTR(0xCD, 0x18),
+	ILI9881C_COMMAND_INSTR(0xCE, 0x53),
+	ILI9881C_COMMAND_INSTR(0xCF, 0x1A),
+	ILI9881C_COMMAND_INSTR(0xD0, 0x25),
+	ILI9881C_COMMAND_INSTR(0xD1, 0x62),
+	ILI9881C_COMMAND_INSTR(0xD2, 0x6A),
+	ILI9881C_COMMAND_INSTR(0xD3, 0x31),
+	ILI9881C_SWITCH_PAGE_INSTR(0),
+	ILI9881C_COMMAND_INSTR(MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x2c),
+	ILI9881C_COMMAND_INSTR(MIPI_DCS_WRITE_POWER_SAVE, 0x00),
+};
+
 static inline struct ili9881c *panel_to_ili9881c(struct drm_panel *panel)
 {
 	return container_of(panel, struct ili9881c, panel);
@@ -1014,6 +1211,23 @@ static const struct drm_display_mode w552946aba_default_mode = {
 	.height_mm	= 121,
 };
 
+static const struct drm_display_mode am8001280g_default_mode = {
+	.clock		= 67911,
+
+	.hdisplay	= 800,
+	.hsync_start	= 800 + 20,
+	.hsync_end	= 800 + 20 + 32,
+	.htotal		= 800 + 20 + 32 + 20,
+
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 6,
+	.vsync_end	= 1280 + 6 + 8,
+	.vtotal		= 1280 + 6 + 8 + 4,
+
+	.width_mm	= 94,
+	.height_mm	= 151,
+};
+
 static int ili9881c_get_modes(struct drm_panel *panel,
 			      struct drm_connector *connector)
 {
@@ -1147,11 +1361,20 @@ static const struct ili9881c_desc w552946aba_desc = {
 		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
 };
 
+static const struct ili9881c_desc am8001280g_desc = {
+	.init = am8001280g_init,
+	.init_length = ARRAY_SIZE(am8001280g_init),
+	.mode = &am8001280g_default_mode,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
+};
+
 static const struct of_device_id ili9881c_of_match[] = {
 	{ .compatible = "bananapi,lhr050h41", .data = &lhr050h41_desc },
 	{ .compatible = "feixin,k101-im2byl02", .data = &k101_im2byl02_desc },
 	{ .compatible = "tdo,tl050hdv35", .data = &tl050hdv35_desc },
 	{ .compatible = "wanchanglong,w552946aba", .data = &w552946aba_desc },
+	{ .compatible = "ampire,am8001280g", .data = &am8001280g_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ili9881c_of_match);

-- 
2.39.2

