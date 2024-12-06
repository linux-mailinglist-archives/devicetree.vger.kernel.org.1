Return-Path: <devicetree+bounces-128101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D71B89E7767
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 18:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88A38188896C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2761FFC4F;
	Fri,  6 Dec 2024 17:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LfBEeWqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2D42206A7
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 17:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733506157; cv=none; b=gXxR2T/6VE81W1GIXMrqXe8u9pzhxe/MQuf7s3MiHr5NSfPIzABqnowfWvL2G/gOVrhyr9P9PpDG7dueIlryNKxdAGmEAwQUDJU6gN97XS79APkg+WkmrgatwlOUxUxfB1he04NG/Q8WPYSLHIBgqGj4edvH/BEe5WRyuVCbIIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733506157; c=relaxed/simple;
	bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oUptwLuwZuxeoh2fT/x9S9asaWsEd2sMNIvv83yxUAyWeGM1xu6weDrXqaM11F8avKPi5sK8Lqqpw8OTQPzXbhsymJ1Ly+hLwyMSKVqvX1GvBjuNjJRYCCXYhGMyRX7kTz0CkjMdanmKwRY9O2+wQf2lzW+RGCLseZsOhlXTbm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LfBEeWqz; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385eed29d17so1842109f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 09:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733506153; x=1734110953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=LfBEeWqzIqhDRQS55O8Gi1fefhFjpSpRzr/TMoiNxgSXav0XcI/2uvH9MVFzqjvKaQ
         axayA2Of7AJcGnXmOCZN+rrAP8StoPWJLxJhnD3z/rhs8LMNv5hwiptQ+z4viyJ3+faa
         FbyGD6JRlNDHMOSxxPbn+YOOoGuYJFxIMxMOiRti1o9Vl+tPfm31frEkaUtpUf7xltAw
         9mrcyN/+uYciNOX/bhtS28GCbwCyNO6XQr/gObFssGfNPKVzKBlCGWFhWxyVoqlWRBcG
         KHFM1oxUY2cO98rNmcdKsbqihUbIFAdOEUxbrfkIYDsWLHicNh/5vcXkpAkWbck53gAR
         +TdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733506153; x=1734110953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=FkBPM6M/MU7+BYHlMxQzsEiyN1kZZnHRP//3EhN0yXJoqdLyyjGKQOjIXBxmJPVb3O
         DtAsmQEit3VQR2tHoQR6gwBHqWoP1xl97UeCYOLbq9fqpctYuHRwzdSmtVRZ+zxgV9zG
         ee25kBoeWXi4e0BKqV4ryDQohhYYZeucw7IDehhJFUXjoQNs4jVjSMNmoHB3CAQrnprY
         +F4wkQcNMl+LWN2FfjAMXqO9ovZRzGIy0xU6be4Lh2LKQ3PoLRSPmmJ/OFD6KAgSrqgQ
         BUx9XW5XlMxlcOfVQh0bKfeM3DLecBO5jeh4YNmz/IAX6MLqIsJJjPAmSEPWX4G7zvi1
         Lmbw==
X-Forwarded-Encrypted: i=1; AJvYcCUqULMeObN/Mr9M28VKGvM81alLC+U98YYJuMhvEkLevmfBe+9dq/AwKn/QGu1rM63G/BSU6tnMxnsY@vger.kernel.org
X-Gm-Message-State: AOJu0YyZw2Fr8LPIxneCYLkranWRf/wDroxnHKGT87oCA+zh7vG7MYWm
	rFlLlKvP/2vGDL8ATc9V8cKsGcYIUY2C2kynTvssrFUlBEpG3VyyuyjqRCvoamY=
X-Gm-Gg: ASbGncu2cAaDykne/4xyrADdLE46xJMiv0JLxu2KDW+L8vhw8M9erytTGL7tKFacK4O
	xJwROKkvPtD9rRyYbCChm2sPHmP7sCKCrF6HM8amo76Ekgv68po1srRsRH6kF9TOGMWQ8cYwqA1
	Wkc6V6cGjeI00LpafLwCLdwjJ0i8Iwm9kBuU7EJcTwYypqejWy9785nHRwDxh3Bh9bb24FQ7Qvh
	B5BlSBINYV9AiRc+9uTaLPLzFiexovoFFEiAGnZLueEEXHYMD5BKs7qLK9xtWxNszeJmDxFwHkF
	rEaH
X-Google-Smtp-Source: AGHT+IHd4es1eZBOSw2eEfghY4/vXUkZsgHKgQq1U0xhJFuShgFPcSf1RU0stw1GBxgadbpoBIGY6A==
X-Received: by 2002:a05:6000:2c6:b0:385:e055:a294 with SMTP id ffacd0b85a97d-3862b3e6686mr3201300f8f.59.1733506152702;
        Fri, 06 Dec 2024 09:29:12 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3861d0f75b4sm5173815f8f.0.2024.12.06.09.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 09:29:12 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v6 01/10] iio: adc: ad7124: Don't create more channels than the driver can handle
Date: Fri,  6 Dec 2024 18:28:33 +0100
Message-ID:  <1b9a5a1d334e5501294f7f9f9d5893f1cdf1b0ec.1733504533.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
References: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1454; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnUzREwrfxrPn7/gyxJ6Ho77bnj3fw7lhluAKdc jf0pS0kSeGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ1M0RAAKCRCPgPtYfRL+ TvSDB/902QBn4cFJm37Cm52C+RXIivFD2cDnWUPasBDpmCXM/VMWtRJ4ZIhKWyEiVePK1aX7FV8 7ukskMh1kiXJnqmaCaU28wcw0UloCjidZ0yfrf3q+XvKp5c4neMdtxN9OPehebLx5fohRNuLIbf c1AjpFgvBprCHb4TKqdayMz74d2+i7HfmPCW2Z3vmOpjad7YoBNCkB2dA7oMHgzseA01nScasod vWnZlrUYeX8wSyOycazmbFWTxkzCZ4TnnXtd1cydFhU6QKThV2E5SSqTv2iF7iPtybBUk3dTzW0 /iAxfTYdQ3grQ9VTLMW2GAfgQbO4lDVdFB7rZxNKZAkSJ2tz
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
each channel defined in dt statically such a register. While the driver
could be a bit more clever about this, it currently isn't and specifying
more than 16 channels yields broken behaviour. So just refuse to bind in
this situation.

Fixes: b3af341bbd96 ("iio: adc: Add ad7124 support")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 8d94bc2b1cac..5352b26bb391 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -821,6 +821,16 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 	if (!st->num_channels)
 		return dev_err_probe(dev, -ENODEV, "no channel children\n");
 
+	/*
+	 * The driver assigns each logical channel defined in the device tree
+	 * statically one channel register. So only accept 16 such logical
+	 * channels to not treat CONFIG_0 (i.e. the register following
+	 * CHANNEL_15) as an additional channel register. The driver could be
+	 * improved to lift this limitation.
+	 */
+	if (st->num_channels > AD7124_MAX_CHANNELS)
+		return dev_err_probe(dev, -EINVAL, "Too many channels defined\n");
+
 	chan = devm_kcalloc(indio_dev->dev.parent, st->num_channels,
 			    sizeof(*chan), GFP_KERNEL);
 	if (!chan)
-- 
2.45.2


