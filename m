Return-Path: <devicetree+bounces-149333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FEAA3F19C
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 11:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A089719C22A6
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2F7205E1A;
	Fri, 21 Feb 2025 10:14:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0e.mail.infomaniak.ch (smtp-bc0e.mail.infomaniak.ch [45.157.188.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC7D205AA4
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 10:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740132891; cv=none; b=qP/q6nL78vg0chcd2EDM1h2rOQXdg7I/AIy37iIraiqffdavgzbhZlSuepvAUxHa2dnlnT5bXeA4kfntYI/h4cN6zgCTT5eehBlzaEJCRa29AzQgQHiy8/J4JtwlG7FTH4qSdTnx9HOXFksmdZVe7q/HNT06BOwUTzSW0bQlq4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740132891; c=relaxed/simple;
	bh=btnEhaUwYw0VeLK58faU2JxTUUH8+nVhoaz8xfFivsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fnVHwLysBTvAjmCuwF0Sf8ou9eMXprE3BBxeSYnAuwjYW0YjuQY9DLVvA7sWX+ZJcJjqFTFpGMlI0wwJsu1EASj7ltnBq0aCF+W/hqQkwqHiFnx68SG80UIiv+RV6uFmtBMMrHi7jlxt+BK67DFIu+QXZ6NX3uaY/FaWUrmjZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YzmFs17Mdz4G2;
	Fri, 21 Feb 2025 11:14:41 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YzmFr4LKKzM2N;
	Fri, 21 Feb 2025 11:14:40 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 21 Feb 2025 11:14:27 +0100
Subject: [PATCH v2 2/2] gpio: pcf857x: add support for reset-gpios on
 (most) PCA967x
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-pca976x-reset-driver-v2-2-a2bcb9fdc256@cherry.de>
References: <20250221-pca976x-reset-driver-v2-0-a2bcb9fdc256@cherry.de>
In-Reply-To: <20250221-pca976x-reset-driver-v2-0-a2bcb9fdc256@cherry.de>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The PCA9670, PCA9671, PCA9672 and PCA9673 all have a RESETN input pin
that is used to reset the I2C GPIO expander.

One needs to hold this pin low for at least 4us and the reset should be
finished after about 100us according to the datasheet[1]. Once the reset
is done, the "registers and I2C-bus state machine will be held in their
default state until the RESET input is once again HIGH.".

Because the logic is reset, the latch values eventually provided in the
Device Tree via lines-initial-states property are inapplicable so they
are simply ignored if a reset GPIO is provided.

[1] https://www.nxp.com/docs/en/data-sheet/PCA9670.pdf 8.5 and fig 22.

Tested-by: Heiko Stuebner <heiko@sntech.de> # RK3588 Tiger Haikou Video Demo
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 drivers/gpio/gpio-pcf857x.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-pcf857x.c b/drivers/gpio/gpio-pcf857x.c
index 7c57eaeb0afeba8953d998d8eec60a65b40efb6d..2e5f5d7f886598318b753304e7e0efca54ff8b69 100644
--- a/drivers/gpio/gpio-pcf857x.c
+++ b/drivers/gpio/gpio-pcf857x.c
@@ -5,6 +5,8 @@
  * Copyright (C) 2007 David Brownell
  */
 
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
@@ -272,12 +274,11 @@ static const struct irq_chip pcf857x_irq_chip = {
 
 static int pcf857x_probe(struct i2c_client *client)
 {
+	struct gpio_desc *reset_gpio;
 	struct pcf857x *gpio;
 	unsigned int n_latch = 0;
 	int status;
 
-	device_property_read_u32(&client->dev, "lines-initial-states", &n_latch);
-
 	/* Allocate, initialize, and register this gpio_chip. */
 	gpio = devm_kzalloc(&client->dev, sizeof(*gpio), GFP_KERNEL);
 	if (!gpio)
@@ -297,6 +298,30 @@ static int pcf857x_probe(struct i2c_client *client)
 	gpio->chip.direction_output	= pcf857x_output;
 	gpio->chip.ngpio		= (uintptr_t)i2c_get_match_data(client);
 
+	reset_gpio = devm_gpiod_get_optional(&client->dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(reset_gpio))
+		return dev_err_probe(&client->dev, PTR_ERR(reset_gpio),
+				     "failed to get reset GPIO\n");
+
+	if (reset_gpio) {
+		/* Reset already held with devm_gpiod_get_optional with GPIOD_OUT_HIGH */
+		fsleep(4); /* tw(rst) > 4us */
+		gpiod_set_value_cansleep(reset_gpio, 0);
+		fsleep(100); /* trst > 100uS */
+
+		/*
+		 * Performing a reset means "The PCA9670 registers and I2C-bus
+		 * state machine will be held in their default state until the
+		 * RESET input is once again HIGH".
+		 *
+		 * This is the same as writing 1 for all pins, which is the same
+		 * as n_latch=0, the default value of the variable.
+		 */
+	} else {
+		device_property_read_u32(&client->dev, "lines-initial-states",
+					 &n_latch);
+	}
+
 	/* NOTE:  the OnSemi jlc1562b is also largely compatible with
 	 * these parts, notably for output.  It has a low-resolution
 	 * DAC instead of pin change IRQs; and its inputs can be the

-- 
2.48.1


