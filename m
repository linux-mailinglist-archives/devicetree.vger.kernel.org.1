Return-Path: <devicetree+bounces-103912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B5C97C9A7
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 15:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56C50285899
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 13:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCBB419F408;
	Thu, 19 Sep 2024 13:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cKfegPfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CCC19DFAE
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 13:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726751096; cv=none; b=jHbjaaLTytKB4p8f9UkOgPjfnYfzBteeD/Wcxt+aeX3/n6uk4DaW1P8I9SPGfvyDEo0wJ1sZmopkLl1augrHKsVSdsMHYl/45aSN6QH1vSVIhSPwzqvo3OF3+rwEEd2BdME5gGvhYxJptN2RYUSrYrEnE1B8nh7yLRKGofRxZJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726751096; c=relaxed/simple;
	bh=ykUyvmQc/5wbFyrFRMV34ty22I9dWMk9TBb47ILEe4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WzxAhJpLibKHEq9GWLk0xEbmneiSnKWOe5V9YDNzklsLOeuGPZl6Y7AlDUqo+D/9aYYKpYrzvfecrpmoMEqS5597Fwcq3NS51aPK38I8ApIVhPB7S47iHX+DByb7IqhAYSt2AFNYQ8I5DOBVOfQkHJ9/wlvn/ylBKUGnZl3hGBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cKfegPfP; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a8d51a7d6f5so107885266b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 06:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726751093; x=1727355893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4rgjfNfx6m5HjjB8s+u7qEdTS2g8HjBiOKrDc5NZNs=;
        b=cKfegPfP/sE5xKmpH95RN0knadHFGAIqJ1L7BjwxYbm48JemgrUDxkC/vZJzQfnedl
         lNAec90WioSVK88Vz1xVLtKEa2u9UWyN0oN4NU+h/o0wt9ggvWCl1dpAKREKVeMG2fE+
         Xe8AbkpzZ+mMe3n5CMnT3qGUnh5U/u66QSGxcEElijuNXDcELEaajpuHHsuNBkZd439R
         TUm1SwqrScgCskfT7YM1DFGNpYatg59nV6ulMYLjh0Aj+P85/4vUTmpiZpSaskLHfcnG
         ILNfz3eLsCP+oqFmirlQTpIpgtgWt28A+s1EwWUtYi5x0qDsnHPBOY1bweNPFueI8jlP
         6N5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726751093; x=1727355893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4rgjfNfx6m5HjjB8s+u7qEdTS2g8HjBiOKrDc5NZNs=;
        b=ugUdDggGcnWnTezTlip1qQF0PkyBgboUZL+ie6qaev2LipzcDEDZACm3YDbz0oYH75
         c3wyCuoAv36duC/wSMkjRs1EIZ0gFjsz6F4BBT51kVR5wQcbHFji2JRYWGhisemviliq
         U0O/njt8hKWWpnNNemWIkJhqbOVyiXVi+BYZ3BSjJaeeM6FGre6arFZTi0sqMuDY0v/6
         QwLoesoJBM4HVGQPu6BzDoyjuhpA6vx8hN0fyeZAvl6TcIjGn4yHizN29MbpK+jUrGko
         n1WJViNKQy8bV80yTYs+AYk7+o8zuIWzFjaVlWlEOlarYcUwtU/NhQw0GeEoilHyun63
         w0ew==
X-Forwarded-Encrypted: i=1; AJvYcCVh+oMIb7hcZxe2AHrXLu1tyuXi2/sl2BXZNpTKCl1Voe7UDOIVWc5WMis3KLymxf19Syn6r0aufa2k@vger.kernel.org
X-Gm-Message-State: AOJu0YwjDRCSiK/I5HI9B6fOjTpc7AS2zHKoZf2PeW02HOlbXeT61px+
	T4+zIImEERS6kSJtE6wG1zk0KVx84iZMDnHRNMR6r2XGh6QrabXlsCUwXCBVwXk=
X-Google-Smtp-Source: AGHT+IEl9n2aGivKm8Nn1OjphaunB6AciwjLNzCRmh6NUeWAsMtAyCaWK5ZAg7pYg6y6TwSpV+kunA==
X-Received: by 2002:a17:906:f5a9:b0:a86:7924:11bd with SMTP id a640c23a62f3a-a90296178c9mr2762405466b.41.1726751092813;
        Thu, 19 Sep 2024 06:04:52 -0700 (PDT)
Received: from localhost.localdomain ([188.27.132.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90cbc7122esm53213166b.124.2024.09.19.06.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 06:04:52 -0700 (PDT)
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
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v7 2/8] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Thu, 19 Sep 2024 16:04:37 +0300
Message-ID: <20240919130444.2100447-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240919130444.2100447-1-aardelean@baylibre.com>
References: <20240919130444.2100447-1-aardelean@baylibre.com>
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

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8ebfe8abc3f4..032a8135c912 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -114,7 +114,8 @@ static irqreturn_t ad7606_trigger_handler(int irq, void *p)
 	return IRQ_HANDLED;
 }
 
-static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
+static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
+			      int *val)
 {
 	struct ad7606_state *st = iio_priv(indio_dev);
 	int ret;
@@ -128,8 +129,10 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
 	}
 
 	ret = ad7606_read_samples(st);
-	if (ret == 0)
-		ret = st->data[ch];
+	if (ret)
+		goto error_ret;
+
+	*val = sign_extend32(st->data[ch], 15);
 
 error_ret:
 	gpiod_set_value(st->gpio_convst, 0);
@@ -149,10 +152,9 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
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


