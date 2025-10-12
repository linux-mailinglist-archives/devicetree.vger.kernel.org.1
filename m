Return-Path: <devicetree+bounces-225749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 185F3BD0893
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B16F1887BA4
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6152EF673;
	Sun, 12 Oct 2025 17:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PvU1q3zK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6E2EDD7E
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290272; cv=none; b=ZYU22+z2sVqK8jgvPltOgpS5/MoDaDJcp1M8VHd0yP02n+pJcUObk7o8vyoSqk7uKZwSeaarbz9YnwJTS34/rW4PGZ+vsRm7YB66V1DqAl3a0Vlk82noKl2EiwzooF5y5xyo+58P1iAk2+EX2+HEcWaOOKTsBcq0s2N6lOjh4x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290272; c=relaxed/simple;
	bh=cFKlcvuaXtcSZMOgGjWRYhdQn9J0B/w0AZ9XU7P7kLs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gAJfVfrxqaqynsK+rGpcl4GgwkT/LPqED7kUq17flUKYuCx7J16FxboBodwHvchymBk1O6wFHjwOb1Iy1bOM7hXd/zzKJ3CNYNdiw8ahM9j1/SUnFGaYNd4cZ2NPRs19kBNrYU96hpdiQgXzMRW+QADb4jVqMpA7QRd5YeruqtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PvU1q3zK; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-782a77b5ec7so3021645b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760290268; x=1760895068; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1WYbiDGYBtvcLhOiPigF7y5tczemtOhMUj/Ff3hDUg=;
        b=PvU1q3zKnfPvb7+S+SMPjCvSxWRbJf05p7mPd844QCJiDRgDIjeoDxw3SNNrurbaAX
         K/SXBRYPjNDoO1FlGbTqWYwAggnWIIV4Sd+73hQcYHJ0kqwV4r2DBDQBIzE7mDUXQqdi
         +edZdLnUalVC+ze8cSia2osPLNXcE/SeHGIN+y6bXYqCejIpKP2dhzMm788KQPAwx43V
         STi0AlZYTo1Ax0BV2uldk0yKAwNpnzT5KPQ4/QFecDU8/NkriDjP3zmEfjKH41XF4cYu
         eg5q2BWIGXE2wOgmas5tCS3zi+KPstAkPX9nZtfuIObHIc4BGVnLngnF9WgrqiF1bQ7Z
         //Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760290268; x=1760895068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1WYbiDGYBtvcLhOiPigF7y5tczemtOhMUj/Ff3hDUg=;
        b=s1zaMCvxhhdFQumK43zBvryXtwZ23Qx7SmRVcTCBgcrW732sxqJzRK1gkJbdl3ZemI
         klXu4JaKLKJnZgqtLaXBexQ8krESdkkWvoTME1qI42PjiVPNRqlBJ6QNJI9r6YiEfbzA
         hMrkPQTJwEbdWeAo9DnKEz0P1Qr4PlhETvmyrXLLJoN/4TGQhNT8mbwMyD4b0QqyGDQJ
         FYuYiZWBfiEYV6CYNsL21TmrkWxQRb1Ljgaj2QlgPIIfX3w7VSn0mx/RZS09fg1iwHbE
         S8sE+3Q1FrM/4nxmVKNtD6I8tzhkqjVm+6KNoOkOzNeDippSPm1i31qCh7qayyi5ubf9
         ohQw==
X-Forwarded-Encrypted: i=1; AJvYcCUsKtVHTg4kmfJK/pmitwtR0fgQp0Lbeh3WqyBDssJajQzZRQCemRwT+NKASFtMHr6ibMRnjsWBuYC7@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw0ytmkJ7llhdTXO1QzKKsqd1gV6ypfMP9AyHzZUgusjEcPKPT
	zKqirXXH3AnfhqZDJp/+BbUJe6ogvQhcWGwrWpE7Cd33SXJckK7pw2wY
X-Gm-Gg: ASbGncs6kTvRhGgK8gpKEc3D97egVq0vJmTxGph2nqRN80H1+QsCIbt9vfT6nHwmryJ
	QavCy6ynuf+e7M6X0MQi6+eqjFnZ+4SJHTDxjMS8ApL240OaMy5yhyq2Y/BDHpJiEmjvj4LiVPW
	S28ALVsGRw0E1J87SHzk5AoLGjVAcfawqUZ6dy+jHvm6O/bE+PcWigJFmM68yhmq5eSE8shc9QN
	P9crbpev5q5o9dC526MHLp4SUmxM0NXEbUmxpbPDEDaaY3qkkEG/punjnO74nJLpeGK3mFvAtYJ
	uGtr5/AN6V89c9kX58Jb8pCNf1KeAbn+cNOJpttgIv215twT2O2/oE3Pr/hCfNo8nZOFVs2t+2o
	MtneGxHVh/4k1bL+KESiXMODCjxCWk4Q//78/snF1Gx6o4vSx0UNjFP3o+G+UWjeSHA==
X-Google-Smtp-Source: AGHT+IEHQhj2HZRPcvVzv+9O3j9EgA5G5z/y+In7nTPUNMgaYFBeAqR4KlBOulH8TFpYHBuaXDP4SQ==
X-Received: by 2002:a05:6a00:3e08:b0:781:1f28:eadd with SMTP id d2e1a72fcca58-7938763716amr18550052b3a.20.1760290268342;
        Sun, 12 Oct 2025 10:31:08 -0700 (PDT)
Received: from Ubuntu24.. ([103.187.64.31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09ace5sm9030616b3a.53.2025.10.12.10.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 10:31:07 -0700 (PDT)
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
Subject: [PATCH v3 2/2] iio: health: max30100: Make LED pulse-width configurable via DT
Date: Sun, 12 Oct 2025 23:00:35 +0530
Message-ID: <20251012173035.12536-3-raskar.shree97@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251012173035.12536-1-raskar.shree97@gmail.com>
References: <20251012173035.12536-1-raskar.shree97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The required LED pulse width depends on board-specific optical and
mechanical design, which affects measurement accuracy and power use.
Making it configurable via Device Tree allows each platform to define
an appropriate value instead of relying on a hardcoded default.

If unspecified, the driver defaults to 1600 us for backward compatibility.

Tested on: Raspberry Pi 3B + MAX30100 breakout board.

Reviewed-by: Nuno Sa <nuno.sa@analog.com>
Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
---
Changelog:
Changes since v2:
- Reorder SPO2_CONFIG register defines by bit position (lowest to highest).
- Add missing header file for FIELD_PREP() macro.
- Add Reviewed-by tag.

Link to v2:
https://lore.kernel.org/all/20251008031737.7321-3-raskar.shree97@gmail.com/
---
 drivers/iio/health/max30100.c | 38 ++++++++++++++++++++++++++++++++---
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/health/max30100.c b/drivers/iio/health/max30100.c
index 814f521e47ae..3d441013893c 100644
--- a/drivers/iio/health/max30100.c
+++ b/drivers/iio/health/max30100.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2015, 2018
  * Author: Matt Ranostay <matt.ranostay@konsulko.com>
  *
- * TODO: enable pulse length controls via device tree properties
  */
 
 #include <linux/module.h>
@@ -18,6 +17,7 @@
 #include <linux/mutex.h>
 #include <linux/property.h>
 #include <linux/regmap.h>
+#include <linux/bitfield.h>
 #include <linux/iio/iio.h>
 #include <linux/iio/buffer.h>
 #include <linux/iio/kfifo_buf.h>
@@ -52,9 +52,13 @@
 #define MAX30100_REG_MODE_CONFIG_PWR		BIT(7)
 
 #define MAX30100_REG_SPO2_CONFIG		0x07
+#define MAX30100_REG_SPO2_CONFIG_PW_MASK	GENMASK(1, 0)
+#define MAX30100_REG_SPO2_CONFIG_200US		0x0
+#define MAX30100_REG_SPO2_CONFIG_400US		0x1
+#define MAX30100_REG_SPO2_CONFIG_800US		0x2
+#define MAX30100_REG_SPO2_CONFIG_1600US		0x3
 #define MAX30100_REG_SPO2_CONFIG_100HZ		BIT(2)
 #define MAX30100_REG_SPO2_CONFIG_HI_RES_EN	BIT(6)
-#define MAX30100_REG_SPO2_CONFIG_1600US		0x3
 
 #define MAX30100_REG_LED_CONFIG			0x09
 #define MAX30100_REG_LED_CONFIG_LED_MASK	0x0f
@@ -306,19 +310,47 @@ static int max30100_led_init(struct max30100_data *data)
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
+	/* set default LED pulse-width to 1600 us */
+	unsigned int pulse_us = 1600;
+	struct device *dev = &data->client->dev;
 
 	/* setup LED current settings */
 	ret = max30100_led_init(data);
 	if (ret)
 		return ret;
 
+	/* Read LED pulse-width-us from DT */
+	device_property_read_u32(dev, "maxim,pulse-width-us", &pulse_us);
+
+	pulse_width = max30100_get_pulse_width(pulse_us);
+	if (pulse_width < 0)
+		return dev_err_probe(dev, pulse_width, "invalid LED pulse-width %uus\n", pulse_us);
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


