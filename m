Return-Path: <devicetree+bounces-33180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C089E8327E6
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E63DE1C210E9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBB44E1CD;
	Fri, 19 Jan 2024 10:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l1h1Iocs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A937A4D134
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661140; cv=none; b=cSef19L98+jLtEtc0cHod+6VaJdoFiMQXAvrBsG4iqnZqhCdbUJ6/i0XiQX+jXyAYcsHCmjXB8AywxFVZ7+rCqZpi6xWfE9CqEA46vkpR6lFXe1+rVeAQo6ZbASXDoOEQCt1BmItz34mfpDVdt29Zr0+InZ/v9lq8oHN4uXVIqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661140; c=relaxed/simple;
	bh=oEYUcOy19JcxG6WXptwvlTUqdV/Cr+vl3K7z1gXFbpw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ey2T0STwxP5TYq0kvSTOiiMi7XuI//TzDIewl9wr59ZsEa8FOThEwqKmB1qzsCbGASwbPHvP2W+l64TSFOVh8xqUNZxX2ZdCSMAScZ5tgC2S1vUNyK4ateZB563YKUv/1lsPDoEcVdJYzsdrZIDoUhkF4CtI1MrTVFTLXtPANkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l1h1Iocs; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-337b71a0240so551406f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661137; x=1706265937; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=draq2LBr3rh1hsqpn+xELW8VPhSh6bMilJxVO89mlwc=;
        b=l1h1IocsTOTGdlOQJe84x3IbnwLm2iB2j7LJn5FB4Pibp8Mop8bOIBKSEANH67jjX7
         ygY1zSd25caagYGFV/VNRL7JCOIbGHTF2fXThlN5GImLwHnVh+8u31NNe98qlqCAd+Q4
         g0UEIKUhD6IllYIo7Z+VYoDBwFp+eZotv8jegf7AIOGFPT5W53yAsbqkdh8huV/kxfng
         EuTSr92MAfnn0tJXiUt7/z+AsbrwGtDigdb0iRwPU0eOKep2Kt65mDzCQSY9RFUI+ifV
         tJnZKr5px653PYILJH7+U0+S62dAX35Y83h7TbGYEJtkiGduk+ATvRBIrVTrl23LMiS3
         6hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661137; x=1706265937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=draq2LBr3rh1hsqpn+xELW8VPhSh6bMilJxVO89mlwc=;
        b=wgAjzQXpokKHh8I6YSVO4j8Cd85tWfu77Es6Ea6JzRaHSbPL7nKF9Qw7IswVJ6gble
         g0IiNnRulnoYZhjZL2FO1ADqeA6uLyfiqvHhtmVWxJb8lpw3InAz3PIMzQpceFlxGSKO
         nBniYcR569yXbrxlxjSBhvewn9XXASh/0BsvFK3vVDxKRKWg/1t4eSC2LBVZWo5BWVWk
         LAb5Q4waUh776mSl0CoRvIll7oE5u0WKB0ezWMu4JrpGtW7TZwSFeybK+tcHccH+WRBO
         TBTYxRvoOU/MmYWp3c00hVox8cIcktY2H8Orekl8YkN77AlB1u71fcIeLsFUwadMIPxK
         YhmA==
X-Gm-Message-State: AOJu0Yxj1OCRPdExTH8EbxvmNv68WrYcPFsNFSgj0HkjI31lwyPmerV3
	atgtmMkoGfxCompoUNrX6sRMurRNxWPgM8nysAQEGYO1qhSeT5N6aUG+AzghdMM=
X-Google-Smtp-Source: AGHT+IGpcApyIWJFtLX0iIOlhoAeQ17PNEjsoOdq7qV3HI9GzWTu3avyi91tcVAFJS0Xme35Yc5gZg==
X-Received: by 2002:a05:600c:524a:b0:40d:8815:afff with SMTP id fc10-20020a05600c524a00b0040d8815afffmr1597586wmb.39.1705661136915;
        Fri, 19 Jan 2024 02:45:36 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:36 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 08/19] tty: serial: samsung: use u32 for register interactions
Date: Fri, 19 Jan 2024 10:45:15 +0000
Message-ID: <20240119104526.1221243-9-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All registers of the IP have 32 bits. Use u32 variables when reading
or writing from/to the registers. The purpose of those variables becomes
clearer.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 79 ++++++++++++++++----------------
 1 file changed, 39 insertions(+), 40 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index b9b91ff6a1d7..8b396c950933 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -199,7 +199,7 @@ static void wr_reg(const struct uart_port *port, u32 reg, u32 val)
 /* Byte-order aware bit setting/clearing functions. */
 
 static inline void s3c24xx_set_bit(const struct uart_port *port, int idx,
-				   unsigned int reg)
+				   u32 reg)
 {
 	unsigned long flags;
 	u32 val;
@@ -212,7 +212,7 @@ static inline void s3c24xx_set_bit(const struct uart_port *port, int idx,
 }
 
 static inline void s3c24xx_clear_bit(const struct uart_port *port, int idx,
-				     unsigned int reg)
+				     u32 reg)
 {
 	unsigned long flags;
 	u32 val;
@@ -245,8 +245,8 @@ static void s3c24xx_serial_rx_enable(struct uart_port *port)
 {
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 	unsigned long flags;
-	unsigned int ucon, ufcon;
 	int count = 10000;
+	u32 ucon, ufcon;
 
 	uart_port_lock_irqsave(port, &flags);
 
@@ -269,7 +269,7 @@ static void s3c24xx_serial_rx_disable(struct uart_port *port)
 {
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 	unsigned long flags;
-	unsigned int ucon;
+	u32 ucon;
 
 	uart_port_lock_irqsave(port, &flags);
 
@@ -591,7 +591,7 @@ static inline const struct s3c2410_uartcfg
 }
 
 static int s3c24xx_serial_rx_fifocnt(const struct s3c24xx_uart_port *ourport,
-				     unsigned long ufstat)
+				     u32 ufstat)
 {
 	const struct s3c24xx_uart_info *info = ourport->info;
 
@@ -663,7 +663,7 @@ static void s3c64xx_start_rx_dma(struct s3c24xx_uart_port *ourport)
 static void enable_rx_dma(struct s3c24xx_uart_port *ourport)
 {
 	struct uart_port *port = &ourport->port;
-	unsigned int ucon;
+	u32 ucon;
 
 	/* set Rx mode to DMA mode */
 	ucon = rd_regl(port, S3C2410_UCON);
@@ -686,7 +686,7 @@ static void enable_rx_dma(struct s3c24xx_uart_port *ourport)
 static void enable_rx_pio(struct s3c24xx_uart_port *ourport)
 {
 	struct uart_port *port = &ourport->port;
-	unsigned int ucon;
+	u32 ucon;
 
 	/* set Rx mode to DMA mode */
 	ucon = rd_regl(port, S3C2410_UCON);
@@ -711,13 +711,14 @@ static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport);
 
 static irqreturn_t s3c24xx_serial_rx_chars_dma(void *dev_id)
 {
-	unsigned int utrstat, received;
 	struct s3c24xx_uart_port *ourport = dev_id;
 	struct uart_port *port = &ourport->port;
 	struct s3c24xx_uart_dma *dma = ourport->dma;
 	struct tty_struct *tty = tty_port_tty_get(&ourport->port.state->port);
 	struct tty_port *t = &port->state->port;
 	struct dma_tx_state state;
+	unsigned int received;
+	u32 utrstat;
 
 	utrstat = rd_regl(port, S3C2410_UTRSTAT);
 	rd_regl(port, S3C2410_UFSTAT);
@@ -759,9 +760,9 @@ static irqreturn_t s3c24xx_serial_rx_chars_dma(void *dev_id)
 static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
 {
 	struct uart_port *port = &ourport->port;
-	unsigned int ufcon, ufstat, uerstat;
 	unsigned int fifocnt = 0;
 	int max_count = port->fifosize;
+	u32 ufcon, ufstat, uerstat;
 	u8 ch, flag;
 
 	while (max_count-- > 0) {
@@ -945,7 +946,7 @@ static irqreturn_t s3c64xx_serial_handle_irq(int irq, void *id)
 {
 	const struct s3c24xx_uart_port *ourport = id;
 	const struct uart_port *port = &ourport->port;
-	unsigned int pend = rd_regl(port, S3C64XX_UINTP);
+	u32 pend = rd_regl(port, S3C64XX_UINTP);
 	irqreturn_t ret = IRQ_HANDLED;
 
 	if (pend & S3C64XX_UINTM_RXD_MSK) {
@@ -964,7 +965,7 @@ static irqreturn_t apple_serial_handle_irq(int irq, void *id)
 {
 	const struct s3c24xx_uart_port *ourport = id;
 	const struct uart_port *port = &ourport->port;
-	unsigned int pend = rd_regl(port, S3C2410_UTRSTAT);
+	u32 pend = rd_regl(port, S3C2410_UTRSTAT);
 	irqreturn_t ret = IRQ_NONE;
 
 	if (pend & (APPLE_S5L_UTRSTAT_RXTHRESH | APPLE_S5L_UTRSTAT_RXTO)) {
@@ -983,8 +984,8 @@ static irqreturn_t apple_serial_handle_irq(int irq, void *id)
 static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 {
 	const struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
-	unsigned long ufstat = rd_regl(port, S3C2410_UFSTAT);
-	unsigned long ufcon = rd_regl(port, S3C2410_UFCON);
+	u32 ufstat = rd_regl(port, S3C2410_UFSTAT);
+	u32 ufcon = rd_regl(port, S3C2410_UFCON);
 
 	if (ufcon & S3C2410_UFCON_FIFOMODE) {
 		if ((ufstat & info->tx_fifomask) != 0 ||
@@ -999,7 +1000,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 /* no modem control lines */
 static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
 {
-	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
+	u32 umstat = rd_reg(port, S3C2410_UMSTAT);
 
 	if (umstat & S3C2410_UMSTAT_CTS)
 		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
@@ -1009,8 +1010,8 @@ static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
 
 static void s3c24xx_serial_set_mctrl(struct uart_port *port, unsigned int mctrl)
 {
-	unsigned int umcon = rd_regl(port, S3C2410_UMCON);
-	unsigned int ucon = rd_regl(port, S3C2410_UCON);
+	u32 umcon = rd_regl(port, S3C2410_UMCON);
+	u32 ucon = rd_regl(port, S3C2410_UCON);
 
 	if (mctrl & TIOCM_RTS)
 		umcon |= S3C2410_UMCOM_RTS_LOW;
@@ -1030,7 +1031,7 @@ static void s3c24xx_serial_set_mctrl(struct uart_port *port, unsigned int mctrl)
 static void s3c24xx_serial_break_ctl(struct uart_port *port, int break_state)
 {
 	unsigned long flags;
-	unsigned int ucon;
+	u32 ucon;
 
 	uart_port_lock_irqsave(port, &flags);
 
@@ -1188,7 +1189,7 @@ static void apple_s5l_serial_shutdown(struct uart_port *port)
 {
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 
-	unsigned int ucon;
+	u32 ucon;
 
 	ucon = rd_regl(port, S3C2410_UCON);
 	ucon &= ~(APPLE_S5L_UCON_TXTHRESH_ENA_MSK |
@@ -1214,7 +1215,7 @@ static int s3c64xx_serial_startup(struct uart_port *port)
 {
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 	unsigned long flags;
-	unsigned int ufcon;
+	u32 ufcon;
 	int ret;
 
 	wr_regl(port, S3C64XX_UINTM, 0xf);
@@ -1259,7 +1260,7 @@ static int apple_s5l_serial_startup(struct uart_port *port)
 {
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 	unsigned long flags;
-	unsigned int ufcon;
+	u32 ufcon;
 	int ret;
 
 	wr_regl(port, S3C2410_UTRSTAT, APPLE_S5L_UTRSTAT_ALL_FLAGS);
@@ -1344,7 +1345,7 @@ static void s3c24xx_serial_pm(struct uart_port *port, unsigned int level,
 static inline int s3c24xx_serial_getsource(struct uart_port *port)
 {
 	const struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
-	unsigned int ucon;
+	u32 ucon;
 
 	if (info->num_clks == 1)
 		return 0;
@@ -1358,7 +1359,7 @@ static void s3c24xx_serial_setsource(struct uart_port *port,
 			unsigned int clk_sel)
 {
 	const struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
-	unsigned int ucon;
+	u32 ucon;
 
 	if (info->num_clks == 1)
 		return;
@@ -1475,9 +1476,8 @@ static void s3c24xx_serial_set_termios(struct uart_port *port,
 	struct clk *clk = ERR_PTR(-EINVAL);
 	unsigned long flags;
 	unsigned int baud, quot, clk_sel = 0;
-	unsigned int ulcon;
-	unsigned int umcon;
 	unsigned int udivslot = 0;
+	u32 ulcon, umcon;
 
 	/*
 	 * We don't support modem control lines.
@@ -1759,7 +1759,7 @@ static void s3c24xx_serial_resetport(struct uart_port *port,
 				     const struct s3c2410_uartcfg *cfg)
 {
 	const struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
-	unsigned long ucon = rd_regl(port, S3C2410_UCON);
+	u32 ucon = rd_regl(port, S3C2410_UCON);
 
 	ucon &= (info->clksel_mask | info->ucon_mask);
 	wr_regl(port, S3C2410_UCON, ucon | cfg->ucon);
@@ -1905,7 +1905,7 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
 		wr_regl(port, S3C64XX_UINTSP, 0xf);
 		break;
 	case TYPE_APPLE_S5L: {
-		unsigned int ucon;
+		u32 ucon;
 
 		ucon = rd_regl(port, S3C2410_UCON);
 		ucon &= ~(APPLE_S5L_UCON_TXTHRESH_ENA_MSK |
@@ -2109,7 +2109,7 @@ static int s3c24xx_serial_resume_noirq(struct device *dev)
 		/* restore IRQ mask */
 		switch (ourport->info->type) {
 		case TYPE_S3C6400: {
-			unsigned int uintm = 0xf;
+			u32 uintm = 0xf;
 
 			if (ourport->tx_enabled)
 				uintm &= ~S3C64XX_UINTM_TXD_MSK;
@@ -2125,7 +2125,7 @@ static int s3c24xx_serial_resume_noirq(struct device *dev)
 			break;
 		}
 		case TYPE_APPLE_S5L: {
-			unsigned int ucon;
+			u32 ucon;
 			int ret;
 
 			ret = clk_prepare_enable(ourport->clk);
@@ -2187,10 +2187,10 @@ static const struct dev_pm_ops s3c24xx_serial_pm_ops = {
 static struct uart_port *cons_uart;
 
 static int
-s3c24xx_serial_console_txrdy(struct uart_port *port, unsigned int ufcon)
+s3c24xx_serial_console_txrdy(struct uart_port *port, u32 ufcon)
 {
 	const struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);
-	unsigned long ufstat, utrstat;
+	u32 ufstat, utrstat;
 
 	if (ufcon & S3C2410_UFCON_FIFOMODE) {
 		/* fifo mode - check amount of data in fifo registers... */
@@ -2206,7 +2206,7 @@ s3c24xx_serial_console_txrdy(struct uart_port *port, unsigned int ufcon)
 }
 
 static bool
-s3c24xx_port_configured(unsigned int ucon)
+s3c24xx_port_configured(u32 ucon)
 {
 	/* consider the serial port configured if the tx/rx mode set */
 	return (ucon & 0xf) != 0;
@@ -2221,7 +2221,7 @@ s3c24xx_port_configured(unsigned int ucon)
 static int s3c24xx_serial_get_poll_char(struct uart_port *port)
 {
 	const struct s3c24xx_uart_port *ourport = to_ourport(port);
-	unsigned int ufstat;
+	u32 ufstat;
 
 	ufstat = rd_regl(port, S3C2410_UFSTAT);
 	if (s3c24xx_serial_rx_fifocnt(ourport, ufstat) == 0)
@@ -2233,8 +2233,8 @@ static int s3c24xx_serial_get_poll_char(struct uart_port *port)
 static void s3c24xx_serial_put_poll_char(struct uart_port *port,
 		unsigned char c)
 {
-	unsigned int ufcon = rd_regl(port, S3C2410_UFCON);
-	unsigned int ucon = rd_regl(port, S3C2410_UCON);
+	u32 ufcon = rd_regl(port, S3C2410_UFCON);
+	u32 ucon = rd_regl(port, S3C2410_UCON);
 
 	/* not possible to xmit on unconfigured port */
 	if (!s3c24xx_port_configured(ucon))
@@ -2250,7 +2250,7 @@ static void s3c24xx_serial_put_poll_char(struct uart_port *port,
 static void
 s3c24xx_serial_console_putchar(struct uart_port *port, unsigned char ch)
 {
-	unsigned int ufcon = rd_regl(port, S3C2410_UFCON);
+	u32 ufcon = rd_regl(port, S3C2410_UFCON);
 
 	while (!s3c24xx_serial_console_txrdy(port, ufcon))
 		cpu_relax();
@@ -2261,7 +2261,7 @@ static void
 s3c24xx_serial_console_write(struct console *co, const char *s,
 			     unsigned int count)
 {
-	unsigned int ucon = rd_regl(cons_uart, S3C2410_UCON);
+	u32 ucon = rd_regl(cons_uart, S3C2410_UCON);
 	unsigned long flags;
 	bool locked = true;
 
@@ -2288,11 +2288,9 @@ s3c24xx_serial_get_options(struct uart_port *port, int *baud,
 			   int *parity, int *bits)
 {
 	struct clk *clk;
-	unsigned int ulcon;
-	unsigned int ucon;
-	unsigned int ubrdiv;
 	unsigned long rate;
 	unsigned int clk_sel;
+	u32 ulcon, ucon, ubrdiv;
 	char clk_name[MAX_CLK_NAME_LENGTH];
 
 	ulcon  = rd_regl(port, S3C2410_ULCON);
@@ -2742,7 +2740,8 @@ static int samsung_early_read(struct console *con, char *s, unsigned int n)
 {
 	struct earlycon_device *dev = con->data;
 	const struct samsung_early_console_data *data = dev->port.private_data;
-	int ch, ufstat, num_read = 0;
+	int num_read = 0;
+	u32 ch, ufstat;
 
 	while (num_read < n) {
 		ufstat = rd_regl(&dev->port, S3C2410_UFSTAT);
-- 
2.43.0.429.g432eaa2c6b-goog


