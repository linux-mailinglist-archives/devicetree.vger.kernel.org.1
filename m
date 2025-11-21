Return-Path: <devicetree+bounces-241161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F23C7A5B6
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 161423A0FC5
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29277347BD2;
	Fri, 21 Nov 2025 14:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bKmA8etP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDD633C19D
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737169; cv=none; b=S7nkTkfWhP5BG2W6hSZOJMjEYsPvpGptNsPRbKeYTrKnjVMhEmNBhpKfI/tCG8/BETOOXK/JEsFM7Ap0NkMsd+RJ/wkPMVjoa4Dvyi2QzrzebRXvh1U+oB31KfU1rDR2sUgEC+GSs+xR1C/kUaa8dzEsAIziH+BrcrHyvbeOlH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737169; c=relaxed/simple;
	bh=CDsAuPIiLayhdT+9qQThRp44J92JGxMkfUix5OCTJ9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RhxQNCk2PLKwFxrL3/9Mw0/DhNy97HmEl8pWTKOIkC61/T0e/vEtgi+8NA4KZSsI0u06HDY6IYy70sv0Yp0yJfQnOGn/cn1nyjhEtwo1hfojk6t4cZ492oHPJ5Wj02SA5uYcsfmMJ8KBlW181itaB3A7mxvZyDG5sMotBoN9gzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bKmA8etP; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-88054872394so28239126d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763737162; x=1764341962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKqQLX6Fb4cYelB2ki4ZNF0Xx/caSApe6NjsM2eEIbk=;
        b=bKmA8etP/Cw4f/A4twLz/A3Y0qzQZA3FcGzTGXOYv5DErKChrStwmIXOCsHy3lGnvH
         SkzlBYLp9tqW4lQLZjClcs+nMWEwIH3AiWSEsYvUCukANhay5iz2cnXVb/lnk+zBbHV/
         33XAgvf+ZiitR+SxQROqk1XlIse0hzHXPps5pjbUzliAI494DeZUVt4BPvnYwdIN+PoB
         W9P/jEqgd/dXrNPLlIFqEPBSwsdCmdLYazQQlUk7BOwp9WlyYV65DVLMtwlJCM6zs8Hi
         Ca0pyLiylQEAiKm6ToTCvK38ETkkOAYiSeEXARe7zs/18SYop6Ifk5eMPo7G+VwZ7V2m
         Xcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737162; x=1764341962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oKqQLX6Fb4cYelB2ki4ZNF0Xx/caSApe6NjsM2eEIbk=;
        b=q5em/+7gmCBVXItnsUOU6a/a12ibQpKc74bx5K1sjPezOCTGq+BMYC9PDnUf+R574o
         TFor+HmWB4st8brxozGIqF8g/MKF3OOlDVdmyvpdpuhZMSmgS1j4lcODsgSOWaxK61Ut
         kdwNHHXRhPiHcHKH/DFipXkBmO//5iIj8g2jDaqa9KlidScciUNpap8z2LEIEzF177tx
         UhG5sfw803sCyq2TF/IXf0uXMg98ypLzicrQbqtZPsuoA0nbQ3aM7c4RXoBXQTj8srnO
         DmghT9xIazJfRSKsP7KkCtjoxlmMRSMuScnMgI8yGvEIq6WR65dW4qeeArYd9qUudasQ
         FabA==
X-Forwarded-Encrypted: i=1; AJvYcCX27xzLMIhe6xs/3iODweRV3EZOdpvWV9v8UQIAPc3NAIhCfiehtiCSHeuuAB7CN6B+sZBvp84XRDxI@vger.kernel.org
X-Gm-Message-State: AOJu0YyxrnD0aKJpBYCaR11Vt+JyWMVNG79j1sxAsor/eWv9RoF3BnZt
	SOzo+UckJ6JTg/9XAVEPHsbrVcjRWdbQehhrlM4mlc5AcwhaMnH46m8s
X-Gm-Gg: ASbGncuWO0jxAghCiy3pOom1kaFHd+x32/nlxLoKBXPRBq/7kwiIly62QPor34O0ji2
	5iI98jx1vDgB+mUhZhKYw/l80Gs4TvsjH+7+rmu2kdNLWrn1DXeEwQdP+pmKo0DiPdAUvT1rBI3
	D1zXRFjiFfoHKzgLXMJugDjmHZ8C50ObGb9DmM2TEr4msRcTjLGgrOQrWk5w3KCql5oA/meR3uQ
	PwsN4CJHdfpj3DRABHWCZqRpANF6Z8ko5egL3E1b64WVn23DIo7sNBSONbc9F6PqmBvzURPgF9T
	BZYLOHL+w7pQaZwPf7nHiKId55emmZGKkmPdFbcbw46DFfHkA8FKZzuilJ2GB4Bt5+8Fm9WZ36A
	g56okvjW0SpuLhnxSSJmUG5GGgMc30ooTp8+ENyGfP6u7lCmLakUW0Yv9uJo+azmpWEbdpX025T
	V2IqL9oJS7y7CYI2ZaOPMNlp9pOSBsRV7xIZNb3qHQTCca+KPM6r2pIzyDPvKQuLtpzpo=
X-Google-Smtp-Source: AGHT+IEMZ/IEcjT3fWhKQDHpDJEhDw1HCETsf++WNjGnSznrc3BYXDVGkEfPQyNyF3PrUUbfQJ0YnQ==
X-Received: by 2002:a05:6214:4a87:b0:87f:e1b3:2014 with SMTP id 6a1803df08f44-8847c546ba3mr33837306d6.66.1763737161822;
        Fri, 21 Nov 2025 06:59:21 -0800 (PST)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e54d13dsm40327896d6.35.2025.11.21.06.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:59:21 -0800 (PST)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 5/7] auxdisplay: TM16xx: Add keypad support for scanning matrix keys
Date: Fri, 21 Nov 2025 09:59:05 -0500
Message-ID: <20251121145911.176033-6-jefflessard3@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121145911.176033-1-jefflessard3@gmail.com>
References: <20251121145911.176033-1-jefflessard3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for keypad scanning on TM16xx-compatible auxiliary display
controllers. It handles keypad initialization, scanning, and input
reporting for matrix keys managed by the TM16xx devices.

Key features include:
- Input device registration configured by device properties
  (poll-interval, linux,keymap, autorepeat)
- Key state tracking using managed bitmaps
- Matrix scanning and event reporting integrated with Linux input
  subsystem

This code is separated from main core driver to improve maintainability
and reviewability.

Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---

Notes:
    checkpatch reports false positives that are intentionally ignored:
    COMPLEX_MACRO/MACRO_ARG_REUSE for tm16xx_for_each_key(): This is a
    standard iterator pattern following kernel conventions (similar to
    for_each_* macros throughout the kernel). The nested for loops are
    the correct implementation for matrix iteration.

 MAINTAINERS                        |   1 +
 drivers/auxdisplay/Kconfig         |   9 ++
 drivers/auxdisplay/Makefile        |   1 +
 drivers/auxdisplay/tm16xx.h        |  25 ++++
 drivers/auxdisplay/tm16xx_core.c   |   4 +
 drivers/auxdisplay/tm16xx_keypad.c | 192 +++++++++++++++++++++++++++++
 6 files changed, 232 insertions(+)
 create mode 100644 drivers/auxdisplay/tm16xx_keypad.c

diff --git a/MAINTAINERS b/MAINTAINERS
index d9badf2c24ba..21ba2a99b581 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25920,6 +25920,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/auxdisplay/titanmec,tm16xx.yaml
 F:	drivers/auxdisplay/tm16xx.h
 F:	drivers/auxdisplay/tm16xx_core.c
+F:	drivers/auxdisplay/tm16xx_keypad.c
 
 TMIO/SDHI MMC DRIVER
 M:	Wolfram Sang <wsa+renesas@sang-engineering.com>
diff --git a/drivers/auxdisplay/Kconfig b/drivers/auxdisplay/Kconfig
index 6b7c04902649..afd8ce05c668 100644
--- a/drivers/auxdisplay/Kconfig
+++ b/drivers/auxdisplay/Kconfig
@@ -528,16 +528,25 @@ config SEG_LED_GPIO
 
 config TM16XX
 	tristate "TM16xx LED matrix display controllers" if COMPILE_TEST
+	depends on INPUT
+	select INPUT_MATRIXKMAP
 	select LEDS_CLASS
 	select LEDS_TRIGGERS
 	select LINEDISP
 	select NEW_LEDS
+	select TM16XX_KEYPAD if (INPUT)
 	help
 	  Core support for TM16xx-compatible 7-segment LED matrix display
 	  controllers from multiple vendors (Titan Micro, Fuda Hisi, i-Core,
 	  Princeton, Winrise). Provides LED class integration for display
 	  control and optional keypad scanning support.
 
+config TM16XX_KEYPAD
+	bool
+	depends on TM16XX
+	help
+	  Enable optional keyscan support for TM16XX driver.
+
 #
 # Character LCD with non-conforming interface section
 #
diff --git a/drivers/auxdisplay/Makefile b/drivers/auxdisplay/Makefile
index 7ecf3cd4a0d3..a9b9c8ff05e8 100644
--- a/drivers/auxdisplay/Makefile
+++ b/drivers/auxdisplay/Makefile
@@ -18,3 +18,4 @@ obj-$(CONFIG_PARPORT_PANEL)	+= panel.o
 obj-$(CONFIG_SEG_LED_GPIO)	+= seg-led-gpio.o
 obj-$(CONFIG_TM16XX)		+= tm16xx.o
 tm16xx-y			+= tm16xx_core.o
+tm16xx-$(CONFIG_TM16XX_KEYPAD)	+= tm16xx_keypad.o
diff --git a/drivers/auxdisplay/tm16xx.h b/drivers/auxdisplay/tm16xx.h
index ef6c004f9d89..af0ed889ab1a 100644
--- a/drivers/auxdisplay/tm16xx.h
+++ b/drivers/auxdisplay/tm16xx.h
@@ -106,6 +106,7 @@ struct device;
 struct tm16xx_display;
 struct tm16xx_digit;
 struct tm16xx_led;
+struct tm16xx_keypad;
 
 /**
  * struct tm16xx_controller - Controller-specific operations and limits
@@ -136,6 +137,7 @@ struct tm16xx_controller {
  * @dev: Pointer to device struct.
  * @controller: Controller-specific function table and limits.
  * @linedisp: character line display structure
+ * @keypad: Opaque pointer to tm16xx_keypad struct.
  * @spi_buffer: DMA-safe buffer for SPI transactions, or NULL for I2C.
  * @num_hwgrid: Number of controller grids in use.
  * @num_hwseg: Number of controller segments in use.
@@ -153,6 +155,7 @@ struct tm16xx_controller {
 struct tm16xx_display {
 	struct device *dev;
 	const struct tm16xx_controller *controller;
+	struct tm16xx_keypad *keypad;
 	struct linedisp linedisp;
 	u8 *spi_buffer;
 	u8 num_hwgrid;
@@ -172,4 +175,26 @@ struct tm16xx_display {
 int tm16xx_probe(struct tm16xx_display *display);
 void tm16xx_remove(struct tm16xx_display *display);
 
+/* keypad support */
+#if IS_ENABLED(CONFIG_TM16XX_KEYPAD)
+int tm16xx_keypad_probe(struct tm16xx_display *display);
+void tm16xx_set_key(const struct tm16xx_display *display, const int row,
+		    const int col, const bool pressed);
+#else
+static inline int tm16xx_keypad_probe(struct tm16xx_display *display)
+{
+	return 0;
+}
+
+static inline void tm16xx_set_key(const struct tm16xx_display *display,
+				  const int row, const int col,
+				  const bool pressed)
+{
+}
+#endif
+
+#define tm16xx_for_each_key(display, _r, _c) \
+	for (int _r = 0; _r < (display)->controller->max_key_rows; _r++) \
+		for (int _c = 0; _c < (display)->controller->max_key_cols; _c++)
+
 #endif /* _TM16XX_H */
diff --git a/drivers/auxdisplay/tm16xx_core.c b/drivers/auxdisplay/tm16xx_core.c
index 9c29b7fb1635..03e9484235b0 100644
--- a/drivers/auxdisplay/tm16xx_core.c
+++ b/drivers/auxdisplay/tm16xx_core.c
@@ -437,6 +437,10 @@ int tm16xx_probe(struct tm16xx_display *display)
 		goto unregister_leds;
 	}
 
+	ret = tm16xx_keypad_probe(display);
+	if (ret)
+		dev_warn(dev, "Failed to initialize keypad: %d\n", ret);
+
 	return 0;
 
 unregister_leds:
diff --git a/drivers/auxdisplay/tm16xx_keypad.c b/drivers/auxdisplay/tm16xx_keypad.c
new file mode 100644
index 000000000000..be867b250da5
--- /dev/null
+++ b/drivers/auxdisplay/tm16xx_keypad.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * TM16xx and compatible LED display/keypad controller driver
+ * Supports TM16xx, FD6xx, PT6964, HBS658, AIP16xx and related chips.
+ *
+ * Copyright (C) 2025 Jean-François Lessard
+ */
+
+#include <linux/bitmap.h>
+#include <linux/cleanup.h>
+#include <linux/device.h>
+#include <linux/input.h>
+#include <linux/input/matrix_keypad.h>
+#include <linux/mutex.h>
+#include <linux/property.h>
+#include <linux/types.h>
+
+#include "tm16xx.h"
+
+/**
+ * struct tm16xx_keypad - Keypad matrix state and input device
+ * @input: Input device for reporting key events.
+ * @state: Current bitmap of key states.
+ * @last_state: Previous bitmap of key states for change detection.
+ * @changes: Bitmap of key state changes since last poll.
+ * @row_shift: Row shift for keymap encoding.
+ */
+struct tm16xx_keypad {
+	struct input_dev *input;
+	unsigned long *state;
+	unsigned long *last_state;
+	unsigned long *changes;
+	int row_shift;
+};
+
+/**
+ * tm16xx_key_nbits() - Number of bits for the keypad state bitmap
+ * @display: pointer to tm16xx_display
+ *
+ * Return: total bits in keypad state bitmap (max_key_rows * max_key_cols)
+ */
+static inline unsigned int tm16xx_key_nbits(const struct tm16xx_display *display)
+{
+	return display->controller->max_key_rows *
+	       display->controller->max_key_cols;
+}
+
+/**
+ * tm16xx_get_key_row() - Get row index from keypad bit index
+ * @display: pointer to tm16xx_display
+ * @bit: bit index in state bitmap
+ *
+ * Return: row index
+ */
+static inline int tm16xx_get_key_row(const struct tm16xx_display *display,
+				     const unsigned int bit)
+{
+	return bit / display->controller->max_key_cols;
+}
+
+/**
+ * tm16xx_get_key_col() - Get column index from keypad bit index
+ * @display: pointer to tm16xx_display
+ * @bit: bit index in state bitmap
+ *
+ * Return: column index
+ */
+static inline int tm16xx_get_key_col(const struct tm16xx_display *display,
+				     const unsigned int bit)
+{
+	return bit % display->controller->max_key_cols;
+}
+
+/**
+ * tm16xx_set_key() - Set the keypad state for a key
+ * @display: pointer to tm16xx_display
+ * @row: row index
+ * @col: column index
+ * @pressed: %true if pressed, %false otherwise
+ */
+void tm16xx_set_key(const struct tm16xx_display *display, const int row,
+		    const int col, const bool pressed)
+{
+	__assign_bit(row * display->controller->max_key_cols + col,
+		     display->keypad->state, pressed);
+}
+EXPORT_SYMBOL_NS_GPL(tm16xx_set_key, "TM16XX");
+
+/**
+ * tm16xx_keypad_poll() - Polls the keypad, reports events
+ * @input: pointer to input_dev
+ *
+ * Reads the matrix keypad state, compares with previous state, and
+ * reports key events to the input subsystem.
+ */
+static void tm16xx_keypad_poll(struct input_dev *input)
+{
+	struct tm16xx_display *display = input_get_drvdata(input);
+	struct tm16xx_keypad *keypad = display->keypad;
+	const unsigned short *keycodes = keypad->input->keycode;
+	unsigned int nbits = tm16xx_key_nbits(display);
+	int row, col, scancode;
+	unsigned int bit;
+	bool pressed;
+	int ret;
+
+	bitmap_zero(keypad->state, nbits);
+	bitmap_zero(keypad->changes, nbits);
+
+	scoped_guard(mutex, &display->lock) {
+		ret = display->controller->keys(display);
+	}
+
+	if (ret) {
+		dev_err(display->dev, "Reading failed: %d\n", ret);
+		return;
+	}
+
+	bitmap_xor(keypad->changes, keypad->state, keypad->last_state, nbits);
+
+	for_each_set_bit(bit, keypad->changes, nbits) {
+		row = tm16xx_get_key_row(display, bit);
+		col = tm16xx_get_key_col(display, bit);
+		pressed = _test_bit(bit, keypad->state);
+		scancode = MATRIX_SCAN_CODE(row, col, keypad->row_shift);
+
+		input_event(keypad->input, EV_MSC, MSC_SCAN, scancode);
+		input_report_key(keypad->input, keycodes[scancode], pressed);
+	}
+	input_sync(keypad->input);
+
+	bitmap_copy(keypad->last_state, keypad->state, nbits);
+}
+
+int tm16xx_keypad_probe(struct tm16xx_display *display)
+{
+	const unsigned int rows = display->controller->max_key_rows;
+	const unsigned int cols = display->controller->max_key_cols;
+	unsigned int poll_interval, nbits;
+	struct tm16xx_keypad *keypad;
+	struct input_dev *input;
+	int ret;
+
+	if (!display->controller->keys || !rows || !cols)
+		return 0; /* keypad not supported */
+
+	if (!device_property_present(display->dev, "poll-interval") ||
+	    !device_property_present(display->dev, "linux,keymap"))
+		return 0; /* keypad disabled */
+
+	ret = device_property_read_u32(display->dev, "poll-interval", &poll_interval);
+	if (ret)
+		return dev_err_probe(display->dev, ret,
+				     "Failed to read poll-interval\n");
+
+	keypad = devm_kzalloc(display->dev, sizeof(*keypad), GFP_KERNEL);
+	if (!keypad)
+		return -ENOMEM;
+	display->keypad = keypad;
+
+	nbits = tm16xx_key_nbits(display);
+	keypad->state = devm_bitmap_zalloc(display->dev, nbits, GFP_KERNEL);
+	keypad->last_state = devm_bitmap_zalloc(display->dev, nbits, GFP_KERNEL);
+	keypad->changes = devm_bitmap_zalloc(display->dev, nbits, GFP_KERNEL);
+	if (!keypad->state || !keypad->last_state || !keypad->changes)
+		return -ENOMEM;
+
+	input = devm_input_allocate_device(display->dev);
+	if (!input)
+		return -ENOMEM;
+	input->name = "tm16xx-keypad";
+	keypad->input = input;
+	input_set_drvdata(input, display);
+
+	keypad->row_shift = get_count_order(cols); /* !cols already checked */
+	ret = matrix_keypad_build_keymap(NULL, "linux,keymap", rows, cols, NULL, input);
+	if (ret)
+		return dev_err_probe(display->dev, ret,
+				     "Failed to build keymap\n");
+
+	if (device_property_read_bool(display->dev, "autorepeat"))
+		__set_bit(EV_REP, input->evbit);
+
+	input_setup_polling(input, tm16xx_keypad_poll);
+	input_set_poll_interval(input, poll_interval);
+	ret = input_register_device(input);
+	if (ret)
+		return dev_err_probe(display->dev, ret,
+				     "Failed to register input device\n");
+
+	return 0;
+}
-- 
2.43.0


