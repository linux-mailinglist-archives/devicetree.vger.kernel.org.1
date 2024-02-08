Return-Path: <devicetree+bounces-39801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3C584E263
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 14:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86AB61C29205
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E297B3E6;
	Thu,  8 Feb 2024 13:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lh8ZzVZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37B478B51
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707400261; cv=none; b=UnIWeIkG4qXpUkzi6PoCF7ziSUVe768yV0AagBN3RTIZb2qtVV8ukcZBFiPuv0JJR7lzo7rggMmNrGCDMz9dJl+k49VEwVX4kfzh7DkQAWmVpc/3hwG00z9/kwquK+YupjyOgSEUOQTlMQxo+ICoHv7VzbUovFdqiIctzWPmVO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707400261; c=relaxed/simple;
	bh=wV5NZg/LKpnZaM6Kml6m0dcZlcM1lNaxnWFeDUSittQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KaNORYDGrLRORAO6xqG2Hb8aJQplZQYrGXZnLZpi2Yr4R48f/qrsMG6d1hfgQvDj7pS1ICErx9CMeb+yWfQ1xANXd8XsYVkkT0V0iNnEU5S1L1vGmb7GJiA4tJ5TMQhBeILgCqsWssFlNeOVFD7jP6f2UkH8Eg/68RiG8a6uDPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lh8ZzVZv; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33b4e6972f6so1166958f8f.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 05:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707400256; x=1708005056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NGH79biiaV6ew1Z0cXAg/aqisf4dNxuTnwEmj4C4qiQ=;
        b=lh8ZzVZvTLUicTIVxQ4qPFomzDuXc46exihFevdT2J4VLyxdDZ9hC8I0xFLnnpiqpp
         k+5joDPqCNsN8S6lR+u21Wda88ZYXz2fQ/QIVG7l+zrc9NXB7i1HboNabf43zKfLA0kK
         01xB4DAAgoR7YTayfZVZyOdXdcuy7o+1nnR0IAjCYNqV9Bo87V5I4cy0jETp1W1/MwY4
         9aFR9woMLTvLnz7u1IOqpleqI/2XpUeGaOEtd6XJ2VOj9kjL6wUFI9Y6VExPv7egu+7+
         R8uyXCqaVwMTv0lpQWYimIgiVTTZrsWYpF58L2iXRNtwHcSZR0ZqlQPjk3KgmzMXBet2
         gmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707400256; x=1708005056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NGH79biiaV6ew1Z0cXAg/aqisf4dNxuTnwEmj4C4qiQ=;
        b=gy4s6sY4F8e2bIwfO+a2qJ96ASuUc35fSFcXDKtZXKgDrBntKKXZ+FigTpGbUwpGi2
         oR1myDP/q8vTS7G+UbxOnq3j3h0vJQt1EPiD7LFbfKvehAAdjmn/V4/P4RoT0rJ73uGD
         J4XIiIV35k5DaikShKhuuTWrEFQpqr1gXvuzKckWqyGU/SVdouoHDzLwkRMkfH5zzkV6
         siUaMGbyzrgec3AyUnN6s8qc4KLM72k0WlhPhKidBB8BTIUVXr2ZdvwscuR8Omk69SfJ
         RN5TIVeCb0gchAKy4i11cdKTmahrRPN3V+mpNV3Jz+sBOdTC24m0yOEFiwzFr2cBC1B6
         9w/Q==
X-Gm-Message-State: AOJu0Yw+KsZ4YpGVPVmGOq0V1WhZ1Frx/uXdNQlTK/kEjpAdUKGbCFnB
	SwucbKTdBIKoBLkz9sqnOLQq7p3PWvUEbQBRMopTkRP+LIG0NxFXfbvJZQPi+Uo=
X-Google-Smtp-Source: AGHT+IEL/bEok3aGAZ9cJfZ6xQA54KsnU4v6NcMd1qvt08rd82L8c738koEbW1bMtR6P4PwPhmJCsQ==
X-Received: by 2002:a5d:6809:0:b0:33b:5c3a:2c71 with SMTP id w9-20020a5d6809000000b0033b5c3a2c71mr612698wru.15.1707400256008;
        Thu, 08 Feb 2024 05:50:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUMD9c+ZKNRw1bpfKaCZARYguKHw8BadMkOq4V5z3HThBaDt5JOI6/oj3XVAMmHYF8Lh0cooGdvyTzhZNZs34ixuXHtW3u8QE3vwicjXaHvrhTvatv3pwTcirPmplWGrGI317sNhtfaAZR7zf6FGM4M15ocPb03H34UnkYowZpveNenBfYbhOvDusXqQMMpdPRBFm1i/QAMYELsFLt3y5hq2CRY5uae6k2MR4A16WUguhyJszHLQ6s+wBdHI9b4mAh/+jrYXPD86L/pj7g7vcp0UA6Io9N4t541YBKs1Hu0xOpF5dCOv/ebObv0Ic2Sbs+gxqZLK3saBpbpRGJ9KFALikUEv3Rlcgp8MddiBIEn7bTPcaoFIwiFpqQbA2pq76RXzaH1pUjKkmmrnlk1K9RcsNSU4amV9pWW3MNVzqRV1/Ok4jUdEyy39XbpfLQFOSXC/uQwDxssWVpnTejBnabfCjFV2+UDdlrRC59tvWHxKMkVqFzJR7d+mjE4yxiOHSp/kh45Qu0v8hhr60VbLYwkW/9jiFZSd6IRBZBOJVq/LuyYo/M9SM1jmX7SPYib7/HRTsB5A7Sz+4hwSqd62XJXullmfoolB1KTpUlIaA==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id m20-20020a056000181400b0033b43a5f53csm3618820wrh.103.2024.02.08.05.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:50:55 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 04/12] spi: s3c64xx: determine the fifo depth only once
Date: Thu,  8 Feb 2024 13:50:37 +0000
Message-ID: <20240208135045.3728927-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
References: <20240208135045.3728927-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Determine the FIFO depth only once, at probe time.
``sdd->fifo_depth`` can be set later on with the FIFO depth
specified in the device tree.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 338ca3f03ea5..72572e23cde5 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -191,6 +191,7 @@ struct s3c64xx_spi_port_config {
  * @tx_dma: Local transmit DMA data (e.g. chan and direction)
  * @port_conf: Local SPI port configuration data
  * @port_id: Port identification number
+ * @fifo_depth: depth of the FIFO.
  * @rx_fifomask: SPI_STATUS.RX_FIFO_LVL mask. Shifted mask defining the field's
  *               length and position.
  * @tx_fifomask: SPI_STATUS.TX_FIFO_LVL mask. Shifted mask defining the field's
@@ -214,6 +215,7 @@ struct s3c64xx_spi_driver_data {
 	struct s3c64xx_spi_dma_data	tx_dma;
 	const struct s3c64xx_spi_port_config	*port_conf;
 	unsigned int			port_id;
+	unsigned int			fifo_depth;
 	u32				rx_fifomask;
 	u32				tx_fifomask;
 };
@@ -424,7 +426,7 @@ static bool s3c64xx_spi_can_dma(struct spi_controller *host,
 	struct s3c64xx_spi_driver_data *sdd = spi_controller_get_devdata(host);
 
 	if (sdd->rx_dma.ch && sdd->tx_dma.ch)
-		return xfer->len > FIFO_DEPTH(sdd);
+		return xfer->len > sdd->fifo_depth;
 
 	return false;
 }
@@ -548,7 +550,7 @@ static u32 s3c64xx_spi_wait_for_timeout(struct s3c64xx_spi_driver_data *sdd,
 	void __iomem *regs = sdd->regs;
 	unsigned long val = 1;
 	u32 status;
-	u32 max_fifo = FIFO_DEPTH(sdd);
+	u32 max_fifo = sdd->fifo_depth;
 
 	if (timeout_ms)
 		val = msecs_to_loops(timeout_ms);
@@ -655,7 +657,7 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_driver_data *sdd,
 	 * For any size less than the fifo size the below code is
 	 * executed atleast once.
 	 */
-	loops = xfer->len / FIFO_DEPTH(sdd);
+	loops = xfer->len / sdd->fifo_depth;
 	buf = xfer->rx_buf;
 	do {
 		/* wait for data to be received in the fifo */
@@ -792,7 +794,7 @@ static int s3c64xx_spi_transfer_one(struct spi_controller *host,
 				    struct spi_transfer *xfer)
 {
 	struct s3c64xx_spi_driver_data *sdd = spi_controller_get_devdata(host);
-	const unsigned int fifo_len = FIFO_DEPTH(sdd);
+	const unsigned int fifo_len = sdd->fifo_depth;
 	const void *tx_buf = NULL;
 	void *rx_buf = NULL;
 	int target_len = 0, origin_len = 0;
@@ -1261,6 +1263,8 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 		sdd->port_id = pdev->id;
 	}
 
+	sdd->fifo_depth = FIFO_DEPTH(sdd);
+
 	s3c64xx_spi_set_fifomask(sdd);
 
 	sdd->cur_bpw = 8;
@@ -1352,7 +1356,7 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 	dev_dbg(&pdev->dev, "Samsung SoC SPI Driver loaded for Bus SPI-%d with %d Targets attached\n",
 					sdd->port_id, host->num_chipselect);
 	dev_dbg(&pdev->dev, "\tIOmem=[%pR]\tFIFO %dbytes\n",
-					mem_res, FIFO_DEPTH(sdd));
+		mem_res, sdd->fifo_depth);
 
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(&pdev->dev);
-- 
2.43.0.687.g38aa6559b0-goog


