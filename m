Return-Path: <devicetree+bounces-139239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03953A14BF9
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 849C218888DC
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB531FBC82;
	Fri, 17 Jan 2025 09:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="YImXtnNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD891FAC40
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105439; cv=none; b=W1tAaZWOocFz4tSHJ3aQPVqE3c10pYoowBWz88viQyDe92pvnnRMEs0bPbxUezeG9Np72xqZi14CboV6HTR9Fgk3HWMoBcPBmjurbGnQoZiXP/VDQbVjy1cUnscGE9sAUhU8rEtBaLKRtiBx25/JcZ2l66yuL3x7lJAAAwUHTRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105439; c=relaxed/simple;
	bh=mBwmE5+8v8FAQku3M7xarj9Gjga7PuWSd6wZIabs1po=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pVr6xWS3U2AG803nF/dv8ptVuyHwJIA9Jirtos+4dNN9mj3iO5hEGR9L2Wc6o40gSxgb0CDEUHhVAkXSas8t/ZdGduMhPVTEZsTzRhCXHB78Z/H723NRLc/xXIt5X35roqVYoEvCsVlXTqD6rGt1u9f9urnBNCx5wXaN4oOnqqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=YImXtnNh; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21636268e43so42887235ad.2
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 01:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737105436; x=1737710236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Sf/doY8bC48FwKJYlisYvOWvCn0u3xeZy9vgidWn9o=;
        b=YImXtnNhJxBjkxNGXg84Na4uGqvbDn2XUgF/drM6YzSiUqUkXaZXUFUxxJJ1hdA+nH
         he4dsT7GT+JtFkbpIm0CNm3PiXa2lJW2gG7V64fJb2x6l1YcNXKBvMQaQpMPnNJtBjqm
         yoBxe62WrlriL/wz+bdxKksIE9l57+e/ECtUJvBRa+X+kZ6vNoc7wpd9bMcq+PXQQRWy
         v8s7ynirnkPO+mAYZd5hQaD+W5zYA5PL4U+YC4pAu8otivcdW1J7R55WF4Uuc9fSARvh
         /4kyrYEAn+KzsgzUs545btpYyZ5dTcp/206MI+gOpHlQYDL1jKTYxjccFZzW46YFgyog
         IfnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737105436; x=1737710236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Sf/doY8bC48FwKJYlisYvOWvCn0u3xeZy9vgidWn9o=;
        b=NS19pkORJoomj7m1Cmorkhc+sZdW6urG3KZxL5GubhOhJTfpWqxqmudlkWalgNW0OZ
         uMi3LNAY3mBoo3yXqIcOKPwuICI7S7r/4SjgRFA3r6vQQx3bR0l6/W+wbJlN0U4TuagZ
         D23kD8SN1H2uX1+ojubOTJESVQr9prj58qek50XlJHRvvo6B/PBAdNAVmEHZx2uSnmzk
         +ivFPsK7nuqtYclAU4yay8Qcg6OLxcEs0vWeBlpcfJSTpjobfO6iOCpNlmfKQ8JlBBb3
         d/ap0vXZz5W1bnXMNll7suvU0338lSSvYpJWVtpQTHhjZwPAncoI/OGWq8jzBLDyUgjw
         9cig==
X-Forwarded-Encrypted: i=1; AJvYcCUt3McUq8KP6q2nntzZ41KNfdWi9hjjPSUiMWWqnzRUFXKUeVEtDB6yQzUNWWigeKUxKU8jtDz+dskU@vger.kernel.org
X-Gm-Message-State: AOJu0YyHUFOO8IKbgXiiVkuq9Njv8jWTOO+fDAafz2i0Q/z42HYx8ZON
	AXCTKRjkQHtPVVvucbmSxqOYNNeWY1iBQBUoxb2v3xrKbuY8SrzpVMjnB6YRj+k=
X-Gm-Gg: ASbGncvr4LrDsDYGaHkR/Lk+idPm+cnKw7wzCuaUqeksLMaKlKpfidD1sJbIc54cMop
	D7wqf4nF1929AwS1mwKp/Tlcv7KT7u2msInsWryAb8LO27cdUCz4ZqARqW7JVvdC13pdsJ8ykO3
	hJnpWgDwaecw8TbRbNBtwZrFwp+3zXfevPr1IpB0HXCXuHRO3yqT7+4BfyPHd8eUMNFcFIOlHJO
	NbsD+3hGmtNus+K/ca2Nq2gyViobK8qPk89UfkRX7EQsuTjaHVVlzodPnISupNiLTFJzd3U7t8O
	HxMsODYhK/X1yPll1fT0+PV+C91b
X-Google-Smtp-Source: AGHT+IHuw0RE4CXeB6LVWB8Z18CH6wAhh/J+fBjQnpOmfLXBGjiAE6rnxBGAMMs9IM1r88fXZE0nEg==
X-Received: by 2002:a05:6a00:b8b:b0:725:eacf:cfdb with SMTP id d2e1a72fcca58-72dafbd4fd1mr2896073b3a.24.1737105435761;
        Fri, 17 Jan 2025 01:17:15 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab815bccsm1421548b3a.56.2025.01.17.01.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 01:17:15 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 3/4] drm/panel: boe-tv101wum-nl6: support for kingdisplay-kd110n11-51ie MIPI-DSI panel
Date: Fri, 17 Jan 2025 17:14:37 +0800
Message-Id: <20250117091438.1486732-4-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The kingdisplay-kd110n11-51ie is a 10.95" TFT panel.
which fits in nicely with the existing panel-boe-tv101wum-nl6 driver.
From the datasheet, MIPI needs to keep the LP11 state before the
lcm_reset pin is pulled high, so increase lp11_before_reset flag.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index 3e5b0d8636d0..72fa0f6a5cb6 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -1309,6 +1309,97 @@ static int starry_qfh032011_53g_init(struct boe_panel *boe)
 	return 0;
 };
 
+static int kingdisplay_kd110n11_51ie_init(struct boe_panel *boe)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = boe->dsi };
+
+	msleep(50);
+
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB9, 0x83, 0x10, 0x21, 0x55, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD9, 0xD1);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x2C, 0xB3, 0xB3, 0x31, 0xF1, 0x33, 0xE0, 0x54,
+		0x36, 0x36, 0x3A, 0x3A, 0x32, 0x8B, 0x11, 0xE5, 0x98);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xD9);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x8B, 0x33);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB2, 0x00, 0x47, 0xB0, 0x80, 0x00, 0x2C, 0x80, 0x3C,
+		0x9F, 0x22, 0x20, 0x00, 0x00, 0x98, 0x51);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB4, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x40, 0x84,
+		0x64, 0x84, 0x01, 0x9D, 0x01, 0x02, 0x01, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBC, 0x1B, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBE, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBF, 0xFC, 0xC4, 0x80, 0x9C, 0x36, 0x00, 0x0D, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC0, 0x32, 0x32, 0x22, 0x11, 0x22, 0xA0, 0x31, 0x08,
+		0xF5, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xCC);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC7, 0x80);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC6);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC8, 0x97);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC9, 0x00, 0x1E, 0x13, 0x88, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x08, 0x13, 0x07, 0x00, 0x0F, 0x36);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCC, 0x02, 0x03, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD1, 0x07, 0x06, 0x00, 0x02, 0x04, 0x2C, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD3, 0x06, 0x00, 0x00, 0x00, 0x40, 0x04, 0x08, 0x04,
+		0x08, 0x37, 0x07, 0x44, 0x37, 0x2B, 0x2B, 0x03, 0x03, 0x32,
+		0x10, 0x22, 0x00, 0x25, 0x32, 0x10, 0x29, 0x00, 0x29, 0x32,
+		0x10, 0x08, 0x00, 0x08, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD5, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+		0x18, 0x18, 0x07, 0x06, 0x07, 0x06, 0x05, 0x04, 0x05, 0x04,
+		0x03, 0x02, 0x03, 0x02, 0x01, 0x00, 0x01, 0x00, 0x18, 0x18,
+		0x25, 0x24, 0x25, 0x24, 0x1F, 0x1F, 0x1F, 0x1F, 0x1E, 0x1E,
+		0x1E, 0x1E, 0x20, 0x20, 0x20, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x0A, 0x2A, 0xAA, 0x8A, 0xAA, 0xA0, 0x0A, 0x2A,
+		0xAA, 0x8A, 0xAA, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0xE0, 0x10, 0x10, 0x0D, 0x1E, 0x9D, 0x02, 0x52,
+		0x9D, 0x14, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x01, 0x7F, 0x11, 0xFD);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC5);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBA, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x86);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD2, 0x64);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC5);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD3, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x0A, 0x2A, 0xAA, 0x8A, 0xAA, 0xA0, 0x0A, 0x2A,
+		0xAA, 0x8A, 0xAA, 0xA0, 0x05, 0x15, 0x55, 0x45, 0x55, 0x50,
+		0x05, 0x15, 0x55, 0x45, 0x55, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0x02, 0x00, 0x24, 0x01, 0x7E, 0x0F, 0x7C, 0x10,
+		0xA0, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x03, 0x07, 0x00, 0x10, 0x7B);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x0F, 0x3F, 0xFF, 0xCF, 0xFF, 0xF0, 0x0F, 0x3F,
+		0xFF, 0xCF, 0xFF, 0xF0);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0xFE, 0x01, 0xFE, 0x01, 0xFE, 0x01, 0x00, 0x00,
+		0x00, 0x23, 0x00, 0x23, 0x81, 0x02, 0x40, 0x00, 0x20, 0x9D,
+		0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB2, 0x66, 0x81);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC6);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB4, 0x03, 0xFF, 0xF8);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x0A, 0x2A, 0xAA, 0x8A, 0xAA, 0xA0, 0x0A, 0x2A,
+		0xAA, 0x8A, 0xAA, 0xA0, 0x0F, 0x2A, 0xAA, 0x8A, 0xAA, 0xF0,
+		0x0F, 0x2A, 0xAA, 0x8A, 0xAA, 0xF0, 0x0A, 0x2A, 0xAA, 0x8A,
+		0xAA, 0xA0, 0x0A, 0x2A, 0xAA, 0x8A, 0xAA, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB9, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x11);
+
+	mipi_dsi_msleep(&ctx, 120);
+
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0x29);
+
+	mipi_dsi_msleep(&ctx, 20);
+
+	return 0;
+}
+
 static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
 {
 	return container_of(panel, struct boe_panel, base);
@@ -1642,6 +1733,34 @@ static const struct panel_desc starry_qfh032011_53g_desc = {
 	.lp11_before_reset = true,
 };
 
+static const struct drm_display_mode kingdisplay_kd110n11_51ie_default_mode = {
+	.clock = (1200 + 124 + 80 + 80) * (1920 + 88 + 8 + 38) * 60 / 1000,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 124,
+	.hsync_end = 1200 + 124 + 80,
+	.htotal = 1200 + 124 + 80 + 80,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 88,
+	.vsync_end = 1920 + 88 + 8,
+	.vtotal = 1920 + 88 + 8 + 38,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc kingdisplay_kd110n11_51ie_desc = {
+	.modes = &kingdisplay_kd110n11_51ie_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 147,
+		.height_mm = 235,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init = kingdisplay_kd110n11_51ie_init,
+	.lp11_before_reset = true,
+};
+
 static int boe_panel_get_modes(struct drm_panel *panel,
 			       struct drm_connector *connector)
 {
@@ -1807,6 +1926,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "starry,2081101qfh032011-53g",
 	  .data = &starry_qfh032011_53g_desc
 	},
+	{ .compatible = "kingdisplay,kd110n11-51ie",
+	  .data = &kingdisplay_kd110n11_51ie_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, boe_of_match);
-- 
2.34.1


