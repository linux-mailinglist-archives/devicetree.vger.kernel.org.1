Return-Path: <devicetree+bounces-105838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57837988199
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 11:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B080AB25C9A
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 09:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CD41BB6BF;
	Fri, 27 Sep 2024 09:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="GUjYpNmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B411B1BB68C
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 09:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727430249; cv=none; b=SLjQBhQG2hVbS/VpDR+I3fe+NMAj36H0q/5AiMphQhTnUM+2+z7pzt7NfXSyHHxlG/FlvkcYkcCEFkcQGjMsmluWWm7yopVdYv79B8sYSWKlSASNpy6FyCe707BuPuoE2jZZv9eygh8BjefkRj+pXteZfITlxtlp6WVJdByIrUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727430249; c=relaxed/simple;
	bh=qUvzN8IBROYnnHg8qAtc3jAq1T0xOO32joawfFMzBZg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=EOZJ2k8gIgXqN3YdSmh6I7P4JQaKvW+eL64wYANA7D+8Mt50VNQd6+t09yLnkqmdHiaNnuU1b3cxFVgYpa8uT8tkGCrPSkxl6PDU6ltD+G2wOci76XI97Y02UEhUrQQjp+NUeUr+5qaXWWw0ZNkt1b2zqxKA0XnIhueNm3yuf7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=GUjYpNmJ; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20b2093f1cbso2534365ad.0
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 02:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1727430247; x=1728035047; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I+pcE4ggyYRS5X6pVo2fS5/uPfMaFvxBm9rRWSI3wH8=;
        b=GUjYpNmJwolzMXEkqKjx7RqbcGaCsyG+/xO38hiSeRdlJrdCrrijlZhsVIh+3Cv/5K
         CD8AXakTUPOm2IQQ9hhTgWWW8AWMQjcEHUinjAdKKQ0gsFcebF3h7v016FyJtvklD17U
         +Iq5eIHqZ01x17qLDysM50uGT/PpVpZXyg5irvLzAVASaa+I1SWaDAUbewztgNBUw/5R
         to5j1q4Wsp3jH5FRRRM9UVfqr6EiTTDbCEU7vnKr8p5li/Lfz8sVMF/jRGT7Ew62QV2w
         FMIiI3IgvQ1XInxQi4aFZxvRMZiOE7bAMTzKZY4EE16qkJprEm0dc7f3sp65e8DAGhOc
         OvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727430247; x=1728035047;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I+pcE4ggyYRS5X6pVo2fS5/uPfMaFvxBm9rRWSI3wH8=;
        b=IUEcvigbn0dV34NXhyQmpGJAZcDikKAQG1tQPG6bOQ3/B8JJHBSNsS0by7VjEZbcQx
         5+SUO1ACH4yyX89fO6hljxSNr4kw1O9Wqo3c0EYNqBNMm3D/ZM6aQl9/qKuPePLF4vcf
         5puJDpGBjw+rfuJc1IuqZm9WHQ8/AvntAxQbAp7bfB1hF7qIMcqFcTWQ+mAoxi42ctSt
         KVecwE/Yj43U3+JHEzevAJiD7LUrRJ5OYRbopV4XS1IkcECr1cHKwXI4FJC3IuOArnG4
         ZW7Zld+XRkZ0hDbxW9kRgvj9EUaQPnMsOno2PZe0g5eajXJEnygYD5EhKiSlnUcS4i9p
         TxUw==
X-Forwarded-Encrypted: i=1; AJvYcCV9767N5EZJ7RP9FLeTpoxaXk/4DAXQGV2V5LQtxom2WFDK1NOBTXkajzLi5NBBrpnlIlxDBR9u9pJy@vger.kernel.org
X-Gm-Message-State: AOJu0YxGja98i6G3532TBh9TYYVDxTt3xqSVwgtkWA21qiIUt2f8QBSz
	P+MdBE2i6g+0QyO1E6BsozW1MoCBCm2DN5RxaDtQP1GKNl7ECQhUwB+ZRm1ghaU=
X-Google-Smtp-Source: AGHT+IEv4f2iWdehOnAHDvI+4cTE317jz6vBcdU/dL58GnnGLWNRzmz39Mt/C1xTWOvT+3IlYnO3Zw==
X-Received: by 2002:a17:903:41ce:b0:206:b6db:499f with SMTP id d9443c01a7336-20b36716572mr16798355ad.0.1727430247011;
        Fri, 27 Sep 2024 02:44:07 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1bae46sm5105895a91.22.2024.09.27.02.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 02:44:06 -0700 (PDT)
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
Subject: [PATCH v3 1/2] drm/panel: jd9365da: Modify Kingdisplay and  Melfas panel timing
Date: Fri, 27 Sep 2024 17:43:39 +0800
Message-Id: <20240927094340.18544-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240927094340.18544-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240927094340.18544-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

In MTK chips, if the DRM runtime resume has not yet completed and the
system enters sleep mode at the same time, there is a possibility of
a black screen after waking the machine. Reduce the disable delay
resolves this issue,

The "backlight_off_to_display_off_delay_ms" was added between
"backlight off" and "display off"  to prevent "display off" from being
executed when the backlight is not fully powered off, which may cause
a white screen. However, we removed this
"backlight_off_to_display_off_delay_ms" and found that this situation
did not occur. Therefore, in order to solve the problem mentioned
above, we reduced it from 100ms to 3ms (tCMD_OFF >= 1ms).

This is the timing specification for the two panels:
1. Kingdisplay panel timing spec:
https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
2. LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB

Fixes: 2b976ad760dc ("drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel")
Fixes: c4ce398cf18a ("drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel")

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V3 and V2:
-  1. Modify the commit message 
v2: https://lore.kernel.org/all/20240923134227.11383-2-lvzhaoxiong@huaqin.corp-partner.google.com/

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


