Return-Path: <devicetree+bounces-241160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D13C7A6AA
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:09:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A6BC44EE764
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F0234D38E;
	Fri, 21 Nov 2025 14:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kEg6JJW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BF42BD015
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737168; cv=none; b=kqcmgVMHuNQbNxsUGcjwjvPBmoStCSNVJqAuBcU/NycY0j9GWuJ2OyjfAUlcXJQRIFq2V3k1Aqv0gZdZhB5jtACnrwtQf0KRh9y0WsYyqp1MZO0uCsOZBk+Xpw5ktBuTJTvqzyVVlxcGhlUWwrOz+e8OFrVxPDbxxtDUoTYuPWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737168; c=relaxed/simple;
	bh=mGW92khnnO3PrOI+/H3ty3104c+ZoynQCMWUQw5yFbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iM5VyxEI4S2DKQPecFtMCpAKi/xHHSyw7y0GXDYbVpCPVDU8iD10N7lVaUdeMZUmw/n5whDUdWkFHZKIKqLH7wx/u+TW7pyP0bDdmgRHbjs7oid4MP/h6EvDWmzJezb/zM0gjAKsGWaUJG3/WmOR5N4SNO9jlpDfvc4+9EsMXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kEg6JJW+; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88249766055so24473446d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763737163; x=1764341963; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cyP4s9+W8f5HjZlC55gU7BK+yTyqgscqIRWflvGV340=;
        b=kEg6JJW+f5gjlQj72FFpxa8boI/LUCvU9GKnDtZK/sR3FzsqVO0+Xp5P2iGETDNpgS
         s1IYlKTv6dnZob/EdeMCQdEHT6aly1ICkDlKztCNkXKmk2CyB16+3U2j1UA2IG4n0aR0
         cepVOALMjk6aksTso5KbYdyq3kUZhutj9loZZyUne3FnpOCu1SpPYwpI1Cq1wL9FEXRJ
         ElhYEpUWOMuxtPe73r2XjOoMjHUQY5cGza9YtoxAZHyrE63Q88ga3G7+GQb5rRCOd/q4
         Cf19Sy/ijO2/ZR1hsGSJtaAbsT7LnTYblCLE9G8XEJkYnLpZRxMac5AoNR9JSPm0UMuX
         i1Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737163; x=1764341963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cyP4s9+W8f5HjZlC55gU7BK+yTyqgscqIRWflvGV340=;
        b=F2DK3x790UQBpf0JJjO6f+oRfIqnxWVk9BNMprgNpEswXfOTLBQds6kfvI0iYEuI5k
         GAt90bXnsK5LwkVgeSTaOuOHpe8+nFNep6rdGo1kd93fB9+2OPBOVxyrz1eus4YAiIIL
         FG78y+nh4wn0jHOkGbZ4OffcZlT40ZFpufOeilBNebu0qG4Fh2a7mQ4mQuXDfvJFTkKA
         g2qCK8rEUP1iox4g3qoPovE+ycY5e8yRxDD3Gsbkh2abgJpJqimZm/KT2QRgsywbs3FV
         p71tli3b4F+a1KHJUFyNPIF8/8b+ou3uJsRkz4xXUB/YfbSxtFeelaSPeB9o2ltfvNky
         Vp2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMMh9TtYOApuwJvFQRIvPkQb4pgUk+nLNJzDJHytQSTbK+8pU/kwdWEXainoZLh3CFS2GfT3MLS49V@vger.kernel.org
X-Gm-Message-State: AOJu0YwBgTPfB1GAUYiSF1+Y2yE/jGBaGtDUmj3CyIdLCpiPVl5B7zxp
	2bCie8Ei+uipG/J1ila2hOqhY45ivNuKG95HrTNvgcBD38OiIZVkpfY8FwiIibzH
X-Gm-Gg: ASbGnctvIavfJsRqdqJyemnS3V5EjIG8ue+YuMq9L1OPWYjqkDupl2HEg63zMJYe5gk
	WqChUCtaMyo8vo8rQEVdmttAqSyep/CFjpOUGzJAKjnPen1nxlfMjYezC4FtPukXQq7kjCiyx2g
	MYPn2uldvMQnYPVuDMd92rYCfHe2alHf0wCitwpBEc4sqGv/twJ2tLVe46yhQhwkVRzPbt66PX/
	08oCh3/LqXaj/qSKaZigj8AXgdNsDnNZDGkYcioSaxIEXTXxh88Q713xt9A9k1RIsVCOIiZflcM
	xzMLHWeN7XhkhuldZm6T3CgZ0MtRUAO4CMhuc1PVYO/Jj8Cb8ZZUSQ6mibeOP+XIXlhI4AcmuHq
	ggoPLRQXxlyJ/H1a204RZYlXonHiKFYjhWJhMvW35n04paQrArrb/jqhG0TvYY6KnLrx7zuao61
	/Q4+YQ1f80FnlhAMr0j4qsucV7Q/S1+Ub71kw2mOIXLn3A+tV3QmSj4eAo
X-Google-Smtp-Source: AGHT+IG4tMffng+qIKk+7urxmnDQ+VfyYaTFCm6M+ieiRI56T2TLr0lRPRbcNO3WNOuF0TLA32S50Q==
X-Received: by 2002:a05:6214:43c1:b0:807:8020:1055 with SMTP id 6a1803df08f44-8847c525e0cmr35914156d6.37.1763737163321;
        Fri, 21 Nov 2025 06:59:23 -0800 (PST)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8846e54c9d0sm39584546d6.26.2025.11.21.06.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 06:59:23 -0800 (PST)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 6/7] auxdisplay: TM16xx: Add support for I2C-based controllers
Date: Fri, 21 Nov 2025 09:59:06 -0500
Message-ID: <20251121145911.176033-7-jefflessard3@gmail.com>
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

Add support for TM16xx-compatible auxiliary display controllers connected
via the I2C bus.

The implementation includes:
- I2C driver registration and initialization
- Probe/remove logic for I2C devices
- Controller-specific handling and communication sequences
- Integration with the TM16xx core driver for common functionality

This allows platforms using TM16xx or compatible controllers over I2C to be
managed by the TM16xx driver infrastructure.

Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---
 MAINTAINERS                     |   1 +
 drivers/auxdisplay/Kconfig      |  16 ++
 drivers/auxdisplay/Makefile     |   1 +
 drivers/auxdisplay/tm16xx_i2c.c | 333 ++++++++++++++++++++++++++++++++
 4 files changed, 351 insertions(+)
 create mode 100644 drivers/auxdisplay/tm16xx_i2c.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 21ba2a99b581..17b3f101a0c6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25920,6 +25920,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/auxdisplay/titanmec,tm16xx.yaml
 F:	drivers/auxdisplay/tm16xx.h
 F:	drivers/auxdisplay/tm16xx_core.c
+F:	drivers/auxdisplay/tm16xx_i2c.c
 F:	drivers/auxdisplay/tm16xx_keypad.c
 
 TMIO/SDHI MMC DRIVER
diff --git a/drivers/auxdisplay/Kconfig b/drivers/auxdisplay/Kconfig
index afd8ce05c668..104a43b5baf4 100644
--- a/drivers/auxdisplay/Kconfig
+++ b/drivers/auxdisplay/Kconfig
@@ -547,6 +547,22 @@ config TM16XX_KEYPAD
 	help
 	  Enable optional keyscan support for TM16XX driver.
 
+config TM16XX_I2C
+	tristate "TM16XX-compatible I2C 7-segment LED controllers with keyscan"
+	depends on I2C
+	select TM16XX
+	help
+	  This driver supports the following TM16XX compatible
+	  I2C (2-wire) 7-segment led display chips:
+	  - Titanmec: TM1650
+	  - Fuda Hisi: FD650, FD655, FD6551
+	  - i-Core: AiP650
+	  - Winrise: HBS658
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called tm16xx_i2c and you will also get tm16xx for the
+	  core module.
+
 #
 # Character LCD with non-conforming interface section
 #
diff --git a/drivers/auxdisplay/Makefile b/drivers/auxdisplay/Makefile
index a9b9c8ff05e8..ba7b310f5667 100644
--- a/drivers/auxdisplay/Makefile
+++ b/drivers/auxdisplay/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_SEG_LED_GPIO)	+= seg-led-gpio.o
 obj-$(CONFIG_TM16XX)		+= tm16xx.o
 tm16xx-y			+= tm16xx_core.o
 tm16xx-$(CONFIG_TM16XX_KEYPAD)	+= tm16xx_keypad.o
+obj-$(CONFIG_TM16XX_I2C)	+= tm16xx_i2c.o
diff --git a/drivers/auxdisplay/tm16xx_i2c.c b/drivers/auxdisplay/tm16xx_i2c.c
new file mode 100644
index 000000000000..29031cea4d07
--- /dev/null
+++ b/drivers/auxdisplay/tm16xx_i2c.c
@@ -0,0 +1,333 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * TM16xx and compatible LED display/keypad controller driver
+ * Supports TM16xx, FD6xx, PT6964, HBS658, AIP16xx and related chips.
+ *
+ * Copyright (C) 2025 Jean-François Lessard
+ */
+
+#include <linux/bitfield.h>
+#include <linux/device.h>
+#include <linux/i2c.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/types.h>
+
+#include "tm16xx.h"
+
+static int tm16xx_i2c_probe(struct i2c_client *client)
+{
+	const struct tm16xx_controller *controller;
+	struct tm16xx_display *display;
+	int ret;
+
+	controller = i2c_get_match_data(client);
+	if (!controller)
+		return -EINVAL;
+
+	display = devm_kzalloc(&client->dev, sizeof(*display), GFP_KERNEL);
+	if (!display)
+		return -ENOMEM;
+
+	display->dev = &client->dev;
+	display->controller = controller;
+
+	i2c_set_clientdata(client, display);
+
+	ret = tm16xx_probe(display);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static void tm16xx_i2c_remove(struct i2c_client *client)
+{
+	struct tm16xx_display *display = i2c_get_clientdata(client);
+
+	tm16xx_remove(display);
+}
+
+/**
+ * tm16xx_i2c_write() - I2C write helper for controller
+ * @display: pointer to tm16xx_display structure
+ * @data: command and data bytes to send
+ * @len: number of bytes in @data
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+static int tm16xx_i2c_write(struct tm16xx_display *display, u8 *data, size_t len)
+{
+	struct i2c_client *i2c = to_i2c_client(display->dev);
+
+	/* expected sequence: S Command [A] Data [A] P */
+	struct i2c_msg msg = {
+		.addr = data[0] >> 1,
+		.flags = 0,
+		.len = len - 1,
+		.buf = &data[1],
+	};
+	int ret;
+
+	ret = i2c_transfer(i2c->adapter, &msg, 1);
+	if (ret < 0)
+		return ret;
+
+	return (ret == 1) ? 0 : -EIO;
+}
+
+/**
+ * tm16xx_i2c_read() - I2C read helper for controller
+ * @display: pointer to tm16xx_display structure
+ * @cmd: command/address byte to send before reading
+ * @data: buffer to receive data
+ * @len: number of bytes to read into @data
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+static int tm16xx_i2c_read(struct tm16xx_display *display, u8 cmd, u8 *data, size_t len)
+{
+	struct i2c_client *i2c = to_i2c_client(display->dev);
+
+	/* expected sequence: S Command [A] [Data] [A] P */
+	struct i2c_msg msgs[1] = {{
+		.addr = cmd >> 1,
+		.flags = I2C_M_RD | I2C_M_NO_RD_ACK,
+		.len = len,
+		.buf = data,
+	}};
+	int ret;
+
+	ret = i2c_transfer(i2c->adapter, msgs, ARRAY_SIZE(msgs));
+	if (ret < 0)
+		return ret;
+
+	return (ret == ARRAY_SIZE(msgs)) ? 0 : -EIO;
+}
+
+/* I2C controller-specific functions */
+static int tm1650_init(struct tm16xx_display *display)
+{
+	const enum led_brightness brightness = display->main_led.brightness;
+	u8 cmds[2];
+
+	cmds[0] = TM1650_CMD_CTRL;
+	cmds[1] = TM16XX_CTRL_BRIGHTNESS(brightness, brightness, TM1650) |
+		  TM1650_CTRL_SEG8_MODE;
+
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static int tm1650_data(struct tm16xx_display *display, u8 index,
+		       unsigned int grid)
+{
+	u8 cmds[2];
+
+	cmds[0] = TM1650_CMD_ADDR + index * 2;
+	cmds[1] = grid; /* SEG 1 to 8 */
+
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static int tm1650_keys(struct tm16xx_display *display)
+{
+	int row, col;
+	bool pressed;
+	u8 keycode;
+	int ret;
+
+	ret = tm16xx_i2c_read(display, TM1650_CMD_READ, &keycode, 1);
+	if (ret)
+		return ret;
+
+	if (keycode == 0x00 || keycode == 0xFF)
+		return -EINVAL;
+
+	row = FIELD_GET(TM1650_KEY_ROW_MASK, keycode);
+	pressed = FIELD_GET(TM1650_KEY_DOWN_MASK, keycode) != 0;
+	if ((keycode & TM1650_KEY_COMBINED) == TM1650_KEY_COMBINED) {
+		tm16xx_set_key(display, row, 0, pressed);
+		tm16xx_set_key(display, row, 1, pressed);
+	} else {
+		col = FIELD_GET(TM1650_KEY_COL_MASK, keycode);
+		tm16xx_set_key(display, row, col, pressed);
+	}
+
+	return 0;
+}
+
+static int fd655_init(struct tm16xx_display *display)
+{
+	const enum led_brightness brightness = display->main_led.brightness;
+	u8 cmds[2];
+
+	cmds[0] = FD655_CMD_CTRL;
+	cmds[1] = TM16XX_CTRL_BRIGHTNESS(brightness, brightness % 3, FD655);
+
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static int fd655_data(struct tm16xx_display *display, u8 index,
+		      unsigned int grid)
+{
+	u8 cmds[2];
+
+	cmds[0] = FD655_CMD_ADDR + index * 2;
+	cmds[1] = grid; /* SEG 1 to 8 */
+
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static int fd6551_init(struct tm16xx_display *display)
+{
+	const enum led_brightness brightness = display->main_led.brightness;
+	u8 cmds[2];
+
+	cmds[0] = FD655_CMD_CTRL;
+	cmds[1] = TM16XX_CTRL_BRIGHTNESS(brightness, ~(brightness - 1), FD6551);
+
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static void hbs658_swap_nibbles(u8 *data, size_t len)
+{
+	for (size_t i = 0; i < len; i++)
+		data[i] = (data[i] << 4) | (data[i] >> 4);
+}
+
+static int hbs658_init(struct tm16xx_display *display)
+{
+	const enum led_brightness brightness = display->main_led.brightness;
+	u8 cmd;
+	int ret;
+
+	/* Set data command */
+	cmd = TM16XX_CMD_WRITE | TM16XX_DATA_ADDR_AUTO;
+	hbs658_swap_nibbles(&cmd, 1);
+	ret = tm16xx_i2c_write(display, &cmd, 1);
+	if (ret)
+		return ret;
+
+	/* Set control command with brightness */
+	cmd = TM16XX_CMD_CTRL |
+	      TM16XX_CTRL_BRIGHTNESS(brightness, brightness - 1, TM16XX);
+	hbs658_swap_nibbles(&cmd, 1);
+	ret = tm16xx_i2c_write(display, &cmd, 1);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int hbs658_data(struct tm16xx_display *display, u8 index,
+		       unsigned int grid)
+{
+	u8 cmds[2];
+
+	cmds[0] = TM16XX_CMD_ADDR + index * 2;
+	cmds[1] = grid;
+
+	hbs658_swap_nibbles(cmds, ARRAY_SIZE(cmds));
+	return tm16xx_i2c_write(display, cmds, ARRAY_SIZE(cmds));
+}
+
+static int hbs658_keys(struct tm16xx_display *display)
+{
+	u8 cmd, keycode;
+	int col;
+	int ret;
+
+	cmd = TM16XX_CMD_READ;
+	hbs658_swap_nibbles(&cmd, 1);
+	ret = tm16xx_i2c_read(display, cmd, &keycode, 1);
+	if (ret)
+		return ret;
+
+	hbs658_swap_nibbles(&keycode, 1);
+
+	if (keycode != 0xFF) {
+		col = FIELD_GET(HBS658_KEY_COL_MASK, keycode);
+		tm16xx_set_key(display, 0, col, true);
+	}
+
+	return 0;
+}
+
+/* I2C controller definitions */
+static const struct tm16xx_controller tm1650_controller = {
+	.max_grids = 4,
+	.max_segments = 8,
+	.max_brightness = 8,
+	.max_key_rows = 4,
+	.max_key_cols = 7,
+	.init = tm1650_init,
+	.data = tm1650_data,
+	.keys = tm1650_keys,
+};
+
+static const struct tm16xx_controller fd655_controller = {
+	.max_grids = 5,
+	.max_segments = 7,
+	.max_brightness = 3,
+	.max_key_rows = 5,
+	.max_key_cols = 7,
+	.init = fd655_init,
+	.data = fd655_data,
+	.keys = tm1650_keys,
+};
+
+static const struct tm16xx_controller fd6551_controller = {
+	.max_grids = 5,
+	.max_segments = 7,
+	.max_brightness = 8,
+	.max_key_rows = 0,
+	.max_key_cols = 0,
+	.init = fd6551_init,
+	.data = fd655_data,
+};
+
+static const struct tm16xx_controller hbs658_controller = {
+	.max_grids = 5,
+	.max_segments = 8,
+	.max_brightness = 8,
+	.max_key_rows = 1,
+	.max_key_cols = 8,
+	.init = hbs658_init,
+	.data = hbs658_data,
+	.keys = hbs658_keys,
+};
+
+static const struct of_device_id tm16xx_i2c_of_match[] = {
+	{ .compatible = "titanmec,tm1650", .data = &tm1650_controller },
+	{ .compatible = "fdhisi,fd6551",   .data = &fd6551_controller },
+	{ .compatible = "fdhisi,fd655",    .data = &fd655_controller  },
+	{ .compatible = "winrise,hbs658",  .data = &hbs658_controller },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, tm16xx_i2c_of_match);
+
+static const struct i2c_device_id tm16xx_i2c_id[] = {
+	{ "tm1650", (kernel_ulong_t)&tm1650_controller },
+	{ "fd6551", (kernel_ulong_t)&fd6551_controller },
+	{ "fd655",  (kernel_ulong_t)&fd655_controller  },
+	{ "hbs658", (kernel_ulong_t)&hbs658_controller },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, tm16xx_i2c_id);
+
+static struct i2c_driver tm16xx_i2c_driver = {
+	.driver = {
+		.name = "tm16xx-i2c",
+		.of_match_table = tm16xx_i2c_of_match,
+	},
+	.probe = tm16xx_i2c_probe,
+	.remove = tm16xx_i2c_remove,
+	.shutdown = tm16xx_i2c_remove,
+	.id_table = tm16xx_i2c_id,
+};
+module_i2c_driver(tm16xx_i2c_driver);
+
+MODULE_AUTHOR("Jean-François Lessard");
+MODULE_DESCRIPTION("TM16xx-i2c LED Display Controllers");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("TM16XX");
-- 
2.43.0


