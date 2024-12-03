Return-Path: <devicetree+bounces-126537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E999E1A30
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A61F2856A2
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666EF1E378D;
	Tue,  3 Dec 2024 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KxTiu2pO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700E01E3782
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223701; cv=none; b=nWudk1I+k/qAPImyH/tZhkuKji/pBjQp2kjPPRlxFf04MxTStkdMLjZtNQ2GAasYliXWyxBc7lK3UXWwON8vciSA4FildFDLzQ+cqyMMVPIUhqno28/vuOtDLbWEgaOfFQn42Ok38yzLjL+FTpQ9UVUasaqQsl3mvwpC6o6tXZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223701; c=relaxed/simple;
	bh=PzIORblitgR8o9Wn8H59N3kcmZSxmQXU/hVecY0uC2M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UKp24mn7PiKmbnXRG9YInrD4fVbjvEfCwKOH/pfaHy41HNzoQbga5c/rjGAXNFfBhRWXvnl4UR2ngrMCm8Ew7osnQLzJVGEmGjDZsh6N1TC15XjOwSNJypjplkX8zNCntfmppM7SSA999eJGiiHO+nou9QCOlmLH+2D2BGhtw54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KxTiu2pO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4349fd77b33so43813875e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223697; x=1733828497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aseOZ/ig8fHd/fQ9eVD49B+jZ1dXmCphPlgyXXsphrs=;
        b=KxTiu2pOgRbs43o0ydnYdrDMMdXDpgVGmvc52KtfgyTgDrHy2M5p4Ge+hOdzOWKG8C
         y9XX6Lc2OGkQuMjhHucHRHWISbWWs7bfc5YEEsimw35XWdsgHKBCzu4pvl/tgJpWaFJu
         ixB4VwUmdflB4YvDVdzfdDpO6TrvyB32cXDSNrvS/O/Hd6Przo/JXCp2pLa76+7hUv71
         027PvPNwrkmr95Ikc/GBZtxJXRUPJ96HEVRGO8vAq9TOZ8EP0rogtFMOsVihZMAKC8M1
         +QyKe5rGXNY6Ld4h4B0hrMLh10JfhIKXfIBmlY4ozhWtMbHUh5WiXdO7WMwUaRzkHxVD
         50+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223697; x=1733828497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aseOZ/ig8fHd/fQ9eVD49B+jZ1dXmCphPlgyXXsphrs=;
        b=KO81xajeQZnJhjAjFvbw/OJ4LMnqriPZlhO76KY/6fGrUT1S9L+K5Vw0HZmsymHQgZ
         Q/TT6NCSznJtN2RNy/4atAsU9aynbOMfdxSHVo36Mi4J2x1FvMariSEVZ/svRx9ykbWa
         +bDe8gQwQGIvNIOxb343YJAukE7LRhyYciF91Z1dQmABHFxBSQ3t4IyggaDqm0Wv4ivR
         mkgcXM3Z1PxyuJ6h90aU3AUyB/bsuoCykBIhnyNv236ZHNfHYGFR3d4UY5RPRikFPZIr
         INmVVm8eL1xFTIsTi9Z/C+TrSmsRkhlspEFA1rNBcW4kG7wzr858KljoyJiy4/tzQo5v
         HDFw==
X-Forwarded-Encrypted: i=1; AJvYcCWkXxcYrPWiJ+eXMFTwYVqKAUmt2Zaf9oYnpqTMb4S9yrX0tyHzCshNj7oMX164a+UKp2yNhzqe0KPv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx662mpIPSQrloL4KIBVaSr4a5264LKkHYCIhVA9qaRSgwGEXei
	1WMcIe2wBheDPCRZS9IMrilU7Ps1xQn2vP1wgJnaWkJSdUUAQqE8cloOd1LKgR0=
X-Gm-Gg: ASbGncsZXoliKU42X68MMl9lmO1M5lAJaW7WCKGsAxfIW6zILrYTunU53i0siCLMyb0
	nhEnzeQiepidWf1CxcDDrC7/HcZY8ziCOxxYV1998fkRhiv9cy2F3mK8pO8M5BZl/auMPEiM8v4
	A8eLlZbxs7obVBbz1RyHYOo6H2xSlcuZ9pTe4IvU3j7LaF1teb2OjcbISiTmA/EE1+yu/NBqiVj
	O3xXJlCPyr/o72RbCdc0uq11CiLLZzF69OWYKrn5XX4/BrsY43W8OldBWUtOCS20o2lFkR2Xc0K
	YfYpiOEHc1bKnN8h6yGNAcP9GOHgIM0bQ1QdlNY=
X-Google-Smtp-Source: AGHT+IFe6Ur7Dc0QXIqQDvEIH5iPZHgOKXmjXthnf9J8NhH++FCK874qebsX6AqFH2Rqhdn97SGDPg==
X-Received: by 2002:a05:600c:3502:b0:434:a902:415b with SMTP id 5b1f17b1804b1-434d09b647cmr20518885e9.10.1733223697473;
        Tue, 03 Dec 2024 03:01:37 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0f32589sm189218195e9.28.2024.12.03.03.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:37 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 10/10] iio: adc: ad7124: Implement temperature measurement
Date: Tue,  3 Dec 2024 12:00:30 +0100
Message-ID: <20241203110019.1520071-22-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5420; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=PzIORblitgR8o9Wn8H59N3kcmZSxmQXU/hVecY0uC2M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTkU4JHKiap3rPd1eTqeDzUhthNZfuou1LnG KOtVIh+kMqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k5AAKCRCPgPtYfRL+ TuXQB/4iamkPEY5yC3cQnm2HOCMFXsSZo5zs9YWkiLMVsb4lXmBZS0kVPNGqXlPhu9TSZ5QVbVz 5BoiJr3nztys0NZFgzoxKxpbprofjFhngow4WuYdx8Fu8HLkDs3pCnY/J+Na5lzPFm3xf1jFUs8 RSrjz7dIpYQslpIVSVEWg4EW6RSOqAXXl3bUaSgUM9U4IQmqQ9jBrCA2mKv+tISxeCENFZbaoju mcoZsFxhK/r1igV13JoYaSMku9S8H6VHAiyZujIlDa3dCdWT0n3hzy8ZRgdZiMYB50XwnHXqozc i/84/TJCoe7cb97JCMv6As49xy8phr37YinzARvhS31SdrnW
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

If the maximal count of channels the driver supports isn't fully
utilized, add an attribute providing the internal temperature.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 112 +++++++++++++++++++++++++++++++--------
 1 file changed, 91 insertions(+), 21 deletions(-)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 9405cb579324..d858bffd2628 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -95,6 +95,10 @@
 #define AD7124_MAX_CONFIGS	8
 #define AD7124_MAX_CHANNELS	16
 
+/* AD7124 input sources */
+#define AD7124_INPUT_TEMPSENSOR	16
+#define AD7124_INPUT_AVSS	17
+
 enum ad7124_ids {
 	ID_AD7124_4,
 	ID_AD7124_8,
@@ -589,26 +593,59 @@ static int ad7124_read_raw(struct iio_dev *indio_dev,
 
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_SCALE:
-		mutex_lock(&st->cfgs_lock);
+		switch (chan->type) {
+		case IIO_VOLTAGE:
+			mutex_lock(&st->cfgs_lock);
 
-		idx = st->channels[chan->address].cfg.pga_bits;
-		*val = st->channels[chan->address].cfg.vref_mv;
-		if (st->channels[chan->address].cfg.bipolar)
-			*val2 = chan->scan_type.realbits - 1 + idx;
-		else
-			*val2 = chan->scan_type.realbits + idx;
+			idx = st->channels[chan->address].cfg.pga_bits;
+			*val = st->channels[chan->address].cfg.vref_mv;
+			if (st->channels[chan->address].cfg.bipolar)
+				*val2 = chan->scan_type.realbits - 1 + idx;
+			else
+				*val2 = chan->scan_type.realbits + idx;
+
+			mutex_unlock(&st->cfgs_lock);
+			return IIO_VAL_FRACTIONAL_LOG2;
+
+		case IIO_TEMP:
+			/*
+			 * According to the data sheet
+			 *   Temperature (°C)
+			 * = ((Conversion − 0x800000)/13584) − 272.5
+			 * = (Conversion − 0x800000 - 13584 * 272.5) / 13584
+			 * = (Conversion − 12090248) / 13584
+			 * So scale with 1000/13584 to yield °mC. Reduce by 8 to
+			 * 125/1698.
+			 */
+			*val = 125;
+			*val2 = 1698;
+			return IIO_VAL_FRACTIONAL;
+
+		default:
+			return -EINVAL;
+		}
 
-		mutex_unlock(&st->cfgs_lock);
-		return IIO_VAL_FRACTIONAL_LOG2;
 	case IIO_CHAN_INFO_OFFSET:
-		mutex_lock(&st->cfgs_lock);
-		if (st->channels[chan->address].cfg.bipolar)
-			*val = -(1 << (chan->scan_type.realbits - 1));
-		else
-			*val = 0;
+		switch (chan->type) {
+		case IIO_VOLTAGE:
+			mutex_lock(&st->cfgs_lock);
+			if (st->channels[chan->address].cfg.bipolar)
+				*val = -(1 << (chan->scan_type.realbits - 1));
+			else
+				*val = 0;
+
+			mutex_unlock(&st->cfgs_lock);
+			return IIO_VAL_INT;
+
+		case IIO_TEMP:
+			/* see calculation above */
+			*val = -12090248;
+			return IIO_VAL_INT;
+
+		default:
+			return -EINVAL;
+		}
 
-		mutex_unlock(&st->cfgs_lock);
-		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		mutex_lock(&st->cfgs_lock);
 		*val = st->channels[chan->address].cfg.odr;
@@ -826,11 +863,10 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 	struct ad7124_channel *channels;
 	struct iio_chan_spec *chan;
 	unsigned int ain[2], channel = 0, tmp;
+	unsigned int num_channels;
 	int ret;
 
-	st->num_channels = device_get_child_node_count(dev);
-	if (!st->num_channels)
-		return dev_err_probe(dev, -ENODEV, "no channel children\n");
+	num_channels = device_get_child_node_count(dev);
 
 	/*
 	 * The driver assigns each logical channel defined in the device tree
@@ -839,9 +875,12 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 	 * CHANNEL_15) as an additional channel register. The driver could be
 	 * improved to lift this limitation.
 	 */
-	if (st->num_channels > AD7124_MAX_CHANNELS)
+	if (num_channels > AD7124_MAX_CHANNELS)
 		return dev_err_probe(dev, -EINVAL, "Too many channels defined\n");
 
+	/* Add one for temperature */
+	st->num_channels = min(num_channels + 1, AD7124_MAX_CHANNELS);
+
 	chan = devm_kcalloc(indio_dev->dev.parent, st->num_channels,
 			    sizeof(*chan), GFP_KERNEL);
 	if (!chan)
@@ -862,7 +901,7 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 			return dev_err_probe(dev, ret,
 					     "Failed to parse reg property of %pfwP\n", child);
 
-		if (channel >= indio_dev->num_channels)
+		if (channel >= num_channels)
 			return dev_err_probe(dev, -EINVAL,
 					     "Channel index >= number of channels in %pfwP\n", child);
 
@@ -902,6 +941,37 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 		chan[channel].channel2 = ain[1];
 	}
 
+	if (num_channels < AD7124_MAX_CHANNELS) {
+		st->channels[num_channels] = (struct ad7124_channel) {
+			.nr = num_channels,
+			.ain = AD7124_CHANNEL_AINP(AD7124_INPUT_TEMPSENSOR) |
+				AD7124_CHANNEL_AINM(AD7124_INPUT_AVSS),
+			.cfg = {
+				.bipolar = true,
+			},
+		};
+
+		chan[num_channels] = (struct iio_chan_spec) {
+			.type = IIO_TEMP,
+			.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
+				BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_OFFSET) |
+				BIT(IIO_CHAN_INFO_SAMP_FREQ),
+			.scan_type = {
+				/*
+				 * You might find it strange that a bipolar
+				 * measurement yields an unsigned value, but
+				 * this matches the device's manual.
+				 */
+				.sign = 'u',
+				.realbits = 24,
+				.storagebits = 32,
+				.endianness = IIO_BE,
+			},
+			.address = num_channels,
+			.scan_index = num_channels,
+		};
+	};
+
 	return 0;
 }
 
-- 
2.45.2


