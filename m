Return-Path: <devicetree+bounces-23220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6F80A7D5
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9D8B1F21199
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C255832C97;
	Fri,  8 Dec 2023 15:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bcUSnMQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CA161732
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:48:54 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-59052ab970eso883460eaf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702050533; x=1702655333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irwlGKZ3Ivo94UJ6LKl+yTmlgkjtfS15iquU/V0K1B0=;
        b=bcUSnMQzGfPpI31zmdNcfERQZbIJ1s6//HtxanBRU8Yx3OcQlC+3LAFX+s2QxlZryZ
         1zGMZhD/FUxrnqOs2SZX25WgQHU7XGnP+kVn39HSDaIHJYzfCYsrGv+PA6DpZT6asTdx
         MC2m9iuB0Awc9M6iIUYCIYHHxHvmSkCrRLl9T/oexcZ1DFrtymvToBtXMaibZqBEP/gY
         Tupp3ogxriTDwOSDw3sQgYAlJR3zvfHyswXfQyctLyOPk3Z0v/wY9kLMeMZA4mwqqH0w
         /jP8M/TL/srZnO/rH0NhHt5L55dlV2RpZlEoIhYA+XzNM+CEgShIFgbty2w+Wb30TWlu
         5jng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702050533; x=1702655333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=irwlGKZ3Ivo94UJ6LKl+yTmlgkjtfS15iquU/V0K1B0=;
        b=Ep/gUGVsAcQ6gvJkPosUcWYxoSEBqyRt3Wvv1nmzQYA0Km1z2tsUdwh0qcQDm1DMoD
         n1U/hSdC//35NjJLICYy4Uho0fl9Ek2U2kIJsLld/NM7RXYydE05HRr9qat8WfrFYqC6
         5gy/dLi6WmZXjP2MUfTrokhqOjwyYvjij+BRdkAfmW+UCG8fWNwE9DE93SDMD4QaYOb8
         0L6kuC73Ub/Oa/h+SclcRyPebVv17vIl7w4I0qb6Asnf3N3O4uKZGeVpLQQxL0c29UD+
         Wn4/Hf4hKYscWOJMEZ5N7lglqBYrRyuklA6FUHZGEtLzSUK/H02oDTiA11nDJavMQjHh
         salw==
X-Gm-Message-State: AOJu0YxmasbhbqqRtPapOG/BfMs7VQ7cJXCJMEmxS6vUZvD2nkX+ri9d
	lis7Xk72Un4Cqcysu+AQFwIiNMcZqJY=
X-Google-Smtp-Source: AGHT+IFin/Yi5SeQj3Hzl9UbgH3czKI4N3wsbZddWUS82YWGr+pe/PBgW49eSU1WszYtgdbvSCtAxA==
X-Received: by 2002:a05:6870:9d94:b0:1fb:788:e8bd with SMTP id pv20-20020a0568709d9400b001fb0788e8bdmr476698oab.56.1702050533620;
        Fri, 08 Dec 2023 07:48:53 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id os25-20020a0568707d1900b001fb28cd0e9asm444624oab.3.2023.12.08.07.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:48:53 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	linus.walleij@linaro.org,
	marex@denx.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] drm/panel: st7701: Add Anbernic RG-ARC Panel Support
Date: Fri,  8 Dec 2023 09:48:47 -0600
Message-Id: <20231208154847.130615-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231208154847.130615-1-macroalpha82@gmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RG-ARC is a series of 2 handheld devices, each with a 4
inch 480x640 display. Add support for the display.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 136 ++++++++++++++++++
 1 file changed, 136 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index 036ac403ed21..421eb4592b61 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -423,6 +423,42 @@ static void kd50t048a_gip_sequence(struct st7701 *st7701)
 		   0xFF, 0xFF, 0xFF, 0xFF, 0x10, 0x45, 0x67, 0x98, 0xBA);
 }
 
+static void rg_arc_gip_sequence(struct st7701 *st7701)
+{
+	st7701_switch_cmd_bkx(st7701, true, 3);
+	ST7701_DSI(st7701, 0xEF, 0x08);
+	st7701_switch_cmd_bkx(st7701, true, 0);
+	ST7701_DSI(st7701, 0xC7, 0x04);
+	ST7701_DSI(st7701, 0xCC, 0x38);
+	st7701_switch_cmd_bkx(st7701, true, 1);
+	ST7701_DSI(st7701, 0xB9, 0x10);
+	ST7701_DSI(st7701, 0xBC, 0x03);
+	ST7701_DSI(st7701, 0xC0, 0x89);
+	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_DSI(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
+		   0x00, 0x00, 0x20, 0x20);
+	ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		   0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
+	ST7701_DSI(st7701, 0xE4, 0x22, 0x00);
+	ST7701_DSI(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0xA0,
+		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
+	ST7701_DSI(st7701, 0xE7, 0x22, 0x00);
+	ST7701_DSI(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0xA0,
+		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF,
+		   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB0, 0x54, 0xAF);
+	ST7701_DSI(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
+	st7701_switch_cmd_bkx(st7701, false, 0);
+	ST7701_DSI(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
+	ST7701_DSI(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
+	ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
+	msleep(120);
+}
+
 static int st7701_prepare(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
@@ -839,6 +875,105 @@ static const struct st7701_panel_desc kd50t048a_desc = {
 	.gip_sequence = kd50t048a_gip_sequence,
 };
 
+static const struct drm_display_mode rg_arc_mode = {
+	.clock          = 25600,
+
+	.hdisplay	= 480,
+	.hsync_start	= 480 + 60,
+	.hsync_end	= 480 + 60 + 42,
+	.htotal         = 480 + 60 + 42 + 60,
+
+	.vdisplay	= 640,
+	.vsync_start	= 640 + 10,
+	.vsync_end	= 640 + 10 + 4,
+	.vtotal         = 640 + 10 + 4 + 16,
+
+	.width_mm	= 63,
+	.height_mm	= 84,
+
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct st7701_panel_desc rg_arc_desc = {
+	.mode = &rg_arc_mode,
+	.lanes = 2,
+	.format = MIPI_DSI_FMT_RGB888,
+	.panel_sleep_delay = 80,
+
+	.pv_gamma = {
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
+	},
+	.nv_gamma = {
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
+	},
+	.nlinv = 0,
+	.vop_uv = 4500000,
+	.vcom_uv = 762500,
+	.vgh_mv = 15000,
+	.vgl_mv = -9510,
+	.avdd_mv = 6600,
+	.avcl_mv = -4400,
+	.gamma_op_bias = OP_BIAS_MIDDLE,
+	.input_op_bias = OP_BIAS_MIN,
+	.output_op_bias = OP_BIAS_MIN,
+	.t2d_ns = 1600,
+	.t3d_ns = 10400,
+	.eot_en = true,
+	.gip_sequence = rg_arc_gip_sequence,
+};
+
 static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
 {
 	const struct st7701_panel_desc *desc;
@@ -917,6 +1052,7 @@ static void st7701_dsi_remove(struct mipi_dsi_device *dsi)
 }
 
 static const struct of_device_id st7701_of_match[] = {
+	{ .compatible = "anbernic,rg-arc-panel", .data = &rg_arc_desc },
 	{ .compatible = "densitron,dmt028vghmcmi-1a", .data = &dmt028vghmcmi_1a_desc },
 	{ .compatible = "elida,kd50t048a", .data = &kd50t048a_desc },
 	{ .compatible = "techstar,ts8550b", .data = &ts8550b_desc },
-- 
2.34.1


