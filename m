Return-Path: <devicetree+bounces-224351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F599BC3337
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 05:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21574189D49D
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 03:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E91C29DB6E;
	Wed,  8 Oct 2025 03:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E/K8rEtD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0EB29DB9A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 03:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893512; cv=none; b=lB3SnJDm6zWjRsOCNsy53jvizA/Q7YqYlKwhM+SbgMUxhDaW8kbFfgQhQRKkF1mrMK86nzeQiWCxTZJnH2Gxq6xZexb7IBOi13OnK+yfSBXpp/xximSXX1bmKNljhBB3fF1IkJlDRIfYphkvaIv0RPa2MQkigPz5FMeSlmWCxzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893512; c=relaxed/simple;
	bh=OjsnqX4w9xVPWhGo4KZ1oMWtoIY/AxwyxdfC9ODPA0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JwFndi7u5SiZfApFV/5ti4JSo4M0nd7RLews35QRYvZeVHGx3820tRkRdiseRaJZb2tjpc+EsUo3bOZlv+wzHJn27pRTzb9UFs/Ecd82uTxH4PQUw35MfWGlw/IV/5UALbCOVbSOuIs63X7lFsZoQcsF+t+Dnn3zRjcgxee/Dao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E/K8rEtD; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-3306d3ab2e4so8110674a91.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 20:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759893510; x=1760498310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lDg4ZaE0kQk1RB2KpwuXVcFNrMgNFMWXQ87bNU/VPH0=;
        b=E/K8rEtD7HOBL64OL6zdrRNpvlP6JBFlnxRWZmpEU6rdlUFihY/2L2xgQ7NZ8hHCTC
         hFVnZXTuPQ6jXl/rnxBs+2lnTBIJTl5mZEMwJ5aQDdgFWtpS1/wQ/WaEXxyhBb+1vstt
         D4wnP8g20vUyM6JJgX+rfjEtS0UmPgoGc+Dq7lFc1BOQeFNV+Dwv3rrYyPRKB+ONsd3n
         3JXXjAMteARsa6djr95aWc2YSL0hWYWQVA0JubyT+DRgufZB6OYQrtizp6vt39V8SZ6j
         tlSmVCacPs9jjTvU/8p8MpFcROjYwqdu/iziTdzCGPfveB0J/AMFlQNs3wQYHiZwexHF
         YkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759893510; x=1760498310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lDg4ZaE0kQk1RB2KpwuXVcFNrMgNFMWXQ87bNU/VPH0=;
        b=DlzaEJvYp8VW1BSkm8E1ts4xxVt6BTF+dsSMc8pnYxfKdI98F8yeWV5eyk+ViaFooD
         gaeGRorx060Ys3GvCeBk3sArtwOznVncAWzB/PuQd3uQ/19u95bY5+tXx3LbLiM9ud2E
         RA2vjtOEZIMqGNjvOGSt1cm/wy61VPIkYSsuy/ccQEVc2bpdNNWDm1EWilGGfPmhaKfL
         mFNiKmqXHd+Xos3tnCuSEaEGIC4ztAaSziA9pUoPowB6953jKrdnIfzSBl+31OLbxvJP
         kxByJ6lNvEJSUqUiy8+Smt9bzri8CIOhp/Hw5J98ZwyqwtLiyPG5N6EDai0NFctbO6Go
         zl2A==
X-Forwarded-Encrypted: i=1; AJvYcCV0SvKAVZgfcEmY1hXdVBJTC5IItVfJOrqK41SxEsU+QJxy0oK4Yq3Sf7cADjnFez+k+GbZN9pcJMUe@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu5I9daMNENQCfKHyU/jSZWqIHrzPkvnlVfgt+PK04KTdlEirc
	6++SyqU2TIMRpUxicHk5Ok4phEy3CJLaLAP+w2P2zMIVtlvz9tib+4Hp
X-Gm-Gg: ASbGncvl6ILI/BkswABYH8OXg2p9RgvEtFxHPsQpJKEBx4DHK+bCATa2xv3Vbz3/J88
	9VxaLcktEsALrIRCCiL+l1niC2VUY7npsEE7B7/V5n8i50i9ay9bCMQlHu8+gm93HQsD7iM+nAt
	JwbWwBWL0UP686ZQjEvZGFMubPwmAkStzlQQTTUJmP3/kekN43IYlH6Aknh4LYGsi+Zvl4e0A0F
	fWu1uhX8f3fEsC+QLMFKW/4iGfoo97WhxfZa5A3L0hVYn2PRcinsWMpEvRlt9H1lDi/lLrI8oth
	rFgcCobXkNdtjKIaKv248yyIejq+45tmn3XOQTx0MHduQyCw8iRHbCrNJywO18yb5jYE+xTK+1d
	pzCt+8hJFzfbfy8QoVvDKUTqrirJTzFSGqN5Qb2tQaGIqWkdoPw==
X-Google-Smtp-Source: AGHT+IG1UQCmaY8cs78qKrEmsXcpdVVL9Yje3K7pg4Yhi80RChazLD8kGiz5Ppw9B7HegArhgX/3FA==
X-Received: by 2002:a17:90b:3911:b0:338:2ef8:14af with SMTP id 98e67ed59e1d1-33b513bee03mr2184017a91.37.1759893509584;
        Tue, 07 Oct 2025 20:18:29 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f5990csm16527746a12.38.2025.10.07.20.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 20:18:29 -0700 (PDT)
From: Shrikant Raskar <raskar.shree97@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	matt@ranostay.sg,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	Shrikant Raskar <raskar.shree97@gmail.com>
Subject: [PATCH v2 2/2] iio: health: max30100: Add pulse-width configuration via DT
Date: Wed,  8 Oct 2025 08:47:37 +0530
Message-ID: <20251008031737.7321-3-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251008031737.7321-1-raskar.shree97@gmail.com>
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MAX30100 driver previously hardcoded the SPO2 pulse width to
1600us. This patch adds support for reading the pulse width from
device tree (`maxim,pulse-width-us`) and programming it into the SPO2
configuration register.

If no property is provided, the driver falls back to 1600us to
preserve existing behavior.

Testing:
Hardware: Raspberry Pi 3B + MAX30100 breakout
Verified DT property read in probe()
Confirmed SPO2_CONFIG register written correctly using regmap_read()

Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>

Changes since v1:
Use FIELD_PREP() and define a pulse width bit mask.
Initialize default pulse_us before property read.
Use dev_err_probe() for error reporting.
Make pulse_width signed to handle negative return values.

Link to v1:
https://lore.kernel.org/all/20251004015623.7019-3-raskar.shree97@gmail.com/
---
 drivers/iio/health/max30100.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/health/max30100.c b/drivers/iio/health/max30100.c
index 814f521e47ae..50cd4fd13849 100644
--- a/drivers/iio/health/max30100.c
+++ b/drivers/iio/health/max30100.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2015, 2018
  * Author: Matt Ranostay <matt.ranostay@konsulko.com>
  *
- * TODO: enable pulse length controls via device tree properties
  */
 
 #include <linux/module.h>
@@ -54,6 +53,10 @@
 #define MAX30100_REG_SPO2_CONFIG		0x07
 #define MAX30100_REG_SPO2_CONFIG_100HZ		BIT(2)
 #define MAX30100_REG_SPO2_CONFIG_HI_RES_EN	BIT(6)
+#define MAX30100_REG_SPO2_CONFIG_PW_MASK	GENMASK(1, 0)
+#define MAX30100_REG_SPO2_CONFIG_200US		0x0
+#define MAX30100_REG_SPO2_CONFIG_400US		0x1
+#define MAX30100_REG_SPO2_CONFIG_800US		0x2
 #define MAX30100_REG_SPO2_CONFIG_1600US		0x3
 
 #define MAX30100_REG_LED_CONFIG			0x09
@@ -306,19 +309,47 @@ static int max30100_led_init(struct max30100_data *data)
 		MAX30100_REG_LED_CONFIG_LED_MASK, reg);
 }
 
+static int max30100_get_pulse_width(unsigned int pwidth_us)
+{
+	switch (pwidth_us) {
+	case 200:
+		return MAX30100_REG_SPO2_CONFIG_200US;
+	case 400:
+		return MAX30100_REG_SPO2_CONFIG_400US;
+	case 800:
+		return MAX30100_REG_SPO2_CONFIG_800US;
+	case 1600:
+		return MAX30100_REG_SPO2_CONFIG_1600US;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int max30100_chip_init(struct max30100_data *data)
 {
 	int ret;
+	int pulse_width;
+	/* set default pulse-width-us to 1600us */
+	unsigned int pulse_us = 1600;
+	struct device *dev = &data->client->dev;
 
 	/* setup LED current settings */
 	ret = max30100_led_init(data);
 	if (ret)
 		return ret;
 
+	/* Read pulse-width-us from DT */
+	device_property_read_u32(dev, "maxim,pulse-width-us", &pulse_us);
+
+	pulse_width = max30100_get_pulse_width(pulse_us);
+	if (pulse_width < 0)
+		return dev_err_probe(dev, pulse_width, "invalid pulse-width %uus\n", pulse_us);
+
 	/* enable hi-res SPO2 readings at 100Hz */
 	ret = regmap_write(data->regmap, MAX30100_REG_SPO2_CONFIG,
 				 MAX30100_REG_SPO2_CONFIG_HI_RES_EN |
-				 MAX30100_REG_SPO2_CONFIG_100HZ);
+				 MAX30100_REG_SPO2_CONFIG_100HZ |
+				 FIELD_PREP(MAX30100_REG_SPO2_CONFIG_PW_MASK, pulse_width));
 	if (ret)
 		return ret;
 
-- 
2.43.0


