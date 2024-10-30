Return-Path: <devicetree+bounces-117452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AEF9B647E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 14:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 669F72825CF
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DDF71F12FA;
	Wed, 30 Oct 2024 13:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bKJQAbIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652381EBFF7
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 13:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730295886; cv=none; b=V7gvA0RXA4ZKGX+W2VAGa1/E9K5xTV7Jub6dkYVXDLjs7zVcv3zmoIPyFEA5gwSSgygNcgwexoSq1UdkhPl+P/LomGp0kksJ1r+gZeISkyJlHH8593bnEdQaYBpanLkY1N6JdsAAwpbttD4q75YpQf2ZFJQK52NUocye5XDmYn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730295886; c=relaxed/simple;
	bh=RO9hGOKZEvxMEHLVRYfaOYF08wLVGpI7aOsmLqLjRtM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K05w+M1zkXte0vjWZXyGl04CssWqIYbG7KgxTLqfqIMFqK278UlCdXJuY3ALC6THdgnHglON7UR1zGZiMhM3RECIftSIRso9S8Q6EdFzGh+JLY+7uLoYObwMupojb3Rje2GN0YgPIi+8dBELdnIVVbRgTy2cdDjuttq/ItJduKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bKJQAbIG; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43158625112so64299295e9.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 06:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730295881; x=1730900681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8BjJ2M207dDw7Til612ivS6L47An/FajkZsL4QTnDEc=;
        b=bKJQAbIGjBPe4iS983eJ78eVNlPZltni+bIIZh6tMortUtEK0FOkkJI+RsNB2ZkJZj
         Gao0cmxA0wecIq3nXV4+JB0Amf1klyOlpxQCTRhNZ4od+U8If4+sPxv9USAtLvQ9ghuS
         WjS77wKgTP5XaRQgp3gfrvsjefStH1oTmfHshCgqT4UiPZZk8AerIFUbkBx4kIMGqpAM
         gPyKkSH5STYVraBBICcut3RdYiKvQxIlIGmi/sX7TgBbcz+ZkoeErnivj6y/N8hZqcfd
         RJ6nevKobTqikTAUme945dWGVdH/VI+Jrd5/yq5GgcxXv6fGDG86HE/qUtFvpScMn+xz
         Qb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730295881; x=1730900681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8BjJ2M207dDw7Til612ivS6L47An/FajkZsL4QTnDEc=;
        b=Ul6Ae4wd57QTiLngt0pCjU9B3OXtf+9xsGEhe7JWaWZlk0zNIwHZhoPZa8wwgzi5K1
         F7lBrQbaM9KqPzCVWGZaq1KS95VUrYSd/RINNnULsztlGNXnOzzD7BDY5dkh9T72qOMn
         nUnwnFcSh3p8fkEQDBo6Csida9pLiKaUtabAzrDJM7yUMUQivsshWCcxKreUz4cLX4QT
         c56f+ePHd1uC7G4QFLSVCWOT01DDwaeZbEmBh59G+g0GA3DcZJ1oVjuLQ8zbU9suHoCZ
         7EzbKSOmtRaVF8O911Yg9jOpYRYa3qkLY3KaGWKBtizPdsbUutT2sFl3jE3pFRcucHdC
         qppA==
X-Forwarded-Encrypted: i=1; AJvYcCUOrdsHojI+cMWAMsqAVpapt762URPdo+am8+FavLXAM2c9+iz/7fNFwtPyZaEr3bzcxLXPRKLDJu1R@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc97UOBH0fCxK2qMLQKcdWXxjkRhpKSd0tO0AMSLKxd2/t818i
	k6Pu0K+f87cahbdyRUv2mDkTWbOtMUdwqyRsnnvThAsffRD1ftJ3SgBtRITnMrg=
X-Google-Smtp-Source: AGHT+IEqWScIHhC8tPglxlTqg9bpzau4UkxRE+2yBiH6NV8VeDBBJkoxE09TQc+ilKeht4wWRnPEFw==
X-Received: by 2002:a05:600c:4711:b0:431:586e:7e7 with SMTP id 5b1f17b1804b1-4319ac6e818mr145719855e9.1.1730295880634;
        Wed, 30 Oct 2024 06:44:40 -0700 (PDT)
Received: from [192.168.1.62] (2a02-842a-d52e-6101-6f8f-5617-c4b6-8627.rev.sfr.net. [2a02:842a:d52e:6101:6f8f:5617:c4b6:8627])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd97d693sm22135175e9.24.2024.10.30.06.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 06:44:40 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 30 Oct 2024 14:44:27 +0100
Subject: [PATCH v4 3/5] iio: adc: ad7380: use local dev variable to shorten
 long lines
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-ad7380-add-adaq4380-4-support-v4-3-864ff02babae@baylibre.com>
References: <20241030-ad7380-add-adaq4380-4-support-v4-0-864ff02babae@baylibre.com>
In-Reply-To: <20241030-ad7380-add-adaq4380-4-support-v4-0-864ff02babae@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.2

Use local dev variable in the probe function to shorten long lines.

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 drivers/iio/adc/ad7380.c | 33 ++++++++++++++++-----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
index e5eececaaf501cda8f51d801c089e593111df714..206c894953f057acca20805fb30185cb7ab8a902 100644
--- a/drivers/iio/adc/ad7380.c
+++ b/drivers/iio/adc/ad7380.c
@@ -1035,12 +1035,13 @@ static int ad7380_init(struct ad7380_state *st, bool external_ref_en)
 
 static int ad7380_probe(struct spi_device *spi)
 {
+	struct device *dev = &spi->dev;
 	struct iio_dev *indio_dev;
 	struct ad7380_state *st;
 	bool external_ref_en;
 	int ret, i;
 
-	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
+	indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 	if (!indio_dev)
 		return -ENOMEM;
 
@@ -1048,21 +1049,20 @@ static int ad7380_probe(struct spi_device *spi)
 	st->spi = spi;
 	st->chip_info = spi_get_device_match_data(spi);
 	if (!st->chip_info)
-		return dev_err_probe(&spi->dev, -EINVAL, "missing match data\n");
+		return dev_err_probe(dev, -EINVAL, "missing match data\n");
 
-	ret = devm_regulator_bulk_get_enable(&spi->dev, st->chip_info->num_supplies,
+	ret = devm_regulator_bulk_get_enable(dev, st->chip_info->num_supplies,
 					     st->chip_info->supplies);
 
 	if (ret)
-		return dev_err_probe(&spi->dev, ret,
+		return dev_err_probe(dev, ret,
 				     "Failed to enable power supplies\n");
 	fsleep(T_POWERUP_US);
 
 	if (st->chip_info->external_ref_only) {
-		ret = devm_regulator_get_enable_read_voltage(&spi->dev,
-							     "refin");
+		ret = devm_regulator_get_enable_read_voltage(dev, "refin");
 		if (ret < 0)
-			return dev_err_probe(&spi->dev, ret,
+			return dev_err_probe(dev, ret,
 					     "Failed to get refin regulator\n");
 
 		st->vref_mv = ret / 1000;
@@ -1074,10 +1074,9 @@ static int ad7380_probe(struct spi_device *spi)
 		 * If there is no REFIO supply, then it means that we are using
 		 * the internal reference, otherwise REFIO is reference voltage.
 		 */
-		ret = devm_regulator_get_enable_read_voltage(&spi->dev,
-							     "refio");
+		ret = devm_regulator_get_enable_read_voltage(dev, "refio");
 		if (ret < 0 && ret != -ENODEV)
-			return dev_err_probe(&spi->dev, ret,
+			return dev_err_probe(dev, ret,
 					     "Failed to get refio regulator\n");
 
 		external_ref_en = ret != -ENODEV;
@@ -1085,7 +1084,7 @@ static int ad7380_probe(struct spi_device *spi)
 	}
 
 	if (st->chip_info->num_vcm_supplies > ARRAY_SIZE(st->vcm_mv))
-		return dev_err_probe(&spi->dev, -EINVAL,
+		return dev_err_probe(dev, -EINVAL,
 				     "invalid number of VCM supplies\n");
 
 	/*
@@ -1095,18 +1094,18 @@ static int ad7380_probe(struct spi_device *spi)
 	for (i = 0; i < st->chip_info->num_vcm_supplies; i++) {
 		const char *vcm = st->chip_info->vcm_supplies[i];
 
-		ret = devm_regulator_get_enable_read_voltage(&spi->dev, vcm);
+		ret = devm_regulator_get_enable_read_voltage(dev, vcm);
 		if (ret < 0)
-			return dev_err_probe(&spi->dev, ret,
+			return dev_err_probe(dev, ret,
 					     "Failed to get %s regulator\n",
 					     vcm);
 
 		st->vcm_mv[i] = ret / 1000;
 	}
 
-	st->regmap = devm_regmap_init(&spi->dev, NULL, st, &ad7380_regmap_config);
+	st->regmap = devm_regmap_init(dev, NULL, st, &ad7380_regmap_config);
 	if (IS_ERR(st->regmap))
-		return dev_err_probe(&spi->dev, PTR_ERR(st->regmap),
+		return dev_err_probe(dev, PTR_ERR(st->regmap),
 				     "failed to allocate register map\n");
 
 	/*
@@ -1157,7 +1156,7 @@ static int ad7380_probe(struct spi_device *spi)
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->available_scan_masks = st->chip_info->available_scan_masks;
 
-	ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev,
+	ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
 					      iio_pollfunc_store_time,
 					      ad7380_trigger_handler,
 					      &ad7380_buffer_setup_ops);
@@ -1168,7 +1167,7 @@ static int ad7380_probe(struct spi_device *spi)
 	if (ret)
 		return ret;
 
-	return devm_iio_device_register(&spi->dev, indio_dev);
+	return devm_iio_device_register(dev, indio_dev);
 }
 
 static const struct of_device_id ad7380_of_match_table[] = {

-- 
2.47.0


