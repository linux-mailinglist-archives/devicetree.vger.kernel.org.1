Return-Path: <devicetree+bounces-84587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 886EC92CD73
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB9561C22D68
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 08:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE7615FA8B;
	Wed, 10 Jul 2024 08:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="FfFtXIYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0122B15B0E1
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601269; cv=none; b=GM0pUa5ZIFfs44/WqVSyfdmJ3nQtbK4VNwiV5ek2Ub+Y/tuVsXuswQ7E+SmuZl74mGlTJKZxn5OknRjB5IoULNsQXY+PVQK8bsS9exZs/ShRTfbPeoS+MomL3LvxupP4KCSPxXTk0XC6NAnTfet2zs30DvtzzDOPFdwwEmyf0fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601269; c=relaxed/simple;
	bh=Bk+IrrCIn85BfXV4DNf2Fjy3xxvIvP39O/WjAwSQqRc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m9KHiNOfE3nTT3u9j1BjrF2ClkqoBF4ZHcxQwfnfLrwqe0sEIZngaSfteI48UCC7GedP8t7+++Uyt3ipC0S99anIzMqVBrUI9bG1FEXEHYeAvFDEDcHpMvaebEYZlohbuiYkN/4RYGCK4LjM9p8oNyyLZijyGmJo+lvrLGbLH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=FfFtXIYx; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-70af5fbf0d5so382290b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 01:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720601266; x=1721206066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXBDlG1I/lzZeBefyMjGbvmhGQI0/1kYfl254lPabwc=;
        b=FfFtXIYx9uv2RHlWxlYDIhZG7f2C1Nwk7geKSNjBNL233tAD9GM2X7+FeRI6wxp2Py
         9FmuRrTcJZAB92b3Y2APs7C2QgV9NE0GzTrBYCuchZ2S+6d+09sbKhQjShpJ0xNcOZPD
         X/mHEJdV1UqgtZQJzTnIu+pgeBB3eDgBBA4fW3coiTP5lpr75iMC2XWEDErK+Qntwmya
         bYIthBGvRISKU2kLIu0DpNqutGcGz1pEFCISP5FDoqzUkoTkFQz8vhcMG/C1unCg6kHr
         GtHhPKqgVQRVK7f0SABFtUF/9O8xTbaNXF0dxFpxhLquNsgTFtVvjNDVHvzunniMKAtv
         a8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720601266; x=1721206066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXBDlG1I/lzZeBefyMjGbvmhGQI0/1kYfl254lPabwc=;
        b=m5XMddFRfB+CtNXT/TuO5iNGIYW/72JGh2RY+B2cN631b84Tx7tIDlYW6FWaFP+84i
         DREDyjpPlGoEf5lSyrKyD7nlG00snnTATrwNgHqKkG3uJu4/DnAIQ7I4WhSX6IEP+VQC
         atvvvVEgTHYxwPQfut/PriHLmPzTgobkZWtnK6fafIPZI+bkwcMeCItslihLBy+V/kVu
         An3+7lU/aS8syI1o6o8DBdQfJzDjkmgYrrz0fLAAHam9xHxXh/N7gP5pHW+DYzP5Xx2/
         Ovz3dtuuoR9yJiKimj8kGkugGh8qEJzK+5N2tucWvEx9y4GMP3BaaMVMBzmY3l8Hc3ZK
         lh1w==
X-Forwarded-Encrypted: i=1; AJvYcCWyPSYnXtb4U9SsTtUGdpOgGxkbRDnQ2nAJMkuZpOZZMCIm5YICs0PsEdSBuaofH4JS/I3gqNfTvyC+Le5J52Qr9QveY9FEDM6GWg==
X-Gm-Message-State: AOJu0YzppblKIUyu7rMSLkszDYkFeyIt1YEhpQnxdolwkJ0zXK2e7Kwd
	jtl9kkfJdcWxDDPhm+FWlRmTX+rJRdO7Hk5kOxoFUeQjGebG0Sz8cnD0CIImJHI=
X-Google-Smtp-Source: AGHT+IHRpFgk9Kh/NEjBd2abgjEdLxEoyMQEAZuELGDG3fQNivCkALbrYlNh01gHQfOmG2fRpuRYfQ==
X-Received: by 2002:a05:6a00:1396:b0:705:d6ad:2495 with SMTP id d2e1a72fcca58-70b44e02e67mr8110266b3a.12.1720601266161;
        Wed, 10 Jul 2024 01:47:46 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b438997d4sm3216077b3a.28.2024.07.10.01.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 01:47:45 -0700 (PDT)
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
Subject: [PATCH v1 2/4] drm/panel: nt35521: Break some CMDS into helper functions
Date: Wed, 10 Jul 2024 16:47:13 +0800
Message-Id: <20240710084715.1119935-3-yangcong5@huaqin.corp-partner.google.com>
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

Break select page cmds into helper functions.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../panel/panel-sony-tulip-truly-nt35521.c    | 29 ++++++++++++++-----
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c b/drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c
index f2198fa29735..104b2290560e 100644
--- a/drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c
+++ b/drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c
@@ -25,6 +25,12 @@ struct truly_nt35521 {
 	struct gpio_desc *blen_gpio;
 };
 
+#define NT35521_DCS_SWITCH_PAGE	0xf0
+
+#define nt35521_switch_page(dsi_ctx, page) \
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, NT35521_DCS_SWITCH_PAGE, \
+				     0x55, 0xaa, 0x52, 0x08, (page))
+
 static inline
 struct truly_nt35521 *to_truly_nt35521(struct drm_panel *panel)
 {
@@ -48,7 +54,7 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 
 	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
 
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
+	nt35521_switch_page(&dsi_ctx, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0xaa, 0x55, 0xa5, 0x80);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x6f, 0x11, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf7, 0x20, 0x00);
@@ -59,7 +65,8 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xbb, 0x11, 0x11);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xbc, 0x00, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb6, 0x02);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x01);
+
+	nt35521_switch_page(&dsi_ctx, 0x01);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0, 0x09, 0x09);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb1, 0x09, 0x09);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xbc, 0x8c, 0x00);
@@ -71,7 +78,8 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb4, 0x25, 0x25);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb9, 0x43, 0x43);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xba, 0x24, 0x24);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x02);
+
+	nt35521_switch_page(&dsi_ctx, 0x02);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xee, 0x03);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0,
 					 0x00, 0xb2, 0x00, 0xb3, 0x00, 0xb6, 0x00, 0xc3,
@@ -103,7 +111,8 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 					 0x02, 0x93, 0x02, 0xcd, 0x02, 0xf6, 0x03, 0x31,
 					 0x03, 0x6c, 0x03, 0xe9, 0x03, 0xef, 0x03, 0xf4);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xbb, 0x03, 0xf6, 0x03, 0xf7);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x03);
+
+	nt35521_switch_page(&dsi_ctx, 0x03);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0, 0x22, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb1, 0x22, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb2, 0x05, 0x00, 0x60, 0x00, 0x00);
@@ -122,7 +131,8 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xc5, 0xc0);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xc6, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xc7, 0x00);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x05);
+
+	nt35521_switch_page(&dsi_ctx, 0x05);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0, 0x17, 0x06);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb1, 0x17, 0x06);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb2, 0x17, 0x06);
@@ -178,7 +188,8 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xeb, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xec, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xed, 0x30);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x06);
+
+	nt35521_switch_page(&dsi_ctx, 0x06);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb0, 0x31, 0x31);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb1, 0x31, 0x31);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb2, 0x2d, 0x2e);
@@ -235,10 +246,12 @@ static int truly_nt35521_on(struct truly_nt35521 *ctx)
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x6f, 0x11);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf3, 0x01);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x35, 0x00);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
+
+	nt35521_switch_page(&dsi_ctx, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xd9, 0x02, 0x03, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x00, 0x00);
-	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
+
+	nt35521_switch_page(&dsi_ctx, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xb1, 0x6c, 0x21);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x00, 0x00);
 	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x35, 0x00);
-- 
2.25.1


