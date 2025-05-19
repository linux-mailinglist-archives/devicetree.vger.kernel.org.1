Return-Path: <devicetree+bounces-178402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF097ABBAD9
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CC8E3A8265
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F5827585F;
	Mon, 19 May 2025 10:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YjBN2vJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDA2275103
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747649741; cv=none; b=bROqn4MKgGLq7RzoGkEzAbSvjft0xtXD3KxLZpN3bFmWP/d0xb8vG1JwhAowbFvTjDn3i/oshwkDZ9TPKE2ptmDXh2pvd7y7jPIR5DyaGOusdIFlZaVzlcCasWXQOJ7VcyF9nOtF/xG4J4psbBEiwlJZyq71mDHS1D+/6MmzlkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747649741; c=relaxed/simple;
	bh=k8C+7ZKPgiBvpe9orKJUPwV3VT8i/8pM3z/vkYUKVYg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FciEBiZgg1keu+yqxOthtyAWBdfxFlC318lbXBPE4BacoaJPH8giYZngbSPIxUu+AFtfo9N7GesBYTtv74c15APMH98RAYofuikwIJCrMXyfXWz/ehFARB1euBWLrYdX2tL0FYzfOFhT2XfUs3SBhKOoNjO4KZhgp9+gVyqKBME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YjBN2vJ7; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-441c99459e9so25603225e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747649737; x=1748254537; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LDGwTef4sEIXmEjkxTASZN7dUj6mE4M4+Vtn0mnrAsA=;
        b=YjBN2vJ7jv9xZi6nNKa4Nrjghhd5zf8h9BGLuPTqvwgu2+iYWyg0jhsFVWEMB74ZuF
         78hk/eRuc56MR2625uUm1G8mz78bT8EopumaUaLAdv/CQvCPQVNEbN0BmsirTaaf0C/t
         26dW9PPLPLQOYDdZlRx9FJtUJqTpYytS5sOHvb5GjXQIcnBEzSdsnnDAzhG9TszcURx4
         6M3mn6n70A50DiIewwTbyVldU5aQJxtntSBsSt+67qeHmMLG8vO5186D1GSxVKkxdl+r
         uK87z9a8KzvkPkBv3be0S3ohO87/RN54lyNbW0T4dt8CpzVvTobzv8ArtWTJMBjBbE/8
         Z1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747649737; x=1748254537;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDGwTef4sEIXmEjkxTASZN7dUj6mE4M4+Vtn0mnrAsA=;
        b=OtoYWjd4C1ZRwADVXGdiQbLfAV6zqGQLalEBo5wRtCrF26ki1AgkII3Tbj+RIJnBFs
         NszD6KNJTLydesowGYq306padGvo9lOHdUoXPvUFqoL8sqFCAHQVJsmC6DPpKuuvjmxW
         kVlWCih24syWXZPRA8X++AJ4jHNuHrXZ9/XvAU0SnA2RJ0IA70826UoEphLsdTWeDl2c
         VlUFV8EdJHc32D4ddegYtoFrEfQimYMucalGQ7aeJe7yQVQ84ZBOb5eLV6bkdMWxGX6h
         JOKZMH9reXEaiIutoQJZqYzeUH47bZpVEXydQuVd54Ypv3KtRJ+vxe5mPbh1hmzmJ5w+
         UCJA==
X-Forwarded-Encrypted: i=1; AJvYcCWEXGnNvC1HD66AVzjjsMOLyuO/nQfrpEG37oiu0fZwNTPOIJ2o1yhIStbFHDwDyuWoxMCQvdZc9bV0@vger.kernel.org
X-Gm-Message-State: AOJu0YxY30pgiji63yMKrgE0tz0OOrTGLQyaSBRB/pq+4rFlb/uoAM4s
	nsOa+RVaaBv+5iWG4qnCmfSoG/zwoU9fWhPhN3J2H+MM9aKMJp2N8jIuwR7j3W8Szps=
X-Gm-Gg: ASbGncsTDI3vKO3fm7FS3lMipsVg3YhUSQmrhnbY8IbgApe/OxBtGy1Nu+g19wxjAac
	Oej+HgAupBqiTRcTQSs/vNZaZoQ7x/nrCK3U4JojiwZm1WSZYZ2Do3o1o2jjl6K9BbEuOerxG31
	hD22YVEx/c13qtOQgNbui4u0gUe+k2l+65OaXTt9RrlifsEb2lNoW4FelHUxdcPZ78WlslN8Ms8
	Zhit//kseuTetrmScxNsZJ0/048cs8V/fINGy3uipV/s9bE+0ZrVTFcdGn6QbBOOfgmy7fgAg2+
	rVnlQjpa2rrcuknjIoR4ZZiL8R+r5IJLO6zdTSb4DfcGOBxoehj91ycEGE/5iabvQ7BnX7UD+I+
	eolwFEVQyVELYjXNitrGzIWq15ORn9MU=
X-Google-Smtp-Source: AGHT+IG6untCYVljUwKCNJpWBawGnPsAus8uJcLZGOrYcJGO297sZTir+y1sKaGYKgA9M9Pqy5tNKQ==
X-Received: by 2002:a5d:588d:0:b0:3a3:6cb6:defa with SMTP id ffacd0b85a97d-3a36cb6e114mr3852262f8f.40.1747649737411;
        Mon, 19 May 2025 03:15:37 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca4d105sm12499021f8f.11.2025.05.19.03.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 03:15:36 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 19 May 2025 12:13:42 +0200
Subject: [PATCH v5 5/5] iio: adc: ad7606: add gain calibration support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250519-wip-bl-ad7606-calibration-v5-5-4054fc7c9f3d@baylibre.com>
References: <20250519-wip-bl-ad7606-calibration-v5-0-4054fc7c9f3d@baylibre.com>
In-Reply-To: <20250519-wip-bl-ad7606-calibration-v5-0-4054fc7c9f3d@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5809;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=U7IdkRU8bIy3slfzEZWptpFJZiO7glTgD+eqaNh8CLE=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQZimV4kq7kBW+7Nvj7LyOWw7eE+89+Nwq8213Tk3YB
 ckX95w+dZSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZjISVmG/6n5d+8+3rzpTcci
 De77m/jqFrxjiT0+6alTxqK9Owp9p+ow/NOMdm25EC83t8Oh5ZJpwO+wQ/s2yeavcvU4uen+tKu
 1K9kB
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add gain calibration support, using resistor values set on devicetree,
values to be set accordingly with ADC external RFilter, as explained in
the ad7606c-16 datasheet, rev0, page 37.

Usage example in the fdt yaml documentation.

Tested-by: David Lechner <dlechner@baylibre.com>
Reviewed-by: Nuno Sá <nuno.sa@analog.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 61 ++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/iio/adc/ad7606.h |  3 +++
 2 files changed, 64 insertions(+)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index bb0c89fc618874f4a5948d8e537716f87127bc92..19802bb7ec6624203b50589b6b76085c9f2f9628 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -33,6 +33,10 @@
 
 #include "ad7606.h"
 
+#define AD7606_CALIB_GAIN_MIN	0
+#define AD7606_CALIB_GAIN_STEP	1024
+#define AD7606_CALIB_GAIN_MAX	(63 * AD7606_CALIB_GAIN_STEP)
+
 /*
  * Scales are computed as 5000/32768 and 10000/32768 respectively,
  * so that when applied to the raw values they provide mV values.
@@ -125,6 +129,7 @@ static int ad7609_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan);
 static int ad7616_sw_mode_setup(struct iio_dev *indio_dev);
 static int ad7606b_sw_mode_setup(struct iio_dev *indio_dev);
+static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev);
 
 const struct ad7606_chip_info ad7605_4_info = {
 	.max_samplerate = 300 * KILO,
@@ -180,6 +185,7 @@ const struct ad7606_chip_info ad7606b_info = {
 	.scale_setup_cb = ad7606_16bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
 	.calib_offset_avail = ad7606_calib_offset_avail,
 	.calib_phase_avail = ad7606b_calib_phase_avail,
 };
@@ -195,6 +201,7 @@ const struct ad7606_chip_info ad7606c_16_info = {
 	.scale_setup_cb = ad7606c_16bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
 	.calib_offset_avail = ad7606_calib_offset_avail,
 	.calib_phase_avail = ad7606c_calib_phase_avail,
 };
@@ -246,6 +253,7 @@ const struct ad7606_chip_info ad7606c_18_info = {
 	.scale_setup_cb = ad7606c_18bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
 	.calib_offset_avail = ad7606c_18bit_calib_offset_avail,
 	.calib_phase_avail = ad7606c_calib_phase_avail,
 };
@@ -357,6 +365,52 @@ static int ad7606_get_chan_config(struct iio_dev *indio_dev, int ch,
 	return 0;
 }
 
+static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev)
+{
+	struct ad7606_state *st = iio_priv(indio_dev);
+	unsigned int num_channels = st->chip_info->num_adc_channels;
+	struct device *dev = st->dev;
+	int ret;
+
+	/*
+	 * This function is called once, and parses all the channel nodes,
+	 * so continuing on next channel node on errors, informing of them.
+	 */
+	device_for_each_child_node_scoped(dev, child) {
+		u32 reg, r_gain;
+
+		ret = fwnode_property_read_u32(child, "reg", &reg);
+		if (ret)
+			continue;
+
+		/* Chan reg is a 1-based index. */
+		if (reg < 1 || reg > num_channels) {
+			dev_warn(dev, "wrong ch number (ignoring): %d\n", reg);
+			continue;
+		}
+
+		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
+					       &r_gain);
+		if (ret)
+			/* Keep the default register value. */
+			continue;
+
+		if (r_gain > AD7606_CALIB_GAIN_MAX) {
+			dev_warn(dev, "wrong gain calibration value");
+			continue;
+		}
+
+		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
+			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));
+		if (ret) {
+			dev_warn(dev, "error writing r_gain");
+			continue;
+		}
+	}
+
+	return 0;
+}
+
 static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan)
 {
@@ -1448,6 +1502,13 @@ static int ad7606_probe_channels(struct iio_dev *indio_dev)
 	if (slow_bus)
 		channels[i] = (struct iio_chan_spec)IIO_CHAN_SOFT_TIMESTAMP(i);
 
+	/* Setting up gain calibration for all channels. */
+	if (st->sw_mode_en && st->chip_info->calib_offset_avail) {
+		ret = st->chip_info->calib_gain_setup_cb(indio_dev);
+		if (ret)
+			return ret;
+	}
+
 	indio_dev->channels = channels;
 
 	return 0;
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index f613583a7fa4095115b0b28e3f8e51cd32b93524..6313eea2bd0ccf97222a50dc26d8ec65042d0db7 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -50,6 +50,7 @@ struct ad7606_state;
 typedef int (*ad7606_scale_setup_cb_t)(struct iio_dev *indio_dev,
 				       struct iio_chan_spec *chan);
 typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
+typedef int (*ad7606_calib_gain_setup_cb_t)(struct iio_dev *indio_dev);
 
 /**
  * struct ad7606_chip_info - chip specific information
@@ -66,6 +67,7 @@ typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
  * @init_delay_ms:	required delay in milliseconds for initialization
  *			after a restart
  * @offload_storagebits: storage bits used by the offload hw implementation
+ * @calib_gain_setup_cb: callback to setup of gain calibration
  * @calib_offset_avail: pointer to offset calibration range/limits array
  * @calib_phase_avail:  pointer to phase calibration range/limits array
  */
@@ -81,6 +83,7 @@ struct ad7606_chip_info {
 	bool				os_req_reset;
 	unsigned long			init_delay_ms;
 	u8				offload_storagebits;
+	ad7606_calib_gain_setup_cb_t	calib_gain_setup_cb;
 	const int			*calib_offset_avail;
 	const int			(*calib_phase_avail)[2];
 };

-- 
2.49.0


