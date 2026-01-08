Return-Path: <devicetree+bounces-252591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C158BD01410
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5718830433F3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0024133B6D5;
	Thu,  8 Jan 2026 06:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="U8fhXp/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655B633AD9E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854140; cv=none; b=jtGthC+hCAZ0HajiNy7P9F2O61zKEhey/Gy0BI/8QtJgwKZb22doYBNDfeLrGd7xHlyb/rgAFra4jGivncjcMfh/XjklLypB3Fkv5Dbr+sJUp4FNDbHvmhGcK2RZcMBpaJYMOX5Sb49j5Q2H13jboHzzEJRy69cdK3aombbyC+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854140; c=relaxed/simple;
	bh=7eIBMYuPULsXRIE8uJPvolkz9VSkZKyrgJYAAANz20M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oj+9Yhgnoej7ihHVkuB9mX8hYG2X1x3rvMrvTAA5kA0mMHBZnUPAnJHUDWPWhVSsZA3+OloUm9vpnqh50R3uTa067t3EmZKc+JsEXfv83mioLic7V8Plx9uhbAJHeAmR16Ppdf8GPga6A4tsZUbUIRJNFqeDf6xL3VbSu+1imKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=U8fhXp/P; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-34b75fba315so1988121a91.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1767854136; x=1768458936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gq89G3tOrOHNmszKr3q4hJ/s1N2xw+oE/TFVsExceXk=;
        b=U8fhXp/PnBParMaVNRLdadFYBWAW0u76dtP4MeuOA+PYyrV2RD66WVPHPI2iDwzW0C
         bW67SuuOQnlMfLaUoiKVGH1Lwf7pAssNATRBTZ2A8qf1Z/D1IXquv2G7+BjiqXC4qKGp
         sr/2afA2s4TzWq/mB0xVR3kHZCrd7CNbR3s3vlXvYgqbU8A04jk2ZCYj4+iShy7oTvaG
         vrujDvRIO7CSg/p3HKc1OWxTQJNYz3B2ZH5MwWo+bwpF5OQmspavYu1u8DCkthG+ro6u
         Saqqzmx9QAcXmpacY0GszJB4TbqdGbytMKawN7wdzZXE0tv2uiwKrHXf7RBfSY3g9DNx
         5vGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767854136; x=1768458936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gq89G3tOrOHNmszKr3q4hJ/s1N2xw+oE/TFVsExceXk=;
        b=PfNtFcRqVkS4WvQGozY1U5bWsy38FesR1Gf2V2TWK+Mbl6h38ToLAay6eWz6LCf42p
         WbXulJ3PYr0p6bWK5pgKL9iuKemWAaJqrZTsa5NOc7MCcYAvjDgfiKx23yBTmaO02K6C
         7Z8/D+Hor3RJbONw8jnNWp53YWdbTY+//hQHgkiJoxUDW6xeMeeQMRFNTF0SWYOQ1Rj4
         tRkXj9B+dfJA9D5FU+5D8Tf0g4h2cpcNzaHxR17dxxx4wxC9dvUVRTP3z0iR822yhoCf
         OdS7HMP+e39xvgd/4Kk2Mux9vvDjHKJuWChTiLk8ZFj3bKWKS/K6e+DsFeTCEgjeKy+H
         EVQg==
X-Forwarded-Encrypted: i=1; AJvYcCXBMBRQigpGiGnHLgDj5tDB17LOFZ4gYDR/5WUMartRWluwBiW4v30FAtvEmukoz4/EMz8vd0M+UrEr@vger.kernel.org
X-Gm-Message-State: AOJu0YxChFdewwTZz7vt8Y6k9veKYJ06vfTSb//4BPUMO6TDeVQIGR2t
	X4txLeUvnYu+/bFDHSGW9yNpLW+kcLKfMjlKygXqFgWnGoXPyBUVR2+KLp2r8siQ8Ds=
X-Gm-Gg: AY/fxX4k4pWHCVEEwwqDV9VeZ3XsUfYbettwT17qvWq7ZOHH+xhb9Nk1ElkyPn90MkG
	6Fg7iHgptCjm2T1IyriZCiDxPsGX1UEDGBfOC2gfevpjhQyxYbGWrDypJqiaBBDHnEoEaMyi7Iy
	qeyxMTg5xp4Did3Mkda/4IsDE5MUqLWT31bWO4XQ3hY695RYXlcsLD/dNGCjWj8zCfYWUaBMgGJ
	bLOrm45hbJy6iKGgKl6P7BX5NtqBKLgF/bbokN3TSHx70XmDslspOhdgdq9rLkUNj8SIVbcwtLE
	XLme6Tsao+TNXRGHk4wZ5Dt54wi0+BxMcCIL0zhkJ20lKHG/0iYagHvzKpl86TWEV0m6FvGEDYu
	TIte+7LNRoGwG/V3DXIZuvOhUw+3BBaLFJ5WXKnkspIwo0JGvPhY95OKPu5wDMeRNZ7/K7iXLoO
	3Ybf6DHcPQtRKBQF85dkjyGADbJzRKkf5wrNDgUUAjRkVDTF6nO/0e0C9BHA==
X-Google-Smtp-Source: AGHT+IHeaz5+O4p3iSfBbY4NUJEHhv7nMLACepGidjYvey52y26UaHJ9zeS93CMxI9QdYJzfL83WSA==
X-Received: by 2002:a17:90b:5445:b0:32d:d5f1:fe7f with SMTP id 98e67ed59e1d1-34f68c2050cmr5000895a91.15.1767854136400;
        Wed, 07 Jan 2026 22:35:36 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fa93ee7sm6712750a91.7.2026.01.07.22.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 22:35:36 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH V3 RESEND 2/2] HID: i2c-hid: elan: Add parade-tc3408 timing
Date: Thu,  8 Jan 2026 14:35:24 +0800
Message-Id: <20260108063524.742464-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parade-tc3408 requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 300ms,
so the post_gpio_reset_on_delay_ms is set to 300.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 drivers/hid/i2c-hid/i2c-hid-of-elan.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/hid/i2c-hid/i2c-hid-of-elan.c b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
index 0215f217f6d8..2a6548fd234a 100644
--- a/drivers/hid/i2c-hid/i2c-hid-of-elan.c
+++ b/drivers/hid/i2c-hid/i2c-hid-of-elan.c
@@ -188,11 +188,19 @@ static const struct elan_i2c_hid_chip_data ilitek_ili2901_chip_data = {
 	.main_supply_name = "vcc33",
 };
 
+static const struct elan_i2c_hid_chip_data parade_tc3408_chip_data = {
+	.post_power_delay_ms = 10,
+	.post_gpio_reset_on_delay_ms = 300,
+	.hid_descriptor_address = 0x0001,
+	.main_supply_name = "vcc33",
+};
+
 static const struct of_device_id elan_i2c_hid_of_match[] = {
 	{ .compatible = "elan,ekth6915", .data = &elan_ekth6915_chip_data },
 	{ .compatible = "elan,ekth6a12nay", .data = &elan_ekth6a12nay_chip_data },
 	{ .compatible = "ilitek,ili9882t", .data = &ilitek_ili9882t_chip_data },
 	{ .compatible = "ilitek,ili2901", .data = &ilitek_ili2901_chip_data },
+	{ .compatible = "parade,tc3408", .data = &parade_tc3408_chip_data },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, elan_i2c_hid_of_match);
-- 
2.34.1


