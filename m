Return-Path: <devicetree+bounces-52953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10288A848
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEB931C6085B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 207366F06B;
	Mon, 25 Mar 2024 13:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k4C94c8L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BD06CDCC
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374612; cv=none; b=SB3zvb5x10S85dmafwRJjUgGy5L98o5g3pLiFAWD9zvl2BzxymKR1MtIUIcFc54BKAnLFxPiFJe7UjPbSa/PIVJ6GEKpcElcKV5Keupo0ryhgp0tJ7P8Dr9yqWXIz4ZC/CXX38H1ZT2znhBG/K2A2sULdZFsQ0qAPqguQIrVerQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374612; c=relaxed/simple;
	bh=ha9aIj1elfOAcmxGXV6a8UFw91+3fEmLdncDYeCTnmE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ezBXLlKm+X+PqbFkUfizY28UFqpR/oipdBx8P+zX0yFjOVcKg2ByZTQB1L3N2pa+pSGc5lPCqk0o8Zg6uIrw+Fx5Lw57IE79jLmXYn3iOEDF+T6CnCrQL24BDN6r1d07zK1E0G0L9jCX1+l84dFoP4hGWvEix81av+ohgJkL7bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k4C94c8L; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6e50e8dcc72so1798459a34.3
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374609; x=1711979409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZ8I/B+6mEM+116M4DIyR6SirHqDJuaLw9lcy//WX3A=;
        b=k4C94c8LAAQCSwRe5D5ISseYFrdawb4W9QmYOt9dzBY8OnDllcWBQ5C91xuSZcVSJ2
         WiQlWmPQ4QxBdrzMw64IZcnLmKznUiTExmEKLZzh9O7OG2pp/FavVPIGklBAKnVeT+3u
         8bUdjkcRvoWH4rmvW2nQHfd9xGQd+3ZzwgEa8r4ws/KLncjOoMtDd04wkNQ4ev8RDt/y
         EabQZmCYWb4MRjHCrdKCINvu90A37TXK0j5lCphhrgDkz6mTwEq0BVlfGiMJOgyektWY
         Wy5aX9xNUVSKZctEdMHcodCnYgZe2JQ5e/1B6MvGLRJabNHdPmOYsXCkeLSUG6uyv2Ey
         PYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374609; x=1711979409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZ8I/B+6mEM+116M4DIyR6SirHqDJuaLw9lcy//WX3A=;
        b=UK5bFog6xZrse+kq9S1F9VyK77LnBgPNOU5UCXS0tBGHznXwvV2n63PzIR114SCqyq
         ATr3i445uHoJ8SAdkF9kr2AdEuuxgy2DwiB9HWmYy3Xa02rqqxM1Eg0IvX7qUMuskpER
         AMuDj5L/ilnOpOouNIdByjlvsH2+/Tcg6Q2YIShXeie3rmvg3lkIW/VujxAUSTG2VmP5
         wGQc4s9sdK+7qebiwTFC5gMgm4gWxfaQq3ByzlQgxkM+fEDEcXUN03+MBkVvEoh7uQVg
         DcwANvzF75JfIIL6kLL+UI+WwaoKfsi99RxgFyIl1OoajQ5ZTOe9ZHlm9eHNdh/svIba
         egJw==
X-Forwarded-Encrypted: i=1; AJvYcCVS6Ny/QuTEpMuUmEHhFFHeXy6851Bih/b4I5xrFlxgHHR/l/kTpP0CozyOSFy+eknc816F8zvz/KlL9/g+/VqjfitFiHWnzTCfsw==
X-Gm-Message-State: AOJu0YxNCbdTPxHVFQgAaDlIGt9a1TYH8/e+9ha90wEXKGlq5hhLDehy
	BAwGP51dcd+FEHOGi+2/kgy+EHDzjkLeK7YRd7BRFwJXmrX8IbGiPbkHNkF3
X-Google-Smtp-Source: AGHT+IFw0aRgzuj/ozXB1DR5+V3PMgi7I/Nei+XmYatRDtf2qOj6MyvsNUYaAak5CZgDTgQCqoq5Bw==
X-Received: by 2002:a9d:4e97:0:b0:6e4:e483:863f with SMTP id v23-20020a9d4e97000000b006e4e483863fmr7712698otk.23.1711374609412;
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] drm/panel: st7703: Add GameForce Chi Panel Support
Date: Mon, 25 Mar 2024 08:49:57 -0500
Message-Id: <20240325134959.11807-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The GameForce Chi is a handheld device with a 3.5" 640x480 ST7703 based
display panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index a3e142f156d5..7d8302cca091 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -612,6 +612,92 @@ static const struct st7703_panel_desc rgb10max3_panel_desc = {
 	.init_sequence = rgb10max3_panel_init_sequence,
 };
 
+static int gameforcechi_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/*
+	 * Init sequence was supplied by the panel vendor. Panel will not
+	 * respond to commands until it is brought out of sleep mode first.
+	 */
+
+	mipi_dsi_dcs_exit_sleep_mode(dsi);
+	msleep(250);
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x31, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x91, 0x0a, 0x00,
+			       0x00, 0x02, 0x4f, 0xd1, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x0c, 0x10, 0x0a,
+			       0x50, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x08, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x00, 0x13, 0xf0);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
+			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x53, 0x00, 0x1e,
+			       0x1e, 0x77, 0xe1, 0xcc, 0xdd, 0x67, 0x77, 0x33,
+			       0x33);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x10, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x6c, 0x7c);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0x08, 0x00, 0x0e, 0x00,
+			       0x00, 0xb0, 0xb1, 0x11, 0x31, 0x23, 0x28, 0x10,
+			       0xb0, 0xb1, 0x27, 0x08, 0x00, 0x04, 0x02, 0x00,
+			       0x00, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00,
+			       0x88, 0x88, 0xba, 0x60, 0x24, 0x08, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xba, 0x71, 0x35,
+			       0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
+			       0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x97, 0x0a, 0x82, 0x02,
+			       0x13, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x80, 0x88, 0xba, 0x17, 0x53, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x81, 0x88, 0xba, 0x06, 0x42,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x10,
+			       0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x07, 0x0b,
+			       0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0x0a, 0x0b,
+			       0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18, 0x00, 0x07,
+			       0x0b, 0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0xa0,
+			       0x0b, 0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18);
+
+	return 0;
+}
+
+static const struct drm_display_mode gameforcechi_mode = {
+	.hdisplay	= 640,
+	.hsync_start	= 640 + 40,
+	.hsync_end	= 640 + 40 + 2,
+	.htotal		= 640 + 40 + 2 + 80,
+	.vdisplay	= 480,
+	.vsync_start	= 480 + 17,
+	.vsync_end	= 480 + 17 + 5,
+	.vtotal		= 480 + 17 + 5 + 13,
+	.clock		= 23546,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 71,
+	.height_mm	= 53,
+};
+
+static const struct st7703_panel_desc gameforcechi_desc = {
+	.mode = &gameforcechi_mode,
+	.lanes = 2,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = gameforcechi_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -887,6 +973,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "gameforce,chi-panel", .data = &gameforcechi_desc },
 	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
 	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
-- 
2.34.1


