Return-Path: <devicetree+bounces-126534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A9F9E1A37
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B769BB3D408
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168B61E3765;
	Tue,  3 Dec 2024 11:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QOH3ABRy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED3D1E3772
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223692; cv=none; b=df12LmLgBmQmabQxGt/iXw3hvHoLtSeez7pJaGJz7QizJIbubrtWxAwjJPHo19U/fmGbAklj+6j3yGh6vRY73MKD5x3a31ACJIDT5R0Usw65RjBtZ0NgIizolQjm06epfzFcx8FpHsdDO8vn/yOBaG/QiIgbNiWD9yW77V2SybQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223692; c=relaxed/simple;
	bh=2HKcFo7TQCrQ4num0VNgfMdjg/saRUqyt2yVyJlKlYY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IcxIDgrT+gd241Tba6MFqVUuO7idUHrBVSCaaC7kLISwqe4RNVtkxMLgfK2Nkq022ZqrhoUGwtkv3beZliQ0BnsaHirVWiuWyCPmyHLTtD+OSrOliIqGkMFkm22zJ9Jf3kILNMa7/PBigEUFkXUUQV7bsUwxtJMlFoDE8GI3+4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QOH3ABRy; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a0fd9778so49499175e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223688; x=1733828488; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PaSD2JbxY7n+JgrJBd0cmajEwrXt3LIZm98N5Js46JA=;
        b=QOH3ABRy3ah4f8Fr8I137XsARrWU5jTtQWKjLgymdDf4qEE/cFA5Y6k8l9bh2EXmb8
         JZZz3Dw40dYIiEeZms6oIVevOQEsbzEop9nqizUEOxh7ZybOxo+9BiyLKfh+cbko1kvD
         Pl06cHoEcvQhX92W3FEhDJ6QH5sDDWbu5TZsZRhQOV9DMbtoxD2X6Me9zmJimtkcChO9
         kXGF0LsYbP6YpH1x5b/H7qvNo+dfeJIHxLhe27+frD8NhexSRBk54baTkqwFhdJWYyHJ
         Cy4rCgBNqSNQRyT+HrdR0WXjtXF9RcGIyAxYpF+PbIj89fQJWQqzHv6C+lkXw00WLoQ8
         PZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223688; x=1733828488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PaSD2JbxY7n+JgrJBd0cmajEwrXt3LIZm98N5Js46JA=;
        b=eUWsafb2cvYq2B5TKxF8SAljeyBA9P5dnbgvtjtHwe9ymGq7LxsTmh7d1At08rBI1r
         iY9PmabTuqeLhGOAgdHFh9OuaavpMjKG7L+cQlaS/rAxaVkeZ4EKdkeKbxYMxMdLmR8R
         4ak7OHHsfVyvhMAfVrPjVH8VWBXvdNCJ+KD9fX/E0bGeicklugF4XJsU8nBtRI5/52Vv
         QGUS9ihVe1hcASXCJLLz0ySCp34nvWuTttt6Le/CIwsIO9J0LvchAsYAYF4+6K8glnKH
         DGR8hsuxSSCP7ybiuhTAs1h61AIH0gIm2k58y+Gzh9jX0tHvtn5qRl0SaTPMV6XKisNS
         f2yg==
X-Forwarded-Encrypted: i=1; AJvYcCW80fKq51bPrVpsHrSMbtf+UYBOjR9mus/xUgkZkxIlOE/zBrkvhPZeealwa4nl03y62HOBySepaycJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg2zKWOZm4dyo6DUXWwuf6AGM8i7g3CLLnLH/8lXsMjtPT5m69
	0LVfRBTSZJCQHWjaO2I9I51yp7h4n7gNwHof3IaGGO7L+hZGKENUnfgChdbKFNc=
X-Gm-Gg: ASbGncvPyExculwKfQWErcbw9480fF8kQjV/k2+qAWDeINwMEwH1S2rSbLIXsI4pgUE
	+4ZSXj2l9VkOZQZSNSvZpKXtyqTTBhLZIsnTjTMIgg7j6W+tLe50280RlFRfqGqw7L1DWg5vhgG
	MJ8SyFDYncoInFChigHYG2yjHwac6ViBE6QctDKFWEZLNqRscX1EYDdO0TqxVHBoS/bXTvtG7+R
	YMQqNVQ7DVTO9xhlmuaUhwALK2CxhsNa84CAhFWOt0fJZAHtkeYYBDISW2yos/YancCgjAi0IMC
	bxyFIHYSeSLhQYgzM/SPoJBaI2SrxxCt9SjgzVc=
X-Google-Smtp-Source: AGHT+IFlBP477rgVCHrgNMGBD2buLpM6lGssti+V0SS0CJO7phE5XhVuKbKrBYFmOYhtP7rJsh67Hw==
X-Received: by 2002:a05:600c:3aca:b0:42c:b187:bde9 with SMTP id 5b1f17b1804b1-434d0a23a76mr19175165e9.30.1733223688364;
        Tue, 03 Dec 2024 03:01:28 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d0575d29sm16983315e9.1.2024.12.03.03.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:28 -0800 (PST)
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
Subject: [PATCH v5 07/10] iio: adc: ad_sigma_delta: Store information about reset sequence length
Date: Tue,  3 Dec 2024 12:00:27 +0100
Message-ID: <20241203110019.1520071-19-u.kleine-koenig@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6415; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=2HKcFo7TQCrQ4num0VNgfMdjg/saRUqyt2yVyJlKlYY=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTafPehvuD7NanA5CU+zAVsKAUhDZ6URvb5T rJan46pg8iJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k2gAKCRCPgPtYfRL+ TqqHB/4u5YA4lR+TEnBBp4375AW4aaA03VWSP9GUhKuk+Yz1tTpoMlHbw8BhzAAtLrz0/HxbCp1 rokpEGARiU5mlXjo8F4usSD8JCkhtUsXQKNqvZNfM9LWVp5gC1vZ3CqAa41WGHI0iaUglbGd84D ylqrl+dKqxQMqFOdBVYQpl9FDn4/YKHncOv8U8MQ/MHxblVNsvpValKn6GLsE9L90+8nblcfqn6 GWSyUoqTiG1ZB3CDk9PElR+pPCXC9AcnaJfv4WbjE/5cvaObCPxvAXjMWzNA9q9Hf+x2vXWy30/ hAQNMErEjFDxj0D+N5EqHxQdKNp7SunI8Qzd/tdXf++PWdWO
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The various chips can be reset using a sequence of SPI transfers with
MOSI = 1. The length of such a sequence varies from chip to chip. Store
that length in struct ad_sigma_delta_info and replace the respective
parameter to ad_sd_reset() with it.

Note the ad7192 used to pass 48 as length but the documentation
specifies 40 as the required length. Assuming the latter is right.
(Using a too long sequence doesn't hurt apart from using a longer spi
transfer than necessary, so this is no relevant fix.)

The motivation for storing this information is that this is useful to
clear a pending RDY signal in the next change.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c               | 3 ++-
 drivers/iio/adc/ad7173.c               | 1 +
 drivers/iio/adc/ad7192.c               | 4 +++-
 drivers/iio/adc/ad7791.c               | 1 +
 drivers/iio/adc/ad7793.c               | 3 ++-
 drivers/iio/adc/ad_sigma_delta.c       | 5 ++---
 include/linux/iio/adc/ad_sigma_delta.h | 5 +++--
 7 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 1f3342373f1c..b17c3dbeaeba 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -571,6 +571,7 @@ static const struct ad_sigma_delta_info ad7124_sigma_delta_info = {
 	.data_reg = AD7124_DATA,
 	.num_slots = 8,
 	.irq_flags = IRQF_TRIGGER_FALLING,
+	.num_resetclks = 64,
 };
 
 static int ad7124_read_raw(struct iio_dev *indio_dev,
@@ -756,7 +757,7 @@ static int ad7124_soft_reset(struct ad7124_state *st)
 	unsigned int readval, timeout;
 	int ret;
 
-	ret = ad_sd_reset(&st->sd, 64);
+	ret = ad_sd_reset(&st->sd);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/iio/adc/ad7173.c b/drivers/iio/adc/ad7173.c
index 0702ec71aa29..2550194efee8 100644
--- a/drivers/iio/adc/ad7173.c
+++ b/drivers/iio/adc/ad7173.c
@@ -744,6 +744,7 @@ static struct ad_sigma_delta_info ad7173_sigma_delta_info = {
 	.read_mask = BIT(6),
 	.status_ch_mask = GENMASK(3, 0),
 	.data_reg = AD7173_REG_DATA,
+	.num_resetclks = 64,
 };
 
 static int ad7173_setup(struct iio_dev *indio_dev)
diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
index 7042ddfdfc03..c4dd48edd8d9 100644
--- a/drivers/iio/adc/ad7192.c
+++ b/drivers/iio/adc/ad7192.c
@@ -361,6 +361,7 @@ static const struct ad_sigma_delta_info ad7192_sigma_delta_info = {
 	.status_ch_mask = GENMASK(3, 0),
 	.num_slots = 4,
 	.irq_flags = IRQF_TRIGGER_FALLING,
+	.num_resetclks = 40,
 };
 
 static const struct ad_sigma_delta_info ad7194_sigma_delta_info = {
@@ -373,6 +374,7 @@ static const struct ad_sigma_delta_info ad7194_sigma_delta_info = {
 	.read_mask = BIT(6),
 	.status_ch_mask = GENMASK(3, 0),
 	.irq_flags = IRQF_TRIGGER_FALLING,
+	.num_resetclks = 40,
 };
 
 static const struct ad_sd_calib_data ad7192_calib_arr[8] = {
@@ -565,7 +567,7 @@ static int ad7192_setup(struct iio_dev *indio_dev, struct device *dev)
 	int i, ret, id;
 
 	/* reset the serial interface */
-	ret = ad_sd_reset(&st->sd, 48);
+	ret = ad_sd_reset(&st->sd);
 	if (ret < 0)
 		return ret;
 	usleep_range(500, 1000); /* Wait for at least 500us */
diff --git a/drivers/iio/adc/ad7791.c b/drivers/iio/adc/ad7791.c
index 86effe8501b4..c7509b911835 100644
--- a/drivers/iio/adc/ad7791.c
+++ b/drivers/iio/adc/ad7791.c
@@ -254,6 +254,7 @@ static const struct ad_sigma_delta_info ad7791_sigma_delta_info = {
 	.addr_shift = 4,
 	.read_mask = BIT(3),
 	.irq_flags = IRQF_TRIGGER_FALLING,
+	.num_resetclks = 32,
 };
 
 static int ad7791_read_raw(struct iio_dev *indio_dev,
diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
index abebd519cafa..0767c56bb442 100644
--- a/drivers/iio/adc/ad7793.c
+++ b/drivers/iio/adc/ad7793.c
@@ -206,6 +206,7 @@ static const struct ad_sigma_delta_info ad7793_sigma_delta_info = {
 	.addr_shift = 3,
 	.read_mask = BIT(6),
 	.irq_flags = IRQF_TRIGGER_FALLING,
+	.num_resetclks = 32,
 };
 
 static const struct ad_sd_calib_data ad7793_calib_arr[6] = {
@@ -265,7 +266,7 @@ static int ad7793_setup(struct iio_dev *indio_dev,
 		return ret;
 
 	/* reset the serial interface */
-	ret = ad_sd_reset(&st->sd, 32);
+	ret = ad_sd_reset(&st->sd);
 	if (ret < 0)
 		goto out;
 	usleep_range(500, 2000); /* Wait for at least 500us */
diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 9abde276cd17..9891346c2d73 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -178,13 +178,12 @@ EXPORT_SYMBOL_NS_GPL(ad_sd_read_reg, IIO_AD_SIGMA_DELTA);
  * ad_sd_reset() - Reset the serial interface
  *
  * @sigma_delta: The sigma delta device
- * @reset_length: Number of SCLKs with DIN = 1
  *
  * Returns 0 on success, an error code otherwise.
  **/
-int ad_sd_reset(struct ad_sigma_delta *sigma_delta,
-	unsigned int reset_length)
+int ad_sd_reset(struct ad_sigma_delta *sigma_delta)
 {
+	unsigned int reset_length = sigma_delta->info->num_resetclks;
 	uint8_t *buf;
 	unsigned int size;
 	int ret;
diff --git a/include/linux/iio/adc/ad_sigma_delta.h b/include/linux/iio/adc/ad_sigma_delta.h
index f86eca6126b4..eef87d04eb6b 100644
--- a/include/linux/iio/adc/ad_sigma_delta.h
+++ b/include/linux/iio/adc/ad_sigma_delta.h
@@ -54,6 +54,7 @@ struct iio_dev;
  * @irq_flags: flags for the interrupt used by the triggered buffer
  * @num_slots: Number of sequencer slots
  * @irq_line: IRQ for reading conversions. If 0, spi->irq will be used
+ * @num_resetclks: Number of SPI clk cycles with MOSI=1 to reset the chip.
  */
 struct ad_sigma_delta_info {
 	int (*set_channel)(struct ad_sigma_delta *, unsigned int channel);
@@ -70,6 +71,7 @@ struct ad_sigma_delta_info {
 	unsigned long irq_flags;
 	unsigned int num_slots;
 	int irq_line;
+	unsigned int num_resetclks;
 };
 
 /**
@@ -181,8 +183,7 @@ int ad_sd_write_reg(struct ad_sigma_delta *sigma_delta, unsigned int reg,
 int ad_sd_read_reg(struct ad_sigma_delta *sigma_delta, unsigned int reg,
 	unsigned int size, unsigned int *val);
 
-int ad_sd_reset(struct ad_sigma_delta *sigma_delta,
-	unsigned int reset_length);
+int ad_sd_reset(struct ad_sigma_delta *sigma_delta);
 
 int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 	const struct iio_chan_spec *chan, int *val);
-- 
2.45.2


