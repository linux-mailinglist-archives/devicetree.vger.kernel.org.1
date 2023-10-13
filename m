Return-Path: <devicetree+bounces-8579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E38767C8D2A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 20:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58999B20B62
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082A91C290;
	Fri, 13 Oct 2023 18:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UcLERC1U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ED217980
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 18:39:29 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6EF5C0
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3b2b1b25547so507825b6e.3
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222367; x=1697827167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XpG74RYAbsyeZPWO/cKaZxYQssK+OjpMXseuuKjO9Ig=;
        b=UcLERC1UBfED+giv6qjgjdkmO0gWBELqtpJXX75OYbfWrS8SExmJy+BwS7fHD0BdlA
         kX8VjDVAlrzINs8YWDAvHapeDy8915EBOcinzsd5Hr/z1Jb2Te8BBWRJuM2tNnRIIOwV
         GpdOPPMOjOgMngJ9vvDOzMQmKPXL5JELm+DX/opuFpZSTOsu8PBZlKSmg183poY25Fga
         sSihetDM6abCvOh3+bSlOJvH3HxTlAqvIA0py+qKFXYFzy8pxC1L7gB/gSQ6lXRBZg9D
         VbGkyXP8qpNy4cXURbHBgyIHDyMLF22mPfwVvD9W0iw+d54xS1mmNUkgJBxgtuQqPgTF
         YvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222367; x=1697827167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpG74RYAbsyeZPWO/cKaZxYQssK+OjpMXseuuKjO9Ig=;
        b=e1vPLeB0hq6TO9aJTI41VAu4ub4CZTXF9a7EgrzoMKmLm+R7Rf7scSKVDHkR3Qwf7v
         LULOWZbwvPIAl8XesKDYqZRacMgpbLDSIwuxzCwPvagYKdSzcXttu8FkS28MBUqEDfOf
         WnzFj2xakfNefTuujiu5E7+G2w7UHZs1kEgeZAn0Qsg5Wh+NlgziwjRE9b2HvF/O1KA9
         2iH8MrKPiDbINWzEulckws45ONlUqgGAMUzzQmT+eNfT0Qj1ynWobe1HR0EAgnhDETZD
         +J6qEV10VydPx835+2lTH2zk6UZUMw06ouAYDJqlWDj8WUDTqWuDyIzdmfJq/79cLWup
         Kq3Q==
X-Gm-Message-State: AOJu0YyD0Cl3Kzx4KZfeu9Gl/AmS2Obn+apAJEQq9E6FN4oUkDNx4fpR
	wgfsp6/V92Qi7e+0EILIcdE=
X-Google-Smtp-Source: AGHT+IHCXxF7b1a3M3ZOkohw9lmflcVGCXq9oBMeHI9psiYwcW1lfGHZUQH76xDQHNnig2e2Hmhpxg==
X-Received: by 2002:a05:6808:1823:b0:3ad:9540:5475 with SMTP id bh35-20020a056808182300b003ad95405475mr35536504oib.45.1697222367085;
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Date: Fri, 13 Oct 2023 13:39:16 -0500
Message-Id: <20231013183918.225666-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RGB30 4 inch panel is a 4 inch 720x720 DSI panel used in
the Powkiddy RGB30 handheld gaming device. Add support for it.

TODO: The panel seems to not resume properly from suspend. I've
confirmed on the other ST7703 based devices it works correctly.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 6a3945639535..a9892a4447fb 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -433,6 +433,94 @@ static const struct st7703_panel_desc rg353v2_desc = {
 	.init_sequence = rg353v2_init_sequence,
 };
 
+static int rgb30panel_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/* Init sequence extracted from Powkiddy RGB30 BSP kernel. */
+
+	/*
+	 * For some reason this specific panel must be taken out of sleep
+	 * before the full init sequence, or else it will not display.
+	 */
+	mipi_dsi_dcs_exit_sleep_mode(dsi);
+	msleep(250);
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
+			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
+			       0x63);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
+			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x12, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x3c, 0x12, 0x30);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
+			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x36, 0x00, 0x32,
+			       0x32, 0x77, 0xf1, 0xcc, 0xcc, 0x77, 0x77, 0x33,
+			       0x33);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x0a, 0x0a);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x88, 0x88);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x0a, 0x10,
+			       0x0f, 0xa1, 0x80, 0x12, 0x31, 0x23, 0x47, 0x86,
+			       0xa1, 0x80, 0x47, 0x08, 0x00, 0x00, 0x0d, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00,
+			       0x48, 0x02, 0x8b, 0xaf, 0x46, 0x02, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x48, 0x13, 0x8b, 0xaf, 0x57,
+			       0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x96, 0x12, 0x01, 0x01,
+			       0x01, 0x78, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x4f, 0x31, 0x8b, 0xa8, 0x31, 0x75, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x4f, 0x20, 0x8b, 0xa8, 0x20,
+			       0x64, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x00,
+			       0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x40, 0xa1, 0x80, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x0a, 0x0f,
+			       0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d, 0x10,
+			       0x13, 0x15, 0x14, 0x15, 0x10, 0x17, 0x00, 0x0a,
+			       0x0f, 0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d,
+			       0x10, 0x13, 0x15, 0x14, 0x15, 0x10, 0x17);
+
+	return 0;
+}
+
+static const struct drm_display_mode rgb30panel_mode = {
+	.hdisplay	= 720,
+	.hsync_start	= 720 + 45,
+	.hsync_end	= 720 + 45 + 4,
+	.htotal		= 720 + 45 + 4 + 45,
+	.vdisplay	= 720,
+	.vsync_start	= 720 + 15,
+	.vsync_end	= 720 + 15 + 3,
+	.vtotal		= 720 + 15 + 3 + 11,
+	.clock		= 36570,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 76,
+	.height_mm	= 76,
+};
+
+static const struct st7703_panel_desc rgb30panel_desc = {
+	.mode = &rgb30panel_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = rgb30panel_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -694,6 +782,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
 	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
 	{ /* sentinel */ }
-- 
2.34.1


