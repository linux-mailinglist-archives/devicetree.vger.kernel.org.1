Return-Path: <devicetree+bounces-16743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0809D7EF855
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E84E1F24468
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B643745C01;
	Fri, 17 Nov 2023 20:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qeHkjhHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4F191730
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:01 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3b6ce6fac81so1439814b6e.1
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700252041; x=1700856841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ja9GtlZjFcJxKQ+nfaNBwXl6V3JiSfQSXjsqjsMOXR4=;
        b=qeHkjhHMpbe+odDvMjcQssxmn9Jowjsrg73ntJ+RtcqkYbOiVvW5PZhwUrE4EK/xCh
         1UDziF6/w3MfjL88xjkyZ3J5yLtUKySnM+qRrvzH759BslAaVqwVrf4bA+fLv1PlLESn
         ayjRjGQAZpwhXLGHM+OLdddEOL0xDC6gb6mZiGevesvubH2tm1CrFOvGgWefZHL906E2
         yFEY1FhhH2QYdyiDUdspgMiwd9dixwAfbcsScBQmh1LBI6lfEC99UC8YHOdDUS1Tdh2A
         ktVLlKVKV4XQjg8Y17nkCpCHLXEb0NPON6TXTe/ao7zz7kq7TJm/OUnUGzkDtCuKOz6I
         zmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252041; x=1700856841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ja9GtlZjFcJxKQ+nfaNBwXl6V3JiSfQSXjsqjsMOXR4=;
        b=xJ3GHzkcKXmJVPxchAuNg9pUNfuxygu3s7TJRQA78CfxnnC6dTkdDE28K53O2jx+3d
         zJIhaUdLxBVIPkIWv9aPmlwzufIBczWjINwL0Q8wOjcPO5SZ/8WUmPRNS3fQX3iz5Ziw
         sUkSqa9Uz1TE8qUBamrytApBYx9aWGWxHICfxg15XoS+/fAjThmG47W9T0b04jl1kvhA
         XpXxk3d6NaDqXsyMAOf76hcheyThdYVq2GHlZVNJGvEETZyLsxWEzByPnyCVL7SJcRCP
         +QNPX9Frd7VDKUfPkoH7VMbhQtY6bC3bXoeOPEJXCGdzI4uum1EY+ZMda8657+yonPnO
         4PQQ==
X-Gm-Message-State: AOJu0YwC9erfpERDPfFE6vyw52IdIHLi5t2YY136LISHv8agHg6Jt6rt
	n75T+u9cUaHQ1204I9M+oGOm2w==
X-Google-Smtp-Source: AGHT+IEDfybKnOu/GGZq916PIuwCUX/WXL1yy1MdxiH5bac/b8Q9vM1y0sN41DdLNS8Rd6WpsgoCyg==
X-Received: by 2002:a05:6808:1315:b0:3b5:6462:3191 with SMTP id y21-20020a056808131500b003b564623191mr555089oiv.48.1700252041296;
        Fri, 17 Nov 2023 12:14:01 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id l21-20020a544515000000b003a8560a9d34sm393814oil.25.2023.11.17.12.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:14:00 -0800 (PST)
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
Subject: [PATCH 12/14] spi: axi-spi-engine: remove struct spi_engine::msg
Date: Fri, 17 Nov 2023 14:13:03 -0600
Message-ID: <20231117-axi-spi-engine-series-1-v1-12-cc59db999b87@baylibre.com>
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

In the AXI SPI Engine driver, the struct spi_engine::msg member was used
to keep track of the current message being processed. The SPI core is
already keeping track of this, so we don't need to duplicate the effort.

In most cases, we already have a pointer to the current message, so we
can pass it directly to the functions that need it. In the one case
where we don't have a pointer to the current message, we can get it
from struct spi_controller::cur_msg.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/spi/spi-axi-spi-engine.c | 60 +++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 32 deletions(-)

diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
index 120001dbc4dc..c39f478f34a7 100644
--- a/drivers/spi/spi-axi-spi-engine.c
+++ b/drivers/spi/spi-axi-spi-engine.c
@@ -112,8 +112,6 @@ struct spi_engine {
 	spinlock_t lock;
 
 	void __iomem *base;
-
-	struct spi_message *msg;
 	struct ida sync_ida;
 
 	unsigned int int_enable;
@@ -252,10 +250,9 @@ static int spi_engine_compile_message(struct spi_engine *spi_engine,
 	return 0;
 }
 
-static void spi_engine_xfer_next(struct spi_engine *spi_engine,
+static void spi_engine_xfer_next(struct spi_message *msg,
 	struct spi_transfer **_xfer)
 {
-	struct spi_message *msg = spi_engine->msg;
 	struct spi_transfer *xfer = *_xfer;
 
 	if (!xfer) {
@@ -270,13 +267,13 @@ static void spi_engine_xfer_next(struct spi_engine *spi_engine,
 	*_xfer = xfer;
 }
 
-static void spi_engine_tx_next(struct spi_engine *spi_engine)
+static void spi_engine_tx_next(struct spi_message *msg)
 {
-	struct spi_engine_message_state *st = spi_engine->msg->state;
+	struct spi_engine_message_state *st = msg->state;
 	struct spi_transfer *xfer = st->tx_xfer;
 
 	do {
-		spi_engine_xfer_next(spi_engine, &xfer);
+		spi_engine_xfer_next(msg, &xfer);
 	} while (xfer && !xfer->tx_buf);
 
 	st->tx_xfer = xfer;
@@ -288,13 +285,13 @@ static void spi_engine_tx_next(struct spi_engine *spi_engine)
 	}
 }
 
-static void spi_engine_rx_next(struct spi_engine *spi_engine)
+static void spi_engine_rx_next(struct spi_message *msg)
 {
-	struct spi_engine_message_state *st = spi_engine->msg->state;
+	struct spi_engine_message_state *st = msg->state;
 	struct spi_transfer *xfer = st->rx_xfer;
 
 	do {
-		spi_engine_xfer_next(spi_engine, &xfer);
+		spi_engine_xfer_next(msg, &xfer);
 	} while (xfer && !xfer->rx_buf);
 
 	st->rx_xfer = xfer;
@@ -306,10 +303,11 @@ static void spi_engine_rx_next(struct spi_engine *spi_engine)
 	}
 }
 
-static bool spi_engine_write_cmd_fifo(struct spi_engine *spi_engine)
+static bool spi_engine_write_cmd_fifo(struct spi_engine *spi_engine,
+				      struct spi_message *msg)
 {
 	void __iomem *addr = spi_engine->base + SPI_ENGINE_REG_CMD_FIFO;
-	struct spi_engine_message_state *st = spi_engine->msg->state;
+	struct spi_engine_message_state *st = msg->state;
 	unsigned int n, m, i;
 	const uint16_t *buf;
 
@@ -327,10 +325,11 @@ static bool spi_engine_write_cmd_fifo(struct spi_engine *spi_engine)
 	return st->cmd_length != 0;
 }
 
-static bool spi_engine_write_tx_fifo(struct spi_engine *spi_engine)
+static bool spi_engine_write_tx_fifo(struct spi_engine *spi_engine,
+				     struct spi_message *msg)
 {
 	void __iomem *addr = spi_engine->base + SPI_ENGINE_REG_SDO_DATA_FIFO;
-	struct spi_engine_message_state *st = spi_engine->msg->state;
+	struct spi_engine_message_state *st = msg->state;
 	unsigned int n, m, i;
 	const uint8_t *buf;
 
@@ -344,16 +343,17 @@ static bool spi_engine_write_tx_fifo(struct spi_engine *spi_engine)
 		st->tx_length -= m;
 		n -= m;
 		if (st->tx_length == 0)
-			spi_engine_tx_next(spi_engine);
+			spi_engine_tx_next(msg);
 	}
 
 	return st->tx_length != 0;
 }
 
-static bool spi_engine_read_rx_fifo(struct spi_engine *spi_engine)
+static bool spi_engine_read_rx_fifo(struct spi_engine *spi_engine,
+				    struct spi_message *msg)
 {
 	void __iomem *addr = spi_engine->base + SPI_ENGINE_REG_SDI_DATA_FIFO;
-	struct spi_engine_message_state *st = spi_engine->msg->state;
+	struct spi_engine_message_state *st = msg->state;
 	unsigned int n, m, i;
 	uint8_t *buf;
 
@@ -367,7 +367,7 @@ static bool spi_engine_read_rx_fifo(struct spi_engine *spi_engine)
 		st->rx_length -= m;
 		n -= m;
 		if (st->rx_length == 0)
-			spi_engine_rx_next(spi_engine);
+			spi_engine_rx_next(msg);
 	}
 
 	return st->rx_length != 0;
@@ -376,6 +376,7 @@ static bool spi_engine_read_rx_fifo(struct spi_engine *spi_engine)
 static irqreturn_t spi_engine_irq(int irq, void *devid)
 {
 	struct spi_controller *host = devid;
+	struct spi_message *msg = host->cur_msg;
 	struct spi_engine *spi_engine = spi_controller_get_devdata(host);
 	unsigned int disable_int = 0;
 	unsigned int pending;
@@ -393,29 +394,26 @@ static irqreturn_t spi_engine_irq(int irq, void *devid)
 	spin_lock(&spi_engine->lock);
 
 	if (pending & SPI_ENGINE_INT_CMD_ALMOST_EMPTY) {
-		if (!spi_engine_write_cmd_fifo(spi_engine))
+		if (!spi_engine_write_cmd_fifo(spi_engine, msg))
 			disable_int |= SPI_ENGINE_INT_CMD_ALMOST_EMPTY;
 	}
 
 	if (pending & SPI_ENGINE_INT_SDO_ALMOST_EMPTY) {
-		if (!spi_engine_write_tx_fifo(spi_engine))
+		if (!spi_engine_write_tx_fifo(spi_engine, msg))
 			disable_int |= SPI_ENGINE_INT_SDO_ALMOST_EMPTY;
 	}
 
 	if (pending & (SPI_ENGINE_INT_SDI_ALMOST_FULL | SPI_ENGINE_INT_SYNC)) {
-		if (!spi_engine_read_rx_fifo(spi_engine))
+		if (!spi_engine_read_rx_fifo(spi_engine, msg))
 			disable_int |= SPI_ENGINE_INT_SDI_ALMOST_FULL;
 	}
 
-	if (pending & SPI_ENGINE_INT_SYNC && spi_engine->msg) {
-		struct spi_engine_message_state *st = spi_engine->msg->state;
+	if (pending & SPI_ENGINE_INT_SYNC && msg) {
+		struct spi_engine_message_state *st = msg->state;
 
 		if (completed_id == st->sync_id) {
-			struct spi_message *msg = spi_engine->msg;
-
 			msg->status = 0;
 			msg->actual_length = msg->frame_length;
-			spi_engine->msg = NULL;
 			spi_finalize_current_message(host);
 			disable_int |= SPI_ENGINE_INT_SYNC;
 		}
@@ -499,16 +497,14 @@ static int spi_engine_transfer_one_message(struct spi_controller *host,
 
 	spin_lock_irqsave(&spi_engine->lock, flags);
 
-	spi_engine->msg = msg;
-
-	if (spi_engine_write_cmd_fifo(spi_engine))
+	if (spi_engine_write_cmd_fifo(spi_engine, msg))
 		int_enable |= SPI_ENGINE_INT_CMD_ALMOST_EMPTY;
 
-	spi_engine_tx_next(spi_engine);
-	if (spi_engine_write_tx_fifo(spi_engine))
+	spi_engine_tx_next(msg);
+	if (spi_engine_write_tx_fifo(spi_engine, msg))
 		int_enable |= SPI_ENGINE_INT_SDO_ALMOST_EMPTY;
 
-	spi_engine_rx_next(spi_engine);
+	spi_engine_rx_next(msg);
 	if (st->rx_length != 0)
 		int_enable |= SPI_ENGINE_INT_SDI_ALMOST_FULL;
 

-- 
2.42.0


