Return-Path: <devicetree+bounces-101017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3C5970066
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 08:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D79751C222DB
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 06:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA98E14A4C7;
	Sat,  7 Sep 2024 06:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PwXlGtk4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7FA1494A0
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 06:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725691856; cv=none; b=qacKvwJRKYDcIlFfAQk9/CepWx97LRX5Qu6qgPBnBFFmynzDPWmiIORPoeLRLjs3rtAi5zxPnZaaRRb3ZHVOZTwDuGNloEGSx+SsUrFsseT/IjxgZskylzOX/65aBKqVkhUiApJwckoJI6yWfQO6V3xJdA449/lYmloarh81Ff0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725691856; c=relaxed/simple;
	bh=NnhAJQBJzpZTWf9ZHFLmLmSoGg+UPZzZPZwyu2zRvAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dENOJfbMjZK1mely5wfUJo6R03SnFqzZGxo5R82AImWRgHmGiJcjizyqrHd8Ntz6bhsxL1wx2H1QLWsEHfKovvqdcIiVnQMsZ4yBAcdPu3kPpUIz1ZuttXNDZJdvS4IA25g0fIuo1sgYD1b0JzggLpSJ3gboA+NXLv+1aYBuBk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PwXlGtk4; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5365c060f47so1137982e87.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 23:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725691853; x=1726296653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QIaOK2ELUCzmVw69s9QKwCGqHYmV8BBwk11dJWdR7M=;
        b=PwXlGtk4Cezkr1wOOrd5Bx2LvuCkzzNIzoX5exBXGcPILZjR1lzvzyGiR/tWtSLAPc
         ic8IOOObCfVyuzILLAceQx2iVatKme+nuwoc8f8ZG2s3sIUoGCb+ChtV/t0ftZOWWqy+
         qgGDfT6TslTyqKA69DbSmKtNa5aVQmU/OLtxg8WFd+792C3grM6HWQGW/aYGlpvimcnR
         AkEE7gdE7C1hdgkd136w6X9YxrhkEG4otFavebEH8QLFyz9/XQI5YAatIIpS66b2h9X0
         bRqtQk2i/zeC8qpUvLyljv7cEHXmUFWs+fxH3QwzTyRgatYO5b0C0Pkj4r5wsP8v3oWD
         yXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725691853; x=1726296653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QIaOK2ELUCzmVw69s9QKwCGqHYmV8BBwk11dJWdR7M=;
        b=moXKdietRcaQakxJEvf2nGmv1yoUmMxXiW5O5btnAHg/u2sSlk9zGEUp5lELyByaiY
         YY+RVET5O5Vsly3uthplXAMCd7VFEyDyN52GfQSirJoShfRbb0A4+qp8cxdxgQpB9Sua
         090KQX4aWY0schC6X6C9j8BQKF/k3RmGOzvovqtZH70CKg04vxlfqldiqfiwQwbf2chn
         N0p+UI+RQblR9CnLbeSPEyphiHkSkibvtiBn7RPma9YXkFLHXL0GalAsun3mLq2TmyyR
         W0TNGbC91WuPyS07mW6foF3cQlQlHrE8f5zC2yCfimFDbAUiG8K+d89gvDm/NJagUTii
         eOcw==
X-Forwarded-Encrypted: i=1; AJvYcCVlC203Ds8xyf8nBc9jYD9VJpW7n8wXqdMF1hRmjLHMJS9NIjqRP5WiZXXcPUlk5JOblqrWcJPipjRg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9W6lCeyP1vgH7tp70CcX2PO14jWEwZdXYENF7EzI3gZvpwU/d
	R4iLqHfFhNekWvM53TOVrK8HFlLneshiIOnmPiGESJTkY/rGg4TeywV7BSpMlSQ=
X-Google-Smtp-Source: AGHT+IGDJhYReTqFur0m0xhFFPRRr0K5nQluJLBA90FTLp0fQEp0LWuyDqIRFcNMjZ/hC0jzc+s3pw==
X-Received: by 2002:a05:6512:2348:b0:52f:eb:aaca with SMTP id 2adb3069b0e04-536587b4586mr3113934e87.32.1725691851871;
        Fri, 06 Sep 2024 23:50:51 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835a76sm36539266b.39.2024.09.06.23.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 23:50:51 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v5 2/9] iio: adc: ad7606: add 'bits' parameter to channels macros
Date: Sat,  7 Sep 2024 09:50:35 +0300
Message-ID: <20240907065043.771364-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240907065043.771364-1-aardelean@baylibre.com>
References: <20240907065043.771364-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are some newer additions to the AD7606 family, which support 18 bit
precision.
Up until now, all chips were 16 bit.

This change adds a 'bits' parameter to the AD760X_CHANNEL macro and renames
'ad7606_channels' -> 'ad7606_channels_16bit' for the current devices.

The AD7606_SW_CHANNEL() macro is also introduced, as a short-hand for IIO
channels in SW mode.

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 58 ++++++++++++++++++------------------
 drivers/iio/adc/ad7606.h     | 18 ++++++-----
 drivers/iio/adc/ad7606_spi.c | 16 +++++-----
 3 files changed, 47 insertions(+), 45 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 9b457472d49c..8ebfe8abc3f4 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -309,16 +309,16 @@ static const struct iio_chan_spec ad7605_channels[] = {
 	AD7605_CHANNEL(3),
 };
 
-static const struct iio_chan_spec ad7606_channels[] = {
+static const struct iio_chan_spec ad7606_channels_16bit[] = {
 	IIO_CHAN_SOFT_TIMESTAMP(8),
-	AD7606_CHANNEL(0),
-	AD7606_CHANNEL(1),
-	AD7606_CHANNEL(2),
-	AD7606_CHANNEL(3),
-	AD7606_CHANNEL(4),
-	AD7606_CHANNEL(5),
-	AD7606_CHANNEL(6),
-	AD7606_CHANNEL(7),
+	AD7606_CHANNEL(0, 16),
+	AD7606_CHANNEL(1, 16),
+	AD7606_CHANNEL(2, 16),
+	AD7606_CHANNEL(3, 16),
+	AD7606_CHANNEL(4, 16),
+	AD7606_CHANNEL(5, 16),
+	AD7606_CHANNEL(6, 16),
+	AD7606_CHANNEL(7, 16),
 };
 
 /*
@@ -333,22 +333,22 @@ static const struct iio_chan_spec ad7606_channels[] = {
  */
 static const struct iio_chan_spec ad7616_channels[] = {
 	IIO_CHAN_SOFT_TIMESTAMP(16),
-	AD7606_CHANNEL(0),
-	AD7606_CHANNEL(1),
-	AD7606_CHANNEL(2),
-	AD7606_CHANNEL(3),
-	AD7606_CHANNEL(4),
-	AD7606_CHANNEL(5),
-	AD7606_CHANNEL(6),
-	AD7606_CHANNEL(7),
-	AD7606_CHANNEL(8),
-	AD7606_CHANNEL(9),
-	AD7606_CHANNEL(10),
-	AD7606_CHANNEL(11),
-	AD7606_CHANNEL(12),
-	AD7606_CHANNEL(13),
-	AD7606_CHANNEL(14),
-	AD7606_CHANNEL(15),
+	AD7606_CHANNEL(0, 16),
+	AD7606_CHANNEL(1, 16),
+	AD7606_CHANNEL(2, 16),
+	AD7606_CHANNEL(3, 16),
+	AD7606_CHANNEL(4, 16),
+	AD7606_CHANNEL(5, 16),
+	AD7606_CHANNEL(6, 16),
+	AD7606_CHANNEL(7, 16),
+	AD7606_CHANNEL(8, 16),
+	AD7606_CHANNEL(9, 16),
+	AD7606_CHANNEL(10, 16),
+	AD7606_CHANNEL(11, 16),
+	AD7606_CHANNEL(12, 16),
+	AD7606_CHANNEL(13, 16),
+	AD7606_CHANNEL(14, 16),
+	AD7606_CHANNEL(15, 16),
 };
 
 static const struct ad7606_chip_info ad7606_chip_info_tbl[] = {
@@ -358,25 +358,25 @@ static const struct ad7606_chip_info ad7606_chip_info_tbl[] = {
 		.num_channels = 5,
 	},
 	[ID_AD7606_8] = {
-		.channels = ad7606_channels,
+		.channels = ad7606_channels_16bit,
 		.num_channels = 9,
 		.oversampling_avail = ad7606_oversampling_avail,
 		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
 	},
 	[ID_AD7606_6] = {
-		.channels = ad7606_channels,
+		.channels = ad7606_channels_16bit,
 		.num_channels = 7,
 		.oversampling_avail = ad7606_oversampling_avail,
 		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
 	},
 	[ID_AD7606_4] = {
-		.channels = ad7606_channels,
+		.channels = ad7606_channels_16bit,
 		.num_channels = 5,
 		.oversampling_avail = ad7606_oversampling_avail,
 		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
 	},
 	[ID_AD7606B] = {
-		.channels = ad7606_channels,
+		.channels = ad7606_channels_16bit,
 		.num_channels = 9,
 		.oversampling_avail = ad7606_oversampling_avail,
 		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 6649e84d25de..204a343067e5 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -8,7 +8,7 @@
 #ifndef IIO_ADC_AD7606_H_
 #define IIO_ADC_AD7606_H_
 
-#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all) {	\
+#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all, bits) {	\
 		.type = IIO_VOLTAGE,				\
 		.indexed = 1,					\
 		.channel = num,					\
@@ -19,24 +19,26 @@
 		.scan_index = num,				\
 		.scan_type = {					\
 			.sign = 's',				\
-			.realbits = 16,				\
-			.storagebits = 16,			\
+			.realbits = (bits),			\
+			.storagebits = (bits) > 16 ? 32 : 16,	\
 			.endianness = IIO_CPU,			\
 		},						\
 }
 
 #define AD7605_CHANNEL(num)				\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW),	\
-		BIT(IIO_CHAN_INFO_SCALE), 0)
+		BIT(IIO_CHAN_INFO_SCALE), 0, 16)
 
-#define AD7606_CHANNEL(num)				\
+#define AD7606_CHANNEL(num, bits)			\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW),	\
 		BIT(IIO_CHAN_INFO_SCALE),		\
-		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO))
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), bits)
 
-#define AD7616_CHANNEL(num)	\
+#define AD7606_SW_CHANNEL(num, bits)	\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW) | BIT(IIO_CHAN_INFO_SCALE),\
-		0, BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO))
+		0, BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), bits)
+
+#define AD7616_CHANNEL(num)	AD7606_SW_CHANNEL(num, 16)
 
 /**
  * struct ad7606_chip_info - chip specific information
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index 62ec12195307..e00f58a6a0e9 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -67,14 +67,14 @@ static const struct iio_chan_spec ad7616_sw_channels[] = {
 
 static const struct iio_chan_spec ad7606b_sw_channels[] = {
 	IIO_CHAN_SOFT_TIMESTAMP(8),
-	AD7616_CHANNEL(0),
-	AD7616_CHANNEL(1),
-	AD7616_CHANNEL(2),
-	AD7616_CHANNEL(3),
-	AD7616_CHANNEL(4),
-	AD7616_CHANNEL(5),
-	AD7616_CHANNEL(6),
-	AD7616_CHANNEL(7),
+	AD7606_SW_CHANNEL(0, 16),
+	AD7606_SW_CHANNEL(1, 16),
+	AD7606_SW_CHANNEL(2, 16),
+	AD7606_SW_CHANNEL(3, 16),
+	AD7606_SW_CHANNEL(4, 16),
+	AD7606_SW_CHANNEL(5, 16),
+	AD7606_SW_CHANNEL(6, 16),
+	AD7606_SW_CHANNEL(7, 16),
 };
 
 static const unsigned int ad7606B_oversampling_avail[9] = {
-- 
2.46.0


