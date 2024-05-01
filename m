Return-Path: <devicetree+bounces-64279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0598B8C51
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:57:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BDB91F211C6
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FD2130A51;
	Wed,  1 May 2024 14:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VxX37z4q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D9813048E
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575361; cv=none; b=BIm1nv0d3QndC6taxO6kMwlosG1vl5S+u3ezNna0ukZ78bRrUQ0D/go2El+oUfRMpws+seO9Swm81w4LGpOlZC9GD9KDNkGLik/I3scLDJVwKresusUN5ZsqufAideKM7RSaWXEOMf1EXhcIfSDQO9HpYKlYf9oLupDtOYnjKzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575361; c=relaxed/simple;
	bh=ZNQE99beBwoRSVRXgPiuYKEUKZPVmY+MpjIBueQJo5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L43eFkRvTZqs5HKHOlZIpa1I6QL7WpVrYC/YRljXS8yifU1I5hw6zkbh8aPKoRox4mTv5JzmqG0UcookzXY3yqRcj2wYAsm19HE7v+8BACcg9w8952k3s9wgthTgqlu9PzcUDMeB8UjTp6K5MOyiigwRDZHbY4rhpeIe1KO7dSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VxX37z4q; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2dd64d6fe94so79050811fa.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714575357; x=1715180157; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2SUrAQZGAtrStLGSV72n9ZrFrH3z0Vq+Ea2QpVZsYzA=;
        b=VxX37z4qwmlW0BReVaadVBfJJ0+OGctDYzNwUb/v5Yjo8yHQxYwE7VQFDbfFyHFrGL
         FlfxGZVYibs6P5pVpOm09fh2nTC7uAZwzdodfGec4CR97iAQHgPCB/gW9N0IRileSOSS
         WfpeVX6KhIlpdk8YHROcOmR9/JlKpRKz5uKTK2QsvBCh0F0gwXGHxZoAarksXj1HpP7q
         9I+Igh2zEQR1+0HmLDOhNA3oDukZRX7UR8kjkmtJ0G8BI1bm5TlWOPrq2Rq0R5X5dPnN
         px9ZC3lmD2+ik3kqgonjoDH0MJS4BKqpyRjAum5LHENxwGPMjOblqJGWQ2vdDW1pS8jb
         96zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575357; x=1715180157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2SUrAQZGAtrStLGSV72n9ZrFrH3z0Vq+Ea2QpVZsYzA=;
        b=VLGUOJd31pZZjr14vnDxaRZv1YoLDySbZRHnljopWn+IBIqH1cQZWJVWwc+KzlkBTK
         rTzbM3bShc4BEK/de5uot28Mh+RjC4oJKRrp/onqzON6ZHP1O+2WDMyzo/+qYzrmwfRc
         CNQ/TlxTz6aUGkuj4HCQ1jMNikxeDArqQAePw3/aQhiUrCsAoAk79t/FS5r5O6RrRgoW
         rEekmeZvFxLpDEHDGcVrHI3bmulSNBNvXdnVv3vb/eEJJYOqroiR4cxcEoAjlKkgQe8h
         UW3ymx4b6A0pg+uBe3mrwci7TrfTbNfZKkSNzDQMD3SoRFlJm1x757QAcJkRU5CMJEQF
         1EXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeVbxBK2sDLNDvFnDWQyezVw4Qh7CWDV/lp4hHD1fqmYhG9Nm7Nf+ekSpt3TegNk53rStOC004wKU5XWRfqgIYh8LJy2wZTL+eBA==
X-Gm-Message-State: AOJu0Yw61KUh7EFRFw1EgosomBagwIFF4J6Z7LFKH67xt0Sm8nJ5Lj3l
	MJAT+eF8H6woRLE4eAAoWe23VWPBmMcMymGMacd8dTuZRk8rMRN3YT97gIUKj8U=
X-Google-Smtp-Source: AGHT+IEv9sPD9F1hPTXXzQtVy0YeCQSCcJgq28A1F/hSj8DUSPiVAnVdblnxCwk7HLdQcWPj9V/HWQ==
X-Received: by 2002:a05:651c:2110:b0:2e1:b0e3:21f with SMTP id a16-20020a05651c211000b002e1b0e3021fmr183264ljq.40.1714575357402;
        Wed, 01 May 2024 07:55:57 -0700 (PDT)
Received: from [192.168.1.61] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b00418a386c17bsm2422999wms.12.2024.05.01.07.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:55:57 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 01 May 2024 16:55:40 +0200
Subject: [PATCH RFC v6 07/10] iio: adc: ad7380: add support for ad738x-4 4
 channels variants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-adding-new-ad738x-driver-v6-7-3c0741154728@baylibre.com>
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

Add support for ad7380/1/2/3-4 parts which are 4 channels
variants from ad7380/1/2/3

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/iio/adc/ad7380.c | 77 ++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 75 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index 201006d878f1..020959759170 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -8,6 +8,9 @@
  * Datasheets of supported parts:
  * ad7380/1 : https://www.analog.com/media/en/technical-documentation/data-sheets/AD7380-7381.pdf
  * ad7383/4 : https://www.analog.com/media/en/technical-documentation/data-sheets/ad7383-7384.pdf
+ * ad7380-4 : https://www.analog.com/media/en/technical-documentation/data-sheets/ad7380-4.pdf
+ * ad7381-4 : https://www.analog.com/media/en/technical-documentation/data-sheets/ad7381-4.pdf
+ * ad7383/4-4 : https://www.analog.com/media/en/technical-documentation/data-sheets/ad7383-4-ad7384-4.pdf
  */
 
 #include <linux/bitfield.h>
@@ -29,7 +32,7 @@
 #include <linux/iio/trigger_consumer.h>
 #include <linux/iio/triggered_buffer.h>
 
-#define MAX_NUM_CHANNELS		2
+#define MAX_NUM_CHANNELS		4
 /* 2.5V internal reference voltage */
 #define AD7380_INTERNAL_REF_MV		2500
 
@@ -106,27 +109,53 @@ static const struct iio_chan_spec name[] = {		\
 	IIO_CHAN_SOFT_TIMESTAMP(2),			\
 }
 
+#define DEFINE_AD7380_4_CHANNEL(name, bits, diff)	\
+static const struct iio_chan_spec name[] = {		\
+	AD7380_CHANNEL(0, bits, diff),			\
+	AD7380_CHANNEL(1, bits, diff),			\
+	AD7380_CHANNEL(2, bits, diff),			\
+	AD7380_CHANNEL(3, bits, diff),			\
+	IIO_CHAN_SOFT_TIMESTAMP(4),			\
+}
+
 /* fully differential */
 DEFINE_AD7380_2_CHANNEL(ad7380_channels, 16, 1);
 DEFINE_AD7380_2_CHANNEL(ad7381_channels, 14, 1);
+DEFINE_AD7380_4_CHANNEL(ad7380_4_channels, 16, 1);
+DEFINE_AD7380_4_CHANNEL(ad7381_4_channels, 14, 1);
 /* pseudo differential */
 DEFINE_AD7380_2_CHANNEL(ad7383_channels, 16, 0);
 DEFINE_AD7380_2_CHANNEL(ad7384_channels, 14, 0);
+DEFINE_AD7380_4_CHANNEL(ad7383_4_channels, 16, 0);
+DEFINE_AD7380_4_CHANNEL(ad7384_4_channels, 14, 0);
 
 static const char * const ad7380_2_channel_vcm_supplies[] = {
 	"aina", "ainb",
 };
 
+static const char * const ad7380_4_channel_vcm_supplies[] = {
+	"aina", "ainb", "ainc", "aind",
+};
+
 /* Since this is simultaneous sampling, we don't allow individual channels. */
 static const unsigned long ad7380_2_channel_scan_masks[] = {
 	GENMASK(1, 0),
 	0
 };
 
+static const unsigned long ad7380_4_channel_scan_masks[] = {
+	GENMASK(3, 0),
+	0
+};
+
 static const struct ad7380_timing_specs ad7380_timing = {
 	.t_csh_ns = 10,
 };
 
+static const struct ad7380_timing_specs ad7380_4_timing = {
+	.t_csh_ns = 20,
+};
+
 static const struct ad7380_chip_info ad7380_chip_info = {
 	.name = "ad7380",
 	.channels = ad7380_channels,
@@ -163,6 +192,42 @@ static const struct ad7380_chip_info ad7384_chip_info = {
 	.timing_specs = &ad7380_timing,
 };
 
+static const struct ad7380_chip_info ad7380_4_chip_info = {
+	.name = "ad7380-4",
+	.channels = ad7380_4_channels,
+	.num_channels = ARRAY_SIZE(ad7380_4_channels),
+	.available_scan_masks = ad7380_4_channel_scan_masks,
+	.timing_specs = &ad7380_4_timing,
+};
+
+static const struct ad7380_chip_info ad7381_4_chip_info = {
+	.name = "ad7381-4",
+	.channels = ad7381_4_channels,
+	.num_channels = ARRAY_SIZE(ad7381_4_channels),
+	.available_scan_masks = ad7380_4_channel_scan_masks,
+	.timing_specs = &ad7380_4_timing,
+};
+
+static const struct ad7380_chip_info ad7383_4_chip_info = {
+	.name = "ad7383-4",
+	.channels = ad7383_4_channels,
+	.num_channels = ARRAY_SIZE(ad7383_4_channels),
+	.vcm_supplies = ad7380_4_channel_vcm_supplies,
+	.num_vcm_supplies = ARRAY_SIZE(ad7380_4_channel_vcm_supplies),
+	.available_scan_masks = ad7380_4_channel_scan_masks,
+	.timing_specs = &ad7380_4_timing,
+};
+
+static const struct ad7380_chip_info ad7384_4_chip_info = {
+	.name = "ad7384-4",
+	.channels = ad7384_4_channels,
+	.num_channels = ARRAY_SIZE(ad7384_4_channels),
+	.vcm_supplies = ad7380_4_channel_vcm_supplies,
+	.num_vcm_supplies = ARRAY_SIZE(ad7380_4_channel_vcm_supplies),
+	.available_scan_masks = ad7380_4_channel_scan_masks,
+	.timing_specs = &ad7380_4_timing,
+};
+
 struct ad7380_state {
 	const struct ad7380_chip_info *chip_info;
 	struct spi_device *spi;
@@ -174,7 +239,7 @@ struct ad7380_state {
 	 * transfer buffers to live in their own cache lines.
 	 * Make the buffer large enough for MAX_NUM_CHANNELS 16-bit samples and one 64-bit
 	 * aligned 64 bit timestamp.
-	 * As MAX_NUM_CHANNELS is 2 the layout of the structure is the same for all parts
+	 * As MAX_NUM_CHANNELS is 4 the layout of the structure is the same for all parts
 	 */
 	struct {
 		u16 raw[MAX_NUM_CHANNELS];
@@ -517,6 +582,10 @@ static const struct of_device_id ad7380_of_match_table[] = {
 	{ .compatible = "adi,ad7381", .data = &ad7381_chip_info },
 	{ .compatible = "adi,ad7383", .data = &ad7383_chip_info },
 	{ .compatible = "adi,ad7384", .data = &ad7384_chip_info },
+	{ .compatible = "adi,ad7380-4", .data = &ad7380_4_chip_info },
+	{ .compatible = "adi,ad7381-4", .data = &ad7381_4_chip_info },
+	{ .compatible = "adi,ad7383-4", .data = &ad7383_4_chip_info },
+	{ .compatible = "adi,ad7384-4", .data = &ad7384_4_chip_info },
 	{ }
 };
 
@@ -525,6 +594,10 @@ static const struct spi_device_id ad7380_id_table[] = {
 	{ "ad7381", (kernel_ulong_t)&ad7381_chip_info },
 	{ "ad7383", (kernel_ulong_t)&ad7383_chip_info },
 	{ "ad7384", (kernel_ulong_t)&ad7384_chip_info },
+	{ "ad7380-4", (kernel_ulong_t)&ad7380_4_chip_info },
+	{ "ad7381-4", (kernel_ulong_t)&ad7381_4_chip_info },
+	{ "ad7383-4", (kernel_ulong_t)&ad7383_4_chip_info },
+	{ "ad7384-4", (kernel_ulong_t)&ad7384_4_chip_info },
 	{ }
 };
 MODULE_DEVICE_TABLE(spi, ad7380_id_table);

-- 
2.44.0


