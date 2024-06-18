Return-Path: <devicetree+bounces-77046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED44F90D44B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:19:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78550B24426
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2717F19F46F;
	Tue, 18 Jun 2024 14:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l+j5v8fD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5E519E83A;
	Tue, 18 Jun 2024 14:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719228; cv=none; b=YYBmah8+k6SQzVhKBUPu4C/1dXCaTAGesGdePpRtqzRw5hbmVLQoIFNLbUERtnK3tP0RnfcyixIyLyQO/n5q/uwR2QWNcYG4goW0D94lj24SDr1RILls4uFZxRY4KIhHxfw0uXGTbBgcFBlAY3LyY/7kFeLoOf7vJ/n+yw6ZLPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719228; c=relaxed/simple;
	bh=pPwrFR5exq+IxTWESOD7VyV5pvbIzgEk0udUDtiXqZg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ViuCkfFBrYH5MUdGzvhKk4OsmhEMZmlAHxprIr/s69wcs+jd7+U/iAY1CHkEoDi+lFcMPrU6PGItHNli6I9fsRUmaj2QIGeh7NLSYol1Iax0RbOdychsBYUOD9pH+1B1CTIKHQHqztaSyQj2otN5dqoQYwVyLQEX41xuQHLvPRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l+j5v8fD; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57c714a1e24so6223782a12.2;
        Tue, 18 Jun 2024 07:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718719224; x=1719324024; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OEluC/nRoMdvS4Ro4zahM5vs8cVpDlDDLc77qRFJKWo=;
        b=l+j5v8fDhfbzU0aPjhDH2NTYWcoQltn2rQWlPblL3QJgS7BpBxTxJf3Uw/SrSh47BE
         EnHh9Ev8ZEP3uxUb2TFsGawNvjhdnnAV2WIsvtjyei5dE+kxbEzx0G1Tz+C4cdvjL/yB
         JjRLY3pCgQyA5y4O3+5y4GgPx6AAXaSHYSMlnB3jhDbpxr64M2iRbovFv8eArjwVwQfc
         9QtDr/yNdu8BJKNeIYeN7UyodU/2s1QskFpU/TC4DRXtRtd6mhdzV6byyxOQuv7JXVeW
         0HRt5XUnqpQ3KSQ4EntHzJtp6KZhDYVKQbuGgEUm3psA9+gPyzxgobakCvL8OwfefrPh
         pHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718719224; x=1719324024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OEluC/nRoMdvS4Ro4zahM5vs8cVpDlDDLc77qRFJKWo=;
        b=f112oDAsWjuNoKyiFKxEBBSOcGf2s2CHJ2Zg5ueTlgIX3PkeZyhKQOxAcFehVr291u
         T4hro3iSW9RO9GGDm1HCsHL2Zfa4fndu8w5glXlHHul7jWfmnKKi+6tydX7iCGcVpS+E
         M3L5QfdL7PRtdh35O+Ft7ZGfS3E5D4CAjcjMRn8r1Ror47wHrq0crNwjYnTAlilruTyt
         3rhxpabv0yKWu5f0n7nbr92jXD4sbAo4ohMMXRY1izUEM+8aoDeUg7OS9e9vx4ZSU2bo
         fJYoEyUapo/zhmk9JQVU5RPJO2eoPajTzr/rOlcwPvvdN4y0ZRPqQrthSd8HOWopaLw5
         GoPg==
X-Forwarded-Encrypted: i=1; AJvYcCVp3kJMSMImQDvDeKivzGXThjSO1rqT8yPBBVb0ITYe93lKIZzF8dWR35/dUCf3IVClB7YS96AlKYs9vAyRAsU2kHcYZfUVHAnh+JGxlztGss/MacrCqkRSCXW6M++wt1pGlDMCxGJeAuxjfuBzuINgS2wD9o5WRg0HUpyg5FFYiZtoklgYZYZAUg6opsi9cNygxm3UgVRrl60pOJazCUrp8+kzIZI9YEgDVMFSBwfyx1r+HoZfLCjmCOPzVZDZru8Ni4nUlFj9jvV3TSNsd5iJlsBayxEb8ll8OCiWkDydfu4lk2m8QKDeJo9/mocNK6rGYm+2xQvgp142MBAmuceXSOa52D7DYR+76/ZqVCnKG36E98YJN1J6licCxBXJfU9pLBKK5DkqeZVxR1WNJ5G4wlsI9jGk
X-Gm-Message-State: AOJu0Yz3/qJNYPSeh1Unux5yUuOz9ZFgiIPJZd5eBMh8G2dEUjWPCXLP
	CS3C5iGG9CQuBPx/sBLfpkMgsa2Llo7UddYtTusfbylzvBzUd2EE
X-Google-Smtp-Source: AGHT+IEXoTD4UVq/0bh14D5fCZNipCHOrom/4r6nnwXy173CyH9/8knLg1HbtmmM6CIGaSTERIqipw==
X-Received: by 2002:a50:9b48:0:b0:57c:7676:ea4d with SMTP id 4fb4d7f45d1cf-57cbd682be9mr7568090a12.13.1718719224127;
        Tue, 18 Jun 2024 07:00:24 -0700 (PDT)
Received: from [127.0.1.1] (mm-167-232-122-178.mgts.dynamic.pppoe.byfly.by. [178.122.232.167])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72da156sm7731278a12.22.2024.06.18.07.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 07:00:23 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Tue, 18 Jun 2024 16:59:50 +0300
Subject: [PATCH v3 16/23] leds: max77705: Add LEDs support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240618-starqltechn_integration_upstream-v3-16-e3f6662017ac@gmail.com>
References: <20240618-starqltechn_integration_upstream-v3-0-e3f6662017ac@gmail.com>
In-Reply-To: <20240618-starqltechn_integration_upstream-v3-0-e3f6662017ac@gmail.com>
To: Sebastian Reichel <sre@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Chanwoo Choi <cw00.choi@samsung.com>, phone-devel@vger.kernel.org
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
 linux-pwm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718719185; l=6791;
 i=dsankouski@gmail.com; s=20240618; h=from:subject:message-id;
 bh=pPwrFR5exq+IxTWESOD7VyV5pvbIzgEk0udUDtiXqZg=;
 b=L9i9P5Ho7DBA/hISx6SLpWJuEv3//Q9yHsSr3YHDDzpUOQotvp/jufa3+eEe2F3R7zNpjo4ID
 wvCHTWg9mzSDgKnrLjvEgBpfMTFTttsEnSsmZzX1v9P8ucbLM/kivkc
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=6pMMVVDDReSiRgPCbMOUauN5nS3ty4Sf5b7a2gi4x0M=

This adds basic support for LEDs for the max77705 PMIC.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
 MAINTAINERS                  |   1 +
 drivers/leds/Kconfig         |   6 ++
 drivers/leds/Makefile        |   1 +
 drivers/leds/leds-max77705.c | 166 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 174 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f66f08825db9..f3c245d432d9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13691,6 +13691,7 @@ F:	drivers/*/max14577*.c
 F:	drivers/*/max77686*.c
 F:	drivers/*/max77693*.c
 F:	drivers/*/max77705*.c
+F:	drivers/leds/leds-max77705.c
 F:	drivers/clk/clk-max77686.c
 F:	drivers/extcon/extcon-max14577.c
 F:	drivers/extcon/extcon-max77693.c
diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 05e6af88b88c..14d483011308 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -728,6 +728,12 @@ config LEDS_MAX77650
 	help
 	  LEDs driver for MAX77650 family of PMICs from Maxim Integrated.
 
+config LEDS_MAX77705
+	tristate "LED support for Maxim MAX77705 RGB"
+	depends on MFD_MAX77705 && LEDS_CLASS && I2C
+	help
+	  LED driver for MAX77705 MFD chip from Maxim Integrated.
+
 config LEDS_MAX8997
 	tristate "LED support for MAX8997 PMIC"
 	depends on LEDS_CLASS && MFD_MAX8997
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index effdfc6f1e95..be064e3d678e 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_LEDS_LP8860)		+= leds-lp8860.o
 obj-$(CONFIG_LEDS_LT3593)		+= leds-lt3593.o
 obj-$(CONFIG_LEDS_MAX5970)		+= leds-max5970.o
 obj-$(CONFIG_LEDS_MAX77650)		+= leds-max77650.o
+obj-$(CONFIG_LEDS_MAX77705)		+= leds-max77705.o
 obj-$(CONFIG_LEDS_MAX8997)		+= leds-max8997.o
 obj-$(CONFIG_LEDS_MC13783)		+= leds-mc13783.o
 obj-$(CONFIG_LEDS_MENF21BMC)		+= leds-menf21bmc.o
diff --git a/drivers/leds/leds-max77705.c b/drivers/leds/leds-max77705.c
new file mode 100644
index 000000000000..f91c0e41056c
--- /dev/null
+++ b/drivers/leds/leds-max77705.c
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on leds-max77650 driver:
+ *		Copyright (C) 2018 BayLibre SAS
+ *		Author: Bartosz Golaszewski <bgolaszewski@baylibre.com>
+ *
+ * LED driver for MAXIM 77705 MFD.
+ * Copyright (C) 2024 Dzmitry Sankouski <dsankouski@gmail.org>
+ */
+
+#include <linux/i2c.h>
+#include <linux/leds.h>
+#include <linux/mfd/max77705.h>
+#include <linux/mfd/max77705-private.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define MAX77705_LED_NUM_LEDS		4
+#define MAX77705_LED_EN_MASK		GENMASK(1, 0)
+#define MAX77705_LED_MAX_BRIGHTNESS	0xff
+
+#define LEDBLNK_ON(time)	((time < 100) ? 0 :			\
+				(time < 500) ? time/100-1 :		\
+				(time < 3250) ? (time-500)/250+4 : 15)
+
+#define LEDBLNK_OFF(time)	((time < 1) ? 0x00 :			\
+				(time < 500) ? 0x01 :			\
+				(time < 5000) ? time/500 :		\
+				(time < 8000) ? (time-5000)/1000+10 :	 \
+				(time < 12000) ? (time-8000)/2000+13 : 15)
+
+struct max77705_led {
+	struct led_classdev cdev;
+	struct regmap *regmap;
+	unsigned int en_shift;
+	unsigned int reg_brightness;
+	unsigned int regB;
+};
+
+static struct max77705_led *max77705_to_led(struct led_classdev *cdev)
+{
+	return container_of(cdev, struct max77705_led, cdev);
+}
+
+static int max77705_rgb_blink(struct led_classdev *cdev,
+								unsigned long *delay_on,
+								unsigned long *delay_off)
+{
+	struct max77705_led *led = max77705_to_led(cdev);
+	int value;
+
+	value = (LEDBLNK_ON(*delay_on) << 4) | LEDBLNK_OFF(*delay_off);
+	return regmap_write(led->regmap, MAX77705_RGBLED_REG_LEDBLNK, value);
+}
+
+static int max77705_led_brightness_set(struct led_classdev *cdev,
+					enum led_brightness brightness)
+{
+	struct max77705_led *led = max77705_to_led(cdev);
+	int ret;
+	unsigned long blink_default = 0;
+
+	if (brightness == LED_OFF) {
+		/* Flash OFF */
+		ret = regmap_update_bits(led->regmap,
+					MAX77705_RGBLED_REG_LEDEN,
+					MAX77705_LED_EN_MASK << led->en_shift, 0);
+		max77705_rgb_blink(cdev, &blink_default, &blink_default);
+	} else {
+		/* Set current */
+		ret = regmap_write(led->regmap,
+				   led->reg_brightness, brightness);
+		if (ret < 0)
+			return ret;
+
+		ret = regmap_update_bits(led->regmap,
+					MAX77705_RGBLED_REG_LEDEN, LED_ON << led->en_shift,
+					MAX77705_LED_EN_MASK << led->en_shift);
+	}
+
+	return ret;
+}
+
+static int max77705_led_probe(struct platform_device *pdev)
+{
+	struct fwnode_handle *child;
+	struct max77705_led *leds, *led;
+	struct device *dev;
+	struct regmap *map;
+	int rv, num_leds;
+	u32 reg;
+
+	dev = &pdev->dev;
+
+	leds = devm_kcalloc(dev, sizeof(*leds),
+				MAX77705_LED_NUM_LEDS, GFP_KERNEL);
+	if (!leds)
+		return -ENOMEM;
+
+	map = dev_get_regmap(dev->parent, NULL);
+	if (!map)
+		return -ENODEV;
+
+	num_leds = device_get_child_node_count(dev);
+	if (!num_leds || num_leds > MAX77705_LED_NUM_LEDS)
+		return -ENODEV;
+
+	device_for_each_child_node(dev, child) {
+		struct led_init_data init_data = {};
+
+		rv = fwnode_property_read_u32(child, "reg", &reg);
+		if (rv || reg >= MAX77705_LED_NUM_LEDS) {
+			rv = -EINVAL;
+			goto err_node_put;
+		}
+
+		led = &leds[reg];
+		led->regmap = map;
+		led->reg_brightness = MAX77705_RGBLED_REG_LED0BRT + reg;
+		led->en_shift = 2 * reg;
+		led->cdev.brightness_set_blocking = max77705_led_brightness_set;
+		led->cdev.blink_set = max77705_rgb_blink;
+		led->cdev.max_brightness = MAX77705_LED_MAX_BRIGHTNESS;
+
+		init_data.fwnode = child;
+		init_data.devicename = "max77705";
+		/* for backwards compatibility if `label` is not present */
+		init_data.default_label = ":";
+
+		rv = devm_led_classdev_register_ext(dev, &led->cdev,
+							&init_data);
+		if (rv)
+			goto err_node_put;
+
+		rv = max77705_led_brightness_set(&led->cdev, LED_OFF);
+		if (rv)
+			goto err_node_put;
+	}
+
+	return 0;
+err_node_put:
+	fwnode_handle_put(child);
+	return rv;
+}
+
+static const struct of_device_id max77705_led_of_match[] = {
+	{ .compatible = "maxim,max77705-led" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, max77705_led_of_match);
+
+static struct platform_driver max77705_led_driver = {
+	.driver = {
+		.name = "max77705-led",
+		.of_match_table = max77705_led_of_match,
+	},
+	.probe = max77705_led_probe,
+};
+module_platform_driver(max77705_led_driver);
+
+MODULE_DESCRIPTION("MAXIM 77705 LED driver");
+MODULE_AUTHOR("Bartosz Golaszewski <bgolaszewski@baylibre.com>");
+MODULE_AUTHOR("Dzmitry Sankouski <dsankouski@gmail.com>");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:max77705-led");

-- 
2.39.2


