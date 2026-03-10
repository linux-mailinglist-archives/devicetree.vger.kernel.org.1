Return-Path: <devicetree+bounces-273682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBb7JJlasGmMiQIAu9opvQ
	(envelope-from <devicetree+bounces-273682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:53:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1682A255F27
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B1DE320D62B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952A63D811F;
	Tue, 10 Mar 2026 17:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jJRk7KuO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E80F3D47DD
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164938; cv=none; b=CUYVLS81ZA7ZSUXjEn2quRetnCGYXvtNL/hJ/TLvNZ62yC4hdHzGYIJAIyYlWWobZZfY9+NQ9HwYHSC+sC9ApSpNQ3XDuXR2iERsi7QYGAQu8Oys9v/jMwKOCfgjYix9KpZXBK2ZUIR9/opR4xJ8aN4DzToRFR83t7syh9cqKP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164938; c=relaxed/simple;
	bh=xeXVTSZzQuuFD+lMKWTOiRIKsLFrz54VBr0660xK+CQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cWScZQRdHjDdRzP2PmKwZCy1BHGywkr0B0JOUxTqgILc4esQq4kTfwUGrY2ZWL9XxTOHyClDkdvdnEd+lajSnrOyX4zpy1RVv4n6r5usA2281WKLU9ziMUGkDHyk349ODe7AnD2R5y2NxsX4F15XZElpqIYLrvil7Mn6qV/iwjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jJRk7KuO; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439b9cf8cb5so8776114f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773164932; x=1773769732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BslQrBMKlw57se9odRgPPZj4HtuVGPf12Q60E4FhFEw=;
        b=jJRk7KuOfLQOtFkoENv5UgV8Bzc0kQ3GSLDG+Br+orZehGkqgCPSNzWO7QKuXvefeb
         S+ES0XN7v0Dv8A753dNyxGJNITsdwBKVOiV/p8b4q3KRkcGkhsUdZHn0CWKD17pAjYDI
         SUtkmpWLamfIGMtux/ZYafXtBdfiD8Efl7ydzlTLYVRtQzzrdor0Y7uO8BQRYiuGWE+B
         bLA3fG+WJGu4WkZCSX32JO/IsUcDHoFtpQhrrUg2hUskrS5jvkQqTAkHi/2t86+flRJ8
         w8VXiOUE4ko/kXRwYQeTcUbGZ1rx2ApBomAjY86/wy/VOP7hk68UPR6bHBzhs104bp5h
         ijJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773164932; x=1773769732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BslQrBMKlw57se9odRgPPZj4HtuVGPf12Q60E4FhFEw=;
        b=iz/jFzHBdzCfMsGJwwInAhDpryo9KzjOhez3vHv49N1yll2lXmnNmxIuATRMvM0UgG
         7oyk7nE0PG8+2aa8hqDARGFKSdbY5AgNDpEdU7/8ZcsvYhReTMy/5Yvfh6qWcBHhhoeD
         C6dP5Aln3vyhiQIapp+MHt0lpJ7tB/iS2/QZAHIXjIruqxvs37SQ+x6WXlKlKoEos/Lg
         il/ok/Dlowgr+R0c++CpzfO2ehHCm666xAswrA7czw1qdy+347g9eWsWRQEm9fPoQ01N
         Nv5nLUft6c4QQqY056kZvhPZNBmwnfGJ5uD+vzfoPpymdPvNNTGGoLCdH4YYmULInxCI
         6lqw==
X-Forwarded-Encrypted: i=1; AJvYcCWZhqvcDZOs9Arhl4m+BPrXaeTDCAAUwbT91qipd+zXomq4dW2q2XP3pwZocLTs0FdYbT9d3HNxRifM@vger.kernel.org
X-Gm-Message-State: AOJu0YywVYnedu8fbuwdvHcOc+dzLFpwk7T6v63k/f5vrBl+Vi2RwtQu
	Dupwnrdg8aaWSGFmhxf6GHPBomoT3f+gCTnF0bT8/8VRPTdakR+ZsSUh
X-Gm-Gg: ATEYQzzSSbJ9f4KCEPNrjhEEKU7vlBAMkCgS7PZtkzSw7kE0eKj0BblTj1PZBLnlrsy
	WrodGB7JzfYKNRGNeFuHNkfmm67r9nBkyekp7R+MDZ9IfTdVSUvEfebkP2IJ59ZVn9bX6K0YY3L
	04NRgH+aoa1HVSPu7+IE4Qu1zXJ3akbAR8PNWz1LvV6SCj0pycQEh1GISo6Aaya1emcXhbK4oyI
	uIhZOr5/pH0PYtZo0E+Hq8dt7StUBH/OUuznqbp6u2uADnxO1AQtrDX/Ov+DTD5LNrmmVf5+Akx
	UiRbq0+LA1Ve1B2UQpFI2vrbBPqG57kVT8++ONAtawRmCTPv9mFhjn5dqo+i/H4D5T2NVnoExHw
	AhBaCMgyIJC8nMaqB9qeIyF77SMJc2PDHPyAaDEcwlNC5RcGUgUMlFsRWmt1VPOMvHbagfD9eyy
	5ePPQ84+mXw7GLhJC4hDCEkDkI4y01sgK9I3+s0my+CGd258Wk6H1uMnQVZQ==
X-Received: by 2002:adf:e802:0:b0:439:f61a:e005 with SMTP id ffacd0b85a97d-439f61ae05emr1742261f8f.32.1773164931625;
        Tue, 10 Mar 2026 10:48:51 -0700 (PDT)
Received: from db07.1337.ma ([197.230.240.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae45786sm42986166f8f.32.2026.03.10.10.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 10:48:51 -0700 (PDT)
From: Taha Ed-Dafili <0rayn.dev@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Taha Ed-Dafili <0rayn.dev@gmail.com>
Subject: [PATCH v2 4/5] iio: dac: ad5504: fix scale via output-range-microvolt
Date: Tue, 10 Mar 2026 17:48:34 +0000
Message-ID: <20260310174835.24209-5-0rayn.dev@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260310174835.24209-1-0rayn.dev@gmail.com>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1682A255F27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,linuxfoundation.org,brighamcampbell.com,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273682-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[0rayndev@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:email]
X-Rspamd-Action: no action

The AD5504 full-scale range is hardware-determined by the
R_SEL pin (0-30V or 0-60V). Previously, the driver incorrectly used the
VCC regulator voltage to calculate the scale.

Update the probe function to read the standard "output-range-microvolt"
property as a two-element array to determine the correct full-scale range.
Use the MILLI macro for clearer millivolt assignments and simplify the
probe logic using a local device pointer.

Suggested-by: David Lechner <dlechner@baylibre.com>
Suggested-by: Andy Shevchenko <andy@kernel.org>
Signed-off-by: Taha Ed-Dafili <0rayn.dev@gmail.com>
---
 drivers/iio/dac/ad5504.c | 43 ++++++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index e71218c44982..cd563460fc0a 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -12,10 +12,12 @@
 #include <linux/kernel.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
+#include <linux/property.h>
 #include <linux/regulator/consumer.h>
 #include <linux/spi/spi.h>
 #include <linux/sysfs.h>
 #include <linux/types.h>
+#include <linux/units.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
@@ -271,28 +273,31 @@ static const struct iio_chan_spec ad5504_channels[] = {
 
 static int ad5504_probe(struct spi_device *spi)
 {
-	const struct ad5504_platform_data *pdata = dev_get_platdata(&spi->dev);
+	struct device *dev = &spi->dev;
+	const struct ad5504_platform_data *pdata = dev_get_platdata(dev);
 	struct iio_dev *indio_dev;
 	struct ad5504_state *st;
 	int ret;
+	u32 range[2];
 
-	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 	if (!indio_dev)
 		return -ENOMEM;
 
 	st = iio_priv(indio_dev);
 
-	ret = devm_regulator_get_enable_read_voltage(&spi->dev, "vcc");
-	if (ret < 0 && ret != -ENODEV)
+	ret = devm_regulator_get_enable(dev, "vcc");
+	if (ret)
 		return ret;
-	if (ret == -ENODEV) {
-		if (pdata->vref_mv)
-			st->vref_mv = pdata->vref_mv;
-		else
-			dev_warn(&spi->dev, "reference voltage unspecified\n");
-	} else {
-		st->vref_mv = ret / 1000;
-	}
+
+	st->vref_mv = 60 * MILLI;
+	ret = device_property_read_u32_array(dev, "output-range-microvolt",
+					     range, 2);
+	if (!ret && range[1] == 30 * MICRO)
+		st->vref_mv = 30 * MILLI;
+
+	if (pdata && pdata->vref_mv)
+		st->vref_mv = pdata->vref_mv;
 
 	st->spi = spi;
 	indio_dev->name = spi_get_device_id(st->spi)->name;
@@ -305,17 +310,17 @@ static int ad5504_probe(struct spi_device *spi)
 	indio_dev->modes = INDIO_DIRECT_MODE;
 
 	if (spi->irq) {
-		ret = devm_request_threaded_irq(&spi->dev, spi->irq,
-					   NULL,
-					   &ad5504_event_handler,
-					   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
-					   spi_get_device_id(st->spi)->name,
-					   indio_dev);
+		ret = devm_request_threaded_irq(dev, spi->irq,
+						NULL,
+						&ad5504_event_handler,
+						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
+						spi_get_device_id(st->spi)->name,
+						indio_dev);
 		if (ret)
 			return ret;
 	}
 
-	return devm_iio_device_register(&spi->dev, indio_dev);
+	return devm_iio_device_register(dev, indio_dev);
 }
 
 static const struct spi_device_id ad5504_id[] = {
-- 
2.47.3


