Return-Path: <devicetree+bounces-13470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6387DE2D0
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 648E0B20FF5
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B00114000;
	Wed,  1 Nov 2023 15:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="NxJz2/c4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1313913FFF
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:15:56 +0000 (UTC)
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FE2D11D
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 08:15:50 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-41cd97d7272so45585051cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 08:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698851749; x=1699456549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SCGqKJF6SsDfNrHHzhtnH0GPRPMyo2Rte78iygg6g5o=;
        b=NxJz2/c435QS0YVsqQFFDY0YCuMq0uGVAIjBG14i0q/q9Bnv5lekV0aZqE7kLKAzJk
         WFTjWBiA7TjMKaUaIGsknmn+U1d3h7EiHM64nmtQx49UaefdcgoPGIZLbGg9FOcr4ZhD
         4qvw+QALpo3xTXiAbI8deldCyzavQxO64EJVJZDH7hP9ebOPeuoXuXkl9jm5+V4BqjKd
         4BlPnQccuK4JMoxrS763pGAi9frvBaY1nxPcZq5rTRryvD3dNBbhloTPHHaWG23YM3o7
         d/FE7X0XlMD07u6NNLAJIWJDq7OnizeBgWP90MOLG/BnJn6/EEtGSTE90HDvr7GeSSUW
         88VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698851749; x=1699456549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCGqKJF6SsDfNrHHzhtnH0GPRPMyo2Rte78iygg6g5o=;
        b=T0MEIS3CikdfkHDHEJrr33ZPlScB+SDQtTASLwP51XTRMkwEAiLfbeiYpt/Go9IEDk
         btIy3fWph+FDEOxmdteiMBroay4LHZa9TrBMu9QZsSE/cA0iKYe9lTzoLsTW/ziN8OhA
         b6p3mcup+QtJLO+Yoy7E3/gYVS1mn2BzK9OA8xrebylja2bwv/0+iRBndhdyVTG1BW+d
         GXrETsBbwebOmusZuHeRkuyk0wRf7+M43a+2mHl9/4is3Yf5q6Pxdua7K/XpqeAXe8D9
         XT2f0q1ZOwiW2A4U2sN5Q+Dys1DZQEdaQuWfqIoc0H86wwgxj43GMMZP/f6aHcElKSyn
         JtFg==
X-Gm-Message-State: AOJu0YylpTwxAj+D9mfvE09LrgeFG8HP9k395ITojiQpVuiENwP8bNpN
	xCfVXV2x3Z7n8Vi3frPp6alihjORNOvm2ZUbNeU=
X-Google-Smtp-Source: AGHT+IHFB95WZ4udBODFA4mvTZ3gUZPz2AfWksmFhzawsn2l1QPBiylfh1Xf5GEyC5aJqD833fnhEQ==
X-Received: by 2002:a05:622a:1890:b0:418:1817:43a9 with SMTP id v16-20020a05622a189000b00418181743a9mr18173441qtc.17.1698851749453;
        Wed, 01 Nov 2023 08:15:49 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dn5-20020a05622a470500b004181a8a3e2dsm1477165qtb.41.2023.11.01.08.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:15:48 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 2/5] spi: stm32: use callbacks for read_rx and write_tx
Date: Wed,  1 Nov 2023 11:08:07 -0400
Message-ID: <20231101150811.2747455-3-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
References: <20231101150811.2747455-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The STM32F7 will require different read and write routines, so make
these functions into configurable callbacks.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 drivers/spi/spi-stm32.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 02d1409d7229..427788d18532 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -229,6 +229,8 @@ struct stm32_spi;
  * time between frames (if driver has this functionality)
  * @set_number_of_data: optional routine to configure registers to desired
  * number of data (if driver has this functionality)
+ * @write_tx: routine to write to transmit register/FIFO
+ * @read_rx: routine to read from receive register/FIFO
  * @transfer_one_dma_start: routine to start transfer a single spi_transfer
  * using DMA
  * @dma_rx_cb: routine to call after DMA RX channel operation is complete
@@ -252,6 +254,8 @@ struct stm32_spi_cfg {
 	int (*set_mode)(struct stm32_spi *spi, unsigned int comm_type);
 	void (*set_data_idleness)(struct stm32_spi *spi, u32 length);
 	int (*set_number_of_data)(struct stm32_spi *spi, u32 length);
+	void (*write_tx)(struct stm32_spi *spi);
+	void (*read_rx)(struct stm32_spi *spi);
 	void (*transfer_one_dma_start)(struct stm32_spi *spi);
 	void (*dma_rx_cb)(void *data);
 	void (*dma_tx_cb)(void *data);
@@ -822,17 +826,17 @@ static irqreturn_t stm32fx_spi_irq_event(int irq, void *dev_id)
 
 	if (sr & STM32FX_SPI_SR_TXE) {
 		if (spi->tx_buf)
-			stm32f4_spi_write_tx(spi);
+			spi->cfg->write_tx(spi);
 		if (spi->tx_len == 0)
 			end = true;
 	}
 
 	if (sr & STM32FX_SPI_SR_RXNE) {
-		stm32f4_spi_read_rx(spi);
+		spi->cfg->read_rx(spi);
 		if (spi->rx_len == 0)
 			end = true;
 		else if (spi->tx_buf)/* Load data for discontinuous mode */
-			stm32f4_spi_write_tx(spi);
+			spi->cfg->write_tx(spi);
 	}
 
 end_irq:
@@ -1149,7 +1153,7 @@ static int stm32fx_spi_transfer_one_irq(struct stm32_spi *spi)
 
 	/* starting data transfer when buffer is loaded */
 	if (spi->tx_buf)
-		stm32f4_spi_write_tx(spi);
+		spi->cfg->write_tx(spi);
 
 	spin_unlock_irqrestore(&spi->lock, flags);
 
@@ -1752,6 +1756,8 @@ static const struct stm32_spi_cfg stm32f4_spi_cfg = {
 	.config = stm32fx_spi_config,
 	.set_bpw = stm32f4_spi_set_bpw,
 	.set_mode = stm32fx_spi_set_mode,
+	.write_tx = stm32f4_spi_write_tx,
+	.read_rx = stm32f4_spi_read_rx,
 	.transfer_one_dma_start = stm32fx_spi_transfer_one_dma_start,
 	.dma_tx_cb = stm32fx_spi_dma_tx_cb,
 	.dma_rx_cb = stm32_spi_dma_rx_cb,
@@ -1775,6 +1781,8 @@ static const struct stm32_spi_cfg stm32h7_spi_cfg = {
 	.set_mode = stm32h7_spi_set_mode,
 	.set_data_idleness = stm32h7_spi_data_idleness,
 	.set_number_of_data = stm32h7_spi_number_of_data,
+	.write_tx = stm32h7_spi_write_txfifo,
+	.read_rx = stm32h7_spi_read_rxfifo,
 	.transfer_one_dma_start = stm32h7_spi_transfer_one_dma_start,
 	.dma_rx_cb = stm32_spi_dma_rx_cb,
 	/*
-- 
2.42.0


