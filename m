Return-Path: <devicetree+bounces-84589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7BE92CD76
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6D0D1F20FD2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59C0916D4EE;
	Wed, 10 Jul 2024 08:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="R7Tk8vH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2790715EFA6
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601279; cv=none; b=HoQ9Wr32dzdGwYXjpMJMCcXRRGkzJU+4hcZMbqCZl+XwUm3BxXMlTq84VFr/FCtI537vVcuk+fYAHATQTjdgA49qY85kiXV18pP1uF3pOm/Gzp8vgK1+/eCIk9gKRzK9vBLT9JmI9ytLb3WvLS++MsRKlAQxoX4GybuveFQe7/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601279; c=relaxed/simple;
	bh=U8mZtcqAqHWq05u+vLUqpSAGzUxtUKajXnSgAGfSt1o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YbT0VxEMtLPweeT6vzNUocc5fSmY59ZoYMyRBD256FaSQryAzNC4cOhEB2smnz7Geuwg54XeJlghSef9F5fSnxNfYS2Zc8WVuylvztKkP0j65FdAxCaFFqctGGDx4ByyWxNAruvgonUK3DQeZSMUd2zZ+6rGEsgfh7l9BYJPjlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=R7Tk8vH6; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-375af3538f2so25765005ab.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720601276; x=1721206076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YdSsX2hRP68+2VkCMs98/L4VKlK5bg19EsXogh1t9Wo=;
        b=R7Tk8vH6mYqagASWTDRw7VSr1e94YCAWE66YQDQ54shMqofYxF1vmAApLQIkPdN96N
         eRZvXBhGhnDlpiRhP+InODaU59WGchrWZtuwvO26RVlkVjosLC8rMaf0sFxKMAwzhcgf
         jc8DQbjUB87k0V8xQ7fdTOICfGmm0EngrUtBuouVFNK4h88MqntI7PM7GvCMy+QlZPxy
         kONVnYb0YAs0FcT3emfn995h75blfgBS4qsqagpWbQhtE1Oci4ILlnfUuZsYDFEqtKPL
         tOjVeiB4gVMiOdrv8k9GBhOQsuHEBDExTic5QZYWqOtFbq2xh0zmOlxX4R0U+UtAhj6o
         Vglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720601276; x=1721206076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdSsX2hRP68+2VkCMs98/L4VKlK5bg19EsXogh1t9Wo=;
        b=vBEZYJpzNk5ewls4hBNFAfnQ5KsjLVUADtSm+fvkWNETtmNP7cDtt9qs+3GJzwGhfr
         cVImdk1DCkr8MI99vX4Krr+dYfjovpdNSrHWz9C9xzm8EuC1ExpdBWsHvuhs3OC0O10t
         LYpLkXmqYOML2He350+lyJJJddrFadGRLNtAqtNtnjYo+9h4E3yKyeikFugVzOky+9sx
         8/6jn2G2ZKV2Nwnzyb+olZiKqVvDQfYf1Kh8JHzR5bYKsgYjUCkRiO3ev60+HHMD1flu
         DIW8NlbH/DHlheNBdAk2aYwGpPGF29YK7C8phRNPyA37P1jReO6WYxh+5YMPs+PhDONO
         9x1w==
X-Forwarded-Encrypted: i=1; AJvYcCWqAZF6q5qzUbNc993gIbCTOU5IBhpS0bQnIpjN1nYkm/t3ze0psnHtpbmlje5rdQmpoF03K0YTbPwnQMGfcbJoren92sYC+CottA==
X-Gm-Message-State: AOJu0YyXH1zgqo2jFFCnlW3gajZ3kUBk+h9NbNVI14oIr1KLPjXSqCTy
	nD4LrUFYd8wD3ChA1UT98iMLnDEoAitn57CSdTE7145MS3q9qgegACKJWJQ/864=
X-Google-Smtp-Source: AGHT+IEhdBXlvTXTNxPpSAqUXDrupWPb2+8ZA9pQkHECsu0JxSijkOpQo0s7y/6jmiFP7pAfDuJ/Mg==
X-Received: by 2002:a05:6e02:1c8e:b0:377:14a7:fc7a with SMTP id e9e14a558f8ab-38a58583d49mr58625765ab.12.1720601276050;
        Wed, 10 Jul 2024 01:47:56 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b438997d4sm3216077b3a.28.2024.07.10.01.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 01:47:55 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	mwalle@kernel.org,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 4/4] drm/panel: ili9806e: Break some CMDS into helper functions
Date: Wed, 10 Jul 2024 16:47:15 +0800
Message-Id: <20240710084715.1119935-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Break select page cmds into helper function.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9806e.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
index e4a44cd26c4d..68fb9a1a4d80 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
@@ -35,6 +35,12 @@ struct ili9806e_panel {
 	enum drm_panel_orientation orientation;
 };
 
+#define ILI9806E_DCS_SWITCH_PAGE	0xff
+
+#define ili9806e_switch_page(ctx, page) \
+	mipi_dsi_dcs_write_seq_multi(ctx, ILI9806E_DCS_SWITCH_PAGE, \
+				     0xff, 0x98, 0x06, 0x04, (page))
+
 static const char * const regulator_names[] = {
 	"vdd",
 	"vccio",
@@ -227,7 +233,7 @@ static void ili9806e_dsi_remove(struct mipi_dsi_device *dsi)
 static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
 {
 	/* Switch to page 1 */
-	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x01);
+	ili9806e_switch_page(ctx, 0x01);
 	/* Interface Settings */
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x08, 0x18);
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x21, 0x01);
@@ -285,14 +291,14 @@ static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
 	mipi_dsi_dcs_write_seq_multi(ctx, 0xcf, 0x0a);
 
 	/* Switch to page 7 */
-	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x07);
+	ili9806e_switch_page(ctx, 0x07);
 	/* Power Control */
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x06, 0x00);
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x18, 0x1d);
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x17, 0x32);
 
 	/* Switch to page 6 */
-	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x06);
+	ili9806e_switch_page(ctx, 0x06);
 	/* GIP settings */
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x00, 0x20);
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x01, 0x02);
@@ -352,7 +358,7 @@ static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x53, 0x12);
 
 	/* Switch to page 0 */
-	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x00);
+	ili9806e_switch_page(ctx, 0x00);
 	/* Interface Pixel format */
 	mipi_dsi_dcs_write_seq_multi(ctx, 0x3a, 0x60);
 };
-- 
2.25.1


