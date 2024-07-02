Return-Path: <devicetree+bounces-82451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8161292467A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0413B1F236A3
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72AC1CD5CB;
	Tue,  2 Jul 2024 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wjgEClSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE041C8FB2
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719941655; cv=none; b=UpFjdkzHqDdFQ+A+IA2OfLoMIGjGhNfkH8tBOQVPzRR96yFm08MXx7fiUXhNvS+faK1E74wD4J+H2KACirrhHyf6RKm6SNgIlNFP3BQoTyNbeKYPWjV+uv+2K99qKgLCZkaSpNjCEFujLrV9xqtuQusaJA3kP4r/soDazNPAiyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719941655; c=relaxed/simple;
	bh=jsNkkIXGs4/h3lv8BZLIzqEnp8c8kmrQBKCwKtjidUg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vamd4u8qx1CxBR93yASbR/p5Nqfrn6f8TPu0UZbd4k6qO5G1bjF9KjxYnH59x7ln4iSKhjbjY8Vp0ps3NYUc3kqbB2slAlx2bnB/uZrB5F366L1S9IqNB1rOklFVWqgsNbyx9ghg+hHn1YleiEW/t75sjjC8AwEC9Nyc00gNMbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wjgEClSK; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52e93fd8abeso252675e87.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 10:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719941651; x=1720546451; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E8NfF8jZGHkcRRoEHwh26DQAMmLR92lEfTyFLVBd7mk=;
        b=wjgEClSKZUgLm+5X2uffIcPZ8XKSVrPa9StW/UaOK5HuR6isRw6VJz5Abx/rf50QAK
         kXoyWi3gZXDLrOqoXcGEVlQADzT5gdleupF0ljteP8kq3rDZuTH8zQphgZd1z3BvunqE
         amG4Najj73fS73XTLLMMnVCA0nDi+RXZ82kYZDtzRelT5ljnj9cVx3pC2d5/EhEm5N4n
         saRx1qzD+F0MB2TwYFKRfia3C618gHwpIsLwWzJW41EjofybfJNFG1TYpFzI8yr9LsC2
         oPGOhUyASfS+bYAyBzQ1P38qh+ni12suKkDrOHDSdrZ+kJ/0UNmx2bBUMiQ16vnxJ97j
         FiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719941651; x=1720546451;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8NfF8jZGHkcRRoEHwh26DQAMmLR92lEfTyFLVBd7mk=;
        b=cYKnRlByoPToRuiB/pHc8Dw+KnyVpGWkBpDP6XIzQ5OeNQ9+MK43F9bZcgbfD5R39Y
         Ia9UIVGKSg/rowfnNhfeSJcXEYYCoeM8fR+0L0BUPku/3fltlusrot+Py0HmFL9BHymV
         QyTxAako5BZKkwSp0e+rnNaOTqN1SpUrc7ILYpQS9E8EfXuYEghNbVgn7dYtKmsOzaDv
         XtvzfjejNa8rwEGVxzg22n461SFowYFELz3erq1C4ohmLDCoIAQ1+XV/qbaJcDVMTUI+
         iUP770mLrMr72A2RxllwpNAQsKrDsrtAyWKPxtmSEknvEqVYFBT2ZZUrDyP9QJP6wksA
         Nc3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWKPifhAZ7eBiU0gqbbvNKmqSYREmDhDeJ+ziJ1mChZnlUbPaWBJfrCGXPYK/OoDdrEcjMCS6gEee1n56DN83RDtorSq3y6HElOQ==
X-Gm-Message-State: AOJu0YxmWYxbZPAkPB3nMHME5pT3NPf5x3cLNX4WF2M2yFQsQT28QqC9
	WkNxYQ6Af9h2KsloVFWWa7suuN3iFYJtEgWQYFKO0Pp8PiVjWCc4zx+u4nF9ChI=
X-Google-Smtp-Source: AGHT+IGCaZQAPHw7/TMvFuKvssrA/aWcSDKW1tDQD+mxtwBkbk6h746EqKnqbXVQs/kfXAIlS+JTcQ==
X-Received: by 2002:a05:6512:2355:b0:52c:b09e:136d with SMTP id 2adb3069b0e04-52e8268b415mr7979931e87.32.1719941650887;
        Tue, 02 Jul 2024 10:34:10 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm207594485e9.11.2024.07.02.10.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 10:34:10 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 02 Jul 2024 17:34:12 +0000
Subject: [PATCH v3 8/8] iio: adc: ad7606: switch mutexes to scoped_guard
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-cleanup-ad7606-v3-8-57fd02a4e2aa@baylibre.com>
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

Switching to scoped_guard simplifies the code and avoids to take care to
unlock the mutex in case of premature return.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 39 +++++++++++++++------------------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 50ccc245e314..539e4a8621fe 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -69,19 +69,17 @@ static int ad7606_reg_access(struct iio_dev *indio_dev,
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
 
-	mutex_lock(&st->lock);
+	guard(mutex)(&st->lock);
+
 	if (readval) {
 		ret = st->bops->reg_read(st, reg);
 		if (ret < 0)
-			goto err_unlock;
+			return ret;
 		*readval = ret;
-		ret = 0;
+		return 0;
 	} else {
-		ret = st->bops->reg_write(st, reg, writeval);
+		return st->bops->reg_write(st, reg, writeval);
 	}
-err_unlock:
-	mutex_unlock(&st->lock);
-	return ret;
 }
 
 static int ad7606_read_samples(struct ad7606_state *st)
@@ -124,19 +122,19 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
 
-	mutex_lock(&st->lock);
+	guard(mutex)(&st->lock);
 
 	ret = ad7606_read_samples(st);
-	if (ret == 0)
-		iio_push_to_buffers_with_timestamp(indio_dev, st->data,
-						   iio_get_time_ns(indio_dev));
+	if (ret)
+		goto error_ret;
 
+	iio_push_to_buffers_with_timestamp(indio_dev, st->data,
+					   iio_get_time_ns(indio_dev));
+error_ret:
 	iio_trigger_notify_done(indio_dev->trig);
 	/* The rising edge of the CONVST signal starts a new conversion. */
 	gpiod_set_value(st->gpio_convst, 1);
 
-	mutex_unlock(&st->lock);
-
 	return IRQ_HANDLED;
 }
 
@@ -257,19 +255,17 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int i, ret, ch = 0;
 
+	guard(mutex)(&st->lock);
+
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
-		mutex_lock(&st->lock);
 		i = find_closest(val2, st->scale_avail, st->num_scales);
 		if (st->sw_mode_en)
 			ch = chan->address;
 		ret = st->write_scale(indio_dev, ch, i);
-		if (ret < 0) {
-			mutex_unlock(&st->lock);
+		if (ret < 0)
 			return ret;
-		}
 		st->range[ch] = i;
-		mutex_unlock(&st->lock);
 
 		return 0;
 	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
@@ -277,14 +273,9 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 			return -EINVAL;
 		i = find_closest(val, st->oversampling_avail,
 				 st->num_os_ratios);
-		mutex_lock(&st->lock);
 		ret = st->write_os(indio_dev, i);
-		if (ret < 0) {
-			mutex_unlock(&st->lock);
+		if (ret < 0)
 			return ret;
-		}
-		st->oversampling = st->oversampling_avail[i];
-		mutex_unlock(&st->lock);
 
 		return 0;
 	default:

-- 
2.34.1


