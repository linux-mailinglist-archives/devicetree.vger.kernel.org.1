Return-Path: <devicetree+bounces-139240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ADDA14BFB
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CB8C3A23A6
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479C41F9F58;
	Fri, 17 Jan 2025 09:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="W01fPfHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B851F91F6
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105443; cv=none; b=mxj0fyqgAAa80b5XfP2UkiikkZggQluldxIqjoeUrgDwqoeTabLtgpGVueB1xo/s2MExV9dfpOhpZ0iyweFDstlrWaDeRiW58CXwQCFr3bosmHI/BsW/5aE7fPjkL91X+zqroWYkiG+qTfIG6OvpacumEU5HNST8n8oQcYulxa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105443; c=relaxed/simple;
	bh=l2dISADbIjqO1MCpIrtrCOScc7k0NytqNYf8Xy4uVA0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JkmN2mWe2UoLTPE59o0qOjeWfs4IQdpUUItr2at4Tf3G0XeWxtQXsiQLqBKRSng5hcZakM3eUjYiZ0F7bal2q9E4nMH9Y2y/N6CIiFsRhvcaUG7vXiH4Ra6mTwVJ8MbuPUpSz6xJDFfr9RImqj7LBoF+r5BF5KQFaFcr4CfIrNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=W01fPfHM; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2166360285dso36155875ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 01:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737105440; x=1737710240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vsu01DL5YXruSfsNC0w4FgwMrAXarB2x6Q2xxx/MZ8=;
        b=W01fPfHM6/P9Dqf/JraEEnPabJTpUjA15vBv922yQoe4awFPGZBuywM4A6eoaV2jmP
         ruv4IjUAp7P4eC6+9XcddgtTTcNdhmqGl2q3uTqEjjPJjpB3vfprSRJlP33KozliwK9K
         LI2om3YgV3NO4aDTo39o5UD9cCWeRfz277hwWPsIMFQao/fy0NMWXAoWX12npZJv1hl3
         iKRY04sb7amexwYN3YZTOHgCIHA1Pll1v6Uu4GXlYAsTP+gIqL6qGHsEpr+CpjISWcVF
         nw8f+Y1zLLzgM/AO10F6oLjMCSLqijw5CnfTYpib4Z6eGbwln4szwHmX4DJKoa4NGecT
         KesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737105440; x=1737710240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vsu01DL5YXruSfsNC0w4FgwMrAXarB2x6Q2xxx/MZ8=;
        b=JJkktX+SQXOxSoKfqJIU1ypChczmlQ7Em0nXBQjg9PNSmuhKgOE1GqW1ZktF8PinAg
         UdZoXQGwtSjP2cTmbJlTOFuA0ElrnwkGKiBxPw+4sVS64BJZXNFMWn0wByRaU7ygMrbx
         ExDMBDXed92FqQ3ztPpXizluvU6kEWPUuKSaC1DW7if4YCNVzzDT4YZI10vy+GzHLd7W
         RLCSpFi4CwKVLde3/3h1GaY5IHC8LdBjJeybjCTSt1ExhhbQAvGLjepZfFTK3Fr0UV3u
         EucxdV42B11Suu6Gzsq85s/DUxCt2s/jDqUeK9ZX6ZIKdvXs91Q5xoELca2Rort0NRYz
         C7UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXb4pkEqv1OFntKpcOHMXhyOWJ4CL7W2LK21sqr7HpeslhfEZJ/2E5jdzk5DmyLivearrnCglsPS3vD@vger.kernel.org
X-Gm-Message-State: AOJu0YzWEj0sesv65ZNFPdBLu/zhv/R2w7xKBaQvWLILvDM140A19qCc
	GYp/7/Fb4NDr3CtAr78aZN+TrlFbXgQ4kGntS8l4k0xR2FQr3sr4lADiu8eIsbQ=
X-Gm-Gg: ASbGncvnPmwWaJfdcWCCLmaLTBd3LZBKuFUuxJEgxlFnRR6f5YibIg+dX/xybRWgoPJ
	gG7hx5sn8dDafSgQ7eOAG5hspCPr18Nvsl2f9NEe11DUX6vDAhjj9y29b6BAVdFNJQSh0wFeWXy
	Oi1q75/vygMWxVH8/XB7wgh1xvuNJTB/p4q1B/1saOZRyMdDbEfjSTVwcu1v1sxkbDT9o079EH1
	SanNxZo8JSWMQoTlHKj3+c6+wezxH+QViCenERjCbKtij/mUsk+Qck8/w2Y1ZEVXr7G11WTrzh3
	DJXqt56UVG1peeX2lxk7cc2q8SZ6
X-Google-Smtp-Source: AGHT+IGoUaGk95oUM4yQSaHCkyk3jFE22p1d6MLwz3TYAGKxVg2fcmcmw3Ez/8KhKRUvTsG7JUf3Lg==
X-Received: by 2002:a05:6a00:2e9e:b0:725:e1de:c0bf with SMTP id d2e1a72fcca58-72daf9483fdmr2743028b3a.9.1737105440509;
        Fri, 17 Jan 2025 01:17:20 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab815bccsm1421548b3a.56.2025.01.17.01.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 01:17:19 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 4/4] drm/panel: boe-tv101wum-nl6: support for starry-2082109qfh040022-50e MIPI-DSI panel
Date: Fri, 17 Jan 2025 17:14:38 +0800
Message-Id: <20250117091438.1486732-5-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The starry-2082109qfh040022-50e is a 10.95" TFT panel.
which fits in nicely with the existing panel-boe-tv101wum-nl6 driver.
From the datasheet, MIPI needs to keep the LP11 state before the
lcm_reset pin is pulled high, so increase lp11_before_reset flag.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 148 ++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
index 72fa0f6a5cb6..d45321cece55 100644
--- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
@@ -1400,6 +1400,123 @@ static int kingdisplay_kd110n11_51ie_init(struct boe_panel *boe)
 	return 0;
 }
 
+static int starry_2082109qfh040022_50e_init(struct boe_panel *boe)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = boe->dsi };
+
+	msleep(50);
+
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB9, 0x83, 0x10, 0x21, 0x55, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD9, 0xD1);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x2C, 0xB5, 0xB5, 0x31, 0xF1, 0x33, 0xC3, 0x57,
+		0x36, 0x36, 0x36, 0x36, 0x1A, 0x8B, 0x11, 0x65, 0x00, 0x88, 0xFA, 0xFF, 0xFF,
+		0x8F, 0xFF, 0x08, 0x3C, 0x33);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB2, 0x00, 0x47, 0xB0, 0x80, 0x00, 0x22, 0x70, 0x3C,
+		0xA1, 0x22, 0x00, 0x00, 0x00, 0x88, 0xF4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB4, 0x14, 0x16, 0x14, 0x50, 0x14, 0x50, 0x0D, 0x6A,
+		0x0D, 0x6A, 0x01, 0x9E);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB6, 0x34, 0x34, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB8, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xCD);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBA, 0x84);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBC, 0x1B, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBE, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBF, 0xFC, 0xC4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC0, 0x38, 0x38, 0x22, 0x11, 0x33, 0xA0, 0x61, 0x08,
+		0xF5, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xCC);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC7, 0x80);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC6);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC8, 0x97);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xC9, 0x00, 0x1E, 0x30, 0xD4, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x08, 0x13, 0x07, 0x00, 0x0F, 0x16);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCC, 0x02, 0x03, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD0, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD1, 0x37, 0x06, 0x00, 0x02, 0x04, 0x2C, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD3, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x3B, 0x03, 0x73, 0x3B, 0x21, 0x21, 0x03, 0x03, 0x98, 0x10, 0x1D, 0x00,
+		0x1D, 0x32, 0x17, 0xA1, 0x07, 0xA1, 0x43, 0x17, 0xA6, 0x07, 0xA6, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD5, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x40, 0x40,
+		0x18, 0x18, 0x18, 0x18, 0x2A, 0x2B, 0x1F, 0x1F, 0x1E, 0x1E, 0x24, 0x25, 0x26,
+		0x27, 0x28, 0x29, 0x2A, 0x2B, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
+		0x08, 0x09, 0x0A, 0x0B, 0x20, 0x21, 0x18, 0x18, 0x18, 0x18);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x02, 0xAA, 0xEA, 0xAA, 0xAA, 0x00, 0x02, 0xAA,
+		0xEA, 0xAA, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0x07, 0x10, 0x10, 0x2A, 0x32, 0x9F, 0x01, 0x5A,
+		0x91, 0x14, 0x14, 0x00, 0x00, 0x00, 0x00, 0x12, 0x05, 0x02, 0x02, 0x10, 0x33,
+		0x02, 0x04, 0x18, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB1, 0x01, 0x7F, 0x11, 0xFD);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x86);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD2, 0x3D);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC5);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD3, 0x00, 0x00, 0x00, 0x80, 0x80, 0x0C, 0xA1);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0x03, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x03, 0xFF,
+		0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0x02, 0x00, 0x2D, 0x01, 0x7F, 0x0F, 0x7C, 0x10,
+		0xA0, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBF, 0xF2);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xCB, 0x02, 0x00, 0x00, 0x10, 0x58);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD2, 0x0A, 0x0A, 0x05, 0x03, 0x0A, 0x0A, 0x01, 0x03,
+		0x01, 0x01, 0x05, 0x0E);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xCC);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD3, 0x03, 0x1F, 0xE0, 0x11, 0x70);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0xAB, 0xFF, 0xFF, 0xFF, 0xFF, 0xA0, 0xAB, 0xFF,
+		0xFF, 0xFF, 0xFF, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE7, 0xFE, 0x01, 0xFE, 0x01, 0xFE, 0x01, 0x00, 0x00,
+		0x00, 0x03, 0x00, 0x03, 0x81, 0x02, 0x40, 0x00, 0x20, 0x9E, 0x02, 0x01, 0x00,
+		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC6);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB4, 0x03, 0xFF, 0xF8);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xD8, 0xAA, 0xAB, 0xEA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAB,
+		0xEA, 0xAA, 0xAA, 0xA0, 0xAA, 0xBF, 0xFF, 0xFF, 0xFE, 0xA0, 0xAA, 0xBF, 0xFF,
+		0xFF, 0xFE, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0xA0, 0xAA, 0xAA, 0xAA, 0xAA,
+		0xAA, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE1, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC4);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBA, 0x96);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xC5);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBA, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0xCC);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBA, 0x84);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xE9, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xBD, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&ctx, 0xB9, 0x00, 0x00, 0x00, 0x00);
+
+	msleep(110);
+
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
 static inline struct boe_panel *to_boe_panel(struct drm_panel *panel)
 {
 	return container_of(panel, struct boe_panel, base);
@@ -1761,6 +1878,34 @@ static const struct panel_desc kingdisplay_kd110n11_51ie_desc = {
 	.lp11_before_reset = true,
 };
 
+static const struct drm_display_mode starry_2082109qfh040022_50e_default_mode = {
+	.clock = (1200 + 160 + 66 + 120) * (1920 + 115 + 8 + 28) * 60 / 1000,
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
+static const struct panel_desc starry_2082109qfh040022_50e_desc = {
+	.modes = &starry_2082109qfh040022_50e_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 147,
+		.height_mm = 235,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init = starry_2082109qfh040022_50e_init,
+	.lp11_before_reset = true,
+};
+
 static int boe_panel_get_modes(struct drm_panel *panel,
 			       struct drm_connector *connector)
 {
@@ -1929,6 +2074,9 @@ static const struct of_device_id boe_of_match[] = {
 	{ .compatible = "kingdisplay,kd110n11-51ie",
 	  .data = &kingdisplay_kd110n11_51ie_desc
 	},
+	{ .compatible = "starry,2082109qfh040022-50e",
+	  .data = &starry_2082109qfh040022_50e_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, boe_of_match);
-- 
2.34.1


