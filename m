Return-Path: <devicetree+bounces-99007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EACAA9684DC
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4A6F288CA7
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 10:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2395418660A;
	Mon,  2 Sep 2024 10:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="COUEJkvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BEC18593F
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 10:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725273426; cv=none; b=ixRCzhfaKcQnblbUar2k7JUUqtxcJHOv11mweWs7bNKHP0RIbpfg+X/NnzobtqTiBjKQ0xfLdSxW5iqCmOLdBryr3n7jTxHlnyX13PwXTkjQlY5aF2xDTHO1fZN2INCIfQG/Qk2BbMhNYkc9x8DNY0Wu+3RybZeyKtjvgo57ZZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725273426; c=relaxed/simple;
	bh=btxuTAxTeAZgB4tvvXLZFp9Dg4BseIOKa6AY2g/Ixo8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=slAjoUUcDz2Nk9tlhXJrXtXg0xXFmFDARO6MtHfzMABJ+BX0+fhMx6fHz810q4+EL+KRx7kB6XEDTtQ7tTHQZowDcpJtn0gP5g0QZj7dxOFWsP8DHGUy79M8mW54l8/5A8SKB5vWDErSRHcUXwhYDYsZnBigFB3FcxjSXHNI71o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=COUEJkvb; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-533488ffaebso4847653e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 03:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725273422; x=1725878222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mZzd833O0t7KStKqRf9EBVDiLjwq0SpyV5fk5sEtf8M=;
        b=COUEJkvbAHgNq8WvIoR57AwJh8YRkAs5oZsDoLivcAAPe00XDoBevLfQF36xK74fJ7
         6yhp23KJ735F08DvvofHtFPa426s9fbTSahEbi7dLNq+HpIAC3ncd8RitcLo5PCqonkH
         68axU7PvJOLEOzeLca2KXmozqqkGqG1RbYLnPhhJWL9PB1RAzjPQGlW+n2k0ocW/nNfh
         mFpm1bNatLY1BXVYJjI5Oo/sbe99PqJPbFmcHBPux/D0Trqmqpunz7gqrto3IJ/dYcx5
         cZ007VeOLZCAYHNZ1b8gd4G0jlToXl2Dr+kakbt2BWAHsZ4F7Bclx6D7SJDQjZBy9Gmr
         dZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725273422; x=1725878222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mZzd833O0t7KStKqRf9EBVDiLjwq0SpyV5fk5sEtf8M=;
        b=pALbdu1tFvJS3O3PFXOmwY+c7Es0KifinB7Uzi7y3s9beZ7RHUmPC5vo5NOqcdVHFi
         Z3pQzK7DVREWG/UIGfzGy+ZJBK9m8Z08lOs1Q9R8+1f9USjESGQthGkkZ5hpy4E7gypg
         orwH3yLAQqwXMV5Wbutf2B8OOq8Uml+dWjiu1CVqHWsGKKL+m2s21mHZvmrBWT+Bi/u1
         qHnGB1H2D00v0s3nHVC66m75WvPtH7fzXk+jnA3b5lBbkcmYM8wTVLoxxlTKpmoSydso
         UDOc8I5UvrbhjNdgkTGEOFn3A4WhDhyeIJI6LySohgmtbtOEgoRfgt1xNQKNYz/l5PKa
         xq2g==
X-Forwarded-Encrypted: i=1; AJvYcCUmz1BcnikEPq4xD8e1Zf0gxxoj8ly2/0KequmIasAcZnYHzxXkyevdJS8yeB87uT2CltuzN/+Iw5TT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+hwKjKtXGla32qrS2j/oLKL5lyPmpuCu4S8tqPbzos4ZRdYeZ
	JWiKujRBN+f2VIa6gl/cXzlftz/a+IPujfC7W/YDAlRi7RlgRo4FXSwso4VHSos=
X-Google-Smtp-Source: AGHT+IFCHq1Icpu9MblR1d0uJ6UxOi5cXVDdP0ogShCJeXvsF2WzkCaYU78T4WJqP7odmDbxGIdcPw==
X-Received: by 2002:a05:6512:3510:b0:535:5e76:a590 with SMTP id 2adb3069b0e04-5355e76b366mr70790e87.1.1725273421625;
        Mon, 02 Sep 2024 03:37:01 -0700 (PDT)
Received: from neptune.local ([2a02:2f0e:3004:6100:e124:ce40:67a4:fcf0])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891da22bsm540876766b.182.2024.09.02.03.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 03:37:01 -0700 (PDT)
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
Subject: [PATCH v2 5/8] iio: adc: ad7606: rework available attributes for SW channels
Date: Mon,  2 Sep 2024 13:36:28 +0300
Message-ID: <20240902103638.686039-6-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240902103638.686039-1-aardelean@baylibre.com>
References: <20240902103638.686039-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

For SW mode, the oversampling and scales attributes are always present.
So, they can be implemented via a 'read_avail' hook in iio_info.

For HW mode, it's a bit tricky, as these attributes get assigned based on
GPIO definitions.

So, for SW mode, we define a separate AD7606_SW_CHANNEL() macro, and use
that for the SW channels.
And 'ad7606_info_os_range_and_debug' can be renamed to
'ad7606_info_sw_mode' as it is only used for SW mode.

For the 'read_avail' hook, we'll need to allocate the SW scales, so that
they are just returned userspace without any extra processing.
The allocation will happen when then ad7606_state struct is allocated.
The oversampling available parameters don't need any extra processing; they
can just be passed back to userspace (as they are).

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 63 ++++++++++++++++++++++++++++++++++++----
 drivers/iio/adc/ad7606.h | 31 +++++++++++++++++---
 2 files changed, 85 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 2554a4a4a9c0..4c3fbb28f790 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -507,6 +507,37 @@ static int ad7606_buffer_predisable(struct iio_dev *indio_dev)
 	return 0;
 }
 
+static int ad7606_read_avail(struct iio_dev *indio_dev,
+			     struct iio_chan_spec const *chan,
+			     const int **vals, int *type, int *length,
+			     long info)
+{
+	struct ad7606_state *st = iio_priv(indio_dev);
+	struct ad7606_chan_scale *cs;
+	unsigned int ch = 0;
+
+	switch (info) {
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+		*vals = st->oversampling_avail;
+		*length = st->num_os_ratios;
+		*type = IIO_VAL_INT;
+
+		return IIO_AVAIL_LIST;
+
+	case IIO_CHAN_INFO_SCALE:
+		if (st->sw_mode_en)
+			ch = chan->address;
+
+		cs = &st->chan_scales[ch];
+		*vals = cs->scale_avail_show;
+		*length = cs->num_scales * 2;
+		*type = IIO_VAL_INT_PLUS_MICRO;
+
+		return IIO_AVAIL_LIST;
+	}
+	return -EINVAL;
+}
+
 static const struct iio_buffer_setup_ops ad7606_buffer_ops = {
 	.postenable = &ad7606_buffer_postenable,
 	.predisable = &ad7606_buffer_predisable,
@@ -524,11 +555,11 @@ static const struct iio_info ad7606_info_os_and_range = {
 	.validate_trigger = &ad7606_validate_trigger,
 };
 
-static const struct iio_info ad7606_info_os_range_and_debug = {
+static const struct iio_info ad7606_info_sw_mode = {
 	.read_raw = &ad7606_read_raw,
 	.write_raw = &ad7606_write_raw,
+	.read_avail = &ad7606_read_avail,
 	.debugfs_reg_access = &ad7606_reg_access,
-	.attrs = &ad7606_attribute_group_os_and_range,
 	.validate_trigger = &ad7606_validate_trigger,
 };
 
@@ -554,7 +585,7 @@ static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
 {
 	unsigned int num_channels = indio_dev->num_channels - 1;
 	struct ad7606_state *st = iio_priv(indio_dev);
-	int ch;
+	int ret, ch;
 
 	if (!st->bops->sw_mode_config)
 		return 0;
@@ -563,7 +594,7 @@ static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
 	if (!st->sw_mode_en)
 		return 0;
 
-	indio_dev->info = &ad7606_info_os_range_and_debug;
+	indio_dev->info = &ad7606_info_sw_mode;
 
 	/* Scale of 0.076293 is only available in sw mode */
 	/* After reset, in software mode, ±10 V is set by default */
@@ -575,7 +606,29 @@ static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
 		cs->range = 2;
 	}
 
-	return st->bops->sw_mode_config(indio_dev);
+	ret = st->bops->sw_mode_config(indio_dev);
+	if (ret)
+		return ret;
+
+	for (ch = 0; ch < num_channels; ch++) {
+		struct ad7606_chan_scale *cs = &st->chan_scales[ch];
+		int i;
+
+		cs = &st->chan_scales[ch];
+
+		if (cs->num_scales * 2 > AD760X_MAX_SCALE_SHOW) {
+			dev_err(st->dev, "Driver error: scale range too big");
+			return -ERANGE;
+		}
+
+		/* Generate a scale_avail list for showing to userspace */
+		for (i = 0; i < cs->num_scales; i++) {
+			cs->scale_avail_show[i * 2] = 0;
+			cs->scale_avail_show[i * 2 + 1] = cs->scale_avail[i];
+		}
+	}
+
+	return 0;
 }
 
 int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index afe6a4030e0e..1cc257374ba7 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -27,6 +27,29 @@
 		},						\
 }
 
+#define AD7606_SW_CHANNEL(num, bits) {				\
+		.type = IIO_VOLTAGE,				\
+		.indexed = 1,					\
+		.channel = num,					\
+		.address = num,					\
+		.info_mask_separate =				\
+			BIT(IIO_CHAN_INFO_RAW) | 		\
+			BIT(IIO_CHAN_INFO_SCALE),		\
+		.info_mask_separate_available =			\
+			BIT(IIO_CHAN_INFO_SCALE),		\
+		.info_mask_shared_by_all =			\
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+		.info_mask_shared_by_all_available =		\
+			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),	\
+		.scan_index = num,				\
+		.scan_type = {					\
+			.sign = 's',				\
+			.realbits = (bits),			\
+			.storagebits = (bits),			\
+			.endianness = IIO_CPU,			\
+		},						\
+}
+
 #define AD7605_CHANNEL(num)				\
 	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW),	\
 		BIT(IIO_CHAN_INFO_SCALE), 0, 16)
@@ -36,10 +59,6 @@
 		BIT(IIO_CHAN_INFO_SCALE),		\
 		BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), bits)
 
-#define AD7606_SW_CHANNEL(num, bits)	\
-	AD760X_CHANNEL(num, BIT(IIO_CHAN_INFO_RAW) | BIT(IIO_CHAN_INFO_SCALE),\
-		0, BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO), bits)
-
 #define AD7616_CHANNEL(num)	AD7606_SW_CHANNEL(num, 16)
 
 /**
@@ -65,11 +84,15 @@ struct ad7606_chip_info {
 /**
  * struct ad7606_chan_scale - channel scale configuration
  * @scale_avail		pointer to the array which stores the available scales
+ * @scale_avail_show	a duplicate of 'scale_avail' which is readily formatted
+ *			such that it can be read via the 'read_avail' hook
  * @num_scales		number of elements stored in the scale_avail array
  * @range		voltage range selection, selects which scale to apply
  */
 struct ad7606_chan_scale {
+#define AD760X_MAX_SCALE_SHOW		(AD760X_MAX_CHANNELS * 2)
 	const unsigned int		*scale_avail;
+	int				scale_avail_show[AD760X_MAX_SCALE_SHOW];
 	unsigned int			num_scales;
 	unsigned int			range;
 };
-- 
2.46.0


