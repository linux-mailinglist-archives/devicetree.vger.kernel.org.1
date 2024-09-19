Return-Path: <devicetree+bounces-103918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A1097C9B7
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 15:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B7391C203DB
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 13:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE9E1A073A;
	Thu, 19 Sep 2024 13:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YOavxOSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0A81A0711
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 13:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726751108; cv=none; b=NncKUrO/JU/DhtVyR0a61aCppti1cirLi7/0GTpugtEBjMR7AucCuJ3gvpuqjVidUkHHIjjkKPGRx1UiNk7U6YNoMUeDAZFVhXY+SLfJ7bPRzOd/g4BjFYppYomJxpq2+LKH7Z/tp17UPBWtqKGDeO5vmjXo9lNLegAqZlHxNs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726751108; c=relaxed/simple;
	bh=CiOMCexFCZSEd7owZvk3bwFRUxrfGS/QQ0aD+UzetPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=THwY8SyZXsg0NXoNVA9+LJ5dAHiRoOetMFhvRbZg0Z4iAHvbWMAIRHCltUAruFIZNQFjsmSboaBEjiwlfjZfQpOnMKsY6VFJGdktO6jy0h2rqK2g03HYMPLMcXnm5BYAhu1kWxlRbgqRx/Ri5pnY30iQASGZBSi+I8UN0P0/qIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YOavxOSd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c42e7adbe0so989380a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 06:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726751105; x=1727355905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yzXjJttaQou+NiC+dCEGRBo2GWgoI4V/6wH3BP5H0TY=;
        b=YOavxOSdmb2FK7d7NyVgDGwW1DcnHMQW+RxuptpWWPYF7YVFdxK4KFi4xZY+Nb44Lc
         zcNvPVi1DOnfWlIns/8GElKSDUyL7kNAF8gyQgOhVQn/0JgfA03GKDMg1Ey/YOTnh3sh
         CO+82i7rjbgn/j2R82MLDntwE8X03Np0ysRNJrSCpfaWZXiv6/R1rYK7pXx1duocnY20
         HuspUKV8hEIc7V4aM7vRz0AYgUJ0I6e+S7tvp2noLcZy+qFbd31TGg7NJ5L0dq9goeLI
         1u3e6sB0S6bGe3SlfynVvMpnvzSpYGlphhRUo6dZBSYlAgT7ywFfVI7q2f4kl4hEEkoJ
         okag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726751105; x=1727355905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yzXjJttaQou+NiC+dCEGRBo2GWgoI4V/6wH3BP5H0TY=;
        b=C+DHZLkzdQq8CCxiKNYiY/2HBlljPoxnWQoKDOG8uNBVOUTk3w5EiGy/uHrRSmiamh
         OPwjF1W/WlpIqW7b2uNab9Jj66yiIHFSOlIcck9ekjzGt0MuWoxTvg3oSHMIhTXYvsze
         GVCFEGg8j9M9m1fToliAMqoZTYdrRYu04L//iPKREiuN8ANJrjcYLuRU1rmmQPMf0mZX
         KCOBgMIn2EfDcsM2/Tgg8UbOFNZZlxhr+A7EV+iVIG54xF1Upq3RWyeK+bVmXR13hVwP
         hv9yfwK26HrL6D7BjRVPNB0ZxWrAAQlbp1bVzI89LkeGYx+U8gOCa+Tz0A9hvGkJjW5e
         +mRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVG0hg+IVuOGnZ7lvjcLxWoRqjj4OqnjKtIdiEr6n7XIoEFSyj+AMI1WZtyh1U8EkfeKStE63N/fJN4@vger.kernel.org
X-Gm-Message-State: AOJu0YzhhGvCO1a8f/vj+5ceLty5KtSOxJ0yFV6y0h0eGRhyoxm5IKb3
	hKMafsrktvHEjK2oRdfKxJuwcl6xW0s3NjhOZx9G6sqYxw8hNW6IZPVo8AFVG5c=
X-Google-Smtp-Source: AGHT+IEOHJWbr4sYmBS3OLvdYCOBsnXHukwMDvko9GGwxhx1ScYJzU9mWVIb+ZQ08hwSi0U63OuX1g==
X-Received: by 2002:a17:907:f7a4:b0:a8d:2359:3160 with SMTP id a640c23a62f3a-a90294b60ffmr2146813566b.38.1726751104535;
        Thu, 19 Sep 2024 06:05:04 -0700 (PDT)
Received: from localhost.localdomain ([188.27.132.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90cbc7122esm53213166b.124.2024.09.19.06.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 06:05:04 -0700 (PDT)
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
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v7 8/8] iio: adc: ad7606: add support for AD7606C-{16,18} parts
Date: Thu, 19 Sep 2024 16:04:43 +0300
Message-ID: <20240919130444.2100447-9-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240919130444.2100447-1-aardelean@baylibre.com>
References: <20240919130444.2100447-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The AD7606C-16 and AD7606C-18 are pretty similar with the AD7606B.
The main difference between AD7606C-16 & AD7606C-18 is the precision in
bits (16 vs 18).
Because of that, some scales need to be defined for the 18-bit variants, as
they need to be computed against 2**18 (vs 2**16 for the 16 bit-variants).

Because the AD7606C-16,18 also supports bipolar & differential channels,
for SW-mode, the default range of 10 V or ±10V should be set at probe.
On reset, the default range (in the registers) is set to value 0x3 which
corresponds to '±10 V single-ended range', regardless of bipolar or
differential configuration.

Aside from the scale/ranges, the AD7606C-16 is similar to the AD7606B.

The AD7606C-18 variant offers 18-bit precision. Because of this, the
requirement to use this chip is that the SPI controller supports padding
of 18-bit sequences to 32-bit arrays.

Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 263 +++++++++++++++++++++++++++++++++--
 drivers/iio/adc/ad7606.h     |  16 ++-
 drivers/iio/adc/ad7606_spi.c |  55 ++++++++
 3 files changed, 322 insertions(+), 12 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index b909ee14fd81..f04e5660d2f8 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -36,6 +36,33 @@ static const unsigned int ad7606_16bit_hw_scale_avail[2] = {
 	152588, 305176
 };
 
+static const unsigned int ad7606_18bit_hw_scale_avail[2] = {
+	38147, 76294
+};
+
+static const unsigned int ad7606c_16bit_single_ended_unipolar_scale_avail[3] = {
+	76294, 152588, 190735,
+};
+
+static const unsigned int ad7606c_16bit_single_ended_bipolar_scale_avail[5] = {
+	76294, 152588, 190735, 305176, 381470
+};
+
+static const unsigned int ad7606c_16bit_differential_bipolar_scale_avail[4] = {
+	152588, 305176, 381470, 610352
+};
+
+static const unsigned int ad7606c_18bit_single_ended_unipolar_scale_avail[3] = {
+	19073, 38147, 47684
+};
+
+static const unsigned int ad7606c_18bit_single_ended_bipolar_scale_avail[5] = {
+	19073, 38147, 47684, 76294, 95367
+};
+
+static const unsigned int ad7606c_18bit_differential_bipolar_scale_avail[4] = {
+	38147, 76294, 95367, 152588
+};
 
 static const unsigned int ad7606_16bit_sw_scale_avail[3] = {
 	76293, 152588, 305176
@@ -62,7 +89,8 @@ int ad7606_reset(struct ad7606_state *st)
 }
 EXPORT_SYMBOL_NS_GPL(ad7606_reset, IIO_AD7606);
 
-static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st, int ch)
+static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st,
+					 struct iio_chan_spec *chan, int ch)
 {
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 
@@ -83,6 +111,173 @@ static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st, int ch)
 	return 0;
 }
 
+static int ad7606_get_chan_config(struct ad7606_state *st, int ch,
+				  bool *bipolar, bool *differential)
+{
+	unsigned int num_channels = st->chip_info->num_channels - 1;
+	struct device *dev = st->dev;
+	int ret;
+
+	*bipolar = false;
+	*differential = false;
+
+	device_for_each_child_node_scoped(dev, child) {
+		u32 pins[2];
+		int reg;
+
+		ret = fwnode_property_read_u32(child, "reg", &reg);
+		if (ret)
+			continue;
+
+		/* channel number (here) is from 1 to num_channels */
+		if (reg == 0 || reg > num_channels) {
+			dev_warn(dev,
+				 "Invalid channel number (ignoring): %d\n", reg);
+			continue;
+		}
+
+		if (reg != (ch + 1))
+			continue;
+
+		*bipolar = fwnode_property_read_bool(child, "bipolar");
+
+		ret = fwnode_property_read_u32_array(child, "diff-channels",
+						     pins, ARRAY_SIZE(pins));
+		/* Channel is differential, if pins are the same as 'reg' */
+		if (ret == 0 && (pins[0] != reg || pins[1] != reg)) {
+			dev_err(dev,
+				"Differential pins must be the same as 'reg'");
+			return -EINVAL;
+		}
+
+		*differential = (ret == 0);
+
+		if (*differential && !*bipolar) {
+			dev_err(dev,
+				"'bipolar' must be added for diff channel %d\n",
+				reg);
+			return -EINVAL;
+		}
+
+		return 0;
+	}
+
+	return 0;
+}
+
+static int ad7606c_18bit_chan_scale_setup(struct ad7606_state *st,
+					  struct iio_chan_spec *chan, int ch)
+{
+	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
+	bool bipolar, differential;
+	int ret;
+
+	if (!st->sw_mode_en) {
+		cs->range = 0;
+		cs->scale_avail = ad7606_18bit_hw_scale_avail;
+		cs->num_scales = ARRAY_SIZE(ad7606_18bit_hw_scale_avail);
+		return 0;
+	}
+
+	ret = ad7606_get_chan_config(st, ch, &bipolar, &differential);
+	if (ret)
+		return ret;
+
+	if (differential) {
+		cs->scale_avail = ad7606c_18bit_differential_bipolar_scale_avail;
+		cs->num_scales =
+			ARRAY_SIZE(ad7606c_18bit_differential_bipolar_scale_avail);
+		/* Bipolar differential ranges start at 8 (b1000) */
+		cs->reg_offset = 8;
+		cs->range = 1;
+		chan->differential = 1;
+		chan->channel2 = chan->channel;
+
+		return 0;
+	}
+
+	chan->differential = 0;
+
+	if (bipolar) {
+		cs->scale_avail = ad7606c_18bit_single_ended_bipolar_scale_avail;
+		cs->num_scales =
+			ARRAY_SIZE(ad7606c_18bit_single_ended_bipolar_scale_avail);
+		/* Bipolar single-ended ranges start at 0 (b0000) */
+		cs->reg_offset = 0;
+		cs->range = 3;
+		chan->scan_type.sign = 's';
+
+		return 0;
+	}
+
+	cs->scale_avail = ad7606c_18bit_single_ended_unipolar_scale_avail;
+	cs->num_scales =
+		ARRAY_SIZE(ad7606c_18bit_single_ended_unipolar_scale_avail);
+	/* Unipolar single-ended ranges start at 5 (b0101) */
+	cs->reg_offset = 5;
+	cs->range = 1;
+	chan->scan_type.sign = 'u';
+
+	return 0;
+}
+
+static int ad7606c_16bit_chan_scale_setup(struct ad7606_state *st,
+					  struct iio_chan_spec *chan, int ch)
+{
+	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
+	bool bipolar, differential;
+	int ret;
+
+	if (!st->sw_mode_en) {
+		cs->range = 0;
+		cs->scale_avail = ad7606_16bit_hw_scale_avail;
+		cs->num_scales = ARRAY_SIZE(ad7606_16bit_hw_scale_avail);
+		return 0;
+	}
+
+	ret = ad7606_get_chan_config(st, ch, &bipolar, &differential);
+	if (ret)
+		return ret;
+
+	if (differential) {
+		cs->scale_avail = ad7606c_16bit_differential_bipolar_scale_avail;
+		cs->num_scales =
+			ARRAY_SIZE(ad7606c_16bit_differential_bipolar_scale_avail);
+		/* Bipolar differential ranges start at 8 (b1000) */
+		cs->reg_offset = 8;
+		cs->range = 1;
+		chan->differential = 1;
+		chan->channel2 = chan->channel;
+		chan->scan_type.sign = 's';
+
+		return 0;
+	}
+
+	chan->differential = 0;
+
+	if (bipolar) {
+		cs->scale_avail = ad7606c_16bit_single_ended_bipolar_scale_avail;
+		cs->num_scales =
+			ARRAY_SIZE(ad7606c_16bit_single_ended_bipolar_scale_avail);
+		/* Bipolar single-ended ranges start at 0 (b0000) */
+		cs->reg_offset = 0;
+		cs->range = 3;
+		chan->scan_type.sign = 's';
+
+		return 0;
+	}
+
+	cs->scale_avail = ad7606c_16bit_single_ended_unipolar_scale_avail;
+	cs->num_scales =
+		ARRAY_SIZE(ad7606c_16bit_single_ended_unipolar_scale_avail);
+	/* Unipolar single-ended ranges start at 5 (b0101) */
+	cs->reg_offset = 5;
+	cs->range = 1;
+	chan->scan_type.sign = 'u';
+
+	return 0;
+}
+
 static int ad7606_reg_access(struct iio_dev *indio_dev,
 			     unsigned int reg,
 			     unsigned int writeval,
@@ -107,9 +302,8 @@ static int ad7606_reg_access(struct iio_dev *indio_dev,
 static int ad7606_read_samples(struct ad7606_state *st)
 {
 	unsigned int num = st->chip_info->num_channels - 1;
-	u16 *data = st->data;
 
-	return st->bops->read_block(st->dev, num, data);
+	return st->bops->read_block(st->dev, num, &st->data);
 }
 
 static irqreturn_t ad7606_trigger_handler(int irq, void *p)
@@ -125,7 +319,7 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	if (ret)
 		goto error_ret;
 
-	iio_push_to_buffers_with_timestamp(indio_dev, st->data,
+	iio_push_to_buffers_with_timestamp(indio_dev, &st->data,
 					   iio_get_time_ns(indio_dev));
 error_ret:
 	iio_trigger_notify_done(indio_dev->trig);
@@ -139,6 +333,8 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
 			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
+	unsigned int storagebits = st->chip_info->channels[1].scan_type.storagebits;
+	const struct iio_chan_spec *chan;
 	int ret;
 
 	gpiod_set_value(st->gpio_convst, 1);
@@ -153,7 +349,19 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
 	if (ret)
 		goto error_ret;
 
-	*val = sign_extend32(st->data[ch], 15);
+	chan = &indio_dev->channels[ch + 1];
+	if (chan->scan_type.sign == 'u') {
+		if (storagebits > 16)
+			*val = st->data.buf32[ch];
+		else
+			*val = st->data.buf16[ch];
+		return 0;
+	}
+
+	if (storagebits > 16)
+		*val = sign_extend32(st->data.buf32[ch], 17);
+	else
+		*val = sign_extend32(st->data.buf16[ch], 15);
 
 error_ret:
 	gpiod_set_value(st->gpio_convst, 0);
@@ -266,7 +474,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 			ch = chan->address;
 		cs = &st->chan_scales[ch];
 		i = find_closest(val2, cs->scale_avail, cs->num_scales);
-		ret = st->write_scale(indio_dev, ch, i);
+		ret = st->write_scale(indio_dev, ch, i + cs->reg_offset);
 		if (ret < 0)
 			return ret;
 		cs->range = i;
@@ -349,6 +557,18 @@ static const struct iio_chan_spec ad7606_channels_16bit[] = {
 	AD7606_CHANNEL(7, 16),
 };
 
+static const struct iio_chan_spec ad7606_channels_18bit[] = {
+	IIO_CHAN_SOFT_TIMESTAMP(8),
+	AD7606_CHANNEL(0, 18),
+	AD7606_CHANNEL(1, 18),
+	AD7606_CHANNEL(2, 18),
+	AD7606_CHANNEL(3, 18),
+	AD7606_CHANNEL(4, 18),
+	AD7606_CHANNEL(5, 18),
+	AD7606_CHANNEL(6, 18),
+	AD7606_CHANNEL(7, 18),
+};
+
 /*
  * The current assumption that this driver makes for AD7616, is that it's
  * working in Hardware Mode with Serial, Burst and Sequencer modes activated.
@@ -414,6 +634,20 @@ static const struct ad7606_chip_info ad7606_chip_info_tbl[] = {
 		.oversampling_avail = ad7606_oversampling_avail,
 		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
 	},
+	[ID_AD7606C_16] = {
+		.channels = ad7606_channels_16bit,
+		.num_channels = 9,
+		.scale_setup_cb = ad7606c_16bit_chan_scale_setup,
+		.oversampling_avail = ad7606_oversampling_avail,
+		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
+	},
+	[ID_AD7606C_18] = {
+		.channels = ad7606_channels_18bit,
+		.num_channels = 9,
+		.scale_setup_cb = ad7606c_18bit_chan_scale_setup,
+		.oversampling_avail = ad7606_oversampling_avail,
+		.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
+	},
 	[ID_AD7616] = {
 		.channels = ad7616_channels,
 		.num_channels = 17,
@@ -586,7 +820,7 @@ static const struct iio_trigger_ops ad7606_trigger_ops = {
 	.validate_device = iio_trigger_validate_own_device,
 };
 
-static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
+static int ad7606_sw_mode_setup(struct iio_dev *indio_dev, unsigned int id)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 
@@ -604,13 +838,24 @@ static int ad7606_chan_scales_setup(struct iio_dev *indio_dev)
 {
 	unsigned int num_channels = indio_dev->num_channels - 1;
 	struct ad7606_state *st = iio_priv(indio_dev);
+	struct iio_chan_spec *chans;
+	size_t size;
 	int ch, ret;
 
+	/* Clone IIO channels, since some may be differential */
+	size = indio_dev->num_channels * sizeof(*indio_dev->channels);
+	chans = devm_kzalloc(st->dev, size, GFP_KERNEL);
+	if (!chans)
+		return -ENOMEM;
+
+	memcpy(chans, indio_dev->channels, size);
+	indio_dev->channels = chans;
+
 	for (ch = 0; ch < num_channels; ch++) {
 		struct ad7606_chan_scale *cs;
 		int i;
 
-		ret = st->chip_info->scale_setup_cb(st, ch);
+		ret = st->chip_info->scale_setup_cb(st, &chans[ch + 1], ch);
 		if (ret)
 			return ret;
 
@@ -698,7 +943,7 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 	st->write_scale = ad7606_write_scale_hw;
 	st->write_os = ad7606_write_os_hw;
 
-	ret = ad7606_sw_mode_setup(indio_dev);
+	ret = ad7606_sw_mode_setup(indio_dev, id);
 	if (ret)
 		return ret;
 
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 25e84efd15c3..14ee75aa225b 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -63,7 +63,8 @@
 
 struct ad7606_state;
 
-typedef int (*ad7606_scale_setup_cb_t)(struct ad7606_state *st, int ch);
+typedef int (*ad7606_scale_setup_cb_t)(struct ad7606_state *st,
+				       struct iio_chan_spec *chan, int ch);
 
 /**
  * struct ad7606_chip_info - chip specific information
@@ -94,6 +95,8 @@ struct ad7606_chip_info {
  *			such that it can be read via the 'read_avail' hook
  * @num_scales		number of elements stored in the scale_avail array
  * @range		voltage range selection, selects which scale to apply
+ * @reg_offset		offset for the register value, to be applied when
+ *			writing the value of 'range' to the register value
  */
 struct ad7606_chan_scale {
 #define AD760X_MAX_SCALES		16
@@ -102,6 +105,7 @@ struct ad7606_chan_scale {
 	int				scale_avail_show[AD760X_MAX_SCALE_SHOW];
 	unsigned int			num_scales;
 	unsigned int			range;
+	unsigned int			reg_offset;
 };
 
 /**
@@ -158,9 +162,13 @@ struct ad7606_state {
 	/*
 	 * DMA (thus cache coherency maintenance) may require the
 	 * transfer buffers to live in their own cache lines.
-	 * 16 * 16-bit samples + 64-bit timestamp
+	 * 16 * 16-bit samples + 64-bit timestamp - for AD7616
+	 * 8 * 32-bit samples + 64-bit timestamp - for AD7616C-18 (and similar)
 	 */
-	unsigned short			data[20] __aligned(IIO_DMA_MINALIGN);
+	union {
+		u16 buf16[20];
+		u32 buf32[10];
+	} data __aligned(IIO_DMA_MINALIGN);
 	__be16				d16[2];
 };
 
@@ -201,6 +209,8 @@ enum ad7606_supported_device_ids {
 	ID_AD7606_6,
 	ID_AD7606_4,
 	ID_AD7606B,
+	ID_AD7606C_16,
+	ID_AD7606C_18,
 	ID_AD7616,
 };
 
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index e00f58a6a0e9..143440e73aab 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -77,6 +77,18 @@ static const struct iio_chan_spec ad7606b_sw_channels[] = {
 	AD7606_SW_CHANNEL(7, 16),
 };
 
+static const struct iio_chan_spec ad7606c_18_sw_channels[] = {
+	IIO_CHAN_SOFT_TIMESTAMP(8),
+	AD7606_SW_CHANNEL(0, 18),
+	AD7606_SW_CHANNEL(1, 18),
+	AD7606_SW_CHANNEL(2, 18),
+	AD7606_SW_CHANNEL(3, 18),
+	AD7606_SW_CHANNEL(4, 18),
+	AD7606_SW_CHANNEL(5, 18),
+	AD7606_SW_CHANNEL(6, 18),
+	AD7606_SW_CHANNEL(7, 18),
+};
+
 static const unsigned int ad7606B_oversampling_avail[9] = {
 	1, 2, 4, 8, 16, 32, 64, 128, 256
 };
@@ -120,6 +132,19 @@ static int ad7606_spi_read_block(struct device *dev,
 	return 0;
 }
 
+static int ad7606_spi_read_block18to32(struct device *dev,
+				       int count, void *buf)
+{
+	struct spi_device *spi = to_spi_device(dev);
+	struct spi_transfer xfer = {
+		.bits_per_word = 18,
+		.len = count * sizeof(u32),
+		.rx_buf = buf,
+	};
+
+	return spi_sync_transfer(spi, &xfer, 1);
+}
+
 static int ad7606_spi_reg_read(struct ad7606_state *st, unsigned int addr)
 {
 	struct spi_device *spi = to_spi_device(st->dev);
@@ -283,6 +308,19 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	return 0;
 }
 
+static int ad7606c_18_sw_mode_config(struct iio_dev *indio_dev)
+{
+	int ret;
+
+	ret = ad7606B_sw_mode_config(indio_dev);
+	if (ret)
+		return ret;
+
+	indio_dev->channels = ad7606c_18_sw_channels;
+
+	return 0;
+}
+
 static const struct ad7606_bus_ops ad7606_spi_bops = {
 	.read_block = ad7606_spi_read_block,
 };
@@ -305,6 +343,15 @@ static const struct ad7606_bus_ops ad7606B_spi_bops = {
 	.sw_mode_config = ad7606B_sw_mode_config,
 };
 
+static const struct ad7606_bus_ops ad7606c_18_spi_bops = {
+	.read_block = ad7606_spi_read_block18to32,
+	.reg_read = ad7606_spi_reg_read,
+	.reg_write = ad7606_spi_reg_write,
+	.write_mask = ad7606_spi_write_mask,
+	.rd_wr_cmd = ad7606B_spi_rd_wr_cmd,
+	.sw_mode_config = ad7606c_18_sw_mode_config,
+};
+
 static int ad7606_spi_probe(struct spi_device *spi)
 {
 	const struct spi_device_id *id = spi_get_device_id(spi);
@@ -315,8 +362,12 @@ static int ad7606_spi_probe(struct spi_device *spi)
 		bops = &ad7616_spi_bops;
 		break;
 	case ID_AD7606B:
+	case ID_AD7606C_16:
 		bops = &ad7606B_spi_bops;
 		break;
+	case ID_AD7606C_18:
+		bops = &ad7606c_18_spi_bops;
+		break;
 	default:
 		bops = &ad7606_spi_bops;
 		break;
@@ -333,6 +384,8 @@ static const struct spi_device_id ad7606_id_table[] = {
 	{ "ad7606-6", ID_AD7606_6 },
 	{ "ad7606-8", ID_AD7606_8 },
 	{ "ad7606b",  ID_AD7606B },
+	{ "ad7606c-16",  ID_AD7606C_16 },
+	{ "ad7606c-18",  ID_AD7606C_18 },
 	{ "ad7616",   ID_AD7616 },
 	{ }
 };
@@ -344,6 +397,8 @@ static const struct of_device_id ad7606_of_match[] = {
 	{ .compatible = "adi,ad7606-6" },
 	{ .compatible = "adi,ad7606-8" },
 	{ .compatible = "adi,ad7606b" },
+	{ .compatible = "adi,ad7606c-16" },
+	{ .compatible = "adi,ad7606c-18" },
 	{ .compatible = "adi,ad7616" },
 	{ }
 };
-- 
2.46.0


