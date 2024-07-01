Return-Path: <devicetree+bounces-81842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 241E491DAD6
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 11:00:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61EF2287AA5
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 09:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAAD84D25;
	Mon,  1 Jul 2024 08:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="KUqb+H7a"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27AE83CA0;
	Mon,  1 Jul 2024 08:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719824359; cv=none; b=c3K7boqGQBrjnoUKltbTE7rCRScnDFp0kVJsOy3sT/xn9KB4K9ko3/elWeZ9BXOY0HhKcja8r5NuTApa7l3T909QYXeX22fy1fGEoiFMmF+6JA0xfl1LbyA/nk8FZVPslJIruUmG7lcjFafFC6YobnJpOo7+XPgrk54B20/i6x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719824359; c=relaxed/simple;
	bh=efE61IVYXFWjsbD6av4gfkJoVTXG1P0ob32k8rOGXRU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Yzt3bEGC3aiZJp49R43z/YCIZhaUnYqnY/NBq4JrHkaX1JiQ7stl5HPG1KzOj2jgVcE3GafWxdfKSX74VdXTqN4zUHlNOxrAcXuA6KANxLpWUH6cErASCbdtwNrhgoQvTCzkqUo2sCvmWEgMcfYI7VvnBuyzhtO44qdOftXHE3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=KUqb+H7a; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1719824357; x=1751360357;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=efE61IVYXFWjsbD6av4gfkJoVTXG1P0ob32k8rOGXRU=;
  b=KUqb+H7aISoypwIA44hdUDzWkIfIcj6lrkJZxJdK2qrRGr/Lz4uwhmg7
   qZkVjsxSTNfmGxLkfmTrtKudmhRXMYsnxREooUaSTSIekaOEy8vJHrqkV
   yxB9QCjj0nv3kqj8uyex9JajC+C3MrPycxuAr1IB7Q+9ERpOXPEnZjBfT
   yUW0zg1WdpcEA6J/8MczqVE/In0QkopPsZvC0dop6kr883iQcN0gWYTU9
   m35EIGcKqlZcoFFA/Q6WYE+EC0ZM2wju7fhEHOaMIoeRgtZPiM1XVO0Jf
   rU2bkepRMfD63oENSPdRzsN3GL6adlW06gEX2TCd6kKL4U5zenius3n3Y
   Q==;
X-CSE-ConnectionGUID: T3Ozs11LSS25nP8hYlNUig==
X-CSE-MsgGUID: dEOOgQ/pTrGAwgvlpue0dw==
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; 
   d="scan'208";a="29328373"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 01 Jul 2024 01:59:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Jul 2024 01:59:05 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 1 Jul 2024 01:58:59 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <megi@xff.cz>, <javierm@redhat.com>, <neil.armstrong@linaro.org>,
	<quic_jesszhan@quicinc.com>, <sam@ravnborg.org>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <manikandan.m@microchip.com>
Subject: [PATCH v2 3/3] drm/panel: himax-hx8394: Add Support for Microchip AC40T08A MIPI Display Panel
Date: Mon, 1 Jul 2024 14:28:37 +0530
Message-ID: <20240701085837.50855-4-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240701085837.50855-1-manikandan.m@microchip.com>
References: <20240701085837.50855-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add support for the Microchip AC40T08A MIPI Display panel. This panel uses
a Himax HX8394 display controller and requires a vendor provided init
sequence. The display resolution is 720x1280@60Hz with width and height
of 76mm and 132mm respectively.

Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 151 +++++++++++++++++++++
 1 file changed, 151 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index d0e44f1f85d9..bf6bac5d5c12 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -339,6 +339,156 @@ static const struct hx8394_panel_desc powkiddy_x55_desc = {
 	.init_sequence = powkiddy_x55_init_sequence,
 };
 
+static int mchp_ac40t08a_init_sequence(struct hx8394 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/* DCS commands do not seem to be sent correclty without this delay */
+	msleep(20);
+
+	/* 5.19.8 SETEXTC: Set extension command (B9h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETEXTC,
+			       0xff, 0x83, 0x94);
+
+	/* 5.19.9 SETMIPI: Set MIPI control (BAh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETMIPI,
+			       0x63, 0x03, 0x68, 0x6b, 0xb2, 0xc0);
+
+	/* 5.19.2 SETPOWER: Set power (B1h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETPOWER,
+			       0x48, 0x12, 0x72, 0x09, 0x32, 0x54,
+			       0x71, 0x71, 0x57, 0x47);
+
+	/* 5.19.3 SETDISP: Set display related register (B2h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETDISP,
+			       0x00, 0x80, 0x64, 0x0c, 0x0d, 0x2f);
+
+	/* 5.19.4 SETCYC: Set display waveform cycles (B4h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETCYC,
+			       0x73, 0x74, 0x73, 0x74, 0x73, 0x74,
+			       0x01, 0x0c, 0x86, 0x75, 0x00, 0x3f,
+			       0x73, 0x74, 0x73, 0x74, 0x73, 0x74,
+			       0x01, 0x0c, 0x86);
+
+	/* 5.19.5 SETVCOM: Set VCOM voltage (B6h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETVCOM,
+			       0x6e, 0x6e);
+
+	/* 5.19.19 SETGIP0: Set GIP Option0 (D3h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETGIP0,
+			       0x00, 0x00, 0x07, 0x07, 0x40, 0x07,
+			       0x0c, 0x00, 0x08, 0x10, 0x08, 0x00,
+			       0x08, 0x54, 0x15, 0x0a, 0x05, 0x0a,
+			       0x02, 0x15, 0x06, 0x05, 0x06, 0x47,
+			       0x44, 0x0a, 0x0a, 0x4b, 0x10, 0x07,
+			       0x07, 0x0c, 0x40);
+
+	/* 5.19.20 Set GIP Option1 (D5h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETGIP1,
+			       0x1c, 0x1c, 0x1d, 0x1d, 0x00, 0x01,
+			       0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
+			       0x08, 0x09, 0x0a, 0x0b, 0x24, 0x25,
+			       0x18, 0x18, 0x26, 0x27, 0x18, 0x18,
+			       0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+			       0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+			       0x18, 0x18, 0x20, 0x21, 0x18, 0x18,
+			       0x18, 0x18);
+
+	/* 5.19.21 Set GIP Option2 (D6h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETGIP2,
+			       0x1c, 0x1c, 0x1d, 0x1d, 0x07, 0x06,
+			       0x05, 0x04, 0x03, 0x02, 0x01, 0x00,
+			       0x0b, 0x0a, 0x09, 0x08, 0x21, 0x20,
+			       0x18, 0x18, 0x27, 0x26, 0x18, 0x18,
+			       0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+			       0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+			       0x18, 0x18, 0x25, 0x24, 0x18, 0x18,
+			       0x18, 0x18);
+
+	/* 5.19.25 SETGAMMA: Set gamma curve related setting (E0h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETGAMMA,
+			       0x00, 0x0a, 0x15, 0x1b, 0x1e, 0x21,
+			       0x24, 0x22, 0x47, 0x56, 0x65, 0x66,
+			       0x6e, 0x82, 0x88, 0x8b, 0x9a, 0x9d,
+			       0x98, 0xa8, 0xb9, 0x5d, 0x5c, 0x61,
+			       0x66, 0x6a, 0x6f, 0x7f, 0x7f, 0x00,
+			       0x0a, 0x15, 0x1b, 0x1e, 0x21, 0x24,
+			       0x22, 0x47, 0x56, 0x65, 0x65, 0x6e,
+			       0x81, 0x87, 0x8b, 0x98, 0x9d, 0x99,
+			       0xa8, 0xba, 0x5d, 0x5d, 0x62, 0x67,
+			       0x6b, 0x72, 0x7f, 0x7f);
+
+	/* Unknown command, not listed in the HX8394-F datasheet (C0H) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_UNKNOWN1,
+			       0x1f, 0x73);
+
+	/* Set CABC control (C9h)*/
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETCABC,
+			       0x76, 0x00, 0x30);
+
+	/* 5.19.17 SETPANEL (CCh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETPANEL,
+			       0x0b);
+
+	/* Unknown command, not listed in the HX8394-F datasheet (D4h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_UNKNOWN3,
+			       0x02);
+
+	/* 5.19.11 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETREGBANK,
+			       0x02);
+
+	/* 5.19.11 Set register bank (D8h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_UNKNOWN4,
+			       0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+			       0xff, 0xff, 0xff, 0xff, 0xff, 0xff);
+
+	/* 5.19.11 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETREGBANK,
+			       0x00);
+
+	/* 5.19.11 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETREGBANK,
+			       0x01);
+
+	/* 5.19.2 SETPOWER: Set power (B1h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETPOWER,
+			       0x00);
+
+	/* 5.19.11 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_SETREGBANK,
+			       0x00);
+
+	/* Unknown command, not listed in the HX8394-F datasheet (C6h) */
+	mipi_dsi_dcs_write_seq(dsi, HX8394_CMD_UNKNOWN2,
+			       0xed);
+
+	return 0;
+}
+
+static const struct drm_display_mode mchp_ac40t08a_mode = {
+	.hdisplay    = 720,
+	.hsync_start = 720 + 12,
+	.hsync_end   = 720 + 12 + 24,
+	.htotal	     = 720 + 12 + 12 + 24,
+	.vdisplay    = 1280,
+	.vsync_start = 1280 + 13,
+	.vsync_end   = 1280 + 14,
+	.vtotal	     = 1280 + 14 + 13,
+	.clock	     = 60226,
+	.flags	     = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm    = 76,
+	.height_mm   = 132,
+};
+
+static const struct hx8394_panel_desc mchp_ac40t08a_desc = {
+	.mode = &mchp_ac40t08a_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = mchp_ac40t08a_init_sequence,
+};
+
 static int hx8394_enable(struct drm_panel *panel)
 {
 	struct hx8394 *ctx = panel_to_hx8394(panel);
@@ -556,6 +706,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi)
 static const struct of_device_id hx8394_of_match[] = {
 	{ .compatible = "hannstar,hsd060bhw4", .data = &hsd060bhw4_desc },
 	{ .compatible = "powkiddy,x55-panel", .data = &powkiddy_x55_desc },
+	{ .compatible = "microchip,ac40t08a-mipi-panel", .data = &mchp_ac40t08a_desc },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, hx8394_of_match);
-- 
2.25.1


