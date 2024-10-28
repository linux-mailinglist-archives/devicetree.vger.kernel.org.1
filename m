Return-Path: <devicetree+bounces-116315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F119B2878
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BF8F1F217FE
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 07:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39601191F78;
	Mon, 28 Oct 2024 07:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="07/wjTCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B5F191473
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730099492; cv=none; b=WHZIbGhE+e7F6cMQt11NQp/uZdxORuGHwI/ovXVokGBkMJ8ewKDaiS2x4DeyDXqF7WtVghqZr03hQll9j51IzomWFR07KOwjWUwj1kdUK4mcVaWT59WkDuExlR07Ri4QmJojW1UkjZVpyUsJSX8oRKmcEF4E81OQ0BXI1vGItTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730099492; c=relaxed/simple;
	bh=jeD799FRio03ooNTV9omrCUjpBjRjM5v4BIatoJOPUQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LFFdPYFsXllnjF1fky2J7N0aXX9L9pedP2WbjH36mpaR21G6cdMrctfxGiCW/zOR1CcmqUyPYhDY6xeaUSD5o35+RA/xTPveyQY3hn6pe1ShA32XjRPtr5AqmS9k+CfC8pv49teqQRz/c2JhnKOKAiMnLuaFkSaVBkrNsTYeR1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=07/wjTCP; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37d6ff1cbe1so2968705f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 00:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730099488; x=1730704288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wlo+W2TNb5QSDgVIsOz+Qc1bNWYUz0GJAHB54nMHeS4=;
        b=07/wjTCPJschGnxSQzD081YpGx2qm0CfZXUlIny50oi4BJUvA4/scq706qDH5l58RD
         d28FzB4+vHhxpI1SZsfc8bDZ/dh6EEg83cMDnaHA0JGe+wID05GhWzsNoz1pu0m8kuCX
         bmXjzoG7iBsNSkli0z9jA6iCdiOhLmJUYRILLT+7Cq3Q9jLMMevPxz/aOWfxOnG11bDP
         oYWrLWR+nKrjbwQENiRHjsRdVAOUZiIuwJxg2iX5oeANig5O7t4JBOgR9F7Ud1+1v0I6
         +PevyGaar/CQsYrBHuovFgm2XCcYjp8Bf+1VsxcAi/1EN3cpFyAIQJ3Bd7n8+RMtBK62
         l75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730099488; x=1730704288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wlo+W2TNb5QSDgVIsOz+Qc1bNWYUz0GJAHB54nMHeS4=;
        b=iQkqNuWsvTrg0Revr2R4XJ51WdCTwTUoY0+EVrblM5+YlyvaMknIm5TTHP1vsyt+xV
         6N7bx5vuGARGeI8njbhPP9CM75Ero1FKESJ3pqHlZn6yTH/JwRHl9fiugtAPRnV2nU6D
         9AT8m1aL4pOphs/mlzlmUV4L0ywT2I3stJ9iSVlw2BH5A8cdff6szaSpqcnF600zZmkr
         ExDanQaMWFq8J/kXRoH4nIpXeX731zevCYFwXsMUU4WOhWcgQrmu5rMlrTiIji+DM11d
         0OmAv+o8B3Q8XRrl/En+lDCbvdoV+Q9WbzxVxMWoH1Uya2UyQGkE/Dd4N7Sv9M86e4m9
         A7XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoLas1ujLvchbc03BgDaDXLx9SM05pove1tKVVno08HcP+i2Y19ZCNZj9JCKOt6oKBnrXRY6MhLH19@vger.kernel.org
X-Gm-Message-State: AOJu0YySMT5K6tboFnvhjO76djVDyFV98MA8l5UQ/e+J51S8PWx0muLu
	SNEvCqsrHR9sNMBNhaw3viqXU3IG+SdEq7GFYW78GoL1EmMNTx5vIpC6Rj0zRZw=
X-Google-Smtp-Source: AGHT+IH+NLBqOtVIa/K+9SIAGMlDhsmTAvwcWoFxxaXBDT19t/CuuxshfkFAHPVDUXuQPdwR6Mf4Uw==
X-Received: by 2002:adf:ed48:0:b0:37d:48ec:547 with SMTP id ffacd0b85a97d-380611733d6mr5277355f8f.29.1730099488290;
        Mon, 28 Oct 2024 00:11:28 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c236sm8615383f8f.35.2024.10.28.00.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 00:11:27 -0700 (PDT)
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
Subject: [PATCH 4/6] iio: dac: ad5791: Add reset, clr and ldac gpios
Date: Mon, 28 Oct 2024 08:11:16 +0100
Message-Id: <20241028071118.699951-5-ahaslam@baylibre.com>
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

The ad7591 has reset, clr and ldac gpios. For the DAC to output data
continuously written to the data register the state of these gpios needs
to be set by the driver.

Add these gpios to the driver making them optional in case they are fixed
on the pcb.

Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 drivers/iio/dac/ad5791.c | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index a11e81211669..a7cf19346cf0 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -9,6 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/fs.h>
 #include <linux/device.h>
+#include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/spi/spi.h>
 #include <linux/slab.h>
@@ -87,6 +88,9 @@ struct ad5791_state {
 	struct spi_device		*spi;
 	struct regulator		*reg_vdd;
 	struct regulator		*reg_vss;
+	struct gpio_desc		*gpio_reset;
+	struct gpio_desc		*gpio_clear;
+	struct gpio_desc		*gpio_ldac;
 	const struct ad5791_chip_info	*chip_info;
 	unsigned short			vref_mv;
 	unsigned int			vref_neg_mv;
@@ -336,6 +340,22 @@ static int ad5791_probe(struct spi_device *spi)
 	if (!indio_dev)
 		return -ENOMEM;
 	st = iio_priv(indio_dev);
+
+	st->gpio_reset = devm_gpiod_get_optional(&spi->dev, "reset",
+						 GPIOD_OUT_HIGH);
+	if (IS_ERR(st->gpio_reset))
+		return PTR_ERR(st->gpio_reset);
+
+	st->gpio_clear = devm_gpiod_get_optional(&spi->dev, "clear",
+						 GPIOD_OUT_LOW);
+	if (IS_ERR(st->gpio_clear))
+		return PTR_ERR(st->gpio_clear);
+
+	st->gpio_ldac = devm_gpiod_get_optional(&spi->dev, "ldac",
+						GPIOD_OUT_HIGH);
+	if (IS_ERR(st->gpio_ldac))
+		return PTR_ERR(st->gpio_ldac);
+
 	st->reg_vdd = devm_regulator_get(&spi->dev, "vdd");
 	if (!IS_ERR(st->reg_vdd)) {
 		ret = regulator_enable(st->reg_vdd);
@@ -381,9 +401,14 @@ static int ad5791_probe(struct spi_device *spi)
 		dev_warn(&spi->dev, "reference voltage unspecified\n");
 	}
 
-	ret = ad5791_spi_write(st, AD5791_ADDR_SW_CTRL, AD5791_SWCTRL_RESET);
-	if (ret)
-		goto error_disable_reg_neg;
+	if (st->gpio_reset) {
+		fsleep(20);
+		gpiod_set_value_cansleep(st->gpio_reset, 0);
+	} else {
+		ret = ad5791_spi_write(st, AD5791_ADDR_SW_CTRL, AD5791_SWCTRL_RESET);
+		if (ret)
+			goto error_disable_reg_neg;
+	}
 
 	st->chip_info = spi_get_device_match_data(spi);
 	if (!st->chip_info)
-- 
2.34.1


