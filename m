Return-Path: <devicetree+bounces-83094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA6927246
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E952528B7DF
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC9D1AB52C;
	Thu,  4 Jul 2024 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="jIluwGGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC61216F0DF
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 08:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083380; cv=none; b=gVS597kx9d2d3UEnYpRyAmoJbddmSrAxWBY+08k5eM4yeOOQrBM0Toy14NjxSpyS0/j161ibVAy07SyPPJSpzxMivKokpkAZVRdWVRAEWw52N+Uihydtjt09LECJQhiFApjCzMLJ3s7n64GsYviRg4gRfPZ8RFEpz0y+StELbhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083380; c=relaxed/simple;
	bh=CRdWUwCRyI1JhBwhYUQ6hDGwcJ5/bGQgK2HmaJznpZU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=pis/yoGSHe7/EF8RkCipFeuNHPEp1WmdLzkMYfLpQgnvPn1iF4FBIsUDoH4Gl0uYbrI6Qtlm+ViA2TDoRDOqRcCHNJT6RawGe/1gRUmX4/N2r5/qefT9FZSygso+KcMtiUVQ2+HxGBGURpwWDX31475ops2YXZ1BSE+1vwSzBqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=jIluwGGP; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7066f68e22cso311923b3a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 01:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720083377; x=1720688177; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0ToLUUEZ2Win4F6MM5JYbPtX/w+pNIaPEVcPy4RNxHU=;
        b=jIluwGGPHiucYLe5R9PzC1Y9dQDuruXdQlDJFtXvoFcOqPtfEGdacWj1JSf+Nuck0v
         xTjxhDFeTZIlj9ZC0vXSZww6ksl45qOb8JeRz4OB16RuLFCz/+fB5CDhJRXsbPOWy0t6
         xkKhKcwgvlPqZb7OhRth3YQE2iyxaTVXHwlcab3rg9yJvSDovxec5kTExvVesvjohNTh
         0bH/QMr0yeF9ukgMMg/R3Ogqk2C++bUlZMvKowRAoQvLt9OukrIrYYGPfvQhwHpwjIB2
         jF7B3lJ1e4zyF4oGXhPjg4YWp8G1A13ihsBKsoANoEbmYNV+E4VdBt7wzRPuLc0dEQE7
         c61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720083377; x=1720688177;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ToLUUEZ2Win4F6MM5JYbPtX/w+pNIaPEVcPy4RNxHU=;
        b=CjtvQ3SRgruLZKjQujjwwwOh98Xuj8vIZ6f/VVgQQjoeJh8AvTv9P1+kiVKZSJG5KI
         zJ9tfehQj0qbw4i/FXdnXqoRq/69ikOkd18CxCelwAonlT5g/5yZwjYSUd9EiBv2OLq7
         QDvLQPI2LI4nfELILffrIJz87rHqzyQdGz/+C1tq4xbyQpWgwImfExi91fFJX0Xs5loD
         Hr4BJP5fcqBKJ2DCjR2cqoTBSWlPPqofoj1qd5Waad1YDmq8p6L2kPtLrfZTmkCKXR+2
         MEORnRw6DFLA5khZcpjIzAHaiT2H9UADdzjoaEYKVsOVOkTrBo/atSj9IT1EIxh7Jz7q
         g8Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVoMPTjS4NNQlVowKre7ZK2DJCMt+TL6VvlcHZAFODH8oBQ5vs1jbwiv9tsxcJtydQWcqnPJthTfV6L+jPQUYBkrspUONPoWxmxkw==
X-Gm-Message-State: AOJu0YxuYbZ747CXUROJqcYgfTkOGa8spaGLV0GSz3sHli0BCCaWSpxw
	3d1Rkh7PzFsuHMigSVs4nU5LSiR1uirF3/CSXIDEuvzAkqWK0bDyo7MRJwfArTw=
X-Google-Smtp-Source: AGHT+IHk4DZ5r6UUa4v9JNFYiBDBi9gqaoVpmIGPorkP0IW579Pjng8UBJRLOYyiPXcSuoF4cwKLaw==
X-Received: by 2002:a05:6a20:9146:b0:1bd:291a:4c80 with SMTP id adf61e73a8af0-1c0cc742e71mr913122637.17.1720083377082;
        Thu, 04 Jul 2024 01:56:17 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c99a97282csm962572a91.20.2024.07.04.01.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jul 2024 01:56:16 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] HID: i2c-hid: elan: Add elan-ekth6a12nay timing
Date: Thu,  4 Jul 2024 16:55:55 +0800
Message-Id: <20240704085555.11204-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240704085555.11204-1-lvzhaoxiong@huaqin.corp-partner.google.com>
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
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 5b91fb106cfc..ea91028bb971 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -117,6 +117,13 @@ static const struct elan_i2c_hid_chip_data elan_ekth6915_chip_data = {
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
@@ -139,6 +146,7 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
+	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
 	{ }
-- 
2.17.1


