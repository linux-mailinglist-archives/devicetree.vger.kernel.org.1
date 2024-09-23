Return-Path: <devicetree+bounces-104571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F997EC87
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 15:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC5E81F220F8
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F031199FB9;
	Mon, 23 Sep 2024 13:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Q6+ZBeSA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0194719B5AC
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 13:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727098981; cv=none; b=AYNvBIyqHEgHbHHBRe/sXdkHziGTuHSnTH5Fe+16MOK4/rCSRDiC82E5FxXFPeSAYk5s07fqV9fHa0MZV2UeoEeN4rTifRQnKXscawGZed2tyqdjhBGX9MoYM62yCCVKFIkoNkxWOtUe2FfC2RZaLceadFezmFVpVjMGre2NhrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727098981; c=relaxed/simple;
	bh=n8TpS44kSkN16qOdnzjYpy71PGVjtdVAUD2J814I67k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=cIKlF1vnnFizzsO2h1ydOSjLCN3J5Yn65i+BfcrMpRd2GQIzspO6VN9XJlCMxqNDejtOU4BwrMkhgzQdodsqZk5Qxgo8f6XedbjpQtB1ePFCpWwYRHyL4SENJvgmymx1BXbz92EWaR6gsIcqei+I/6L8UuTzOCKohA9lAdqFdds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Q6+ZBeSA; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-718e25d8b67so424133b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727098976; x=1727703776; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lmi4LwsQVWVuhv2u7M387Utb1/3g/g58JnDuv7KUrV8=;
        b=Q6+ZBeSAdx2ohhVE3FOOwUSmX+RCpfrDuijm8gM7vvDdeXa5Y2DBodJuTw39+4Cn1p
         GjYzWnnkKhvBRBSuh+sOrOlMyLsEI6OkYPRLaaXXMWI9rLQhWIEDO1o6ypkgu7mVTOIm
         ZhI1gtUDj0B7MYUgWADUf6yOrCAm1/mN25mXTBSsy1qMdq73faNl4kg6CLCWBTT8Ddk9
         cqcqIxJgCvtttLI50lKdJ35L+HCl+iUftcCVRTTjLPVSMReRsWZMp3fwOZzghusUUslo
         6y+YXEI/1ZZ3ETl1kER+VdSJJRV2IGgZztVxTZify+Ujm3arUhxwPxWi2H4snxJ4qRDs
         FJLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727098976; x=1727703776;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lmi4LwsQVWVuhv2u7M387Utb1/3g/g58JnDuv7KUrV8=;
        b=IeY31SLRSqdlyyjdhrF7evIz3BUIt8ebZQFj+R6G00Ca/hVsXEw6HiPBMX1xBvR6nG
         ghEdULQbO6tdQq2neXi4rR8F7WF2MTLoPBThsDbL6LymmyjMDV8dFx0ULqYaNve58T0O
         ukKRsXoHArH98JacmEFn69d6KQZmNdZSpC7Ka6Hks448F7MTQ4GRZFgBvyDmUcX9cTTN
         wPDrLJA6sSlnkIdRNtfLcWIC5zJI6GDGwg4KeojKXaQwl4NFoaEXKNefVRXJxnhHuDQf
         zjjZtUD6Py7MrzjPACX3FpQQlw2XPNHfZz4j1KkrzmSCOL9NUPKCJlI1DVOLt7nEYiO5
         0Kaw==
X-Forwarded-Encrypted: i=1; AJvYcCUxQB/shr9VKewbzelmVHYWcCMVjKG3hD2lFbUD/UbIrmTtPTBjaH7/MjglDaPHF0/VS4IdRyWaLkct@vger.kernel.org
X-Gm-Message-State: AOJu0YxU56Gjeu/SEGXuWWqJGl9xVzFJrQ9d7jvWy2g5KcWpTfXt070c
	XdsF8nz8P0uP+eC3A2aCYnqYUwzGLbnBRYgWgnmtptjn3mtGOKfJn1ATNgMYvz4=
X-Google-Smtp-Source: AGHT+IFxg+CNVtD2TyiKjmB4Qulk1SqyU3c8EKJ4MqIDUQPspZnRPVur5vPqy0ENvEqgWxT5svosnA==
X-Received: by 2002:a05:6a00:3e17:b0:70e:acd0:d8b6 with SMTP id d2e1a72fcca58-7199c8456d1mr6829062b3a.0.1727098976235;
        Mon, 23 Sep 2024 06:42:56 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944b97302sm14376009b3a.147.2024.09.23.06.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:42:55 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 2/2] drm/panel: boe-th101mb31ig002: Modify Starry panel timing
Date: Mon, 23 Sep 2024 21:42:27 +0800
Message-Id: <20240923134227.11383-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240923134227.11383-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

In MTK chips, if the system starts suspending before the DRM runtime 
resume has not completed, there is a possibility of a black screen 
after waking the machine. Reduce the disable delay resolves this issue, 

The "backlight_off_to_display_off_delay_ms" was added between
"backlight off" and "display off"  to prevent "display off" from being
executed when the backlight is not fully powered off, which may cause
a white screen. However, we removed this
"backlight_off_to_display_off_delay_ms" and found that this situation
did not occur. Therefore, in order to solve the problem mentioned
above, we removed this delay, and the delay between "display off" and
"enter sleep" is not defined in the spec, so we reduce it from 120ms 
to 50ms.

In addition, T14 >= 120ms, so we change
"enter_sleep_to_reset_down_delay_ms" from 100ms to 120ms.

The panel spec:
1. https://github.com/Vme5o/power-on-off-sequential

Fixes: e4bd1db1c1f7 ("drm/panel: boe-th101mb31ig002: Support for starry-er88577 MIPI-DSI panel")

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V2 and V1:
-  1. Modify the commit message.
-  2. Delete the value of backlight_off_to_display_off_delay_ms.
-  3. Modify the value of enter_sleep_to_reset_down_delay_ms from 100ms to 120ms.
v1: https://lore.kernel.org/all/20240915080830.11318-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c    | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index 0b87f1e6ecae..9e4d91c7c394 100644
--- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
+++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
@@ -29,7 +29,7 @@ struct panel_desc {
 	bool lp11_before_reset;
 	unsigned int vcioo_to_lp11_delay_ms;
 	unsigned int lp11_to_reset_delay_ms;
-	unsigned int backlight_off_to_display_off_delay_ms;
+	unsigned int display_off_to_enter_sleep_delay_ms;
 	unsigned int enter_sleep_to_reset_down_delay_ms;
 	unsigned int power_off_delay_ms;
 };
@@ -184,12 +184,10 @@ static int boe_th101mb31ig002_disable(struct drm_panel *panel)
 						      panel);
 	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
 
-	if (ctx->desc->backlight_off_to_display_off_delay_ms)
-		mipi_dsi_msleep(&dsi_ctx, ctx->desc->backlight_off_to_display_off_delay_ms);
-
 	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
 
-	mipi_dsi_msleep(&dsi_ctx, 120);
+	if (ctx->desc->display_off_to_enter_sleep_delay_ms)
+		mipi_dsi_msleep(&dsi_ctx, ctx->desc->display_off_to_enter_sleep_delay_ms);
 
 	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
 
@@ -275,6 +273,7 @@ static const struct panel_desc boe_th101mb31ig002_desc = {
 			  MIPI_DSI_MODE_NO_EOT_PACKET |
 			  MIPI_DSI_MODE_LPM,
 	.init = boe_th101mb31ig002_enable,
+	.display_off_to_enter_sleep_delay_ms = 120,
 };
 
 static const struct drm_display_mode starry_er88577_default_mode = {
@@ -302,8 +301,8 @@ static const struct panel_desc starry_er88577_desc = {
 	.lp11_before_reset = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 50,
-	.backlight_off_to_display_off_delay_ms = 100,
-	.enter_sleep_to_reset_down_delay_ms = 100,
+	.display_off_to_enter_sleep_delay_ms = 50,
+	.enter_sleep_to_reset_down_delay_ms = 120,
 	.power_off_delay_ms = 1000,
 };
 
-- 
2.17.1


