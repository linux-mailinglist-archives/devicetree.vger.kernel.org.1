Return-Path: <devicetree+bounces-36871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDBE842E76
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 22:08:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 089C91C24588
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE0C8129A90;
	Tue, 30 Jan 2024 21:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BDcdrutW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9587AE63;
	Tue, 30 Jan 2024 21:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706648821; cv=none; b=Zeu5rEuYd7vak/QwzlX9fYiKu6eHVqFgZ0Zq98UJ4B1VU79NyN8cISnhSpsN1Lp1k4DdwhNZKVwhzQYPsMnOl4nYW1V1ctUvzbIW7334A6zq03o4/MVO5dp3AoyuTB7lZU13QKlcSHjzaojK3V0wWtVa4f4aLOC0W4Lx+5VPso4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706648821; c=relaxed/simple;
	bh=+VoUQzlE3WS6+hzCS2DHp1tirunKoDbBVPpGcYyRzTM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VHOpCQ1FWybD5O/tMxu6qBQMHCbvjF5D9Qj+W5nCOyqzTgfuKqaNl20X7jSusq7Unfvs4OB2dLHr74FVZ8jDEL+Chg8SBG5N0fuBWiGHIFpqpKg8B1rxTiW9E/yNHsMYezx6crEtD0FrJUg++VOR0QKKqxbQJbwqiljoNZfyfCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BDcdrutW; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a271a28aeb4so556433066b.2;
        Tue, 30 Jan 2024 13:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706648817; x=1707253617; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2exZDG0g5Ieet+FmJl3JavYfviKzDHvPPGfR5ChVTVA=;
        b=BDcdrutWYt+QsfP+wVqhauwNftUHK7JBhA0SIc1hcw9fgp/yWrueyXQmQXQ0lwnX4i
         3sP6Jo+06Kw8cFrWhnUaWYgHQ6NBMTZLeNVoUDYPad8p1hxszUk2SeYBT8WehqTXmUSb
         +BJmXg1dpqxFpC4+c8yroU+UXl8dvOJIdCsLa0RGaAO9RIG9Y1gybQlIvq0Y6TVqbLw6
         vWYo7ORFYfoufGFTkmJ7vqg8qv469CTnBQNvmKvpMaV1z5BT6cXKcPRATfNxVDb3geC2
         4AJKgiuDv1zCd5UMgNCx5J8cdmXyGZb+nTveh+JkgS0yvfWEiS1Gk6Oa1WQJpakbTA6k
         CYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706648817; x=1707253617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2exZDG0g5Ieet+FmJl3JavYfviKzDHvPPGfR5ChVTVA=;
        b=s58dcm4+tMnRCksXKZiNQEzEJ/qMi79cle10PMuE5dn2jOVXLuDbpP8Zdd40WqB0GE
         2BX7eFk0ZPZ//j8ZcdtP/56CsO0JB/s7XMsuvuAmTuwZ8G9uVQtM/YR/iORDyVm0m8kO
         NvTbGUdMxvNzilzsFYrdXogiAE5jhRoEqgrlSve7cIB7DBBmJdyiydOmF77xPjfeiRmZ
         4uuOj1k/IXZBPRmprcAfA9INRrIEGcIKyQ0TpInsWlFXQk+jqH57pvJ/kNhUepaUTKeZ
         1BYMYc4r7gFZXLg4SHccKOuWwx0kPA/8W32LJRyM58JlQF78xrufQKBYztDHBsI0ZDsW
         4SKg==
X-Gm-Message-State: AOJu0YxFka4RS5DAo5XEoPgmpAUEz3O1ifrJJX6Mt53YkhvX7SaWaFIY
	EzjwPBxUs4nuXukgpJ2qB+FTnhsrQ/e86LzrfwFLQrXwoOeJVze2
X-Google-Smtp-Source: AGHT+IFR6uBLuVVyzMUpsP0g8sPnVmHMPJNcrP1wlQKL1M1Y6maHFx0qb08DI1FG3PqYQX/hqltofQ==
X-Received: by 2002:a17:906:b2d0:b0:a35:e524:c9a1 with SMTP id cf16-20020a170906b2d000b00a35e524c9a1mr3757956ejb.14.1706648816895;
        Tue, 30 Jan 2024 13:06:56 -0800 (PST)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-7400-ff68-7ab4-4169.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:7400:ff68:7ab4:4169])
        by smtp.gmail.com with ESMTPSA id vv9-20020a170907a68900b00a354a5d2c39sm4177658ejc.31.2024.01.30.13.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 13:06:56 -0800 (PST)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Tue, 30 Jan 2024 22:06:48 +0100
Subject: [PATCH v6 5/5] hwmon: Add support for Amphenol ChipCap 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240130-topic-chipcap2-v6-5-260bea05cf9b@gmail.com>
References: <20240130-topic-chipcap2-v6-0-260bea05cf9b@gmail.com>
In-Reply-To: <20240130-topic-chipcap2-v6-0-260bea05cf9b@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>, 
 Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-doc@vger.kernel.org, Javier Carrasco <javier.carrasco.cruz@gmail.com>
X-Mailer: b4 0.13-dev-0434a
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706648808; l=28260;
 i=javier.carrasco.cruz@gmail.com; s=20230509; h=from:subject:message-id;
 bh=+VoUQzlE3WS6+hzCS2DHp1tirunKoDbBVPpGcYyRzTM=;
 b=8Vvh6j9nYWNFCZ5hh4onfyLRWzvVm5PxOPCkmz7EJcxHz/keDSpT/E96/YWpQ771JtEpVvRmP
 kTW8ebICAvuDl0NDb46rm1yzXSPNi+KPIbsevMQB9cbYvTaVfSNmsE8
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=tIGJV7M+tCizagNijF0eGMBGcOsPD+0cWGfKjl4h6K8=

The Amphenol ChipCap 2 is a capacitive polymer humidity and temperature
sensor with an integrated EEPROM and minimum/maximum humidity alarms.

All device variants offer an I2C interface and depending on the part
number, two different output modes:
- CC2D: digital output
- CC2A: analog (PDM) output

This driver adds support for the digital variant (CC2D part numbers),
which includes the following part numbers:
- non-sleep measurement mode (CC2D23, CC2D25, CC2D33, CC2D35)
- sleep measurement mode (CC2D23S, CC2D25S, CC2D33S, CC2D35S)

The Chipcap 2 EEPROM can be accessed to configure a series of parameters
like the minimum/maximum humidity alarm threshold and hysteresis. The
EEPROM is only accessible in the command window after a power-on reset.
The default window lasts 10 ms if no Start_CM command is sent. After the
command window is finished (either after the mentioned timeout of after
a Start_NOM command is sent), the device enters the normal operation
mode and makes a first measurement automatically.

Unfortunately, the device does not provide any hardware or software
reset and therefore the driver must trigger power cycles to enter the
command mode. A dedicated, external regulator is required for that.

This driver keeps the device off until a measurement or access to the
EEPROM is required, making use of the first automatic measurement to
avoid different code paths for sleep and non-sleep devices.

The minimum and maximum humidity alarms are configured with two
registers per alarm: one stores the alarm threshold and the other one
keeps the value that turns off the alarm. The alarm signals are only
updated when a measurement is carried out.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 Documentation/hwmon/chipcap2.rst |  73 ++++
 Documentation/hwmon/index.rst    |   1 +
 MAINTAINERS                      |   8 +
 drivers/hwmon/Kconfig            |  10 +
 drivers/hwmon/Makefile           |   1 +
 drivers/hwmon/chipcap2.c         | 816 +++++++++++++++++++++++++++++++++++++++
 6 files changed, 909 insertions(+)

diff --git a/Documentation/hwmon/chipcap2.rst b/Documentation/hwmon/chipcap2.rst
new file mode 100644
index 000000000000..dc165becc64c
--- /dev/null
+++ b/Documentation/hwmon/chipcap2.rst
@@ -0,0 +1,73 @@
+.. SPDX-License-Identifier: GPL-2.0-or-later
+
+Kernel driver ChipCap2
+======================
+
+Supported chips:
+
+  * Amphenol CC2D23, CC2D23S, CC2D25, CC2D25S, CC2D33, CC2D33S, CC2D35, CC2D35S
+
+    Prefix: 'chipcap2'
+
+    Addresses scanned: -
+
+    Datasheet: https://www.amphenol-sensors.com/en/telaire/humidity/527-humidity-sensors/3095-chipcap-2
+
+Author:
+
+  - Javier Carrasco <javier.carrasco.cruz@gmail.com>
+
+Description
+-----------
+
+This driver implements support for the Amphenol ChipCap 2, a humidity and
+temperature chip family. Temperature is measured in milli degrees celsius,
+relative humidity is expressed as a per cent mille. The measurement ranges
+are the following:
+
+  - Relative humidity: 0 to 100000 pcm (14-bit resolution)
+  - Temperature: -40000 to +125000 m°C (14-bit resolution)
+
+The device communicates with the I2C protocol and uses the I2C address 0x28
+by default.
+
+Depending on the hardware configuration, up to two humidity alarms to control
+minimum and maximum values are provided. Their thresholds and hystersis can be
+configured via sysfs.
+
+Thresholds and hysteris must be provided as a per cent mille. These values
+might be truncated to match the 14-bit device resolution (6.1 pcm/LSB)
+
+Known Issues
+------------
+
+The driver does not support I2C address and command window length modification.
+
+sysfs-Interface
+---------------
+
+The following list includes the sysfs attributes that the driver always provides,
+their permissions and a short description:
+
+=============================== ======= ========================================
+Name                            Perm    Description
+=============================== ======= ========================================
+temp1_input:                    RO      temperature input
+humidity1_input:                RO      humidity input
+=============================== ======= ========================================
+
+The following list includes the sysfs attributes that the driver may provide
+depending on the hardware configuration:
+
+=============================== ======= ========================================
+Name                            Perm    Description
+=============================== ======= ========================================
+humidity1_min:                  RW      humidity low limit. Measurements under
+                                        this limit trigger a humidity low alarm
+humidity1_max:                  RW      humidity high limit. Measurements above
+                                        this limit trigger a humidity high alarm
+humidity1_min_hyst:             RW      humidity low hystersis
+humidity1_max_hyst:             RW      humidity high hystersis
+humidity1_min_alarm:            RO      humidity low alarm indicator
+humidity1_max_alarm:            RO      humidity high alarm indicator
+=============================== ======= ========================================
diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
index c7ed1f73ac06..99ba35f47868 100644
--- a/Documentation/hwmon/index.rst
+++ b/Documentation/hwmon/index.rst
@@ -51,6 +51,7 @@ Hardware Monitoring Kernel Drivers
    bel-pfe
    bpa-rs600
    bt1-pvt
+   chipcap2
    coretemp
    corsair-cpro
    corsair-psu
diff --git a/MAINTAINERS b/MAINTAINERS
index 8d1052fa6a69..e70231735f71 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1098,6 +1098,14 @@ F:	Documentation/devicetree/bindings/perf/amlogic,g12-ddr-pmu.yaml
 F:	drivers/perf/amlogic/
 F:	include/soc/amlogic/
 
+AMPHENOL CHIPCAP 2 HUMIDITY-TEMPERATURE IIO DRIVER
+M:	Javier Carrasco <javier.carrasco.cruz@gmail.com>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/hwmon/amphenol,chipcap2.yaml
+F:	Documentation/hwmon/chipcap2.rst
+F:	drivers/hwmon/chipcap2.c
+
 AMPHION VPU CODEC V4L2 DRIVER
 M:	Ming Qian <ming.qian@nxp.com>
 M:	Zhou Peng <eagle.zhou@nxp.com>
diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index a608264da87d..cb38f30411f7 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -452,6 +452,16 @@ config SENSORS_BT1_PVT_ALARMS
 	  the data conversion will be periodically performed and the data will be
 	  saved in the internal driver cache.
 
+config SENSORS_CHIPCAP2
+	tristate "Amphenol ChipCap 2 relative humidity and temperature sensor"
+	depends on I2C
+	help
+	  Say yes here to build support for the Amphenol ChipCap 2
+	  relative humidity and temperature sensor.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called chipcap2.
+
 config SENSORS_CORSAIR_CPRO
 	tristate "Corsair Commander Pro controller"
 	depends on HID
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 47be39af5c03..1ea4f42630fb 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_SENSORS_ASPEED)	+= aspeed-pwm-tacho.o
 obj-$(CONFIG_SENSORS_ATXP1)	+= atxp1.o
 obj-$(CONFIG_SENSORS_AXI_FAN_CONTROL) += axi-fan-control.o
 obj-$(CONFIG_SENSORS_BT1_PVT)	+= bt1-pvt.o
+obj-$(CONFIG_SENSORS_CHIPCAP2) += chipcap2.o
 obj-$(CONFIG_SENSORS_CORETEMP)	+= coretemp.o
 obj-$(CONFIG_SENSORS_CORSAIR_CPRO) += corsair-cpro.o
 obj-$(CONFIG_SENSORS_CORSAIR_PSU) += corsair-psu.o
diff --git a/drivers/hwmon/chipcap2.c b/drivers/hwmon/chipcap2.c
new file mode 100644
index 000000000000..a62c507b1042
--- /dev/null
+++ b/drivers/hwmon/chipcap2.c
@@ -0,0 +1,816 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * cc2.c - Support for the Amphenol ChipCap 2 relative humidity, temperature sensor
+ *
+ * Part numbers supported:
+ * CC2D23, CC2D23S, CC2D25, CC2D25S, CC2D33, CC2D33S, CC2D35, CC2D35S
+ *
+ * Author: Javier Carrasco <javier.carrasco.cruz@gmail.com>
+ *
+ * Datasheet and application notes:
+ * https://www.amphenol-sensors.com/en/telaire/humidity/527-humidity-sensors/3095-chipcap-2
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <linux/completion.h>
+#include <linux/delay.h>
+#include <linux/hwmon.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/regulator/consumer.h>
+
+#define CC2_START_CM			0xA0
+#define CC2_START_NOM			0x80
+#define CC2_R_ALARM_H_ON		0x18
+#define CC2_R_ALARM_H_OFF		0x19
+#define CC2_R_ALARM_L_ON		0x1A
+#define CC2_R_ALARM_L_OFF		0x1B
+#define CC2_RW_OFFSET			0x40
+#define CC2_W_ALARM_H_ON		(CC2_R_ALARM_H_ON + CC2_RW_OFFSET)
+#define CC2_W_ALARM_H_OFF		(CC2_R_ALARM_H_OFF + CC2_RW_OFFSET)
+#define CC2_W_ALARM_L_ON		(CC2_R_ALARM_L_ON + CC2_RW_OFFSET)
+#define CC2_W_ALARM_L_OFF		(CC2_R_ALARM_L_OFF + CC2_RW_OFFSET)
+
+#define CC2_STATUS_FIELD		GENMASK(7, 6)
+#define CC2_STATUS_VALID_DATA		0x00
+#define CC2_STATUS_STALE_DATA		0x01
+#define CC2_STATUS_CMD_MODE		0x02
+
+#define CC2_RESPONSE_FIELD		GENMASK(1, 0)
+#define CC2_RESPONSE_BUSY		0x00
+#define CC2_RESPONSE_ACK		0x01
+#define CC2_RESPONSE_NACK		0x02
+
+#define CC2_ERR_CORR_EEPROM		BIT(2)
+#define CC2_ERR_UNCORR_EEPROM		BIT(3)
+#define CC2_ERR_RAM_PARITY		BIT(4)
+#define CC2_ERR_CONFIG_LOAD		BIT(5)
+
+#define CC2_EEPROM_SIZE			10
+#define CC2_EEPROM_DATA_LEN		3
+#define CC2_MEASUREMENT_DATA_LEN	4
+
+#define CC2_RH_DATA_FIELD		GENMASK(13, 0)
+
+/* ensure clean off -> on transitions */
+#define CC2_POWER_CYCLE_MS		80
+
+#define CC2_STARTUP_TO_DATA_MS		55
+#define CC2_RESP_START_CM_US		100
+#define CC2_RESP_EEPROM_R_US		100
+#define CC2_RESP_EEPROM_W_MS		12
+#define CC2_STARTUP_TIME_US		1250
+
+#define CC2_RH_MAX			(100 * 1000U)
+
+#define CC2_CM_RETRIES			5
+
+struct cc2_rh_alarm_info {
+	bool low_alarm;
+	bool high_alarm;
+	bool low_alarm_visible;
+	bool high_alarm_visible;
+};
+
+struct cc2_data {
+	struct cc2_rh_alarm_info rh_alarm;
+	struct completion complete;
+	struct device *hwmon;
+	struct i2c_client *client;
+	struct mutex dev_access_lock; /* device access lock */
+	struct regulator *regulator;
+	const char *name;
+	int irq_ready;
+	int irq_low;
+	int irq_high;
+	bool process_irqs;
+};
+
+enum cc2_chan_addr {
+	CC2_CHAN_TEMP = 0,
+	CC2_CHAN_HUMIDITY,
+};
+
+/* %RH as a per cent mille from a register value */
+static long cc2_rh_convert(u16 data)
+{
+	unsigned long tmp = (data & CC2_RH_DATA_FIELD) * CC2_RH_MAX;
+
+	return tmp / ((1 << 14) - 1);
+}
+
+/* convert %RH to a register value */
+static u16 cc2_rh_to_reg(long data)
+{
+	return data * ((1 << 14) - 1) / CC2_RH_MAX;
+}
+
+/* temperature in milli degrees celsius from a register value */
+static long cc2_temp_convert(u16 data)
+{
+	unsigned long tmp = ((data >> 2) * 165 * 1000U) / ((1 << 14) - 1);
+
+	return tmp - 40 * 1000U;
+}
+
+static int cc2_enable(struct cc2_data *data)
+{
+	int ret;
+
+	/* exclusive regulator, check in case a disable failed */
+	if (regulator_is_enabled(data->regulator))
+		return 0;
+
+	/* clear any pending completion */
+	try_wait_for_completion(&data->complete);
+
+	ret = regulator_enable(data->regulator);
+	if (ret < 0)
+		return ret;
+
+	usleep_range(CC2_STARTUP_TIME_US, CC2_STARTUP_TIME_US + 125);
+
+	data->process_irqs = true;
+
+	return 0;
+}
+
+static void cc2_disable(struct cc2_data *data)
+{
+	int err;
+
+	/* ignore alarms triggered by voltage toggling when powering up */
+	data->process_irqs = false;
+
+	/* exclusive regulator, check in case an enable failed */
+	if (regulator_is_enabled(data->regulator)) {
+		err = regulator_disable(data->regulator);
+		if (err)
+			dev_dbg(&data->client->dev, "Failed to disable device");
+	}
+}
+
+static int cc2_cmd_response_diagnostic(struct device *dev, u8 status)
+{
+	int resp;
+
+	if (FIELD_GET(CC2_STATUS_FIELD, status) != CC2_STATUS_CMD_MODE) {
+		dev_dbg(dev, "Command sent out of command window\n");
+		return -ETIMEDOUT;
+	}
+
+	resp = FIELD_GET(CC2_RESPONSE_FIELD, status);
+	switch (resp) {
+	case CC2_RESPONSE_ACK:
+		return 0;
+	case CC2_RESPONSE_BUSY:
+		return -EBUSY;
+	case CC2_RESPONSE_NACK:
+		if (resp & CC2_ERR_CORR_EEPROM)
+			dev_dbg(dev, "Command failed: corrected EEPROM\n");
+		if (resp & CC2_ERR_UNCORR_EEPROM)
+			dev_dbg(dev, "Command failed: uncorrected EEPROM\n");
+		if (resp & CC2_ERR_RAM_PARITY)
+			dev_dbg(dev, "Command failed: RAM parity\n");
+		if (resp & CC2_ERR_RAM_PARITY)
+			dev_dbg(dev, "Command failed: configuration error\n");
+		return -ENODATA;
+	default:
+		dev_dbg(dev, "Unknown command reply\n");
+		return -EINVAL;
+	}
+}
+
+static int cc2_read_command_status(struct i2c_client *client)
+{
+	u8 status;
+	int ret;
+
+	ret = i2c_master_recv(client, &status, 1);
+	if (ret != 1) {
+		ret = ret < 0 ? ret : -EIO;
+		return ret;
+	}
+
+	return cc2_cmd_response_diagnostic(&client->dev, status);
+}
+
+/*
+ * The command mode is only accessible after sending the START_CM command in the
+ * first 10 ms after power-up. Only in case the command window is missed,
+ * CC2_CM_RETRIES retries are attempted before giving up and returning an error.
+ */
+static int cc2_command_mode_start(struct cc2_data *data)
+{
+	unsigned long timeout;
+	int i, ret;
+
+	for (i = 0; i < CC2_CM_RETRIES; i++) {
+		ret = cc2_enable(data);
+		if (ret < 0)
+			return ret;
+
+		ret = i2c_smbus_write_word_data(data->client, CC2_START_CM, 0);
+		if (ret < 0)
+			return ret;
+
+		if (data->irq_ready > 0) {
+			timeout = usecs_to_jiffies(2 * CC2_RESP_START_CM_US);
+			ret = wait_for_completion_timeout(&data->complete,
+							  timeout);
+			if (!ret)
+				return -ETIMEDOUT;
+		} else {
+			usleep_range(CC2_RESP_START_CM_US,
+				     2 * CC2_RESP_START_CM_US);
+		}
+		ret = cc2_read_command_status(data->client);
+		if (ret != -ETIMEDOUT || i == CC2_CM_RETRIES)
+			break;
+
+		/* command window missed, prepare for a retry */
+		cc2_disable(data);
+		msleep(CC2_POWER_CYCLE_MS);
+	}
+
+	return ret;
+}
+
+/* Sending a Start_NOM command finishes the command mode immediately with no
+ * reply and the device enters normal operation mode
+ */
+static int cc2_command_mode_finish(struct cc2_data *data)
+{
+	int ret;
+
+	ret = i2c_smbus_write_word_data(data->client, CC2_START_NOM, 0);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int cc2_write_reg(struct cc2_data *data, u8 reg, u16 val)
+{
+	unsigned long timeout;
+	int ret;
+
+	ret = cc2_command_mode_start(data);
+	if (ret < 0)
+		goto disable;
+
+	cpu_to_be16s(&val);
+	ret = i2c_smbus_write_word_data(data->client, reg, val);
+	if (ret < 0)
+		goto disable;
+
+	if (data->irq_ready > 0) {
+		timeout = msecs_to_jiffies(2 * CC2_RESP_EEPROM_W_MS);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret) {
+			ret = -ETIMEDOUT;
+			goto disable;
+		}
+	} else {
+		msleep(CC2_RESP_EEPROM_W_MS);
+	}
+
+	ret = cc2_read_command_status(data->client);
+
+disable:
+	cc2_disable(data);
+
+	return ret;
+}
+
+static int cc2_read_reg(struct cc2_data *data, u8 reg, u16 *val)
+{
+	u8 buf[CC2_EEPROM_DATA_LEN];
+	unsigned long timeout;
+	int ret;
+
+	ret = cc2_command_mode_start(data);
+	if (ret < 0)
+		return ret;
+
+	ret = i2c_smbus_write_word_data(data->client, reg, 0);
+	if (ret < 0)
+		return ret;
+
+	if (data->irq_ready > 0) {
+		timeout = usecs_to_jiffies(2 * CC2_RESP_EEPROM_R_US);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+
+	} else {
+		usleep_range(CC2_RESP_EEPROM_R_US, CC2_RESP_EEPROM_R_US + 10);
+	}
+	ret = i2c_master_recv(data->client, buf, CC2_EEPROM_DATA_LEN);
+	if (ret != CC2_EEPROM_DATA_LEN)
+		return ret < 0 ? ret : -EIO;
+
+	*val = be16_to_cpup((__be16 *)&buf[1]);
+
+	return cc2_read_command_status(data->client);
+}
+
+static int cc2_get_reg_val(struct cc2_data *data, u8 reg, long *val)
+{
+	u16 reg_val;
+	int ret;
+
+	ret = cc2_read_reg(data, reg, &reg_val);
+	*val = cc2_rh_convert(reg_val);
+	cc2_disable(data);
+
+	return ret;
+}
+
+static int cc2_data_fetch(struct i2c_client *client,
+			  enum hwmon_sensor_types type, long *val)
+{
+	u8 data[CC2_MEASUREMENT_DATA_LEN];
+	u8 status;
+	int ret;
+
+	ret = i2c_master_recv(client, data, CC2_MEASUREMENT_DATA_LEN);
+	if (ret != CC2_MEASUREMENT_DATA_LEN) {
+		ret = ret < 0 ? ret : -EIO;
+		return ret;
+	}
+	status = FIELD_GET(CC2_STATUS_FIELD, data[0]);
+	if (status == CC2_STATUS_STALE_DATA)
+		return -EBUSY;
+
+	if (status != CC2_STATUS_VALID_DATA)
+		return -EIO;
+
+	switch (type) {
+	case hwmon_humidity:
+		*val = cc2_rh_convert(be16_to_cpup((__be16 *)&data[0]));
+		break;
+	case hwmon_temp:
+		*val = cc2_temp_convert(be16_to_cpup((__be16 *)&data[2]));
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int cc2_read_measurement(struct cc2_data *data,
+				enum hwmon_sensor_types type, long *val)
+{
+	unsigned long timeout;
+	int ret;
+
+	if (data->irq_ready > 0) {
+		timeout = msecs_to_jiffies(CC2_STARTUP_TO_DATA_MS * 2);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+
+	} else {
+		msleep(CC2_STARTUP_TO_DATA_MS);
+	}
+
+	ret = cc2_data_fetch(data->client, type, val);
+
+	return ret;
+}
+
+/*
+ * A measurement requires enabling the device, waiting for the automatic
+ * measurement to finish, reading the measurement data and disabling the device
+ * again.
+ */
+static int cc2_measurement(struct cc2_data *data, enum hwmon_sensor_types type,
+			   long *val)
+{
+	int ret;
+
+	ret = cc2_enable(data);
+	if (ret)
+		return ret;
+
+	ret = cc2_read_measurement(data, type, val);
+
+	cc2_disable(data);
+
+	return ret;
+}
+
+/*
+ * In order to check alarm status, the corresponding ALARM_OFF (hysteresis)
+ * register must be read and a new measurement must be carried out to trigger
+ * the alarm signals. Given that the device carries out a measurement after
+ * exiting the command mode, there is no need to force two power-up sequences.
+ * Instead, a NOM command is sent and the device is disabled after the
+ * measurement is read.
+ */
+static int cc2_read_hyst_and_measure(struct cc2_data *data, u8 reg,
+				     long *hyst, long *measurement)
+{
+	u16 reg_val;
+	int ret;
+
+	ret = cc2_read_reg(data, reg, &reg_val);
+	if (ret)
+		goto disable;
+
+	*hyst = cc2_rh_convert(reg_val);
+
+	ret = cc2_command_mode_finish(data);
+	if (ret)
+		goto disable;
+
+	ret = cc2_read_measurement(data, hwmon_humidity, measurement);
+
+disable:
+	cc2_disable(data);
+
+	return ret;
+}
+
+static umode_t cc2_is_visible(const void *data, enum hwmon_sensor_types type,
+			      u32 attr, int channel)
+{
+	const struct cc2_data *cc2 = data;
+
+	switch (type) {
+	case hwmon_humidity:
+		switch (attr) {
+		case hwmon_humidity_input:
+			return 0444;
+		case hwmon_humidity_min_alarm:
+			return cc2->rh_alarm.low_alarm_visible ? 0444 : 0;
+		case hwmon_humidity_max_alarm:
+			return cc2->rh_alarm.high_alarm_visible ? 0444 : 0;
+		case hwmon_humidity_min:
+		case hwmon_humidity_min_hyst:
+			return cc2->rh_alarm.low_alarm_visible ? 0644 : 0;
+		case hwmon_humidity_max:
+		case hwmon_humidity_max_hyst:
+			return cc2->rh_alarm.high_alarm_visible ? 0644 : 0;
+		default:
+			return 0;
+		}
+	case hwmon_temp:
+		switch (attr) {
+		case hwmon_temp_input:
+			return 0444;
+		default:
+			return 0;
+		}
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+static irqreturn_t cc2_ready_interrupt(int irq, void *data)
+{
+	struct cc2_data *cc2 = data;
+
+	if (cc2->process_irqs)
+		complete(&cc2->complete);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t cc2_low_interrupt(int irq, void *data)
+{
+	struct cc2_data *cc2 = data;
+
+	if (cc2->process_irqs) {
+		hwmon_notify_event(cc2->hwmon, hwmon_humidity,
+				   hwmon_humidity_min_alarm, CC2_CHAN_HUMIDITY);
+		cc2->rh_alarm.low_alarm = true;
+	}
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t cc2_high_interrupt(int irq, void *data)
+{
+	struct cc2_data *cc2 = data;
+
+	if (cc2->process_irqs) {
+		hwmon_notify_event(cc2->hwmon, hwmon_humidity,
+				   hwmon_humidity_max_alarm, CC2_CHAN_HUMIDITY);
+		cc2->rh_alarm.high_alarm = true;
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int cc2_humidity_min_alarm_status(struct cc2_data *data, long *val)
+{
+	long measurement, min_hyst;
+	int ret;
+
+	ret = cc2_read_hyst_and_measure(data, CC2_R_ALARM_L_OFF, &min_hyst,
+					&measurement);
+	if (ret < 0)
+		return ret;
+
+	if (data->rh_alarm.low_alarm) {
+		*val = (measurement < min_hyst) ? 1 : 0;
+		data->rh_alarm.low_alarm = *val;
+	} else {
+		*val = 0;
+	}
+
+	return 0;
+}
+
+static int cc2_humidity_max_alarm_status(struct cc2_data *data, long *val)
+{
+	long measurement, max_hyst;
+	int ret;
+
+	ret = cc2_read_hyst_and_measure(data, CC2_R_ALARM_H_OFF, &max_hyst,
+					&measurement);
+	if (ret < 0)
+		return ret;
+
+	if (data->rh_alarm.high_alarm) {
+		*val = (measurement > max_hyst) ? 1 : 0;
+		data->rh_alarm.high_alarm = *val;
+	} else {
+		*val = 0;
+	}
+
+	return 0;
+}
+
+static int cc2_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+		    int channel, long *val)
+{
+	struct cc2_data *data = dev_get_drvdata(dev);
+	int ret = 0;
+
+	mutex_lock(&data->dev_access_lock);
+
+	switch (type) {
+	case hwmon_temp:
+		ret = cc2_measurement(data, type, val);
+		break;
+	case hwmon_humidity:
+		switch (attr) {
+		case hwmon_humidity_input:
+			ret = cc2_measurement(data, type, val);
+			break;
+		case hwmon_humidity_min:
+			ret = cc2_get_reg_val(data, CC2_R_ALARM_L_ON, val);
+			break;
+		case hwmon_humidity_min_hyst:
+			ret = cc2_get_reg_val(data, CC2_R_ALARM_L_OFF, val);
+			break;
+		case hwmon_humidity_max:
+			ret = cc2_get_reg_val(data, CC2_R_ALARM_H_ON, val);
+			break;
+		case hwmon_humidity_max_hyst:
+			ret = cc2_get_reg_val(data, CC2_R_ALARM_H_OFF, val);
+			break;
+		case hwmon_humidity_min_alarm:
+			ret = cc2_humidity_min_alarm_status(data, val);
+			break;
+		case hwmon_humidity_max_alarm:
+			ret = cc2_humidity_max_alarm_status(data, val);
+			break;
+		default:
+			ret = -EOPNOTSUPP;
+		}
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+	}
+
+	mutex_unlock(&data->dev_access_lock);
+
+	return ret;
+}
+
+static int cc2_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+		     int channel, long val)
+{
+	struct cc2_data *data = dev_get_drvdata(dev);
+	int ret;
+	u16 arg;
+	u8 cmd;
+
+	if (type != hwmon_humidity)
+		return -EOPNOTSUPP;
+
+	if (val < 0 || val > CC2_RH_MAX)
+		return -EINVAL;
+
+	mutex_lock(&data->dev_access_lock);
+
+	switch (attr) {
+	case hwmon_humidity_min:
+		cmd = CC2_W_ALARM_L_ON;
+		arg = cc2_rh_to_reg(val);
+		ret = cc2_write_reg(data, cmd, arg);
+		break;
+
+	case hwmon_humidity_min_hyst:
+		cmd = CC2_W_ALARM_L_OFF;
+		arg = cc2_rh_to_reg(val);
+		ret = cc2_write_reg(data, cmd, arg);
+		break;
+
+	case hwmon_humidity_max:
+		cmd = CC2_W_ALARM_H_ON;
+		arg = cc2_rh_to_reg(val);
+		ret = cc2_write_reg(data, cmd, arg);
+		break;
+
+	case hwmon_humidity_max_hyst:
+		cmd = CC2_W_ALARM_H_OFF;
+		arg = cc2_rh_to_reg(val);
+		ret = cc2_write_reg(data, cmd, arg);
+		break;
+
+	default:
+		ret = -EOPNOTSUPP;
+		break;
+	}
+
+	mutex_unlock(&data->dev_access_lock);
+
+	return ret;
+}
+
+static int cc2_request_ready_irq(struct cc2_data *data, struct device *dev)
+{
+	int ret = 0;
+
+	data->irq_ready = fwnode_irq_get_byname(dev_fwnode(dev), "ready");
+	if (data->irq_ready > 0) {
+		init_completion(&data->complete);
+		ret = devm_request_threaded_irq(dev, data->irq_ready, NULL,
+						cc2_ready_interrupt,
+						IRQF_ONESHOT |
+						IRQF_TRIGGER_RISING,
+						dev_name(dev), data);
+	}
+
+	return ret;
+}
+
+static int cc2_request_alarm_irqs(struct cc2_data *data, struct device *dev)
+{
+	int ret;
+
+	data->irq_low = fwnode_irq_get_byname(dev_fwnode(dev), "low");
+	if (data->irq_low > 0) {
+		ret = devm_request_threaded_irq(dev, data->irq_low, NULL,
+						cc2_low_interrupt,
+						IRQF_ONESHOT |
+						IRQF_TRIGGER_RISING,
+						dev_name(dev), data);
+		if (!ret)
+			data->rh_alarm.low_alarm_visible = true;
+	}
+
+	data->irq_high = fwnode_irq_get_byname(dev_fwnode(dev), "high");
+	if (data->irq_high > 0) {
+		ret = devm_request_threaded_irq(dev, data->irq_high, NULL,
+						cc2_high_interrupt,
+						IRQF_ONESHOT |
+						IRQF_TRIGGER_RISING,
+						dev_name(dev), data);
+		if (!ret)
+			data->rh_alarm.high_alarm_visible = true;
+	}
+
+	return ret;
+}
+
+static const struct hwmon_channel_info *cc2_info[] = {
+	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
+	HWMON_CHANNEL_INFO(humidity, HWMON_H_INPUT | HWMON_H_MIN | HWMON_H_MAX |
+			   HWMON_H_MIN_HYST | HWMON_H_MAX_HYST |
+			   HWMON_H_MIN_ALARM | HWMON_H_MAX_ALARM),
+	NULL
+};
+
+static const struct hwmon_ops cc2_hwmon_ops = {
+	.is_visible = cc2_is_visible,
+	.read = cc2_read,
+	.write = cc2_write,
+};
+
+static const struct hwmon_chip_info cc2_chip_info = {
+	.ops = &cc2_hwmon_ops,
+	.info = cc2_info,
+};
+
+static int cc2_probe(struct i2c_client *client)
+{
+	struct cc2_data *data;
+	struct device *dev = &client->dev;
+	int ret;
+
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
+		return -EOPNOTSUPP;
+
+	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, data);
+
+	mutex_init(&data->dev_access_lock);
+
+	data->client = client;
+
+	data->regulator = devm_regulator_get_exclusive(dev, "vdd");
+	if (IS_ERR(data->regulator)) {
+		dev_err_probe(dev, PTR_ERR(data->regulator),
+			      "Failed to get regulator\n");
+		return PTR_ERR(data->regulator);
+	}
+
+	ret = cc2_request_ready_irq(data, dev);
+	if (ret) {
+		dev_err_probe(dev, ret, "Failed to request ready irq\n");
+		return ret;
+	}
+
+	ret = cc2_request_alarm_irqs(data, dev);
+	if (ret) {
+		dev_err_probe(dev, ret, "Failed to request alarm irqs\n");
+		goto disable;
+	}
+
+	data->hwmon = devm_hwmon_device_register_with_info(dev, client->name,
+							   data, &cc2_chip_info,
+							   NULL);
+	if (IS_ERR(data->hwmon)) {
+		dev_err_probe(dev, PTR_ERR(data->hwmon),
+			      "Failed to register hwmon device\n");
+		ret = PTR_ERR(data->hwmon);
+	}
+
+disable:
+	cc2_disable(data);
+
+	return ret;
+}
+
+static void cc2_remove(struct i2c_client *client)
+{
+	struct cc2_data *data = i2c_get_clientdata(client);
+
+	cc2_disable(data);
+}
+
+static const struct i2c_device_id cc2_id[] = {
+	{ "cc2d23" },
+	{ "cc2d23s" },
+	{ "cc2d25" },
+	{ "cc2d25s" },
+	{ "cc2d33" },
+	{ "cc2d33s" },
+	{ "cc2d35" },
+	{ "cc2d35s" },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, cc2_id);
+
+static const struct of_device_id cc2_of_match[] = {
+	{ .compatible = "amphenol,cc2d23" },
+	{ .compatible = "amphenol,cc2d23s" },
+	{ .compatible = "amphenol,cc2d25" },
+	{ .compatible = "amphenol,cc2d25s" },
+	{ .compatible = "amphenol,cc2d33" },
+	{ .compatible = "amphenol,cc2d33s" },
+	{ .compatible = "amphenol,cc2d35" },
+	{ .compatible = "amphenol,cc2d35s" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, cc2_of_match);
+
+static struct i2c_driver cc2_driver = {
+	.driver = {
+		.name	= "cc2d23",
+		.of_match_table = cc2_of_match,
+	},
+	.probe		= cc2_probe,
+	.remove		= cc2_remove,
+	.id_table = cc2_id,
+};
+module_i2c_driver(cc2_driver);
+
+MODULE_AUTHOR("Javier Carrasco <javier.carrasco.cruz@gamil.com>");
+MODULE_DESCRIPTION("Amphenol ChipCap 2 humidity and temperature sensor driver");
+MODULE_LICENSE("GPL");

-- 
2.39.2


