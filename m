Return-Path: <devicetree+bounces-119137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B64939BD1CF
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75817281E76
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 16:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F75117C7BE;
	Tue,  5 Nov 2024 16:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="QoJyOyV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE03C1684AC
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 16:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730823062; cv=none; b=Da7r50zOZybvCHMQJ+oGwaX+BK1WStVm0sdk+Jc4gQT9BaGjinYr1Cty1EQK6yQhubXMdSawAcpirmCOmgK1tx/qESnBqT4E15r5LjbbN3sqokl9IZgFmuWeArX09qZO6+MUWeUZ4MUfD9w7m06yzN0YBZe7mJvNg9x9ORZ37YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730823062; c=relaxed/simple;
	bh=jRwCYD6I+LXxliE9QSqQPxv9oQSaV1QcYWFcWedy+OM=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Na+ttY7wEgkdQeXyVOu++Q+JK5xsfuML2sro7bB4NwBAJwSxVwbQjV4gFHz22KpPa9vejCKh4PfiOh3Dwu1wVK9n5NOakcSZ0PlPzsDSZLRrtoUiZ66pdybaA6fpaCRNR4+ngTGzVbEowUu4fEKsWwFlbHO27swSWpzIV5eM1po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=QoJyOyV/; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f58c68c5so10251520e87.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 08:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1730823058; x=1731427858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FyQWsFLgu84Zg0FlOAGhapW+7L9D+QhFgFMNEc4Pqjo=;
        b=QoJyOyV/+nGTlM3WymsrAHQsxFXawzUGhPnq7YIakJbWEAI+6Znotionl+h0qS4Gl1
         EgjoK99x7QTxhr07yPowO9jHajhc+XFmwHj9oy3u1ofquDiFDB3wz9ONt6+RyUJqJItI
         K9SQBoBEcy7MDlmcvg73l8SGo90+1ubcONom21/joLLhkOzfHIzrVoZ1pu6R03YGm2pb
         Cc67AUe2WbIe6NQjZ+RL5hQ3PS5OgQuJVU+T3erHLuGSRUITw/jZHyPe3WWQMzcBpYyd
         sNO+nw3vi+XW49YhcXCDiWIph5/cP3smVmCGTrm2lMIBE+Fs8d4hi251B+MRjATH74hT
         JqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730823058; x=1731427858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FyQWsFLgu84Zg0FlOAGhapW+7L9D+QhFgFMNEc4Pqjo=;
        b=Syrd3MQ10EJ8Ly1lJoYUH2hDG6vZjtiy/urU9Wzde38lKgAur8BjcicLMNHHbZFPSZ
         xMYSQCbQVohVXdfGVaLUMvaQZEjdbS0PIvPc8tIyObrjtsKFmxT4wUQuH9wbML9PV8ny
         1aqI58JitkRD7pQfmEYDCjdqgEfSs52Mlb7s+R6G1Wuy2xZ9/H94DU7qFcA3opiTcdZf
         Dl4EytY47BKlX4I4p6PfOtC7z/kGgfKviVuSdvCKCMHl3pJkZQ9/Rrrgr6hNj3V8AvSR
         OghrLO72rV/FU8pD70jJ4HgnaL1VuSzIimLckIe7sXHRp2+hkpWRXvuK4eChHxJzmSq/
         xgQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyJNlbsm9ffee9dzp4Eu5zxbnlt+w1is750Hp8vpoG02zTO7JJr+tCHtNZ3mJMV6PV57tv1H9olyYj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+PVgBPrEssfiqOCASW+6e88FZxCjsX1VHEZQ3KmIz/pVd4lAj
	x++5DBQg8w32dYtkNxzvl/2g4xczsy24GaI2N9AQFCm0UOeHvZu/fFUfX7DS2j0lZjcP8e4KHgF
	0pjThSDowzQ9X3i7UKFXOVuBtRtBZvmx7dxXkL39086/MT69gVL5T2LdZmHv7u49f+ktr8R7J+R
	BBuCHWEY6gLc3XLisRva67AUr7
X-Google-Smtp-Source: AGHT+IHIPQavs95fNZitaFE7SYxytahMk1/sPBtPMi0AhLBEXru7S168Re2c40Wn6uNCPfezDF53JA==
X-Received: by 2002:a05:6512:acf:b0:533:483f:9562 with SMTP id 2adb3069b0e04-53d65e0b459mr12671803e87.42.1730823057946;
        Tue, 05 Nov 2024 08:10:57 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb17f7928sm151184666b.138.2024.11.05.08.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 08:10:57 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 3/3] [PATCH v5] leds: Add LED1202 I2C driver
Date: Tue,  5 Nov 2024 16:10:38 +0000
Message-Id: <20241105161041.4813-3-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241105161041.4813-1-vicentiu.galanopulo@remote-tech.co.uk>
References: <20241105161041.4813-1-vicentiu.galanopulo@remote-tech.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The output current can be adjusted separately for each channel by 8-bit
analog (current sink input) and 12-bit digital (PWM) dimming control. The
LED1202 implements 12 low-side current generators with independent dimming
control. Internal volatile memory allows the user to store up to 8 different
patterns, each pattern is a particular output configuration in terms of PWM
duty-cycle (on 4096 steps). Analog dimming (on 256 steps) is per channel but
common to all patterns. Each device tree LED node will have a corresponding
entry in /sys/class/leds with the label name. The brightness property
corresponds to the per channel analog dimming, while the patterns[1-8] to the
PWM dimming control.

Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>

---
Changes in v5:
  - remove unused macros
  - switch to using devm_led_classdev_register_ext (struct st1202_led update)
  - add prescalar_to_milliseconds (convert [22..5660]ms to [0..255] reg value)
  - remove register range check in dt_init (range protected by yaml)
  - address all review comments in v4
Changes in v4:
  - Remove attributes/extended attributes implementation
  - Use /sys/class/leds/<led>/hw_pattern (Pavel suggestion)
  - Implement review findings of Christophe JAILLET
Changes in v3:
  - Rename all ll1202 to st1202, including driver file name
  - Convert all magic numbers to defines
  - Refactor the show/store callbacks as per Lee's and Thomas's review
  - Remove ll1202_get_channel and use dev_ext_attributes instead
  - Log all error values for all the functions
  - Use sysfs_emit for show callbacks
Changes in v2:
  - Fix build error for device_attribute modes
---
 drivers/leds/Kconfig       |  11 +
 drivers/leds/Makefile      |   1 +
 drivers/leds/leds-st1202.c | 510 +++++++++++++++++++++++++++++++++++++
 3 files changed, 522 insertions(+)
 create mode 100644 drivers/leds/leds-st1202.c

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index b784bb74a837..c4fdacc00066 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -931,6 +931,17 @@ config LEDS_LM36274
 	  Say Y to enable the LM36274 LED driver for TI LMU devices.
 	  This supports the LED device LM36274.
 
+config LEDS_ST1202
+	tristate "LED Support for STMicroelectronics LED1202 I2C chips"
+	depends on LEDS_CLASS
+	depends on I2C
+	depends on OF
+	select LEDS_TRIGGERS
+	help
+	  Say Y to enable support for LEDs connected to LED1202
+	  LED driver chips accessed via the I2C bus.
+	  Supported devices include LED1202.
+
 config LEDS_TPS6105X
 	tristate "LED support for TI TPS6105X"
 	depends on LEDS_CLASS
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index 18afbb5a23ee..e8b39ef760cc 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -81,6 +81,7 @@ obj-$(CONFIG_LEDS_POWERNV)		+= leds-powernv.o
 obj-$(CONFIG_LEDS_PWM)			+= leds-pwm.o
 obj-$(CONFIG_LEDS_REGULATOR)		+= leds-regulator.o
 obj-$(CONFIG_LEDS_SC27XX_BLTC)		+= leds-sc27xx-bltc.o
+obj-$(CONFIG_LEDS_ST1202)		+= leds-st1202.o
 obj-$(CONFIG_LEDS_SUN50I_A100)		+= leds-sun50i-a100.o
 obj-$(CONFIG_LEDS_SUNFIRE)		+= leds-sunfire.o
 obj-$(CONFIG_LEDS_SYSCON)		+= leds-syscon.o
diff --git a/drivers/leds/leds-st1202.c b/drivers/leds/leds-st1202.c
new file mode 100644
index 000000000000..565c8fbfe515
--- /dev/null
+++ b/drivers/leds/leds-st1202.c
@@ -0,0 +1,510 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * LED driver for STMicroelectronics LED1202 chip
+ *
+ * Copyright (C) 2024 Remote-Tech Ltd. UK
+ */
+
+#include <linux/ctype.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/gpio.h>
+#include <linux/i2c.h>
+#include <linux/leds.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+#define ST1202_CHAN_DISABLE_ALL            0x00
+#define ST1202_CHAN_ENABLE_HIGH            0x03
+#define ST1202_CHAN_ENABLE_LOW             0x02
+#define ST1202_CONFIG_REG                  0x04
+/* PATS: Pattern sequence feature enable */
+#define ST1202_CONFIG_REG_PATS             BIT(7)
+/* PATSR: Pattern sequence runs (self-clear when sequence is finished) */
+#define ST1202_CONFIG_REG_PATSR            BIT(6)
+#define ST1202_CONFIG_REG_SHFT             BIT(3)
+#define ST1202_DEV_ENABLE                  0x01
+#define ST1202_DEV_ENABLE_ON               BIT(0)
+#define ST1202_DEV_ENABLE_RESET            BIT(7)
+#define ST1202_DEVICE_ID                   0x00
+#define ST1202_ILED_REG0                   0x09
+#define ST1202_MAX_LEDS                    12
+#define ST1202_MAX_PATTERNS                8
+#define ST1202_MILLIS_PATTERN_DUR_MAX      5660
+#define ST1202_MILLIS_PATTERN_DUR_MIN      22
+#define ST1202_PATTERN_DUR                 0x16
+#define ST1202_PATTERN_PWM                 0x1E
+#define ST1202_PATTERN_REP                 0x15
+
+struct st1202_led {
+	struct fwnode_handle *fwnode;
+	struct led_classdev led_cdev;
+	struct st1202_chip *chip;
+	bool is_active;
+	int led_num;
+};
+
+struct st1202_chip {
+	struct i2c_client *client;
+	struct mutex lock;
+	struct st1202_led leds[ST1202_MAX_LEDS];
+};
+
+static struct st1202_led *cdev_to_st1202_led(struct led_classdev *cdev)
+{
+	return container_of(cdev, struct st1202_led, led_cdev);
+}
+
+static int st1202_read_reg(struct st1202_chip *chip, int reg, uint8_t *val)
+{
+	int ret;
+
+	ret = i2c_smbus_read_byte_data(chip->client, reg);
+	if (ret < 0)
+		return ret;
+
+	*val = (uint8_t)ret;
+	return 0;
+}
+
+static int st1202_write_reg(struct st1202_chip *chip, int reg, uint8_t val)
+{
+	return i2c_smbus_write_byte_data(chip->client, reg, val);
+}
+
+static uint8_t st1202_prescalar_to_miliseconds(unsigned int value)
+{
+	return value/ST1202_MILLIS_PATTERN_DUR_MIN - 1;
+}
+
+static int st1202_pwm_pattern_write(struct st1202_chip *chip, int led_num,
+					int pattern, unsigned int value)
+{
+	u8 value_l, value_h;
+	int ret;
+
+	value_l = (u8)value;
+	value_h = (u8)(value >> 8);
+
+	/*
+	 *  Datasheet: Register address low = 1Eh + 2*(xh) + 18h*(yh),
+	 *  where x is the channel number (led number) in hexadecimal (x = 00h .. 0Bh)
+	 *  and y is the pattern number in hexadecimal (y = 00h .. 07h)
+	 */
+	ret = st1202_write_reg(chip, (ST1202_PATTERN_PWM + (led_num * 2) + 0x18 * pattern),
+				value_l);
+	if (ret != 0) {
+		dev_err(&chip->client->dev, "Failed writing value %d to register [0x%x], error: %d\n",
+			value_l, ST1202_PATTERN_PWM + (led_num * 2) + 0x18 * pattern, ret);
+		return ret;
+	}
+
+	/*
+	 * Datasheet: Register address high = 1Eh + 01h + 2(xh) +18h*(yh),
+	 * where x is the channel number in hexadecimal (x = 00h .. 0Bh)
+	 * and y is the pattern number in hexadecimal (y = 00h .. 07h)
+	 */
+	ret = st1202_write_reg(chip, (ST1202_PATTERN_PWM + 0x1 + (led_num * 2) + 0x18 * pattern),
+				value_h);
+	if (ret != 0) {
+		dev_err(&chip->client->dev, "Failed writing value %d to register [0x%x], error: %d\n",
+			value_h, ST1202_PATTERN_PWM + 0x1 + (led_num * 2) + 0x18 * pattern, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int st1202_duration_pattern_write(struct st1202_chip *chip, int pattern,
+					unsigned int value)
+{
+	int ret;
+
+	ret = st1202_write_reg(chip, (ST1202_PATTERN_DUR + pattern),
+				st1202_prescalar_to_miliseconds(value));
+	if (ret != 0) {
+		dev_err(&chip->client->dev, "Writing to register [0x%x] failed, value %u\n",
+			ST1202_PATTERN_DUR + pattern, value);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void st1202_brightness_set(struct led_classdev *led_cdev,
+				enum led_brightness value)
+{
+	struct st1202_led *led;
+	struct st1202_chip *chip;
+	int ret;
+
+	led = cdev_to_st1202_led(led_cdev);
+	chip = led->chip;
+
+	mutex_lock(&chip->lock);
+
+	ret = st1202_write_reg(chip, ST1202_ILED_REG0 + led->led_num, value);
+	if (ret != 0)
+		dev_err(&chip->client->dev, "Reading register [0x%x] failed, error: %d\n",
+			ST1202_ILED_REG0 + led->led_num, ret);
+
+	mutex_unlock(&chip->lock);
+}
+
+static enum led_brightness st1202_brightness_get(struct led_classdev *led_cdev)
+{
+	struct st1202_led *led;
+	struct st1202_chip *chip;
+	u8 value;
+	int ret;
+
+	led = cdev_to_st1202_led(led_cdev);
+	chip = led->chip;
+
+	mutex_lock(&chip->lock);
+
+	ret = st1202_read_reg(chip, ST1202_ILED_REG0 + led->led_num,
+				&value);
+	if (ret != 0)
+		dev_err(&chip->client->dev, "Reading register [0x%x] failed, error: %d\n",
+			ST1202_ILED_REG0 + led->led_num, ret);
+
+	mutex_unlock(&chip->lock);
+
+	return value;
+}
+
+static int st1202_channel_set(struct st1202_chip *chip, int led_num, bool active)
+{
+	u8 chan_low, chan_high;
+	int ret;
+
+	mutex_lock(&chip->lock);
+
+	if (led_num <= 7) {
+		ret = st1202_read_reg(chip, ST1202_CHAN_ENABLE_LOW, &chan_low);
+		if (ret < 0) {
+			dev_err(&chip->client->dev, "Failed reading register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_LOW, ret);
+			goto exit;
+		}
+
+		chan_low = active ? chan_low | BIT(led_num) : chan_low & ~BIT(led_num);
+
+		ret = st1202_write_reg(chip, ST1202_CHAN_ENABLE_LOW, chan_low);
+		if (ret < 0) {
+			dev_err(&chip->client->dev, "Failed writing to register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_LOW, ret);
+			goto exit;
+		}
+	} else {
+		ret = st1202_read_reg(chip, ST1202_CHAN_ENABLE_HIGH, &chan_high);
+		if (ret < 0) {
+			dev_err(&chip->client->dev, "Failed reading register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_HIGH, ret);
+			goto exit;
+		}
+
+		chan_high = active ? chan_high | (BIT(led_num) >> 8) :
+					chan_high & ~(BIT(led_num) >> 8);
+
+		ret = st1202_write_reg(chip, ST1202_CHAN_ENABLE_HIGH, chan_high);
+		if (ret < 0)
+			dev_err(&chip->client->dev, "Failed writing to register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_HIGH, ret);
+	}
+
+exit:
+	mutex_unlock(&chip->lock);
+	return ret;
+}
+
+static int st1202_led_set(struct led_classdev *ldev, enum led_brightness value)
+{
+	struct st1202_led *led;
+	struct st1202_chip *chip;
+	int ret;
+
+	led = cdev_to_st1202_led(ldev);
+	chip = led->chip;
+
+	ret = st1202_channel_set(chip, led->led_num, value == LED_OFF ? false : true);
+
+	return ret;
+}
+
+static int st1202_led_pattern_clear(struct led_classdev *ldev)
+{
+	struct st1202_led *led;
+	struct st1202_chip *chip;
+	int ret;
+
+	led = cdev_to_st1202_led(ldev);
+	chip = led->chip;
+
+	mutex_lock(&chip->lock);
+
+	for (int patt = 0; patt < ST1202_MAX_PATTERNS; patt++) {
+		ret = st1202_pwm_pattern_write(chip, led->led_num, patt, LED_OFF);
+		if (ret != 0)
+			goto exit;
+
+		ret = st1202_duration_pattern_write(chip, patt, ST1202_MILLIS_PATTERN_DUR_MIN);
+		if (ret != 0)
+			goto exit;
+	}
+
+exit:
+	mutex_unlock(&chip->lock);
+
+	return ret;
+}
+
+static int st1202_led_pattern_set(struct led_classdev *ldev,
+				  struct led_pattern *pattern,
+				  u32 len, int repeat)
+{
+	struct st1202_led *led;
+	struct st1202_chip *chip;
+	int ret;
+
+	led = cdev_to_st1202_led(ldev);
+	chip = led->chip;
+
+	if (len > ST1202_MAX_PATTERNS)
+		return -EINVAL;
+
+	mutex_lock(&chip->lock);
+
+	for (int patt = 0; patt < len; patt++) {
+		if (pattern[patt].delta_t < ST1202_MILLIS_PATTERN_DUR_MIN ||
+			pattern[patt].delta_t > ST1202_MILLIS_PATTERN_DUR_MAX) {
+			ret = -EINVAL;
+			goto exit;
+		}
+
+		ret = st1202_pwm_pattern_write(chip, led->led_num, patt, pattern[patt].brightness);
+		if (ret != 0)
+			goto exit;
+
+		ret = st1202_duration_pattern_write(chip, patt, pattern[patt].delta_t);
+		if (ret != 0)
+			goto exit;
+	}
+
+	ret = st1202_write_reg(chip, ST1202_PATTERN_REP, repeat);
+	if (ret != 0) {
+		dev_err(&chip->client->dev, "Writing register [0x%x] failed, error: %d\n",
+			ST1202_PATTERN_REP, ret);
+		goto exit;
+	}
+
+	ret = st1202_write_reg(chip, ST1202_CONFIG_REG,
+				(ST1202_CONFIG_REG_PATSR | ST1202_CONFIG_REG_PATS |
+				ST1202_CONFIG_REG_SHFT));
+	if (ret != 0) {
+		dev_err(&chip->client->dev, "Failed writing value %ld to register [0x%x], error: %d\n",
+			(ST1202_CONFIG_REG_PATSR | ST1202_CONFIG_REG_PATS | ST1202_CONFIG_REG_SHFT),
+			ST1202_CONFIG_REG, ret);
+		goto exit;
+	}
+
+exit:
+	mutex_unlock(&chip->lock);
+
+	return ret;
+}
+
+static int st1202_dt_init(struct st1202_chip *chip)
+{
+	struct device *dev = &chip->client->dev;
+	struct st1202_led *led;
+	int err, reg;
+
+	for_each_available_child_of_node_scoped(dev_of_node(dev), child) {
+		struct led_init_data init_data = {};
+
+		err = of_property_read_u32(child, "reg", &reg);
+		if (err) {
+			of_node_put(child);
+			return dev_err_probe(dev, err, "Invalid register, error: %d\n", err);
+		}
+
+		led = &chip->leds[reg];
+		led->is_active = true;
+		led->fwnode = of_fwnode_handle(child);
+
+		led->led_cdev.max_brightness = U8_MAX;
+		led->led_cdev.brightness_set_blocking = st1202_led_set;
+		led->led_cdev.pattern_set = st1202_led_pattern_set;
+		led->led_cdev.pattern_clear = st1202_led_pattern_clear;
+		led->led_cdev.default_trigger = "pattern";
+
+		init_data.fwnode = led->fwnode;
+		init_data.devicename = "st1202";
+		init_data.default_label = ":";
+		err = devm_led_classdev_register_ext(dev,
+					&led->led_cdev, &init_data);
+		if (err < 0) {
+			dev_err_probe(dev, err, "Failed to register LED class dev,
+					error: %d\n", err);
+			return err;
+		}
+		led->led_cdev.brightness_set = st1202_brightness_set;
+		led->led_cdev.brightness_get = st1202_brightness_get;
+	}
+
+	return 0;
+}
+
+static int st1202_setup(struct st1202_chip *chip)
+{
+	int ret;
+
+	mutex_lock(&chip->lock);
+	/*
+	 * Once the supply voltage is applied, the LED1202 executes some internal checks,
+	 * afterwords it stops the oscillator and puts the internal LDO in quiescent mode.
+	 * To start the device, EN bit must be set inside the “Device Enable” register at
+	 * address 01h. As soon as EN is set, the LED1202 loads the adjustment parameters
+	 * from the internal non-volatile memory and performs an auto-calibration procedure
+	 * in order to increase the output current precision.
+	 * Such initialization lasts about 6.5 ms.
+	 */
+
+	/* Reset the chip during setup */
+	ret = st1202_write_reg(chip, ST1202_DEV_ENABLE, ST1202_DEV_ENABLE_RESET);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed to write to register [0x%x], error: %d\n",
+				ST1202_DEV_ENABLE, ret);
+		goto exit;
+	}
+
+	/* Enable phase-shift delay feature */
+	ret = st1202_write_reg(chip, ST1202_CONFIG_REG, ST1202_CONFIG_REG_SHFT);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed to write to register [0x%x], error: %d\n",
+				ST1202_CONFIG_REG, ret);
+		goto exit;
+	}
+
+	/* Enable the device */
+	ret = st1202_write_reg(chip, ST1202_DEV_ENABLE, ST1202_DEV_ENABLE_ON);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed to write to register [0x%x], error: %d\n",
+				ST1202_DEV_ENABLE, ret);
+		goto exit;
+	}
+
+	/* Duration of initialization */
+	usleep_range(6500, 10000);
+
+	/* Deactivate all LEDS (channels) and activate only the ones found in Device Tree */
+	ret = st1202_write_reg(chip, ST1202_CHAN_ENABLE_LOW, ST1202_CHAN_DISABLE_ALL);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed writing to register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_LOW, ret);
+		goto exit;
+	}
+
+	ret = st1202_write_reg(chip, ST1202_CHAN_ENABLE_HIGH, ST1202_CHAN_DISABLE_ALL);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed writing to register [0x%x], error: %d\n",
+				ST1202_CHAN_ENABLE_HIGH, ret);
+		goto exit;
+	}
+
+	ret = st1202_write_reg(chip, ST1202_CONFIG_REG,
+				ST1202_CONFIG_REG_PATS | ST1202_CONFIG_REG_PATSR);
+	if (ret < 0) {
+		dev_err_probe(&chip->client->dev, -EIO,
+				"Failed writing to register [0x%lx], error: %d\n",
+				ST1202_CONFIG_REG_PATS | ST1202_CONFIG_REG_PATSR, ret);
+		goto exit;
+	}
+
+exit:
+	mutex_unlock(&chip->lock);
+	return ret;
+}
+
+static int st1202_probe(struct i2c_client *client)
+{
+	struct st1202_chip *chip;
+	struct st1202_led *led;
+	int ret;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
+		return dev_err_probe(&client->dev, -EIO, "SMBUS Byte Data not Supported\n");
+
+	chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, chip);
+
+	devm_mutex_init(&client->dev, &chip->lock);
+	chip->client = client;
+
+	ret = st1202_dt_init(chip);
+	if (ret < 0)
+		return ret;
+
+	ret = st1202_setup(chip);
+	if (ret < 0)
+		return ret;
+
+	for (int i = 0; i < ST1202_MAX_LEDS; i++) {
+		led = &chip->leds[i];
+		led->chip = chip;
+		led->led_num = i;
+
+		if (led->is_active) {
+			ret = st1202_channel_set(led->chip, led->led_num, true);
+			if (ret < 0) {
+				return dev_err_probe(&client->dev, -EIO,
+					"Failed to activate LED channel, error: %d\n", ret);
+			}
+
+			ret = st1202_led_pattern_clear(&led->led_cdev);
+			if (ret < 0) {
+				return dev_err_probe(&client->dev, -EIO,
+					"Failed to clear LED pattern, error: %d\n", ret);
+			}
+		}
+	}
+
+	return 0;
+}
+
+static const struct i2c_device_id st1202_id[] = {
+	{ "st1202-i2c" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(i2c, st1202_id);
+
+static const struct of_device_id st1202_dt_ids[] = {
+	{ .compatible = "st,led1202", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, st1202_dt_ids);
+
+static struct i2c_driver st1202_driver = {
+	.driver = {
+		.name = "leds-st1202",
+		.of_match_table = of_match_ptr(st1202_dt_ids),
+	},
+	.probe = st1202_probe,
+	.id_table = st1202_id,
+};
+module_i2c_driver(st1202_driver);
+
+MODULE_AUTHOR("Remote Tech LTD");
+MODULE_DESCRIPTION("STMicroelectronics LED1202 : 12-channel constant current LED driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


