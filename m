Return-Path: <devicetree+bounces-34256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0372839316
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F14C1C23E66
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D37066168D;
	Tue, 23 Jan 2024 15:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zo5S7x7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2960C60DFF
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024081; cv=none; b=DwkZekrQg/unMDCCE1eQT9P83oYeWkLgRNAj8dSrLutiAOHMCCKYP7rZEkmx6dCreZe/Cmwnv7Z4QknUINRU4q6kvbYZyCKlJ/C6kT+Etl2f21EOYfGb+vAMuCpsdKsZWBd0Rl9UyyFH+J3pKZXBAIe7MINHA0nXeqzdq89XyXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024081; c=relaxed/simple;
	bh=MM8h/S9zhmJXxlI1gWjw0PgXgsMVTe/E1qBEBZIGhCw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jrriZMzKHZaHxiliPOPOIKAPeVPHctnmMEVwVrBiUOhN3Czun6++iHko06bRPfFQbbTLTcqJJr8dj5SqD2a4/taS52gy7fO2RwFtlqNyRn0eMhdcWGvlocjLIuCEnYaTRkWKZDBGsBOXLRVW3/tjwvRn1RRoM+wZ+9f0X60yxyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zo5S7x7f; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40eacb4bfa0so24559035e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024077; x=1706628877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kxj/GKivy8KHz8wlyYVu9rRfrbEmnmhas4Q7ujviZXU=;
        b=zo5S7x7fXsE2/iibwqDoFYX/xn2PrzwJxfuQDTlsEBvEadeSWOgaudyzBXBz1h5kQp
         z/jGMd9AGwKZJVdOlR0NOrRxmNlyPLLxWVUxjwyRlVWhtp8w4U52FKDqnj1VJjAB+5Sl
         EaLQDpGKXRRv+qgVPSOIK3ZLmnagb01AhkHgMVTKfa1i/o/+snmhB/36DFH2hzXtYjLt
         yU7AWIwDH73zMb2H757hwoeHEZpGqzJBtqf+ro7lLTF4jKUknGdI7FKxLcZvtWs7KUXw
         yAmPrpm/K2kI5DwCTmUefLJgNHU/Lgo6NFSQNPKsYx+O+3nP7M5yTJLYclGx4mbXw3/5
         qPVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024077; x=1706628877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kxj/GKivy8KHz8wlyYVu9rRfrbEmnmhas4Q7ujviZXU=;
        b=Z+jDk4WQBGw2pFzLS7JV2wAVxgsKGLCmAjfsH3LBbzJW9ZQvOB43o9T6a5DjHEeUL/
         5kj/UWogZ+cgSXc79HFYkM8nCEJCVRzYG/pwHNhfR5+5kxWijtcLvxmA3O5upds03Nrf
         rc3FdvDhh2vtBqWXZo8REZinNKUHsiTJWPfcK6meexJih90+vPK+yMzNyyg9BT6JfJCB
         QnEeLzSLIwLb7bQhF0CxKL6iCLQZJmJ9JsjB2c9mnVmW069dZRJ/vA1pNS+Si+QwSOWw
         q/lEjtC5Y8nX2pe4Ds1fLUH4x5NoHwNS7v7IzQGq0W5Vt+mZab/vaE5V+lznYRghb54W
         6vtA==
X-Gm-Message-State: AOJu0Yyj29FTVoQKKJ6XlUgcBzBLYs0gcyGnwX1P5wFZj1sBtDQDDA3M
	q1pEzDxWC99Bl2iBj8v1ahEN1pk+bZteZtfvzxJuP1tWhJjsOSw6GI9CJOo+4VTkK71Xkgpo4JQ
	82TQ=
X-Google-Smtp-Source: AGHT+IFcab2zDsD9I27H2KBoICJD/fGV5rpgJVASWI6Q+u5HNWTcCrDWfrf1zCUTug9AMM0BIJrhgw==
X-Received: by 2002:a7b:cd8f:0:b0:40e:b505:5581 with SMTP id y15-20020a7bcd8f000000b0040eb5055581mr265504wmj.60.1706024077455;
        Tue, 23 Jan 2024 07:34:37 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:36 -0800 (PST)
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
Subject: [PATCH 13/21] spi: s3c64xx: rename prepare_dma() to s3c64xx_prepare_dma()
Date: Tue, 23 Jan 2024 15:34:12 +0000
Message-ID: <20240123153421.715951-14-tudor.ambarus@linaro.org>
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

Don't monopolize the name. Prepend the driver prefix to the function
name.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 2b088a190ab9..8897b5895cde 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -272,8 +272,8 @@ static void s3c64xx_spi_dmacb(void *data)
 	spin_unlock_irqrestore(&sdd->lock, flags);
 }
 
-static int prepare_dma(struct s3c64xx_spi_dma_data *dma,
-			struct sg_table *sgt)
+static int s3c64xx_prepare_dma(struct s3c64xx_spi_dma_data *dma,
+			       struct sg_table *sgt)
 {
 	struct s3c64xx_spi_driver_data *sdd;
 	struct dma_slave_config config;
@@ -439,7 +439,7 @@ static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
 		chcfg |= S3C64XX_SPI_CH_TXCH_ON;
 		if (dma_mode) {
 			modecfg |= S3C64XX_SPI_MODE_TXDMA_ON;
-			ret = prepare_dma(&sdd->tx_dma, &xfer->tx_sg);
+			ret = s3c64xx_prepare_dma(&sdd->tx_dma, &xfer->tx_sg);
 		} else {
 			switch (sdd->cur_bpw) {
 			case 32:
@@ -471,7 +471,7 @@ static int s3c64xx_enable_datapath(struct s3c64xx_spi_driver_data *sdd,
 			writel(((xfer->len * 8 / sdd->cur_bpw) & 0xffff)
 					| S3C64XX_SPI_PACKET_CNT_EN,
 					regs + S3C64XX_SPI_PACKET_CNT);
-			ret = prepare_dma(&sdd->rx_dma, &xfer->rx_sg);
+			ret = s3c64xx_prepare_dma(&sdd->rx_dma, &xfer->rx_sg);
 		}
 	}
 
-- 
2.43.0.429.g432eaa2c6b-goog


