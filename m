Return-Path: <devicetree+bounces-88621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FC193E990
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 23:18:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07DF61F211FD
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 21:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F0D78C7E;
	Sun, 28 Jul 2024 21:18:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200EB757FD;
	Sun, 28 Jul 2024 21:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722201505; cv=none; b=WCAWqNe46Qh21d5pp9V5Crs+WmjQe41dyUIL8LjipOjosyKgo4M9xTw6MAlfQb2r+0HEoTwGa24O0sV6D8QtrsXEziy26QRKxAkaeva/ATEOInW4WxlELIQDc2UkGELd2r0Icr48HWZ6zbnK2aG2bycEznGuxQAM+FOl1QRUab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722201505; c=relaxed/simple;
	bh=O14iOJmHGxCnkmglaxteXd567LQTrd97R1OdGu2k3o0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=R7PFqCmRaGVdMbcdBPGEFLawhz0runb4mZ1ZWyjVzuaXDnn4k/FUBZ1vhuSaxq5K/3BUVDoAbFbE0HXbhGN2mYSaOcbGcnF4cQvsbucNU4/+ribWxl+pPCdaRiKHNu0XJjfxD7axtVSfc9IyK2Qtip+y84yGHmvztEvrg78vjZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYBHF-0005yh-Lg; Sun, 28 Jul 2024 23:18:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 3/7] leds: add driver for LEDs from qnap-mcu devices
Date: Sun, 28 Jul 2024 23:17:47 +0200
Message-Id: <20240728211751.2160123-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240728211751.2160123-1-heiko@sntech.de>
References: <20240728211751.2160123-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds a driver that connects to the qnap-mcu mfd driver and provides
access to the LEDs on it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 MAINTAINERS                  |   1 +
 drivers/leds/Kconfig         |  11 ++
 drivers/leds/Makefile        |   1 +
 drivers/leds/leds-qnap-mcu.c | 247 +++++++++++++++++++++++++++++++++++
 4 files changed, 260 insertions(+)
 create mode 100644 drivers/leds/leds-qnap-mcu.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 77ee9a7d7b831..f690b55730111 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18345,6 +18345,7 @@ F:	drivers/media/tuners/qm1d1c0042*
 QNAP MCU DRIVER
 M:	Heiko Stuebner <heiko@sntech.de>
 S:	Maintained
+F:	drivers/leds/leds-qnap-mcu.c
 F:	drivers/mfd/qnap-mcu.c
 F:	include/linux/qnap-mcu.h
 
diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 05e6af88b88cd..e128a8016b84c 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -555,6 +555,17 @@ config LEDS_PCA995X
 	  LED driver chips accessed via the I2C bus. Supported
 	  devices include PCA9955BTW, PCA9952TW and PCA9955TW.
 
+config LEDS_QNAP_MCU
+	tristate "LED Support for QNAP MCU controllers"
+	depends on LEDS_CLASS
+	depends on MFD_QNAP_MCU
+	help
+	  This option enables support for LEDs available on embedded
+	  controllers used in QNAP NAS devices.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called qnap-mcu-leds.
+
 config LEDS_WM831X_STATUS
 	tristate "LED support for status LEDs on WM831x PMICs"
 	depends on LEDS_CLASS
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index effdfc6f1e951..27eb6cd827610 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -77,6 +77,7 @@ obj-$(CONFIG_LEDS_PCA995X)		+= leds-pca995x.o
 obj-$(CONFIG_LEDS_PM8058)		+= leds-pm8058.o
 obj-$(CONFIG_LEDS_POWERNV)		+= leds-powernv.o
 obj-$(CONFIG_LEDS_PWM)			+= leds-pwm.o
+obj-$(CONFIG_LEDS_QNAP_MCU)		+= leds-qnap-mcu.o
 obj-$(CONFIG_LEDS_REGULATOR)		+= leds-regulator.o
 obj-$(CONFIG_LEDS_SC27XX_BLTC)		+= leds-sc27xx-bltc.o
 obj-$(CONFIG_LEDS_SUN50I_A100)		+= leds-sun50i-a100.o
diff --git a/drivers/leds/leds-qnap-mcu.c b/drivers/leds/leds-qnap-mcu.c
new file mode 100644
index 0000000000000..e3244923759d2
--- /dev/null
+++ b/drivers/leds/leds-qnap-mcu.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * Driver for LEDs found on QNAP MCU devices
+ *
+ * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
+ */
+
+#include <linux/leds.h>
+#include <linux/mfd/qnap-mcu.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <uapi/linux/uleds.h>
+
+enum qnap_mcu_err_led_mode {
+	QNAP_MCU_ERR_LED_ON = 0,
+	QNAP_MCU_ERR_LED_OFF = 1,
+	QNAP_MCU_ERR_LED_BLINK_FAST = 2,
+	QNAP_MCU_ERR_LED_BLINK_SLOW = 3,
+};
+
+struct qnap_mcu_err_led {
+	struct qnap_mcu *mcu;
+	struct led_classdev cdev;
+	u8 num;
+	u8 mode;
+};
+
+static inline struct qnap_mcu_err_led *
+		cdev_to_qnap_mcu_err_led(struct led_classdev *led_cdev)
+{
+	return container_of(led_cdev, struct qnap_mcu_err_led, cdev);
+}
+
+static int qnap_mcu_err_led_set(struct led_classdev *led_cdev,
+				enum led_brightness value)
+{
+	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x52,
+		[2] = 0x30 + err_led->num,
+		[3] = 0x30
+	};
+
+	/*
+	 * If the led is off, turn it on. Otherwise don't disturb
+	 * a possible set blink-mode.
+	 */
+	if (value == 0)
+		err_led->mode = QNAP_MCU_ERR_LED_OFF;
+	else if (err_led->mode == QNAP_MCU_ERR_LED_OFF)
+		err_led->mode = QNAP_MCU_ERR_LED_ON;
+
+	cmd[3] = 0x30 + err_led->mode;
+
+	return qnap_mcu_exec_with_ack(err_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_err_led_blink_set(struct led_classdev *led_cdev,
+				      unsigned long *delay_on,
+				      unsigned long *delay_off)
+{
+	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x52,
+		[2] = 0x30 + err_led->num,
+		[3] = 0x30
+	};
+
+	/* LED is off, nothing to do */
+	if (err_led->mode == QNAP_MCU_ERR_LED_OFF)
+		return 0;
+
+	if (*delay_on < 500) {
+		*delay_on = 100;
+		*delay_off = 100;
+		err_led->mode = QNAP_MCU_ERR_LED_BLINK_FAST;
+	} else {
+		*delay_on = 500;
+		*delay_off = 500;
+		err_led->mode = QNAP_MCU_ERR_LED_BLINK_SLOW;
+	}
+
+	cmd[3] = 0x30 + err_led->mode;
+
+	return qnap_mcu_exec_with_ack(err_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_register_err_led(struct device *dev, struct qnap_mcu *mcu, int num)
+{
+	struct qnap_mcu_err_led *err_led;
+	char tmp_buf[LED_MAX_NAME_SIZE];
+	int ret;
+
+	err_led = devm_kzalloc(dev, sizeof(*err_led), GFP_KERNEL);
+	if (!err_led)
+		return -ENOMEM;
+
+	err_led->mcu = mcu;
+	err_led->num = num;
+	err_led->mode = QNAP_MCU_ERR_LED_OFF;
+
+	snprintf(tmp_buf, LED_MAX_NAME_SIZE, "hdd%d:red:status", num + 1);
+	err_led->cdev.name = tmp_buf;
+
+	err_led->cdev.brightness_set_blocking = qnap_mcu_err_led_set;
+	err_led->cdev.blink_set = qnap_mcu_err_led_blink_set;
+	err_led->cdev.brightness = 0;
+	err_led->cdev.max_brightness = 1;
+
+	ret = devm_led_classdev_register(dev, &err_led->cdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register hdd led %d", num);
+
+	return qnap_mcu_err_led_set(&err_led->cdev, 0);
+}
+
+enum qnap_mcu_usb_led_mode {
+	QNAP_MCU_USB_LED_ON = 1,
+	QNAP_MCU_USB_LED_OFF = 3,
+	QNAP_MCU_USB_LED_BLINK = 2,
+};
+
+struct qnap_mcu_usb_led {
+	struct qnap_mcu *mcu;
+	struct led_classdev cdev;
+	u8 mode;
+};
+
+static inline struct qnap_mcu_usb_led *
+		cdev_to_qnap_mcu_usb_led(struct led_classdev *led_cdev)
+{
+	return container_of(led_cdev, struct qnap_mcu_usb_led, cdev);
+}
+
+static int qnap_mcu_usb_led_set(struct led_classdev *led_cdev,
+				enum led_brightness value)
+{
+	struct qnap_mcu_usb_led *usb_led = cdev_to_qnap_mcu_usb_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x43,
+		[2] = 0
+	};
+
+	/*
+	 * If the led is off, turn it on. Otherwise don't disturb
+	 * a possible set blink-mode.
+	 */
+	if (value == 0)
+		usb_led->mode = QNAP_MCU_USB_LED_OFF;
+	else if (usb_led->mode == QNAP_MCU_USB_LED_OFF)
+		usb_led->mode = QNAP_MCU_USB_LED_ON;
+
+	/* byte 3 is shared between the usb led target and setting the mode */
+	cmd[2] = 0x44 | usb_led->mode;
+
+	return qnap_mcu_exec_with_ack(usb_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_usb_led_blink_set(struct led_classdev *led_cdev,
+				      unsigned long *delay_on,
+				      unsigned long *delay_off)
+{
+	struct qnap_mcu_usb_led *usb_led = cdev_to_qnap_mcu_usb_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x43,
+		[2] = 0
+	};
+
+	/* LED is off, nothing to do */
+	if (usb_led->mode == QNAP_MCU_USB_LED_OFF)
+		return 0;
+
+	*delay_on = 250;
+	*delay_off = 250;
+	usb_led->mode = QNAP_MCU_USB_LED_BLINK;
+
+	/* byte 3 is shared between the usb led target and setting the mode */
+	cmd[2] = 0x44 | usb_led->mode;
+
+	return qnap_mcu_exec_with_ack(usb_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_register_usb_led(struct device *dev, struct qnap_mcu *mcu)
+{
+	struct qnap_mcu_usb_led *usb_led;
+	int ret;
+
+	usb_led = devm_kzalloc(dev, sizeof(*usb_led), GFP_KERNEL);
+	if (!usb_led)
+		return -ENOMEM;
+
+	usb_led->mcu = mcu;
+	usb_led->mode = QNAP_MCU_USB_LED_OFF;
+	usb_led->cdev.name = "usb:blue:disk";
+	usb_led->cdev.brightness_set_blocking = qnap_mcu_usb_led_set;
+	usb_led->cdev.blink_set = qnap_mcu_usb_led_blink_set;
+	usb_led->cdev.brightness = 0;
+	usb_led->cdev.max_brightness = 1;
+
+	ret = devm_led_classdev_register(dev, &usb_led->cdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register usb led");
+
+	return qnap_mcu_usb_led_set(&usb_led->cdev, 0);
+}
+
+static int qnap_mcu_leds_probe(struct platform_device *pdev)
+{
+	struct qnap_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
+	const struct qnap_mcu_variant *variant = qnap_mcu_get_variant_data(mcu);
+	int ret, i;
+
+	for (i = 0; i < variant->num_drives; i++) {
+		ret = qnap_mcu_register_err_led(&pdev->dev, mcu, i);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+					"failed to register error led %d\n", i);
+	}
+
+	if (variant->usb_led) {
+		ret = qnap_mcu_register_usb_led(&pdev->dev, mcu);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+					"failed to register usb led %d\n", i);
+	}
+
+	return 0;
+}
+
+static struct platform_driver qnap_mcu_leds_driver = {
+	.probe = qnap_mcu_leds_probe,
+	.driver = {
+		.name = "qnap-mcu-leds",
+	},
+};
+module_platform_driver(qnap_mcu_leds_driver);
+
+MODULE_ALIAS("platform:qnap-mcu-leds");
+MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
+MODULE_DESCRIPTION("QNAP MCU LEDs driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


