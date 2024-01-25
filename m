Return-Path: <devicetree+bounces-35129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7297083C5CA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:57:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE507B2603F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31BA812BF3A;
	Thu, 25 Jan 2024 14:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vZHq/yQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2C512BE86
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194239; cv=none; b=dboHZHUdRuQ5E7VAXjuYsNhs5swiUf1ZO4sAlFUJUsVHYCWogIj+fDCbjQe70iTQ4QgCVzkrQSKsqFek+Fuag2H2z0EbaH7eET+bLEBc6gtm2ecUpBYZea0qD05LikM2nJutqSOzwrISw+yL7LZONfBGHHrGVxLexQ6gPWf9pMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194239; c=relaxed/simple;
	bh=28hQgaFbSAW82OwCmSk1a75+xEJyszQNZJtVWvyEGuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=stTvKdSmoWFQooRgk+6K1mkJeDZ7ZwvoNXytNUxqwuM/eBr2t3tD8EE+LhSDtoa7XKTaOE3QOdyIvHig++cdIrEmRm8xPso+twG4cIO9jg8E3FdxiPiNR9MtfEJIkAthwI8rlluKGX9xALUaukZnNmh01OvpF6VZF/NBGHm9syc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vZHq/yQI; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40eb2f392f0so37935285e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194234; x=1706799034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILSaztB6FcGB0AGX6yBD5eg2sH+uIPmbRLL9DGHOYeE=;
        b=vZHq/yQIgu6r3/fOx1sm7uqJINFB8alxnoCsqCliZsE84wmtitwuI80fNiPl4IECpa
         PCF+f35BrTWa6eQh6eV6JuxkBllzMkBzRoiHwhLnV/OvEHEGvAxxz0x8t5TXU1khlNu5
         1xVwbKj21r29dh1IeumNsC4o6Ty6iHKeCpXzGQEITQSH8Anaus52ZxlweZ3hiDNLerzb
         CrpedIQxHmOcTJqEufq+033PqBq1p461iAzr83CsDZ28prjaVNMaF6h8RAy4s+IrSwjs
         0wvMTYsIkpPnZ8dcqcraf/yxViXLoRqqHIkeP2BifqPwPy5xngq7ot8r7+WbD9119RAm
         +7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194234; x=1706799034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILSaztB6FcGB0AGX6yBD5eg2sH+uIPmbRLL9DGHOYeE=;
        b=DRnv6XmI1FuRu7lAw4AlBDIa6blTgSdiOl1NPTqbevyElXzzUhVpN4xKkDHsEy8ZBQ
         ZWnxriD024UvvF0iCN4AVP3fmodhqssRxf5CLVjJi7tuA6LimlVaTaHAQZqvK+yJYxPw
         aUtgYvgs/L6RFBLfUmS/JiEQcXLPS8Od7zvhrAgBAXztqHPdXBMDgwwMqC4uWKO1Fadx
         g/PhXyLlzIFsVv44waE7GVMz9cjmShSHWt0r4m/9aDUmwed+1XmNKFAYqCvl6IpwWEwD
         bDpM1vR8hERs6etSdFjmQN1dDEqZsjrZ3eP7nsjkahZLcrAngoVZkEeMuK4MJEO8aWud
         MfJA==
X-Gm-Message-State: AOJu0Yx5o0qT1t4xs9ahCq7GSR6RMvhd406ydO/NFysTJvgOlt/YfhyF
	DNKTpL1gveoM6t/kCaDWEAcukTjZY6ngA2qeENDt1tcMxogem6aOQQA2ybUkpk0=
X-Google-Smtp-Source: AGHT+IEEFjYXZBt80LZEizQKLMuDRZIJ0xb27lsGtHr9gw6xNivRFK3y+AivGuvHVv+xDYMvvMwlMw==
X-Received: by 2002:a05:600c:3d09:b0:40d:3b2d:99a0 with SMTP id bh9-20020a05600c3d0900b0040d3b2d99a0mr632998wmb.81.1706194234358;
        Thu, 25 Jan 2024 06:50:34 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:33 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 26/28] spi: s3c64xx: add iowrite{8,16}_32_rep accessors
Date: Thu, 25 Jan 2024 14:50:04 +0000
Message-ID: <20240125145007.748295-27-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are SoCs that allow just 32 bit register accesses otherwise they
throw a SError interrupt if accessing the bus with 8 or 16 bits widths.
Such an SoC is the google gs101. Allow such SoCs to use the
iowrite{8,16}_32_rep accessors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 46 +++++++++++++++++++++++++++------------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index fa70c6aab7c2..35a2d5554dfd 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -139,6 +139,7 @@ struct s3c64xx_spi_dma_data {
  *	prescaler unit.
  * @clk_ioclk: True if clock is present on this device
  * @has_loopback: True if loopback mode can be supported
+ * @use_32bit_io: True if the SoC allows just 32-bit register accesses.
  *
  * The Samsung s3c64xx SPI controller are used on various Samsung SoC's but
  * differ in some aspects such as the size of the fifo and spi bus clock
@@ -156,6 +157,7 @@ struct s3c64xx_spi_port_config {
 	bool	clk_from_cmu;
 	bool	clk_ioclk;
 	bool	has_loopback;
+	bool	use_32bit_io;
 };
 
 /**
@@ -412,6 +414,35 @@ static bool s3c64xx_spi_can_dma(struct spi_controller *host,
 	return false;
 }
 
+static void s3c64xx_iowrite_rep(const struct s3c64xx_spi_driver_data *sdd,
+				struct spi_transfer *xfer)
+{
+	void __iomem *regs = sdd->regs;
+
+	switch (sdd->cur_bpw) {
+	case 32:
+		iowrite32_rep(regs + S3C64XX_SPI_TX_DATA,
+			      xfer->tx_buf, xfer->len / 4);
+		break;
+	case 16:
+		if (sdd->port_conf->use_32bit_io)
+			iowrite16_32_rep(regs + S3C64XX_SPI_TX_DATA,
+					 xfer->tx_buf, xfer->len / 2);
+		else
+			iowrite16_rep(regs + S3C64XX_SPI_TX_DATA,
+				      xfer->tx_buf, xfer->len / 2);
+		break;
+	default:
+		if (sdd->port_conf->use_32bit_io)
+			iowrite8_32_rep(regs + S3C64XX_SPI_TX_DATA,
+					xfer->tx_buf, xfer->len);
+		else
+			iowrite8_rep(regs + S3C64XX_SPI_TX_DATA,
+				     xfer->tx_buf, xfer->len);
+		break;
+	}
+}
+
 static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
 				    struct spi_transfer *xfer, int dma_mode)
 {
@@ -445,20 +476,7 @@ static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
 			modecfg |= S3C64XX_SPI_MODE_TXDMA_ON;
 			ret = s3c64xx_prepare_dma(&sdd->tx_dma, &xfer->tx_sg);
 		} else {
-			switch (sdd->cur_bpw) {
-			case 32:
-				iowrite32_rep(regs + S3C64XX_SPI_TX_DATA,
-					xfer->tx_buf, xfer->len / 4);
-				break;
-			case 16:
-				iowrite16_rep(regs + S3C64XX_SPI_TX_DATA,
-					xfer->tx_buf, xfer->len / 2);
-				break;
-			default:
-				iowrite8_rep(regs + S3C64XX_SPI_TX_DATA,
-					xfer->tx_buf, xfer->len);
-				break;
-			}
+			s3c64xx_iowrite_rep(sdd, xfer);
 		}
 	}
 
-- 
2.43.0.429.g432eaa2c6b-goog


