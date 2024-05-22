Return-Path: <devicetree+bounces-68429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FB48CC3BA
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 17:03:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5D511F233BF
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 15:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B6155E73;
	Wed, 22 May 2024 15:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L5rWursz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FCA3A1A2
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716390176; cv=none; b=UvfgxdR3yUZX1I7azwc69aDkkhZhkcfO3iabWkzOogt3RIK1odR/eBOPij8QmLPjPWRoJJbwOCqYrekhInWZIeTPnenCpoCDoD/0vNpGHo7IxSoyD738XcnWdg6tJrSuKL5LitraI7Oic6c+ssyiXhaCdFFOD5oVbE8ML+rBQ40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716390176; c=relaxed/simple;
	bh=Py0dfBh0rk9cPcnRmp0ehNdFKbMfxplFlghi6OJqfoQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vgvvhamg3M5XrM3NmDKyc3lUZe4P4zZ/FFhuhYcpfb0d760GC88aX1yIqrodbrpc9vy8k/hcMAYdEyJMBrL8HJg2LxO52BCMS02/rf3Oi/2DlAnkTZgMZp4usMCbAgRmIjvRtjkeyxa+0MQZX75kwt/5TczdvHR8EecPgGlUq7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L5rWursz; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4202959b060so42692745e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 08:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716390173; x=1716994973; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgUsIx8ed6TkRFD72RRzx4QHPjFX183C6Bw53EkwCkQ=;
        b=L5rWurszqzxYQwhes2g9I1RNhiaxxtLds2nsxBjFKwsHHWaJbRlMpIVF2IwPbdTKT3
         6thZaFKx533JoaLrRRSpmr/lDEWJYEK2Z4tJMiXJEh2oSCeZNNJWNdWYKz/uVO2qsDHO
         Nc/F6P0Yuk2/nUkzqhNuvHjeFiKRqUno8xYm3qBbpofsErcJ+oclwQZBOnIxGec0r9T2
         Qg3aUgWmLoqIAewNBvZhnQsRQkG5wtP7SUXmDUoB0qgfeLbw8gMCeyoDbAg8pcYBnCjg
         PzIC7R7e4XmWiXq93I7drPducJN2AHtxumERzV8GUCIS3DKh+ggTENCAuJA4Hd7njY4i
         8E8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716390173; x=1716994973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgUsIx8ed6TkRFD72RRzx4QHPjFX183C6Bw53EkwCkQ=;
        b=XAYKCQgFGMcKZMD7lxhCD0cZ5/11rhKV+CgK7EPaTOIW/UGq8ZsHpGAPa/4cwbuiqh
         3DO8xixEAwcQ1cSykk7b1UqgmBhmydaCrZTAgodiDuUL/QfoHZ3j78FjUlgjX3wOm5VV
         bXu1pdMnTY83mdQWGAbDKJjAmNBXbqy/sXnt4mvdQPHzOXHaYcBuXRhH4Y1r2Jm59w3U
         4+KmJ6+/L9eiDeGWfgXTox6GbO+rGLapVTpjPotc/t77UoYshb0SXaM7tswKFdrcijGz
         oQ1GgSSd0PYkB6tr98f8L+rQntIfMCn2f0wYiduOeTnIWTUalrpLV9qgzYkAzt7nnW5x
         UbXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1duZMFw2RNoAuYavY5ynEAPHj9KBkz14grfjXk8stAFDF4iPZkYAXIJmxd+6IH2Ob68y3nBN3EgloKa0uvckGms58yW/hLJDpxg==
X-Gm-Message-State: AOJu0Yyvzw3K1u7Iwl0kttd8nqseqdWbjJzXUUxP809l9e+sCQxPZu3O
	vCiB131vVjs4ozq0wo7JIULw65P/2pKbCj9Rndk8f6RhQtHyHYjQbbVKfMl2ma8=
X-Google-Smtp-Source: AGHT+IHyCHYYNmWWzpXhjpvsTTR8VSofZM1SnOjDCgrzbQXarHAbXHu4Sn+m+jj6ZJiPmf0ndNgQ8Q==
X-Received: by 2002:a7b:cb44:0:b0:41b:8660:c530 with SMTP id 5b1f17b1804b1-420fd2d9c25mr16731045e9.5.1716390173171;
        Wed, 22 May 2024 08:02:53 -0700 (PDT)
Received: from localhost.localdomain (host-79-16-6-145.retail.telecomitalia.it. [79.16.6.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fa90e93absm531370515e9.9.2024.05.22.08.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 08:02:52 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: nuno.sa@analog.com,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Angelo Dureghello <adureghello@baylibre.com>
Subject: [PATCH v2 4/6] iio: dac: ad3552r: add support for ad3541r and ad3551r
Date: Wed, 22 May 2024 17:01:39 +0200
Message-ID: <20240522150141.1776196-5-adureghello@baylibre.org>
X-Mailer: git-send-email 2.45.0.rc1
In-Reply-To: <20240522150141.1776196-1-adureghello@baylibre.org>
References: <20240522150141.1776196-1-adureghello@baylibre.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Angelo Dureghello <adureghello@baylibre.com>

Add support for single-output DAC variants.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Changes for v2:
- adding new models using model data structure.
---
 drivers/iio/dac/ad3552r.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/iio/dac/ad3552r.c b/drivers/iio/dac/ad3552r.c
index 6a40c7eece1f..b4630fb89334 100644
--- a/drivers/iio/dac/ad3552r.c
+++ b/drivers/iio/dac/ad3552r.c
@@ -140,7 +140,9 @@ enum ad3552r_ch_vref_select {
 };
 
 enum ad3542r_id {
+	AD3541R_ID = 0x400b,
 	AD3542R_ID = 0x4009,
+	AD3551R_ID = 0x400a,
 	AD3552R_ID = 0x4008,
 };
 
@@ -1105,6 +1107,15 @@ static int ad3552r_probe(struct spi_device *spi)
 	return devm_iio_device_register(&spi->dev, indio_dev);
 }
 
+static const struct ad3552r_model_data ad3541r_model_data = {
+	.model_name = "ad3541r",
+	.chip_id = AD3541R_ID,
+	.num_hw_channels = 1,
+	.ranges_table = ad3542r_ch_ranges,
+	.num_ranges = ARRAY_SIZE(ad3542r_ch_ranges),
+	.requires_output_range = true,
+};
+
 static const struct ad3552r_model_data ad3542r_model_data = {
 	.model_name = "ad3542r",
 	.chip_id = AD3542R_ID,
@@ -1114,6 +1125,15 @@ static const struct ad3552r_model_data ad3542r_model_data = {
 	.requires_output_range = true,
 };
 
+static const struct ad3552r_model_data ad3551r_model_data = {
+	.model_name = "ad3551r",
+	.chip_id = AD3551R_ID,
+	.num_hw_channels = 1,
+	.ranges_table = ad3552r_ch_ranges,
+	.num_ranges = ARRAY_SIZE(ad3552r_ch_ranges),
+	.requires_output_range = false,
+};
+
 static const struct ad3552r_model_data ad3552r_model_data = {
 	.model_name = "ad3552r",
 	.chip_id = AD3552R_ID,
@@ -1124,10 +1144,18 @@ static const struct ad3552r_model_data ad3552r_model_data = {
 };
 
 static const struct spi_device_id ad3552r_id[] = {
+	{
+		.name = "ad3541r",
+		.driver_data = (kernel_ulong_t)&ad3541r_model_data
+	},
 	{
 		.name = "ad3542r",
 		.driver_data = (kernel_ulong_t)&ad3542r_model_data
 	},
+	{
+		.name = "ad3551r",
+		.driver_data = (kernel_ulong_t)&ad3551r_model_data
+	},
 	{
 		.name = "ad3552r",
 		.driver_data = (kernel_ulong_t)&ad3552r_model_data
@@ -1137,7 +1165,9 @@ static const struct spi_device_id ad3552r_id[] = {
 MODULE_DEVICE_TABLE(spi, ad3552r_id);
 
 static const struct of_device_id ad3552r_of_match[] = {
+	{ .compatible = "adi,ad3541r", .data = &ad3541r_model_data },
 	{ .compatible = "adi,ad3542r", .data = &ad3542r_model_data },
+	{ .compatible = "adi,ad3551r", .data = &ad3551r_model_data },
 	{ .compatible = "adi,ad3552r", .data = &ad3552r_model_data },
 	{ }
 };
-- 
2.45.0.rc1


