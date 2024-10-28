Return-Path: <devicetree+bounces-116316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD689B287C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3BDE1F211B0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 07:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3121922E3;
	Mon, 28 Oct 2024 07:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PLDJ8yab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7E21917DE
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730099493; cv=none; b=k6U1j78bcNTYsATSIJpbNGDFfmyQhpQACyurdmKdEFx1+0q3snE5wOGL7XOsEHC36sKpKNClveD32TNocZ5sRjmm638WjmHHU+gsES09DsdYSEoVQ+POKbX+3EC2/GS/SgioSZpp6LvnzUroiQeAUg8LiYDRT0XmfPmdZSrASTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730099493; c=relaxed/simple;
	bh=ZJ9kJOr0i/SOKs0Y9mpLHMOu9+YrWwrP/QA0Z1HEDAA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=O1jtLgm33y/WCPeQk9ntplB98hcXrQ2PAXBfUw4H5TJwXsnzR6dZXKWa7QpkXX2O8HhRF4vc5K5LSWECuypSV7gJLtws3/tOuIB+jGk4nmD85Nc8Ri/eU5MxQ2AEBQkKp+90J6rR+I1KPMtExh0iykRabRq1uyvA8cnAY6HAoWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PLDJ8yab; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so2581480f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 00:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730099489; x=1730704289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFFQC/6ZDAGH+zO4eJKUZ7fU44MdeYM/24PabqG6WNw=;
        b=PLDJ8yabU6Sq8h3U8LXwaWfdcWQCGvgyI2hPh7xynFp5a21/XgjmuRlimRpR/3u18w
         QT1YXO9OT8pkjw6U0jqUu4Mz6WefZvQu6fRNy+Y3vnrLenOo4miPtH37agBOeENOCPqa
         YccbsKuU5liQRWlAXCbRhCW4OvRZhW/3v8S2ea2p/B55wa9totLWRvOq1wS0lFiP8N8x
         GAz6If9czugkb+WCWjqTHLlJuU8zQpQAcuuSe64NCZ5f8SVjGACTA2Cpk4x/N1ZIsEyi
         A/UMatC5hXwBhJjb+pPDc84fQMPZR7y31lxaE9b0niJRVPusB8mUMPd6yglhiRB1x5Tl
         p7NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730099489; x=1730704289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YFFQC/6ZDAGH+zO4eJKUZ7fU44MdeYM/24PabqG6WNw=;
        b=rBGJM78bVFqxNFE+kzM8oi0HM5PZp/m63eF8rcCX95L2mQqyEALoQ+i+vyOFTTaDWH
         7u8H9AWI8TombF5ode8dxRTE+PTBHgU8C5ULgMiCJZwE0MGv2T8Tignbr5Gt9EA5ZUZJ
         SGvnY3TGHuXYPNaoO75U0xl35kinXnGB6UxrPHuoOcTySC/8zCPUCIf200LCtxT/vprj
         EpUNitt8Il9ixOm68Wdh66HDX4VT6GiakZ4Cmf1w+ePx/DV93+Yqrq0lJw0TlysGEsuX
         QnaSh3C1eiC9QQAr+VfmAAIeofAfRglMAjOs1FLPJ+Z8NmY2RXZ6kr8DDPhshEEXtyTL
         cDag==
X-Forwarded-Encrypted: i=1; AJvYcCUpa8tToNyDCD22QVGoudtwMXFhAmBmXr/OkuF+2ILI21Ba/UQIMlQmWYEbIM9KIKvo9I7F7czlX18F@vger.kernel.org
X-Gm-Message-State: AOJu0YzJy2PvKLKk05tFnI5prqQgY6XKe+YB09OkDEhUQkE9PJWBkiEc
	cpZzAeM6wXolFw9Iu2TWY9GNzdiqsERMC3oZZxe1coI4vfNQxZlP3kZJ2hceTWI=
X-Google-Smtp-Source: AGHT+IFv+8YyWNT0z8GIRHjCAwECYf2/lmLfWX3o4tF/kRePLXswua5qFOncxvi6eer78+XtDzyKqQ==
X-Received: by 2002:a5d:6145:0:b0:37c:d12c:17e5 with SMTP id ffacd0b85a97d-3806112307fmr5507852f8f.23.1730099489544;
        Mon, 28 Oct 2024 00:11:29 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c236sm8615383f8f.35.2024.10.28.00.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 00:11:28 -0700 (PDT)
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
Date: Mon, 28 Oct 2024 08:11:17 +0100
Message-Id: <20241028071118.699951-6-ahaslam@baylibre.com>
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

Simplify probe by using of the devm_regulator_get_enable_read_voltage.

Suggested-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 drivers/iio/dac/ad5791.c | 56 +++++++++-------------------------------
 1 file changed, 12 insertions(+), 44 deletions(-)

diff --git a/drivers/iio/dac/ad5791.c b/drivers/iio/dac/ad5791.c
index a7cf19346cf0..cf3d41a10c20 100644
--- a/drivers/iio/dac/ad5791.c
+++ b/drivers/iio/dac/ad5791.c
@@ -356,32 +356,6 @@ static int ad5791_probe(struct spi_device *spi)
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
 
@@ -391,7 +365,15 @@ static int ad5791_probe(struct spi_device *spi)
 		use_rbuf_gain2 = device_property_read_bool(&spi->dev,
 							   "adi,rbuf-gain2-en");
 
-	if (!IS_ERR(st->reg_vss) && !IS_ERR(st->reg_vdd)) {
+	pos_voltage_uv = devm_regulator_get_enable_read_voltage(&spi->dev, "vdd");
+	if (pos_voltage_uv < 0 && pos_voltage_uv != -ENODEV)
+		return dev_err_probe(&spi->dev, ret, "failed to get vdd voltage\n");
+
+	neg_voltage_uv = devm_regulator_get_enable_read_voltage(&spi->dev, "vss");
+	if (neg_voltage_uv < 0 && neg_voltage_uv != -ENODEV)
+		return dev_err_probe(&spi->dev, ret, "failed to get vss voltage\n");
+
+	if (neg_voltage_uv >= 0 && pos_voltage_uv >= 0) {
 		st->vref_mv = (pos_voltage_uv + neg_voltage_uv) / 1000;
 		st->vref_neg_mv = neg_voltage_uv / 1000;
 	} else if (pdata) {
@@ -407,7 +389,7 @@ static int ad5791_probe(struct spi_device *spi)
 	} else {
 		ret = ad5791_spi_write(st, AD5791_ADDR_SW_CTRL, AD5791_SWCTRL_RESET);
 		if (ret)
-			goto error_disable_reg_neg;
+			return dev_err_probe(&spi->dev, ret, "fail to reset\n");
 	}
 
 	st->chip_info = spi_get_device_match_data(spi);
@@ -421,7 +403,7 @@ static int ad5791_probe(struct spi_device *spi)
 	ret = ad5791_spi_write(st, AD5791_ADDR_CTRL, st->ctrl |
 		AD5791_CTRL_OPGND | AD5791_CTRL_DACTRI);
 	if (ret)
-		goto error_disable_reg_neg;
+		return dev_err_probe(&spi->dev, ret, "fail to write ctrl register\n");
 
 	spi_set_drvdata(spi, indio_dev);
 	indio_dev->info = &ad5791_info;
@@ -431,30 +413,16 @@ static int ad5791_probe(struct spi_device *spi)
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


