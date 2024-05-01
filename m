Return-Path: <devicetree+bounces-64280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD008B8C54
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2479B23746
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FC0E130A6F;
	Wed,  1 May 2024 14:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PH+W5njQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05B113048D
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575362; cv=none; b=ayNsWWfFVK6FCEXTwaJPVbk8ml6iR0sIuluq6eRSJL5RRTOG9Ujx1tVtXnA+A2BQ0v5B7O2qoCYTMcwkcWCOs+WDEk9OnwnwsH0fbXCV76ELsb1xzXinjD+jTCdqPCDlbW1NNrQRK7cWIbMDKs4r0+6d5x5MdbqsHYTN0/pQqWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575362; c=relaxed/simple;
	bh=qpYpssS45nruTsiAVK4hIr/DfAzCuG8bb/CkuI//dIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eLXkGAVeUtC0qHZP3MzHZPIwFna0PjpG6sNQcjIwrUcOv7Qygylk6S5qerxmqdMdWGeZozvJpK/Zm5+7ucD8qt5pd+OQu2sAQZbPivoc/eMnVzoxDlgcYq14X5qMBYDwnz3VNQNdAXnGFsJ6sjz03Lpm7VzZVIp9VDSsC4dD6/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PH+W5njQ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41ba1ba55e8so38483955e9.1
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714575358; x=1715180158; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IikJd/LplXd0GAQdyekbojR8JRFhxUeGGR+Ui18yUXw=;
        b=PH+W5njQ+qduIHHTNik2dCCqKLDxCkqQYhfvagpK+2baB2vmBR85h3ZjuAg1N4cawV
         83h+y3Y/48x1ShyzWC4qin/25cBked63oKulrHDmcLu/Qy/eADlZCiB+n6qnlCDIb+Zn
         I5TIdjIBv4tTKc5YdiF3ToVS8QToHz/4YZh5deJ2iBzWOuvuXxsCsHzh34cQDjqa0ptZ
         s25FIxXkBnMx2wFn111MMIRxBOfRvvmEdZEAyXVa0uY5LDx9ycq5NWLEmxz8uvfh1kcx
         M34bRrCejopZdNb2wVLCwPYJ/7UZvYj09Q2vbyccLdQRQybnTUa2bdVTdZowfv1Oad8y
         KGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575358; x=1715180158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IikJd/LplXd0GAQdyekbojR8JRFhxUeGGR+Ui18yUXw=;
        b=ati1SmVtF5uHIQhM3W2b1wojX2a9/hx9HH0iRpmOqBvJzwHq1dO4A7tjCWzCJtu6Pr
         HZzIhrvYhDti1MPEgw+Z+SqsUCCWe7aJ0EgLTBLPbJuwLuHA69GwZK4NCMzUXDe+gmdw
         S9qCCNJNDpqfPawf51ptTCSbuYQdsNNdMGK68MxNF8LTf9pf5LyIbMBGenLJmGjodsCB
         B1ZYht1yU6+lrN7Cr/X7frpum2ceAAgICtSQf6EGxhPNCfLKhOtsaGTaGf4Jq///90d9
         ViyTudzGvjIIgcKMDO0Irt00mCyTW4/jLlazt1CQ2Gqo2PLnBTZbQt0nHg/YV23NLiUp
         v5zA==
X-Forwarded-Encrypted: i=1; AJvYcCWk5u3KFuzmhNGjqLKVvTDP1wHW6nSpHKydFt3ZxOA+bfe3XzpUEDZJ3t2sdmw8kFTMECuRhWPmbNomV/WJ2//qXjIIwrKtrBl6cQ==
X-Gm-Message-State: AOJu0YxMVlTpOmvXIpMkK1hhcDmqXqMsIxtXQNX69Z5OTBlv9aJMn/y0
	Yjt12bmOC6P4wUoG9PG7yvPdVycfELyBVLt2ZBFUm0N2r30PouL30+2ok6il6B8=
X-Google-Smtp-Source: AGHT+IF4RI3DWH3O6s2iqU3cnNMEynbpVDI4WzhAtH0r6Hgxn6Ww74V8vUuYJ4goPrb2+hzQO9Uhhw==
X-Received: by 2002:a05:600c:4751:b0:41b:4443:9e10 with SMTP id w17-20020a05600c475100b0041b44439e10mr1954285wmo.29.1714575358123;
        Wed, 01 May 2024 07:55:58 -0700 (PDT)
Received: from [192.168.1.61] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b00418a386c17bsm2422999wms.12.2024.05.01.07.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:55:57 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 01 May 2024 16:55:41 +0200
Subject: [PATCH RFC v6 08/10] iio: adc: ad7380: add oversampling support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-adding-new-ad738x-driver-v6-8-3c0741154728@baylibre.com>
References: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
In-Reply-To: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
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

ad7380x(-4) parts are able to do oversampling to increase accuracy.
They support 2 average modes: normal average and rolling overage.
This commits focus on enabling normal average oversampling, which is the
default one.

Normal averaging involves taking a number of samples, adding them together,
and dividing the result by the number of samples taken.
This result is then output from the device. The sample data is cleared when
the process completes. Because we need more samples to output a value,
the data output rate decrease with the oversampling ratio.

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/iio/adc/ad7380.c | 115 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 114 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index 020959759170..1e3869f5e48c 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -88,7 +88,10 @@ struct ad7380_chip_info {
 	.type = IIO_VOLTAGE,					\
 	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |		\
 		((diff) ? 0 : BIT(IIO_CHAN_INFO_OFFSET)),	\
-	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),	\
+	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE) |	\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),		\
+	.info_mask_shared_by_type_available =			\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),		\
 	.indexed = 1,						\
 	.differential = (diff),					\
 	.channel = (diff) ? (2 * (index)) : (index),		\
@@ -156,6 +159,16 @@ static const struct ad7380_timing_specs ad7380_4_timing = {
 	.t_csh_ns = 20,
 };
 
+/*
+ * Available oversampling ratios. The indices correspond
+ * with the bit value expected by the chip.
+ * The available ratios depend on the averaging mode,
+ * only normal averaging is supported for now
+ */
+static const int ad7380_normal_average_oversampling_ratios[] = {
+	1, 2, 4, 8, 16, 32,
+};
+
 static const struct ad7380_chip_info ad7380_chip_info = {
 	.name = "ad7380",
 	.channels = ad7380_channels,
@@ -231,6 +244,7 @@ static const struct ad7380_chip_info ad7384_4_chip_info = {
 struct ad7380_state {
 	const struct ad7380_chip_info *chip_info;
 	struct spi_device *spi;
+	unsigned int oversampling_ratio;
 	struct regmap *regmap;
 	unsigned int vref_mv;
 	unsigned int vcm_mv[MAX_NUM_CHANNELS];
@@ -386,6 +400,12 @@ static int ad7380_read_direct(struct ad7380_state *st,
 	};
 	int ret;
 
+	/*
+	 * In normal average oversampling we need to wait for multiple conversions to be done
+	 */
+	if (st->oversampling_ratio > 1)
+		xfers[0].delay.value = T_CONVERT_NS + 500 * st->oversampling_ratio;
+
 	ret = spi_sync_transfer(st->spi, xfers, ARRAY_SIZE(xfers));
 	if (ret < 0)
 		return ret;
@@ -428,6 +448,91 @@ static int ad7380_read_raw(struct iio_dev *indio_dev,
 			/ st->vref_mv;
 
 		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*val = st->oversampling_ratio;
+
+		return IIO_VAL_INT;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ad7380_read_avail(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     const int **vals, int *type, int *length,
+			     long mask)
+{
+	switch (mask) {
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*vals = ad7380_normal_average_oversampling_ratios;
+		*length = ARRAY_SIZE(ad7380_normal_average_oversampling_ratios);
+		*type = IIO_VAL_INT;
+
+		return IIO_AVAIL_LIST;
+	default:
+		return -EINVAL;
+	}
+}
+
+/**
+ * check_osr - Check the oversampling ratio
+ * @available_ratio: available ratios's array
+ * @size: size of the available_ratio array
+ * ratio: ratio to check
+ *
+ * Check if ratio is present in @available_ratio. Check for exact match.
+ * @available_ratio is an array of the available ratios (depending on the oversampling mode).
+ * The indices must correspond with the bit value expected by the chip.
+ */
+static inline int check_osr(const int *available_ratio, int size, int ratio)
+{
+	int i;
+
+	for (i = 0; i < size; i++) {
+		if (ratio == available_ratio[i])
+			return i;
+	}
+
+	return -EINVAL;
+}
+
+static int ad7380_write_raw(struct iio_dev *indio_dev,
+			    struct iio_chan_spec const *chan, int val,
+			    int val2, long mask)
+{
+	struct ad7380_state *st = iio_priv(indio_dev);
+	int ret, osr;
+
+	switch (mask) {
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		osr = check_osr(ad7380_normal_average_oversampling_ratios,
+				ARRAY_SIZE(ad7380_normal_average_oversampling_ratios),
+				val);
+
+		if (osr < 0)
+			return osr;
+
+		iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
+			ret = regmap_update_bits(st->regmap, AD7380_REG_ADDR_CONFIG1,
+						 AD7380_CONFIG1_OSR,
+						 FIELD_PREP(AD7380_CONFIG1_OSR, osr));
+
+			if (ret)
+				return ret;
+
+			st->oversampling_ratio = val;
+
+			/*
+			 * Perform a soft reset.
+			 * This will flush the oversampling block and FIFO but will
+			 * maintain the content of the configurable registers.
+			 */
+			ret = regmap_update_bits(st->regmap, AD7380_REG_ADDR_CONFIG2,
+						 AD7380_CONFIG2_RESET,
+						 FIELD_PREP(AD7380_CONFIG2_RESET,
+							    AD7380_CONFIG2_RESET_SOFT));
+		}
+		return 0;
 	default:
 		return -EINVAL;
 	}
@@ -435,6 +540,8 @@ static int ad7380_read_raw(struct iio_dev *indio_dev,
 
 static const struct iio_info ad7380_info = {
 	.read_raw = &ad7380_read_raw,
+	.read_avail = &ad7380_read_avail,
+	.write_raw = &ad7380_write_raw,
 	.debugfs_reg_access = &ad7380_debugfs_reg_access,
 };
 
@@ -458,6 +565,12 @@ static int ad7380_init(struct ad7380_state *st, struct regulator *vref)
 	if (ret < 0)
 		return ret;
 
+	/* Disable oversampling by default.
+	 * This is the default value after reset,
+	 * so just initialize internal data
+	 */
+	st->oversampling_ratio = 1;
+
 	/* SPI 1-wire mode */
 	return regmap_update_bits(st->regmap, AD7380_REG_ADDR_CONFIG2,
 				  AD7380_CONFIG2_SDO,

-- 
2.44.0


