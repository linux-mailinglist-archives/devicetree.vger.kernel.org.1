Return-Path: <devicetree+bounces-130001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E86D9ED7C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C8EF280C45
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79316238E00;
	Wed, 11 Dec 2024 20:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NZgauuA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8E2237FC0
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950521; cv=none; b=n6xIPUy2j6cqvMjUN5YAvs0O10uByCaon8W44mxi/uTzYp9kakFN0AkIKVUYp80jPyTVnERbRf6RMPWY1Zk0BGy1/eUOv/tlZHPSyGQRU3P/2sdxbAiT+M2iZv/sC0woMdKRA+Rnnt0KYlLKNtfLpRR23Tq4A2wmKqT9tjHLtSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950521; c=relaxed/simple;
	bh=VZ/YwavR6N31puyPe6nsp32O5zBdZ+orvym1UmTOrl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IgdBtdVw7uf1ZLrrcoXuxsDhvleyC8pPftpwC3/5Ms1ujpXrVeZTYLFAwDWV9iay7HU+8liuN4sGY7p+8kXPsBGbOP//MeWC/Tu3ButyM+pZc6h/WUWe52hNHBfWdjRLnNGbAIbD2KIV9fztyICdn+h6ALfROYJoQ7hA7hxVV0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NZgauuA9; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e16519031so539724a34.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733950516; x=1734555316; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q6hO0WOY+hz9HGePeUohTIasiE4zWiY+iKplztZrAkg=;
        b=NZgauuA9AoXBeT/M8ShASIbUtOhho1EM5o2FHqjqKS3Srw4Teym9FIiVMxr2mpDMTk
         lZcjL3NV6MvarX62sWyJr64ZFTuS26MHzZZ6TXxOcytOGEyfj+jf4D/OCJcYQHS8yxy0
         6G+lRwBJN7GbyBCVtL4yeB350manERFWHaCTAVTkOFXQqgmp4fQ36nfCFt/NbGZ26uQT
         FFD+9fNLuKJV3ewVdpoIO/11Bzr1bmdpAdkXzww7GPeKZ8tZXkNAiqsbPLM6DV2M7PB6
         YlwyB9xmnuvK9Gz0+tShxjBrmgUhM4UUcv8vYOeqvG1FsmHxVlXWA3IOKaIZU4B4t7w0
         Emfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733950516; x=1734555316;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q6hO0WOY+hz9HGePeUohTIasiE4zWiY+iKplztZrAkg=;
        b=hWLJFAqQVl9DapL++gNb/z7BXIC+NB0q51KLg5WaUGukxmwwXKIPrsDVXT2WSFYL8/
         N+JPFmG7vA552G8qbQ4wrGbQc471tJ8Cf3wuuzvb+zOPuSi5wAYCKhbnGAZwxW9+VCW5
         3S1Jfh3URonk2CXDmjGKEUapb7yjY4XR0CJHbbu3CMC6m652qFBqqK19G9mgt3t+pIj/
         Qfkm1bZeuzhHCQbeAnMXGlZbFfOqVWaIg8dRkf0ykfmTHBebmyofXhJ12UV7H/6rxuDD
         DjA0GEURXmWrq0q4DRR5WrQe7zYQSRqIv+6wsvuKRoTu+A081AvMlqhFh9P98hAIZkUv
         WICg==
X-Forwarded-Encrypted: i=1; AJvYcCWkrBtFPL1MdHSMeMipHCaVFjkWlSLsf6l28qDtbZUUHTqhXSLk8T6q5orOTbMSdXXD97bgJPhKtWk5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7xE8iGr123EznQW9rfFL9zGzAVmqfNAveMZn/44OmCvkl4JA3
	HR4GIh0ukUG2MDEiCePmZKkCM3ufGfITBE4XfAAS21GubEn+OTuyWibZlfwoJuo=
X-Gm-Gg: ASbGncuNbld6qTctXBocDxIDYPQe8lYDGeI76os5q1sqBRkNX3OV9FSARGARJ2juc3L
	TMeewuoN5cpVOwaOFFVIxoZl+7NghK+ay896pGuoX5UpKYzUE4UdkLOhopWlqOwpoT0A+pUsO+K
	Q1UtyGnkZNzQ9t2yN4nywP06wGSsp1jHuBS4SsD68uk5G6Xf4tg5mGLfxIrk+y8DRDLVsiptk7Z
	PAQ0Z8DSzerAN+hXUnDYkunIwaXo18awLVNClETFAwDESAUahVB0r45cX2b0QKFHihwS+3hXkcc
	4UNe+b/YYg==
X-Google-Smtp-Source: AGHT+IHb1oORKLdRGyRTnUrtVj3EkyeE9CvWai9FRmcovMJCbgLiwZu4IVnlqFZDgdV6Bj5B1wELpg==
X-Received: by 2002:a05:6830:7009:b0:71e:30e:e022 with SMTP id 46e09a7af769-71e2a7d7df1mr372599a34.10.1733950515995;
        Wed, 11 Dec 2024 12:55:15 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71def651fb2sm1888288a34.27.2024.12.11.12.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 12:55:15 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Dec 2024 14:54:48 -0600
Subject: [PATCH v6 11/17] iio: adc: ad7944: add support for SPI offload
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-dlech-mainline-spi-engine-offload-2-v6-11-88ee574d5d03@baylibre.com>
References: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
In-Reply-To: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Add support for SPI offload to the ad7944 driver. This allows reading
data at the max sample rate of 2.5 MSPS.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes:
* More detailed comments on offload channels info struct. (I didn't
  put them inside the macro because the multiline comments don't play
  well with the line continuation "\".)

v5 changes:
* Remove dev_info() message.
* Implement sampling_frequency_available attribute.
* Limit max sample rate to chip-specific value.

v4 changes:
* Adapted to changes in other patches.
* Add new separate channel spec for when using SPI offload.
* Fixed some nitpicks.

v3 changes:
* Finished TODOs.
* Adapted to changes in other patches.

v2 changes:

In the previous version, there was a new separate driver for the PWM
trigger and DMA hardware buffer. This was deemed too complex so they
are moved into the ad7944 driver.

It has also been reworked to accommodate for the changes described in
the other patches.
---
 drivers/iio/adc/Kconfig  |   1 +
 drivers/iio/adc/ad7944.c | 291 ++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 276 insertions(+), 16 deletions(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index a3e8ac569ce4c6b6b30b48acb265d530aa98e89c..995b9cacbaa964d26424346120c139858f93cdcd 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -360,6 +360,7 @@ config AD7923
 config AD7944
 	tristate "Analog Devices AD7944 and similar ADCs driver"
 	depends on SPI
+	select SPI_OFFLOAD
 	select IIO_BUFFER
 	select IIO_TRIGGERED_BUFFER
 	help
diff --git a/drivers/iio/adc/ad7944.c b/drivers/iio/adc/ad7944.c
index 6d1202bd55a013b092ff803f2065fd128dfa9bdd..07984eb450e82fc06d67fa0a157e3ae4e7555678 100644
--- a/drivers/iio/adc/ad7944.c
+++ b/drivers/iio/adc/ad7944.c
@@ -16,11 +16,14 @@
 #include <linux/module.h>
 #include <linux/property.h>
 #include <linux/regulator/consumer.h>
+#include <linux/spi/offload/consumer.h>
 #include <linux/spi/spi.h>
 #include <linux/string_helpers.h>
+#include <linux/units.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
+#include <linux/iio/buffer-dmaengine.h>
 #include <linux/iio/trigger_consumer.h>
 #include <linux/iio/triggered_buffer.h>
 
@@ -54,6 +57,12 @@ struct ad7944_adc {
 	enum ad7944_spi_mode spi_mode;
 	struct spi_transfer xfers[3];
 	struct spi_message msg;
+	struct spi_transfer offload_xfers[2];
+	struct spi_message offload_msg;
+	struct spi_offload *offload;
+	struct spi_offload_trigger *offload_trigger;
+	unsigned long offload_trigger_hz;
+	int sample_freq_range[3];
 	void *chain_mode_buf;
 	/* Chip-specific timing specifications. */
 	const struct ad7944_timing_spec *timing_spec;
@@ -81,6 +90,8 @@ struct ad7944_adc {
 
 /* quite time before CNV rising edge */
 #define AD7944_T_QUIET_NS	20
+/* minimum CNV high time to trigger conversion */
+#define AD7944_T_CNVH_NS	10
 
 static const struct ad7944_timing_spec ad7944_timing_spec = {
 	.conv_ns = 420,
@@ -95,7 +106,9 @@ static const struct ad7944_timing_spec ad7986_timing_spec = {
 struct ad7944_chip_info {
 	const char *name;
 	const struct ad7944_timing_spec *timing_spec;
+	u32 max_sample_rate_hz;
 	const struct iio_chan_spec channels[2];
+	const struct iio_chan_spec offload_channels[1];
 };
 
 /* get number of bytes for SPI xfer */
@@ -105,13 +118,15 @@ struct ad7944_chip_info {
  * AD7944_DEFINE_CHIP_INFO - Define a chip info structure for a specific chip
  * @_name: The name of the chip
  * @_ts: The timing specification for the chip
+ * @_max: The maximum sample rate in Hz
  * @_bits: The number of bits in the conversion result
  * @_diff: Whether the chip is true differential or not
  */
-#define AD7944_DEFINE_CHIP_INFO(_name, _ts, _bits, _diff)		\
+#define AD7944_DEFINE_CHIP_INFO(_name, _ts, _max, _bits, _diff)		\
 static const struct ad7944_chip_info _name##_chip_info = {		\
 	.name = #_name,							\
 	.timing_spec = &_ts##_timing_spec,				\
+	.max_sample_rate_hz = _max,					\
 	.channels = {							\
 		{							\
 			.type = IIO_VOLTAGE,				\
@@ -129,13 +144,43 @@ static const struct ad7944_chip_info _name##_chip_info = {		\
 		},							\
 		IIO_CHAN_SOFT_TIMESTAMP(1),				\
 	},								\
+	.offload_channels = {						\
+		{							\
+			.type = IIO_VOLTAGE,				\
+			.indexed = 1,					\
+			.differential = _diff,				\
+			.channel = 0,					\
+			.channel2 = _diff ? 1 : 0,			\
+			.scan_index = 0,				\
+			.scan_type.sign = _diff ? 's' : 'u',		\
+			.scan_type.realbits = _bits,			\
+			.scan_type.storagebits = 32,			\
+			.scan_type.endianness = IIO_CPU,		\
+			.info_mask_separate = BIT(IIO_CHAN_INFO_RAW)	\
+					| BIT(IIO_CHAN_INFO_SCALE)	\
+					| BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
+			.info_mask_separate_available =			\
+				BIT(IIO_CHAN_INFO_SAMP_FREQ),		\
+		},							\
+	},								\
 }
 
+/*
+ * Notes on the offload channels:
+ * - There is no soft timestamp since everything is done in hardware.
+ * - There is a sampling frequency attribute added. This controls the SPI
+ *   offload trigger.
+ * - The storagebits value depends on the SPI offload provider. Currently there
+ *   is only one supported provider, namely the ADI PULSAR ADC HDL project,
+ *   which always uses 32-bit words for data values, even for <= 16-bit ADCs.
+ *   So the value is just hardcoded to 32 for now.
+ */
+
 /* pseudo-differential with ground sense */
-AD7944_DEFINE_CHIP_INFO(ad7944, ad7944, 14, 0);
-AD7944_DEFINE_CHIP_INFO(ad7985, ad7944, 16, 0);
+AD7944_DEFINE_CHIP_INFO(ad7944, ad7944, 2.5 * MEGA, 14, 0);
+AD7944_DEFINE_CHIP_INFO(ad7985, ad7944, 2.5 * MEGA, 16, 0);
 /* fully differential */
-AD7944_DEFINE_CHIP_INFO(ad7986, ad7986, 18, 1);
+AD7944_DEFINE_CHIP_INFO(ad7986, ad7986, 2 * MEGA, 18, 1);
 
 static int ad7944_3wire_cs_mode_init_msg(struct device *dev, struct ad7944_adc *adc,
 					 const struct iio_chan_spec *chan)
@@ -239,6 +284,48 @@ static int ad7944_chain_mode_init_msg(struct device *dev, struct ad7944_adc *adc
 	return devm_spi_optimize_message(dev, adc->spi, &adc->msg);
 }
 
+/*
+ * Unlike ad7944_3wire_cs_mode_init_msg(), this creates a message that reads
+ * during the conversion phase instead of the acquisition phase when reading
+ * a sample from the ADC. This is needed to be able to read at the maximum
+ * sample rate. It requires the SPI controller to have offload support and a
+ * high enough SCLK rate to read the sample during the conversion phase.
+ */
+static int ad7944_3wire_cs_mode_init_offload_msg(struct device *dev,
+						 struct ad7944_adc *adc,
+						 const struct iio_chan_spec *chan)
+{
+	struct spi_transfer *xfers = adc->offload_xfers;
+	int ret;
+
+	/*
+	 * CS is tied to CNV and we need a low to high transition to start the
+	 * conversion, so place CNV low for t_QUIET to prepare for this.
+	 */
+	xfers[0].delay.value = AD7944_T_QUIET_NS;
+	xfers[0].delay.unit = SPI_DELAY_UNIT_NSECS;
+	/* CNV has to be high for a minimum time to trigger conversion. */
+	xfers[0].cs_change = 1;
+	xfers[0].cs_change_delay.value = AD7944_T_CNVH_NS;
+	xfers[0].cs_change_delay.unit = SPI_DELAY_UNIT_NSECS;
+
+	/* Then we can read the previous sample during the conversion phase */
+	xfers[1].offload_flags = SPI_OFFLOAD_XFER_RX_STREAM;
+	xfers[1].len = AD7944_SPI_BYTES(chan->scan_type);
+	xfers[1].bits_per_word = chan->scan_type.realbits;
+
+	spi_message_init_with_transfers(&adc->offload_msg, xfers,
+					ARRAY_SIZE(adc->offload_xfers));
+
+	adc->offload_msg.offload = adc->offload;
+
+	ret = devm_spi_optimize_message(dev, adc->spi, &adc->offload_msg);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to prepare offload msg\n");
+
+	return 0;
+}
+
 /**
  * ad7944_convert_and_acquire - Perform a single conversion and acquisition
  * @adc: The ADC device structure
@@ -294,6 +381,23 @@ static int ad7944_single_conversion(struct ad7944_adc *adc,
 	return IIO_VAL_INT;
 }
 
+static int ad7944_read_avail(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     const int **vals, int *type, int *length,
+			     long mask)
+{
+	struct ad7944_adc *adc = iio_priv(indio_dev);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*vals = adc->sample_freq_range;
+		*type = IIO_VAL_INT;
+		return IIO_AVAIL_RANGE;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int ad7944_read_raw(struct iio_dev *indio_dev,
 			   const struct iio_chan_spec *chan,
 			   int *val, int *val2, long info)
@@ -326,13 +430,104 @@ static int ad7944_read_raw(struct iio_dev *indio_dev,
 			return -EINVAL;
 		}
 
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		*val = adc->offload_trigger_hz;
+		return IIO_VAL_INT;
+
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ad7944_set_sample_freq(struct ad7944_adc *adc, int val)
+{
+	struct spi_offload_trigger_config config = {
+		.type = SPI_OFFLOAD_TRIGGER_PERIODIC,
+		.periodic = {
+			.frequency_hz = val,
+		},
+	};
+	int ret;
+
+	ret = spi_offload_trigger_validate(adc->offload_trigger, &config);
+	if (ret)
+		return ret;
+
+	adc->offload_trigger_hz = config.periodic.frequency_hz;
+
+	return 0;
+}
+
+static int ad7944_write_raw(struct iio_dev *indio_dev,
+			    const struct iio_chan_spec *chan,
+			    int val, int val2, long info)
+{
+	struct ad7944_adc *adc = iio_priv(indio_dev);
+
+	switch (info) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		if (val < 1 || val > adc->sample_freq_range[2])
+			return -EINVAL;
+
+		return ad7944_set_sample_freq(adc, val);
 	default:
 		return -EINVAL;
 	}
 }
 
+static int ad7944_write_raw_get_fmt(struct iio_dev *indio_dev,
+				    const struct iio_chan_spec *chan,
+				    long mask)
+{
+	switch (mask) {
+	case IIO_CHAN_INFO_SAMP_FREQ:
+		return IIO_VAL_INT;
+	default:
+		return IIO_VAL_INT_PLUS_MICRO;
+	}
+}
+
 static const struct iio_info ad7944_iio_info = {
+	.read_avail = &ad7944_read_avail,
 	.read_raw = &ad7944_read_raw,
+	.write_raw = &ad7944_write_raw,
+	.write_raw_get_fmt = &ad7944_write_raw_get_fmt,
+};
+
+static int ad7944_offload_buffer_postenable(struct iio_dev *indio_dev)
+{
+	struct ad7944_adc *adc = iio_priv(indio_dev);
+	struct spi_offload_trigger_config config = {
+		.type = SPI_OFFLOAD_TRIGGER_PERIODIC,
+		.periodic = {
+			.frequency_hz = adc->offload_trigger_hz,
+		},
+	};
+	int ret;
+
+	gpiod_set_value_cansleep(adc->turbo, 1);
+
+	ret = spi_offload_trigger_enable(adc->offload, adc->offload_trigger,
+					 &config);
+	if (ret)
+		gpiod_set_value_cansleep(adc->turbo, 0);
+
+	return ret;
+}
+
+static int ad7944_offload_buffer_predisable(struct iio_dev *indio_dev)
+{
+	struct ad7944_adc *adc = iio_priv(indio_dev);
+
+	spi_offload_trigger_disable(adc->offload, adc->offload_trigger);
+	gpiod_set_value_cansleep(adc->turbo, 0);
+
+	return 0;
+}
+
+static const struct iio_buffer_setup_ops ad7944_offload_buffer_setup_ops = {
+	.postenable = &ad7944_offload_buffer_postenable,
+	.predisable = &ad7944_offload_buffer_predisable,
 };
 
 static irqreturn_t ad7944_trigger_handler(int irq, void *p)
@@ -446,6 +641,11 @@ static const char * const ad7944_power_supplies[] = {
 	"avdd",	"dvdd",	"bvdd", "vio"
 };
 
+static const struct spi_offload_config ad7944_offload_config = {
+	.capability_flags = SPI_OFFLOAD_CAP_TRIGGER |
+			    SPI_OFFLOAD_CAP_RX_STREAM_DMA,
+};
+
 static int ad7944_probe(struct spi_device *spi)
 {
 	const struct ad7944_chip_info *chip_info;
@@ -471,6 +671,10 @@ static int ad7944_probe(struct spi_device *spi)
 
 	adc->timing_spec = chip_info->timing_spec;
 
+	adc->sample_freq_range[0] = 1; /* min */
+	adc->sample_freq_range[1] = 1; /* step */
+	adc->sample_freq_range[2] = chip_info->max_sample_rate_hz; /* max */
+
 	ret = device_property_match_property_string(dev, "adi,spi-mode",
 						    ad7944_spi_modes,
 						    ARRAY_SIZE(ad7944_spi_modes));
@@ -590,20 +794,74 @@ static int ad7944_probe(struct spi_device *spi)
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->info = &ad7944_iio_info;
 
-	if (adc->spi_mode == AD7944_SPI_MODE_CHAIN) {
-		indio_dev->available_scan_masks = chain_scan_masks;
-		indio_dev->channels = chain_chan;
-		indio_dev->num_channels = n_chain_dev + 1;
+	adc->offload = devm_spi_offload_get(dev, spi, &ad7944_offload_config);
+	ret = PTR_ERR_OR_ZERO(adc->offload);
+	if (ret && ret != -ENODEV)
+		return dev_err_probe(dev, ret, "failed to get offload\n");
+
+	/* Fall back to low speed usage when no SPI offload available. */
+	if (ret == -ENODEV) {
+		if (adc->spi_mode == AD7944_SPI_MODE_CHAIN) {
+			indio_dev->available_scan_masks = chain_scan_masks;
+			indio_dev->channels = chain_chan;
+			indio_dev->num_channels = n_chain_dev + 1;
+		} else {
+			indio_dev->channels = chip_info->channels;
+			indio_dev->num_channels = ARRAY_SIZE(chip_info->channels);
+		}
+
+		ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
+						      iio_pollfunc_store_time,
+						      ad7944_trigger_handler,
+						      NULL);
+		if (ret)
+			return ret;
 	} else {
-		indio_dev->channels = chip_info->channels;
-		indio_dev->num_channels = ARRAY_SIZE(chip_info->channels);
-	}
+		struct dma_chan *rx_dma;
 
-	ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
-					      iio_pollfunc_store_time,
-					      ad7944_trigger_handler, NULL);
-	if (ret)
-		return ret;
+		if (adc->spi_mode != AD7944_SPI_MODE_SINGLE)
+			return dev_err_probe(dev, -EINVAL,
+				"offload only supported in single mode\n");
+
+		indio_dev->setup_ops = &ad7944_offload_buffer_setup_ops;
+		indio_dev->channels = chip_info->offload_channels;
+		indio_dev->num_channels = ARRAY_SIZE(chip_info->offload_channels);
+
+		adc->offload_trigger = devm_spi_offload_trigger_get(dev,
+			adc->offload, SPI_OFFLOAD_TRIGGER_PERIODIC);
+		if (IS_ERR(adc->offload_trigger))
+			return dev_err_probe(dev, PTR_ERR(adc->offload_trigger),
+					     "failed to get offload trigger\n");
+
+		ret = ad7944_set_sample_freq(adc, 2 * MEGA);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to init sample rate\n");
+
+		rx_dma = devm_spi_offload_rx_stream_request_dma_chan(dev,
+								     adc->offload);
+		if (IS_ERR(rx_dma))
+			return dev_err_probe(dev, PTR_ERR(rx_dma),
+					     "failed to get offload RX DMA\n");
+
+		/*
+		 * REVISIT: ideally, we would confirm that the offload RX DMA
+		 * buffer layout is the same as what is hard-coded in
+		 * offload_channels. Right now, the only supported offload
+		 * is the pulsar_adc project which always uses 32-bit word
+		 * size for data values, regardless of the SPI bits per word.
+		 */
+
+		ret = devm_iio_dmaengine_buffer_setup_with_handle(dev,
+			indio_dev, rx_dma, IIO_BUFFER_DIRECTION_IN);
+		if (ret)
+			return ret;
+
+		ret = ad7944_3wire_cs_mode_init_offload_msg(dev, adc,
+			&chip_info->offload_channels[0]);
+		if (ret)
+			return ret;
+	}
 
 	return devm_iio_device_register(dev, indio_dev);
 }
@@ -638,3 +896,4 @@ module_spi_driver(ad7944_driver);
 MODULE_AUTHOR("David Lechner <dlechner@baylibre.com>");
 MODULE_DESCRIPTION("Analog Devices AD7944 PulSAR ADC family driver");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_DMAENGINE_BUFFER");

-- 
2.43.0


