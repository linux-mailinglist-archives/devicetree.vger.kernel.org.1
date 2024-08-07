Return-Path: <devicetree+bounces-91735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB00894A503
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 12:05:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 197681C20E0D
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 10:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA791D3641;
	Wed,  7 Aug 2024 10:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="WJ6PTJj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A0A1D2F4E
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 10:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723025089; cv=none; b=ZWpYrUBKkHt5Yp8rqKmVbjoKhl5ZH14wqeP50BAHCCRAh1p2yWMVFDjUw6WZLgtirumu0TBrwQl/6g0Vcg4GP85/FRoMzPV4NAVL/x+WMPcJVRyhw5rmmybnYX0e1bXb0e2nUKxdEwBT6wFWiaxH7S7z0QZ7oHcl1A7PAJPxcPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723025089; c=relaxed/simple;
	bh=h5PwanRWo0hRZrjyL8ceM2+ETwSQTNvkD3omPGo/98E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=qvGXcvBiGlG7kt54C/H3TrJ16Xcyyf8ECA//jzsKNscsbM0Y8+IoQ0J1NJN4wgGjsKeI8adZ5f5sTpL0ZXqDGopdl7h8J0qCcwU9xH2bkGsuBkCkbuHoC2dE4+jkBHO78t/QbeARoJsY42Ny8/vhWMwbUcUoiDbgsK+YvyVDytg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=WJ6PTJj7; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7aa7703cf08so1285188a12.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 03:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1723025086; x=1723629886; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XxHvlW+GPIrL16ohKwLK8Pe/MaSBIU8AXjIyW7SHLSE=;
        b=WJ6PTJj77/qtER6pAevBoc71TSBkeU5R453chvm0yODsEGLR84/kJ5pYzlood3KWyq
         D+Aro6A8572rucUCcrqP/tt/wBD54Vbz0iZiqQJvty7z8IY3KChAcwnxCU/WRkrk/+NH
         vo0FvOJAjSQ33GxzRGd+UBEeAtPvadb3UUXxI77xrFZIMotTk+DLKD8VQmsCwcMictK/
         xgGjju+nepCw+WlYvfPdP8MFivAZDcVbC4JzbO3j64r/CI9H8FnZIBqpJ9tpQ61HxF3m
         7HyUfuFonb39jNfhFhcO/78cWPp/4PH/kMm/rHWoWaIW/Ee9ZfTARFYXneVngMQanp/7
         /2EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723025086; x=1723629886;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XxHvlW+GPIrL16ohKwLK8Pe/MaSBIU8AXjIyW7SHLSE=;
        b=aViVFyIVT8OHWPEPTbj3gQFlfQTHHkUQwD+TPnN/QaGUj7Bf0xXOwMnLV9/xQ3W7oE
         HU9rH+XYN+MEtjDBTddQcoGl6U6kWlv2bLWWGADjd2XTLjP77Hj5y4Cqs4+EktWhG+Sf
         3ZN9h2FO3SrzP8G4FRcUP9OKQW9fJTxMCkbRceE0BIX74w66kZiCh6L0NpeJLdK2Vly3
         4PV/4cAahT9CMmsq53z7v81uUlT2rc7glQ1mBOdqDO2piXtKFjkMdkOUNRkhjvn6UP49
         lSaT1jpd+F9OKTmdclxvO57VqVdb/8+d4qn2grvXVROKj+dVs2ditFZQMOAcDOXgR7N0
         Yrsg==
X-Forwarded-Encrypted: i=1; AJvYcCWVqgzgn8tuwuQcKGUy3QPJCLC4Xruq3rMBQ4ttzMMWocQrPh0/5BcK3YZ/JWYQ2R584dTnCErBeznYfCkBzNZJ7ugVLOHMuRh+iA==
X-Gm-Message-State: AOJu0Yw2HkU1OzIb2NghKrD5CpBW8TS7BkG1q4HEHy1MzVzOqyNYmPsW
	tLS5ICtE3ys1Jqre+Jtzm5lh5JLBrKJnlphJvRbif4zqiX1avkHUp3esKVuvvZc=
X-Google-Smtp-Source: AGHT+IHx0fnYhknx7Pb72V9GMhWIWX7/L6foCBec3QTiwVs9nHU+yz25MljxI78JpzydsflHwhqQeA==
X-Received: by 2002:a05:6a20:6a0a:b0:1c3:b102:bfd2 with SMTP id adf61e73a8af0-1c699580a4cmr24278664637.14.1723025085878;
        Wed, 07 Aug 2024 03:04:45 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ecdff89sm8119248b3a.103.2024.08.07.03.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 03:04:45 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	jagan@edgeble.ai,
	dmitry.baryshkov@linaro.org,
	jani.nikula@linux.intel.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/2] drm/panel: jd9365da: Move "exit sleep mode" and "set display on" cmds
Date: Wed,  7 Aug 2024 18:04:28 +0800
Message-Id: <20240807100429.13260-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Move the "exit sleep mode" and "set display on" command from
enable() to init() function.

As mentioned in the patch:
https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com/

The Mediatek Soc DSI host has different modes in prepare() and
enable() functions, prepare() is in LP mode and enable() is in
HS mode. Since the "exit sleep mode" and "set display on"
command must also be sent in LP mode, so we also move "exit
sleep mode" and "set display on" command to the init() function.

We have no other actions in the enable() function after moves
"exit sleep mode" and "set display on", and we checked the call
of the enable() function during the "startup" process. It seems
that only one judgment was made in drm_panel_enabel(). If the
panel does not define enable(), the judgment will skip the
enable() and continue execution. This does not seem to have
any other effect, and we found that some drivers also seem
to have no enable() function added, for example:
panel-asus-z00t-tm5p5-n35596 / panel-boe-himax8279d...
In addition, we briefly tested the kingdisplay_kd101ne3 panel and
melfas_lmfbx101117480 panel, and it seems that there is no garbage
on the panel, so we delete enable() function.

After moving the "exit sleep mode" and "set display on" command
to the init() function, we no longer need additional delay
judgment, so we delete variables "exit_sleep_to_display_on_delay_ms"
and "display_on_delay_ms".

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V3 and V2:
-  1. The code has not changed, Just modified the nit in the commit 
-     information mentioned by Doug.
v2: https://lore.kernel.org/all/20240806034015.11884-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. The code has not changed, Modify the commit information.
v1: https://lore.kernel.org/all/20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++---------
 1 file changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 04d315d96bff..ce73e8cb1db5 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -31,8 +31,6 @@ struct jadard_panel_desc {
 	bool reset_before_power_off_vcioo;
 	unsigned int vcioo_to_lp11_delay_ms;
 	unsigned int lp11_to_reset_delay_ms;
-	unsigned int exit_sleep_to_display_on_delay_ms;
-	unsigned int display_on_delay_ms;
 	unsigned int backlight_off_to_display_off_delay_ms;
 	unsigned int display_off_to_enter_sleep_delay_ms;
 	unsigned int enter_sleep_to_reset_down_delay_ms;
@@ -66,26 +64,6 @@ static inline struct jadard *panel_to_jadard(struct drm_panel *panel)
 	return container_of(panel, struct jadard, panel);
 }
 
-static int jadard_enable(struct drm_panel *panel)
-{
-	struct jadard *jadard = panel_to_jadard(panel);
-	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
-
-	msleep(120);
-
-	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
-
-	if (jadard->desc->exit_sleep_to_display_on_delay_ms)
-		mipi_dsi_msleep(&dsi_ctx, jadard->desc->exit_sleep_to_display_on_delay_ms);
-
-	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
-
-	if (jadard->desc->display_on_delay_ms)
-		mipi_dsi_msleep(&dsi_ctx, jadard->desc->display_on_delay_ms);
-
-	return dsi_ctx.accum_err;
-}
-
 static int jadard_disable(struct drm_panel *panel)
 {
 	struct jadard *jadard = panel_to_jadard(panel);
@@ -202,7 +180,6 @@ static const struct drm_panel_funcs jadard_funcs = {
 	.disable = jadard_disable,
 	.unprepare = jadard_unprepare,
 	.prepare = jadard_prepare,
-	.enable = jadard_enable,
 	.get_modes = jadard_get_modes,
 	.get_orientation = jadard_panel_get_orientation,
 };
@@ -382,6 +359,12 @@ static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
 
 	jd9365da_switch_page(&dsi_ctx, 0x00);
 
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
 	return dsi_ctx.accum_err;
 };
 
@@ -608,6 +591,12 @@ static int cz101b4001_init_cmds(struct jadard *jadard)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE6, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE7, 0x0C);
 
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
 	return dsi_ctx.accum_err;
 };
 
@@ -831,6 +820,16 @@ static int kingdisplay_kd101ne3_init_cmds(struct jadard *jadard)
 
 	jd9365da_switch_page(&dsi_ctx, 0x00);
 
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 20);
+
 	return dsi_ctx.accum_err;
 };
 
@@ -859,8 +858,6 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
 	.reset_before_power_off_vcioo = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 10,
-	.exit_sleep_to_display_on_delay_ms = 120,
-	.display_on_delay_ms = 20,
 	.backlight_off_to_display_off_delay_ms = 100,
 	.display_off_to_enter_sleep_delay_ms = 50,
 	.enter_sleep_to_reset_down_delay_ms = 100,
@@ -1074,6 +1071,16 @@ static int melfas_lmfbx101117480_init_cmds(struct jadard *jadard)
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe6, 0x02);
 	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe7, 0x06);
 
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 20);
+
 	return dsi_ctx.accum_err;
 };
 
@@ -1102,8 +1109,6 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
 	.reset_before_power_off_vcioo = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 10,
-	.exit_sleep_to_display_on_delay_ms = 120,
-	.display_on_delay_ms = 20,
 	.backlight_off_to_display_off_delay_ms = 100,
 	.display_off_to_enter_sleep_delay_ms = 50,
 	.enter_sleep_to_reset_down_delay_ms = 100,
-- 
2.17.1


