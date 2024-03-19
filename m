Return-Path: <devicetree+bounces-51568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D77387FB88
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DC1F1C21C96
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1A97EF0E;
	Tue, 19 Mar 2024 10:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oTnPTOpk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C188B7E58C
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710843098; cv=none; b=lmJ5iRgDPVHghb0+MpFtMY85Y3S/i4EFWJhIUK2JkqTjKFxn4r6dZ7NkAnvkWnh4aOsxcF/fz7pc7jU2MhzBblWoSslmwrh4K5h8xUpl+EZswbe5eIbJjwgEsH2Y8XNe6OYEy5vZ9QgVT2XMqorN5uM8Jp2qHoIQnthaGwdErNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710843098; c=relaxed/simple;
	bh=6gIfh5uFIf6W6lL4+sOYzDyo2ejbQBzrCKRk6ToJk1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IaQkiH/5LNhLi4uBpze7EI8l7SlUKbCxE2r0uGlpwCRFT/7WXRrYNPZT3EcR1LC8yyCSYDEk6KXFU0WZktFKLJUP+PrrRdJFJrXXLnfnunGPADDR1nx28xizawz3WbMec0kiuogHqc7Ik2yMmxLtziQvZYuAAQ+vVdfmlNEp2K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oTnPTOpk; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-414645c349dso2555855e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710843095; x=1711447895; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oENZrrgPfRh3IPprrxiepKHiBc0jZVLa7U/uSPkPi0I=;
        b=oTnPTOpkWWISVBwMJOIn+aJHmSDkxYgudshV195QGeaRo+i7MY+Gh8KyWFSn05/fqi
         7Xbk4KvnCJm1vmagZ98sPzKmRLs5bEVej/fyfG86icp3yZ6tfzOyr5Bk0Vb6ZuJRlysS
         P/RQvQCYZ87lFbtBqHhG2YiLezojbt03TVE33zc2b9jwO6T5KoAHmdRaYN8hhC4QvgMI
         aZMYOMG1OLmJFujMYWLgSl9b8YlB2HB9dCWyrlp+glJ9ArEJQx/TBUBvaxHsk5PDKXVV
         PHw8TGTRrT1BYCShZ9b0OtHpSc4FNFxUlg2CANuQUNT9DUK30DJc8BeRspNb6SrQxxA6
         nmzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710843095; x=1711447895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oENZrrgPfRh3IPprrxiepKHiBc0jZVLa7U/uSPkPi0I=;
        b=oJko+pTy4LrdUjptxO8gF7M1xIfBbrhOmPp34FJouQ8xEEUp4QxXNFfBnthaGL6nZh
         mZ6TpNR1EjkmMZy5dT376yUpm5U+tRWJTRKZjHp5vmOobTFBeurn0NDh81c95pRqVpXO
         3SF0NA2SNnanGn4dsbFa/8ZJ36BSTHxtEkyKTfIszViNi+fKuiGz/642ZgC8DAYFhVdJ
         QyHEqMC54/7PG82WDEdeKYSzkIMcbdPMlQpz2DYutgCJrrEfu5cbhkDWyoJC+6bbCQtf
         Nv5YuO/DPzpL1q+d/lAz/rt8CCYmGpaNT2cR2vOWNeuIL1+DQzm8A/l2Qwjj2mHMSB7X
         JJsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnkvBIqrQrVHHwqQkrNRvWmc0GcDse6YJUjwv5SnkmO5dagwdzb3VvQi8q+f9vrsK+zJ6f5JIiv9f0Y3odDGGYdiC/GPYOFgTzag==
X-Gm-Message-State: AOJu0YyYG6JYgyVQAHzLUDRBo3WXeKzK4hh5q0cpdwjL9UdsAt8S7TjL
	2X0ziY6hkppAhP/EfOEPJ3MM998VLe1QVBQ8yUkrohh+nfL0QTD0/NZmKmix7XTT8JsWflhY0Hd
	c99c=
X-Google-Smtp-Source: AGHT+IHdWNzGpiHpYRDbNc4GMNk3xw7KyjZ+1SV3lHA7Q2L91+M7HGis5pfjJfkVeXMDiBbXUOBccQ==
X-Received: by 2002:a05:600c:1c89:b0:414:43e:4aaf with SMTP id k9-20020a05600c1c8900b00414043e4aafmr1850634wms.1.1710843095145;
        Tue, 19 Mar 2024 03:11:35 -0700 (PDT)
Received: from [192.168.1.63] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id je2-20020a05600c1f8200b004133072017csm21096384wmb.42.2024.03.19.03.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:11:34 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 19 Mar 2024 11:11:26 +0100
Subject: [PATCH v5 5/7] iio: adc: ad7380: prepare for parts with more
 channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-adding-new-ad738x-driver-v5-5-ce7df004ceb3@baylibre.com>
References: <20240319-adding-new-ad738x-driver-v5-0-ce7df004ceb3@baylibre.com>
In-Reply-To: <20240319-adding-new-ad738x-driver-v5-0-ce7df004ceb3@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
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
 drivers/iio/adc/ad7380.c | 42 ++++++++++++++++++++++++++++++++----------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index 996ca83feaed..3aca41ce9a14 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -29,6 +29,7 @@
 #include <linux/iio/trigger_consumer.h>
 #include <linux/iio/triggered_buffer.h>
 
+#define MAX_NUM_CHANNELS		2
 /* 2.5V internal reference voltage */
 #define AD7380_INTERNAL_REF_MV		2500
 
@@ -65,12 +66,19 @@
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
@@ -115,16 +123,24 @@ static const unsigned long ad7380_2_channel_scan_masks[] = {
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
@@ -133,6 +149,8 @@ static const struct ad7380_chip_info ad7383_chip_info = {
 	.num_channels = ARRAY_SIZE(ad7383_channels),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 static const struct ad7380_chip_info ad7384_chip_info = {
@@ -141,6 +159,8 @@ static const struct ad7380_chip_info ad7384_chip_info = {
 	.num_channels = ARRAY_SIZE(ad7384_channels),
 	.vcm_supplies = ad7380_2_channel_vcm_supplies,
 	.num_vcm_supplies = ARRAY_SIZE(ad7380_2_channel_vcm_supplies),
+	.available_scan_masks = ad7380_2_channel_scan_masks,
+	.timing_specs = &ad7380_timing,
 };
 
 struct ad7380_state {
@@ -148,15 +168,15 @@ struct ad7380_state {
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
 	 */
 	struct {
-		u16 raw[2];
+		u16 raw[MAX_NUM_CHANNELS];
 
 		s64 ts __aligned(8);
 	} scan_data __aligned(IIO_DMA_MINALIGN);
@@ -194,7 +214,7 @@ static int ad7380_regmap_reg_read(void *context, unsigned int reg,
 			.tx_buf = &st->tx,
 			.cs_change = 1,
 			.cs_change_delay = {
-				.value = 10, /* t[CSH] */
+				.value = st->chip_info->timing_specs->t_csh_ns,
 				.unit = SPI_DELAY_UNIT_NSECS,
 			},
 		}, {
@@ -255,7 +275,8 @@ static irqreturn_t ad7380_trigger_handler(int irq, void *p)
 	struct ad7380_state *st = iio_priv(indio_dev);
 	struct spi_transfer xfer = {
 		.bits_per_word = st->chip_info->channels[0].scan_type.realbits,
-		.len = 4,
+		.len = (st->chip_info->num_channels - 1) *
+		       ((st->chip_info->channels->scan_type.storagebits > 16) ? 4 : 2),
 		.rx_buf = st->scan_data.raw,
 	};
 	int ret;
@@ -282,21 +303,22 @@ static int ad7380_read_direct(struct ad7380_state *st,
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
@@ -472,7 +494,7 @@ static int ad7380_probe(struct spi_device *spi)
 	indio_dev->name = st->chip_info->name;
 	indio_dev->info = &ad7380_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
-	indio_dev->available_scan_masks = ad7380_2_channel_scan_masks;
+	indio_dev->available_scan_masks = st->chip_info->available_scan_masks;
 
 	ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev,
 					      iio_pollfunc_store_time,

-- 
2.44.0


