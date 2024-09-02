Return-Path: <devicetree+bounces-99004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DDE9684D2
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7DC61C22BD3
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 10:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63240183CC8;
	Mon,  2 Sep 2024 10:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i4ObsPfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED0A165F11
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 10:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725273420; cv=none; b=due8qpWc4m8mUzKkDkqrmzypr7GEHrKzKIaMiv2hc+AgoRm9jMtKdBUp7CM83h4+PWeiDRLybqKObIZeRcZRCNqJdqvo6R4W+RAfCOOV/B6/WU2NoOmfg39r1I+tpR9oLQceIk9KiOHBC82LcvBT8fvGfGGOGMZGYrhtJNGZjHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725273420; c=relaxed/simple;
	bh=IXqmhsQDt/RO+GElC8x8ywqYUr/3SWcgPZP7XLJrRH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YDjjcX5pl0Dwpw/rIjSPvSKcHM1PpgHeLQ+tyB9i8w0LVbwG4HJ9RcmA+CKhKZPBhx8vGuL4Yq0xTdOQ6t+Rhb/BzzmrwIfNrZEcSPpMy7+JwbQSb9o8XiQ3+Uo9hsjMGwUCm0sQueEaR0GMqGzkwQC+Z9DhisgX+YAlTiI0Wsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=i4ObsPfz; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53345dcd377so5553355e87.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 03:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725273416; x=1725878216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=i4ObsPfzFfllcg68ujk90EGsLWr0W9Szor3efz7N1usMwRxWYO7/gD61qfi5ioO9Bk
         ALarINfH5EIFYWZaHU/n7l3CbRn14Hb7YUUuuhCYUUy1XG4dVDse2PrPBcipO2FZeBmY
         eE6i/c4Xyq2m1cU7CKYW/rRYk/vNTAa8ZR8FNHryeme0qaPLowo/DVxGhK1FWvuvB0GS
         +NHjKOMcBPXXnbfVoGyXpVsD3tjORQO06TuOLKkrPTsIMtGUWUnjpaRnsEHQIevDppfW
         Mp5x/dPVkClES+Oh7NHeWRoa30OiIFLHMPXEiyR7P7P87/rOupmI5fHhSaqVQeGKe/dD
         KQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725273416; x=1725878216;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=ZY/I+7AeXyVM0+pTcQxYPNAYK0rAAkNDOGLcyXZr0VkXZA80wOSynLLYXLEs2X5cr/
         BL+B41xRiIwVj1dOoirbHrVwmRgCsmFC74HDtVO5YZzKAlVMCR7FAE9wfHEsYW+llkj5
         F9H+c3dpsRqkNzEQfMLrKrmlIzha0ayc4BHyxMxxjZzWSG0YkeBqoTSDKx8l99wn7fdO
         yvU8bt7a8zCEgkSLUUdtX+uROgGencLVEenvDDeiAfkzl+skfmXTVxCVv0RE2qSy2IHA
         dqFmQBYTMYAtUNFYB/BynOhh0kyCJg+5cR6mXpSAni1co2Q/JjlbZfoTBBq2m2/B8msP
         Kz1A==
X-Forwarded-Encrypted: i=1; AJvYcCXv5d1yF/iURlKcuVAetKEMwegx5UN/OGM9f0K5BKiADzBbwmMYjNSGpZfTJaL9wjwYiAEkJlEcloqw@vger.kernel.org
X-Gm-Message-State: AOJu0YyvlNUaK8u5p2wki+R45JXeRDCsOd8hxfQwyCTnA2APfi890vLS
	FoGSORWeqi3xN28FH8bdz+QBs3xRFyqgHDIJr3zlOKsXzy4OgMeR2LrQ08F+Cig=
X-Google-Smtp-Source: AGHT+IE7QHfP7LWY+O7Vl0+pPZHA7g1j6i36WnsPlbhD/KPhHNsYvcLbIn25Q3MFVzYi5IGmTTLisg==
X-Received: by 2002:a05:6512:1101:b0:533:3fc8:9ac0 with SMTP id 2adb3069b0e04-53546b4248amr5551918e87.34.1725273415673;
        Mon, 02 Sep 2024 03:36:55 -0700 (PDT)
Received: from neptune.local ([2a02:2f0e:3004:6100:e124:ce40:67a4:fcf0])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891da22bsm540876766b.182.2024.09.02.03.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 03:36:55 -0700 (PDT)
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
Subject: [PATCH v2 2/8] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Mon,  2 Sep 2024 13:36:25 +0300
Message-ID: <20240902103638.686039-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240902103638.686039-1-aardelean@baylibre.com>
References: <20240902103638.686039-1-aardelean@baylibre.com>
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


