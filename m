Return-Path: <devicetree+bounces-116866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FFA9B434C
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 08:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 861B51C21E3C
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 07:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31049204006;
	Tue, 29 Oct 2024 07:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fHfepmax"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7AF203719
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 07:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730187550; cv=none; b=bncXQ7EncHdEB923zhjAWvaAIimdkRoV5lg2zZkq7c2MPEo4wjyDpkFps2KAntmqVZDNt28ptz4Njn+OMAKUDNvYXbOmVweX8u/a7TgarwCIBPqozqIu8To7LEtIMtyBxu/32mgYT9DvtJz+gisie9+WOieEgBJ+56m+wPxcW6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730187550; c=relaxed/simple;
	bh=drc+y5kdHBFZW+y0Q/S5OpgzW7o6OSlxfTOYC3K65Q4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N3je+UCgJhHDbDv5c6QnwE1Z7hNcXZGaoxbPu44euCEHpkSGcXVVBdMkrIe9tG0SVh/yov+hCS0Jj56mXOnPbuqAmxCG20Yje6pdXAp7zi6x5/xBUccavNPHIbNk6z1JLshfzWZlc7JIL7H2a1dxNGG6hqDAUu2hpxQfY9oeAI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fHfepmax; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d47eff9acso3742658f8f.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 00:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730187546; x=1730792346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hgMBz/tynDf3qwEmbHc2DggdoWRxT1U8YZ1gh4qnbFU=;
        b=fHfepmax1bjN3eYdiBWW7SN8uScHnfsRu65+YF1DDpsjTvfrnKRbh8tWYIgvZwFi94
         +HIEvenh/u5ZRfhoTjzhQN+IxjJOjd5xQ0WMBot8nFXPX+wWurWd8lN+kKPPWQmdmw1F
         W2dOh7q3UTWqF7ts+9tlSwjmyK0bccckS7KSoWqFkrz+7YaruW5CuPMdoFXORqVNVEu3
         dzDFYMNKnjWD3JfvxB9S9fzYZx3u1anWXdmXP63+g6Hcf4EkMomI/b2GVdItsM5LN10i
         gJa/aRu/F4XDuT0b68Hp2T5ZE79Xw7wb7R1mcqIFZwKzdpsktne/cc/Fnh6kPoLNqaUn
         j0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730187546; x=1730792346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hgMBz/tynDf3qwEmbHc2DggdoWRxT1U8YZ1gh4qnbFU=;
        b=LOtEOWWj35c90uf+NXZdsqETVFI1CphCB8i3xT/kkdMg65XfgAraEb65p+YdkAmGC5
         Tk2SRBfQXPNJ/UEruKPwds32DJbS81oGJZnl2QTW7UvCrXQ2PFZsRf/yKzsQQMAk4Xgc
         LWw0PgMzQK3FM4csPTWmh1tv/G3gb135+R6Oc36Bt1F3CZ3+/HXdqiaX+aurwJP3f9AN
         9QPeuYiiCEPTxHY8pwKXNgOhGTPUnOLCgjG4hsxO6WzEPCa1WYWoIfQwMjDRMlWCMwbD
         xyAP3wzXcbzrI7Bu3z1FcF13u5ArxeHu8BtH8wHFzqN1Fa2cytmBqaENQueMw114O0RW
         CIXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKrncYsX5SXsIDsM15WXE/Ja1gnHxm6zg5F/7vROFExREUZ2/ahn9YsG7f7jABafdok+EB55xfa7YF@vger.kernel.org
X-Gm-Message-State: AOJu0YykMOoSB2yPhy9RkGlKH+HBD6iVZeTrx9eC/t29xO+h7MD7AHtB
	msC1XgUa9wN7PxvzX1wSy4VCOsFB2NOryAm0USJK0jmKDjVcrs3uWt1d0Z/NU5g=
X-Google-Smtp-Source: AGHT+IFfCheA8r50+46P+2FOGewVJdGU/O4icZhdT047JlLHmBFzBvNTn/xJP1LESIbRZyVbf43h/Q==
X-Received: by 2002:a5d:4b4b:0:b0:37d:62ed:b66b with SMTP id ffacd0b85a97d-3806120a6cemr7339765f8f.52.1730187545833;
        Tue, 29 Oct 2024 00:39:05 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b714fesm11692939f8f.71.2024.10.29.00.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 00:39:05 -0700 (PDT)
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
Subject: [PATCH 5/6] iio: dac: ad5791: Use devm_regulator_get_enable_read_voltage
Date: Tue, 29 Oct 2024 08:38:56 +0100
Message-Id: <20241029073857.753782-6-ahaslam@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241029073857.753782-1-ahaslam@baylibre.com>
References: <20241029073857.753782-1-ahaslam@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Axel Haslam <ahaslam@baylibre.com>

Simplify probe by using of the devm_regulator_get_enable_read_voltage.

Suggested-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 drivers/iio/dac/ad5791.c | 58 ++++++++++------------------------------
 1 file changed, 14 insertions(+), 44 deletions(-)

diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index c5d4d755d57a..92d47e766fd3 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -360,32 +360,6 @@ static int ad5791_probe(struct spi_device *spi)
 	if (IS_ERR(st->gpio_ldac))
 		return PTR_ERR(st->gpio_ldac);
 
-	st->reg_vdd = devm_regulator_get(&spi->dev, "vdd");
-	if (!IS_ERR(st->reg_vdd)) {
-		ret = regulator_enable(st->reg_vdd);
-		if (ret)
-			return ret;
-
-		ret = regulator_get_voltage(st->reg_vdd);
-		if (ret < 0)
-			goto error_disable_reg_pos;
-
-		pos_voltage_uv = ret;
-	}
-
-	st->reg_vss = devm_regulator_get(&spi->dev, "vss");
-	if (!IS_ERR(st->reg_vss)) {
-		ret = regulator_enable(st->reg_vss);
-		if (ret)
-			goto error_disable_reg_pos;
-
-		ret = regulator_get_voltage(st->reg_vss);
-		if (ret < 0)
-			goto error_disable_reg_neg;
-
-		neg_voltage_uv = ret;
-	}
-
 	st->pwr_down = true;
 	st->spi = spi;
 
@@ -395,7 +369,17 @@ static int ad5791_probe(struct spi_device *spi)
 		use_rbuf_gain2 = device_property_read_bool(&spi->dev,
 							   "adi,rbuf-gain2-en");
 
-	if (!IS_ERR(st->reg_vss) && !IS_ERR(st->reg_vdd)) {
+	pos_voltage_uv = devm_regulator_get_enable_read_voltage(&spi->dev, "vdd");
+	if (pos_voltage_uv < 0 && pos_voltage_uv != -ENODEV)
+		return dev_err_probe(&spi->dev, pos_voltage_uv,
+				     "failed to get vdd voltage\n");
+
+	neg_voltage_uv = devm_regulator_get_enable_read_voltage(&spi->dev, "vss");
+	if (neg_voltage_uv < 0 && neg_voltage_uv != -ENODEV)
+		return dev_err_probe(&spi->dev, neg_voltage_uv,
+				     "failed to get vss voltage\n");
+
+	if (neg_voltage_uv >= 0 && pos_voltage_uv >= 0) {
 		st->vref_mv = (pos_voltage_uv + neg_voltage_uv) / 1000;
 		st->vref_neg_mv = neg_voltage_uv / 1000;
 	} else if (pdata) {
@@ -411,7 +395,7 @@ static int ad5791_probe(struct spi_device *spi)
 	} else {
 		ret = ad5791_spi_write(st, AD5791_ADDR_SW_CTRL, AD5791_SWCTRL_RESET);
 		if (ret)
-			goto error_disable_reg_neg;
+			return dev_err_probe(&spi->dev, ret, "fail to reset\n");
 	}
 
 	st->chip_info = spi_get_device_match_data(spi);
@@ -425,7 +409,7 @@ static int ad5791_probe(struct spi_device *spi)
 	ret = ad5791_spi_write(st, AD5791_ADDR_CTRL, st->ctrl |
 		AD5791_CTRL_OPGND | AD5791_CTRL_DACTRI);
 	if (ret)
-		goto error_disable_reg_neg;
+		return dev_err_probe(&spi->dev, ret, "fail to write ctrl register\n");
 
 	spi_set_drvdata(spi, indio_dev);
 	indio_dev->info = &ad5791_info;
@@ -435,30 +419,16 @@ static int ad5791_probe(struct spi_device *spi)
 	indio_dev->name = st->chip_info->name;
 	ret = iio_device_register(indio_dev);
 	if (ret)
-		goto error_disable_reg_neg;
+		return dev_err_probe(&spi->dev, ret, "unable to register iio device\n");
 
 	return 0;
-
-error_disable_reg_neg:
-	if (!IS_ERR(st->reg_vss))
-		regulator_disable(st->reg_vss);
-error_disable_reg_pos:
-	if (!IS_ERR(st->reg_vdd))
-		regulator_disable(st->reg_vdd);
-	return ret;
 }
 
 static void ad5791_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
-	struct ad5791_state *st = iio_priv(indio_dev);
 
 	iio_device_unregister(indio_dev);
-	if (!IS_ERR(st->reg_vdd))
-		regulator_disable(st->reg_vdd);
-
-	if (!IS_ERR(st->reg_vss))
-		regulator_disable(st->reg_vss);
 }
 
 static const struct of_device_id ad5791_of_match[] = {
-- 
2.34.1


