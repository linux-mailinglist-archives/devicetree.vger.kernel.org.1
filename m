Return-Path: <devicetree+bounces-100298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4557196D1F2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2D601F24A4F
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF771194149;
	Thu,  5 Sep 2024 08:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="g3E33VzH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65178F66
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725524654; cv=none; b=r564CfkCnlPK5h+54JWaYXmHRZA3iJxnVGhGS+7vyD+2Rux+7cbAzQimYNNs/dHnIW22E4ICL+BhQwXYW5qTV+mfGAq6hwA0r6coQ8lQv1fsXS0kVgqVOmOS8aOKCwdOuN1vYbDwe3996qJi/y8Naq6D3eEW+tl83DxqmGCzQrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725524654; c=relaxed/simple;
	bh=m+JDUAFze61TKUmqgjZi4kJQBJPi7r7Nl0ZvyJY2pOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SWiLSsWTCspWzRDJ/tZ/SDznuuN0oQ72XKhfMcHDdzYizuLE4FUYNvwfzhgxKav8AjIw6TQpP49+PMmXYJuCzzLxKpFYLXmxQwwzo7iUTlEokbK5TfblA4Njce7ZtiH3dxyVJzIzg2B9iwraHVxqnRaeOZamH6p1zYIYwxlhUBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=g3E33VzH; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7a81bd549eso56867166b.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725524651; x=1726129451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zwFKX15TuB+lP2XuqgSDKuPw5N2dTeJWzE8YjtBx2Ck=;
        b=g3E33VzHzhbbD7jExnMOV2NP756Geve0GMk1Zty81+0+2H7Qgp4xjyAWmU2HAHEky0
         Kv22J5k+I9GWjC3QYwwAEbyherzivdtDAlDjG5Yith082zQz4NVkdsStZ5FtqgyoMco/
         Yaf62tLUYAAYZAMkrfBTNOf2JawiCK3NPWq1K5jOtJYg9wpdZVOClScXj82H/y1U6UJG
         FQFXKhqY7TCe884tUeq3mgADmiuO3Rc26zTm2zC//3YTCe09UAO8+VeVgrkjZkgQ3Ulk
         ZCXNFvqrgVu59gZnz7JmTWWj6pXqlVEclzpUotXKah2JxL9ZWFF+HmX+2koY/MEcIGrz
         4tlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725524651; x=1726129451;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwFKX15TuB+lP2XuqgSDKuPw5N2dTeJWzE8YjtBx2Ck=;
        b=g5YLIw60XhV+na4zSmWO/Z3ZcG8qWeuwF4hrn2IV/gDqokm1dbGMHgcbQShqG09vlb
         66WFbxYYFqPUTXjGK+FWiWVNAmsJPABi//zx3wmIRTEo5GpytL3JiIC2R5kF1R787Kjf
         AqcM2WReJ55pTHII96g7bCTzdki0EIAlI554pfBkFTklmd63KfvlNzHgfBDcqd/FwS+X
         L9L7AnOefEcWwAkFoHdC9pWDHrk16XsU/L3Fb276BE99Jpq7R0jvuTmwieGR+eDAAcLf
         K+H9URPHb8zikxqAQNn+lJiKu7KgkfnFMMBNJ2PBpbMa7M99VyC1L7jmXqS58jp8zKwn
         wH7A==
X-Forwarded-Encrypted: i=1; AJvYcCV396b6F9g+B7jh5NA5dhSj/TwH0+oUyvZ2pPBM4OK7hwFkC8RB06wh6x2EgTp+CEYQlnLHlbDcpC//@vger.kernel.org
X-Gm-Message-State: AOJu0YxNrHLIx1JsTfZoQDg/wbhkWPkPqoyUY/Zf6OB/DmCxq6+NfP3X
	yPTeduJWdN/vzdEly3O1S5eFEGTDXMxA54m6tsWFSEN3TeDJGgksEsBQ+jXaSJN4b5CF4kP8Ibt
	mn20=
X-Google-Smtp-Source: AGHT+IFtitYuRZTUOW9czyZovn6Ss5VJ1XOnQFXqGurB7hkDMfVYYYtanDt3+TNDH8s7SXGorJPUjQ==
X-Received: by 2002:a17:907:7ea3:b0:a86:82da:2c3c with SMTP id a640c23a62f3a-a8a1d32e2femr761128766b.40.1725524650265;
        Thu, 05 Sep 2024 01:24:10 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a623a6c80sm102300366b.174.2024.09.05.01.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 01:24:09 -0700 (PDT)
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
Subject: [PATCH v4 1/8] iio: adc: ad7606: add 'bits' parameter to channels macros
Date: Thu,  5 Sep 2024 11:23:55 +0300
Message-ID: <20240905082404.119022-2-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240905082404.119022-1-aardelean@baylibre.com>
References: <20240905082404.119022-1-aardelean@baylibre.com>
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
index 539e4a8621fe..dba1f28782e4 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -333,16 +333,16 @@ static const struct iio_chan_spec ad7605_channels[] = {
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
@@ -357,22 +357,22 @@ static const struct iio_chan_spec ad7606_channels[] = {
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
@@ -382,25 +382,25 @@ static const struct ad7606_chip_info ad7606_chip_info_tbl[] = {
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
index 0c6a88cc4695..771121350f98 100644
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
+			.storagebits = (bits),			\
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


