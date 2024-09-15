Return-Path: <devicetree+bounces-103070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 361329795B9
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 10:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 598F81C217B5
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 08:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DC513B5B3;
	Sun, 15 Sep 2024 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="DtuYbJOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F7213B584
	for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 08:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726387862; cv=none; b=YAAjBLBQlpQMKM8tjjoZ9iyM/j+JS033U/dnLVl1ag/+2CqPmJRQndcIWTyZfUKOBvkVkTqPnTRedBeiv1j1NUPbyofWKW942KZN9dsC1k2uAgYc77JfvUYIA4Ebbt1ZuyA6X8aRxusLc9ONUXuMLZuhGeSWlrl12Kg263lFxpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726387862; c=relaxed/simple;
	bh=1UAnYDW0MGQxfNhUqb3o5IVqhK9bipaUoybWUt7aUL8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=tHeBOAZcCpZCQsH0p6Fj2+uH8KQ/ev5PjqJ9VegVNiVbwuyUkcOalQNo5ueFqyBAUyR8UyFCxwg0fGE1YmZ7NSRTEX16ShrBeYMmeg5v6vGhJfYybDLBrGHIFFe923LNW8XbQvj8qAaUCIsH0hBN1MovHdT1Vr9xzsMQMJQtEmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=DtuYbJOm; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-718ebb01fd2so765987b3a.2
        for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 01:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726387860; x=1726992660; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sRDTLwONqQd982ElhveII1b1cUAuGyre5X0fuHS6yLY=;
        b=DtuYbJOmq6xJ17B6OSanv/VKAzfqoae2uRoVYIHfRMna4sMRx8cCKLQO4iaOHJQj5x
         Ijosq4o6L0fnfmNB9MoES8IKNfT2Z17b4My3WudPhX95PYog7cx6zDFTcegYYa4MUHWl
         gQ/ej6EjM+eLRXx2P3qG/YcRPi95cqnaVDKf/E7Ez5mI4aGJYJjm6RTZF7EoDWPaIgMe
         wY6N1tLmMmmahOgvm7y62CNMI0/zEqrE+AtV6dY1JSvpaovfCvCXABLbpeiV7chY0yPn
         MX9stx23wHbOtymiyLkdSAh2yYaa3EBX1XCsGY+c+/OK+KTBT5H6wrKTl7PjkLsoTtEK
         ezbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726387860; x=1726992660;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sRDTLwONqQd982ElhveII1b1cUAuGyre5X0fuHS6yLY=;
        b=wvsTdkGXknjNpdFGhXVL3CId9pSiUAScj05SPolluXIegHHtybPi9o+pnE48kp1p23
         Wc9tHOdcWWBTGpRaHMMHHYkeOsUdGUbE0il2NzJHaiW47mH3Ex0k9OLDINfzYnXjVhLx
         Qc6yEuY0IA0SuqNAw1R45dz+P/2OFg69d9FbI35ZG6ddlKZv8p73BceyntU94KVuw/qm
         8kV8UQQldjTc4Y0N6ZyEGMCgC4VF8rfdrp8vLSOrnQ1r17J0OzyofkxVM5OTTPlfkdnN
         hIk9IDN9shUQ+gqxn4qXkbQy0P27qs1bp8z35TLAPR0INoIc9ZBSmOhc353kfn6A9is6
         +QVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEjMQhABuDTej+YqhiSBwAtg+x/mx1k4wqdZz7RWkvb6iaLVr0AJ2Ug/B2ohMTF34TI8wRP16+hVta@vger.kernel.org
X-Gm-Message-State: AOJu0Yx72WmB4cqXf0ouLpfcV2l4NCjogND4IuOO9su1l0SixkZV3XMz
	HV7F4ruC8KuAqPWqB+ZH4d8itWcN8jojKhV7YqYz/IO+waQehVNlpil8tPy3Qsc=
X-Google-Smtp-Source: AGHT+IGklY3LMqjEheyFTix+dZ97vdFbx9qbo4QLsOK0vJc+LXtmYTKaliThR6RCom4pnnRpY/hUkQ==
X-Received: by 2002:a17:90b:104a:b0:2db:60b:3669 with SMTP id 98e67ed59e1d1-2dba007c325mr5338573a91.8.1726387859978;
        Sun, 15 Sep 2024 01:10:59 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbcfd26f2csm2662672a91.31.2024.09.15.01.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 01:10:59 -0700 (PDT)
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
Subject: [PATCH v1 2/2] drm/panel: boe-th101mb31ig002: Modify Starry panel timing
Date: Sun, 15 Sep 2024 16:08:30 +0800
Message-Id: <20240915080830.11318-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

In order to meet the timing, remove the delay between "backlight off"
and "display off", and reduce the delay between "display_off" and
"enter_sleep"

Removing variables: display_off_to_enter_sleep_delay_ms

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
index 0b87f1e6ecae..c2d0ec199829 100644
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
@@ -302,7 +301,7 @@ static const struct panel_desc starry_er88577_desc = {
 	.lp11_before_reset = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 50,
-	.backlight_off_to_display_off_delay_ms = 100,
+	.display_off_to_enter_sleep_delay_ms = 50,
 	.enter_sleep_to_reset_down_delay_ms = 100,
 	.power_off_delay_ms = 1000,
 };
-- 
2.17.1


