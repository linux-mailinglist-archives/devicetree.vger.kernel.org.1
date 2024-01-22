Return-Path: <devicetree+bounces-33922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8494837339
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 20:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 211D21F2B59E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 19:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1E840BE5;
	Mon, 22 Jan 2024 19:51:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.skole.hr (mx1.hosting.skole.hr [161.53.165.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC4D3FB2A;
	Mon, 22 Jan 2024 19:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=161.53.165.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705953105; cv=none; b=Ho4kJ3F0tgZABNyvyyY9tb1PDGRWo8ewcFMjp5CzaOLH8wbud+HwWLB1MqHG18tW3Hk7xWpO7gJ0w0x24FJMzZjcXApW/Mm8gXW3XQDrhMSrlmcpoWxR2nF6LWiRZfEXaS6vqmTjqGZtw7lLoQVnGHhvjJ/E/KmprSc9eT9AO/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705953105; c=relaxed/simple;
	bh=/deHGhZM4v1ejh147wzc38UxFpPL5Gbj/z5Z/Hg66YE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VBrEKsTt7uXx0SiU0WOxU3ypn0sh+sNng2kqzq2/PQOhL6buFQlqL2j6Rz1S2p2+LfVLMnvAjq2YKpWYSUTcmbcQ+CYmSvaLK+7/6EvJGVmHOUYTN62pcPKrH4xyE9wYnIshrzFrlgOSTqDeuay16zVfBqlgpB7vgPT1LO6bOP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=skole.hr; spf=pass smtp.mailfrom=skole.hr; arc=none smtp.client-ip=161.53.165.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=skole.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=skole.hr
Received: from mx1.hosting.skole.hr (localhost.localdomain [127.0.0.1])
	by mx.skole.hr (mx.skole.hr) with ESMTP id 614118596B;
	Mon, 22 Jan 2024 20:51:40 +0100 (CET)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Date: Mon, 22 Jan 2024 20:50:57 +0100
Subject: [PATCH v4 1/3] leds: ktd2692: move ExpressWire code to library
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240122-ktd2801-v4-1-33c986a3eb68@skole.hr>
References: <20240122-ktd2801-v4-0-33c986a3eb68@skole.hr>
In-Reply-To: <20240122-ktd2801-v4-0-33c986a3eb68@skole.hr>
To: Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: Karel Balej <balejk@matfyz.cz>, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=14250;
 i=duje.mihanovic@skole.hr; h=from:subject:message-id;
 bh=/deHGhZM4v1ejh147wzc38UxFpPL5Gbj/z5Z/Hg66YE=;
 b=owEBbQKS/ZANAwAIAZoRnrBCLZbhAcsmYgBlrsckZ7Y4YLfxYq80odpepNoXCa3vAAfG6/HLt
 xv9PQk/nZaJAjMEAAEIAB0WIQRT351NnD/hEPs2LXiaEZ6wQi2W4QUCZa7HJAAKCRCaEZ6wQi2W
 4RmwD/9TJhxnCcpqK0uqy+ddEz/0AIHDh07v1CrECICgA1+2ILlN3WSugKmPp/OQVu6SI3QdrDC
 nklA7ax+fdBzmftio4rtDUi5nmSuyJUzAQ278QG+l34dn57kmdXGjUY2585GeJNNjXOxt/K+Gun
 /apaawe/eBpkxLBbihEchADWBH9oFiLI7VhjVDGqbcxcFDihbs5widecGURMYGB7VbmoDwIHbgy
 LkKSL+GKcJFhpuDSSjrlbN5Mv4pErnk0MqG0na4pVthckCOhhJBUCun91jJKUa+sCiA4unUQKbh
 7gmzt/ZPhYC6RLtgg/HS9XLjTyLSOObCMpBr43DGS7PEg0cSy9mJ/N1GUTbobL8hDcw6EMsrCh7
 Kv8QnIap7nF98JZr9vB0KMtA4Vf94/Iajcv6nsrBW3FIDoQ6miXYLvcFU4uP6GF/YASUsNWN6Hu
 cmcoXz7mec/AIR0p2C94JuL6fZ4ovW4RWbMYCExZK83U1ZJzpnRzcZDakXwilHsYm7MFUh5LB9w
 OJLpU/8m+qXJEcj+Ug648b5adyC4pE1cRrzNVf4RBsFzmst7X0xT9ncPb/Y552IcNeFZ8krBI2i
 3AK4zvSUVlTKxs8pH8bD1RRn+tPdRlxY2qm13mUkSF2JsBm9IiFd+8SOzSSm8cU4x9i2FLJp95f
 luyYnMqrcwbZ4zw==
X-Developer-Key: i=duje.mihanovic@skole.hr; a=openpgp;
 fpr=53DF9D4D9C3FE110FB362D789A119EB0422D96E1

The ExpressWire protocol is shared between at least KTD2692 and KTD2801
with slight differences such as timings and the former not having a
defined set of pulses for enabling the protocol (possibly because it
does not support PWM unlike KTD2801). Despite these differences the
ExpressWire handling code can be shared between the two, so move it into
a library in preparation for adding KTD2801 support.

Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
---
 MAINTAINERS                       |   7 +++
 drivers/leds/Kconfig              |   4 ++
 drivers/leds/Makefile             |   3 +
 drivers/leds/flash/Kconfig        |   2 +-
 drivers/leds/flash/leds-ktd2692.c | 116 +++++++++-----------------------------
 drivers/leds/leds-expresswire.c   |  68 ++++++++++++++++++++++
 include/linux/leds-expresswire.h  |  36 ++++++++++++
 7 files changed, 146 insertions(+), 90 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a7c4cf8201e0..87b12d2448a0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7902,6 +7902,13 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/linkinjeon/exfat.git
 F:	fs/exfat/
 
+EXPRESSWIRE PROTOCOL LIBRARY
+M:	Duje Mihanović <duje.mihanovic@skole.hr>
+L:	linux-leds@vger.kernel.org
+S:	Maintained
+F:	drivers/leds/leds-expresswire.c
+F:	include/linux/leds-expresswire.h
+
 EXT2 FILE SYSTEM
 M:	Jan Kara <jack@suse.com>
 L:	linux-ext4@vger.kernel.org
diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 6292fddcc55c..15e1c3c238ab 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -181,6 +181,10 @@ config LEDS_EL15203000
 	  To compile this driver as a module, choose M here: the module
 	  will be called leds-el15203000.
 
+config LEDS_EXPRESSWIRE
+	bool
+	depends on GPIOLIB
+
 config LEDS_TURRIS_OMNIA
 	tristate "LED support for CZ.NIC's Turris Omnia"
 	depends on LEDS_CLASS_MULTICOLOR
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index d7348e8bc019..a63a07d01c6f 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -89,6 +89,9 @@ obj-$(CONFIG_LEDS_WM831X_STATUS)	+= leds-wm831x-status.o
 obj-$(CONFIG_LEDS_WM8350)		+= leds-wm8350.o
 obj-$(CONFIG_LEDS_WRAP)			+= leds-wrap.o
 
+# Kinetic ExpressWire Protocol
+obj-$(CONFIG_LEDS_EXPRESSWIRE)		+= leds-expresswire.o
+
 # LED SPI Drivers
 obj-$(CONFIG_LEDS_CR0014114)		+= leds-cr0014114.o
 obj-$(CONFIG_LEDS_DAC124S085)		+= leds-dac124s085.o
diff --git a/drivers/leds/flash/Kconfig b/drivers/leds/flash/Kconfig
index 4e08dbc05709..a0fb755b58dc 100644
--- a/drivers/leds/flash/Kconfig
+++ b/drivers/leds/flash/Kconfig
@@ -23,7 +23,7 @@ config LEDS_AS3645A
 config LEDS_KTD2692
 	tristate "LED support for Kinetic KTD2692 flash LED controller"
 	depends on OF
-	depends on GPIOLIB || COMPILE_TEST
+	select LEDS_EXPRESSWIRE
 	help
 	  This option enables support for Kinetic KTD2692 LED flash connected
 	  through ExpressWire interface.
diff --git a/drivers/leds/flash/leds-ktd2692.c b/drivers/leds/flash/leds-ktd2692.c
index 598eee5daa52..7bb0aa2753e3 100644
--- a/drivers/leds/flash/leds-ktd2692.c
+++ b/drivers/leds/flash/leds-ktd2692.c
@@ -6,9 +6,9 @@
  * Ingi Kim <ingi2.kim@samsung.com>
  */
 
-#include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/gpio/consumer.h>
+#include <linux/leds-expresswire.h>
 #include <linux/led-class-flash.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
@@ -37,22 +37,9 @@
 #define KTD2692_REG_FLASH_CURRENT_BASE		0x80
 #define KTD2692_REG_MODE_BASE			0xA0
 
-/* Set bit coding time for expresswire interface */
-#define KTD2692_TIME_RESET_US			700
-#define KTD2692_TIME_DATA_START_TIME_US		10
-#define KTD2692_TIME_HIGH_END_OF_DATA_US	350
-#define KTD2692_TIME_LOW_END_OF_DATA_US		10
-#define KTD2692_TIME_SHORT_BITSET_US		4
-#define KTD2692_TIME_LONG_BITSET_US		12
-
 /* KTD2692 default length of name */
 #define KTD2692_NAME_LENGTH			20
 
-enum ktd2692_bitset {
-	KTD2692_LOW = 0,
-	KTD2692_HIGH,
-};
-
 /* Movie / Flash Mode Control */
 enum ktd2692_led_mode {
 	KTD2692_MODE_DISABLE = 0,	/* default */
@@ -71,7 +58,19 @@ struct ktd2692_led_config_data {
 	enum led_brightness max_brightness;
 };
 
+const struct expresswire_timing ktd2692_timing = {
+	.poweroff_us = 700,
+	.data_start_us = 10,
+	.end_of_data_low_us = 10,
+	.end_of_data_high_us = 350,
+	.short_bitset_us = 4,
+	.long_bitset_us = 12
+};
+
 struct ktd2692_context {
+	/* Common ExpressWire properties (ctrl GPIO and timing) */
+	struct expresswire_common_props props;
+
 	/* Related LED Flash class device */
 	struct led_classdev_flash fled_cdev;
 
@@ -80,7 +79,6 @@ struct ktd2692_context {
 	struct regulator *regulator;
 
 	struct gpio_desc *aux_gpio;
-	struct gpio_desc *ctrl_gpio;
 
 	enum ktd2692_led_mode mode;
 	enum led_brightness torch_brightness;
@@ -92,67 +90,6 @@ static struct ktd2692_context *fled_cdev_to_led(
 	return container_of(fled_cdev, struct ktd2692_context, fled_cdev);
 }
 
-static void ktd2692_expresswire_start(struct ktd2692_context *led)
-{
-	gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
-	udelay(KTD2692_TIME_DATA_START_TIME_US);
-}
-
-static void ktd2692_expresswire_reset(struct ktd2692_context *led)
-{
-	gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
-	udelay(KTD2692_TIME_RESET_US);
-}
-
-static void ktd2692_expresswire_end(struct ktd2692_context *led)
-{
-	gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
-	udelay(KTD2692_TIME_LOW_END_OF_DATA_US);
-	gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
-	udelay(KTD2692_TIME_HIGH_END_OF_DATA_US);
-}
-
-static void ktd2692_expresswire_set_bit(struct ktd2692_context *led, bool bit)
-{
-	/*
-	 * The Low Bit(0) and High Bit(1) is based on a time detection
-	 * algorithm between time low and time high
-	 * Time_(L_LB) : Low time of the Low Bit(0)
-	 * Time_(H_LB) : High time of the LOW Bit(0)
-	 * Time_(L_HB) : Low time of the High Bit(1)
-	 * Time_(H_HB) : High time of the High Bit(1)
-	 *
-	 * It can be simplified to:
-	 * Low Bit(0) : 2 * Time_(H_LB) < Time_(L_LB)
-	 * High Bit(1) : 2 * Time_(L_HB) < Time_(H_HB)
-	 * HIGH  ___           ____    _..     _________    ___
-	 *          |_________|    |_..  |____|         |__|
-	 * LOW        <L_LB>  <H_LB>     <L_HB>  <H_HB>
-	 *          [  Low Bit (0) ]     [  High Bit(1) ]
-	 */
-	if (bit) {
-		gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
-		udelay(KTD2692_TIME_SHORT_BITSET_US);
-		gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
-		udelay(KTD2692_TIME_LONG_BITSET_US);
-	} else {
-		gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
-		udelay(KTD2692_TIME_LONG_BITSET_US);
-		gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
-		udelay(KTD2692_TIME_SHORT_BITSET_US);
-	}
-}
-
-static void ktd2692_expresswire_write(struct ktd2692_context *led, u8 value)
-{
-	int i;
-
-	ktd2692_expresswire_start(led);
-	for (i = 7; i >= 0; i--)
-		ktd2692_expresswire_set_bit(led, value & BIT(i));
-	ktd2692_expresswire_end(led);
-}
-
 static int ktd2692_led_brightness_set(struct led_classdev *led_cdev,
 				       enum led_brightness brightness)
 {
@@ -163,14 +100,14 @@ static int ktd2692_led_brightness_set(struct led_classdev *led_cdev,
 
 	if (brightness == LED_OFF) {
 		led->mode = KTD2692_MODE_DISABLE;
-		gpiod_direction_output(led->aux_gpio, KTD2692_LOW);
+		gpiod_direction_output(led->aux_gpio, 0);
 	} else {
-		ktd2692_expresswire_write(led, brightness |
+		expresswire_write_u8(&led->props, brightness |
 					KTD2692_REG_MOVIE_CURRENT_BASE);
 		led->mode = KTD2692_MODE_MOVIE;
 	}
 
-	ktd2692_expresswire_write(led, led->mode | KTD2692_REG_MODE_BASE);
+	expresswire_write_u8(&led->props, led->mode | KTD2692_REG_MODE_BASE);
 	mutex_unlock(&led->lock);
 
 	return 0;
@@ -187,17 +124,17 @@ static int ktd2692_led_flash_strobe_set(struct led_classdev_flash *fled_cdev,
 
 	if (state) {
 		flash_tm_reg = GET_TIMEOUT_OFFSET(timeout->val, timeout->step);
-		ktd2692_expresswire_write(led, flash_tm_reg
+		expresswire_write_u8(&led->props, flash_tm_reg
 				| KTD2692_REG_FLASH_TIMEOUT_BASE);
 
 		led->mode = KTD2692_MODE_FLASH;
-		gpiod_direction_output(led->aux_gpio, KTD2692_HIGH);
+		gpiod_direction_output(led->aux_gpio, 1);
 	} else {
 		led->mode = KTD2692_MODE_DISABLE;
-		gpiod_direction_output(led->aux_gpio, KTD2692_LOW);
+		gpiod_direction_output(led->aux_gpio, 0);
 	}
 
-	ktd2692_expresswire_write(led, led->mode | KTD2692_REG_MODE_BASE);
+	expresswire_write_u8(&led->props, led->mode | KTD2692_REG_MODE_BASE);
 
 	fled_cdev->led_cdev.brightness = LED_OFF;
 	led->mode = KTD2692_MODE_DISABLE;
@@ -247,12 +184,12 @@ static void ktd2692_init_flash_timeout(struct led_classdev_flash *fled_cdev,
 static void ktd2692_setup(struct ktd2692_context *led)
 {
 	led->mode = KTD2692_MODE_DISABLE;
-	ktd2692_expresswire_reset(led);
-	gpiod_direction_output(led->aux_gpio, KTD2692_LOW);
+	expresswire_power_off(&led->props);
+	gpiod_direction_output(led->aux_gpio, 0);
 
-	ktd2692_expresswire_write(led, (KTD2692_MM_MIN_CURR_THRESHOLD_SCALE - 1)
+	expresswire_write_u8(&led->props, (KTD2692_MM_MIN_CURR_THRESHOLD_SCALE - 1)
 				 | KTD2692_REG_MM_MIN_CURR_THRESHOLD_BASE);
-	ktd2692_expresswire_write(led, KTD2692_FLASH_MODE_CURR_PERCENT(45)
+	expresswire_write_u8(&led->props, KTD2692_FLASH_MODE_CURR_PERCENT(45)
 				 | KTD2692_REG_FLASH_CURRENT_BASE);
 }
 
@@ -277,8 +214,8 @@ static int ktd2692_parse_dt(struct ktd2692_context *led, struct device *dev,
 	if (!np)
 		return -ENXIO;
 
-	led->ctrl_gpio = devm_gpiod_get(dev, "ctrl", GPIOD_ASIS);
-	ret = PTR_ERR_OR_ZERO(led->ctrl_gpio);
+	led->props.ctrl_gpio = devm_gpiod_get(dev, "ctrl", GPIOD_ASIS);
+	ret = PTR_ERR_OR_ZERO(led->props.ctrl_gpio);
 	if (ret)
 		return dev_err_probe(dev, ret, "cannot get ctrl-gpios\n");
 
@@ -412,6 +349,7 @@ static struct platform_driver ktd2692_driver = {
 
 module_platform_driver(ktd2692_driver);
 
+MODULE_IMPORT_NS(EXPRESSWIRE);
 MODULE_AUTHOR("Ingi Kim <ingi2.kim@samsung.com>");
 MODULE_DESCRIPTION("Kinetic KTD2692 LED driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/leds/leds-expresswire.c b/drivers/leds/leds-expresswire.c
new file mode 100644
index 000000000000..89e147b0e019
--- /dev/null
+++ b/drivers/leds/leds-expresswire.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Shared library for Kinetic's ExpressWire protocol.
+ * This protocol works by pulsing the ExpressWire IC's control GPIO.
+ * ktd2692 and ktd2801 are known to use this protocol.
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/leds-expresswire.h>
+
+void expresswire_power_off(struct expresswire_common_props *props)
+{
+	gpiod_set_value_cansleep(props->ctrl_gpio, 0);
+	usleep_range(props->timing.poweroff_us, props->timing.poweroff_us * 2);
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_power_off, EXPRESSWIRE);
+
+void expresswire_enable(struct expresswire_common_props *props)
+{
+	gpiod_set_value(props->ctrl_gpio, 1);
+	udelay(props->timing.detect_delay_us);
+	gpiod_set_value(props->ctrl_gpio, 0);
+	udelay(props->timing.detect_us);
+	gpiod_set_value(props->ctrl_gpio, 1);
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_enable, EXPRESSWIRE);
+
+void expresswire_start(struct expresswire_common_props *props)
+{
+	gpiod_set_value(props->ctrl_gpio, 1);
+	udelay(props->timing.data_start_us);
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_start, EXPRESSWIRE);
+
+void expresswire_end(struct expresswire_common_props *props)
+{
+	gpiod_set_value(props->ctrl_gpio, 0);
+	udelay(props->timing.end_of_data_low_us);
+	gpiod_set_value(props->ctrl_gpio, 1);
+	udelay(props->timing.end_of_data_high_us);
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_end, EXPRESSWIRE);
+
+void expresswire_set_bit(struct expresswire_common_props *props, bool bit)
+{
+	if (bit) {
+		gpiod_set_value(props->ctrl_gpio, 0);
+		udelay(props->timing.short_bitset_us);
+		gpiod_set_value(props->ctrl_gpio, 1);
+		udelay(props->timing.long_bitset_us);
+	} else {
+		gpiod_set_value(props->ctrl_gpio, 0);
+		udelay(props->timing.long_bitset_us);
+		gpiod_set_value(props->ctrl_gpio, 1);
+		udelay(props->timing.short_bitset_us);
+	}
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_set_bit, EXPRESSWIRE);
+
+void expresswire_write_u8(struct expresswire_common_props *props, u8 val)
+{
+	expresswire_start(props);
+	for (int i = 7; i >= 0; i--)
+		expresswire_set_bit(props, val & BIT(i));
+	expresswire_end(props);
+}
+EXPORT_SYMBOL_NS_GPL(expresswire_write_u8, EXPRESSWIRE);
diff --git a/include/linux/leds-expresswire.h b/include/linux/leds-expresswire.h
new file mode 100644
index 000000000000..3c61902ccac8
--- /dev/null
+++ b/include/linux/leds-expresswire.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Shared library for Kinetic's ExpressWire protocol.
+ * This protocol works by pulsing the ExpressWire IC's control GPIO.
+ * ktd2692 and ktd2801 are known to use this protocol.
+ */
+
+#ifndef _LEDS_EXPRESSWIRE_H
+#define _LEDS_EXPRESSWIRE_H
+
+#include <linux/gpio/consumer.h>
+
+struct expresswire_timing {
+	unsigned long poweroff_us;
+	unsigned long detect_delay_us;
+	unsigned long detect_us;
+	unsigned long data_start_us;
+	unsigned long end_of_data_low_us;
+	unsigned long end_of_data_high_us;
+	unsigned long short_bitset_us;
+	unsigned long long_bitset_us;
+};
+
+struct expresswire_common_props {
+	struct gpio_desc *ctrl_gpio;
+	struct expresswire_timing timing;
+};
+
+void expresswire_power_off(struct expresswire_common_props *props);
+void expresswire_enable(struct expresswire_common_props *props);
+void expresswire_start(struct expresswire_common_props *props);
+void expresswire_end(struct expresswire_common_props *props);
+void expresswire_set_bit(struct expresswire_common_props *props, bool bit);
+void expresswire_write_u8(struct expresswire_common_props *props, u8 val);
+
+#endif /* _LEDS_EXPRESSWIRE_H */

-- 
2.43.0



