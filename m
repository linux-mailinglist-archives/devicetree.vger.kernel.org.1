Return-Path: <devicetree+bounces-83019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBCD926E96
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 06:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7A871C22B5A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 04:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28948143883;
	Thu,  4 Jul 2024 04:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="tOM4NLAn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02C3136643
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 04:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720068644; cv=none; b=raTQMR7SGUDyfYKx+ll2kraHHjd1i8mrZ2CJZVHFeLc9/NoojKndLPQjypc7Tbs5je77A9TlVBEuSneLCkOQQMcDan+/vtzNWUEJFE88S2+wdsscEeqyjkjMzl56HqYT3weMptQToY/XKEdgiRzbAL15bCuzKkl5W+SHg+IZzj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720068644; c=relaxed/simple;
	bh=JlS0kdlYQIbGydDcA5gCCDnyyMA/N87lVtA9gr7AeVg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o75+8SWRAxkhADhXuYTrNxyBhaTKtAzjolv1fjqWeiOt+qrDWV1YbqVuYN9aDMThZXc5eUZHLvU9APrvV30EZjDW1T6Qlle0OowqUXp7le+5/Qhqfv0U+vC1QYZz7UcK6+xsxyZNTQOwt2/1FCFpYB367S1V8jCjfGbvMAzRHYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=tOM4NLAn; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d55ed47cc6so166294b6e.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 21:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720068638; x=1720673438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bD9Tai0nkE0+Ev3Lisgvg41Q3eqH1YVbWBHXOkXQr6w=;
        b=tOM4NLAnrOvdv+ZzRJ8tBOIlK5HEWsgkT9qHf29g5C4baR5HiYLo5DXrygseriEj2P
         ERVIGM6XL2VraUkNsN7ARBs3m1YuRCxmkW7ZGXUbilw6pAQ58gnQ4wsvA7hpfkAjech0
         O/O1V6muKq+i1Xl9DyduhWUC9EMEqailiApYfO+gI2gy+K69Mqk2WIWh6Rr0dFr1dHBb
         1zhonBOE/yAQgLOieXspruKq6ybNFKuLiZPuOA0owTylQF1Loz9l1VAkX/E9UhiBJQLF
         9uvNr4c5WZCHJU3IKQvJNrzSwYxFqxut+V4Mo6JPhNIKbgYKkR/FermTbB5UHGjxoICC
         0AEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720068638; x=1720673438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bD9Tai0nkE0+Ev3Lisgvg41Q3eqH1YVbWBHXOkXQr6w=;
        b=kHyIm34/DqsvOWMgElYsLjfiwq1gVjSEQ+1YL1JHcAIMMbCX0WBwptSZBXDKhXEqh9
         WVdZl0RGFgyVd1HkvFIccdlKAsFCKOn2OBJCrRpdbup6xid8d6RYGkoOoKxYH5Cq5wW6
         w+ca0CSrTTYdq4YfWJ35hrBrwZbwY1shRzAfFfhqwsG1xPi0hcDm8dkrQ8TSjW7oVgws
         /8QE3pSPE/2l2ELH30YVkQoaPJ1hVw85X0qkW82+fwE/KSQiHhr0zxQ97ypzEyrCQq2P
         Y+JnvgWTaIzfNDg0ndL4eRlZ51WnKHsx/U+EYsWOe2LWVMDlMg7SUWxpOJphgGbTmd8k
         ETrA==
X-Forwarded-Encrypted: i=1; AJvYcCUKHzVdKGJ0XcLtB8Whid+HNZ1gNgUNajIEEvL6Bq0tNaxKuXZKrC9izonb56jQ41/VU+2OBPXwmjDKFKFEuZfQ+UuqJ97SB05KdQ==
X-Gm-Message-State: AOJu0Yw+4a/RiuGskZFWLCrKFZCkb9zT7vKMPPi1HvAIwaJjeFNWs6rg
	CdRn24MZ8OQRY5QNEXjT1p2Zx5loBkoJlk4IwrRqP1M49G/KrFfiZwTx9X+PaIA=
X-Google-Smtp-Source: AGHT+IHwwga1IEdCiVOyLlXXI+6T6T1XMfgREfk4mwo8bwOSREM75asgAfNixtyUixH+H1nS3bRAVw==
X-Received: by 2002:a05:6808:159d:b0:3d2:1aa5:ad10 with SMTP id 5614622812f47-3d914e9df05mr638001b6e.45.1720068638567;
        Wed, 03 Jul 2024 21:50:38 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804a8ec1asm11291826b3a.188.2024.07.03.21.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 21:50:38 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	swboyd@chromium.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: lvzhaoxiong@huaqin.corp-partner.google.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v2 2/3] drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel
Date: Thu,  4 Jul 2024 12:50:16 +0800
Message-Id: <20240704045017.2781991-3-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Melfas lmfbx101117480 is a 10.1" WXGA TFT-LCD panel, use jd9365da
controller, which fits in nicely with the existing panel-jadard-jd9365da-h3
driver. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 246 ++++++++++++++++++
 1 file changed, 246 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index c6b669866fed..5b525a111b90 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -850,6 +850,248 @@ static const struct jadard_panel_desc kingdisplay_kd101ne3_40ti_desc = {
 	.enter_sleep_to_reset_down_delay_ms = 100,
 };
 
+static int melfas_lmfbx101117480_init_cmds(struct jadard *jadard)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x93);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe2, 0x65);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe3, 0xf8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xbf);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xbf);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x70);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x2d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x2d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x7e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x78);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xa0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x8e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x2e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x69);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x59);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x4c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x68);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x5b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x24);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x69);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x59);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x4c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x68);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x5b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x24);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x52);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x4e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x4c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x4a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x53);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x51);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x4f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x4d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x5f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x4b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x41);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x13);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x0d);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x11);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x0e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x75);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0xb4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x6c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xbb);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x23);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x11);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe6, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe7, 0x06);
+
+	return dsi_ctx.accum_err;
+};
+
+static const struct jadard_panel_desc melfas_lmfbx101117480_desc = {
+	.mode = {
+		.clock		= (800 + 24 + 24 + 24) * (1280 + 30 + 4 + 8) * 60 / 1000,
+
+		.hdisplay	= 800,
+		.hsync_start	= 800 + 24,
+		.hsync_end	= 800 + 24 + 24,
+		.htotal		= 800 + 24 + 24 + 24,
+
+		.vdisplay	= 1280,
+		.vsync_start	= 1280 + 30,
+		.vsync_end	= 1280 + 30 + 4,
+		.vtotal		= 1280 + 30 + 4 + 8,
+
+		.width_mm	= 135,
+		.height_mm	= 216,
+		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init = melfas_lmfbx101117480_init_cmds,
+	.lp11_before_reset = true,
+	.reset_before_power_off_vcioo = true,
+	.vcioo_to_lp11_delay_ms = 5,
+	.lp11_to_reset_delay_ms = 10,
+	.exit_sleep_to_display_on_delay_ms = 120,
+	.display_on_delay_ms = 20,
+	.backlight_off_to_display_off_delay_ms = 100,
+	.display_off_to_enter_sleep_delay_ms = 50,
+	.enter_sleep_to_reset_down_delay_ms = 100,
+};
+
 static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
@@ -926,6 +1168,10 @@ static const struct of_device_id jadard_of_match[] = {
 		.compatible = "kingdisplay,kd101ne3-40ti",
 		.data = &kingdisplay_kd101ne3_40ti_desc
 	},
+	{
+		.compatible = "melfas,lmfbx101117480",
+		.data = &melfas_lmfbx101117480_desc
+	},
 	{
 		.compatible = "radxa,display-10hd-ad001",
 		.data = &cz101b4001_desc
-- 
2.25.1


