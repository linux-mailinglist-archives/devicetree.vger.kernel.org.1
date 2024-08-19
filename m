Return-Path: <devicetree+bounces-94681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70B9563E2
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 08:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3300282C98
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 06:48:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1506315852A;
	Mon, 19 Aug 2024 06:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1jypdwtj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04875157490
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 06:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724050061; cv=none; b=AwsTreu1h7dwjxNk/F8jfq14kJ3gzKMiVdZcpLHHAA5BEgAEwIoLXWvzbkWC1lDtIMsmfdHLSBIoITeJiaY/KPYYJYMj+knBDIRHH+hW1hdxXx3pdpqPO/vJ1GTx0hVKlL6ofNXejBjZCNGaGM4YDYA8ciV/XeK1O30cWKIFmAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724050061; c=relaxed/simple;
	bh=IXqmhsQDt/RO+GElC8x8ywqYUr/3SWcgPZP7XLJrRH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V+su0JQqfst+BT6t3KhMnR6ZsyMi+9Im7/xvXrXZL37+v60XZGKt/mrkWBAI6IXs680n8CnqkTaXO2shfXZ5oBvYsbjcbGscKhwNj2Yu4N2hpIvHAXB9ZCGrU/vcUBfRJqNQr7ONlCx0lC751SbqBjxaUG0ZetSiBbWZvY75Vvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1jypdwtj; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ef302f5dbbso3443491fa.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 23:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724050056; x=1724654856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=1jypdwtjdxhqrXu/8RUedTInpQxj1PitmoA0S58gHDADay5bHn90jP+x0Xba6etA2l
         R+asHeWEazPHWt0I3Pqzzw7FoZQdKeL2AiOQPvkM3UyAa83XuHtOQmYI6yQpC16Cq4J/
         rOWa/2D1EAaF4Q2g8y6aUalaSDyqdroeHcYNtK+3PlzhfV1LctlBsfLmwdCdfE3Rdahq
         BkeFf17pClzhxSBHb7KNY6jIb6sA6am8HUlPbhUURbepT7Gsp3E/8IP7b28Q57T2LWOr
         enPmXbacn302cg7IsCLBXywu1O7hoMMc5ofDjsL7WSJPLFH/zuxiCDmOSXd/DTpAb4Vz
         2S4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724050056; x=1724654856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ui2lv4x9FTPWujQRhFdVeT4msHXJUFxc93RUhnH6Vdg=;
        b=QmcBZfdpcwEis/BW4DE9vB3B1MQcHkCyZysestKllSNhpMf28hjpysfNkKVTmLHTT/
         8dJ1lNphmk4Z5658r/RoyomBg21O+4pViBoNzgV9XLjoPkjqDf81qe2f+dxxa0Gq0VuP
         LcOlQECpUUsWHf+wyQ8uotOQ+/JgQNha4whlAN0H5ul7DnjMsC6wtbzUyN2gFApGRA0E
         lFQ9x8jmoR6l+z43o+Hyy58i8ViRs1GbRZToG75zvlW4utgijtSVaKdCaIZxlbds8Mal
         kW8LbIpBSnntJMg8wCio/XFzkaDe/KQBeg0wdYMBrh4zJcHoFaA2e0PkcsrGa/5OisH+
         aHQA==
X-Forwarded-Encrypted: i=1; AJvYcCXp3F5jJy3FchSog6DdiB4/GDx+DLV/QrunuMgVFP58lXGZ6GMHwpylEckekQCVXcQvwbDvdW4kxJAE6x/QvYe3VYspIWme5eSe3g==
X-Gm-Message-State: AOJu0YworYsD/8671NznxUX2p3d9Sc6q7PAvlZJR1qo/Lb5e0ZqFJl8b
	R/i7iNg50wFLw3RXccJ5OiFqr/ImX0zLWqiKo3uJnk3pse5MbHe8LI9c2rNIFkk=
X-Google-Smtp-Source: AGHT+IH4B1cciVB7OI8ow2IPgAdtaVxaiulvsVvuv81Mby5vIFPvQVAHDd0cmEg8ZBhdUoQ5hAgPsA==
X-Received: by 2002:a05:651c:b10:b0:2ee:d55c:255f with SMTP id 38308e7fff4ca-2f3be778bacmr40875561fa.7.1724050055727;
        Sun, 18 Aug 2024 23:47:35 -0700 (PDT)
Received: from neptune.lan ([188.27.128.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838c6bfcsm599069966b.28.2024.08.18.23.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 23:47:35 -0700 (PDT)
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
Subject: [PATCH 2/7] iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
Date: Mon, 19 Aug 2024 09:47:12 +0300
Message-ID: <20240819064721.91494-3-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240819064721.91494-1-aardelean@baylibre.com>
References: <20240819064721.91494-1-aardelean@baylibre.com>
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


