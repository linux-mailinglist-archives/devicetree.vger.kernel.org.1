Return-Path: <devicetree+bounces-17168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FA97F16CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0375F1C217E0
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC7B1CFA0;
	Mon, 20 Nov 2023 15:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="a0hIvYkk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35F33D8
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:04 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507e85ebf50so5766105e87.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 07:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1700493062; x=1701097862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/SkPChN/mWBp/DhOux5JWgEaySNKwX36DC2y2cdDkg=;
        b=a0hIvYkktppxFCuqKimI1smolxt9iTxrvf3Dn4M0hb3jbGoWASIkALBb9cuHfRWjUp
         66CaUrpTaLoxSW0jRpLpdXEx/Q6IvnyT5Yd6P++t09ylAvkbsRBFpZqs3xPQrvj9DX+P
         Ii1jJcuxxk+TDjx4i2EXNqjJT2ZhSvsRhycYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700493062; x=1701097862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/SkPChN/mWBp/DhOux5JWgEaySNKwX36DC2y2cdDkg=;
        b=C3cDau2L5j8i2iqnkum2rCoW21yn4S7a5A4VQe46v0R/Nc+T+1YfYcv04pNFb0eHud
         v7mpBb6r1FuRcYkaWaI4pzWL/j+B4Dv3ZOBIa3GY4OEhCuaRHDU2Ddi/O0zy0FB1nV7U
         uM87O1Xa/rqMyBwldiHYlNMUKxxZBRRffwQMhPJ54PgHe2cK3pTSVEs7I+/IMW2kzreo
         i8C4gVItNvmSjLaNs+jPysK2/+Ku8lkRZe983pqOvrInTMapbrsib24uErJtsCbR7d07
         F5XGEVfyYQUnCy7U0TeADYEaKIbpbddTf8//5mb0Ucsf5BrAUOGWjja4D9Ov/aUp/KhU
         zUVg==
X-Gm-Message-State: AOJu0YxgJ6fQgllarXcKBhCAYjHNY04GR/cpViaACsZeomXNjEGt4pwJ
	CjWG9eTkB4mKTmbjLTmGSM6xvg==
X-Google-Smtp-Source: AGHT+IEhkfVIhtF+H9/XCs/MThWLVP4I2seY1s1dvQuePISEXOOnqAajhZYae0MYlMGFCGOHb2fCAw==
X-Received: by 2002:a19:5517:0:b0:509:fbf:f235 with SMTP id n23-20020a195517000000b005090fbff235mr5971008lfe.6.1700493062235;
        Mon, 20 Nov 2023 07:11:02 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id g29-20020a0565123b9d00b00502e2ab7118sm1207444lfv.50.2023.11.20.07.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 07:11:01 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>
Cc: devicetree@vger.kernel.org,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Lukas Wunner <lukas@wunner.de>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 2/2] serial: core: implement support for rs485-mux-gpios
Date: Mon, 20 Nov 2023 16:10:55 +0100
Message-Id: <20231120151056.148450-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
In-Reply-To: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
References: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add code for handling a rs485-mux-gpio specified in device tree.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/serial_core.c | 35 ++++++++++++++++++++++++++++++--
 include/linux/serial_core.h      |  1 +
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/serial_core.c
index f1348a509552..410b17ea7444 100644
--- a/drivers/tty/serial/serial_core.c
+++ b/drivers/tty/serial/serial_core.c
@@ -1402,14 +1402,20 @@ static void uart_set_rs485_termination(struct uart_port *port,
 				 !!(rs485->flags & SER_RS485_TERMINATE_BUS));
 }
 
+static void uart_set_rs485_mux(struct uart_port *port, const struct serial_rs485 *rs485)
+{
+	gpiod_set_value_cansleep(port->rs485_mux_gpio,
+				 !!(rs485->flags & SER_RS485_ENABLED));
+}
+
 static int uart_rs485_config(struct uart_port *port)
 {
 	struct serial_rs485 *rs485 = &port->rs485;
 	unsigned long flags;
-	int ret;
+	int ret = 0;
 
 	if (!(rs485->flags & SER_RS485_ENABLED))
-		return 0;
+		goto out;
 
 	uart_sanitize_serial_rs485(port, rs485);
 	uart_set_rs485_termination(port, rs485);
@@ -1420,6 +1426,9 @@ static int uart_rs485_config(struct uart_port *port)
 	if (ret)
 		memset(rs485, 0, sizeof(*rs485));
 
+out:
+	uart_set_rs485_mux(port, rs485);
+
 	return ret;
 }
 
@@ -1457,6 +1466,14 @@ static int uart_set_rs485_config(struct tty_struct *tty, struct uart_port *port,
 		return ret;
 	uart_sanitize_serial_rs485(port, &rs485);
 	uart_set_rs485_termination(port, &rs485);
+	/*
+	 * To avoid glitches on the transmit enable pin, the mux must
+	 * be set before calling the driver's ->rs485_config when
+	 * disabling rs485 mode, but after when enabling rs485
+	 * mode.
+	 */
+	if (!(rs485.flags & SER_RS485_ENABLED))
+		uart_set_rs485_mux(port, &rs485);
 
 	uart_port_lock_irqsave(port, &flags);
 	ret = port->rs485_config(port, &tty->termios, &rs485);
@@ -1468,6 +1485,13 @@ static int uart_set_rs485_config(struct tty_struct *tty, struct uart_port *port,
 			port->ops->set_mctrl(port, port->mctrl);
 	}
 	uart_port_unlock_irqrestore(port, flags);
+
+	/*
+	 * The ->rs485_config might have failed. Regardless, set the
+	 * mux according to the port's effective rs485 config.
+	 */
+	uart_set_rs485_mux(port, &port->rs485);
+
 	if (ret)
 		return ret;
 
@@ -3621,6 +3645,13 @@ int uart_get_rs485_mode(struct uart_port *port)
 		return dev_err_probe(dev, PTR_ERR(desc), "Cannot get rs485-rx-during-tx-gpios\n");
 	port->rs485_rx_during_tx_gpio = desc;
 
+	dflags = (rs485conf->flags & SER_RS485_ENABLED) ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
+	desc = devm_gpiod_get_optional(dev, "rs485-mux", dflags);
+	if (IS_ERR(desc))
+		return dev_err_probe(dev, PTR_ERR(port->rs485_mux_gpio),
+				     "Cannot get rs485-mux-gpios\n");
+	port->rs485_mux_gpio = desc;
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(uart_get_rs485_mode);
diff --git a/include/linux/serial_core.h b/include/linux/serial_core.h
index 89f7b6c63598..943818209c49 100644
--- a/include/linux/serial_core.h
+++ b/include/linux/serial_core.h
@@ -584,6 +584,7 @@ struct uart_port {
 	struct serial_rs485	rs485_supported;	/* Supported mask for serial_rs485 */
 	struct gpio_desc	*rs485_term_gpio;	/* enable RS485 bus termination */
 	struct gpio_desc	*rs485_rx_during_tx_gpio; /* Output GPIO that sets the state of RS485 RX during TX */
+	struct gpio_desc	*rs485_mux_gpio;	/* gpio for selecting RS485 mode */
 	struct serial_iso7816   iso7816;
 	void			*private_data;		/* generic platform data pointer */
 };
-- 
2.40.1.1.g1c60b9335d


