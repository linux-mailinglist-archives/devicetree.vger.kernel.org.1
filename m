Return-Path: <devicetree+bounces-34258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B3483931D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 421B3287762
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 890DB6281A;
	Tue, 23 Jan 2024 15:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R1IHuyV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB29C612F6
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024083; cv=none; b=lF6SGUl8WB2ylHKQzwtiBMknIXO4CNqvNmlXacURbZ7xi7T82cA9Wnm/WvIi05/8sW8syu/RKwsXFflOeKI6+xp0HEKZjcDzTQ8C9k38ahi5LWDfoCXIkDoLYfmbGj45wUfmK0HJ/JaxL3S+8UgcQgR9gScw41kCnBWgY88nOqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024083; c=relaxed/simple;
	bh=0jefaH/X2bYazIxd0tEnmAOi/YD0WkwHPNe0EjJYDl8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lqkdjihGdKaFgkZf7xEo7sK4ZJj1QEnj6iuaCgu//6cQUjRScGQBt2z7G+YvSupS/5AePsdpFiec7NnP/UC+LlPjjwXNC98TvpAYQNEhnrgppBmWhefp5p6UoY0vjt6Ggn2BgyuIjXlsfhNXuVa01yujTxLLW2N2qDCy4K597IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R1IHuyV6; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40e76626170so49761605e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024079; x=1706628879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2fDM9KTVN+TskU9fbko0BxYR8hTUuEx0IDlypoaNnK8=;
        b=R1IHuyV6sLW+L72bW++AHL9U0m+KPlVx3OENxfejCAQEbc9ExLHTViHVhwpkkQym2G
         goqdnS9rYWj6lZUBLOJamen8+5R+YvgUVtyU7ct6ifde1IeNOTrXOAHUmNKjrP4cbtl9
         s+VFPpXuDJXSdkyETjkHAkhncRd4qu0xRc3eo1O3QfDnPZJl3pMrgg6Y8ZOiXyQoqFIJ
         gLpgILqzL6bTXcA1PLwaE0SNkNidA/9GqeY4JwXgMVW03pUcBUOCp/VF4uQ/311RPHEx
         sA3wV1OkC2QGo80uLM2URAIPkQEKXOHvY8F6vPpzZCxPgnN0Na1XeJrIshb3m8Bnn7Ax
         BppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024079; x=1706628879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2fDM9KTVN+TskU9fbko0BxYR8hTUuEx0IDlypoaNnK8=;
        b=Y4BFQ25n8zkx/hoSk/EG3xV7uRElLKwTe1rGZtFU7yvyCXdIa5XaIy4aTBGH4Qb2Fh
         fJQ3ZY0T+BO1nZkSiQecjQA/T4lUomUVzDXvOf5pFgwTDmsbNOoa9ljySDZ63mmCghPa
         IhS3xqLskZeLuyDoJaYxNZzXt+wKvNSQuzygPyzXiZ/njTqAJAD+DWvJ/bSQOqmjUirG
         Fq0vls9AZRwTx1TLP/OMCq6fo/UdVYNhpZAOVsoUbtqeGoR1saenH6hkwuWJJrw0tpxE
         R/sYASg5oeg9D+MPSWvOgbHTDA7i83Mh1QwFj2Hrysk2gBYt4S8U4w4jWn96u4pHuJWq
         Eo2Q==
X-Gm-Message-State: AOJu0YzMJy/r9HOwnlYYNljivLu6+lwUTdqTKKTXD6X4n/WOmZLe2Q2c
	F7Ow9j2NQXzftlhi3j1veYZVeLuaTQQSM+amImS0lwl32cC3Sd6cmNhxhniigJc=
X-Google-Smtp-Source: AGHT+IG7MEG80tjOklkuIf4WBsSG8lL2BEyEh1zV2JV31IyAf2q0kQ4mEQdrihuSIxu+3aeBuTvWIQ==
X-Received: by 2002:a05:600c:4e87:b0:40e:c23f:8784 with SMTP id f7-20020a05600c4e8700b0040ec23f8784mr262957wmq.111.1706024079161;
        Tue, 23 Jan 2024 07:34:39 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:38 -0800 (PST)
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
Subject: [PATCH 15/21] spi: s3c64xx: simplify s3c64xx_wait_for_pio()
Date: Tue, 23 Jan 2024 15:34:14 +0000
Message-ID: <20240123153421.715951-16-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240123153421.715951-1-tudor.ambarus@linaro.org>
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

s3c64xx_spi_transfer_one() makes sure that for PIO the xfer->len is
always smaller than the fifo size. Clean s3c64xx_wait_for_pio() and
emphasize that it works with lengths smaller than the fifo size.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 75 +++++++++------------------------------
 1 file changed, 17 insertions(+), 58 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index fd0e62ff8968..f5474f3b3920 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -484,26 +484,6 @@ static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
 	return 0;
 }
 
-static u32 s3c64xx_spi_wait_for_timeout(struct s3c64xx_spi_driver_data *sdd,
-					int timeout_ms)
-{
-	void __iomem *regs = sdd->regs;
-	unsigned long val = 1;
-	u32 status;
-	u32 max_fifo = FIFO_DEPTH(sdd);
-
-	if (timeout_ms)
-		val = msecs_to_loops(timeout_ms);
-
-	do {
-		status = readl(regs + S3C64XX_SPI_STATUS);
-	} while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < max_fifo &&
-		 --val);
-
-	/* return the actual received data length */
-	return FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status);
-}
-
 static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
 				struct spi_transfer *xfer)
 {
@@ -547,13 +527,11 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_driver_data *sdd,
 				struct spi_transfer *xfer, bool use_irq)
 {
 	void __iomem *regs = sdd->regs;
+	u8 *buf = xfer->rx_buf;
+	unsigned long time_us;
 	unsigned long val;
-	u32 status;
-	int loops;
-	u32 cpy_len;
-	u8 *buf;
+	u32 status, len;
 	int ms;
-	unsigned long time_us;
 
 	/* microsecs to xfer 'len' bytes @ 'cur_speed' */
 	time_us = (xfer->len * 8 * 1000 * 1000) / sdd->cur_speed;
@@ -576,48 +554,29 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_driver_data *sdd,
 		status = readl(regs + S3C64XX_SPI_STATUS);
 	} while (FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status) < xfer->len &&
 		 --val);
-
 	if (!val)
 		return -EIO;
 
 	/* If it was only Tx */
-	if (!xfer->rx_buf) {
+	if (!buf) {
 		sdd->state &= ~TXBUSY;
 		return 0;
 	}
 
-	/*
-	 * If the receive length is bigger than the controller fifo
-	 * size, calculate the loops and read the fifo as many times.
-	 * loops = length / max fifo size (calculated by using the
-	 * fifo mask).
-	 * For any size less than the fifo size the below code is
-	 * executed atleast once.
-	 */
-	loops = xfer->len / FIFO_DEPTH(sdd);
-	buf = xfer->rx_buf;
-	do {
-		/* wait for data to be received in the fifo */
-		cpy_len = s3c64xx_spi_wait_for_timeout(sdd,
-						       (loops ? ms : 0));
-
-		switch (sdd->cur_bpw) {
-		case 32:
-			ioread32_rep(regs + S3C64XX_SPI_RX_DATA,
-				     buf, cpy_len / 4);
-			break;
-		case 16:
-			ioread16_rep(regs + S3C64XX_SPI_RX_DATA,
-				     buf, cpy_len / 2);
-			break;
-		default:
-			ioread8_rep(regs + S3C64XX_SPI_RX_DATA,
-				    buf, cpy_len);
-			break;
-		}
+	len = FIELD_GET(S3C64XX_SPI_ST_RX_FIFO_LVL, status);
+
+	switch (sdd->cur_bpw) {
+	case 32:
+		ioread32_rep(regs + S3C64XX_SPI_RX_DATA, buf, len / 4);
+		break;
+	case 16:
+		ioread16_rep(regs + S3C64XX_SPI_RX_DATA, buf, len / 2);
+		break;
+	default:
+		ioread8_rep(regs + S3C64XX_SPI_RX_DATA, buf, len);
+		break;
+	}
 
-		buf = buf + cpy_len;
-	} while (loops--);
 	sdd->state &= ~RXBUSY;
 
 	return 0;
-- 
2.43.0.429.g432eaa2c6b-goog


