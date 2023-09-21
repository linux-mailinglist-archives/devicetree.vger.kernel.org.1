Return-Path: <devicetree+bounces-2164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 713387A9C93
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD9182839C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4562A4D919;
	Thu, 21 Sep 2023 18:11:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1644CFA6
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:30 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04CE78AE09
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:54:03 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-530fa34ab80so5284763a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695318818; x=1695923618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NC6Tj/wZ71OdWmHfRNe2x49Rd8CoFCC05cRR7nhn858=;
        b=qQigvHL9lmL+OoPYvO4V6n+iELDMYC7bnHThp249YqXGjdJ9Foui1GKxeaSPqw+l8W
         Cd/dNUqeq1vmg8OlUCc9y5aAX1zzLxobYxwIeMtYj0vJOlUqCVG61uv22f134/XIH6YK
         mFVE8cnXbqNY1f3Dw6PAlxxBxdF6P8MDKqwgKCZ5Z5pym8Bgls5Z18ek5i6VEU2STWuh
         O7e4c6F951zNUQ9PH5hWmMn4c+DrjBbceD9DtpuHG8zFQHcVp6RKiz30zTqngi3wlRSS
         Ha7Ws08ZGC/R3Q1GELvtga8bbtGWr3MAaI2yheap/bUE6lVs7PwQTdho2BH1v5q3S/+V
         1llA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318818; x=1695923618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NC6Tj/wZ71OdWmHfRNe2x49Rd8CoFCC05cRR7nhn858=;
        b=qbIqOsrcve4/mlvE9wYCmrCOojE77Raf4L6AI8ocz0geDc5R6e/SalgRbTmgXr9bzr
         cTyk8/Ah2ue+Vup6CzgY1HpWsWj5IA6/9+Bn7pGCN3sXTIGWyX6H/Bnd7I9GQKkWHaRN
         UpyUXuINwPQVoJ4YH+4ul/IYuh8EVoQgcLJackSjn11cmeHj3raCHQBHv77rzzf7QK2U
         qwiL1x8v57X92gumQBlXmc4ahXMqvj4q2NaYaA1wIJSSClLfgridBqhPH1oiHWjw7lie
         zce3DNOTTyWUMb0z74wjxbqyaqxG36WaDWO9dukUzcx7rzFmN/l+ReN6sUoaH5Ni3s9v
         h4Cg==
X-Gm-Message-State: AOJu0Ywqj8oExPClRuXyrjvLfNQXUYBbP3eupwxARTPhNuTeMGDtAvrg
	WMfBGiyJNB+ASsZ1Y5zlaOxiY9/QImbEUcjTVwaMHz8H
X-Google-Smtp-Source: AGHT+IEeRgrsoxDfX29qrjpP91FiFRBv3vO2R0yidMQo5d2X1FKFBQlgvaBLgvFag4zdxsrc6bIIrA==
X-Received: by 2002:a05:600c:3789:b0:3fb:c075:b308 with SMTP id o9-20020a05600c378900b003fbc075b308mr4598503wmr.12.1695307457067;
        Thu, 21 Sep 2023 07:44:17 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:16 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 05/19] staging: iio: resolver: ad2s1210: fix probe
Date: Thu, 21 Sep 2023 09:43:46 -0500
Message-Id: <20230921144400.62380-6-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921144400.62380-1-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This fixes a number of issues in the ad2s1210_probe() function:
- Move call to ad2s1210_setup_gpios() after `st->sdev = spi;`. This
  fixes use of this pointer before it is initialized.
- Check return value on ad2s1210_initial().
- Move devm_iio_device_register() to the end to avoid race of
  registering before fully initialized.
- Remove call to spi_setup(). Note: MODE_3 was incorrect, it should be
  MODE_1 but we can let the device tree select this.
- Change default value for fclkin. This is an external oscillator, not
  the SPI bus clock. (Will use device tree to get the correct value
  in a future patch. For now, using the eval board value.)
- Remove spi_set_drvdata().

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 0bdd5a30d45d..9c7f76114360 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -3,6 +3,7 @@
  * ad2s1210.c support for the ADI Resolver to Digital Converters: AD2S1210
  *
  * Copyright (c) 2010-2010 Analog Devices Inc.
+ * Copyright (C) 2023 BayLibre, SAS
  */
 #include <linux/types.h>
 #include <linux/mutex.h>
@@ -657,12 +658,8 @@ static int ad2s1210_probe(struct spi_device *spi)
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 	if (!indio_dev)
 		return -ENOMEM;
-	st = iio_priv(indio_dev);
-	ret = ad2s1210_setup_gpios(st);
-	if (ret < 0)
-		return ret;
 
-	spi_set_drvdata(spi, indio_dev);
+	st = iio_priv(indio_dev);
 
 	mutex_init(&st->lock);
 	st->sdev = spi;
@@ -671,22 +668,25 @@ static int ad2s1210_probe(struct spi_device *spi)
 	st->resolution = 12;
 	st->fexcit = AD2S1210_DEF_EXCIT;
 
+	ret = ad2s1210_setup_clocks(st);
+	if (ret < 0)
+		return ret;
+
+	ret = ad2s1210_setup_gpios(st);
+	if (ret < 0)
+		return ret;
+
+	ret = ad2s1210_initial(st);
+	if (ret < 0)
+		return ret;
+
 	indio_dev->info = &ad2s1210_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad2s1210_channels;
 	indio_dev->num_channels = ARRAY_SIZE(ad2s1210_channels);
 	indio_dev->name = spi_get_device_id(spi)->name;
 
-	ret = devm_iio_device_register(&spi->dev, indio_dev);
-	if (ret)
-		return ret;
-
-	st->fclkin = spi->max_speed_hz;
-	spi->mode = SPI_MODE_3;
-	spi_setup(spi);
-	ad2s1210_initial(st);
-
-	return 0;
+	return devm_iio_device_register(&spi->dev, indio_dev);
 }
 
 static const struct of_device_id ad2s1210_of_match[] = {
-- 
2.34.1


