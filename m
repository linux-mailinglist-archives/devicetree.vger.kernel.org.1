Return-Path: <devicetree+bounces-16745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B957EF857
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F75C280F08
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635E645960;
	Fri, 17 Nov 2023 20:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QoyamuIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09D6D6C
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:03 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3b6cfc62514so1157104b6e.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252043; x=1700856843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PH/rzTgmg6EPZdKGbbueBGhoeiFd6EbUxFAdwFmnGz0=;
        b=QoyamuIGyvaCFAItIzBvcz/WC2NNgCFhQq9ulXDGjENTXxp5EDmYMcoJWQGIkKlEVX
         rIi+lyAMhebdHjrXs41naJGKzHRLuFqrCSVxwPKY4LxYBvz05rdnXO8DmENJam6SByjw
         JUyoL0BA2WBd0MbI5QhTuAo6/1FUOBpyBpgrz9RO876ycQplhlGj3LOieJyZx9kxvqB8
         n8xwsrgNtx2cTSxOLP0BHdDemNIqYXtCQMK9TRPhjbAlirYftngbVrtKwpxtmXdZkx8m
         UkH7bBck+ypFFj/hITwss8XBLxXwGFJKMMHwDeiHSWhtPG9ou4ZAS25bC1O2IPJUEEaM
         8GvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252043; x=1700856843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PH/rzTgmg6EPZdKGbbueBGhoeiFd6EbUxFAdwFmnGz0=;
        b=pyk1q9mNm8t5/7mS0qWEmk0ckx/DBCWhgLOsq9Mb/04wsBd+N+thIuSiH2i3zw8mk+
         3ITdssdyIizMwLyAh+4dgd7nWBTVx8p8/lqmr1w4JThC/N/UbS1kcDt4xtWECSd4kKAq
         Smpsc7m4BCUAQkELYNHuEts+k0anQkCFIfh1OrJAsXreiopvEKaugaBPRJzI2/2ekvdK
         KlIUaVRDs3RNJLvc9ATj6VraNqfka9ZHE0D66h45SBP05vSx/CBaIV6kIZCCzogH1imL
         hByLt/ID3SSVkCxXeZ4VA+vhaKARXNJNWS/kE99tzyrs4Eqc8QrQf2ink+GRhNPxdWIP
         i5DQ==
X-Gm-Message-State: AOJu0Yx5v/V0ZThsGLr8lZz6HNElvVnIpTux1S2CapVsGR5+enh3YJqO
	yZc0Omrv4t77AsTZuU0XnpBVQQ==
X-Google-Smtp-Source: AGHT+IHL8X+/aek0UmGtyfVgTRCGoiVnXbvK0cUocB5DvFljKkSQo3iFU0tbHLO3SetM0Kkp/lsXmw==
X-Received: by 2002:a05:6808:d1:b0:3b2:e4b7:2af2 with SMTP id t17-20020a05680800d100b003b2e4b72af2mr3093122oic.6.1700252042902;
        Fri, 17 Nov 2023 12:14:02 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:14:02 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 14/14] spi: axi-spi-engine: add support for any word size
Date: Fri, 17 Nov 2023 14:13:05 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-14-cc59db999b87@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

The AXI SPI Engine IP supports any word size from 1 to 32 bits. This
adds support for this by setting the bits_per_word_mask and emitting
the appropriate instruction to the SPI Engine each time a transfer
requires a new word size.

The functions that transfer tx/rx buffers from/to the SPI Engine
registers (spi_engine_write_{tx,rx}_fifo()) as well as the function that
creates the transfer instruction (spi_engine_gen_xfer()) also have to be
modified to take into account the word size since xfer->len is the
size of the buffers in bytes rather than words.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 84 ++++++++++++++++++++++++++++++++--------
 1 file changed, 68 insertions(+), 16 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 1c60e6486ee2..cbca783830ea 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -53,6 +53,7 @@
 
 #define SPI_ENGINE_CMD_REG_CLK_DIV		0x0
 #define SPI_ENGINE_CMD_REG_CONFIG		0x1
+#define SPI_ENGINE_CMD_REG_XFER_BITS		0x2
 
 #define SPI_ENGINE_MISC_SYNC			0x0
 #define SPI_ENGINE_MISC_SLEEP			0x1
@@ -157,7 +158,14 @@ static unsigned int spi_engine_get_clk_div(struct spi_engine *spi_engine,
 static void spi_engine_gen_xfer(struct spi_engine_program *p, bool dry,
 	struct spi_transfer *xfer)
 {
-	unsigned int len = xfer->len;
+	unsigned int len;
+
+	if (xfer->bits_per_word <= 8)
+		len = xfer->len;
+	else if (xfer->bits_per_word <= 16)
+		len = xfer->len / 2;
+	else
+		len = xfer->len / 4;
 
 	while (len) {
 		unsigned int n = min(len, 256U);
@@ -217,6 +225,7 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 	struct spi_transfer *xfer;
 	int clk_div, new_clk_div;
 	bool keep_cs = false;
+	u8 bits_per_word = 0;
 
 	clk_div = -1;
 
@@ -236,6 +245,13 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 					clk_div));
 		}
 
+		if (bits_per_word != xfer->bits_per_word) {
+			bits_per_word = xfer->bits_per_word;
+			spi_engine_program_add_cmd(p, dry,
+				SPI_ENGINE_CMD_WRITE(SPI_ENGINE_CMD_REG_XFER_BITS,
+					bits_per_word));
+		}
+
 		spi_engine_gen_xfer(p, dry, xfer);
 		spi_engine_gen_sleep(p, dry, spi_engine, clk_div, xfer);
 
@@ -342,16 +358,34 @@ static bool spi_engine_write_tx_fifo(struct spi_engine *spi_engine,
 	void __iomem *addr = spi_engine->base + SPI_ENGINE_REG_SDO_DATA_FIFO;
 	struct spi_engine_message_state *st = msg->state;
 	unsigned int n, m, i;
-	const uint8_t *buf;
 
 	n = readl_relaxed(spi_engine->base + SPI_ENGINE_REG_SDO_FIFO_ROOM);
 	while (n && st->tx_length) {
-		m = min(n, st->tx_length);
-		buf = st->tx_buf;
-		for (i = 0; i < m; i++)
-			writel_relaxed(buf[i], addr);
-		st->tx_buf += m;
-		st->tx_length -= m;
+		if (st->tx_xfer->bits_per_word <= 8) {
+			const u8 *buf = st->tx_buf;
+
+			m = min(n, st->tx_length);
+			for (i = 0; i < m; i++)
+				writel_relaxed(buf[i], addr);
+			st->tx_buf += m;
+			st->tx_length -= m;
+		} else if (st->tx_xfer->bits_per_word <= 16) {
+			const u16 *buf = (const u16 *)st->tx_buf;
+
+			m = min(n, st->tx_length / 2);
+			for (i = 0; i < m; i++)
+				writel_relaxed(buf[i], addr);
+			st->tx_buf += m * 2;
+			st->tx_length -= m * 2;
+		} else {
+			const u32 *buf = (const u32 *)st->tx_buf;
+
+			m = min(n, st->tx_length / 4);
+			for (i = 0; i < m; i++)
+				writel_relaxed(buf[i], addr);
+			st->tx_buf += m * 4;
+			st->tx_length -= m * 4;
+		}
 		n -= m;
 		if (st->tx_length == 0)
 			spi_engine_tx_next(msg);
@@ -366,16 +400,34 @@ static bool spi_engine_read_rx_fifo(struct spi_engine *spi_engine,
 	void __iomem *addr = spi_engine->base + SPI_ENGINE_REG_SDI_DATA_FIFO;
 	struct spi_engine_message_state *st = msg->state;
 	unsigned int n, m, i;
-	uint8_t *buf;
 
 	n = readl_relaxed(spi_engine->base + SPI_ENGINE_REG_SDI_FIFO_LEVEL);
 	while (n && st->rx_length) {
-		m = min(n, st->rx_length);
-		buf = st->rx_buf;
-		for (i = 0; i < m; i++)
-			buf[i] = readl_relaxed(addr);
-		st->rx_buf += m;
-		st->rx_length -= m;
+		if (st->rx_xfer->bits_per_word <= 8) {
+			u8 *buf = st->rx_buf;
+
+			m = min(n, st->rx_length);
+			for (i = 0; i < m; i++)
+				buf[i] = readl_relaxed(addr);
+			st->rx_buf += m;
+			st->rx_length -= m;
+		} else if (st->rx_xfer->bits_per_word <= 16) {
+			u16 *buf = (u16 *)st->rx_buf;
+
+			m = min(n, st->rx_length / 2);
+			for (i = 0; i < m; i++)
+				buf[i] = readl_relaxed(addr);
+			st->rx_buf += m * 2;
+			st->rx_length -= m * 2;
+		} else {
+			u32 *buf = (u32 *)st->rx_buf;
+
+			m = min(n, st->rx_length / 4);
+			for (i = 0; i < m; i++)
+				buf[i] = readl_relaxed(addr);
+			st->rx_buf += m * 4;
+			st->rx_length -= m * 4;
+		}
 		n -= m;
 		if (st->rx_length == 0)
 			spi_engine_rx_next(msg);
@@ -596,7 +648,7 @@ static int spi_engine_probe(struct platform_device *pdev)
 
 	host->dev.of_node = pdev->dev.of_node;
 	host->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE;
-	host->bits_per_word_mask = SPI_BPW_MASK(8);
+	host->bits_per_word_mask = SPI_BPW_RANGE_MASK(1, 32);
 	host->max_speed_hz = clk_get_rate(spi_engine->ref_clk) / 2;
 	host->transfer_one_message = spi_engine_transfer_one_message;
 	host->prepare_message = spi_engine_prepare_message;

-- 
2.42.0


