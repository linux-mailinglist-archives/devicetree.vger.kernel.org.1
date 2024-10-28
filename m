Return-Path: <devicetree+bounces-116317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6B29B2880
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BD6B1C21019
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 07:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40521925AD;
	Mon, 28 Oct 2024 07:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jMIhhggk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D85191F8C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730099494; cv=none; b=rCCjQjE3iUmzAfjDh7GsIXhH0bZkEWSok9K/FT2EE8IMNVnKG9f+b5vutfuiRwWXvUVdj/jYps3p6AdfCrNGkkAOR4Cf+aVPCkMeso5jKPwW58Don0C4YZeT6d3xfD+hUsCuVii6uCk5jEIbreCNAKsxpMQV48a9qSLLA1EXRK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730099494; c=relaxed/simple;
	bh=iWDYd1b1Wvv6ndrxXc9PuI65UIqXmfta3N5ZMjJj6Xc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uC1dEarxZyqd9HFSkuDIU5FU0VNRh8AqxrHEpUL/IvG5yikZC2D1zk7ArnB0q73x1JoHN8ccxo6fb65aUimTjncQP5EZxqcK523tpbFgG/q57zbKFpY/qwrB31f4G0wd2IISFE87g0h1WXCBO4C+OKyVvBYTCM2+Sh63zuZEwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jMIhhggk; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d5aedd177so2683833f8f.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 00:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730099491; x=1730704291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nowgTJuac2Yh7X/z94khQScVguetvtBTtzCKLVQFaas=;
        b=jMIhhggkoeJ2WIkYNg++2nLfEIhjZnTrAQYlMJrDSDqg1zewTDJKn1TKIs2QVDjqLl
         GJLhJ4cu41WZtX6e+zDuPY4jEQdOrnNgphhefO+30dHtaJvzQGG9Oe4SRsK1/sg0Qeh6
         oA+eRjl54HOz7QOtxgHgDaGeLkSxayVivB2CRPx/Tq0XxCin3pDMyJkeCQqRjMlBKdVj
         bsOorXcPq1c9kPhcxUSKd3UwCsAFWHjtG0hUKB49dSamS2d6lVVo0XzlFxRBeuP7sAR7
         x2AQC7ecW6H/11PjMKHVQfx2qFOZcDe2Ijd94EZaUy/RN70F/oPo2eq8v7o98eYCOEmy
         3AyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730099491; x=1730704291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nowgTJuac2Yh7X/z94khQScVguetvtBTtzCKLVQFaas=;
        b=c7HeizMsK1MmwzHXXF8NFWXVxHYhYCsBhw5eqhKwLoeOo24uKc60G/ENdTXdCCYzmQ
         EUDSnUtjGU2h6vncx1ytGxV7FRMr/if9P3gn1rDlKdKuNeMRHn22/UwrZv766bueiGwU
         CmVNVA+0mYDdgytlccrkUEpZ11FoF67aqeHXe9PcYWDcoKq9rawb+8J7v0tW4pQU2MFh
         r1fwfVumqq40s/gi6PqSFXgilBM8bT0SwlpFMkv+9CwacCBfvf7q96Ox2lTHAG7ZMkF7
         9qBzxlarbujoNb0W2Yy71Wh4TshMyWAlPz0NaqYqivoOS4ZUL4ofdG0bufuVw4IgmEzH
         31Rg==
X-Forwarded-Encrypted: i=1; AJvYcCW8LYV1t+CFCox+N9TPtVTh6JCGLjswUkS/jHH41dAefsUAm16TSGelMOS1G56BFSNQZ4ABsmYtvSal@vger.kernel.org
X-Gm-Message-State: AOJu0YwOeMeVfInm3aFemFgJTqmU1BHJUTyBFFiCVcxrlJGzFkcd8p12
	eyinnW52tTJsfEn5olGZcjR855JdQaWDLRtYw083zQTJ9qGgBxmN+qeoLYdAcEY=
X-Google-Smtp-Source: AGHT+IGAkVXhRYlzG5465u6RhebnlFP7K5tzK+c6Ystc8SSucFk35yCRMrvtFQSJh6XMRRrMNs4PAA==
X-Received: by 2002:adf:f84d:0:b0:374:b3a3:3f83 with SMTP id ffacd0b85a97d-38061222394mr5179934f8f.53.1730099490785;
        Mon, 28 Oct 2024 00:11:30 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c236sm8615383f8f.35.2024.10.28.00.11.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 00:11:30 -0700 (PDT)
From: ahaslam@baylibre.com
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Axel Haslam <ahaslam@baylibre.com>
Subject: [PATCH 6/6] iio: dac: ad5791: Use devm_iio_device_register
Date: Mon, 28 Oct 2024 08:11:18 +0100
Message-Id: <20241028071118.699951-7-ahaslam@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028071118.699951-1-ahaslam@baylibre.com>
References: <20241028071118.699951-1-ahaslam@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Axel Haslam <ahaslam@baylibre.com>

Use devm_iio_device_register to automatically free the iio device.
since this is the last remaining resource that was not automatically
freed, we can drop the ".remove" callback.

Suggested-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 drivers/iio/dac/ad5791.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index cf3d41a10c20..21332c9aca5d 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -405,24 +405,12 @@ static int ad5791_probe(struct spi_device *spi)
 	if (ret)
 		return dev_err_probe(&spi->dev, ret, "fail to write ctrl register\n");
 
-	spi_set_drvdata(spi, indio_dev);
 	indio_dev->info = &ad5791_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = &st->chip_info->channel;
 	indio_dev->num_channels = 1;
 	indio_dev->name = st->chip_info->name;
-	ret = iio_device_register(indio_dev);
-	if (ret)
-		return dev_err_probe(&spi->dev, ret, "unable to register iio device\n");
-
-	return 0;
-}
-
-static void ad5791_remove(struct spi_device *spi)
-{
-	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-
-	iio_device_unregister(indio_dev);
+	return devm_iio_device_register(&spi->dev, indio_dev);
 }
 
 static const struct of_device_id ad5791_of_match[] = {
@@ -451,7 +439,6 @@ static struct spi_driver ad5791_driver = {
 		   .of_match_table = ad5791_of_match,
 		   },
 	.probe = ad5791_probe,
-	.remove = ad5791_remove,
 	.id_table = ad5791_id,
 };
 module_spi_driver(ad5791_driver);
-- 
2.34.1


