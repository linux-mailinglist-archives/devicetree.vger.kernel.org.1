Return-Path: <devicetree+bounces-146689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6068FA35D88
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 13:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECF203AA0F5
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D4A2641F2;
	Fri, 14 Feb 2025 12:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="e7AcmVJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7EA263F2E
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 12:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739535801; cv=none; b=SBO8xz8Yd5V6bUir/PGHMPhsq0wTlUKQZTSFWeXwr9B40+S4Yt+f8CmN4GLl/jK5t282hawpB9WFYC3p7dQOgG7jSLQcDI8HisHSL70nccb1FiVL6LIW6pqx5zYMAE7vcIPqYIUh6mwtG6iGkTYxHLQHMo9AFmTVUPZFWkwi8oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739535801; c=relaxed/simple;
	bh=p8Wa7z/Q/7dSNDxemWU5T+iHPTUSb8GpjjzP82LumuI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CC2t4jD5LLyZkqcdVaxSHPp6b7xaCc2mp6cPyLGpnL/PKn+qAw3Zw7awtS4Rcxutj8p6j8pPJ/rMwv/eJQM/R1uHVN6737MIaaGXd92cVfSXd28q3c8bYHRmc5qvfbhdRsUegqmmF7pI/BcnfbUUTtUSmVC+NpPCQ+XIRNmcplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=e7AcmVJ/; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso12522565e9.1
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 04:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739535797; x=1740140597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HlYXGEnZSyAGc7MM6POcCvycJIpFlDa3P8VoTqsifSY=;
        b=e7AcmVJ/DLOkpZqSI3LYHnJduAwNz8giZnK4ywr2aELhVnxlpe45OkjX0A8Sdt/zxX
         hgg+zRBSO0wMiAhztWl6VQpnTyuC3jrQpTOE2ZxEdxFe+G94iRkk/mhsbOf8X7h62WLQ
         qo+NRL3ERONfEhuP7fx4glAIAJ1Nldq9QrA4Bwotxr4syJtzMy4zEs8Lvh3+76E0nSDU
         Yyv9JF6wFHcyEYElscBF/4w+nUajPoNLveehvIAeiW1UBAI7G5YlKNzU6MclYg0ibF7+
         ydlzSyYYYRa+Q10LTdZQ6aLNw4GxAay1G2EnVa4pmnTzmy1qgm8gPsgjjzNG/2Jr5TZ4
         wLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739535797; x=1740140597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlYXGEnZSyAGc7MM6POcCvycJIpFlDa3P8VoTqsifSY=;
        b=rmRkfIFBqIRJ+z6Os+dsXiR+gDQc4sepJE+2Exh2G4FlUHT3WO0SwJkIR+F1lJY9Z2
         a058y/O/A8XtfjLgubpXDyVfk61Of9MHpKwfDreJCTE20dNzoeQXMp0+pDgOQmK9twfB
         qVIm8It9Pr6RR9YcA2ODKq5HZepj6UaSesqg+ZGCC1Sk2qagGCZL4X3K1iocuIAwGWW6
         SBy7zuHSxNqnk087ar1OX/i9G/G/wEJfp5m2cRaR85GzPp2OyMY9LykXqvl7hc0/1iLz
         z0oGcV5pVB3XkIG6cW+UyJ0kO2pbWSQUJ2xbWrzcxayo81N1Erz8ufORk5sJh33ds7yb
         t2eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXchswtEJLEkEo9BT/bo/tom7ZAoVW7IPYnmNNYztqWPVk7ZEkVccvllfxUBnaE/XBC7vgYYp5YbpC3@vger.kernel.org
X-Gm-Message-State: AOJu0YzyNT70snULwcbTXszeVf4u0Hf4g3uj4GRuq7DUKrghlPn6jibe
	QBTNfZE/HjEDP6kgKH866WGoQXu+KnBomUVpMsSOOxUbMi98YuM8hggMSO1qzS8=
X-Gm-Gg: ASbGnctOwPLwrIaHMSUQKTKn8113/Q8bslPFBHxsKaB23b/NxG5rZOSeXF87brJGqwf
	P3EDLSbPd66zNqcNzeXA3Kd5ZFYXzAFS9/P5IJFCVyAhAdfvLBg0bTYJkLfOygoXBJiCCx/oSdj
	L+VYEFchTmSqEkmItNvWB7ONObcEGqeKrDTiR5ozpPScM2mDcZWYWN1JFG7uM40/8XNYq6dG9hp
	RIV4y8QnACr4zvy5sh5znrLo9mORpoOKloG5/BxUrx05GQSn6l7HFuxQQpsLySwJO2NC/Gdvm+n
	ae5XBfXKyLWPysaj5jgAImv1k0L0t/R9GyjjzmjYIVHw/RMhofkqic34ciTwbeadCEthq/1L
X-Google-Smtp-Source: AGHT+IFoC01qxJzU78vr1oDwa5zbdgFcBCFHYW7HDipNsAWGs43U42rSRQJgmmX59I2PytOJU2Lv2w==
X-Received: by 2002:a5d:5989:0:b0:38d:e15e:17e9 with SMTP id ffacd0b85a97d-38dea2d5fefmr14841438f8f.35.1739535796634;
        Fri, 14 Feb 2025 04:23:16 -0800 (PST)
Received: from [127.0.0.1] (amontpellier-556-1-148-206.w109-210.abo.wanadoo.fr. [109.210.4.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f7b68sm4424654f8f.85.2025.02.14.04.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 04:23:16 -0800 (PST)
From: Esteban Blanc <eblanc@baylibre.com>
Date: Fri, 14 Feb 2025 13:22:33 +0100
Subject: [PATCH v4 3/6] iio: adc: ad4030: add averaging support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250214-eblanc-ad4630_v1-v4-3-135dd66cab6a@baylibre.com>
References: <20250214-eblanc-ad4630_v1-v4-0-135dd66cab6a@baylibre.com>
In-Reply-To: <20250214-eblanc-ad4630_v1-v4-0-135dd66cab6a@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Esteban Blanc <eblanc@baylibre.com>
X-Mailer: b4 0.14.2

This add support for the averaging mode of AD4030 using oversampling IIO
attribute

Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
 drivers/iio/adc/ad4030.c | 136 +++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 119 insertions(+), 17 deletions(-)

diff --git a/drivers/iio/adc/ad4030.c b/drivers/iio/adc/ad4030.c
index 8188d44bdd664aa74a7adcaa1f836e79a54a6050..ed31a3d1d13b831f46818cb72353e11b1689407d 100644
--- a/drivers/iio/adc/ad4030.c
+++ b/drivers/iio/adc/ad4030.c
@@ -112,6 +112,11 @@ enum ad4030_out_mode {
 	AD4030_OUT_DATA_MD_32_PATTERN,
 };
 
+enum {
+	AD4030_SCAN_TYPE_NORMAL,
+	AD4030_SCAN_TYPE_AVG,
+};
+
 struct ad4030_chip_info {
 	const char *name;
 	const unsigned long *available_masks;
@@ -127,10 +132,12 @@ struct ad4030_state {
 	struct spi_device *spi;
 	struct regmap *regmap;
 	const struct ad4030_chip_info *chip;
+	const struct iio_scan_type *current_scan_type;
 	struct gpio_desc *cnv_gpio;
 	int vref_uv;
 	int vio_uv;
 	int offset_avail[3];
+	unsigned int avg_log2;
 	enum ad4030_out_mode mode;
 
 	/*
@@ -184,7 +191,11 @@ struct ad4030_state {
  * - voltage0-voltage1
  * - voltage2-voltage3
  */
-#define AD4030_CHAN_DIFF(_idx, _storage, _real, _shift) {		\
+#define AD4030_CHAN_DIFF(_idx, _scan_type) {				\
+	.info_mask_shared_by_all =					\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),			\
+	.info_mask_shared_by_all_available =				\
+		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),			\
 	.info_mask_separate = BIT(IIO_CHAN_INFO_SCALE) |		\
 		BIT(IIO_CHAN_INFO_CALIBSCALE) |				\
 		BIT(IIO_CHAN_INFO_CALIBBIAS) |				\
@@ -198,15 +209,17 @@ struct ad4030_state {
 	.channel2 = (_idx) * 2 + 1,					\
 	.scan_index = (_idx),						\
 	.differential = true,						\
-	.scan_type = {							\
-		.sign = 's',						\
-		.storagebits = _storage,				\
-		.realbits = _real,					\
-		.shift = _shift,					\
-		.endianness = IIO_BE,					\
-	},								\
+	.has_ext_scan_type = 1,						\
+	.ext_scan_type = _scan_type,					\
+	.num_ext_scan_type = ARRAY_SIZE(_scan_type),			\
 }
 
+static const int ad4030_average_modes[] = {
+	1, 2, 4, 8, 16, 32, 64, 128,
+	256, 512, 1024, 2048, 4096, 8192, 16384, 32768,
+	65536,
+};
+
 static int ad4030_enter_config_mode(struct ad4030_state *st)
 {
 	st->tx_data[0] = AD4030_REG_ACCESS;
@@ -356,10 +369,13 @@ static int ad4030_get_chan_scale(struct iio_dev *indio_dev,
 				 int *val2)
 {
 	struct ad4030_state *st = iio_priv(indio_dev);
+	struct iio_scan_type *scan_type;
 
 	if (chan->differential) {
+		scan_type = iio_get_current_scan_type(indio_dev,
+						      st->chip->channels);
 		*val = (st->vref_uv * 2) / MILLI;
-		*val2 = chan->scan_type.realbits;
+		*val2 = scan_type->realbits;
 		return IIO_VAL_FRACTIONAL_LOG2;
 	}
 
@@ -474,6 +490,27 @@ static int ad4030_set_chan_calibbias(struct iio_dev *indio_dev,
 				 st->tx_data, AD4030_REG_OFFSET_BYTES_NB);
 }
 
+static int ad4030_set_avg_frame_len(struct iio_dev *dev, int avg_val)
+{
+	struct ad4030_state *st = iio_priv(dev);
+	unsigned int avg_log2 = ilog2(avg_val);
+	unsigned int last_avg_idx = ARRAY_SIZE(ad4030_average_modes) - 1;
+	int ret;
+
+	if (avg_val < 0 || avg_val > ad4030_average_modes[last_avg_idx])
+		return -EINVAL;
+
+	ret = regmap_write(st->regmap, AD4030_REG_AVG,
+			   AD4030_REG_AVG_MASK_AVG_SYNC |
+			   FIELD_PREP(AD4030_REG_AVG_MASK_AVG_VAL, avg_log2));
+	if (ret)
+		return ret;
+
+	st->avg_log2 = avg_log2;
+
+	return 0;
+}
+
 static bool ad4030_is_common_byte_asked(struct ad4030_state *st,
 					unsigned int mask)
 {
@@ -484,11 +521,18 @@ static int ad4030_set_mode(struct iio_dev *indio_dev, unsigned long mask)
 {
 	struct ad4030_state *st = iio_priv(indio_dev);
 
-	if (ad4030_is_common_byte_asked(st, mask))
+	if (st->avg_log2 > 0)
+		st->mode = AD4030_OUT_DATA_MD_30_AVERAGED_DIFF;
+	else if (ad4030_is_common_byte_asked(st, mask))
 		st->mode = AD4030_OUT_DATA_MD_24_DIFF_8_COM;
 	else
 		st->mode = AD4030_OUT_DATA_MD_DIFF;
 
+	st->current_scan_type = iio_get_current_scan_type(indio_dev,
+							  st->chip->channels);
+	if (IS_ERR(st->current_scan_type))
+		return PTR_ERR(st->current_scan_type);
+
 	return regmap_update_bits(st->regmap, AD4030_REG_MODES,
 				  AD4030_REG_MODES_MASK_OUT_DATA_MODE,
 				  st->mode);
@@ -497,9 +541,11 @@ static int ad4030_set_mode(struct iio_dev *indio_dev, unsigned long mask)
 static int ad4030_conversion(struct iio_dev *indio_dev)
 {
 	struct ad4030_state *st = iio_priv(indio_dev);
-	const struct iio_scan_type scan_type = indio_dev->channels->scan_type;
-	unsigned char diff_realbytes = BITS_TO_BYTES(scan_type.realbits);
+	unsigned char diff_realbytes =
+		BITS_TO_BYTES(st->current_scan_type->realbits);
 	unsigned int bytes_to_read;
+	unsigned long cnv_nb = BIT(st->avg_log2);
+	unsigned int i;
 	int ret;
 
 	/* Number of bytes for one differential channel */
@@ -510,10 +556,12 @@ static int ad4030_conversion(struct iio_dev *indio_dev)
 	/* Mulitiply by the number of hardware channels */
 	bytes_to_read *= st->chip->num_voltage_inputs;
 
-	gpiod_set_value_cansleep(st->cnv_gpio, 1);
-	ndelay(AD4030_TCNVH_NS);
-	gpiod_set_value_cansleep(st->cnv_gpio, 0);
-	ndelay(st->chip->tcyc_ns);
+	for (i = 0; i < cnv_nb; i++) {
+		gpiod_set_value_cansleep(st->cnv_gpio, 1);
+		ndelay(AD4030_TCNVH_NS);
+		gpiod_set_value_cansleep(st->cnv_gpio, 0);
+		ndelay(st->chip->tcyc_ns);
+	}
 
 	ret = spi_read(st->spi, st->rx_data.raw, bytes_to_read);
 	if (ret)
@@ -593,6 +641,12 @@ static int ad4030_read_avail(struct iio_dev *indio_dev,
 		*type = IIO_VAL_INT_PLUS_NANO;
 		return IIO_AVAIL_RANGE;
 
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*vals = ad4030_average_modes;
+		*type = IIO_VAL_INT;
+		*length = ARRAY_SIZE(ad4030_average_modes);
+		return IIO_AVAIL_LIST;
+
 	default:
 		return -EINVAL;
 	}
@@ -602,6 +656,8 @@ static int ad4030_read_raw_dispatch(struct iio_dev *indio_dev,
 				    struct iio_chan_spec const *chan, int *val,
 				    int *val2, long info)
 {
+	struct ad4030_state *st = iio_priv(indio_dev);
+
 	switch (info) {
 	case IIO_CHAN_INFO_RAW:
 		return ad4030_single_conversion(indio_dev, chan, val);
@@ -612,6 +668,10 @@ static int ad4030_read_raw_dispatch(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_CALIBBIAS:
 		return ad4030_get_chan_calibbias(indio_dev, chan, val);
 
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*val = BIT(st->avg_log2);
+		return IIO_VAL_INT;
+
 	default:
 		return -EINVAL;
 	}
@@ -650,6 +710,9 @@ static int ad4030_write_raw_dispatch(struct iio_dev *indio_dev,
 			return -EINVAL;
 		return ad4030_set_chan_calibbias(indio_dev, chan, val);
 
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		return ad4030_set_avg_frame_len(indio_dev, val);
+
 	default:
 		return -EINVAL;
 	}
@@ -701,12 +764,21 @@ static int ad4030_read_label(struct iio_dev *indio_dev,
 	return sprintf(label, "common-mode%lu\n", chan->address);
 }
 
+static int ad4030_get_current_scan_type(const struct iio_dev *indio_dev,
+					const struct iio_chan_spec *chan)
+{
+	struct ad4030_state *st = iio_priv(indio_dev);
+
+	return st->avg_log2 ? AD4030_SCAN_TYPE_AVG : AD4030_SCAN_TYPE_NORMAL;
+}
+
 static const struct iio_info ad4030_iio_info = {
 	.read_avail = ad4030_read_avail,
 	.read_raw = ad4030_read_raw,
 	.write_raw = ad4030_write_raw,
 	.debugfs_reg_access = ad4030_reg_access,
 	.read_label = ad4030_read_label,
+	.get_current_scan_type = ad4030_get_current_scan_type,
 };
 
 static int ad4030_buffer_preenable(struct iio_dev *indio_dev)
@@ -714,8 +786,21 @@ static int ad4030_buffer_preenable(struct iio_dev *indio_dev)
 	return ad4030_set_mode(indio_dev, *indio_dev->active_scan_mask);
 }
 
+static bool ad4030_validate_scan_mask(struct iio_dev *indio_dev,
+				      const unsigned long *scan_mask)
+{
+	struct ad4030_state *st = iio_priv(indio_dev);
+
+	/* Asking for both common channels and averaging */
+	if (st->avg_log2 && ad4030_is_common_byte_asked(st, *scan_mask))
+		return false;
+
+	return true;
+}
+
 static const struct iio_buffer_setup_ops ad4030_buffer_setup_ops = {
 	.preenable = ad4030_buffer_preenable,
+	.validate_scan_mask = ad4030_validate_scan_mask,
 };
 
 static int ad4030_regulators_get(struct ad4030_state *st)
@@ -881,11 +966,28 @@ static const unsigned long ad4030_channel_masks[] = {
 	0,
 };
 
+static const struct iio_scan_type ad4030_24_scan_types[] = {
+	[AD4030_SCAN_TYPE_NORMAL] = {
+		.sign = 's',
+		.storagebits = 32,
+		.realbits = 24,
+		.shift = 8,
+		.endianness = IIO_BE,
+	},
+	[AD4030_SCAN_TYPE_AVG] = {
+		.sign = 's',
+		.storagebits = 32,
+		.realbits = 30,
+		.shift = 2,
+		.endianness = IIO_BE,
+	},
+};
+
 static const struct ad4030_chip_info ad4030_24_chip_info = {
 	.name = "ad4030-24",
 	.available_masks = ad4030_channel_masks,
 	.channels = {
-		AD4030_CHAN_DIFF(0, 32, 24, 8),
+		AD4030_CHAN_DIFF(0, ad4030_24_scan_types),
 		AD4030_CHAN_CMO(1, 0),
 		IIO_CHAN_SOFT_TIMESTAMP(2),
 	},

-- 
2.47.2


