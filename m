Return-Path: <devicetree+bounces-82450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D091924678
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60BBA1C212CD
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7831CCCD9;
	Tue,  2 Jul 2024 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="svL4kTXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46B51C0DEA
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 17:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941655; cv=none; b=U8jZL+RFPVczDJHDL0w0WpTJTmpCQfem44qIKcTI2GBdt5dzWEv+nwLwqCEso7MY/1I3kPIF1xHv3bEvPBpmFWmS4exHNMkvZCe1ovtAbsSv7MpKcexkKe4yXJ9cC+TW2hxylqnCy1QHsu0t1Nhqg5DhTIx4DCR1Z5gbIhDUyuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941655; c=relaxed/simple;
	bh=+tapIW5xMEMTE9vSs0hYWkwNQRRONWz74WVOg6rVMnE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YETmtlUrz1PJnMd1SN7S55mHeepHCjeEW0bewLmdEgRdAp8nr4rB0Khxse5khZrzFL7x8OhXGeqKBKJWkcMq1LoltGO1K8fqPpaD3s2EpKexCcBC2lNdZ4+Y4xGSZ0PNH6eYlhmT0iLKMVG3MXGQtL33GaguTRrSDCyXWEuDlJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=svL4kTXc; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-425624255f3so27558765e9.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 10:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719941650; x=1720546450; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iYOb3cXloM7JPnPejGsCNHK/CDwXTFwHzLHb3/a7qrs=;
        b=svL4kTXcPOQ9HPCJ3Xp0NAJEsOuZVPfLRyOAMLjPjEaUjFowOymTlyXzxtdSE4+pQ2
         XFfjnZSuNjeoiP4z6JQExroqoVw1VCkW1sb+A41j8cTp17lN5LaM9oY8zEdBiLA+xov7
         LcgwmBWgQKXaEm+zHRwsTpBXVcLaRmMmlc/tLo4Y77a9FVLYJDSQLOJwPDFBTlfTPMCa
         UK8IWdqXS/+zUWQXXjPiNObYDFcUl/Tfnsx6dnyrZhiLl4ySc73QtT4j5/1wnkpSBCrY
         NelVVL/dWhhd1AhsABv9fMBhGBc1BqovDozxd1OS/0GOunqEU802FHzfDHHa96O5uDzO
         t2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719941650; x=1720546450;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYOb3cXloM7JPnPejGsCNHK/CDwXTFwHzLHb3/a7qrs=;
        b=HKd38nrohqxo+2nSCMyB1xIcmqXANvNjJ6WqiflH8MzObK7icmtHUw2a9dnTr4b1oo
         oakBMe7XYIGRjMVQPM2qHydKfBjImtTJ751zhnsht8OJNd/gTfFlrkyRLKjR3bnGQqQ4
         c2qtEmFatoMWvjCpkjGeQExPMOOd5wvo8th2QEyWR219cxgYEPqQjofod2R6AdUhsfLY
         WO4wBS7QPUHGCaKcjI2xnThTPvvr9WtacP4euZjk6NHHxZ7K73riRklevOAFy/tRZCFD
         kYk7lymoXWCEz88z/MtrK5Ndxtaz80//4DiYesSfHgDuJAeK8kbwiOf9rQo9aKboSiYs
         +ABw==
X-Forwarded-Encrypted: i=1; AJvYcCWRlxVv+rEgNF7gLkchUVLR8zVrAa3fZomBS9kyVk7E6l3O7EvO7MfXCOV5JUXLpEf6o+17X6huKCqpBhNgBGhcua7TAwDFmUdFeQ==
X-Gm-Message-State: AOJu0Yy+D5Qti/Pet/8S46XLucx+ojGKsXxX0T3BiCY4qm6wPYHTiwVN
	3huH8S0JQ0JMUOPtiUD5R2PLE6jiPhyQD1bQD47hkd9TmYF5UeQuV4+jxinvGvc=
X-Google-Smtp-Source: AGHT+IF0v1A2YXGjxPVTBkzc5mncwxy/ANzmwUqXjG1c/rtrcB9CkyYZtIAM9w096E4U3MvbXg0WUQ==
X-Received: by 2002:a05:600c:1d20:b0:424:a823:51d8 with SMTP id 5b1f17b1804b1-4256d4fb273mr110670415e9.11.1719941649848;
        Tue, 02 Jul 2024 10:34:09 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm207594485e9.11.2024.07.02.10.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 10:34:09 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 02 Jul 2024 17:34:10 +0000
Subject: [PATCH v3 6/8] iio: adc: ad7606: fix oversampling gpio array
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-cleanup-ad7606-v3-6-57fd02a4e2aa@baylibre.com>
References: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
In-Reply-To: <20240702-cleanup-ad7606-v3-0-57fd02a4e2aa@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com, 
 dlechner@baylibre.com
X-Mailer: b4 0.14.0

gpiod_set_array_value was misused here: the implementation relied on the
assumption that an unsigned long was required for each gpio, while the
function expects a bit array stored in "as much unsigned long as needed
for storing one bit per GPIO", i.e it is using a bit field.

This leaded to incorrect parameter passed to gpiod_set_array_value, that
would set 1 value instead of 3.
It also prevents to select the software mode correctly for the AD7606B.

Fixes: d2a415c86c6b ("iio: adc: ad7606: Add support for AD7606B ADC")
Fixes: 41f71e5e7daf ("staging: iio: adc: ad7606: Use find_closest() macro")
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c     | 4 ++--
 drivers/iio/adc/ad7606_spi.c | 5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 3a417595294f..8cce1fad9763 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -236,9 +236,9 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 	struct ad7606_state *st = iio_priv(indio_dev);
 	DECLARE_BITMAP(values, 3);
 
-	values[0] = val;
+	values[0] = val & GENMASK(2, 0);
 
-	gpiod_set_array_value(ARRAY_SIZE(values), st->gpio_os->desc,
+	gpiod_set_array_value(st->gpio_os->ndescs, st->gpio_os->desc,
 			      st->gpio_os->info, values);
 
 	/* AD7616 requires a reset to update value */
diff --git a/drivers/iio/adc/ad7606_spi.c b/drivers/iio/adc/ad7606_spi.c
index 263a778bcf25..287a0591533b 100644
--- a/drivers/iio/adc/ad7606_spi.c
+++ b/drivers/iio/adc/ad7606_spi.c
@@ -249,8 +249,9 @@ static int ad7616_sw_mode_config(struct iio_dev *indio_dev)
 static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
-	unsigned long os[3] = {1};
+	DECLARE_BITMAP(os, 3);
 
+	bitmap_fill(os, 3);
 	/*
 	 * Software mode is enabled when all three oversampling
 	 * pins are set to high. If oversampling gpios are defined
@@ -258,7 +259,7 @@ static int ad7606B_sw_mode_config(struct iio_dev *indio_dev)
 	 * otherwise, they must be hardwired to VDD
 	 */
 	if (st->gpio_os) {
-		gpiod_set_array_value(ARRAY_SIZE(os),
+		gpiod_set_array_value(st->gpio_os->ndescs,
 				      st->gpio_os->desc, st->gpio_os->info, os);
 	}
 	/* OS of 128 and 256 are available only in software mode */

-- 
2.34.1


