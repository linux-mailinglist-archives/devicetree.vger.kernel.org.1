Return-Path: <devicetree+bounces-4734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 377857B38B6
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DA2FF28417D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0F9658B3;
	Fri, 29 Sep 2023 17:26:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72164658AE
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:05 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4701510D4
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:03 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57b635e3fd9so6089627eaf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008362; x=1696613162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qREH2iijrQE8j1KV5leApL29RWV15pSaXqnz6nLqFFw=;
        b=Sx7tot4JiC8XYJ9aKwhtACuJwGYtWxnRgSn3Gl6ZmlUuJIO/PAWCPdH8J1IbfrFmhQ
         9mQW4qeOnfNbBWNHEx786cqNRv/bTZW5ls+9tohoWX7hnv+ijs8QSxrYPV8OSPjI0VIJ
         1KZD3bvjVDFsr/1LzXVhIM3Dc4nmtzQAnF0y1USeBLA3Yo6ccNPtObsv+yOdbvUhEWpp
         l2itB75XDz6sLV8EH8hFnOFWZ5UPtLda90XXtHb7L1B5tn5yr0Y74UD1fY45tNiSyAse
         +M49MPDxlY4joBVTlB+d0NSjb04bwmTNdx1WiSUjrQbhMbx6uKX614PuhrK7Z2wVS4E0
         1sgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008362; x=1696613162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qREH2iijrQE8j1KV5leApL29RWV15pSaXqnz6nLqFFw=;
        b=DE+g4gkcQWiqAE3TtgzycrOYPNp0HH1PHegEVhD4G2Ews+CN6GCfu2pbVLvVOcGpn6
         M3/b6toh9aqzqLX/UFgiihsT0AB5QBZTOdVTc4QVicR0AKJh/8/9P6xeDS/PY8ZMrt2Z
         +Z/5jN8CGkBAfwvg3EgbBbQ7Pqo+RnpePlPLySwGgzRMh0OYcTfFbWhlXzBuWc58FfWl
         RH9i5YyBS9/xD3uhrDejLjL0HupBKk8Vov/rnnN39Vdypjg+FQxY+Vp7ZtapaVO5Qqy8
         d3ZAjTerFR8S/vSoUxDCKmcFeY5TQNPD7MUmlIm19PsyZ8aoX9OWKzNZFLMQqgTrX3ku
         AbOQ==
X-Gm-Message-State: AOJu0YypFn3Dkh6oq/c0mwmhCg6L4XJXe71KeecmZh0si5hOqKU80DLu
	89fmYNYZc0G7a69bN+FDW7WZ1g==
X-Google-Smtp-Source: AGHT+IGUGOW69+LuB4tDRchw1nSEYKrDTR2IkarxX44dNHo2w5zjN5jnchMr/v8COjgjPFl/yJiRnA==
X-Received: by 2002:a4a:6219:0:b0:57b:86f5:701c with SMTP id x25-20020a4a6219000000b0057b86f5701cmr4880962ooc.4.1696008362178;
        Fri, 29 Sep 2023 10:26:02 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:26:01 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 17/27] staging: iio: resolver: ad2s1210: convert fexcit to channel attribute
Date: Fri, 29 Sep 2023 12:23:22 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-17-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

The ad2s1210 driver has a device-specific attribute `fexcit` for setting
the frequency of the excitation output. This converts it to a channel in
order to use standard IIO ABI.

The excitation frequency is an analog output that generates a sine wave.
Only the frequency is configurable. According to the datasheet, the
specified range of the excitation frequency is from 2 kHz to 20 kHz and
can be set in increments of 250 Hz.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* This is a new patch in v3 instead of "iio: resolver: ad2s1210: rename fexcit
  attribute"

 drivers/staging/iio/resolver/ad2s1210.c | 122 ++++++++++++++++++--------------
 1 file changed, 70 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index b15d71b17266..6accb9e3db46 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -224,54 +224,6 @@ static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
 				     bitmap);
 }
 
-static ssize_t ad2s1210_show_fexcit(struct device *dev,
-				    struct device_attribute *attr,
-				    char *buf)
-{
-	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
-	unsigned int value;
-	u16 fexcit;
-	int ret;
-
-	mutex_lock(&st->lock);
-	ret = regmap_read(st->regmap, AD2S1210_REG_EXCIT_FREQ, &value);
-	if (ret < 0)
-		goto error_ret;
-
-	fexcit = value * st->clkin_hz / (1 << 15);
-
-	ret = sprintf(buf, "%u\n", fexcit);
-
-error_ret:
-	mutex_unlock(&st->lock);
-	return ret;
-}
-
-static ssize_t ad2s1210_store_fexcit(struct device *dev,
-				     struct device_attribute *attr,
-				     const char *buf, size_t len)
-{
-	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
-	u16 fexcit;
-	int ret;
-
-	ret = kstrtou16(buf, 10, &fexcit);
-	if (ret < 0 || fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT)
-		return -EINVAL;
-
-	mutex_lock(&st->lock);
-	ret = ad2s1210_reinit_excitation_frequency(st, fexcit);
-	if (ret < 0)
-		goto error_ret;
-
-	ret = len;
-
-error_ret:
-	mutex_unlock(&st->lock);
-
-	return ret;
-}
-
 static ssize_t ad2s1210_show_resolution(struct device *dev,
 					struct device_attribute *attr,
 					char *buf)
@@ -474,6 +426,38 @@ static int ad2s1210_set_hysteresis(struct ad2s1210_state *st, int val)
 	return ret;
 }
 
+static int ad2s1210_get_excitation_frequency(struct ad2s1210_state *st, int *val)
+{
+	unsigned int reg_val;
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_read(st->regmap, AD2S1210_REG_EXCIT_FREQ, &reg_val);
+	if (ret < 0)
+		goto error_ret;
+
+	*val = reg_val * st->clkin_hz / (1 << 15);
+	ret = IIO_VAL_INT;
+
+error_ret:
+	mutex_unlock(&st->lock);
+	return ret;
+}
+
+static int ad2s1210_set_excitation_frequency(struct ad2s1210_state *st, int val)
+{
+	int ret;
+
+	if (val < AD2S1210_MIN_EXCIT || val > AD2S1210_MAX_EXCIT)
+		return -EINVAL;
+
+	mutex_lock(&st->lock);
+	ret = ad2s1210_reinit_excitation_frequency(st, val);
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static const int ad2s1210_velocity_scale[] = {
 	17089132, /* 8.192MHz / (2*pi * 2500 / 2^15) */
 	42722830, /* 8.192MHz / (2*pi * 1000 / 2^15) */
@@ -506,6 +490,13 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
+	case IIO_CHAN_INFO_FREQUENCY:
+		switch (chan->type) {
+		case IIO_ALTVOLTAGE:
+			return ad2s1210_get_excitation_frequency(st, val);
+		default:
+			return -EINVAL;
+		}
 	case IIO_CHAN_INFO_HYSTERESIS:
 		switch (chan->type) {
 		case IIO_ANGL:
@@ -523,9 +514,23 @@ static int ad2s1210_read_avail(struct iio_dev *indio_dev,
 			       const int **vals, int *type,
 			       int *length, long mask)
 {
+	static const int excitation_frequency_available[] = {
+		AD2S1210_MIN_EXCIT,
+		250, /* step */
+		AD2S1210_MAX_EXCIT,
+	};
 	static const int hysteresis_available[] = { 0, 1 };
 
 	switch (mask) {
+	case IIO_CHAN_INFO_FREQUENCY:
+		switch (chan->type) {
+		case IIO_ALTVOLTAGE:
+			*type = IIO_VAL_INT;
+			*vals = excitation_frequency_available;
+			return IIO_AVAIL_RANGE;
+		default:
+			return -EINVAL;
+		}
 	case IIO_CHAN_INFO_HYSTERESIS:
 		switch (chan->type) {
 		case IIO_ANGL:
@@ -548,6 +553,13 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 	struct ad2s1210_state *st = iio_priv(indio_dev);
 
 	switch (mask) {
+	case IIO_CHAN_INFO_FREQUENCY:
+		switch (chan->type) {
+		case IIO_ALTVOLTAGE:
+			return ad2s1210_set_excitation_frequency(st, val);
+		default:
+			return -EINVAL;
+		}
 	case IIO_CHAN_INFO_HYSTERESIS:
 		switch (chan->type) {
 		case IIO_ANGL:
@@ -560,8 +572,6 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 	}
 }
 
-static IIO_DEVICE_ATTR(fexcit, 0644,
-		       ad2s1210_show_fexcit,	ad2s1210_store_fexcit, 0);
 static IIO_DEVICE_ATTR(bits, 0644,
 		       ad2s1210_show_resolution, ad2s1210_store_resolution, 0);
 static IIO_DEVICE_ATTR(fault, 0644,
@@ -605,11 +615,19 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 		.channel = 0,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 				      BIT(IIO_CHAN_INFO_SCALE),
-	}
+	}, {
+		/* excitation frequency output */
+		.type = IIO_ALTVOLTAGE,
+		.indexed = 1,
+		.channel = 0,
+		.output = 1,
+		.scan_index = -1,
+		.info_mask_separate = BIT(IIO_CHAN_INFO_FREQUENCY),
+		.info_mask_separate_available = BIT(IIO_CHAN_INFO_FREQUENCY),
+	},
 };
 
 static struct attribute *ad2s1210_attributes[] = {
-	&iio_dev_attr_fexcit.dev_attr.attr,
 	&iio_dev_attr_bits.dev_attr.attr,
 	&iio_dev_attr_fault.dev_attr.attr,
 	&iio_dev_attr_los_thrd.dev_attr.attr,

-- 
2.42.0


