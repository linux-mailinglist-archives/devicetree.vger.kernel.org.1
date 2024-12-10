Return-Path: <devicetree+bounces-129192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 965369EAE87
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:50:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73A60161CA4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA8B212D8A;
	Tue, 10 Dec 2024 10:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LMQrdHzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A16210F5E
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733827610; cv=none; b=r6bn1+qZx4g98F90mzY0ERDxOrMYO4udyOpHO3TPfWQZIdkIY/TbGFx9aSrQrSgNHKgxz1tCjF5Bf/UmvfnxMdyXIykbb6RnKFDrA7BcsihYjAQ7HVWBmOc3dZQBFePkjyCtne30NqDcxdXY2UbPf8rqc1a5hYYcvCi5extdS5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733827610; c=relaxed/simple;
	bh=8CKBytTxvAK1VfjipALTFzGnskWpU3gyFxuC+1B1lQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B3zlBtMLfYYAVlJ9NW5zbBryL0m4JZP+ZXX9n2wleYZDUR4b9WtpjYD3aNK4do8r8/FkmgotZcrtd7v43ZQDuC24gepnwyzuvNe2/txjw3ObVrLug7vNXEz9qoeagYRoWueD23QGTI2taWXUkKWK5ATwvpR0bxgFPS/o2JeqtkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LMQrdHzD; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a736518eso59266555e9.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733827607; x=1734432407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U9yljpWokqG+Q8ZqkuzD4wGN9J59Uefoxkrc+/Ihabg=;
        b=LMQrdHzD0F78N1EsywPPyvAOFaORKG7BWNnT/69Vk932Y8dMCAxxA+hqY8s13fVY3u
         vCAiwMi4prUu4WK79q7JBTPa1bHox4CImPWwb+XweuSmhehODgo3e/DsqCe2PackhHRo
         m/DjrPUxnORrmf+94alMkO+5eWI7zzQiK4qFDzDRalRHwXnBLGUeV9ZGtexM0aoPcg93
         1YGFOjMxpkA6zTgvKTQr/6uvMsurhPLY2fUBQsCJNphNC8pzre0Aad3Lwc8kgrqleaO6
         XaovEZ/IDd5MaOQsCKCP9Ir3agNWAfF3wVXNZ4xwFBuccJjbCGDAMaYs1w+vf5v7TmCH
         ++jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733827607; x=1734432407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9yljpWokqG+Q8ZqkuzD4wGN9J59Uefoxkrc+/Ihabg=;
        b=bmmYXsZSICw6j/7VOX3B535mRbn83ZLGtgNHI0GIsvuGYsGT6YiEv/TPK67/KMH4iW
         iAnth89rlphlhnIJSUprGuVpgKyhm5P8lyG1kFQlU3wOSGYP6oqy7H6CEmG5xqnmGXop
         IFPl3kIwF3TdRmunduPzCVwMjPD1ZZQUkEK40yv9uBAo6j62V/rZYpmHh2ilVZmGB8Sv
         IqaRk333PbF/Phe5Udx9R4ovbjk35iojPMqkOTMwDzHEP+kYhEcwTvPJHGFYkTN/Fxri
         wnMm5W0KdDmqbVi5L0q3HWCWg4WGXWadxo433xarAyeKGH2OLTiAeQPKFw5v4ZwtqQ1W
         U1yQ==
X-Forwarded-Encrypted: i=1; AJvYcCVolKu1KfLAjgTQiOREKljTVoPZgii5evQ/JUT0sMa3WnysSQGBk7F8AaQ6DTOJ5xPxt5kdXv6ES/6f@vger.kernel.org
X-Gm-Message-State: AOJu0Yydj1QKAV+b82HCtEM0bofQMJoO7e6VMR9eIiYck7moPJMJuMCR
	1mbpobfKuKaKxO3Nh6xJ/QQlASh682M8b5GggtfLF9tvcIxMO6tQHK8gixFfDzs=
X-Gm-Gg: ASbGncvd1f9Cv25ebfEyt9F2jTFXl78WimTRMDQsxEN6/LgGamwGvdKXgPrwQtHd4le
	2exoMKZJrG10yg28pauAM/o3A8T+qPFuiHaQeW/OzuVEe18AbDifnMQeoMJROwo9rvo+JFdUtc7
	l4W/6pwBafMoemdZEhF0m+aqtYACLgQZuTDgEasxTZZpOPC0KRr9lFuUYIgQTMgP9k88daV+wWV
	zkydUSAHoxg6a1IhipOJEydDS/C7Ci6f6IQiO8PBZTqvga9HoQKfjUcCI3zsHmPYMUN8T1qRcEL
	kA==
X-Google-Smtp-Source: AGHT+IF4mrm1xvYSVTPbELhBmSHkWrECMJwaTqjmZjYY2BF6DMyep/KmmB9uxUnh6cVm4MoWsEEx1w==
X-Received: by 2002:a05:600c:458c:b0:434:9ec0:9e4e with SMTP id 5b1f17b1804b1-434fffba059mr43225455e9.30.1733827606888;
        Tue, 10 Dec 2024 02:46:46 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f2d08564sm94543645e9.12.2024.12.10.02.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:46:46 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 10 Dec 2024 10:46:43 +0000
Subject: [PATCH v2 3/9] iio:adc: ad7606: Move the software mode
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241210-ad7606_add_iio_backend_software_mode-v2-3-6619c3e50d81@baylibre.com>
References: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
In-Reply-To: <20241210-ad7606_add_iio_backend_software_mode-v2-0-6619c3e50d81@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733827603; l=1867;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=8CKBytTxvAK1VfjipALTFzGnskWpU3gyFxuC+1B1lQ4=;
 b=yQCFouVxoag5BQErP2fvmfprvbbvFuPiyTt5eNTmh5jTnWgywNDP9uN6Y1Rkc45ikBfJXHv5S
 92OXAH2SVm3DJMLqCFp6sSyf2wWiwrRA11wT6SFKbY/GhXkRROOWO/x
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

This is a preparation for the intoduction of the sofware functions in
the iio backend version of the driver.
The software mode configuration must be executed once the channels are
configured, and the number of channels is known. This is not the case
before iio-backend's configuration is called, and iio backend version of
the driver does not have a timestamp channel.
Also the sw_mode_config callback is configured during the
iio-backend configuration.
For clarity purpose, I moved the entire block instead of just the
concerned function calls.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d8e3c7a43678..dde372ce7569 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -1246,17 +1246,6 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 			return -ERESTARTSYS;
 	}
 
-	st->write_scale = ad7606_write_scale_hw;
-	st->write_os = ad7606_write_os_hw;
-
-	ret = ad7606_sw_mode_setup(indio_dev);
-	if (ret)
-		return ret;
-
-	ret = ad7606_chan_scales_setup(indio_dev);
-	if (ret)
-		return ret;
-
 	/* If convst pin is not defined, setup PWM. */
 	if (!st->gpio_convst) {
 		st->cnvst_pwm = devm_pwm_get(dev, NULL);
@@ -1334,6 +1323,17 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 			return ret;
 	}
 
+	st->write_scale = ad7606_write_scale_hw;
+	st->write_os = ad7606_write_os_hw;
+
+	ret = ad7606_sw_mode_setup(indio_dev);
+	if (ret)
+		return ret;
+
+	ret = ad7606_chan_scales_setup(indio_dev);
+	if (ret)
+		return ret;
+
 	return devm_iio_device_register(dev, indio_dev);
 }
 EXPORT_SYMBOL_NS_GPL(ad7606_probe, "IIO_AD7606");

-- 
2.34.1


