Return-Path: <devicetree+bounces-254257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F45D16962
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E1C9301AD1B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24AED34F24D;
	Tue, 13 Jan 2026 04:03:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56B334F253
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277023; cv=none; b=Zg8sn0+9qHnmHK4B0FOnfphHvIoP1WQZaic/uLBKE1k7H9CIkowsYAAcnl9MJRQlN2+xo6DecrOdEWWhCFajcMpDMN3eRDoKFq1+Ht5EPHSNs7qfEdpQcm0zgiYtWtfv9H/wLs1SxNiVxVBDFMHAw7oskE6YlIgpCSP1v+Sneas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277023; c=relaxed/simple;
	bh=iMd9GL/2XUKG9j4Iduimcqhz68DwGmVOF34m+VrDYLE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NRobG7k1+dcjAOOiD5zb9o6KapovGfhCGq1AZh/fCxmeC6AcwaYLsCz1AfQ+jUAu+AJaur91UvHCXcobnzH/yAUechaahtIDYh/Sf3zxU5X+/WQUSrClCHy5XS07VgcV2lgHcHC21XOWzgj0g5zPezHh9W7iHdtLerwUnz6wCNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-81f42a49437so989088b3a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768277017; x=1768881817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ci7K6yNOqrdNSBFsOIy5Tf+/ZTimH+SlCTUY32nt1Bs=;
        b=jEg3hb7e8k1aue3YzpTSL9LmfhC/FiJPZluaw4T3sPbzP28wGyZY23/G0J9cbC9kvh
         VbQlC5LvBPkjr9G9EqrEO7erd4GDteVKQxOeOG2oSYbVYFkny8gChTCB2XOYYrrms94f
         lZiG92mpvbstMpXw4ybUTNRt58ajKEsSGC5hAtI4fhc1+6dZbcPu3mIInP7mPuYcacgF
         Rq2dkGI48eLlLPi0GKtKpPFxDeUEvhvpGfbLfLWBcDZET4eOSJcaCtLN1JZ/ze8TRcI+
         Hga7AFeOfD127AMHRZwDv0nd61U8STnZBNBTsRopORLszOyDDGiPQvVzdZFWaNI04rd5
         mBoA==
X-Forwarded-Encrypted: i=1; AJvYcCWu/hBlEcRCDS89PBqZSyb4/MD1ihJPrGKgIBLqyxsDqvYIEtX8QuygXMCxrGhHaRuVw/GujV7CHriG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Q4Uvm3RF64gSZj/NsPH/ntg4ljuk6AJ+jcj3yktcmM1r5rzH
	ilctphRYIv2999Ril3zmKtMyCqw0iYwzN3hzj7NxwiCicWzEqEV9tqxd
X-Gm-Gg: AY/fxX6otTSOx2kzzG8bMl1JyI/PXfFuSPZQKQ/WzmLigAu9vhNeveoWL1N6I+VkXtm
	WtlEAvPSbkpA9j3AQLd3xUeKN9QhAgKPq6GI0epM3ciB1avBqoig4/E+wrGO8ZoXwLTFLNhjJE+
	7N/8ZKnMUwS+jRzNRiyfWLMgFN1rgzv3GKzCiOPbG6vuAXSU2XPm6SKXGXbHkVfWUBnsNVZac/q
	Rt/rZVZbsyO2QQ93FCj1+XWtHEQy5E0Y00eMSppZ42u7k+hxYtQO40FEOPPEox2Qw3hZGINB59v
	yFegKbf+GWA2IeqSXSQ7rRbOCfBvAigG5Ff4PnrVh9vr5JNprEkCK1jSbc+4waMrla5PNhdq+ab
	8eu+H8l6wxphFDZiuuGxN752qAvcDMtESiYRPJlsiDjzQumqMDPr9FzXK3xsmD9ofxPm0v0GxKR
	lIZLger3MtaHfbW4txSsEhZ2U=
X-Google-Smtp-Source: AGHT+IE7qK7U4JJNovFRHQ32/LZXLKq933uf4WmVu5S9jXshh5wylEPkN1qu2iQgq/r4UDnx1ghbQw==
X-Received: by 2002:a05:6a00:1d1d:b0:81f:3fbd:ccf with SMTP id d2e1a72fcca58-81f3fbd19f4mr5980432b3a.23.1768277016789;
        Mon, 12 Jan 2026 20:03:36 -0800 (PST)
Received: from DESKTOP-LUHV3PD.localdomain ([59.152.111.50])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f3ce8df8bsm7776016b3a.40.2026.01.12.20.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:03:36 -0800 (PST)
From: Siratul Islam <email@sirat.me>
To: andy@kernel.org,
	geert@linux-m68k.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 3/4] auxdisplay: tm1637: Add driver for TM1637
Date: Tue, 13 Jan 2026 10:02:41 +0600
Message-ID: <20260113040242.19156-4-email@sirat.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
References: <20260113040242.19156-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a driver for the Titanmec TM1637 7-segment display controller.

The TM1637 uses a custom two-wire protocol (similar to I2C but without
a slave address) which requires bit-banging via GPIOs. This driver
implements the protocol manually as it does not fit the standard I2C
subsystem.

The driver exposes a character device interface via sysfs:
- 'message': Write a string to display (supports alphanumeric & dots).
- 'brightness': Control intensity (0-8).

Standard 7-segment mapping is handled using the kernel's map_to_7segment
utility.

Signed-off-by: Siratul Islam <email@sirat.me>
---
 .../ABI/testing/sysfs-platform-tm1637         |  20 ++
 drivers/auxdisplay/Kconfig                    |  11 +
 drivers/auxdisplay/Makefile                   |   1 +
 drivers/auxdisplay/tm1637.c                   | 297 ++++++++++++++++++
 4 files changed, 329 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-tm1637
 create mode 100644 drivers/auxdisplay/tm1637.c

diff --git a/Documentation/ABI/testing/sysfs-platform-tm1637 b/Documentation/ABI/testing/sysfs-platform-tm1637
new file mode 100644
index 000000000000..4941fd15518d
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-tm1637
@@ -0,0 +1,20 @@
+What:		/sys/bus/platform/devices/.../message
+Date:		January 2026
+KernelVersion:	6.19
+Contact:	Siratul Islam <email@sirat.me>
+Description:
+		Write a text string to display on the 7-segment display.
+		Supports alphanumeric characters and decimal points.
+		A decimal point can be added after any character by
+		following it with a dot (e.g., "12.34").
+
+		Reading returns the current segment data in hex format.
+
+What:		/sys/bus/platform/devices/.../brightness
+Date:		January 2026
+KernelVersion:	6.19
+Contact:	Siratul Islam <email@sirat.me>
+Description:
+		Control display brightness. Valid range is 0-8.
+		Writing 0 turns off the display.
+		Writing 1-8 sets brightness levels, with 8 being maximum.
diff --git a/drivers/auxdisplay/Kconfig b/drivers/auxdisplay/Kconfig
index bedc6133f970..1450591a0a25 100644
--- a/drivers/auxdisplay/Kconfig
+++ b/drivers/auxdisplay/Kconfig
@@ -526,6 +526,17 @@ config SEG_LED_GPIO
 	  This driver can also be built as a module. If so, the module
 	  will be called seg-led-gpio.
 
+config TM1637
+	tristate "Shenzhen Titan Micro Electronics TM1637 7-Segment Display"
+	depends on GPIOLIB || COMPILE_TEST
+	select AUXDISPLAY
+	help
+	  This driver provides support for the Titanmec TM1637 7-segment
+	  display controller connected via GPIO bit-banging.
+
+	  This driver exposes a character interface for controlling the
+	  display content and brightness via sysfs.
+
 #
 # Character LCD with non-conforming interface section
 #
diff --git a/drivers/auxdisplay/Makefile b/drivers/auxdisplay/Makefile
index f5c13ed1cd4f..5baa77da4343 100644
--- a/drivers/auxdisplay/Makefile
+++ b/drivers/auxdisplay/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_LINEDISP)		+= line-display.o
 obj-$(CONFIG_MAX6959)		+= max6959.o
 obj-$(CONFIG_PARPORT_PANEL)	+= panel.o
 obj-$(CONFIG_SEG_LED_GPIO)	+= seg-led-gpio.o
+obj-$(CONFIG_TM1637)		+= tm1637.o
diff --git a/drivers/auxdisplay/tm1637.c b/drivers/auxdisplay/tm1637.c
new file mode 100644
index 000000000000..f8623fea1d2a
--- /dev/null
+++ b/drivers/auxdisplay/tm1637.c
@@ -0,0 +1,297 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * TM1637 7-segment display driver
+ *
+ * Copyright (C) 2026 Siratul Islam <email@sirat.me>
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/slab.h>
+#include <linux/map_to_7segment.h>
+
+/* Commands */
+#define TM1637_CMD_DATA_AUTO_INC 0x40
+#define TM1637_CMD_ADDR_BASE 0xC0
+#define TM1637_CMD_DISPLAY_CTRL 0x80
+
+/* Display control bits */
+#define TM1637_DISPLAY_ON BIT(3)
+#define TM1637_BRIGHTNESS_MASK GENMASK(2, 0)
+#define TM1637_BRIGHTNESS_MAX 7
+
+#define TM1637_SEG_DP BIT(7)
+
+/* Protocol timing */
+#define TM1637_BIT_DELAY_MIN 100
+#define TM1637_BIT_DELAY_MAX 120
+
+#define TM1637_DIGITS 4
+
+struct tm1637 {
+	struct device *dev;
+	struct gpio_desc *clk;
+	struct gpio_desc *dio;
+	struct mutex lock; /* Protects display buffer and brightness */
+	u8 brightness;
+	u8 buf[TM1637_DIGITS];
+};
+
+/* Defines a static const 'initial_map' variable */
+static const SEG7_DEFAULT_MAP(initial_map);
+
+static void tm1637_delay(void)
+{
+	usleep_range(TM1637_BIT_DELAY_MIN, TM1637_BIT_DELAY_MAX);
+}
+
+static void tm1637_start(struct tm1637 *tm)
+{
+	gpiod_direction_output(tm->dio, 1);
+	gpiod_set_value(tm->clk, 1);
+	tm1637_delay();
+	gpiod_set_value(tm->dio, 0);
+	tm1637_delay();
+	gpiod_set_value(tm->clk, 0);
+	tm1637_delay();
+}
+
+static void tm1637_stop(struct tm1637 *tm)
+{
+	gpiod_direction_output(tm->dio, 0);
+	gpiod_set_value(tm->clk, 1);
+	tm1637_delay();
+	gpiod_set_value(tm->dio, 1);
+	tm1637_delay();
+}
+
+static bool tm1637_write_byte(struct tm1637 *tm, u8 data)
+{
+	bool ack;
+	int i;
+
+	for (i = 0; i < 8; i++) {
+		gpiod_set_value(tm->clk, 0);
+		tm1637_delay();
+
+		if (data & BIT(i))
+			gpiod_direction_input(tm->dio);
+		else
+			gpiod_direction_output(tm->dio, 0);
+
+		tm1637_delay();
+		gpiod_set_value(tm->clk, 1);
+		tm1637_delay();
+	}
+
+	gpiod_set_value(tm->clk, 0);
+	gpiod_direction_input(tm->dio);
+	tm1637_delay();
+
+	gpiod_set_value(tm->clk, 1);
+	tm1637_delay();
+
+	ack = !gpiod_get_value(tm->dio);
+
+	if (!ack)
+		gpiod_direction_output(tm->dio, 0);
+
+	tm1637_delay();
+	gpiod_set_value(tm->clk, 0);
+
+	return ack;
+}
+
+static void tm1637_update_display_locked(struct tm1637 *tm)
+{
+	u8 ctrl_cmd;
+	int i;
+
+	tm1637_start(tm);
+	tm1637_write_byte(tm, TM1637_CMD_DATA_AUTO_INC);
+	tm1637_stop(tm);
+
+	tm1637_start(tm);
+	tm1637_write_byte(tm, TM1637_CMD_ADDR_BASE);
+	for (i = 0; i < TM1637_DIGITS; i++)
+		tm1637_write_byte(tm, tm->buf[i]);
+	tm1637_stop(tm);
+
+	if (tm->brightness == 0)
+		ctrl_cmd = 0;
+	else
+		ctrl_cmd = TM1637_DISPLAY_ON | ((tm->brightness - 1) & TM1637_BRIGHTNESS_MASK);
+
+	tm1637_start(tm);
+	tm1637_write_byte(tm, ctrl_cmd);
+	tm1637_stop(tm);
+}
+
+static void tm1637_update_display(struct tm1637 *tm)
+{
+	mutex_lock(&tm->lock);
+	tm1637_update_display_locked(tm);
+	mutex_unlock(&tm->lock);
+}
+
+static ssize_t message_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct tm1637 *tm = dev_get_drvdata(dev);
+	int i, pos = 0;
+
+	mutex_lock(&tm->lock);
+	for (i = 0; i < TM1637_DIGITS; i++) {
+		pos += sysfs_emit_at(buf, pos, "0x%02x", tm->buf[i]);
+		if (i < TM1637_DIGITS - 1)
+			pos += sysfs_emit_at(buf, pos, " ");
+	}
+	pos += sysfs_emit_at(buf, pos, "\n");
+	mutex_unlock(&tm->lock);
+
+	return pos;
+}
+
+static ssize_t message_store(struct device *dev, struct device_attribute *attr,
+			     const char *buf, size_t count)
+{
+	struct tm1637 *tm = dev_get_drvdata(dev);
+	size_t i, pos = 0;
+	size_t len;
+	u8 segment_data[TM1637_DIGITS] = {0};
+
+	len = count;
+	if (len > 0 && buf[len - 1] == '\n')
+		len--;
+
+	for (i = 0; i < len && pos < TM1637_DIGITS; i++) {
+		char c = buf[i];
+
+		if (c == '.')
+			continue;
+
+		segment_data[pos] = map_to_seg7(&initial_map, c);
+
+		if (i + 1 < len && buf[i + 1] == '.')
+			segment_data[pos] |= TM1637_SEG_DP;
+
+		pos++;
+	}
+
+	mutex_lock(&tm->lock);
+	memcpy(tm->buf, segment_data, sizeof(tm->buf));
+	tm1637_update_display_locked(tm);
+	mutex_unlock(&tm->lock);
+
+	return count;
+}
+static DEVICE_ATTR_RW(message);
+
+static ssize_t brightness_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct tm1637 *tm = dev_get_drvdata(dev);
+	unsigned int brightness;
+
+	mutex_lock(&tm->lock);
+	brightness = tm->brightness;
+	mutex_unlock(&tm->lock);
+
+	return sysfs_emit(buf, "%u\n", brightness);
+}
+
+static ssize_t brightness_store(struct device *dev, struct device_attribute *attr,
+				const char *buf, size_t count)
+{
+	struct tm1637 *tm = dev_get_drvdata(dev);
+	unsigned int brightness;
+	int ret;
+
+	ret = kstrtouint(buf, 10, &brightness);
+	if (ret)
+		return ret;
+
+	if (brightness > TM1637_BRIGHTNESS_MAX + 1)
+		brightness = TM1637_BRIGHTNESS_MAX + 1;
+
+	mutex_lock(&tm->lock);
+	if (tm->brightness != brightness) {
+		tm->brightness = brightness;
+		tm1637_update_display_locked(tm);
+	}
+	mutex_unlock(&tm->lock);
+
+	return count;
+}
+static DEVICE_ATTR_RW(brightness);
+
+static struct attribute *tm1637_attrs[] = {
+	&dev_attr_message.attr,
+	&dev_attr_brightness.attr,
+	NULL};
+ATTRIBUTE_GROUPS(tm1637);
+
+static int tm1637_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct tm1637 *tm;
+
+	tm = devm_kzalloc(dev, sizeof(*tm), GFP_KERNEL);
+	if (!tm)
+		return -ENOMEM;
+
+	tm->dev = dev;
+
+	tm->clk = devm_gpiod_get(dev, "clk", GPIOD_OUT_LOW);
+	if (IS_ERR(tm->clk))
+		return dev_err_probe(dev, PTR_ERR(tm->clk), "Failed to get clk GPIO\n");
+
+	tm->dio = devm_gpiod_get(dev, "dio", GPIOD_OUT_LOW);
+	if (IS_ERR(tm->dio))
+		return dev_err_probe(dev, PTR_ERR(tm->dio), "Failed to get dio GPIO\n");
+
+	mutex_init(&tm->lock);
+
+	tm->brightness = TM1637_BRIGHTNESS_MAX + 1;
+
+	platform_set_drvdata(pdev, tm);
+	tm1637_update_display(tm);
+
+	return 0;
+}
+
+static void tm1637_remove(struct platform_device *pdev)
+{
+	struct tm1637 *tm = platform_get_drvdata(pdev);
+
+	mutex_lock(&tm->lock);
+	tm->brightness = 0;
+	memset(tm->buf, 0, sizeof(tm->buf));
+	tm1637_update_display_locked(tm);
+	mutex_unlock(&tm->lock);
+
+	mutex_destroy(&tm->lock);
+}
+
+static const struct of_device_id tm1637_of_match[] = {
+	{.compatible = "titanmec,tm1637"},
+	{}};
+MODULE_DEVICE_TABLE(of, tm1637_of_match);
+
+static struct platform_driver tm1637_driver = {
+	.probe = tm1637_probe,
+	.remove = tm1637_remove,
+	.driver = {
+		.name = "tm1637",
+		.of_match_table = tm1637_of_match,
+		.dev_groups = tm1637_groups,
+	},
+};
+module_platform_driver(tm1637_driver);
+
+MODULE_DESCRIPTION("TM1637 7-segment display driver");
+MODULE_AUTHOR("Siratul Islam <email@sirat.me>");
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.47.3


