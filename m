Return-Path: <devicetree+bounces-57775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD189EBA4
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:15:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E76E8285AAB
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF49D13CF84;
	Wed, 10 Apr 2024 07:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="HUrpQRYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C073913D286
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 07:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712733320; cv=none; b=sCvIfIAyBHV04hXCsjZRGH2lgWs6n9k7gRs2NLnukfQ5AKOfBQq7GQCtZLxrpW8cALys/ioIsvjJb9F7cFm5GoEMV00QZYpOcmWo9moVjJbelJKFGUthsTLzHlPj0dHb2gY0iriW0fY8Wv371QmLV5Y301+dNlmOC1dab2Q9eWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712733320; c=relaxed/simple;
	bh=xN3DEhv2lXL7GX7PMPDxRCoZ9P2L4HW+YPzTW9IscJo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cAB/5zdQOCU10NPS6CwCWZRQlcWON4AGxX6CPOWkuK5FHGYXGdHBYBNFCoUvHy2j3QFWaDvYmrRfjqfxAO+LzN+AWvtk97aC3Hoxa0WDdmRtlUCi9KVyZy1bxZJSY9VpRIMU02mLj/7rDfTiob7AUQtCHZV1HeWa+EZPtnFcScc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=HUrpQRYA; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e3ca4fe4cfso27202685ad.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 00:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1712733315; x=1713338115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9A9IjnFlmlJB9AmbDKOubRuNXgZNOhbaTnK4UvGeKM=;
        b=HUrpQRYAkddNf3Xi49jJqn2CampD5iqgFiikbxwoJTj+jSbfyOWrN2KQOdRVX4ynn+
         JH5VK3itUyiWPNE4C12qCfuOr4DF0FkmbPuEFS6G4Xvi0Rm7jrYv2T27WZyPUFV8uZuN
         Y64YhvUTuYq/2RKHRBmKYH/BSqbiMXovb5c32I9ZvHP8ppRgMtef92KepKZZRdsJUdl4
         s/2BODlh0W66bCzRzPEE+5FCD0n6zJlL78HHe+3yOujeFumyR4G+lM9Vr2rOxk09+wAs
         C/vtjmw/hx8fQknnuY/GcmPefBf+Eb1EzL021zjxVgvNXAcZi9btx1yPh1yXrlCc4N9N
         3PeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712733315; x=1713338115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9A9IjnFlmlJB9AmbDKOubRuNXgZNOhbaTnK4UvGeKM=;
        b=u2Mk8nCrRXh7P7eVBkrrchAWu1SsH/S4RgPZqFWJ9UAjO0RIjN6g1Mo2uyaNhKbuiM
         YlY0EeEINWAf4/5GHuhlFRZqbCSFZjUOekkMDjQ67pL5glo37rqb5ZZHhGMszarSNgB7
         PdzMQM7U1AfZL7Xln+ERINpY61f83KpERmCRCklXZ9uNow0Sl6sHVH0Bm9UC1AG9JsRq
         g9bkbmOhC+dqXtwddF1vGyZoV05iD1jRTz6J3EmLlvLmizJomVS5bIqdaX2Z15gKPwr/
         nfqV/5HU4mDhUG5yF1IyUC2iHfcp2gWwsEO69YW/BZeWx9BSWbE1wEGNLeS53EjqS8TA
         7Q7w==
X-Forwarded-Encrypted: i=1; AJvYcCU3jcvmDIMwNc8Wx9p87pQtp5FWya8D/fnjm8i9JIoE54QwlW3g2maarK8SSPW+3SQiQ17jmmSJFG037/yjppErpgMILPv3o8UO4g==
X-Gm-Message-State: AOJu0YzbU+y0C3PQyMPlYQa6tlMW3v1URLlnX2Xw4vwF0mAv6Dz5AdBz
	OF/o+GzqkfB3201DWsN1SenCJ6fy7PH8nf3iSJfnt6fq8l4UEB70o7/KlPGvKtc=
X-Google-Smtp-Source: AGHT+IEFlK4BZLVPaczaDkndN4swy5nThf9pX4Lep1c2OewRbOUFSV7fWxAq3LDnur75qnvaLo4a5A==
X-Received: by 2002:a17:903:1c1:b0:1e2:88ec:d456 with SMTP id e1-20020a17090301c100b001e288ecd456mr2107744plh.68.1712733315338;
        Wed, 10 Apr 2024 00:15:15 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id z17-20020a170903409100b001e264b50964sm10107975plc.205.2024.04.10.00.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 00:15:15 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	airlied@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 4/4] drm/panel: boe-tv101wum-nl6: Support for IVO t109nw41 MIPI-DSI panel
Date: Wed, 10 Apr 2024 15:14:39 +0800
Message-Id: <20240410071439.2152588-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel, which fits in nicely with
the existing panel-boe-tv101wum-nl6 driver. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index f91827e1548c..201a82415e1e 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -1453,6 +1453,72 @@ static const struct panel_init_cmd boe_nv110wum_init_cmd[] = {
 	_INIT_DELAY_CMD(25),
 	{},
 };
+
+static const struct panel_init_cmd ivo_t109nw41_init_cmd[] = {
+	_INIT_DELAY_CMD(60),
+	_INIT_DCS_CMD(0xB9, 0x83, 0x10, 0x21, 0x55, 0x00),
+	_INIT_DCS_CMD(0xB1, 0x2C, 0xED, 0xED, 0x27, 0xE7, 0x42, 0xF5, 0x39, 0x36, 0x36, 0x36, 0x36, 0x32, 0x8B, 0x11, 0x65, 0x00, 0x88, 0xFA, 0xFF, 0xFF, 0x8F, 0xFF, 0x08, 0xD6, 0x33),
+	_INIT_DCS_CMD(0xB2, 0x00, 0x47, 0xB0, 0x80, 0x00, 0x12, 0x71, 0x3C, 0xA3, 0x22, 0x20, 0x00, 0x00, 0x88, 0x01),
+	_INIT_DCS_CMD(0xB4, 0x35, 0x35, 0x43, 0x43, 0x35, 0x35, 0x30, 0x7A, 0x30, 0x7A, 0x01, 0x9D),
+	_INIT_DCS_CMD(0xB6, 0x34, 0x34, 0x03),
+	_INIT_DCS_CMD(0xE9, 0xCD),
+	_INIT_DCS_CMD(0xBA, 0x84),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xBC, 0x1B, 0x04),
+	_INIT_DCS_CMD(0xBE, 0x20),
+	_INIT_DCS_CMD(0xBF, 0xFC, 0xC4),
+	_INIT_DCS_CMD(0xC0, 0x34, 0x34, 0x22, 0x11, 0x22, 0xA0, 0x31, 0x08, 0xF5, 0x03),
+	_INIT_DCS_CMD(0xE9, 0xCC),
+	_INIT_DCS_CMD(0xC7, 0x80),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xE9, 0xC6),
+	_INIT_DCS_CMD(0xC8, 0x97),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xC9, 0x00, 0x1E, 0x13, 0x88, 0x01),
+	_INIT_DCS_CMD(0xCB, 0x08, 0x13, 0x07, 0x00, 0x0F, 0x34),
+	_INIT_DCS_CMD(0xCC, 0x02, 0x03, 0x44),
+	_INIT_DCS_CMD(0xE9, 0xC4),
+	_INIT_DCS_CMD(0xD0, 0x03),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xD1, 0x07, 0x06, 0x00, 0x02, 0x04, 0x2C, 0xFF),
+	_INIT_DCS_CMD(0xD3, 0x06, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x37, 0x07, 0x64, 0x7C, 0x11, 0x11, 0x03, 0x03, 0x32, 0x10, 0x0E, 0x00, 0x0E, 0x32, 0x17, 0x97, 0x07, 0x97, 0x32,
+			0x00, 0x02, 0x00, 0x02, 0x00, 0x00),
+	_INIT_DCS_CMD(0xD5, 0x25, 0x24, 0x25, 0x24, 0x18, 0x18, 0x18, 0x18, 0x07, 0x06, 0x07, 0x06, 0x05, 0x04, 0x05, 0x04, 0x03, 0x02, 0x03, 0x02, 0x01, 0x00, 0x01, 0x00, 0xA8, 0xA8, 0xA8, 0xA8, 0x29, 0x29, 0x29, 0x29, 0x21, 0x20, 0x21, 0x20, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18),
+	_INIT_DCS_CMD(0xD8, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xE7, 0x07, 0x10, 0x10, 0x1A, 0x26, 0x9E, 0x00, 0x4F, 0xA0, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x12, 0x0A, 0x02, 0x02, 0x00, 0x33, 0x02, 0x04, 0x18, 0x01),
+	_INIT_DCS_CMD(0xBD, 0x01),
+	_INIT_DCS_CMD(0xB1, 0x01, 0x7F, 0x11, 0xFD),
+	_INIT_DCS_CMD(0xCB, 0x86),
+	_INIT_DCS_CMD(0xD8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xE7, 0x02, 0x00, 0x2B, 0x01, 0x7E, 0x0F, 0x7E, 0x10, 0xA0, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xBD, 0x02),
+	_INIT_DCS_CMD(0xBF, 0xF2),
+	_INIT_DCS_CMD(0xCB, 0x03, 0x07, 0x00, 0x10, 0x79),
+	_INIT_DCS_CMD(0xD8, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xA0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xA0),
+	_INIT_DCS_CMD(0xE7, 0xFE, 0x01, 0xFE, 0x01, 0xFE, 0x01, 0x00, 0x00, 0x00, 0x23, 0x00, 0x23, 0x81, 0x02, 0x40, 0x00, 0x20, 0x6E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xBD, 0x03),
+	_INIT_DCS_CMD(0xD8, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xA0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xE9, 0xC6),
+	_INIT_DCS_CMD(0xB4, 0x03, 0xFF, 0xF8),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xE1, 0x00),
+	_INIT_DCS_CMD(0xBD, 0x00),
+	_INIT_DCS_CMD(0xE9, 0xC4),
+	_INIT_DCS_CMD(0xBA, 0x96),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xBD, 0x01),
+	_INIT_DCS_CMD(0xE9, 0xC5),
+	_INIT_DCS_CMD(0xBA, 0x4F),
+	_INIT_DCS_CMD(0xE9, 0x3F),
+	_INIT_DCS_CMD(0xBD, 0x00),
+	_INIT_DELAY_CMD(50),
+	_INIT_DCS_CMD(0x11),
+	_INIT_DELAY_CMD(110),
+	_INIT_DCS_CMD(0x29),
+	_INIT_DELAY_CMD(25),
+	{},
+};
+
 static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
 {
 	return container_of(panel, struct boe_panel, base);
@@ -1907,6 +1973,35 @@ static const struct panel_desc boe_nv110wum_desc = {
 	.init_cmds = boe_nv110wum_init_cmd,
 	.lp11_before_reset = true,
 };
+
+static const struct drm_display_mode ivo_t109nw41_default_mode = {
+	.clock = 166400,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 75,
+	.hsync_end = 1200 + 75 + 20,
+	.htotal = 1200 + 75 + 20 + 55,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 115,
+	.vsync_end = 1920 + 115 + 8,
+	.vtotal = 1920 + 115 + 8 + 12,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc ivo_t109nw41_desc = {
+	.modes = &ivo_t109nw41_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 147,
+		.height_mm = 235,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = ivo_t109nw41_init_cmd,
+	.lp11_before_reset = true,
+};
+
 static int boe_panel_get_modes(struct drm_panel *panel,
 			       struct drm_connector *connector)
 {
@@ -2088,6 +2183,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "boe,nv110wum-l60",
 	  .data = &boe_nv110wum_desc
 	},
+	{ .compatible = "ivo,t109nw41",
+	  .data = &ivo_t109nw41_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, boe_of_match);
-- 
2.25.1


