Return-Path: <devicetree+bounces-242201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC24C87ECA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 04:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 95D3F4EB1EF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 03:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC0F30CD82;
	Wed, 26 Nov 2025 03:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HX1oGGX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6BA30C625
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764127102; cv=none; b=fyevF7l04HM4FH6sTamSdL+dYggP7EVZPpge9JZEnyCyCVxLnrA6WAgOok1yZ3nfV56nPM49n9RZM+NvTeA+so4A1aiArs4hhHdg0RENTMLwdh3EVUMtvfxcLTLf6Syky4TbG6bPsbFzwghNGxjv1gumBYsuSux+WkWmxPXCZiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764127102; c=relaxed/simple;
	bh=p2a1vXXc69O/px1tJS9PHGGSu+bfndAnOjwnw4vFX6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EfWySZ4M6byH6k6vhTGqzGoLXFN+cKvyOhq2LY7qDhaRi6car3YO8czp2x5eFdKVfPo9EVr+LvvQNozltAhrVkkdM035XDF2iFDoJOflJe09aBMKDYhIgJDVGSYH/PzhAgOGf04jENrP4iKoCINwBq/MP34Ei7dOonL3jZD+vCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HX1oGGX/; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-7b852bb31d9so7124772b3a.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 19:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764127100; x=1764731900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7ozaCRL273ETHkhhjpKcicKScA37yYy2L/hbCujZyo=;
        b=HX1oGGX/ZtNtbAv3xlF6N5t6A1d5G+/Z/KYXUDau0GaMYNz1LQmKXLOIWBUbFo7t0X
         TFpUaUh1mc0qQdGyQTgvjMaDaXstmcWtImi+OIFehj138Fb5zUg7l1yiF9LMTZxKJqLJ
         oyRkwznxCWnEsugjDrgN/s+AQYjA7L6c3UP6VewlEMH14mIUJrG8yOmbsCbXWY8qHaof
         VCkBRhnqRy0vrSnrPZvob4p69OL9ugYSv4OM+0T5aofDl4+zMMAP2eWiR/k9VGK/1xcU
         cvi8xAm105GyeBioo3imS64lPguRY+pajT4hFEiC+OoTgZkxGn4r+Br1LaUuyMpoU0j/
         Jhtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764127100; x=1764731900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B7ozaCRL273ETHkhhjpKcicKScA37yYy2L/hbCujZyo=;
        b=hLzW1MEj7g4IwMS6W5A8a9qTY/YAcTiaqq7GuGgRDEm870zWHlbnwA37O9kghoNk4U
         RJMSCYzgUbYXJAQ1XBSCssO4+Gk8CztIm9iklTz2xrfap9LQnVd1pq8FGfpGbGsdXR0u
         CbpV1HwZjsbpfVQhdWinUnVgXrRzqlkBcyr+JiSYjplvtE7AwcDHAXavtDg6qkBc2xE2
         ldOLYTSly+RSYnaPl0WvhsyP8RRG/s1AWKZl13e0fiXlqR3S0nhQeeW0wARkIhYQFAzK
         uv5ERLTLpKak7y3gLTlTFkBL2XX1BPk9zyPg5RW0lswwFIEiHvXGfcVomDsQryi+NqrM
         U8JQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBzzmPw6ilkmL/2Ytciut7bEgGgdbTEPDFQU+deQKtMV+dYR25EYJiJ0QrYXoEZpZDCg3Hs5fdySiR@vger.kernel.org
X-Gm-Message-State: AOJu0YzMZ+SihqvWAmNQpIhQdaYBKsRxq7Kil1CRGsqfZg7oV9ZFQzOO
	SwksLg5jqKrrOiMglD2Y+MeY9wklpnw4Ci5CohMvs91EK2odTXKAcWzo
X-Gm-Gg: ASbGnctsz1STFCZ7850Ze1TgLkgxVKVLjNfU+MhGx3I9F9dh+IIoPulA6t3nhTBJzjB
	gLeQfzfPZpdN2f+r+ZYPDefRpVYHmrBqD7S/j1ZUwTLz/LhjaqRq0c2KhqmVzwXVVrxCcrTj44o
	F2gzpRZJxjVHffDuv1VN6iT16n6yeHXvViZUAkQDlDGwStAlluzM2VcfyALYmeJonF772tl7qg8
	+KDxbVhLEl3Jka30Tzky8cZlnUvZxrKnFzHAl8WuLYhLu/j/OKlrpquexUTawBPas/Wk9hH7HC0
	LxqXiL+J9atx57pqxRVhc0WEY5SqmZ7XHPDnWzUlAuhtsA1e82fKJjpnSdzbP0m130HuPRYuBYr
	rj289ap/21L6ypwLWYTEQxtSPp+R0Xph4onNhwNEW0uRBW+qLQnL2qa21WFJYHqw3fIBjRw1Wnj
	enJt01yawFITZWMw==
X-Google-Smtp-Source: AGHT+IG4qlNiEEoXWutLGwHJ0G+8UC4lSWmbuW3HpUhf3gSmsfXJsXmVg9/UlI5YsquppzK7NKIpsw==
X-Received: by 2002:a05:6a21:3384:b0:35f:aa1b:bc09 with SMTP id adf61e73a8af0-36150e6cff9mr20254369637.17.1764127100409;
        Tue, 25 Nov 2025 19:18:20 -0800 (PST)
Received: from Ubuntu24.. ([103.187.64.30])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd760ac62ecsm17935713a12.26.2025.11.25.19.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 19:18:20 -0800 (PST)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH 2/3] iio: proximity: rfd77402: Add Device Tree support
Date: Wed, 26 Nov 2025 08:44:39 +0530
Message-ID: <20251126031440.30065-3-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126031440.30065-1-raskar.shree97@gmail.com>
References: <20251126031440.30065-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch enables seamless integration of the RFD77402 ToF sensor
on platforms that use Device Tree for hardware description

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
 drivers/iio/proximity/rfd77402.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/proximity/rfd77402.c b/drivers/iio/proximity/rfd77402.c
index aff60a3c1a6f..3262af6f6882 100644
--- a/drivers/iio/proximity/rfd77402.c
+++ b/drivers/iio/proximity/rfd77402.c
@@ -313,10 +313,17 @@ static const struct i2c_device_id rfd77402_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, rfd77402_id);
 
+static const struct of_device_id rfd77402_of_match[] = {
+	{ .compatible = "rfdigital,rfd77402" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, rfd77402_of_match);
+
 static struct i2c_driver rfd77402_driver = {
 	.driver = {
 		.name   = RFD77402_DRV_NAME,
 		.pm     = pm_sleep_ptr(&rfd77402_pm_ops),
+		.of_match_table = rfd77402_of_match,
 	},
 	.probe = rfd77402_probe,
 	.id_table = rfd77402_id,
-- 
2.43.0


