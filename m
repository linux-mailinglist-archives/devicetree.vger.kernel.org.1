Return-Path: <devicetree+bounces-104570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E004A97EC81
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 15:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F9CE282044
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2767119AA56;
	Mon, 23 Sep 2024 13:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="e4CumCGX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722271411C7
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 13:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727098969; cv=none; b=QFJbyh4dJGaVbwjYeIVrzHKSst7PwWLnOi8X+n++Un6aY/7wrJj0w0fDCaL0g5rr83dE+BMqG7+kdNms8p8lAa/JCtVkXdaZVkzX6gKFF4OhHnuQttIufJJv4P/lOIRstLWfmsxIKmNH+vC7zLvaDo/fOYAb+wvOY+fKZJFAXcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727098969; c=relaxed/simple;
	bh=dvY61XPOEDJOu4nGQOpPZE7AO1OSZx66f6S6u6qvpfw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=HhC+VMT545OhL3A+BOexh0xGdlNp7l9BarV7EFqAB+cn7bO9PDJ8RoM8v/4E0ifytUSMiJjZ6Bpg2Yp0heUFiy4OokeE1VpIYhTjpd1MkxvXoGIdqtDAX2UqifYBtQAtd1EYnTo/4xS4wRy8h1n1vWPY7pkpdo9Y8Aq+lYQ1J3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=e4CumCGX; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-718ef6a26dbso412746b3a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727098966; x=1727703766; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rPhqRjNNh/t9DBBH4x5Du2CMHjjsRIVHlcU5KXqqEs0=;
        b=e4CumCGXVyfUlWmqK2Ksj2/KU+mtH59ePogk8rmd6Ah1evc5v1JpFLPpQjBbbqRwsh
         Cr3pWUbumFxZQOwlt+gI6AHAvqhTDQCQ4BCX5tA+q8fZyFKwxtivWwK7/p9De71nbFus
         SNc6TZDLUY51Z06znmtyHCNPCLfcdSskLZkgLkBcfgyKiiWc3XmooMzpRhxceOn5h/W4
         E8rQ9qbJml/6P1hyQyE+hWovTn+29llepRNRFE1IA/BF78PdoKfZ4WE8W7eF5Xv7igzR
         k1+5rmXnpXmeL+5RUXIoTb2UI88lpRxhXeW5neFozvQAhvJnvYlDsis5DssrMebEywQw
         QecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727098966; x=1727703766;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rPhqRjNNh/t9DBBH4x5Du2CMHjjsRIVHlcU5KXqqEs0=;
        b=JqiTHiRjY8yBxhhOMKxAhGf//nBmk7ma65E74AwRyYhWRbYaTgDBb34ib3ed/4yrOj
         zmUTuscL/73Njj2q4jbj4Gq6M+7A9lQeuy4V7etIyTTjRhUAYsxITFLxL1ZKDXqRport
         xBoL82YzjbsgTn+soe8Om2+iTB1VVqQQCWIjdyiVUr88FOrmQ9xPwhQ8Uqv7MDo88nJL
         fuHjMpFO/oDNYR/r1sg7GCfeNUndIc4senhujEhtvs2A/Tx0duieknF+oErgDNyJ85Jg
         1e5+OK8eBg6DlIOwmvyASUYy3p49ZDPz97vq3PGfAgPOzzlqhvUljaJJtE/RID2cZTrw
         x9xg==
X-Forwarded-Encrypted: i=1; AJvYcCV66uAbiIxKo2+FQA9tM+zI9h1iHWTvISX8DPvzpNSjtYd5ytGyOWLcYPcyWe4HePlkrvjBiPJuk7pG@vger.kernel.org
X-Gm-Message-State: AOJu0YxUOZPCKI/0t9eGyXgI5Qrz38SUoElTUM/1g1jVTWP+OTINLLeS
	Xmo8CZpaWqAH16Wt/jbxW0PS5V9L1WAF6i+gMQLrh+esEw6iEPOjQYXKjJZfuO4=
X-Google-Smtp-Source: AGHT+IFUaJAwMUGDJFH9Es4pl65+q0d8XrzZ89GzAkgl6X5XV1I6vVd20Bxg+YXdCaCdc9bgokljqQ==
X-Received: by 2002:a05:6a00:3e17:b0:70e:acd0:d8b6 with SMTP id d2e1a72fcca58-7199c8456d1mr6828766b3a.0.1727098966486;
        Mon, 23 Sep 2024 06:42:46 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71944b97302sm14376009b3a.147.2024.09.23.06.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:42:46 -0700 (PDT)
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
Subject: [PATCH v2 1/2] drm/panel: jd9365da: Modify Kingdisplay and  Melfas panel timing
Date: Mon, 23 Sep 2024 21:42:26 +0800
Message-Id: <20240923134227.11383-2-lvzhaoxiong@huaqin.corp-partner.google.com>
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
above, we We reduced it from 100ms to 3ms (tCMD_OFF >= 1ms).

This is the timing specification for the two panels:
1. Kingdisplay panel timing spec:
https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
2. LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB


Fixes: 2b976ad760dc ("drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel")
Fixes: c4ce398cf18a ("drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel")

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V2 and V1:
-  1. Modify the commit message 
-  2. Modify the value of backlight_off_to_display_off_delay_ms.
v1: https://lore.kernel.org/all/20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 44897e5218a6..486aa20e5518 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -858,7 +858,7 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
 	.reset_before_power_off_vcioo = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 10,
-	.backlight_off_to_display_off_delay_ms = 100,
+	.backlight_off_to_display_off_delay_ms = 3,
 	.display_off_to_enter_sleep_delay_ms = 50,
 	.enter_sleep_to_reset_down_delay_ms = 100,
 };
@@ -1109,7 +1109,7 @@ static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
 	.reset_before_power_off_vcioo = true,
 	.vcioo_to_lp11_delay_ms = 5,
 	.lp11_to_reset_delay_ms = 10,
-	.backlight_off_to_display_off_delay_ms = 100,
+	.backlight_off_to_display_off_delay_ms = 3,
 	.display_off_to_enter_sleep_delay_ms = 50,
 	.enter_sleep_to_reset_down_delay_ms = 100,
 };
-- 
2.17.1


