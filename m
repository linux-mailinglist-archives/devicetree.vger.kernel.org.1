Return-Path: <devicetree+bounces-28820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4927481F85B
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 13:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01FD3285AC8
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 12:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC70EAFD;
	Thu, 28 Dec 2023 12:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZG+VGsK6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AB8848E
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 12:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40d2e56f3a6so34046045e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 04:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703768294; x=1704373094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SnGx2wWhRndPcC4hW6Eg1f4NC40IhCfbTAv3v3EwtqA=;
        b=ZG+VGsK6AlEuD/3EQ44I/9ISWpyItRPwcfEe5CD3ggt2Of89P35HHpkcsv87r+OQr4
         iCPSzhccIfTw8E+YRpJF5MaL3z0XLn5WHxjsA60Sd8ARn/Sw1+EdiTFw+O/zdRM6w/Ol
         aai9jbQu5cJHYgtbImHGPr4WFztoklo9omL54fv5CA7gEQ3lrpaIDvSufRsBKOayBHsp
         WN5gKe4m7Ld1oIeZBZAwd7uxajbHBkFyLgpYMxzl9aH0EDmMLsmBMFgMG6ehwWifdq0F
         xoAdIEAi/xGCI7vzTnh2Cd8NH2jlNyR58u+w23LKAWibXK0qit13wliC5llXxiLm9AkW
         3b2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703768294; x=1704373094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SnGx2wWhRndPcC4hW6Eg1f4NC40IhCfbTAv3v3EwtqA=;
        b=noaulhCIj4wnEEFjr9qsEK1+h9/aVG1Rza+zIWv5MIdgtLd2H1hT/p4zPhR2FRDbIx
         WlSEglpvtBheQiL2rEEjhRHm4QNjHyil0o62FZ/sLF8DjkvWGP/7RLFsbEYy1YX6WhzU
         4TvWr7fSZuEMNpIGGv/SwuRg1gUnNT5DRBvtSBvYdVH+8sTIgcolzmsgTK6wwK5P+gWN
         YKQJ1IQMsuwOB9ZcCQJ03yQWPpNOiUlQzz6PjYWPhXeJuB4ZzmbZ60PqM6gS2VgV29Aj
         mEWXql/NHJ9qilfBO+KMDPPmFlBGBBdcO5zTPK5ZKeciv062EgyqLVTZIqyOm1STeR6n
         6E7Q==
X-Gm-Message-State: AOJu0Yxyy4/5qV+paimCCSjpyj0ZV0FZSbqIjUf4T7Ldzl7mxs3Gjnt8
	nObtPyAi/rFTXxe5DPYuiWvUqp0onm/F/g==
X-Google-Smtp-Source: AGHT+IEkaMiusBrIbTHY7fvyqMXaIjsn5PrPxvhm/x5b+n186w76a+qsxBXgq1iWnlduba/ozspo0w==
X-Received: by 2002:a05:600c:b8e:b0:40d:7196:35e6 with SMTP id fl14-20020a05600c0b8e00b0040d719635e6mr132291wmb.154.1703768294173;
        Thu, 28 Dec 2023 04:58:14 -0800 (PST)
Received: from ta2.c.googlers.com.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id h9-20020a05600c350900b0040d5aca25f1sm8615807wmq.17.2023.12.28.04.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 04:58:13 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	conor+dt@kernel.org,
	andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	arnd@arndb.de,
	semen.protsenko@linaro.org
Cc: andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 04/12] tty: serial: samsung: prepare for different IO types
Date: Thu, 28 Dec 2023 12:57:57 +0000
Message-ID: <20231228125805.661725-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231228125805.661725-1-tudor.ambarus@linaro.org>
References: <20231228125805.661725-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GS101's Connectivity Peripheral blocks (peric0/1 blocks) which
include the I3C and USI (I2C, SPI, UART) only allow 32-bit
register accesses. If using 8-bit register accesses, a SError
Interrupt is raised causing the system unusable.

Instead of specifying the reg-io-width = 4 everywhere, for each node,
the requirement should be deduced from the compatible.

Prepare the samsung tty driver to allow IO types different than
UPIO_MEM. ``struct uart_port::iotype`` is an unsigned char where all
its 8 bits are exposed to uapi. We can't make NULL checks on it to
verify if it's set, thus always set it from the driver's data.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v2: new patch

 drivers/tty/serial/samsung_tty.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 66bd6c090ace..97ce4b2424af 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -72,6 +72,7 @@ struct s3c24xx_uart_info {
 	const char		*name;
 	enum s3c24xx_port_type	type;
 	unsigned int		port_type;
+	unsigned char		iotype;
 	unsigned int		fifosize;
 	unsigned long		rx_fifomask;
 	unsigned long		rx_fifoshift;
@@ -1742,7 +1743,6 @@ static void s3c24xx_serial_init_port_default(int index) {
 
 	spin_lock_init(&port->lock);
 
-	port->iotype = UPIO_MEM;
 	port->uartclk = 0;
 	port->fifosize = 16;
 	port->flags = UPF_BOOT_AUTOCONF;
@@ -1989,6 +1989,8 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
 		break;
 	}
 
+	ourport->port.iotype = ourport->info->iotype;
+
 	if (np) {
 		of_property_read_u32(np,
 			"samsung,uart-fifosize", &ourport->port.fifosize);
@@ -2401,6 +2403,7 @@ static const struct s3c24xx_serial_drv_data s3c6400_serial_drv_data = {
 		.name		= "Samsung S3C6400 UART",
 		.type		= TYPE_S3C6400,
 		.port_type	= PORT_S3C6400,
+		.iotype		= UPIO_MEM,
 		.fifosize	= 64,
 		.has_divslot	= 1,
 		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
@@ -2430,6 +2433,7 @@ static const struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 		.name		= "Samsung S5PV210 UART",
 		.type		= TYPE_S3C6400,
 		.port_type	= PORT_S3C6400,
+		.iotype		= UPIO_MEM,
 		.has_divslot	= 1,
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,
 		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,
@@ -2459,6 +2463,7 @@ static const struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 		.name		= "Samsung Exynos UART",	\
 		.type		= TYPE_S3C6400,			\
 		.port_type	= PORT_S3C6400,			\
+		.iotype		= UPIO_MEM,			\
 		.has_divslot	= 1,				\
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,	\
 		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,	\
@@ -2519,6 +2524,7 @@ static const struct s3c24xx_serial_drv_data s5l_serial_drv_data = {
 		.name		= "Apple S5L UART",
 		.type		= TYPE_APPLE_S5L,
 		.port_type	= PORT_8250,
+		.iotype		= UPIO_MEM,
 		.fifosize	= 16,
 		.rx_fifomask	= S3C2410_UFSTAT_RXMASK,
 		.rx_fifoshift	= S3C2410_UFSTAT_RXSHIFT,
@@ -2548,6 +2554,7 @@ static const struct s3c24xx_serial_drv_data artpec8_serial_drv_data = {
 		.name		= "Axis ARTPEC-8 UART",
 		.type		= TYPE_S3C6400,
 		.port_type	= PORT_S3C6400,
+		.iotype		= UPIO_MEM,
 		.fifosize	= 64,
 		.has_divslot	= 1,
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,
-- 
2.43.0.472.g3155946c3a-goog


