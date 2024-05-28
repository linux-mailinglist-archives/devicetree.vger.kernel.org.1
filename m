Return-Path: <devicetree+bounces-69897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C37FE8D1E6F
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 643372828E0
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F62170858;
	Tue, 28 May 2024 14:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qLafSer+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E616F85D
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906045; cv=none; b=rXHS7Ac1evrl6BNMBSJPSaKwdQOFPq7FfqwxJOCNP2iGNpUYz6H571kUFqhtH/+5k4fnmbfkyij1bA1LA5aEECear6bn1Ny7+g2RlnRWpd/6HE+SHmIgrupSDeDdOQT6GwZRtvZsGgy84MQP4aM0eti5eWjIiWe+X+/UrumzEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906045; c=relaxed/simple;
	bh=QF68x+vMZHjMq9zYLgUVSZ+b3LIpttZDV0zyyy/wbQU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c72CsQ+a7T/jbBg2BHWG2NCXP6MNkeDBdZneRvCulfK/qWppmcoR2RApID3zG6jdd41i31wcgnnVSoXWA2djCOtZlG9fh4zZGYXGjWisv5wJ/12ta/EVPDTL8dWbZVwqABl0NWINM1CGbuJJHwRbiEHDK5kd7SnLv4Co/KEhlY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qLafSer+; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42120fc8cbfso3466825e9.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716906042; x=1717510842; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dZh5j2uCvXBtaNyL3cov+Xu0A8wLUMvvdwWCENNHfqE=;
        b=qLafSer+PR7Q/A7HSmKK+UZMfpeEjtQDMMIF1OWU5jI6XJggDNZJoTmiB0nhDsSbZP
         u832eM9Vj+weTF/UauxJD8REMBrr+EwuQuqd+dn7X9oRIwmolIUgY+xqsoSDq2H1fgvZ
         +Y4epO8lw7QFKG+DwgFN7Rpybu1p7ddpVyUyKgBM6iEndooZgfwEJ/OdyP1gcrNrGl+Z
         wlIjAmv6HtC8xL8ykIC4WYXkw9y35yMNf+ffu3al8oZm5zsXWalpeg/YhNwPxVkLaZj/
         /rdnDde2SYIgvQ0j71a+esiDdEmi2ri02gAL4/taggBnHa6Ajw1FOy+aXpFH7W+cHcMN
         yZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716906042; x=1717510842;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dZh5j2uCvXBtaNyL3cov+Xu0A8wLUMvvdwWCENNHfqE=;
        b=PErHfVs8yxTv/IzHiBiJUGuDx/yfwHv3xO2Efpy5dqV1aAhDFooAc3tOl7vV9z0Vjl
         yAS/BRudPXR/cPPmT7TLiHh+I2l32NGPFTeJ9d1KvcTO0/onrTOcH342XsULwe5DYR+i
         mXZyxJAfs6C/4b3t9iQanTZe91ZYNqYIvOJ0zHSe5CnIdCRslvL+4TGtbZk9ewWszebL
         yOUSI8znKtg33WQz6ULwWfK6zBjRacz7opi63B/XOrQQFXPHrR9a4qgi/Ry07DxgBGsC
         UbnjN6OHcF5LL6kWYgSuROkw1u3dESPTpueOKueo43NgrI+7pnHOC8jL7hCDvlZBZmqZ
         1HPw==
X-Forwarded-Encrypted: i=1; AJvYcCWjwZVMjiLsV8c9ciLL91OlTkizF9h0k8U9DrsxbUIhfF1gNGyMbC9DqpnFf5NCD6xwHp+WI+dW7OexfHYdS4Tv0kO+AKQ2d7biQg==
X-Gm-Message-State: AOJu0YwqAOj5rcJ1LIMgakLXiYSz08mswSxuNXYVRpeMQFJAWOOh3w80
	YhQLh5mwV7wLPZ7srtawdqMXn8g3Q5by6qAdwBuEdiAeVT96rNRcPJerosrwyY4=
X-Google-Smtp-Source: AGHT+IGnnuc64zTUf2E/L2uG0lvJ7iB0PRLj/xKheGG/foJ6wTIRxnf1Dapre87VE1Tlaab0q8TSIQ==
X-Received: by 2002:a05:6000:1188:b0:356:50e7:e942 with SMTP id ffacd0b85a97d-35650e7eda5mr7250240f8f.61.1716906041995;
        Tue, 28 May 2024 07:20:41 -0700 (PDT)
Received: from [192.168.1.63] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35579d7db5esm11999275f8f.15.2024.05.28.07.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 07:20:41 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 28 May 2024 16:20:32 +0200
Subject: [PATCH v7 5/7] iio: adc: ad7380: prepare for parts with more
 channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-adding-new-ad738x-driver-v7-5-4cd70a4c12c8@baylibre.com>
References: <20240528-adding-new-ad738x-driver-v7-0-4cd70a4c12c8@baylibre.com>
In-Reply-To: <20240528-adding-new-ad738x-driver-v7-0-4cd70a4c12c8@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.13.0

The current driver supports only parts with 2 channels.
In order to prepare the support of new compatible ADCs with more
channels, this commit:
  - defines MAX_NUM_CHANNEL to specify the maximum number of
    channels currently supported by the driver
  - adds available_scan_mask member in ad7380_chip_info structure
  - fixes spi xfer struct len depending on number of channels
  - fixes scan_data.raw buffer size to handle more channels
  - adds a timing specifications structure in ad7380_chip_info structure

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/iio/adc/ad7380.c | 43 +++++++++++++++++++++++++++++++++----------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index 4ad283cf970d..790d08c90ad0 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -27,6 +27,7 @@
 #include <linux/iio/trigger_consumer.h>
 #include <linux/iio/triggered_buffer.h>
 
+#define MAX_NUM_CHANNELS		2
 /* 2.5V internal reference voltage */
 #define AD7380_INTERNAL_REF_MV		2500
 
@@ -63,12 +64,19 @@
 #define AD7380_ALERT_LOW_TH		GENMASK(11, 0)
 #define AD7380_ALERT_HIGH_TH		GENMASK(11, 0)
 
+#define T_CONVERT_NS 190		/* conversion time */
+struct ad7380_timing_specs {
+	const unsigned int t_csh_ns;	/* CS minimum high time */
+};
+
 struct ad7380_chip_info {
 	const char *name;
 	const struct iio_chan_spec *channels;
 	unsigned int num_channels;
 	const char * const *vcm_supplies;
 	unsigned int num_vcm_supplies;
+	const unsigned long *available_scan_masks;
+	const struct ad7380_timing_specs *timing_specs;
 };
 
 #define AD7380_CHANNEL(index, bits, diff) {			\
@@ -113,16 +121,24 @@ static const unsigned long ad7380_2_channel_scan_masks[] = {
 	0
 };
 
+static const struct ad7380_timing_specs ad7380_timing = {
+	.t_csh_ns = 10,
+};
+
 static const struct ad7380_chip_info ad7380_chip_info = {
 	.name = "ad7380",
 	.channels = ad7380_channels,
 	.num_channels = ARRAY_SIZE(ad7380_channels),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 static const struct ad7380_chip_info ad7381_chip_info = {
 	.name = "ad7381",
 	.channels = ad7381_channels,
 	.num_channels = ARRAY_SIZE(ad7381_channels),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 static const struct ad7380_chip_info ad7383_chip_info = {
@@ -131,6 +147,8 @@ static const struct ad7380_chip_info ad7383_chip_info = {
 	.num_channels = ARRAY_SIZE(ad7383_channels),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 static const struct ad7380_chip_info ad7384_chip_info = {
@@ -139,6 +157,8 @@ static const struct ad7380_chip_info ad7384_chip_info = {
 	.num_channels = ARRAY_SIZE(ad7384_channels),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 struct ad7380_state {
@@ -146,15 +166,16 @@ struct ad7380_state {
 	struct spi_device *spi;
 	struct regmap *regmap;
 	unsigned int vref_mv;
-	unsigned int vcm_mv[2];
+	unsigned int vcm_mv[MAX_NUM_CHANNELS];
 	/*
 	 * DMA (thus cache coherency maintenance) requires the
 	 * transfer buffers to live in their own cache lines.
-	 * Make the buffer large enough for 2 16-bit samples and one 64-bit
+	 * Make the buffer large enough for MAX_NUM_CHANNELS 16-bit samples and one 64-bit
 	 * aligned 64 bit timestamp.
+	 * As MAX_NUM_CHANNELS is 2 the layout of the structure is the same for all parts
 	 */
 	struct {
-		u16 raw[2];
+		u16 raw[MAX_NUM_CHANNELS];
 
 		s64 ts __aligned(8);
 	} scan_data __aligned(IIO_DMA_MINALIGN);
@@ -192,7 +213,7 @@ static int ad7380_regmap_reg_read(void *context, unsigned int reg,
 			.tx_buf = &st->tx,
 			.cs_change = 1,
 			.cs_change_delay = {
-				.value = 10, /* t[CSH] */
+				.value = st->chip_info->timing_specs->t_csh_ns,
 				.unit = SPI_DELAY_UNIT_NSECS,
 			},
 		}, {
@@ -247,7 +268,8 @@ static irqreturn_t ad7380_trigger_handler(int irq, void *p)
 	struct ad7380_state *st = iio_priv(indio_dev);
 	struct spi_transfer xfer = {
 		.bits_per_word = st->chip_info->channels[0].scan_type.realbits,
-		.len = 4,
+		.len = (st->chip_info->num_channels - 1) *
+		       BITS_TO_BYTES(st->chip_info->channels->scan_type.storagebits),
 		.rx_buf = st->scan_data.raw,
 	};
 	int ret;
@@ -274,21 +296,22 @@ static int ad7380_read_direct(struct ad7380_state *st,
 			.speed_hz = AD7380_REG_WR_SPEED_HZ,
 			.bits_per_word = chan->scan_type.realbits,
 			.delay = {
-				.value = 190, /* t[CONVERT] */
+				.value = T_CONVERT_NS,
 				.unit = SPI_DELAY_UNIT_NSECS,
 			},
 			.cs_change = 1,
 			.cs_change_delay = {
-				.value = 10, /* t[CSH] */
+				.value = st->chip_info->timing_specs->t_csh_ns,
 				.unit = SPI_DELAY_UNIT_NSECS,
 			},
 		},
-		/* then read both channels */
+		/* then read all channels */
 		{
 			.speed_hz = AD7380_REG_WR_SPEED_HZ,
 			.bits_per_word = chan->scan_type.realbits,
 			.rx_buf = st->scan_data.raw,
-			.len = 4,
+			.len = (st->chip_info->num_channels - 1) *
+			       ((chan->scan_type.storagebits > 16) ? 4 : 2),
 		},
 	};
 	int ret;
@@ -469,7 +492,7 @@ static int ad7380_probe(struct spi_device *spi)
 	indio_dev->name = st->chip_info->name;
 	indio_dev->info = &ad7380_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->available_scan_masks = ad7380_2_channel_scan_masks;
+	indio_dev->available_scan_masks = st->chip_info->available_scan_masks;
 
 	ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev,
 					      iio_pollfunc_store_time,

-- 
2.44.0


