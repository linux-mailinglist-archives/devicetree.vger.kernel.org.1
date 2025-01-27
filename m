Return-Path: <devicetree+bounces-140978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC93EA1CF86
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 02:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35568166461
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 01:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1929918734F;
	Mon, 27 Jan 2025 01:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="AoZEOCOy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB16A7DA6A
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737942385; cv=none; b=mrz+JSz6dQY6KbTfvs7Y2ydBstWC3JjgkfAhf0captMP9FYYW9UPlI4P1xZs/47AZO6So0QJTXnjrsxtf1GlM5x1AQMStk+DObCfqegr1IIezuAzq57VS7Im4qXShZxAqoKWkqFLuc2qWnRb8azt1DbiL6xgob5powVonEqSFBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737942385; c=relaxed/simple;
	bh=QmSWbwrak+k9hNMRV0RvXWopsSHVyBCqJJsqtcCJSdY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G9vPUPruOtiryDcwO+f9NGtHHDY8HyC0RYUi7k9+hB5egzqmKJQH157rPZgIkWwzEJhQie8SwONNYsYDhfk0t0i4le5v21lTURAb6okOuk7qr/fFr1PcdB+OsdYhi16oxSLLxft3Ms+juh0/hPACIKY4YzpO3Qq2b9R5bo/yBWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=AoZEOCOy; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-21680814d42so61955805ad.2
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 17:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737942380; x=1738547180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Es/XcA1XjlNaLIrS4mB2a+ldfeZmYEY6qsBPxo9Hwn8=;
        b=AoZEOCOyBWXW5l9gxHzrsK8fShHJLkSwj6ngqfqL/y0Cm9N84WpzxTTLd4ehWsXIC0
         vTU+Nja6/YvqDeR26+h68tAjPRhsZh7A6Ol7/Y0c6rFVdBITel8Q2YUqpGK86CNfJadx
         JK3O6rDXDsM1TgH3JGT9bpd3tfybOoqNnHAtNh5JKnwrtK1Ibwswe2xgcYT0PCq2D4/0
         UYBnsdWXqQeTkdFSZwxO7kRwdPR1WM9fRDxmnKkb1vYfE/9IJbCnpPJU6uCLtg/BEKu8
         w4APNiDfnK2fY/lncVxKp42qNrOLgySGnucDnkRu2KcQ1GZsas/drZPPBtEKOQ60q1wg
         qm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737942380; x=1738547180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Es/XcA1XjlNaLIrS4mB2a+ldfeZmYEY6qsBPxo9Hwn8=;
        b=ocb7GFY582oVsXDM2ovOjl/B11yo+tOw1Qi8TOoBNV9RM+/BBdRdCiKQxWelIv+fvc
         Av5wSJlaAG1/bZpaOmIwVQaHUQF0ZQ+Z4NRELWh/WFzRaGD7T2kUpVrLSEeMqq02i0b3
         mdiZyHPAd5fTTOd/N27qt30actRNVtWUecn5wPMWLobn2bYCwUifJJ1qqvLnlaIvGtEn
         xhlZZdPhF+qu+vt1rtomzrvGWptBLeWV4Oz6C3oYDJVoCbVRWt1ViPjvohfVaP1D7GzK
         wfZn36fkhA+wZ2v8QGUQpCG4e2Aqui4sTM4Hk36y6WzlNAOxpyiJ11najmYxl77M0gAv
         D/YA==
X-Forwarded-Encrypted: i=1; AJvYcCW35c1/YOPo+BXpYpQDWRAfS+XIJdWIyV4ZaC2K7Jxd7/bVjzA9IS1LTnfos9NEtCQSO9SMbGp0ha4O@vger.kernel.org
X-Gm-Message-State: AOJu0YzELwWvKxE2TMyOB6U+Otcj6fyi2bQnM0codb0rGrsiZzc3wcx2
	vg4gfTN5vSQdQVBBKEjsEm+3F72B2sJGb5Ntv/Qn9Ba5zO5O28K5ENM2gfJuA6g=
X-Gm-Gg: ASbGncvkF4vC8+0hLZCQ96Agc903LM2v1SXffCeel0KgNxfZgNGWVtyjNNz2YH7y4S2
	XbGXMccTJw06+gwkAX3z0txdKcDuDyukX/9bSmM/Lwh8vtKUzGXsPLIgdNbbM8A5V9kOkDch27n
	L9OHteV2RPfF0uxv5G0ZS0Zt1C575V3y2Be46fr69nlk734P9YB92zUtyMUrfj08BAgLDCKkAJi
	acRFE9G9jw+YRH3VR6n/Jzn0OZ0K+uy6Z7tozNrw9B79LcIZEl5C+qrb5LzbJASoEtUHccU4dkI
	XJ1CLDpa8IJSx5RfYK8EwOEasYlpV+FAS92PSGF9ExbwpQrNjY/N
X-Google-Smtp-Source: AGHT+IH4Etth1/QClVZ5WjnuiKqPsp7KZ3c6MAOCE36g3TJG6Su/ubqzGfUQSZoQrE2GblVW87IDSg==
X-Received: by 2002:a17:902:d582:b0:216:2426:767b with SMTP id d9443c01a7336-21c352dde25mr656375255ad.10.1737942380017;
        Sun, 26 Jan 2025 17:46:20 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141f93sm51344205ad.147.2025.01.26.17.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 17:46:19 -0800 (PST)
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
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] drm/panel: panel-himax-hx83102: support for csot-pna957qt1-1 MIPI-DSI panel
Date: Mon, 27 Jan 2025 09:46:05 +0800
Message-Id: <20250127014605.1862287-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The csot-pna957qt1-1 is a 10.95" TFT panel. The MIPI controller on this
panel is the same as the other panels here, so add this panel to this
driver. From the datasheet, MIPI needs to keep the LP11 state before
the lcm_reset pin is pulled high, so increase lp11_before_reset flag.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-himax-hx83102.c | 123 ++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx83102.c b/drivers/gpu/drm/panel/panel-himax-hx83102.c
index 8b48bba18131..fbc65d6becb2 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx83102.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx83102.c
@@ -43,6 +43,7 @@
 #define HX83102_SETGIP1		0xd5
 #define HX83102_SETGIP2		0xd6
 #define HX83102_SETGIP3		0xd8
+#define HX83102_UNKNOWN_D9	0xd9
 #define HX83102_SETGMA		0xe0
 #define HX83102_UNKNOWN_E1	0xe1
 #define HX83102_SETTP1		0xe7
@@ -396,6 +397,103 @@ static int ivo_t109nw41_init(struct hx83102 *ctx)
 	return dsi_ctx.accum_err;
 };
 
+static int csot_pna957qt1_1_init(struct hx83102 *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+	msleep(60);
+
+	hx83102_enable_extended_cmds(&dsi_ctx, true);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D9, 0xd2);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, 0xb3, 0xb3, 0x31, 0xf1, 0x33,
+				     0xe0, 0x54, 0x36, 0x36, 0x3a, 0x3a, 0x32, 0x8b, 0x11, 0xe5,
+				     0x98);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xd9);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x8b, 0x33);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x00, 0x47, 0xb0, 0x80, 0x00, 0x2c,
+				     0x80, 0x3c, 0x9f, 0x22, 0x20, 0x00, 0x00, 0x98, 0x51);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x41, 0x41, 0x41, 0x41, 0x64, 0x64,
+				     0x40, 0x84, 0x64, 0x84, 0x01, 0x9d, 0x01, 0x02, 0x01, 0x00,
+				     0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETVDC, 0x1b, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_BE, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xfc, 0xc4, 0x80, 0x9c, 0x36, 0x00,
+				     0x0d, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSTBA, 0x32, 0x32, 0x22, 0x11, 0x22, 0xa0,
+				     0x31, 0x08, 0xf5, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcc);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x80);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETRAMDMY, 0x97);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPWM, 0x00, 0x1e, 0x13, 0x88, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x08, 0x13, 0x07, 0x00, 0x0f,
+				     0x36);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPANEL, 0x02, 0x03, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPCTRL, 0x07, 0x06, 0x00, 0x02, 0x04, 0x2c,
+				     0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x06, 0x00, 0x00, 0x00, 0x40, 0x04,
+				     0x08, 0x04, 0x08, 0x37, 0x07, 0x44, 0x37, 0x2b, 0x2b, 0x03,
+				     0x03, 0x32, 0x10, 0x22, 0x00, 0x25, 0x32, 0x10, 0x29, 0x00,
+				     0x29, 0x32, 0x10, 0x08, 0x00, 0x08, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP1, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+				     0x18, 0x18, 0x18, 0x18, 0x07, 0x06, 0x07, 0x06, 0x05, 0x04,
+				     0x05, 0x04, 0x03, 0x02, 0x03, 0x02, 0x01, 0x00, 0x01, 0x00,
+				     0x18, 0x18, 0x25, 0x24, 0x25, 0x24, 0x1f, 0x1f, 0x1f, 0x1f,
+				     0x1e, 0x1e, 0x1e, 0x1e, 0x20, 0x20, 0x20, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0,
+				     0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGMA, 0x0a, 0x0e, 0x1a, 0x21, 0x28, 0x46,
+				     0x5c, 0x61, 0x63, 0x5e, 0x78, 0x7d, 0x80, 0x8e, 0x89, 0x90,
+				     0x98, 0xaa, 0xa8, 0x52, 0x59, 0x60, 0x6f, 0x06, 0x0a, 0x16,
+				     0x1d, 0x24, 0x46, 0x5c, 0x61, 0x6b, 0x66, 0x7c, 0x7d, 0x80,
+				     0x8e, 0x89, 0x90, 0x98, 0xaa, 0xa8, 0x52, 0x59, 0x60, 0x6f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0xe0, 0x10, 0x10, 0x0d, 0x1e, 0x9d,
+				     0x02, 0x52, 0x9d, 0x14, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x01, 0x7f, 0x11, 0xfd);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x4f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x86);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D2, 0x64);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0,
+				     0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0, 0x05, 0x15, 0x55, 0x45,
+				     0x55, 0x50, 0x05, 0x15, 0x55, 0x45, 0x55, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x02, 0x00, 0x24, 0x01, 0x7e, 0x0f,
+				     0x7c, 0x10, 0xa0, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x03, 0x07, 0x00, 0x10, 0x7b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x0f, 0x3f, 0xff, 0xcf, 0xff, 0xf0,
+				     0x0f, 0x3f, 0xff, 0xcf, 0xff, 0xf0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0xfe, 0x01, 0xfe, 0x01, 0xfe, 0x01,
+				     0x00, 0x00, 0x00, 0x23, 0x00, 0x23, 0x81, 0x02, 0x40, 0x00,
+				     0x20, 0x9d, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x01, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x66, 0x81);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x03, 0xff, 0xf8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0,
+				     0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0, 0x0f, 0x2a, 0xaa, 0x8a,
+				     0xaa, 0xf0, 0x0f, 0x2a, 0xaa, 0x8a, 0xaa, 0xf0, 0x0a, 0x2a,
+				     0xaa, 0x8a, 0xaa, 0xa0, 0x0a, 0x2a, 0xaa, 0x8a, 0xaa, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00);
+	hx83102_enable_extended_cmds(&dsi_ctx, false);
+
+	mipi_dsi_msleep(&dsi_ctx, 60);
+
+	return dsi_ctx.accum_err;
+};
+
 static const struct drm_display_mode starry_mode = {
 	.clock = 162680,
 	.hdisplay = 1200,
@@ -462,6 +560,28 @@ static const struct hx83102_panel_desc ivo_t109nw41_desc = {
 	.init = ivo_t109nw41_init,
 };
 
+static const struct drm_display_mode csot_pna957qt1_1_default_mode = {
+	.clock = 177958,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 124,
+	.hsync_end = 1200 + 124 + 80,
+	.htotal = 1200 + 124 + 80 + 40,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 88,
+	.vsync_end = 1920 + 88 + 8,
+	.vtotal = 1920 + 88 + 8 + 38,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct hx83102_panel_desc csot_pna957qt1_1_desc = {
+	.modes = &csot_pna957qt1_1_default_mode,
+	.size = {
+		.width_mm = 147,
+		.height_mm = 235,
+	},
+	.init = csot_pna957qt1_1_init,
+};
+
 static int hx83102_enable(struct drm_panel *panel)
 {
 	msleep(130);
@@ -681,6 +801,9 @@ static const struct of_device_id hx83102_of_match[] = {
 	{ .compatible = "boe,nv110wum-l60",
 	.data = &boe_nv110wum_desc
 	},
+	{ .compatible = "csot,pna957qt1-1",
+	  .data = &csot_pna957qt1_1_desc
+	},
 	{ .compatible = "ivo,t109nw41",
 	  .data = &ivo_t109nw41_desc
 	},
-- 
2.34.1


