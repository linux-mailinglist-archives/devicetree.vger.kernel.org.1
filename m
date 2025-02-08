Return-Path: <devicetree+bounces-144206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7CA2D5AF
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 11:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB1BE168771
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 10:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953691F03D8;
	Sat,  8 Feb 2025 10:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="gLpKRRMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D141E3DCD
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 10:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739012028; cv=none; b=Uyi3F8o+4RUNkD9JeRzE+g4P3WBx6irrwskB4oGooskPuMA8cByTNgZAUtuhLIPXKYYRoNtybQi3DNPcM/70Vzz0mTp0SelKSul1XLCTd/G40SLivQig65ONCBFNm3pyxD7JxrxOY/7aEiLmApXHlVdpVQPRgkPkJhYptWJp54k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739012028; c=relaxed/simple;
	bh=ax1o1fpei484xZRK2rQI+uwwNmAyUFKGL4YVPVJZtys=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nK3wuC0/kE6vge2/pgirn2jcskYYUOY1E7rCL2QyapImJebp2sE7vw76iFRFPAncuObJbjcugSk4kSfoSgrep98vgbC6hM+0Mu0+dNCkUUNhQZYNMCxSEDXMMD1dmi5mxvdjUZReANATi0JfBZfYpvWeL9DwBeRlKcKZaHRNzU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=gLpKRRMD; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2fa345713a8so2291104a91.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 02:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1739012025; x=1739616825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQrnvzVN+czw/aIxJ1bypX+PwJX4ySE3P9bY6Zh8dF4=;
        b=gLpKRRMDhDDnnzpdN7w+LRt3jR8ikucXWESXd2Tl/iTjyKb3ZN2Keds1gpZ1nFl/xw
         DzhL67s7XeL4NjdpfvQ0ANkwBbbf9P1uQQWJYbTvpuuGGecPMRh9y8NWLCI8bQd0QBYL
         ZsDKhrorIcRr3we+0WhDGASHFAb5wcdxIuMCZfVGWkpxnPGMmpoyCYbWKu5JaWGjRRrE
         XAFc5iyhb4YWIhdST2FWIRkGzxoF3DmOJutntJkxaZOxcfb7eMLYSzsGu75gi5w6SrHN
         77PlH8H9cVI8hgICArAGE4wQzdAOU2cwF2/VbpvWs4bnJ3kBofMAI5zTCEggZK2QAsEC
         QyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739012025; x=1739616825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQrnvzVN+czw/aIxJ1bypX+PwJX4ySE3P9bY6Zh8dF4=;
        b=n/yTSJdG0cqlHY+PHpWiq+z8XWsSxOcIxu/2hhWlWZa0DyDlw3Uqx0gqrbmPQu0cj7
         tXuYcqcqthue2GmhHRFHslSSyhehfMTHJMZ+Zznb4LXsTUEF/V2mYCl5lUd3Y4VAtXHI
         wLHV041zaHaP6kVFesdXCD8lBm/xBrvLuaOhBKZquPzMAbiVenQMV7+BGRol5j5/C7jl
         s1IzADSwgWQsv+tMUyv9rU9fz8iOTHMmMhX/TE6Y+TcdUXRs9j96j4R6daoBBs9FeDzD
         qlesq49NX5lN25AqzO2M/lLZ8XNmL8H6h4KkJbGBNwvumDKFidX2pHbeSwheulrJXgBe
         aG8A==
X-Forwarded-Encrypted: i=1; AJvYcCUFDlzK3au5TzUhMXdZYQvJhKCAWTubd6yOgzg6UvTEpcUAtN17P1zg9IJcJzZKV9QmvvoARoUlcCGL@vger.kernel.org
X-Gm-Message-State: AOJu0YzBN5wFgqOB9VGHhO2+USDsEqnOFHiQuO6ZpJJ3ERNvRoo4gqF1
	lSNjl7fdQotsnI77Z4X/Wl1ut7WALvFbnnZnmE763bsPKqsrWQ876xwEi2m1OIA=
X-Gm-Gg: ASbGncsxgDW7amPhnO/JLOt9fRkvlLUHEEnI/Bt6MzIcCs+s9WfJDwfXjAI/14GMnqV
	rNziwAfPP0nljVlj2VCwNoIYG3x/pwC/Q9D46vHMOAwKLQU9OiuybmID/jM1LSPqegVpVb9knxp
	26cx1efQp0kw6Ho7IV1W5r8nr8XOAQBYFiDUqMHzB24l+1hxZ8c1pzd2VYfbx8R1ACQbFkh1UZN
	nGKMk4qcAYksdvM2rfRM8fwgYHdNlQPwPJc4RlGSHL2ZUMdYTpsGCAuL779Z+lYnf6XjWPd4Dkn
	qRrYnrNRsUM+juB9UeIBJFW8S3Hw93799QgKeUBuhGw0qn2n2j5xKzUD0HVtd1k=
X-Google-Smtp-Source: AGHT+IGNH73KvngmIvEBiJnWdA5V2qlSw1SSZo8SpbLAGo12RqBszTDgGsAMmaVXYHfqsOSFIdlxFw==
X-Received: by 2002:a17:90b:510e:b0:2ee:70cb:a500 with SMTP id 98e67ed59e1d1-2fa23f563b2mr9057596a91.1.1739012025335;
        Sat, 08 Feb 2025 02:53:45 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa36f185c5sm2142003a91.16.2025.02.08.02.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 02:53:44 -0800 (PST)
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
Subject: [PATCH v5 3/3] drm/panel: panel-himax-hx83102: support for starry-2082109qfh040022-50e MIPI-DSI panel
Date: Sat,  8 Feb 2025 18:53:26 +0800
Message-Id: <20250208105326.3850358-4-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The starry-2082109qfh040022-50e is a 10.95" TFT panel. The MIPI controller
on this panel is the same as the other panels here, so add this panel to
this driver.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-himax-hx83102.c | 142 ++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx83102.c b/drivers/gpu/drm/panel/panel-himax-hx83102.c
index 9a818dea653f..66abfc44e424 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx83102.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx83102.c
@@ -24,6 +24,8 @@
 #define HX83102_SETPOWER	0xb1
 #define HX83102_SETDISP		0xb2
 #define HX83102_SETCYC		0xb4
+#define HX83102_UNKNOWN_B6	0xb6
+#define HX83102_UNKNOWN_B8	0xb8
 #define HX83102_SETEXTC		0xb9
 #define HX83102_SETMIPI		0xba
 #define HX83102_SETVDC		0xbc
@@ -584,6 +586,121 @@ static int kingdisplay_kd110n11_51ie_init(struct hx83102 *ctx)
 	return dsi_ctx.accum_err;
 }
 
+static int starry_2082109qfh040022_50e_init(struct hx83102 *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+	msleep(50);
+
+	hx83102_enable_extended_cmds(&dsi_ctx, true);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D9, 0xd1);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2c, 0xb5, 0xb5, 0x31, 0xf1, 0x33,
+				     0xc3, 0x57, 0x36, 0x36, 0x36, 0x36, 0x1a, 0x8b, 0x11, 0x65,
+				     0x00, 0x88, 0xfa, 0xff, 0xff, 0x8f, 0xff, 0x08, 0x3c, 0x33);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETDISP, 0x00, 0x47, 0xb0, 0x80, 0x00, 0x22,
+				     0x70, 0x3c, 0xa1, 0x22, 0x00, 0x00, 0x00, 0x88, 0xf4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x14, 0x16, 0x14, 0x50, 0x14, 0x50,
+				     0x0d, 0x6a, 0x0d, 0x6a, 0x01, 0x9e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_B6, 0x34, 0x34, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_B8, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcd);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x84);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETVDC, 0x1b, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_BE, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xfc, 0xc4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSTBA, 0x38, 0x38, 0x22, 0x11, 0x33, 0xa0,
+				     0x61, 0x08, 0xf5, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcc);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTCON, 0x80);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETRAMDMY, 0x97);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPWM, 0x00, 0x1e, 0x30, 0xd4, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x08, 0x13, 0x07, 0x00, 0x0f,
+				     0x16);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPANEL, 0x02, 0x03, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCASCADE, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPCTRL, 0x37, 0x06, 0x00, 0x02, 0x04,
+				     0x2c, 0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x3b, 0x03, 0x73, 0x3b, 0x21, 0x21, 0x03,
+				     0x03, 0x98, 0x10, 0x1d, 0x00, 0x1d, 0x32, 0x17, 0xa1, 0x07,
+				     0xa1, 0x43, 0x17, 0xa6, 0x07, 0xa6, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP1, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18,
+				     0x40, 0x40, 0x18, 0x18, 0x18, 0x18, 0x2a, 0x2b, 0x1f, 0x1f,
+				     0x1e, 0x1e, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b,
+				     0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
+				     0x0a, 0x0b, 0x20, 0x21, 0x18, 0x18, 0x18, 0x18);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x02, 0xaa, 0xea, 0xaa, 0xaa, 0x00,
+				     0x02, 0xaa, 0xea, 0xaa, 0xaa, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x07, 0x10, 0x10, 0x2a, 0x32, 0x9f,
+				     0x01, 0x5a, 0x91, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x12,
+				     0x05, 0x02, 0x02, 0x10, 0x33, 0x02, 0x04, 0x18, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x01, 0x7f, 0x11, 0xfd);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x86);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D2, 0x3d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x00, 0x00, 0x00, 0x80, 0x80, 0x0c,
+				     0xa1);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
+				     0x03, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0x02, 0x00, 0x2d, 0x01, 0x7f, 0x0f,
+				     0x7c, 0x10, 0xa0, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPTBA, 0xf2);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCLOCK, 0x02, 0x00, 0x00, 0x10, 0x58);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_D2, 0x0a, 0x0a, 0x05, 0x03, 0x0a,
+				     0x0a, 0x01, 0x03, 0x01, 0x01, 0x05, 0x0e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcc);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP0, 0x03, 0x1f, 0xe0, 0x11, 0x70);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xab, 0xff, 0xff, 0xff, 0xff, 0xa0,
+				     0xab, 0xff, 0xff, 0xff, 0xff, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETTP1, 0xfe, 0x01, 0xfe, 0x01, 0xfe, 0x01,
+				     0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x81, 0x02, 0x40, 0x00,
+				     0x20, 0x9e, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc6);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETCYC, 0x03, 0xff, 0xf8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETGIP3, 0xaa, 0xab, 0xea, 0xaa, 0xaa, 0xa0,
+				     0xaa, 0xab, 0xea, 0xaa, 0xaa, 0xa0, 0xaa, 0xbf, 0xff, 0xff,
+				     0xfe, 0xa0, 0xaa, 0xbf, 0xff, 0xff, 0xfe, 0xa0, 0xaa, 0xaa,
+				     0xaa, 0xaa, 0xaa, 0xa0, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_UNKNOWN_E1, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x96);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xc5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x4f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xcc);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETMIPI, 0x84);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0x3f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETBANK, 0x00);
+	hx83102_enable_extended_cmds(&dsi_ctx, false);
+
+	mipi_dsi_msleep(&dsi_ctx, 110);
+
+	return dsi_ctx.accum_err;
+}
+
 static const struct drm_display_mode starry_mode = {
 	.clock = 162680,
 	.hdisplay = 1200,
@@ -694,6 +811,28 @@ static const struct hx83102_panel_desc kingdisplay_kd110n11_51ie_desc = {
 	.init = kingdisplay_kd110n11_51ie_init,
 };
 
+static const struct drm_display_mode starry_2082109qfh040022_50e_default_mode = {
+	.clock = 192050,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 160,
+	.hsync_end = 1200 + 160 + 66,
+	.htotal = 1200 + 160 + 66 + 120,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 115,
+	.vsync_end = 1920 + 115 + 8,
+	.vtotal = 1920 + 115 + 8 + 28,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct hx83102_panel_desc starry_2082109qfh040022_50e_desc = {
+	.modes = &starry_2082109qfh040022_50e_default_mode,
+	.size = {
+		.width_mm = 147,
+		.height_mm = 235,
+	},
+	.init = starry_2082109qfh040022_50e_init,
+};
+
 static int hx83102_enable(struct drm_panel *panel)
 {
 	msleep(130);
@@ -924,6 +1063,9 @@ static const struct of_device_id hx83102_of_match[] = {
 	{ .compatible = "kingdisplay,kd110n11-51ie",
 	  .data = &kingdisplay_kd110n11_51ie_desc
 	},
+	{ .compatible = "starry,2082109qfh040022-50e",
+	  .data = &starry_2082109qfh040022_50e_desc
+	},
 	{ .compatible = "starry,himax83102-j02",
 	  .data = &starry_desc
 	},
-- 
2.34.1


