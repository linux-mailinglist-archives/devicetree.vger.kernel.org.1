Return-Path: <devicetree+bounces-100299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C94596D1F6
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBE731F26F0C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626B7194AD6;
	Thu,  5 Sep 2024 08:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JwPGn4g8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A17193422
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725524656; cv=none; b=dIrsN3yU12W6o637DjydJ63QC58tUfGgYacgM2HRHnElUWOgHGXwrnL2jZZRAcLhhSvyX3cykKykrRRdKzzODrORxO30zXJdmUa7IhE7xAh46WQ3EoxgLMY/5McyMgjJLlxzmMFglIAcd4TpxdIvnH1LrcUiB+P9wb8CJyqL2IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725524656; c=relaxed/simple;
	bh=IXqmhsQDt/RO+GElC8x8ywqYUr/3SWcgPZP7XLJrRH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jcBwtHCNx6DrXM727KURqdiijx3v2GTDBSIieJVJAAu/IjBi+9wsiGY6xvvBvrk7P2HQRAuy47TRHpT9B6iz3SCGVs0x5l8J/ei6tOdTSXiCoW3Xet3VrxhEdmM06pUyYeBEF7/WCk1d7hfzlhEo1O/b7Um1dlJVT43NnqDU8Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JwPGn4g8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a83597ce5beso81120666b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725524652; x=1726129452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=JwPGn4g8GeYDVKv4b9DldZ9DFTgVI+yaQ8IiL2Awq4e429XdqnSApH+1z+5Yl9yHBJ
         gNgSwD+tVZMvuwXgUePP55VFBuUyX8ZwpjWDGbh9+GKMjEVU5h9m45we+pQdMTtoVF6d
         YoJLlRq+fD1NslByFHgQ74eanGKPUeExnxrSX2o+i4KZX5Clh5ggKgnv6WB8U6jihynt
         dKzSGwf3pfcnUQpdEESR1WgUb1GwRI0H89yQH1/in3yiGPkbsov+6O9eSLmltuV7uqzj
         N6Ps3UuhSFyDcJe/6zQzwdbUyuUZcO8wA4amCJISJPcBj4QoVFuwc+YI4SiIb8aZG9K+
         wf4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725524652; x=1726129452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=HKqq7wHFtg8tA2D2+AqxrufbiHdodDc7a4lRgxBvR+Ae5BW0+3YckL3Qw/8VgfzuBo
         O7xL1FCcWkXrAA4r7XJzWt5w5VtFs8UHlUdT+KccZ7oCIzD7t0FJkrP6cI/1HD90XP8Y
         y/+hmvkHh+CQ5dIkXYU8POOtpDaILdqzYfB2LIuD55o/hNgZAzhEfwemqNM1YnYfMDcD
         3OdFunsrM7bExQZvHwsJnE8wcYFm7ZiR5D4CWVNlKRiaXCsOQWi/UeVK8ApvqiUguAxY
         ixSdJ/8ECW4Pu9OAGqzb6yQy/QQxHKaDmS5AkfI2/JKZW1YWUcRD29cG+box0U2IuQ+q
         0h/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWIpx1hCkEN0f/VZuDpsOnb8AO4lL7MaXNXs12RXmDwSBUfHd+g8aBzTyj1Hl4bdrRBWZ1bkpKzABA3@vger.kernel.org
X-Gm-Message-State: AOJu0YwQgeD5IAY5/yBh7Q+r4T2aXsd5mVlBvhLmPGOdHPLgy/OFE4hS
	lttZu7THaJULeRv314ERmoPzmp7wwi/m+UFIgGMtDUkPAcUshzbTpfr9mOfcOSg=
X-Google-Smtp-Source: AGHT+IEg9smD3/79iAKydqGIqzyJ9DE03yBVXkcC3TkTHttLotdZFlY5siEzBv07VVQlDR9b14GcJg==
X-Received: by 2002:a17:907:c1e:b0:a86:a30f:4b00 with SMTP id a640c23a62f3a-a8a43209886mr500823866b.27.1725524652223;
        Thu, 05 Sep 2024 01:24:12 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a623a6c80sm102300366b.174.2024.09.05.01.24.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 01:24:11 -0700 (PDT)
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
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v4 2/8] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Thu,  5 Sep 2024 11:23:56 +0300
Message-ID: <20240905082404.119022-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240905082404.119022-1-aardelean@baylibre.com>
References: <20240905082404.119022-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ad7606_scan_direct() function returns 'int', which is fine for 16-bit
samples.
But when going to 18-bit samples, these need to be implemented as 32-bit
(or int) type.

In that case when getting samples (which can be negative), we'd get random
error codes.
So, the easiest thing is to just move the 'val' pointer to
'ad7606_scan_direct()'. This doesn't qualify as a fix, it's just a
preparation for 18-bit ADCs (of the AD7606 family).

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index dba1f28782e4..5049e37f8393 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -138,7 +138,8 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	return IRQ_HANDLED;
 }
 
-static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
+static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
+			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
@@ -153,7 +154,7 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
 
 	ret = ad7606_read_samples(st);
 	if (ret == 0)
-		ret = st->data[ch];
+		*val = sign_extend32(st->data[ch], 15);
 
 error_ret:
 	gpiod_set_value(st->gpio_convst, 0);
@@ -173,10 +174,9 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 	switch (m) {
 	case IIO_CHAN_INFO_RAW:
 		iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
-			ret = ad7606_scan_direct(indio_dev, chan->address);
+			ret = ad7606_scan_direct(indio_dev, chan->address, val);
 			if (ret < 0)
 				return ret;
-			*val = (short) ret;
 			return IIO_VAL_INT;
 		}
 		unreachable();
-- 
2.46.0


