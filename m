Return-Path: <devicetree+bounces-182565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ED1ACCDB5
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 21:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F7731893AE5
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5C221C190;
	Tue,  3 Jun 2025 19:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lx/a538A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB335FB95
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 19:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979723; cv=none; b=rVPQsRcdHeYkMgqEx1ayay3PnY6s1qdOSVG+i/x4mMJZ14g2VuvA1D6pEgAMajNPge5Aefj4gQLkVw2vnalzXdWhD3FzynY+IH60fjm5MLycDKz7qcS3r+mQpVDDsm5GD1PuLwpWtKon5/Jv3fllGicD12i2vg0Nnwc7E+EtdgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979723; c=relaxed/simple;
	bh=oBHAJvwr8MRNGudlp/N1ECEK18uKOccFJvLTCX1g2w0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u4FMqpr3Leln8dD9MmjvSp3SaXcWVCvzCwVE7TkUon1VxT2OP9rcsHGOvTHBkMPTdLANNM7lexiJDYxIlyQFSOXpECsNys1/dsF4YdtnEAkTNGEK7/lxQunz6xgxUmacjqOp61YVIM1li2o3PpWIQT4zCCi8Dbb/XOaHeTMt3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lx/a538A; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60bd30dd387so3016913eaf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979721; x=1749584521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIVqz2dRGfkeXaVkRfMlKjXlMd9pJR9pSIQQIKcgCz8=;
        b=Lx/a538AhMH7Du48r+Eq0+Ysh1qQCc9a97y7dOjWB1v40kotinnFaAX+IDUEqcHoLN
         hjpK9MsBcavQeVmtLw7ukbaHBa8IBye03Jv2haiE8hCWh8ai6vFvA1OR6KHcw8peq4yZ
         ypntwa0vgSHv8sYGTr7HPjvV/e+EeRyNetp/HuaXKHHJ5BSgybqMPWTZBSo6jxFfDgc9
         6NKn/gPxgU+Gglb75K+0bOydWmMsB/TqNP6ZlBBESMj48IV6iUT+XV7V/9Q/0UswVk7Y
         icHBuaWvLOYDO3sBCE5VtYTAxkEcYJiHUGalNORFl5dhezDI1BAq9+x0vb7gBaikGEwv
         ZTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979721; x=1749584521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIVqz2dRGfkeXaVkRfMlKjXlMd9pJR9pSIQQIKcgCz8=;
        b=KrBK9x7R8nyei5qGvC1hxRIu6GM17ORn0ldzbnrnYuRxPuKRlEwqtixQL3dbOGRL//
         fmiCpiy5vHrrpoRs7MzjZbA4eRjBIMWye6S3lQNtj3+inRud5DpO6Vr8vvfm0/mRtzFg
         YVTIxbdZtIlEGcYBEbiXEBGEoCHvepI5DRUdN7hEMfj8xzALovENNgz8Ts9gDM7jWYQN
         1QcmzOZ2oyYewEeBgTrIvQrcWDWsouRgPeiTG4GVcKIZVzU9dX4ijEWKWx7FI/Z0Iv8X
         7Kej1JI4HUARdkJx4nKdrxCz97LS7p56lJGYFjn2qyXc/WvehbspADzKwaIXT/7cTZJ7
         wPRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY9Il58tgOP9ow4WWS/shHA/hUVg+JLvie80oY6CYW1YjBNTWQwe5D752cCQJ6HdgXCuhlLf4GohxQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1hwpPEf9/fb50IMXVpP7E6Isw4ZXRex9zZPfkjwY8y3od4MbC
	QNi18/F2+7Vc1F9Y7BcEQMY/vPrjQqeb5yF/T0UMBXX01YZaAWUVtrI9
X-Gm-Gg: ASbGnctTtSinUewCyJrNXA/W5Tfh/QOEVH2cRlRcMf8BBGwmOzJSlWp4AYZvHi0qUAv
	2qan9qvN2DcB1CvyhWVYmthKDsoExC/0KBfD2vcx2N6r9broP9pbdU9/am+OrGiWyZwCzx/M9Kb
	0IIDzOZE4HOWa9RP9Ii4QX6Yd55RKlV/3oi8M4IJ9AslNXEyt2vPQMclel8OhODGKxw9+tToHFO
	L+AWahnCW38JBocYKtIq8F0IM2WfECLNm7Rm8uTl9bPC2zhFW8NC/BDzkopTTexRb9JaKzrvfg/
	F//jjSDESnFY3xA1pszMiIVtO2Qxp/wjyf49xBlJBF3X61MS5WnG8sPs788ci5DuHhsiHPs=
X-Google-Smtp-Source: AGHT+IEPHZuFkTYXQCTkJo5Ym0ylfV4pxcvfbfHQSSmEIozDMoZD4JWFzvzgmrQ3ty+jtqiGY0g7Aw==
X-Received: by 2002:a05:6820:2901:b0:60e:e75c:5ef2 with SMTP id 006d021491bc7-60ee75c6b78mr6812635eaf.7.1748979721192;
        Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
Date: Tue,  3 Jun 2025 14:39:29 -0500
Message-ID: <20250603193930.323607-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Huiling hl055fhav028c panel as used on the
Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
display controller and requires a sparsely documented vendor provided
init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
as stated in the manufacturer's documentation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index ff994bf0e3cc..16e450b156b7 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a_desc = {
 	.init_sequence = mchp_ac40t08a_init_sequence,
 };
 
+/*
+ * HL055FHAV028C is based on Himax HX8399, so datasheet pages are
+ * slightly different than HX8394 based panels.
+ */
+static void hl055fhav028c_init_sequence(struct mipi_dsi_multi_context *dsi_ctx)
+{
+	/* 6.3.6 SETEXTC: Set extension command (B9h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETEXTC,
+				     0xff, 0x83, 0x99);
+
+	/* 6.3.17 SETOFFSET: Set offset voltage (D2h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETOFFSET,
+				     0x77);
+
+	/* 6.3.1 SETPOWER: Set power (B1h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPOWER,
+				     0x02, 0x04, 0x74, 0x94, 0x01, 0x32,
+				     0x33, 0x11, 0x11, 0xab, 0x4d, 0x56,
+				     0x73, 0x02, 0x02);
+
+	/* 6.3.2 SETDISP: Set display related register (B2h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETDISP,
+				     0x00, 0x80, 0x80, 0xae, 0x05, 0x07,
+				     0x5a, 0x11, 0x00, 0x00, 0x10, 0x1e,
+				     0x70, 0x03, 0xd4);
+
+	/* 6.3.3 SETCYC: Set display waveform cycles (B4h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETCYC,
+				     0x00, 0xff, 0x02, 0xc0, 0x02, 0xc0,
+				     0x00, 0x00, 0x08, 0x00, 0x04, 0x06,
+				     0x00, 0x32, 0x04, 0x0a, 0x08, 0x21,
+				     0x03, 0x01, 0x00, 0x0f, 0xb8, 0x8b,
+				     0x02, 0xc0, 0x02, 0xc0, 0x00, 0x00,
+				     0x08, 0x00, 0x04, 0x06, 0x00, 0x32,
+				     0x04, 0x0a, 0x08, 0x01, 0x00, 0x0f,
+				     0xb8, 0x01);
+
+	/* 6.3.18 SETGIP0: Set GIP Option0 (D3h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP0,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x06, 0x00, 0x00, 0x10, 0x04, 0x00,
+				     0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
+				     0x00, 0x05, 0x05, 0x07, 0x00, 0x00,
+				     0x00, 0x05, 0x40);
+
+	/* 6.3.19 Set GIP Option1 (D5h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP1,
+				     0x18, 0x18, 0x19, 0x19, 0x18, 0x18,
+				     0x21, 0x20, 0x01, 0x00, 0x07, 0x06,
+				     0x05, 0x04, 0x03, 0x02, 0x18, 0x18,
+				     0x18, 0x18, 0x18, 0x18, 0x2f, 0x2f,
+				     0x30, 0x30, 0x31, 0x31, 0x18, 0x18,
+				     0x18, 0x18);
+
+	/* 6.3.20 Set GIP Option2 (D6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP2,
+				     0x18, 0x18, 0x19, 0x19, 0x40, 0x40,
+				     0x20, 0x21, 0x02, 0x03, 0x04, 0x05,
+				     0x06, 0x07, 0x00, 0x01, 0x40, 0x40,
+				     0x40, 0x40, 0x40, 0x40, 0x2f, 0x2f,
+				     0x30, 0x30, 0x31, 0x31, 0x40, 0x40,
+				     0x40, 0x40);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xa2, 0xaa, 0x02, 0xa0, 0xa2, 0xa8,
+				     0x02, 0xa0, 0xb0, 0x00, 0x00, 0x00,
+				     0xb0, 0x00, 0x00, 0x00);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x01);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xb0, 0x00, 0x00, 0x00, 0xb0, 0x00,
+				     0x00, 0x00, 0xe2, 0xaa, 0x03, 0xf0,
+				     0xe2, 0xaa, 0x03, 0xf0);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x02);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xe2, 0xaa, 0x03, 0xf0, 0xe2, 0xaa,
+				     0x03, 0xf0);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x00);
+
+	/* 6.3.4 SETVCOM: Set VCOM voltage (B6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETVCOM,
+				     0x7a, 0x7a);
+
+	/* 6.3.26 SETGAMMA: Set gamma curve related setting (E0h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGAMMA,
+				     0x00, 0x18, 0x27, 0x24, 0x5a, 0x68,
+				     0x79, 0x78, 0x81, 0x8a, 0x92, 0x99,
+				     0x9e, 0xa7, 0xaf, 0xb4, 0xb9, 0xc3,
+				     0xc7, 0xd1, 0xc6, 0xd4, 0xd5, 0x6c,
+				     0x67, 0x71, 0x77, 0x00, 0x00, 0x18,
+				     0x27, 0x24, 0x5a, 0x68, 0x79, 0x78,
+				     0x81, 0x8a, 0x92, 0x99, 0x9e, 0xa7,
+				     0xaf, 0xb4, 0xb9, 0xc3, 0xc7, 0xd1,
+				     0xc6, 0xd4, 0xd5, 0x6c, 0x67, 0x77);
+
+	/* Unknown command, not listed in the HX8399-C datasheet (C6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN2,
+				     0xff, 0xf9);
+
+	/* 6.3.16 SETPANEL (CCh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPANEL,
+				     0x08);
+}
+
+static const struct drm_display_mode hl055fhav028c_mode = {
+	.hdisplay	= 1080,
+	.hsync_start	= 1080 + 32,
+	.hsync_end	= 1080 + 32 + 8,
+	.htotal		= 1080 + 32 + 8 + 32,
+	.vdisplay	= 1920,
+	.vsync_start	= 1920 + 16,
+	.vsync_end	= 1920 + 16 + 2,
+	.vtotal		= 1920 + 16 + 2 + 14,
+	.clock		= 134920,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 70,
+	.height_mm	= 127,
+};
+
+static const struct hx8394_panel_desc hl055fhav028c_desc = {
+	.mode = &hl055fhav028c_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = hl055fhav028c_init_sequence,
+};
+
 static int hx8394_enable(struct drm_panel *panel)
 {
 	struct hx8394 *ctx = panel_to_hx8394(panel);
@@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id hx8394_of_match[] = {
 	{ .compatible = "hannstar,hsd060bhw4", .data = &hsd060bhw4_desc },
+	{ .compatible = "huiling,hl055fhav028c", .data = &hl055fhav028c_desc },
 	{ .compatible = "powkiddy,x55-panel", .data = &powkiddy_x55_desc },
 	{ .compatible = "microchip,ac40t08a-mipi-panel", .data = &mchp_ac40t08a_desc },
 	{ /* sentinel */ }
-- 
2.43.0


