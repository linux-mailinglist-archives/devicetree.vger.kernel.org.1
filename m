Return-Path: <devicetree+bounces-75838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B690908DF3
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A989B1F23BAC
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8A828370;
	Fri, 14 Jun 2024 14:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="PfB8FRyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E611120B20
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718376930; cv=none; b=aiHc5OP3PnBIKWVZzJ4utXCrslrwdNLmWoK4HC6BdLujiiGOk+TDw/xXoG5XRBCfu5S2GP1wWdWQKKH19a4alXiUPZTdNgeWG/phonHLfx6mIMjxddyTu6RhzD3GcXugCmNpel30j5GCQN2HRlYW3pE09DI8gkB1qdpZyrrxuZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718376930; c=relaxed/simple;
	bh=UGJNnz9tH/RRDDOX5kNxqeU7WVH1RWbdzimzYR4B1+M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TtGuG/C6jEugXKKZtgnRytuZAOpJNLO48QYEVFMNIOVc1Jt1IOhpNzbe+lUyh7HrczaT6lQ+pWciEpf86+TGskfpo7dLyIaedEZW3QUfOpVZ6fEMzNcKlzGqI/EjN+IKm/LL870sDQhZbgEZXWPJkSiDFd6rS80hm5rMO4yumuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=PfB8FRyU; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1f6da06ba24so20621015ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718376927; x=1718981727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pHANt5Cp32RfFp4d5eI3jM3mJir3iiGlkrgVrQmmRTc=;
        b=PfB8FRyUdLIBhQ8bvjSEIJlTVHYQSa/T8gT+a+x3cdndTsAp8aXDBIyUngJHJr60lZ
         DV0RZB/T6oX8/p9KbHT4WePs/ZvyQw1epjG7QKjNoNqQogBw3XWuSaPInOtWRSLH4c7A
         N3h1tt2Gyh9iKR3HkbcJtahWXpwwHKYFMuiYcXjaLRnX3nhfKln62yYwYC5Wwa30PXH0
         IUw9LZG6s93ojY1grg+gWiXkFv6kTPZWwrANy/cB1PNFHkYaNXR/WnGH5pgv3rSQ6xsH
         g6V3yExGo/DMxrnAdnerG5XCY39bjeWQRyDFnhI5oD1tNGW5Yjy28BCFwouVxvORtMFs
         PPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718376927; x=1718981727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pHANt5Cp32RfFp4d5eI3jM3mJir3iiGlkrgVrQmmRTc=;
        b=PmEcp9Ew1i8chqEOwnmY2yKcpUgjBCXB8fNzl2SLXkVymKvuGDopDo+tnJiJpyoy+p
         6WpuWL6fITngvIkwVuMO196FNf6RNyolYOiaOoRx/86wcbDFBlagyDqquMpYLROhFpkS
         ACGWCkPtgiBwEFM2ClKmJoD7Bw4Z32dAjifyWQHKa2myuQS/b/wbSJFJ4PyJ8oi4c54K
         YCJFJyupnkS8GuSO38LkjYbnifeh1dZNwhpahvzTfWYKOJZ6hkZGbsQ5xiM8eb+WatiD
         qxTbMwttf29iC45n3oMHAIzxim7x+In/OvV0AS+RUZ5DVepeCU/cfEy+JxGWYnJVAO3x
         lchg==
X-Forwarded-Encrypted: i=1; AJvYcCWne07fXaUyScskZxK0a0sU17KJtMALOmHOSfvd8EP+Jagf9BE8n0jOTT8euNaKu8GB5ECTB5CVrmulvHOjNB9Q6QSoUw+3DKLwAg==
X-Gm-Message-State: AOJu0YyAZiOdBisnz9lc9HeUi8eRj9QuhxBWHj7A0QUEKq3Jck+GlUVp
	N9tJA6FnYEUyc+aw8qBHeavsi5K5eZBBFVAQo3sdJCxY0SfMrvdPd+HNHD3ezy0=
X-Google-Smtp-Source: AGHT+IHXI7hhY7GcZM0vfQ0eA3rCcJfu63ixfC08tYuGiX+WVtVYkfBYVwLJZhldqXvAuuzh48TWkA==
X-Received: by 2002:a17:902:e5c2:b0:1f6:7f05:8c0e with SMTP id d9443c01a7336-1f8625c1757mr34926575ad.2.1718376926376;
        Fri, 14 Jun 2024 07:55:26 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e739b7sm32914495ad.93.2024.06.14.07.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 07:55:25 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/4] drm/panel: jd9365da: Modify the method of sending commands
Date: Fri, 14 Jun 2024 22:55:07 +0800
Message-Id: <20240614145510.22965-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Currently, the init_code of the jd9365da driver is placed
in the enable() function and sent, but this seems to take
a long time. It takes 17ms to send each instruction (an init
code consists of about 200 instructions), so it takes
about 3.5s to send the init_code. So we moved the sending
of the inti_code to the prepare() function, and each
instruction seemed to take only 25μs.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 781 +++++++++---------
 1 file changed, 393 insertions(+), 388 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 4879835fe101..b39f01d7002e 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -19,17 +19,13 @@
 #include <linux/of.h>
 #include <linux/regulator/consumer.h>
 
-#define JD9365DA_INIT_CMD_LEN		2
-
-struct jadard_init_cmd {
-	u8 data[JD9365DA_INIT_CMD_LEN];
-};
+struct jadard;
 
 struct jadard_panel_desc {
 	const struct drm_display_mode mode;
 	unsigned int lanes;
 	enum mipi_dsi_pixel_format format;
-	const struct jadard_init_cmd *init_cmds;
+	int (*init)(struct jadard *jadard);
 	u32 num_init_cmds;
 };
 
@@ -52,21 +48,9 @@ static int jadard_enable(struct drm_panel *panel)
 {
 	struct device *dev = panel->dev;
 	struct jadard *jadard = panel_to_jadard(panel);
-	const struct jadard_panel_desc *desc = jadard->desc;
 	struct mipi_dsi_device *dsi = jadard->dsi;
-	unsigned int i;
 	int err;
 
-	msleep(10);
-
-	for (i = 0; i < desc->num_init_cmds; i++) {
-		const struct jadard_init_cmd *cmd = &desc->init_cmds[i];
-
-		err = mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365DA_INIT_CMD_LEN);
-		if (err < 0)
-			return err;
-	}
-
 	msleep(120);
 
 	err = mipi_dsi_dcs_exit_sleep_mode(dsi);
@@ -117,9 +101,21 @@ static int jadard_prepare(struct drm_panel *panel)
 	msleep(10);
 
 	gpiod_set_value(jadard->reset, 1);
-	msleep(120);
+	msleep(130);
+
+	ret = jadard->desc->init(jadard);
+	if (ret < 0)
+		goto poweroff;
 
 	return 0;
+
+poweroff:
+	gpiod_set_value(jadard->reset, 0);
+		/* T6: 2ms */
+	usleep_range(1000, 2000);
+	regulator_disable(jadard->vccio);
+
+	return ret;
 }
 
 static int jadard_unprepare(struct drm_panel *panel)
@@ -167,176 +163,181 @@ static const struct drm_panel_funcs jadard_funcs = {
 	.get_modes = jadard_get_modes,
 };
 
-static const struct jadard_init_cmd radxa_display_8hd_ad002_init_cmds[] = {
-	{ .data = { 0xE0, 0x00 } },
-	{ .data = { 0xE1, 0x93 } },
-	{ .data = { 0xE2, 0x65 } },
-	{ .data = { 0xE3, 0xF8 } },
-	{ .data = { 0x80, 0x03 } },
-	{ .data = { 0xE0, 0x01 } },
-	{ .data = { 0x00, 0x00 } },
-	{ .data = { 0x01, 0x7E } },
-	{ .data = { 0x03, 0x00 } },
-	{ .data = { 0x04, 0x65 } },
-	{ .data = { 0x0C, 0x74 } },
-	{ .data = { 0x17, 0x00 } },
-	{ .data = { 0x18, 0xB7 } },
-	{ .data = { 0x19, 0x00 } },
-	{ .data = { 0x1A, 0x00 } },
-	{ .data = { 0x1B, 0xB7 } },
-	{ .data = { 0x1C, 0x00 } },
-	{ .data = { 0x24, 0xFE } },
-	{ .data = { 0x37, 0x19 } },
-	{ .data = { 0x38, 0x05 } },
-	{ .data = { 0x39, 0x00 } },
-	{ .data = { 0x3A, 0x01 } },
-	{ .data = { 0x3B, 0x01 } },
-	{ .data = { 0x3C, 0x70 } },
-	{ .data = { 0x3D, 0xFF } },
-	{ .data = { 0x3E, 0xFF } },
-	{ .data = { 0x3F, 0xFF } },
-	{ .data = { 0x40, 0x06 } },
-	{ .data = { 0x41, 0xA0 } },
-	{ .data = { 0x43, 0x1E } },
-	{ .data = { 0x44, 0x0F } },
-	{ .data = { 0x45, 0x28 } },
-	{ .data = { 0x4B, 0x04 } },
-	{ .data = { 0x55, 0x02 } },
-	{ .data = { 0x56, 0x01 } },
-	{ .data = { 0x57, 0xA9 } },
-	{ .data = { 0x58, 0x0A } },
-	{ .data = { 0x59, 0x0A } },
-	{ .data = { 0x5A, 0x37 } },
-	{ .data = { 0x5B, 0x19 } },
-	{ .data = { 0x5D, 0x78 } },
-	{ .data = { 0x5E, 0x63 } },
-	{ .data = { 0x5F, 0x54 } },
-	{ .data = { 0x60, 0x49 } },
-	{ .data = { 0x61, 0x45 } },
-	{ .data = { 0x62, 0x38 } },
-	{ .data = { 0x63, 0x3D } },
-	{ .data = { 0x64, 0x28 } },
-	{ .data = { 0x65, 0x43 } },
-	{ .data = { 0x66, 0x41 } },
-	{ .data = { 0x67, 0x43 } },
-	{ .data = { 0x68, 0x62 } },
-	{ .data = { 0x69, 0x50 } },
-	{ .data = { 0x6A, 0x57 } },
-	{ .data = { 0x6B, 0x49 } },
-	{ .data = { 0x6C, 0x44 } },
-	{ .data = { 0x6D, 0x37 } },
-	{ .data = { 0x6E, 0x23 } },
-	{ .data = { 0x6F, 0x10 } },
-	{ .data = { 0x70, 0x78 } },
-	{ .data = { 0x71, 0x63 } },
-	{ .data = { 0x72, 0x54 } },
-	{ .data = { 0x73, 0x49 } },
-	{ .data = { 0x74, 0x45 } },
-	{ .data = { 0x75, 0x38 } },
-	{ .data = { 0x76, 0x3D } },
-	{ .data = { 0x77, 0x28 } },
-	{ .data = { 0x78, 0x43 } },
-	{ .data = { 0x79, 0x41 } },
-	{ .data = { 0x7A, 0x43 } },
-	{ .data = { 0x7B, 0x62 } },
-	{ .data = { 0x7C, 0x50 } },
-	{ .data = { 0x7D, 0x57 } },
-	{ .data = { 0x7E, 0x49 } },
-	{ .data = { 0x7F, 0x44 } },
-	{ .data = { 0x80, 0x37 } },
-	{ .data = { 0x81, 0x23 } },
-	{ .data = { 0x82, 0x10 } },
-	{ .data = { 0xE0, 0x02 } },
-	{ .data = { 0x00, 0x47 } },
-	{ .data = { 0x01, 0x47 } },
-	{ .data = { 0x02, 0x45 } },
-	{ .data = { 0x03, 0x45 } },
-	{ .data = { 0x04, 0x4B } },
-	{ .data = { 0x05, 0x4B } },
-	{ .data = { 0x06, 0x49 } },
-	{ .data = { 0x07, 0x49 } },
-	{ .data = { 0x08, 0x41 } },
-	{ .data = { 0x09, 0x1F } },
-	{ .data = { 0x0A, 0x1F } },
-	{ .data = { 0x0B, 0x1F } },
-	{ .data = { 0x0C, 0x1F } },
-	{ .data = { 0x0D, 0x1F } },
-	{ .data = { 0x0E, 0x1F } },
-	{ .data = { 0x0F, 0x5F } },
-	{ .data = { 0x10, 0x5F } },
-	{ .data = { 0x11, 0x57 } },
-	{ .data = { 0x12, 0x77 } },
-	{ .data = { 0x13, 0x35 } },
-	{ .data = { 0x14, 0x1F } },
-	{ .data = { 0x15, 0x1F } },
-	{ .data = { 0x16, 0x46 } },
-	{ .data = { 0x17, 0x46 } },
-	{ .data = { 0x18, 0x44 } },
-	{ .data = { 0x19, 0x44 } },
-	{ .data = { 0x1A, 0x4A } },
-	{ .data = { 0x1B, 0x4A } },
-	{ .data = { 0x1C, 0x48 } },
-	{ .data = { 0x1D, 0x48 } },
-	{ .data = { 0x1E, 0x40 } },
-	{ .data = { 0x1F, 0x1F } },
-	{ .data = { 0x20, 0x1F } },
-	{ .data = { 0x21, 0x1F } },
-	{ .data = { 0x22, 0x1F } },
-	{ .data = { 0x23, 0x1F } },
-	{ .data = { 0x24, 0x1F } },
-	{ .data = { 0x25, 0x5F } },
-	{ .data = { 0x26, 0x5F } },
-	{ .data = { 0x27, 0x57 } },
-	{ .data = { 0x28, 0x77 } },
-	{ .data = { 0x29, 0x35 } },
-	{ .data = { 0x2A, 0x1F } },
-	{ .data = { 0x2B, 0x1F } },
-	{ .data = { 0x58, 0x40 } },
-	{ .data = { 0x59, 0x00 } },
-	{ .data = { 0x5A, 0x00 } },
-	{ .data = { 0x5B, 0x10 } },
-	{ .data = { 0x5C, 0x06 } },
-	{ .data = { 0x5D, 0x40 } },
-	{ .data = { 0x5E, 0x01 } },
-	{ .data = { 0x5F, 0x02 } },
-	{ .data = { 0x60, 0x30 } },
-	{ .data = { 0x61, 0x01 } },
-	{ .data = { 0x62, 0x02 } },
-	{ .data = { 0x63, 0x03 } },
-	{ .data = { 0x64, 0x6B } },
-	{ .data = { 0x65, 0x05 } },
-	{ .data = { 0x66, 0x0C } },
-	{ .data = { 0x67, 0x73 } },
-	{ .data = { 0x68, 0x09 } },
-	{ .data = { 0x69, 0x03 } },
-	{ .data = { 0x6A, 0x56 } },
-	{ .data = { 0x6B, 0x08 } },
-	{ .data = { 0x6C, 0x00 } },
-	{ .data = { 0x6D, 0x04 } },
-	{ .data = { 0x6E, 0x04 } },
-	{ .data = { 0x6F, 0x88 } },
-	{ .data = { 0x70, 0x00 } },
-	{ .data = { 0x71, 0x00 } },
-	{ .data = { 0x72, 0x06 } },
-	{ .data = { 0x73, 0x7B } },
-	{ .data = { 0x74, 0x00 } },
-	{ .data = { 0x75, 0xF8 } },
-	{ .data = { 0x76, 0x00 } },
-	{ .data = { 0x77, 0xD5 } },
-	{ .data = { 0x78, 0x2E } },
-	{ .data = { 0x79, 0x12 } },
-	{ .data = { 0x7A, 0x03 } },
-	{ .data = { 0x7B, 0x00 } },
-	{ .data = { 0x7C, 0x00 } },
-	{ .data = { 0x7D, 0x03 } },
-	{ .data = { 0x7E, 0x7B } },
-	{ .data = { 0xE0, 0x04 } },
-	{ .data = { 0x00, 0x0E } },
-	{ .data = { 0x02, 0xB3 } },
-	{ .data = { 0x09, 0x60 } },
-	{ .data = { 0x0E, 0x2A } },
-	{ .data = { 0x36, 0x59 } },
-	{ .data = { 0xE0, 0x00 } },
+static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE1, 0x93);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE2, 0x65);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE3, 0xF8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x7E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x65);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x74);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xB7);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0xB7);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xFE);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3B, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x70);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4B, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0xA9);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x0A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x78);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x63);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x54);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x38);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x3D);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x41);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x62);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x23);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x78);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x63);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x54);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x38);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x3D);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x41);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x62);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x50);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7F, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x23);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x4B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x4B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x41);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0A, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0B, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0D, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0F, 0x5F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x5F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x35);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x4A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0x4A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1D, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1E, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1F, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x5F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x5F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x57);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x77);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x35);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2A, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2B, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5C, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x0C);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x56);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x7B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xF8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0xD5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x12);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x7B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xB3);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x60);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x2A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x59);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
+
+	return 0;
 };
 
 static const struct jadard_panel_desc radxa_display_8hd_ad002_desc = {
@@ -359,205 +360,209 @@ static const struct jadard_panel_desc radxa_display_8hd_ad002_desc = {
 	},
 	.lanes = 4,
 	.format = MIPI_DSI_FMT_RGB888,
-	.init_cmds = radxa_display_8hd_ad002_init_cmds,
-	.num_init_cmds = ARRAY_SIZE(radxa_display_8hd_ad002_init_cmds),
+	.init = radxa_display_8hd_ad002_init_cmds,
 };
 
-static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
-	{ .data = { 0xE0, 0x00 } },
-	{ .data = { 0xE1, 0x93 } },
-	{ .data = { 0xE2, 0x65 } },
-	{ .data = { 0xE3, 0xF8 } },
-	{ .data = { 0x80, 0x03 } },
-	{ .data = { 0xE0, 0x01 } },
-	{ .data = { 0x00, 0x00 } },
-	{ .data = { 0x01, 0x3B } },
-	{ .data = { 0x0C, 0x74 } },
-	{ .data = { 0x17, 0x00 } },
-	{ .data = { 0x18, 0xAF } },
-	{ .data = { 0x19, 0x00 } },
-	{ .data = { 0x1A, 0x00 } },
-	{ .data = { 0x1B, 0xAF } },
-	{ .data = { 0x1C, 0x00 } },
-	{ .data = { 0x35, 0x26 } },
-	{ .data = { 0x37, 0x09 } },
-	{ .data = { 0x38, 0x04 } },
-	{ .data = { 0x39, 0x00 } },
-	{ .data = { 0x3A, 0x01 } },
-	{ .data = { 0x3C, 0x78 } },
-	{ .data = { 0x3D, 0xFF } },
-	{ .data = { 0x3E, 0xFF } },
-	{ .data = { 0x3F, 0x7F } },
-	{ .data = { 0x40, 0x06 } },
-	{ .data = { 0x41, 0xA0 } },
-	{ .data = { 0x42, 0x81 } },
-	{ .data = { 0x43, 0x14 } },
-	{ .data = { 0x44, 0x23 } },
-	{ .data = { 0x45, 0x28 } },
-	{ .data = { 0x55, 0x02 } },
-	{ .data = { 0x57, 0x69 } },
-	{ .data = { 0x59, 0x0A } },
-	{ .data = { 0x5A, 0x2A } },
-	{ .data = { 0x5B, 0x17 } },
-	{ .data = { 0x5D, 0x7F } },
-	{ .data = { 0x5E, 0x6B } },
-	{ .data = { 0x5F, 0x5C } },
-	{ .data = { 0x60, 0x4F } },
-	{ .data = { 0x61, 0x4D } },
-	{ .data = { 0x62, 0x3F } },
-	{ .data = { 0x63, 0x42 } },
-	{ .data = { 0x64, 0x2B } },
-	{ .data = { 0x65, 0x44 } },
-	{ .data = { 0x66, 0x43 } },
-	{ .data = { 0x67, 0x43 } },
-	{ .data = { 0x68, 0x63 } },
-	{ .data = { 0x69, 0x52 } },
-	{ .data = { 0x6A, 0x5A } },
-	{ .data = { 0x6B, 0x4F } },
-	{ .data = { 0x6C, 0x4E } },
-	{ .data = { 0x6D, 0x20 } },
-	{ .data = { 0x6E, 0x0F } },
-	{ .data = { 0x6F, 0x00 } },
-	{ .data = { 0x70, 0x7F } },
-	{ .data = { 0x71, 0x6B } },
-	{ .data = { 0x72, 0x5C } },
-	{ .data = { 0x73, 0x4F } },
-	{ .data = { 0x74, 0x4D } },
-	{ .data = { 0x75, 0x3F } },
-	{ .data = { 0x76, 0x42 } },
-	{ .data = { 0x77, 0x2B } },
-	{ .data = { 0x78, 0x44 } },
-	{ .data = { 0x79, 0x43 } },
-	{ .data = { 0x7A, 0x43 } },
-	{ .data = { 0x7B, 0x63 } },
-	{ .data = { 0x7C, 0x52 } },
-	{ .data = { 0x7D, 0x5A } },
-	{ .data = { 0x7E, 0x4F } },
-	{ .data = { 0x7F, 0x4E } },
-	{ .data = { 0x80, 0x20 } },
-	{ .data = { 0x81, 0x0F } },
-	{ .data = { 0x82, 0x00 } },
-	{ .data = { 0xE0, 0x02 } },
-	{ .data = { 0x00, 0x02 } },
-	{ .data = { 0x01, 0x02 } },
-	{ .data = { 0x02, 0x00 } },
-	{ .data = { 0x03, 0x00 } },
-	{ .data = { 0x04, 0x1E } },
-	{ .data = { 0x05, 0x1E } },
-	{ .data = { 0x06, 0x1F } },
-	{ .data = { 0x07, 0x1F } },
-	{ .data = { 0x08, 0x1F } },
-	{ .data = { 0x09, 0x17 } },
-	{ .data = { 0x0A, 0x17 } },
-	{ .data = { 0x0B, 0x37 } },
-	{ .data = { 0x0C, 0x37 } },
-	{ .data = { 0x0D, 0x47 } },
-	{ .data = { 0x0E, 0x47 } },
-	{ .data = { 0x0F, 0x45 } },
-	{ .data = { 0x10, 0x45 } },
-	{ .data = { 0x11, 0x4B } },
-	{ .data = { 0x12, 0x4B } },
-	{ .data = { 0x13, 0x49 } },
-	{ .data = { 0x14, 0x49 } },
-	{ .data = { 0x15, 0x1F } },
-	{ .data = { 0x16, 0x01 } },
-	{ .data = { 0x17, 0x01 } },
-	{ .data = { 0x18, 0x00 } },
-	{ .data = { 0x19, 0x00 } },
-	{ .data = { 0x1A, 0x1E } },
-	{ .data = { 0x1B, 0x1E } },
-	{ .data = { 0x1C, 0x1F } },
-	{ .data = { 0x1D, 0x1F } },
-	{ .data = { 0x1E, 0x1F } },
-	{ .data = { 0x1F, 0x17 } },
-	{ .data = { 0x20, 0x17 } },
-	{ .data = { 0x21, 0x37 } },
-	{ .data = { 0x22, 0x37 } },
-	{ .data = { 0x23, 0x46 } },
-	{ .data = { 0x24, 0x46 } },
-	{ .data = { 0x25, 0x44 } },
-	{ .data = { 0x26, 0x44 } },
-	{ .data = { 0x27, 0x4A } },
-	{ .data = { 0x28, 0x4A } },
-	{ .data = { 0x29, 0x48 } },
-	{ .data = { 0x2A, 0x48 } },
-	{ .data = { 0x2B, 0x1F } },
-	{ .data = { 0x2C, 0x01 } },
-	{ .data = { 0x2D, 0x01 } },
-	{ .data = { 0x2E, 0x00 } },
-	{ .data = { 0x2F, 0x00 } },
-	{ .data = { 0x30, 0x1F } },
-	{ .data = { 0x31, 0x1F } },
-	{ .data = { 0x32, 0x1E } },
-	{ .data = { 0x33, 0x1E } },
-	{ .data = { 0x34, 0x1F } },
-	{ .data = { 0x35, 0x17 } },
-	{ .data = { 0x36, 0x17 } },
-	{ .data = { 0x37, 0x37 } },
-	{ .data = { 0x38, 0x37 } },
-	{ .data = { 0x39, 0x08 } },
-	{ .data = { 0x3A, 0x08 } },
-	{ .data = { 0x3B, 0x0A } },
-	{ .data = { 0x3C, 0x0A } },
-	{ .data = { 0x3D, 0x04 } },
-	{ .data = { 0x3E, 0x04 } },
-	{ .data = { 0x3F, 0x06 } },
-	{ .data = { 0x40, 0x06 } },
-	{ .data = { 0x41, 0x1F } },
-	{ .data = { 0x42, 0x02 } },
-	{ .data = { 0x43, 0x02 } },
-	{ .data = { 0x44, 0x00 } },
-	{ .data = { 0x45, 0x00 } },
-	{ .data = { 0x46, 0x1F } },
-	{ .data = { 0x47, 0x1F } },
-	{ .data = { 0x48, 0x1E } },
-	{ .data = { 0x49, 0x1E } },
-	{ .data = { 0x4A, 0x1F } },
-	{ .data = { 0x4B, 0x17 } },
-	{ .data = { 0x4C, 0x17 } },
-	{ .data = { 0x4D, 0x37 } },
-	{ .data = { 0x4E, 0x37 } },
-	{ .data = { 0x4F, 0x09 } },
-	{ .data = { 0x50, 0x09 } },
-	{ .data = { 0x51, 0x0B } },
-	{ .data = { 0x52, 0x0B } },
-	{ .data = { 0x53, 0x05 } },
-	{ .data = { 0x54, 0x05 } },
-	{ .data = { 0x55, 0x07 } },
-	{ .data = { 0x56, 0x07 } },
-	{ .data = { 0x57, 0x1F } },
-	{ .data = { 0x58, 0x40 } },
-	{ .data = { 0x5B, 0x30 } },
-	{ .data = { 0x5C, 0x16 } },
-	{ .data = { 0x5D, 0x34 } },
-	{ .data = { 0x5E, 0x05 } },
-	{ .data = { 0x5F, 0x02 } },
-	{ .data = { 0x63, 0x00 } },
-	{ .data = { 0x64, 0x6A } },
-	{ .data = { 0x67, 0x73 } },
-	{ .data = { 0x68, 0x1D } },
-	{ .data = { 0x69, 0x08 } },
-	{ .data = { 0x6A, 0x6A } },
-	{ .data = { 0x6B, 0x08 } },
-	{ .data = { 0x6C, 0x00 } },
-	{ .data = { 0x6D, 0x00 } },
-	{ .data = { 0x6E, 0x00 } },
-	{ .data = { 0x6F, 0x88 } },
-	{ .data = { 0x75, 0xFF } },
-	{ .data = { 0x77, 0xDD } },
-	{ .data = { 0x78, 0x3F } },
-	{ .data = { 0x79, 0x15 } },
-	{ .data = { 0x7A, 0x17 } },
-	{ .data = { 0x7D, 0x14 } },
-	{ .data = { 0x7E, 0x82 } },
-	{ .data = { 0xE0, 0x04 } },
-	{ .data = { 0x00, 0x0E } },
-	{ .data = { 0x02, 0xB3 } },
-	{ .data = { 0x09, 0x61 } },
-	{ .data = { 0x0E, 0x48 } },
-	{ .data = { 0xE0, 0x00 } },
-	{ .data = { 0xE6, 0x02 } },
-	{ .data = { 0xE7, 0x0C } },
+static int cz101b4001_init_cmds(struct jadard *jadard)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE1, 0x93);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE2, 0x65);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE3, 0xF8);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x3B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x74);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xAF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0xAF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x26);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x78);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0x7F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x81);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x23);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x28);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x69);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5A, 0x2A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x7F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x6B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x5C);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x4D);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x42);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x2B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x63);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x52);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x5A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x4E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x0F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x6B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x5C);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x4D);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x42);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x2B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x43);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7B, 0x63);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7C, 0x52);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x5A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x4F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7F, 0x4E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x20);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x0F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0A, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0B, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0C, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0D, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x47);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0F, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x45);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x4B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x4B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x49);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1A, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1B, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1C, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1D, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1E, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1F, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x46);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x44);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x4A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x4A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2A, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2B, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2C, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2D, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2E, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2F, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3A, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3B, 0x0A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3C, 0x0A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3D, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3E, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3F, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x1E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4A, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4B, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4C, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4D, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4E, 0x37);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4F, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x0B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x0B);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5B, 0x30);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5C, 0x16);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5D, 0x34);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5E, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5F, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x73);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x1D);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6A, 0x6A);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6B, 0x08);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6C, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6D, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6E, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6F, 0x88);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xFF);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0xDD);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x3F);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x15);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7A, 0x17);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7D, 0x14);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7E, 0x82);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0E);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xB3);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x61);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0E, 0x48);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE6, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE7, 0x0C);
+
+	return 0;
 };
 
 static const struct jadard_panel_desc cz101b4001_desc = {
@@ -580,8 +585,8 @@ static const struct jadard_panel_desc cz101b4001_desc = {
 	},
 	.lanes = 4,
 	.format = MIPI_DSI_FMT_RGB888,
-	.init_cmds = cz101b4001_init_cmds,
-	.num_init_cmds = ARRAY_SIZE(cz101b4001_init_cmds),
+	.init = cz101b4001_init_cmds,
+
 };
 
 static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
-- 
2.17.1


