Return-Path: <devicetree+bounces-261019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFsKD2y1e2neHwIAu9opvQ
	(envelope-from <devicetree+bounces-261019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B88DB3FF4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 785F1303AA98
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFC4329E40;
	Thu, 29 Jan 2026 19:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="GGxZm0Ka"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC7E2737F2;
	Thu, 29 Jan 2026 19:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769715018; cv=none; b=OAOc2U6V/ob1hS34kEJO5Qzls0TuJifkPTbhiVWpTRdB6VUj9U47FZeac4Yv0oJ4ICwemA3FfAJdL8k6KZBFLcsBVB3kyKFbJZljLwLXtqKjZogGrTZVLmoK7Fta8+SqsQiuqKJjrNKhKwcfJQpJeHIuE4xCsLo9ijH5RHO6xkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769715018; c=relaxed/simple;
	bh=yY6caX74Doksm7vgV0/9wY1OFwjOjQU93XMIezMvkYw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JHBg78yv9QhCMEhal5wS7d/914CuYzIQyeahZgnOlevu322ejGWmuV3zZPWXl50YABLUr4EBmfoZzRQejkn+aP8RcrtaYOxLCOpmfkY4lwaUa/jLE6Md3Dinyx1jOf6ftUe17NPAgnfZD6ru36LjQ9j7YMfUFQCgz2Sy+OmM3aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=GGxZm0Ka; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 41AFA7791D28;
	Thu, 29 Jan 2026 13:20:58 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id sFIhhIjsKVLM; Thu, 29 Jan 2026 13:20:57 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 10C6E7791C4F;
	Thu, 29 Jan 2026 13:20:57 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 10C6E7791C4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1769714457; bh=kjCwV8XYxZAhdhGqIEUH1YN69lEod0KMsyIxUj4JY5Q=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=GGxZm0Ka9Zxs4txqm2TgM/sqwpEb4yEXue8lYIyypaYTcV8B4AZtMKZWksoxe0oiG
	 F3cp7K7EQ909NK9oo25A2Y7Q7vxRe4/tf6918twk3nDNsWYxvy7bneHUpVX6fKWFEB
	 GB82/jnoOCUNHmmSf8bmpotA4bBEAKdll4kQHmEo=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id sAtmH5Q3FbZk; Thu, 29 Jan 2026 13:20:56 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id DB5EE7791B3D;
	Thu, 29 Jan 2026 13:20:56 -0600 (CST)
From: Raptor Engineering Development Team <support@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v7 2/4] mfd: sony-cronos-smc: Add driver for Sony Cronos SMC
Date: Thu, 29 Jan 2026 13:20:45 -0600
Message-Id: <20260129192047.562540-3-support@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260129192047.562540-1-support@raptorengineering.com>
References: <20260129192047.562540-1-support@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261019-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sony.com:email,intel.com:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[support@raptorengineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9B88DB3FF4
X-Rspamd-Action: no action

From: Timothy Pearson <tpearson@raptorengineering.com>

The Sony Cronos Platform Controller is a multi-purpose platform controlle=
r
that provides both a watchdog timer and an LED controller for the Sony
Interactive Entertainment Cronos x86 server platform. As both functions
are provided by the same CPLD, a multi-function device is exposed as the
parent of both functions.

Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
---
 MAINTAINERS                     |   7 ++
 drivers/mfd/Kconfig             |  11 ++
 drivers/mfd/Makefile            |   2 +
 drivers/mfd/sony-cronos-smc.c   | 204 ++++++++++++++++++++++++++++++++
 include/linux/mfd/sony-cronos.h |  61 ++++++++++
 5 files changed, 285 insertions(+)
 create mode 100644 drivers/mfd/sony-cronos-smc.c
 create mode 100644 include/linux/mfd/sony-cronos.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 67db88b04537..a9fce9f72164 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24298,6 +24298,13 @@ S:	Maintained
 F:	drivers/ssb/
 F:	include/linux/ssb/
=20
+SONY CRONOS SMC DRIVER
+M:	Georgy Yakovlev <Georgy.Yakovlev@sony.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
+F:	drivers/mfd/sony-cronos-smc.c
+F:	include/linux/mfd/sony-cronos.h
+
 SONY IMX208 SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index aace5766b38a..559aa64500e6 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2388,6 +2388,17 @@ config MFD_QCOM_PM8008
 	  under it in the device tree. Additional drivers must be enabled in
 	  order to use the functionality of the device.
=20
+config MFD_SONY_CRONOS_SMC
+	tristate "Sony Cronos System Management Controller"
+	select MFD_CORE
+	select REGMAP_I2C
+	depends on I2C && OF
+	help
+      Support for the Sony Cronos system controller. Additional drivers =
must
+      be enabled in order to use the functionality of the device, includ=
ing LED
+      control and the system watchdog. The controller itself is a custom=
 design
+      tailored to the specific needs of the Sony Cronos hardware platfor=
m.
+
 menu "Multimedia Capabilities Port drivers"
 	depends on ARCH_SA1100
=20
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index e75e8045c28a..2e8cf0c7096c 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -301,6 +301,8 @@ obj-$(CONFIG_MFD_QNAP_MCU)	+=3D qnap-mcu.o
 obj-$(CONFIG_MFD_RSMU_I2C)	+=3D rsmu_i2c.o rsmu_core.o
 obj-$(CONFIG_MFD_RSMU_SPI)	+=3D rsmu_spi.o rsmu_core.o
=20
+obj-$(CONFIG_MFD_SONY_CRONOS_SMC)	+=3D sony-cronos-smc.o
+
 obj-$(CONFIG_MFD_UPBOARD_FPGA)	+=3D upboard-fpga.o
=20
 obj-$(CONFIG_MFD_LOONGSON_SE)	+=3D loongson-se.o
diff --git a/drivers/mfd/sony-cronos-smc.c b/drivers/mfd/sony-cronos-smc.=
c
new file mode 100644
index 000000000000..c1c67acf9319
--- /dev/null
+++ b/drivers/mfd/sony-cronos-smc.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device driver for Sony Cronos SMCs
+ * Copyright (C) 2015-2017  Dialog Semiconductor
+ * Copyright (C) 2022-2025  Raptor Engineering, LLC
+ */
+
+#include <linux/device.h>
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/sony-cronos.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+static const struct mfd_cell cronos_smc_devs[] =3D {
+	{
+		.name =3D "cronos-watchdog",
+		.of_compatible =3D "sony,cronos-watchdog",
+	},
+	{
+		.name =3D "cronos-led",
+		.of_compatible =3D "sony,cronos-led",
+	},
+};
+
+static int sony_cronos_get_device_type(struct sony_cronos_smc *ddata)
+{
+	int device_id;
+	int byte_high;
+	int byte_low;
+	int ret;
+
+	ret =3D regmap_read(ddata->regmap, CRONOS_SMC_DEVICE_ID_HIGH_REG, &byte=
_high);
+	if (ret) {
+		dev_err(ddata->dev, "Cannot read ddata ID high byte.\n");
+		return -EIO;
+	}
+	ret =3D regmap_read(ddata->regmap, CRONOS_SMC_DEVICE_ID_LOW_REG, &byte_=
low);
+	if (ret) {
+		dev_err(ddata->dev, "Cannot read ddata ID low byte.\n");
+		return -EIO;
+	}
+
+	device_id =3D byte_high << 8;
+	device_id |=3D byte_low;
+
+	if (device_id !=3D CRONOS_SMC_DEVICE_ID) {
+		dev_err(ddata->dev, "Unsupported device ID 0x%04x\n", device_id);
+		return -ENODEV;
+	}
+
+	return ret;
+}
+
+static bool cronos_smc_is_writeable_reg(struct device *dev, unsigned int=
 reg)
+{
+	switch (reg) {
+	case CRONOS_SMC_BRIGHTNESS_RED_REG:
+	case CRONOS_SMC_BRIGHTNESS_GREEN_REG:
+	case CRONOS_SMC_BRIGHTNESS_BLUE_REG:
+	case CRONOS_LEDS_SMC_STATUS_REG:
+	case CRONOS_LEDS_SWITCH_STATUS_REG:
+	case CRONOS_LEDS_CCM1_STATUS_REG:
+	case CRONOS_LEDS_CCM2_STATUS_REG:
+	case CRONOS_LEDS_CCM3_STATUS_REG:
+	case CRONOS_LEDS_CCM4_STATUS_REG:
+	case CRONOS_LEDS_CCM_POWER_REG:
+
+	case CRONOS_WDT_CTL_REG:
+	case CRONOS_WDT_CLR_REG:
+
+	case CRONOS_SMC_UART_MUX_REG:
+	case CRONOS_SMC_SWITCH_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_SWITCH_RESET_CMD_REG:
+	case CRONOS_SMC_BMC_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_PAYLOAD_POWER_CTL_REG:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool cronos_smc_is_readable_reg(struct device *dev, unsigned int =
reg)
+{
+	switch (reg) {
+	case CRONOS_SMC_REVISION_HIGH_REG:
+	case CRONOS_SMC_REVISION_LOW_REG:
+	case CRONOS_SMC_DEVICE_ID_HIGH_REG:
+	case CRONOS_SMC_DEVICE_ID_LOW_REG:
+
+	case CRONOS_SMC_BRIGHTNESS_RED_REG:
+	case CRONOS_SMC_BRIGHTNESS_GREEN_REG:
+	case CRONOS_SMC_BRIGHTNESS_BLUE_REG:
+	case CRONOS_LEDS_SMC_STATUS_REG:
+	case CRONOS_LEDS_SWITCH_STATUS_REG:
+	case CRONOS_LEDS_CCM1_STATUS_REG:
+	case CRONOS_LEDS_CCM2_STATUS_REG:
+	case CRONOS_LEDS_CCM3_STATUS_REG:
+	case CRONOS_LEDS_CCM4_STATUS_REG:
+	case CRONOS_LEDS_CCM_POWER_REG:
+
+	case CRONOS_WDT_CTL_REG:
+	case CRONOS_WDT_CLR_REG:
+
+	case CRONOS_SMC_STATUS_2_REG:
+	case CRONOS_SMC_UART_MUX_REG:
+	case CRONOS_SMC_SWITCH_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_SWITCH_RESET_CMD_REG:
+	case CRONOS_SMC_BMC_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_PAYLOAD_POWER_CTL_REG:
+
+	case CRONOS_SMC_BMC_MAC_LOW_REG ... CRONOS_SMC_BMC_MAC_HIGH_REG:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool cronos_smc_is_volatile_reg(struct device *dev, unsigned int =
reg)
+{
+	switch (reg) {
+	case CRONOS_SMC_REVISION_HIGH_REG:
+	case CRONOS_SMC_REVISION_LOW_REG:
+
+	case CRONOS_SMC_SWITCH_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_SWITCH_RESET_CMD_REG:
+	case CRONOS_SMC_BMC_BOOT_FLASH_SELECT_REG:
+	case CRONOS_SMC_PAYLOAD_POWER_CTL_REG:
+
+	case CRONOS_WDT_CTL_REG:
+	case CRONOS_WDT_CLR_REG:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static struct regmap_config cronos_smc_regmap_config =3D {
+	.reg_bits =3D 8,
+	.val_bits =3D 8,
+	.max_register =3D CRONOS_SMC_REVISION_HIGH_REG,
+	.writeable_reg =3D cronos_smc_is_writeable_reg,
+	.readable_reg =3D cronos_smc_is_readable_reg,
+	.volatile_reg =3D cronos_smc_is_volatile_reg,
+	.use_single_read =3D true,
+	.use_single_write =3D true,
+	.cache_type =3D REGCACHE_MAPLE,
+};
+
+static int sony_cronos_i2c_probe(struct i2c_client *i2c)
+{
+	struct sony_cronos_smc *ddata;
+	int ret;
+
+	ddata =3D devm_kzalloc(&i2c->dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
+		return -ENOMEM;
+
+	i2c_set_clientdata(i2c, ddata);
+	ddata->dev =3D &i2c->dev;
+
+	ddata->regmap =3D devm_regmap_init_i2c(i2c, &cronos_smc_regmap_config);
+	if (IS_ERR(ddata->regmap)) {
+		return dev_err_probe(ddata->dev, PTR_ERR(ddata->regmap),
+				     "Failed to allocate register map\n");
+	}
+
+	ret =3D sony_cronos_get_device_type(ddata);
+	if (ret)
+		return ret;
+
+	ret =3D mfd_add_devices(ddata->dev, PLATFORM_DEVID_AUTO, cronos_smc_dev=
s,
+			      ARRAY_SIZE(cronos_smc_devs), NULL, 0, NULL);
+	if (ret) {
+		return dev_err_probe(ddata->dev, ret,
+				     "Failed to register child devices\n");
+	}
+
+	return ret;
+}
+
+static void sony_cronos_i2c_remove(struct i2c_client *i2c)
+{
+	struct sony_cronos_smc *ddata =3D i2c_get_clientdata(i2c);
+
+	mfd_remove_devices(ddata->dev);
+}
+
+static struct i2c_driver sony_cronos_i2c_driver =3D {
+	.driver =3D {
+		.name =3D "sony-cronos-smc",
+	},
+	.probe =3D sony_cronos_i2c_probe,
+	.remove =3D sony_cronos_i2c_remove,
+};
+module_i2c_driver(sony_cronos_i2c_driver);
+
+MODULE_DESCRIPTION("Device driver for the Sony Cronos system management =
controller");
+MODULE_AUTHOR("Raptor Engineering, LLC <tpearson@raptorengineering.com>"=
);
+MODULE_LICENSE("GPL");
+
diff --git a/include/linux/mfd/sony-cronos.h b/include/linux/mfd/sony-cro=
nos.h
new file mode 100644
index 000000000000..d82e46176bf7
--- /dev/null
+++ b/include/linux/mfd/sony-cronos.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2015-2017  Dialog Semiconductor
+ * Copyright (C) 2022  Raptor Engineering, LLC
+ */
+
+#ifndef __MFD_SONY_CRONOS_H__
+#define __MFD_SONY_CRONOS_H__
+
+#define CRONOS_SMC_DEVICE_ID				0x0134
+
+#define CRONOS_SMC_SWITCH_BOOT_FLASH_SELECT_REG		0x00
+#define CRONOS_SMC_SWITCH_RESET_CMD_REG			0x01
+#define CRONOS_SMC_BMC_BOOT_FLASH_SELECT_REG		0x02
+#define CRONOS_BMC_RESET_REG				0x03
+#define CRONOS_WDT_CLR_REG				0x03
+#define CRONOS_SMC_STATUS_2_REG				0x05
+#define CRONOS_SMC_PAYLOAD_POWER_CTL_REG		0x0a
+#define CRONOS_WDT_CTL_REG				0x0c
+#define CRONOS_SMC_UART_MUX_REG				0x0e
+
+#define CRONOS_SMC_BRIGHTNESS_RED_REG			0x17
+#define CRONOS_SMC_BRIGHTNESS_GREEN_REG			0x18
+#define CRONOS_SMC_BRIGHTNESS_BLUE_REG			0x19
+
+#define CRONOS_LEDS_SMC_STATUS_REG			0x10
+#define CRONOS_LEDS_SWITCH_STATUS_REG			0x11
+
+#define CRONOS_LEDS_CCM3_STATUS_REG			0x12
+#define CRONOS_LEDS_CCM2_STATUS_REG			0x13
+#define CRONOS_LEDS_CCM4_STATUS_REG			0x14
+#define CRONOS_LEDS_CCM1_STATUS_REG			0x15
+
+#define CRONOS_LEDS_CCM_POWER_REG			0x16
+
+#define CRONOS_SMC_BMC_MAC_LOW_REG			0x30
+#define CRONOS_SMC_BMC_MAC_HIGH_REG			0x35
+
+#define CRONOS_SMC_DEVICE_ID_LOW_REG			0x70
+#define CRONOS_SMC_DEVICE_ID_HIGH_REG			0x71
+#define CRONOS_SMC_REVISION_LOW_REG			0x72
+#define CRONOS_SMC_REVISION_HIGH_REG			0x73
+
+#define CRONOS_SMC_LEDS_BRIGHTNESS_SET_MASK		0x7F
+#define CRONOS_LEDS_MAX_BRIGHTNESS			0x7F
+
+#define CRONOS_BMC_RESET_VAL				0xc2
+
+#define CRONOS_WDT_CLR_VAL				0xc3
+#define CRONOS_WDT_ENABLE_MASK				0x80
+#define CRONOS_WDT_ENABLE_VAL				0x80
+#define CRONOS_WDT_DISABLE_VAL				0x00
+#define CRONOS_WDT_TIMEOUT_MASK				0x07
+#define CRONOS_WDT_CTL_RESET_VAL			0x00
+
+struct sony_cronos_smc {
+	struct device *dev;
+	struct regmap *regmap;
+};
+
+#endif /* __MFD_SONY_CRONOS_H__ */
--=20
2.39.5


