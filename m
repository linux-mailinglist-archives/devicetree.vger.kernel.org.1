Return-Path: <devicetree+bounces-40805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B61A8516A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E07091F22FD7
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17AC47A7D;
	Mon, 12 Feb 2024 14:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p/YU6no2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4808846B80
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 14:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707746646; cv=none; b=BTE++jQ0L5Kd90Plh/c1qqL29U6RolT5TV92bnD9PhistvdRifxP27NYCN2Q0DYZSHHvq0FkLTT/vt7oVSZ/Pbb8m+yVzAsoW9YepBHQa3I9Y59PnUXqtLYUye7rRSM+mapvBTClxg2yFhQwijpa2fbvY3N/MAoOgY7cNJPJpKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707746646; c=relaxed/simple;
	bh=2cLaT7PEBsclspzR4xlswlgWO289KYuc6LcLsObPHq0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SiFcIARJqEgQpmSoJw9CZQFlH/PQA5vpx8Sxs8uZ4AVSrkqBiic+hKd5WWDrLNcNFcJT1pWzgXUdIPx9iX0B54GstJEancUy1CQvlvqeKpYH2G41TojvVSso8U6f8wHEvj/iuJmqocGtvKFCPwHSjgkyHsC6gnpdmMBBmPSH7oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p/YU6no2; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-51186925925so1559996e87.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 06:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707746642; x=1708351442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fm5OjWDCnevgUex+kbg78oFWzlDeXhj9v/6Ap/z4iAc=;
        b=p/YU6no2QwskukzACaZdCVfylpZp1ruqMU/jJ3VqUx4YNS99Ou+5CiAaVXpYpyPPjU
         676X5TJe7m7BYfxVvEeLZprecjsmi5KjX/7N0YUtEOio7OeWFrbqNPOSfYX2QcKqcuKb
         DGxT/8Xrf7ZosN+EKvTki7XIeNAzg8R/GZUSlLm47Kk1RVSkXFThRyhiVP41m9qfjQc9
         WmRjX7WhtgFLXxDdGf1WUpuX1aOs/DoyUzpT9V9yBXHxjOJWQo8vS/T937F3WAbDZHm2
         9bRyPrKHycw94PCxQVK/BSol6T+8MFDJQMAdlM+ztntnCkCXafnKCyfre45V+LxopAeo
         QIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707746642; x=1708351442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fm5OjWDCnevgUex+kbg78oFWzlDeXhj9v/6Ap/z4iAc=;
        b=m6SpFr1sMKYdMskYYGEnyIfwngoT8Z8k8Urt5VFyNioQ2OCXmbl3CYanRXmEvY2rKL
         R5nh6Bz1v38X0HTaS4cGpUq54BTEXjIwmJ+1JgHv/mnlpfZDSgK8sQdPZKwZYXs23jYC
         i7EY9Eq0iv/UAlboUPRMdkw99gLDCiA3ZzKZ8DbUD1cd92aKbZ4txrLiZEX3gAGWfXSG
         K4c6fuKF5U0DVn9F/r9I3Jba8MZnli7aqESxoxKC+MN1DAIaRMHmWesiLnx8jx6oBkho
         paGkAkMJz9s8pzqctm1Z+GVPlBLc+NRBqS0ER21LPaJhb5StokWI6PrpBQs09DStYZo7
         h+9A==
X-Gm-Message-State: AOJu0Yx2209ooVtB0SVxJ1S0MCwW7yHW5jmTp7Oo9v58rTlfuF73W1ND
	F3bRfV1ubIrpbMt8kExOixHpig30s+jyBJ4hAvF0I0V5SeUzcGDse3atNBz5SIo=
X-Google-Smtp-Source: AGHT+IGUIOvKRBRsfjSEIyB8DOQhE2eTT1a774d0nKCIqNflUbLuzYQJzNDyMoOhnfr+PcoGd/Rrvw==
X-Received: by 2002:a05:6512:124a:b0:511:75b8:43d with SMTP id fb10-20020a056512124a00b0051175b8043dmr5341182lfb.51.1707746642294;
        Mon, 12 Feb 2024 06:04:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWx7j10LZCHyERDVGFgry/bMvmTXoQG0iad6IA1WhP3EPiq2hNoFJ55VUGWl3Jhb3RmWvsMC5iALJfrTdzlWzu4QszLM0aAYJbmET0+LYZyHQHnhPkj7H9+cp9P4V3xu7UJbz7BjaWqXAZOv4vhN4s+A54CYbx+lruTavNVW60QaeMulJqFyukDVg+2BKOosYKyrC6vSnjxfZ3EGw5Fl6q9OQvfEJ1f4PwQXXWLLHRL8Z8gToZ0zCPJZ+TWvUcLW/MC9vdr/ygipoxUSiAUntCy4BdNkIi3pJplxCC9+wcO60t4zhT/i9TWcdUS901ZnTxDR1d4YM6ZkT2IZPi59pH58dqQy7u7WfrlGWpVMVMAPzMg6nRkRmcaxYf6n78yfyNNeGeuKAILXOWyCBbnFf04NgM4+RK2hsvdX1le9bNfgfi9YmYAWLc7UQ/gIbRI8nEOn3S73iNkCvIshhRNQWlaV61A9NxoEwOdOWBzo+dfTqHUBvrzsOtD3z6EKLGIBrK+H0s0dt0IK6doooglzqgwXt68nlCgSDArWEdtyewzk9rPj2woRRC+sVme9uR6ky6jvo6g/Er45i7JTr0xxgUGTzIV1wKpGddX4ZI/Ot9kRzL3Ks0=
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d4b09000000b0033b843786e1sm2135356wrq.51.2024.02.12.06.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 06:04:01 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	krzysztof.kozlowski@linaro.org,
	semen.protsenko@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 10/12] spi: s3c64xx: deprecate fifo_lvl_mask, rx_lvl_offset and port_id
Date: Mon, 12 Feb 2024 14:03:29 +0000
Message-ID: <20240212140331.915498-11-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240212140331.915498-1-tudor.ambarus@linaro.org>
References: <20240212140331.915498-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Deprecate fifo_lvl_mask, rx_lvl_offset and port_id. One shall use
{rx, tx}_fifomask instead. Add messages to each port configuration.

Suggested-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index d2d1c9767145..128f4a7c4bd9 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -135,8 +135,8 @@ struct s3c64xx_spi_dma_data {
 
 /**
  * struct s3c64xx_spi_port_config - SPI Controller hardware info
- * @fifo_lvl_mask: Bit-mask for {TX|RX}_FIFO_LVL bits in SPI_STATUS register.
- * @rx_lvl_offset: Bit offset of RX_FIFO_LVL bits in SPI_STATUS regiter.
+ * @fifo_lvl_mask: [DEPRECATED] use @{rx, tx}_fifomask instead.
+ * @rx_lvl_offset: [DEPRECATED] use @{rx,tx}_fifomask instead.
  * @fifo_depth: depth of the FIFO.
  * @rx_fifomask: SPI_STATUS.RX_FIFO_LVL mask. Shifted mask defining the field's
  *               length and position.
@@ -192,7 +192,7 @@ struct s3c64xx_spi_port_config {
  * @rx_dma: Local receive DMA data (e.g. chan and direction)
  * @tx_dma: Local transmit DMA data (e.g. chan and direction)
  * @port_conf: Local SPI port configuration data
- * @port_id: Port identification number
+ * @port_id: [DEPRECATED] use @{rx,tx}_fifomask instead.
  * @fifo_depth: depth of the FIFO.
  * @rx_fifomask: SPI_STATUS.RX_FIFO_LVL mask. Shifted mask defining the field's
  *               length and position.
@@ -1508,7 +1508,9 @@ static const struct dev_pm_ops s3c64xx_spi_pm = {
 };
 
 static const struct s3c64xx_spi_port_config s3c2443_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x7f },
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 13,
 	.tx_st_done	= 21,
 	.clk_div	= 2,
@@ -1516,14 +1518,18 @@ static const struct s3c64xx_spi_port_config s3c2443_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config s3c6410_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x7f, 0x7F },
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 13,
 	.tx_st_done	= 21,
 	.clk_div	= 2,
 };
 
 static const struct s3c64xx_spi_port_config s5pv210_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x1ff, 0x7F },
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 2,
@@ -1531,7 +1537,9 @@ static const struct s3c64xx_spi_port_config s5pv210_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynos4_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x1ff, 0x7F, 0x7F },
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 2,
@@ -1541,7 +1549,9 @@ static const struct s3c64xx_spi_port_config exynos4_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynos7_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x1ff, 0x7F, 0x7F, 0x7F, 0x7F, 0x1ff},
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 2,
@@ -1551,7 +1561,9 @@ static const struct s3c64xx_spi_port_config exynos7_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff},
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 2,
@@ -1562,7 +1574,9 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynos850_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f },
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 4,
@@ -1573,8 +1587,10 @@ static const struct s3c64xx_spi_port_config exynos850_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config exynosautov9_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x1ff, 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff, 0x7f,
 			    0x7f, 0x7f, 0x7f, 0x7f},
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 4,
@@ -1586,7 +1602,9 @@ static const struct s3c64xx_spi_port_config exynosautov9_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config fsd_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 2,
@@ -1597,8 +1615,10 @@ static const struct s3c64xx_spi_port_config fsd_spi_port_config = {
 };
 
 static const struct s3c64xx_spi_port_config gs101_spi_port_config = {
+	/* fifo_lvl_mask is deprecated. Use {rx, tx}_fifomask instead. */
 	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
 			    0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},
+	/* rx_lvl_offset is deprecated. Use {rx, tx}_fifomask instead. */
 	.rx_lvl_offset	= 15,
 	.tx_st_done	= 25,
 	.clk_div	= 4,
-- 
2.43.0.687.g38aa6559b0-goog


