Return-Path: <devicetree+bounces-108009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACCB9911C0
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 23:50:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0033B21393
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 21:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7F61D95B8;
	Fri,  4 Oct 2024 21:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1/KfVxdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BCD1D90DD
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 21:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728078542; cv=none; b=S1S8/CnuuKLNwgpBQbBxv2fgPhl4y+1/ltDOxsZcnc34vGpjNoct11HyuIHxfVkxe2RqMa3pm3Qo+TTc6tLxraGvZpsY0XTFivF08f4nCRltICLQbLRVHemznr6uDBGVCZcduJyDPqBKy8azRwDVHmwDt2URoBw6HjOh3pD6I60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728078542; c=relaxed/simple;
	bh=xHVL9hFRnsVwqhbglw04wIIXIdpeMmNkgRFma7ACntE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZSdQq05c//omH0Zq00zndzE1KDuc/qu0vmYotV1N3kpfqKWHjz/KkEzUfCJyAPDknnZ5DGoDiLVTUjY23sop8YQRr7gPncVlxSOoDQwyfBaWa2ZaGjaemmwTPAJV/6Xlu5OCXVJ/ZOznBbTIYLeMo7GsqwNkQRHM1oH7ObAtcIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1/KfVxdJ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42cb8dac900so25237875e9.3
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 14:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728078537; x=1728683337; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pV8pjeJyvz9NA6GV4WH7O2OYuFeF2Ofuw4iAW9WvmE=;
        b=1/KfVxdJ3jVHUlBfppMqF8SxWhiWOiAZT+PNtBrije4Oy2tUr4TMiZlx+lboUjg9zH
         wxJwJDJfBqOvMg2H2ux0w8EAuc5VGtHmCMu59d79WQB71CwJAh0HlSt6T2ODk4JTYMxV
         e35XjnkLIAEoYIW3lCq3p3Ir75h3gB/yquoUHDZqczQHlDwjd9w/JKLbN1AEQC7eHj8C
         a8RImoMRGIW+glmDhao4T0LXDqnoH9jLNg25iXpALr6sRW/kdz29V7D0jQmE5/dubDcT
         dbyEv2WXBFnhsdHyKz7EJQL4VKHHCeWYexwzZR7b/JnPtBfXjVISAjrSVMDVtmUQ5fqH
         wsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728078537; x=1728683337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pV8pjeJyvz9NA6GV4WH7O2OYuFeF2Ofuw4iAW9WvmE=;
        b=h4FoSjyqcIJbqDJBXWz2HyA98qylIXubxBZ3UHCGLF0l9oSC6zH3ESN5Sit80tOXTJ
         C0aoBbz9awJbu5+3sZaMekpS/ftx+HZngSFDVgT1yAAJWtr1czAbibga4D6hKKfVA50Z
         izvILKk4ahuI1mtf5AwXDTLYojsVdyW30PU7oZJhQpfjnqaxRnAaJBjVSKexqDKxiL+w
         UpIeg2rMRXNXbzg8xexoulSa3/daYzGk0FnPunEqQRPPAj7yqtRm1OXpb8VB7zuuObj3
         31hFsB1rk7OLNkgf43KPIziiYs16Jk2Yg37u2Z6vxCwsrWkosaa4fz0ar/c+1ClI66YP
         C/oA==
X-Forwarded-Encrypted: i=1; AJvYcCVj/P9WqOy7p+Ts0OQdpcJHnaSovaSPWPXzkpHYi755bBqvo3Ah0yf78xjCIy+HSvZuC4+ihN8DfnlR@vger.kernel.org
X-Gm-Message-State: AOJu0YwC2WcOs9c+4OvSUYCdjOSJuWeQ1Do+JZrJ69eriUhuDpO+WVXG
	coirBagHHVoiff0QsVt7gUbeRGqxkGLiyZqEdg5Y0BPjRMsm3VLz9PNlUoKz2JQMJpdWKjsp3vM
	a
X-Google-Smtp-Source: AGHT+IEuT5WXwIfQvFrNf8W7Eyb8KSoPFUu30QIc4rYFsFcc2F865b9R98ARtOzbGbmc6+QJtwwXJQ==
X-Received: by 2002:a05:600c:1e04:b0:42c:df54:18ec with SMTP id 5b1f17b1804b1-42f85ae90a5mr30952315e9.28.1728078537149;
        Fri, 04 Oct 2024 14:48:57 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f86b4ab63sm24680375e9.40.2024.10.04.14.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 14:48:56 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 04 Oct 2024 21:48:42 +0000
Subject: [PATCH v3 08/10] iio: adc: ad7606: Introduce num_adc_channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241004-ad7606_add_iio_backend_support-v3-8-38757012ce82@baylibre.com>
References: <20241004-ad7606_add_iio_backend_support-v3-0-38757012ce82@baylibre.com>
In-Reply-To: <20241004-ad7606_add_iio_backend_support-v3-0-38757012ce82@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 aardelean@baylibre.com, dlechner@baylibre.com, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728078523; l=4625;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=xHVL9hFRnsVwqhbglw04wIIXIdpeMmNkgRFma7ACntE=;
 b=HWtQ4Rbfr4rMrWvXXCRwlOWpd809HtkywgIKDMU2hLnEDQGQSDGgUrgUf1Zu0m2TfBFXeCaEz
 4F6rv8pYXYbD9lqyUccTndw0VHq2O+D1qX89k19LL4gZd6MDsejjYeg
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

This variable determines how many hardware channels has the chip,
oppositely to the num_channels that can contain more channels, e.g a
timestamp channel in our case. Introducing this variable avoids
decreasing the former num_channels variable when reading the ADC's
channels, and clarifies a bit the code.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 10 +++++++++-
 drivers/iio/adc/ad7606.h |  2 ++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 612e6d9f57ed..3666a58f8a6f 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -150,6 +150,7 @@ static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st,
 const struct ad7606_chip_info ad7605_4_info = {
 	.channels = ad7605_channels,
 	.name = "ad7605-4",
+	.num_adc_channels = 4,
 	.num_channels = 5,
 	.scale_setup_cb = ad7606_16bit_chan_scale_setup,
 };
@@ -158,6 +159,7 @@ EXPORT_SYMBOL_NS_GPL(ad7605_4_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606_8_info = {
 	.channels = ad7606_channels_16bit,
 	.name = "ad7606-8",
+	.num_adc_channels = 8,
 	.num_channels = 9,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -168,6 +170,7 @@ EXPORT_SYMBOL_NS_GPL(ad7606_8_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606_6_info = {
 	.channels = ad7606_channels_16bit,
 	.name = "ad7606-6",
+	.num_adc_channels = 6,
 	.num_channels = 7,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -178,6 +181,7 @@ EXPORT_SYMBOL_NS_GPL(ad7606_6_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606_4_info = {
 	.channels = ad7606_channels_16bit,
 	.name = "ad7606-4",
+	.num_adc_channels = 4,
 	.num_channels = 5,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -188,6 +192,7 @@ EXPORT_SYMBOL_NS_GPL(ad7606_4_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606b_info = {
 	.channels = ad7606_channels_16bit,
 	.name = "ad7606b",
+	.num_adc_channels = 8,
 	.num_channels = 9,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -198,6 +203,7 @@ EXPORT_SYMBOL_NS_GPL(ad7606b_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606c_16_info = {
 	.channels = ad7606_channels_16bit,
 	.name = "ad7606c16",
+	.num_adc_channels = 8,
 	.num_channels = 9,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -208,6 +214,7 @@ EXPORT_SYMBOL_NS_GPL(ad7606c_16_info, IIO_AD7606);
 const struct ad7606_chip_info ad7606c_18_info = {
 	.channels = ad7606_channels_18bit,
 	.name = "ad7606c18",
+	.num_adc_channels = 8,
 	.num_channels = 9,
 	.oversampling_avail = ad7606_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7606_oversampling_avail),
@@ -219,6 +226,7 @@ const struct ad7606_chip_info ad7616_info = {
 	.channels = ad7616_channels,
 	.init_delay_ms = 15,
 	.name = "ad7616",
+	.num_adc_channels = 16,
 	.num_channels = 17,
 	.oversampling_avail = ad7616_oversampling_avail,
 	.oversampling_num = ARRAY_SIZE(ad7616_oversampling_avail),
@@ -528,7 +536,7 @@ static int ad7606_set_sampling_freq(struct ad7606_state *st, unsigned long freq)
 
 static int ad7606_read_samples(struct ad7606_state *st)
 {
-	unsigned int num = st->chip_info->num_channels - 1;
+	unsigned int num = st->chip_info->num_adc_channels;
 
 	return st->bops->read_block(st->dev, num, &st->data);
 }
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index d401d3ab37e0..b26a11b2eba1 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -71,6 +71,7 @@ typedef int (*ad7606_scale_setup_cb_t)(struct ad7606_state *st,
  * @channels:		channel specification
  * @name		device name
  * @num_channels:	number of channels
+ * @num_adc_channels	the number of channels the ADC actually inputs.
  * @scale_setup_cb:	callback to setup the scales for each channel
  * @oversampling_avail	pointer to the array which stores the available
  *			oversampling ratios.
@@ -82,6 +83,7 @@ typedef int (*ad7606_scale_setup_cb_t)(struct ad7606_state *st,
 struct ad7606_chip_info {
 	const struct iio_chan_spec	*channels;
 	const char			*name;
+	unsigned int			num_adc_channels;
 	unsigned int			num_channels;
 	ad7606_scale_setup_cb_t		scale_setup_cb;
 	const unsigned int		*oversampling_avail;

-- 
2.34.1


