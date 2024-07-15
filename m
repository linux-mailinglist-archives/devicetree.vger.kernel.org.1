Return-Path: <devicetree+bounces-85645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8431930ED6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 09:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB8A71C20F70
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 07:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C538418413C;
	Mon, 15 Jul 2024 07:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="1ipEMgeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192201849DB
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721028742; cv=none; b=ZHXFMtl9mhF99nvsoGuJVJLhWmtByzQZ5HhnpmaukgvBsjuqou8V1NgGYkX7yBoKiPHbi2p9ohWElzNDOJB4AGXhKSgYTQDbewRlj5vrGRkUUF4iPuxza87EhgwMw3nbksUx94J6QBHiy9vFlgr2Jy4hF6eFYZCbNujAieFiw8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721028742; c=relaxed/simple;
	bh=Wj+y2xH+fb1vgKQJ0Wx3We1jyaAKeM1X2Ah1mX60tE8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ZPdOCv4GKveQ2aro/kfpxB8lyJgHLyZExdcUHcrM2QsRamT2u9WeOjAV5EkmTOL2GGqCRr6E+z/yrMJvdugHZyUEuYQFqyhJyB0/gyrUlMU3Hq8ooFiqGk6Ixn6ITtjBNWuhn4yWbv3UWnVAx68m1fz0OpYwKd00q3IkHdM2CHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=1ipEMgeB; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3c9cc681ee4so2260661b6e.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 00:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721028740; x=1721633540; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7tSdEjfL5WvW40eGzJQunfNw/Y4s8XxgreL5/ZRUVN8=;
        b=1ipEMgeBIuaAEa5uMEEU3KACYBX5sawXluML00Sg0WUeZNRdhkGE/gJ02Q8HjYILyV
         tYV5HGgmG5GppNoOb9wJ9ktlvTCvA6XfhnKMK4tSAF7Ox5UYWj5Q81rC1Nfxus4su85I
         u9tzWQyxS2omhsbQj3tYgI7MyeWUZnBPvtVhL7Q1k6GEUxUY5X11A9Mz9F74dRoc82xn
         qim7vJMXQQQKUHgJcB0WNAuBpA5NgesTjRgmyO2ju/tpS0zYXeM/MppXYLyrPf+Xjgvi
         smMseqgYCyo/VLDWziAoOdn3CzniNWrYkTBrRFx6hOk+ptPMsTskYU1+jYSGXNLpH1wm
         zZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721028740; x=1721633540;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7tSdEjfL5WvW40eGzJQunfNw/Y4s8XxgreL5/ZRUVN8=;
        b=ZGIykq3goAoQawV54zaG9JUlmnp8zOhpmz86yvOGlP7K5m4ncuCOUQlw1Cyuup/OXE
         /4idu3kS7CN2P2CxlucA13iDSUxaEQ7Ik4vptD96fyFvCFam1SGDCqCQSxE8nOnwa/Qm
         zrrt7vjRtmtNydJ4sIrfX7dgOYd8N2A8H+6IXZpCI25tDNSHh+u32+HEVkrlSaRvlLdF
         zgDVk7zBRRF3G0AKEFt6oHkUmQxW0utUHwUictWF86E5s09Fo2iKwGWFYkJlC/tUaauc
         1TYwOP7jlNsOSzWWuTrBXs0TPuyuYqSu21eIFuKMdngnpzYGxjhTnwP/kkVqzPzy+GG1
         LPgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcI45miPeusEFVKHAZG8IxqktklAFTxMbTWQobv0QkG9CVCoR2Y4x4uTeXxno23iNSnu48IRYXrJaD9zFfi36FodEweFguKw3PsQ==
X-Gm-Message-State: AOJu0YzF1o/IpnK9ECxyOlv1vKdaZSVR4LOi9az62P9cAewjqEZRP6+O
	h28XsigZynOLU3ssQTDWRcs+lIEW06MA3xOhRsosxI9oqdHtvYTDitOEMONJIJU=
X-Google-Smtp-Source: AGHT+IF5nVlSoSWF3wVdiB5RBQbm7n1CGUfwFKuZunS686w2E5L5f0Q7K6i3LlOFF3EUqu5eZmFamw==
X-Received: by 2002:a05:6808:2897:b0:3d9:dc70:10f7 with SMTP id 5614622812f47-3d9dc7014e7mr14538611b6e.42.1721028740157;
        Mon, 15 Jul 2024 00:32:20 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eca75a6sm3654464b3a.164.2024.07.15.00.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 00:32:19 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 2/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
Date: Mon, 15 Jul 2024 15:31:59 +0800
Message-Id: <20240715073159.25064-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Elan-ekth6a12nay requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms,
so the post_gpio_reset_on_delay_ms is set to 300.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
Changes between V2 and V1:
-  1. No changes.
v1: https://lore.kernel.org/all/20240704085555.11204-3-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 091e37933225..3fcff6daa0d3 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -152,6 +152,13 @@ static const struct elan_i2c_hid_chip_data elan_ekth6915_chip_data = {
 	.main_supply_name = "vcc33",
 };
 
+static const struct elan_i2c_hid_chip_data elan_ekth6a12nay_chip_data = {
+	.post_power_delay_ms = 10,
+	.post_gpio_reset_on_delay_ms = 300,
+	.hid_descriptor_address = 0x0001,
+	.main_supply_name = "vcc33",
+};
+
 static const struct elan_i2c_hid_chip_data ilitek_ili9882t_chip_data = {
 	.post_power_delay_ms = 1,
 	.post_gpio_reset_on_delay_ms = 200,
@@ -174,6 +181,7 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
+	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
 	{ }
-- 
2.17.1


