Return-Path: <devicetree+bounces-252127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E4FCFB79A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:31:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F102304B05E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99DC1DE8AE;
	Wed,  7 Jan 2026 00:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="te8mA+Kn"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E83E1DB125;
	Wed,  7 Jan 2026 00:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767745790; cv=none; b=sYhzV8s+FkH+mN8fi6msy3l/eOM3FAobHXAG3Ut/U7Dh/JH2WyK4Gdnq3qAqwZ8GtLminZDoxo4BBIulL6s+Iq2D0/H0q5DwBusj7W8GewOJ1syBRrWGLaQW99jiMmn5Wj2ZCLjDimsBWNRZCqmXBJlL8X/63/oRJ9M0vF7fWz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767745790; c=relaxed/simple;
	bh=/rW86MyJ+k1RhvKF+k7h41+pUp+n/FD8SHfL+nVBNEE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=acFVcd/DVVQ8s1X/qPYRs7WDHUddFh1CLdofZjY5+Ld0JRXC7IR8zvElv6T1UnUXm9JBatckX+/urYyP22JO202cgXDlsqyUQAlDizPkc6x8u71bmSNe6FiaLgnCv+ms0dL7/c9PjZSarNctK4vx347sj5d1axikTaiL37IgmjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=te8mA+Kn; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 4799C7790ECB;
	Tue,  6 Jan 2026 18:21:48 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id zhPaUkZsWHuN; Tue,  6 Jan 2026 18:21:47 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id F250D7791C4A;
	Tue,  6 Jan 2026 18:21:46 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com F250D7791C4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767745307; bh=Lo9L5BR4Bz3QZWy6HvXwodlToEiISZrU839th4Vw27I=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=te8mA+KniJPU8hYql5cViAwVGWlusc4eZKKoFv1HW/1Y9aSeR6McEXruxecXA9ln7
	 Z/s+v+nm/kJCSMLtaK9HUeeE55K0JpuvmTLr3ELGy5w3SXbPdpniQgWbQjLfwnbNSB
	 nja/jGOfA6TXO+E7tHXSpVIVpp8QajnyuWYjHGqI=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id MxyotaNr-xSu; Tue,  6 Jan 2026 18:21:46 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id B61F57790ECB;
	Tue,  6 Jan 2026 18:21:46 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v6 2/4] mfd: sony-cronos-smc: Add driver for Sony Cronos SMC
Date: Tue,  6 Jan 2026 18:21:34 -0600
Message-Id: <20260107002136.3121607-3-tpearson@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260107002136.3121607-1-tpearson@raptorengineering.com>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

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
 drivers/mfd/sony-cronos-smc.c   | 212 ++++++++++++++++++++++++++++++++
 include/linux/mfd/sony-cronos.h |  61 +++++++++
 5 files changed, 293 insertions(+)
 create mode 100644 drivers/mfd/sony-cronos-smc.c
 create mode 100644 include/linux/mfd/sony-cronos.h

diff --git a/MAINTAINERS b/MAINTAINERS
index a0dd762f5648..b5860a5dd7d7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24281,6 +24281,13 @@ S:	Maintained
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
index 000000000000..9d9b5402f89b
--- /dev/null
+++ b/drivers/mfd/sony-cronos-smc.c
@@ -0,0 +1,212 @@
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
+static const struct of_device_id cronos_smc_dt_ids[] =3D {
+	{
+		.compatible =3D "sony,cronos-smc",
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, cronos_smc_dt_ids);
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
+		dev_err(ddata->dev, "Failed to register child devices\n");
+		return ret;
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
+		.of_match_table =3D of_match_ptr(cronos_smc_dt_ids),
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
\ No newline at end of file
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


