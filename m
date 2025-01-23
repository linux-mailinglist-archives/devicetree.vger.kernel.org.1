Return-Path: <devicetree+bounces-140462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D783EA19E8F
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 07:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12E073AF567
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 06:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307791EE7B3;
	Thu, 23 Jan 2025 06:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="0a0zQunW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F52E1D416B
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 06:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737614900; cv=none; b=FBs/Hh+PZQN1HAW77lxtf1IaVuxObNcLCTQIhRbcSvF986iGr1GzOWEPLZacEL6/tjLXBcODtiOjOBtaeIO76AeSNKtJVnmA/hXICgYHe/PbCT9DTK8wAYdy0ORQmetCyUHAdAqGTRcJBBD1AWltSvuih1SUvABTDdOZuj6jUSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737614900; c=relaxed/simple;
	bh=7qGCDCv1gLzhkyg59/ihhQmOKYs7l5gteTDuUAd/C+M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bFnmGsHo7loe2Hh47aPqphIE3A3Xl0FGc3TFMaKNy0ysEBlkQlzPwUfF7y2TQVxALtHmmHxzKCE/eUGCPNxWlC9DpOMVuBAqUQiqxZ0e7ZS7u+Cs9eOfn3rOKLOcSnSPmwIn5FKvbeLvJcOco5oCmaGKIKKBI06dqj+n4pIzJII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=0a0zQunW; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2f43da61ba9so882578a91.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 22:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737614897; x=1738219697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VCOG5kt31moLV2eZoaA3/yFdIlV57mdvZJ7cZk6YoPg=;
        b=0a0zQunW+JXD+3SuNx/PEHvJPkAxdhPBtVkKRmwRz+MfrkN50ktkyKetTu/3KGFLfb
         zY8STaxuSwUTgkQr9+Wo7i0x6qh9n2yUmleHnjclanKn0pmS/lMKihE75Sul0znKk0Uz
         1Q5IFt9d7uZq9oKt+UHO9iCoa3iS7Dshm+ZjDBnuhMmz3EATV1uwmi5sIgNZJKrnP2dK
         Hcm3/jteJ4UfBtILnR5Q9B0lQrT5OwxzAhVPoH7kDm/PnjX/1pb7PKfcFCJdHdoGJBUW
         AlXa7xmaQy5GyuV53hymLW1uLqwtSKuouW8X+1EOmD9yN1IwAd0HxflOayE2rCLlGeiL
         KEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737614897; x=1738219697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VCOG5kt31moLV2eZoaA3/yFdIlV57mdvZJ7cZk6YoPg=;
        b=lTKo94A55rvYIRK3UhnJ56zzIFjbDGFVAR0APjTXVI4WBVxmZttg5KLdYtNDPskxUe
         MhW+xPGViTPKbbhAfLtIU/GzB1CkMxjDcPbT9LVIAqcs/Z0kOJHjgf8sflzXdyQNHCgS
         h86e7+ACUMAGc3yNnT/yxDtWBD5zTNxc9E9bNd/FdS6IL4cNqIKuSxM47/iLkkpJbJAe
         XkpINIzj8HQQFGenEFxg7OZhgSPwSpBZa3Rdc/pgE2r6FJeR9wuMdYlCtbLGvn/W9W1Q
         qA840dFjQ3zxcEFh3E0PMy2Z5T0w7aCPIhVHfVLUZd9bohY/Xlr9yA+Kk1BRYxLzAMdC
         k6ug==
X-Forwarded-Encrypted: i=1; AJvYcCXHfWww0PQyQ0nx8W5cH0utOH2yj9tZaaeoKmmY2STvBFXO+3emoJVIAubJqcK3SXFsXppwmW1NlBfX@vger.kernel.org
X-Gm-Message-State: AOJu0YwfAIKA38dxPHXWA5LDX57J+SxpMPHPmhMbp1yTRzt+NsOJoIQw
	sAE1X3e6PSJ89wuA4nSU+nhX86QefPF+P2/7jenqu7DlQvlTeHrob3FzLjlk2Njx++pjSPad8hl
	h
X-Gm-Gg: ASbGncttMlwLlvzhZJXG094BG5L+/+uCvD0xk3xU30Qg5tNcaISmA9G1skwru+XU7Rv
	M1RL6HgcV/0egrkAON4bdmlVB+Mtuh/XXI+MGUGKN9fxDqyvnAKoQLPAuuopwNkvhGDpfqsCB3t
	fZNq7EAwvC3nBg0cw2mLModYWcPtlhqFQg/7mk3RJ+GxHiXU17rS2iyO4UU1VfdIPlCQNDffmq2
	V/plnK7RdUMBrA4y7uRls1jNCfq7B9mStAMmbPDYf01NEOFE1DdHQw2qfNNFTXE2jpdlZnII8CF
	NILRCemlFFxcpykb7pmT3syvQqrZ8sJuTpakv2MdEUXjfrIg4dAE
X-Google-Smtp-Source: AGHT+IFSKRouPqtWjw8tzLodi2fOrUljW1EJSB7AMzNCQQ4bdGluCYsFI9JuIeJeA6yrQJivmxkPrQ==
X-Received: by 2002:a17:90b:520d:b0:2ee:8e75:4ae1 with SMTP id 98e67ed59e1d1-2f782cbfcadmr32849393a91.21.1737614897542;
        Wed, 22 Jan 2025 22:48:17 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a9bcc323777sm11923454a12.20.2025.01.22.22.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 22:48:17 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v4 2/3] drm/panel: boe-tv101wum-nl6: support for kingdisplay-kd110n11-51ie MIPI-DSI panel
Date: Thu, 23 Jan 2025 14:47:57 +0800
Message-Id: <20250123064758.743798-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250123064758.743798-1-yelangyan@huaqin.corp-partner.google.com>
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
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index 3e5b0d8636d0..2a84ce3a33ed 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -1205,6 +1205,97 @@ static int auo_b101uan08_3_init(struct boe_panel *boe)
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
 static int starry_qfh032011_53g_init(struct boe_panel *boe)
 {
 	struct mipi_dsi_multi_context ctx = { .dsi = boe->dsi };
@@ -1615,6 +1706,34 @@ static const struct panel_desc boe_tv105wum_nw0_desc = {
 	.lp11_before_reset = true,
 };
 
+static const struct drm_display_mode kingdisplay_kd110n11_51ie_default_mode = {
+	.clock = 182888,
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
 static const struct drm_display_mode starry_qfh032011_53g_default_mode = {
 	.clock = 165731,
 	.hdisplay = 1200,
@@ -1804,6 +1923,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "innolux,hj110iz-01a",
 	  .data = &inx_hj110iz_desc
 	},
+	{ .compatible = "kingdisplay,kd110n11-51ie",
+	  .data = &kingdisplay_kd110n11_51ie_desc
+	},
 	{ .compatible = "starry,2081101qfh032011-53g",
 	  .data = &starry_qfh032011_53g_desc
 	},
-- 
2.34.1


