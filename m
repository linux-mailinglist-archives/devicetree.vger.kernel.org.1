Return-Path: <devicetree+bounces-99775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DDC96B2CC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:27:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9DC2286CD1
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8856D146D5A;
	Wed,  4 Sep 2024 07:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CuZWI5Ri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05DF824AF
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434850; cv=none; b=uRdCcg2wF4Shk1u1ElcMCHVq1KVntXJKnOCOmee5z/xwtz1ENkipcMqzGvURbL2XfgDwXDFm3v3z8w0S81M3hReEbe04W1J8VFEYbbGX5yKeWfKwSRDUcVa0DG7s7YjTUyLsyv5pZv7+sSzVARH1ZBxqpnT2bXC6c+iMC8L0gkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434850; c=relaxed/simple;
	bh=IXqmhsQDt/RO+GElC8x8ywqYUr/3SWcgPZP7XLJrRH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eUArpZQDyPtTlZvENcdfE0BseROw4Hs1o/oHWu7dFv7tuxl+uN15oXzPg5j0i5n5Vx/JGCtThDRc90oDOlPIJQfNonmd3uFnMvFGcAelA8acrAA8MwJnNGzRQgWnMNpo+ObPn78biTKzzTGNokzzTb/rl0Czg1s53gSTcPiLtjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CuZWI5Ri; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a89c8db505bso429700266b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725434847; x=1726039647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=CuZWI5RiSsScnilpQZiswcSvY7NnGjuXYSAihn+sh5yB70hV6V7KmiLbLk1a+nTF9N
         3Nut73cW3Hf04xEvWZfaoxlG/WuV4PXtu6dWwQOqip992P/ymBVv26jwXsUPyt6z3nf5
         kZF2giGD+Vsax0klE86QGNm459199pBXjeShbvKlTzYZrjnjAnV1f0a7upukvEf16ssS
         tmgnptpdMYY0P29CwWijaGr4DFIFoRThntJ4zJzWqliy3Wlur/R9pdQmjjRMxNPnE98e
         S1CYxDRkSbbl8iRCfsaLcuh07TDVYPSPy5Qtcod3q3Hy72d5lZplonzDs+vjOrPy4yQh
         irhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725434847; x=1726039647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=atcGSwXpvY/fPChszuicKb+mfkPyWdc5k2txzgre/wZKJLkrAj+ET1rlG0gAxK5rdh
         J95khe8m5RDO/YocY/prUmKC3oSupkVx4OiUi3ljrY6YVRZyM6ksJiV/FPBD+N196jjz
         BmI+4d6eoXxVrtoCGxJ0Uxrdk52Om5/yE3Ch27GBQa9usPF+Uj/7lsiYp1BiilM0ERWX
         FtonTkhbFWD5ObsBX0QLqnTM4lMJd3lAtpP0zHT2LygSNxdNGcnQAIiqKT80PXg3cD2M
         JLx30nJA7YklhPUyqzIL0ll74XHEzgNdjZTJFBo42BEV07HmEQ3UjYU5K8WeSe6E3Ia1
         Sq3A==
X-Forwarded-Encrypted: i=1; AJvYcCWKg7qzRXLWS+pKZwISrOz4/821LuKvVkhI0Cs4pAkP3NPBxVvDxf1YLsrKXypDdQGSbhYMozHXfktW@vger.kernel.org
X-Gm-Message-State: AOJu0YzIi2RPBET+iZJCJt2yHOXjdWvBRJlWB+L5E3larY+pB/lo3rI+
	dGJ0IAnnXiAeSELWJIgn137evHckPXQeUJGwiDhdsc8ZrmghzDCn/3DiReXPOPM=
X-Google-Smtp-Source: AGHT+IG7ZUz0d27mzkHFX2vrDobji+u+YboJXBuFIuhuHllAkHsRZJmGUeMRB2xlKDbbonvARI+kbA==
X-Received: by 2002:a17:907:7e88:b0:a86:af28:fc2b with SMTP id a640c23a62f3a-a8a32fa103emr281232066b.54.1725434846793;
        Wed, 04 Sep 2024 00:27:26 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d77fasm771151766b.167.2024.09.04.00.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 00:27:26 -0700 (PDT)
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
Subject: [PATCH v3 2/8] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Wed,  4 Sep 2024 10:27:10 +0300
Message-ID: <20240904072718.1143440-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904072718.1143440-1-aardelean@baylibre.com>
References: <20240904072718.1143440-1-aardelean@baylibre.com>
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


