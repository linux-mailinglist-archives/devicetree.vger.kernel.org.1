Return-Path: <devicetree+bounces-22885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AC88091BF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F6C41F21164
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 19:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E490B4F8BA;
	Thu,  7 Dec 2023 19:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CxoHHOm1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D15731709;
	Thu,  7 Dec 2023 11:45:05 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9e1021dbd28so175746566b.3;
        Thu, 07 Dec 2023 11:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701978304; x=1702583104; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YG7VsL3J9QFVr4dF5/pC07IDiEA7ZKy8wIX2cT6cZkA=;
        b=CxoHHOm1y4SyYkNPc+pZGTKSTSihRvGNTedi9jgKtCukVt/gCU86ymP8bzxxm0H/b9
         pw3dyOFQU2tbNHYlnCyYCyJM/jDrpkSysc1YJ0beBItTdEBHoAtW90nCsTazNhOX65Us
         gtwpor+CSrs0g05XkTj2k8mcWlxt2XK6Fqif9ZTGrSXIc9BghbSXSLRJU+aUKxVmUiWY
         doQh8Iq+iutPJeCp2OwcQkFUgxWg3k33YLKbPAH9EqkQ+NYgM21WLUKC8fJo1gmLlyZ5
         /qmprEvZ+nSiUZAjJ6xQUAeu38y6DGBg5iskyNKgPxpx5TezBitXZ76gb8w+ldk2cVl4
         ZYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701978304; x=1702583104;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YG7VsL3J9QFVr4dF5/pC07IDiEA7ZKy8wIX2cT6cZkA=;
        b=XE2W45Nsu4wryPE9eq/hDsFLNdVCJ/IiXI6sS6OhyBr6eL/mWV12IDnKmjXmBHG7Tf
         Lw8rVgIjtUrIyJOv9bGXKuuFr3J0T0LaQAL7KgG4gjI3JXhp/UMltlpTGZiTWpAbqFh3
         6zpFIPHM7ODEhfEmUFAwc/sEwtlx7yCFF3bI0MsLHr0dE+Yr3+jOD8h2EYd4zrs5dRY4
         bU2NHwUbSf8SFADe/cHDxD36ZOZbdh8fwBRQQjDviGFrNtpxcvWHEk/4KkzcSevLIo1S
         L80gWzQTpGHmpqkfN9DgYAcKafHpEziDqdzjM8baD/FwsxkHNGPe9/TNhQXT04EWut6r
         SmKQ==
X-Gm-Message-State: AOJu0YzGp+eY8BSHlcEO7uXU4F7DybBoOFqlDmG6WaPZ240Siv+igGQn
	FDaqfW4wG+vPtULQJDlDZA/QM8rZH9QeWw==
X-Google-Smtp-Source: AGHT+IHlTNdpnfVBGtNYEZQwewPdqqqe7QuyfF02bLnD5sOaM0Feix6P0G0uP9jXKj8pN50OuNdxeQ==
X-Received: by 2002:a17:907:ca1d:b0:a1d:67c:6bd6 with SMTP id uk29-20020a170907ca1d00b00a1d067c6bd6mr1668133ejc.115.1701978303594;
        Thu, 07 Dec 2023 11:45:03 -0800 (PST)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-1de9-f6cf-eef8-174f.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:1de9:f6cf:eef8:174f])
        by smtp.gmail.com with ESMTPSA id rr17-20020a170907899100b00a1d457954d6sm127364ejc.75.2023.12.07.11.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 11:45:03 -0800 (PST)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Thu, 07 Dec 2023 20:44:55 +0100
Subject: [PATCH v3 5/5] hwmon: Add support for Amphenol ChipCap 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231020-topic-chipcap2-v3-5-5b3bb50a5f0b@gmail.com>
References: <20231020-topic-chipcap2-v3-0-5b3bb50a5f0b@gmail.com>
In-Reply-To: <20231020-topic-chipcap2-v3-0-5b3bb50a5f0b@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>, 
 Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-doc@vger.kernel.org, Javier Carrasco <javier.carrasco.cruz@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701978294; l=36561;
 i=javier.carrasco.cruz@gmail.com; s=20230509; h=from:subject:message-id;
 bh=rD61Med5KtdfpnlLHIHQn9jDX7Vmx+ZnsGuqT/sgxfA=;
 b=vhMLkJ9+UAJ6ijW52cqzOFLCgEMnr0P2Mt6h7Ttm5XMlkXqgoMOIRIzvOjUGqV7ktMsZdOa9l
 t0l61KY+YrFCb63Why72FMUzq8f6Ktye8lnjqniYkJAhpi83qpGfYPZ
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=tIGJV7M+tCizagNijF0eGMBGcOsPD+0cWGfKjl4h6K8=

The Amphenol ChipCap 2 is a capacitive polymer humidity and temperature
sensor with an integrated EEPROM and minimum/maximum humidity alarms.

All device variants offer an I2C interface and depending on the part
number, two different output modes:
- CC2D: digital output
- CC2A: analog (PDM) output

This driver adds support for the digital variant (CC2D part numbers),
which is also divided into two subfamilies [1]:
- non-sleep measurement mode (CC2D23, CC2D25, CC2D33, CC2D35)
- sleep measurement mode (CC2D23S, CC2D25S, CC2D33S, CC2D35S)

The only difference between them is that the non-sleep parts carry out
measurements periodically, whereas the sleep counterparts require the
user to trigger each measurement, staying in sleep mode otherwise to
increase power savings.

The Chipcap 2 EEPROM can be accessed to configure a series of parameters
like the minimum/maximum humidity alarm threshold and hysteresis. The
EEPROM is only accessible in the command window after a power-on reset.
The default window lasts 10 ms if no Start_CM command is sent. After the
command window is finished (either after the mentioned timeout of after
a Start_NOM command is sent), the device enters the normal operation
mode and makes a first measurement automatically.

Unfortunately, the device does not provide any hardware or software
reset and therefore the driver must trigger power cycles to enter the
command mode. An external regulator is required for that and if it is
not available, the driver cannot configure the alarms and it must limit
the device operation to humidity and temperature measurements.

Given the high cost of accessing the command mode, an EEPROM read is
made in the probe function and the alarm parameters are stored for
further readings, only accessing the command mode again to overwrite
those parameters.

The measurement process makes use of the ready signal if available,
using maximum delay values from the datasheet otherwise. In non-sleep
mode, a single "data fetch" command is required to read the measurements
and no trigger is required. Sleep devices require an additional
"measurement request" command to trigger the measurement, followed by a
data fetch to retrieve the measured values. In both cases the ready
signal goes high when valid data can be fetched. The ready signal stays
high until the data is retrieved even if further measurements are made.

The minimum and maximum humidity alarms can be configured with two
registers per alarm: one stores the alarm threshold and the other one
keeps the value that turns off the alarm. Note that the second register
stores an absolute value and not the hysteresis. The hysteresis is
therefore obtained as a subtraction of the two registers.
The alarm signals are only updated when a measurement is carried out.
Sleep mode devices will not trigger their alarms until a measurement
is requested.

This driver has been tested with a sleep device and the non-sleep
mechanism has been inferred from the common behavior after power-on
reset explained above, where a first measurement is made without user
intervention. Therefore there is no guarantee that no adjustments in
the measurement function will be required if the driver ever controls
a non-sleep device.

[1] Note that the measurement mode is programmed in the manufacturing
process. The datasheet mentions the name of the register and exact bit
to set the measurement mode, but no addresses are provided and according
to the manufacturer, it is not modifiable by the user.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 Documentation/hwmon/chipcap2.rst |   73 +++
 Documentation/hwmon/index.rst    |    1 +
 MAINTAINERS                      |    8 +
 drivers/hwmon/Kconfig            |   10 +
 drivers/hwmon/Makefile           |    1 +
 drivers/hwmon/chipcap2.c         | 1040 ++++++++++++++++++++++++++++++++++++++
 6 files changed, 1133 insertions(+)

diff --git a/Documentation/hwmon/chipcap2.rst b/Documentation/hwmon/chipcap2.rst
new file mode 100644
index 000000000000..35a968aaac4e
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
+This driver implements support for the Amphenol ChipCap 2 chips, a humidity
+and temperature family. Temperature is measured in milli degrees celsius,
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
index 72f4e6065bae..35f7573b4822 100644
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
index 788be9ab5b73..88eec0adec49 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1086,6 +1086,14 @@ F:	Documentation/devicetree/bindings/perf/amlogic,g12-ddr-pmu.yaml
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
index cf27523eed5a..11b133ef2384 100644
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
index e84bd9685b5c..daf0acef1482 100644
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
index 000000000000..d5f8bce2b921
--- /dev/null
+++ b/drivers/hwmon/chipcap2.c
@@ -0,0 +1,1040 @@
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
+#define CC2_DEV_NAME "chipcap2"
+
+#define CC2_START_CM			0xA0
+#define CC2_START_NOM			0x80
+#define CC2_R_ALARM_HIGH_ON		0x18
+#define CC2_R_ALARM_HIGH_OFF		0x19
+#define CC2_R_ALARM_LOW_ON		0x1A
+#define CC2_R_ALARM_LOW_OFF		0x1B
+#define CC2_RW_OFFSET			0x40
+#define CC2_W_ALARM_HIGH_ON		(CC2_R_ALARM_HIGH_ON + CC2_RW_OFFSET)
+#define CC2_W_ALARM_HIGH_OFF		(CC2_R_ALARM_HIGH_OFF + CC2_RW_OFFSET)
+#define CC2_W_ALARM_LOW_ON		(CC2_R_ALARM_LOW_ON + CC2_RW_OFFSET)
+#define CC2_W_ALARM_LOW_OFF		(CC2_R_ALARM_LOW_OFF + CC2_RW_OFFSET)
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
+#define CC2_POWER_CYCLE_MS		150
+#define CC2_RESP_SLEEP_MS		45
+#define CC2_RESP_START_CM_US		100
+#define CC2_RESP_EEPROM_R_US		100
+#define CC2_RESP_EEPROM_W_MS		12
+#define CC2_STARTUP_TIME_US		1250
+#define CC2_UPDATE_RATE_MS		165
+
+#define CC2_RH_MIN			0
+#define CC2_RH_MAX			(100 * 1000U)
+
+struct cc2_data;
+
+enum cc2_ids { cc2d23, cc2d23s };
+
+struct cc2_config {
+	int (*measurement)(struct cc2_data *data,
+			   enum hwmon_sensor_types type,
+			   long *val);
+};
+
+struct cc2_rh_alarm_info {
+	long min;
+	long min_hyst;
+	long max;
+	long max_hyst;
+	bool low_alarm;
+	bool high_alarm;
+	bool low_alarm_visible;
+	bool high_alarm_visible;
+};
+
+struct cc2_data {
+	const struct cc2_config *config;
+	struct cc2_rh_alarm_info rh_alarm;
+	struct mutex alarm_lock; /* alarm status lock */
+	struct completion complete;
+	struct device *hwmon;
+	struct i2c_client *client;
+	struct mutex i2c_lock; /* i2c communication lock */
+	struct regulator *regulator;
+	const char *name;
+	int irq_ready;
+	int irq_low;
+	int irq_high;
+	bool ignore_irqs;
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
+/* round humidity values to the device resolution (14 bits) */
+static long cc2_rh_to_device_resolution(long data)
+{
+	u16 reg_val;
+
+	reg_val = cc2_rh_to_reg(data);
+
+	return cc2_rh_convert(reg_val);
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
+static int cc2_clear_data_ready(struct i2c_client *client)
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
+	return 0;
+}
+
+/*
+ * The command mode is only accessible after sending the START_CM command in the
+ * first 10 ms after power-up.
+ */
+static int cc2_command_mode_start(struct cc2_data *data)
+{
+	unsigned long timeout;
+	int ret;
+
+	ret = i2c_smbus_write_word_data(data->client, CC2_START_CM, 0);
+	if (ret < 0)
+		return ret;
+
+	if (data->irq_ready > 0) {
+		timeout = usecs_to_jiffies(2 * CC2_RESP_START_CM_US);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+	} else {
+		usleep_range(CC2_RESP_START_CM_US, 2 * CC2_RESP_START_CM_US);
+	}
+
+	return cc2_read_command_status(data->client);
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
+/* EEPROM registers can only be read in command mode */
+static int cc2_read_eeprom_reg(struct cc2_data *data, u8 cmd, u16 *val)
+{
+	u8 buf[CC2_EEPROM_DATA_LEN];
+	unsigned long timeout;
+	int ret;
+
+	ret = i2c_smbus_write_word_data(data->client, cmd, 0);
+	if (ret < 0)
+		return ret;
+
+	if (data->irq_ready > 0) {
+		timeout = usecs_to_jiffies(2 * CC2_RESP_EEPROM_R_US);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+	} else {
+		usleep_range(CC2_RESP_EEPROM_R_US, CC2_RESP_EEPROM_R_US + 10);
+	}
+	ret = i2c_master_recv(data->client, buf, CC2_EEPROM_DATA_LEN);
+	if (ret != CC2_EEPROM_DATA_LEN) {
+		ret = ret < 0 ? ret : -EIO;
+		return ret;
+	}
+
+	*val = be16_to_cpup((__be16 *)&buf[1]);
+
+	return cc2_read_command_status(data->client);
+}
+
+static int cc2_write_eeprom_reg(struct cc2_data *data, u8 cmd, u16 val)
+{
+	unsigned long timeout;
+	int ret;
+
+	cpu_to_be16s(&val);
+	ret = i2c_smbus_write_word_data(data->client, cmd, val);
+	if (ret < 0)
+		return ret;
+
+	if (data->irq_ready > 0) {
+		timeout = msecs_to_jiffies(2 * CC2_RESP_EEPROM_W_MS);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+	} else {
+		msleep(CC2_RESP_EEPROM_W_MS);
+	}
+
+	return cc2_read_command_status(data->client);
+}
+
+/* Command mode is only accessible in the first 10 ms after power-up, but the
+ * device does not provide any kind of reset. In order to access the command
+ * mode during normal operation, a power cycle must be triggered.
+ */
+static int cc2_start_command_window(struct cc2_data *data)
+{
+	int ret;
+
+	/* ignore alarms triggered by voltage toggling during the power cycle */
+	mutex_lock(&data->alarm_lock);
+	data->ignore_irqs = true;
+	mutex_unlock(&data->alarm_lock);
+
+	/* clear any pending completion */
+	try_wait_for_completion(&data->complete);
+
+	if (regulator_is_enabled(data->regulator)) {
+		ret = regulator_disable(data->regulator);
+		if (ret < 0)
+			return ret;
+
+		msleep(CC2_POWER_CYCLE_MS); /* ensure a clean power cycle */
+	}
+
+	ret = regulator_enable(data->regulator);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * TODO: the startup-delay-us property of the regulator might be
+	 * added to the delay (if provided).
+	 * Currently there is no interface to read its value apart from
+	 * a direct access to regulator->rdev->constraints->enable_time,
+	 * which is discouraged like any direct access to the regulator_dev
+	 * structure. This would be relevant in cases where the startup delay
+	 * is in the range of milliseconds.
+	 */
+	usleep_range(CC2_STARTUP_TIME_US, CC2_STARTUP_TIME_US + 125);
+
+	mutex_lock(&data->alarm_lock);
+	data->ignore_irqs = false;
+	mutex_unlock(&data->alarm_lock);
+
+	return 0;
+}
+
+/*
+ * An EEPROM update requires the following steps:
+ * 1. Power cycle to accept the START_CM command.
+ * 2. STARTM_CM command to enter command mode.
+ * 3. Command(s) to update register(s).
+ * 4. START_NOM command to exit command mode.
+ * After that, the device switches to normal mode and a measurement is
+ * triggered automatically. In order to obtain a recent measurement on demand,
+ * the automatic measurement is dropped.
+ */
+static int cc2_update_eeprom(struct cc2_data *data, u8 *cmd, u16 *val, int len)
+{
+	int i, ret;
+
+	if (!cmd || !val || len > CC2_EEPROM_SIZE)
+		return -EINVAL;
+
+	ret = cc2_start_command_window(data);
+	if (ret < 0)
+		return ret;
+
+	mutex_lock(&data->i2c_lock);
+	ret = cc2_command_mode_start(data);
+	if (ret < 0)
+		goto unlock;
+
+	for (i = 0; i < len; i++) {
+		ret = cc2_write_eeprom_reg(data, *cmd, *val);
+		if (ret < 0) {
+			dev_dbg(&data->client->dev,
+				"Failed to write register %#02x\n", *cmd);
+			goto cmd_finish;
+		}
+		cmd++;
+		val++;
+	}
+
+cmd_finish:
+	ret = cc2_command_mode_finish(data);
+unlock:
+	mutex_unlock(&data->i2c_lock);
+
+	return ret;
+}
+
+/*
+ * EEPROM access is a highly time-consuming task that involves a power cycle.
+ * The alarm-related registers are read once and their values are stored and
+ * updated without further EEPROM accesses.
+ * Probe deferring is used to minimize the risk of missing the command window
+ * if the task is waiting to be executed for too long.
+ */
+static int cc2_read_eeprom_alarm_registers(struct cc2_data *data)
+{
+	u16 val;
+	int ret;
+
+	mutex_lock(&data->i2c_lock);
+	ret = cc2_command_mode_start(data);
+	if (ret < 0) {
+		ret = (ret == -ETIMEDOUT) ? -EPROBE_DEFER : ret;
+		goto unlock;
+	}
+
+	ret = cc2_read_eeprom_reg(data, CC2_R_ALARM_LOW_ON, &val);
+	if (ret < 0)
+		goto unlock;
+
+	data->rh_alarm.min = cc2_rh_convert(val);
+
+	ret = cc2_read_eeprom_reg(data, CC2_R_ALARM_LOW_OFF, &val);
+	if (ret < 0)
+		goto unlock;
+
+	data->rh_alarm.min_hyst = cc2_rh_convert(val);
+
+	ret = cc2_read_eeprom_reg(data, CC2_R_ALARM_HIGH_ON, &val);
+	if (ret < 0)
+		goto unlock;
+
+	data->rh_alarm.max = cc2_rh_convert(val);
+
+	ret = cc2_read_eeprom_reg(data, CC2_R_ALARM_HIGH_OFF, &val);
+	if (ret < 0)
+		goto unlock;
+
+	data->rh_alarm.max_hyst = cc2_rh_convert(val);
+
+	ret = cc2_command_mode_finish(data);
+
+unlock:
+	mutex_unlock(&data->i2c_lock);
+
+	return ret;
+}
+
+static int cc2_retrieve_alarm_config(struct cc2_data *data)
+{
+	int ret;
+
+	ret = cc2_start_command_window(data);
+	if (ret)
+		return ret;
+
+	return cc2_read_eeprom_alarm_registers(data);
+}
+
+/*
+ * A measurement request must be sent in sleep mode to wake up the device and
+ * start measuring. This request only contains the slave address and the write
+ * bit.
+ */
+static int cc2_measurement_request(struct i2c_client *client)
+{
+	int ret;
+
+	ret = i2c_master_send(client, NULL, 0);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+};
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
+/*
+ * non sleep-mode devies make measurements periodically and * indicate
+ * valid data with the ready signal, whose level stays high until data
+ * is fetched even if new measurements are made.
+ */
+static int cc2d23_measurement(struct cc2_data *data,
+			      enum hwmon_sensor_types type, long *val)
+{
+	unsigned long timeout;
+	int ret;
+
+	if (data->irq_ready > 0) {
+		if (try_wait_for_completion(&data->complete))
+			goto data_fetch;
+
+		timeout = msecs_to_jiffies(CC2_UPDATE_RATE_MS);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+	} else {
+		/* check if data is ready and retry for stale data */
+		ret = cc2_data_fetch(data->client, type, val);
+		if (ret != -EBUSY)
+			return ret;
+
+		msleep(CC2_UPDATE_RATE_MS);
+	}
+
+data_fetch:
+	return cc2_data_fetch(data->client, type, val);
+}
+
+/*
+ * sleep-mode devies require a measurement request command to wake up
+ * the device and trigger a measurement. Then a data fetch command is
+ * sent to retrieve the measured values.
+ */
+static int cc2d23s_measurement(struct cc2_data *data,
+			       enum hwmon_sensor_types type, long *val)
+{
+	unsigned long timeout;
+	int ret;
+
+	if (data->irq_ready > 0) {
+		/*
+		 * the device carries out a first measurement after entering
+		 * measurement mode automatically. To avoid outdated values,
+		 * a new request is made
+		 */
+		if (try_wait_for_completion(&data->complete)) {
+			ret = cc2_clear_data_ready(data->client);
+			if (ret < 0)
+				return ret;
+		}
+
+		ret = cc2_measurement_request(data->client);
+		if (ret < 0)
+			return ret;
+
+		timeout = msecs_to_jiffies(2 * CC2_RESP_SLEEP_MS);
+		ret = wait_for_completion_timeout(&data->complete, timeout);
+		if (!ret)
+			return -ETIMEDOUT;
+	} else {
+		ret = cc2_measurement_request(data->client);
+		if (ret < 0)
+			return ret;
+
+		msleep(CC2_RESP_SLEEP_MS);
+	}
+
+	return cc2_data_fetch(data->client, type, val);
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
+	mutex_lock(&cc2->alarm_lock);
+	if (!cc2->ignore_irqs)
+		complete(&cc2->complete);
+	mutex_unlock(&cc2->alarm_lock);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t cc2_low_interrupt(int irq, void *data)
+{
+	struct cc2_data *cc2 = data;
+
+	mutex_lock(&cc2->alarm_lock);
+	if (!cc2->ignore_irqs) {
+		hwmon_notify_event(cc2->hwmon, hwmon_humidity,
+				   hwmon_humidity_min_alarm, CC2_CHAN_HUMIDITY);
+		cc2->rh_alarm.low_alarm = true;
+	}
+	mutex_unlock(&cc2->alarm_lock);
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t cc2_high_interrupt(int irq, void *data)
+{
+	struct cc2_data *cc2 = data;
+
+	mutex_lock(&cc2->alarm_lock);
+	if (!cc2->ignore_irqs) {
+		hwmon_notify_event(cc2->hwmon, hwmon_humidity,
+				   hwmon_humidity_max_alarm, CC2_CHAN_HUMIDITY);
+		cc2->rh_alarm.high_alarm = true;
+	}
+	mutex_unlock(&cc2->alarm_lock);
+
+	return IRQ_HANDLED;
+}
+
+static int cc2_humidity_min_alarm_status(struct cc2_data *data, long *val)
+{
+	long meas;
+	int ret;
+
+	mutex_lock(&data->i2c_lock);
+	ret = data->config->measurement(data, hwmon_humidity, &meas);
+	mutex_unlock(&data->i2c_lock);
+	if (ret < 0)
+		return ret;
+
+	mutex_lock(&data->alarm_lock);
+	if (data->rh_alarm.low_alarm) {
+		*val = (meas < data->rh_alarm.min_hyst) ? 1 : 0;
+		data->rh_alarm.low_alarm = *val;
+	} else {
+		*val = 0;
+	}
+	mutex_unlock(&data->alarm_lock);
+
+	return 0;
+}
+
+static int cc2_humidity_max_alarm_status(struct cc2_data *data, long *val)
+{
+	long meas;
+	int ret;
+
+	mutex_lock(&data->i2c_lock);
+	ret = data->config->measurement(data, hwmon_humidity, &meas);
+	mutex_unlock(&data->i2c_lock);
+	if (ret < 0)
+		return ret;
+
+	mutex_lock(&data->alarm_lock);
+	if (data->rh_alarm.high_alarm) {
+		*val = (meas > data->rh_alarm.max_hyst) ? 1 : 0;
+		data->rh_alarm.high_alarm = *val;
+	} else {
+		*val = 0;
+	}
+	mutex_unlock(&data->alarm_lock);
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
+	switch (type) {
+	case hwmon_temp:
+		mutex_lock(&data->i2c_lock);
+		ret = data->config->measurement(data, type, val);
+		mutex_unlock(&data->i2c_lock);
+		break;
+	case hwmon_humidity:
+		switch (attr) {
+		case hwmon_humidity_input:
+			mutex_lock(&data->i2c_lock);
+			ret = data->config->measurement(data, type, val);
+			mutex_unlock(&data->i2c_lock);
+			break;
+		case hwmon_humidity_min:
+			*val = data->rh_alarm.min;
+			break;
+		case hwmon_humidity_min_hyst:
+			*val = data->rh_alarm.min_hyst;
+			break;
+		case hwmon_humidity_max:
+			*val = data->rh_alarm.max;
+			break;
+		case hwmon_humidity_max_hyst:
+			*val = data->rh_alarm.max_hyst;
+			break;
+		case hwmon_humidity_min_alarm:
+			ret = cc2_humidity_min_alarm_status(data, val);
+			if (ret < 0)
+				return -EIO;
+			break;
+		case hwmon_humidity_max_alarm:
+			ret = cc2_humidity_max_alarm_status(data, val);
+			if (ret < 0)
+				return -EIO;
+			break;
+		default:
+			return -EOPNOTSUPP;
+		}
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return ret;
+}
+
+static int cc2_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
+		     int channel, long val)
+{
+	struct cc2_data *data = dev_get_drvdata(dev);
+	u8 cmd[CC2_EEPROM_SIZE];
+	u16 arg[CC2_EEPROM_SIZE];
+	int ret;
+
+	if (type != hwmon_humidity)
+		return -EOPNOTSUPP;
+
+	if (val < CC2_RH_MIN || val > CC2_RH_MAX)
+		return -EINVAL;
+
+	switch (attr) {
+	case hwmon_humidity_min:
+		cmd[0] = CC2_W_ALARM_LOW_ON;
+		arg[0] = cc2_rh_to_reg(val);
+		ret = cc2_update_eeprom(data, cmd, arg, 1);
+		if (ret < 0)
+			return ret;
+
+		data->rh_alarm.min = cc2_rh_to_device_resolution(val);
+		break;
+	case hwmon_humidity_min_hyst:
+		cmd[0] = CC2_W_ALARM_LOW_OFF;
+		arg[0] = cc2_rh_to_reg(val);
+		ret = cc2_update_eeprom(data, cmd, arg, 1);
+		if (ret < 0)
+			return ret;
+
+		data->rh_alarm.min_hyst = cc2_rh_to_device_resolution(val);
+		break;
+	case hwmon_humidity_max:
+		cmd[0] = CC2_W_ALARM_HIGH_ON;
+		arg[0] = cc2_rh_to_reg(val);
+		ret = cc2_update_eeprom(data, cmd, arg, 1);
+		if (ret < 0)
+			return ret;
+
+		data->rh_alarm.max = cc2_rh_to_device_resolution(val);
+		break;
+	case hwmon_humidity_max_hyst:
+		cmd[0] = CC2_W_ALARM_HIGH_OFF;
+		arg[0] = cc2_rh_to_reg(val);
+		ret = cc2_update_eeprom(data, cmd, arg, 1);
+		if (ret < 0)
+			return ret;
+
+		data->rh_alarm.max_hyst = cc2_rh_to_device_resolution(val);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static int cc2_disable(struct cc2_data *data)
+{
+	int ret = 0;
+
+	if (data->regulator && regulator_is_enabled(data->regulator))
+		ret = regulator_disable(data->regulator);
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
+static const struct cc2_config cc2_config[] = {
+	[cc2d23] = { .measurement = cc2d23_measurement, },
+	[cc2d23s] = { .measurement = cc2d23s_measurement, },
+};
+
+static const struct i2c_device_id cc2_id[] = {
+	{ "cc2d23", cc2d23 },
+	{ "cc2d23s", cc2d23s },
+	{ "cc2d25", cc2d23 },
+	{ "cc2d25s", cc2d23s },
+	{ "cc2d33", cc2d23 },
+	{ "cc2d33s", cc2d23s },
+	{ "cc2d35", cc2d23 },
+	{ "cc2d35s", cc2d23s },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, cc2_id);
+
+static const struct of_device_id cc2_of_match[] = {
+	{
+		.compatible = "amphenol,cc2d23",
+		.data = (void *)cc2d23,
+	},
+	{
+		.compatible = "amphenol,cc2d23s",
+		.data = (void *)cc2d23s,
+	},
+	{
+		.compatible = "amphenol,cc2d25",
+		.data = (void *)cc2d23,
+	},
+	{
+		.compatible = "amphenol,cc2d25s",
+		.data = (void *)cc2d23s,
+	},
+	{
+		.compatible = "amphenol,cc2d33",
+		.data = (void *)cc2d23,
+	},
+	{
+		.compatible = "amphenol,cc2d33s",
+		.data = (void *)cc2d23s,
+	},
+	{
+		.compatible = "amphenol,cc2d35",
+		.data = (void *)cc2d23,
+	},
+	{
+		.compatible = "amphenol,cc2d35s",
+		.data = (void *)cc2d23s,
+	},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, cc2_of_match);
+
+static int cc2_probe(struct i2c_client *client)
+{
+	struct cc2_data *data;
+	struct device *dev = &client->dev;
+	enum cc2_ids chip;
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
+	mutex_init(&data->i2c_lock);
+	mutex_init(&data->alarm_lock);
+
+	data->client = client;
+
+	if (client->dev.of_node)
+		chip = (uintptr_t)of_device_get_match_data(&client->dev);
+	else
+		chip = i2c_match_id(cc2_id, client)->driver_data;
+
+	data->config = &cc2_config[chip];
+
+	ret = cc2_request_ready_irq(data, dev);
+	if (ret)
+		return ret;
+
+	data->regulator = devm_regulator_get_optional(dev, "vdd");
+	if (IS_ERR(data->regulator)) {
+		if (PTR_ERR(data->regulator) != -ENODEV) {
+			dev_err_probe(dev, PTR_ERR(data->regulator),
+				      "Failed to get regulator\n");
+			return PTR_ERR(data->regulator);
+		}
+		/* No access to EEPROM without regulator: no alarm control */
+		data->regulator = NULL;
+	} else {
+		ret = cc2_retrieve_alarm_config(data);
+		if (ret) {
+			dev_err_probe(dev, PTR_ERR(data->regulator),
+				      "Failed to retrieve alarm config\n");
+			goto cleanup;
+		}
+
+		ret = cc2_request_alarm_irqs(data, dev);
+		if (ret) {
+			dev_err_probe(dev, PTR_ERR(data->regulator),
+				      "Failed to request alarm irqs\n");
+			goto cleanup;
+		}
+	}
+
+	data->hwmon = devm_hwmon_device_register_with_info(dev, client->name,
+							   data, &cc2_chip_info,
+							   NULL);
+	if (IS_ERR(data->hwmon)) {
+		dev_err_probe(dev, PTR_ERR(data->regulator),
+			      "Failed to register hwmon device\n");
+		ret = PTR_ERR(data->hwmon);
+		goto cleanup;
+	}
+
+	return 0;
+
+cleanup:
+	if (cc2_disable(data))
+		dev_dbg(dev, "Failed to disable device");
+
+	return ret;
+}
+
+static void cc2_remove(struct i2c_client *client)
+{
+	struct cc2_data *data = i2c_get_clientdata(client);
+	int ret = cc2_disable(data);
+
+	if (ret)
+		dev_dbg(&client->dev, "Failed to disable device");
+}
+
+static struct i2c_driver cc2_driver = {
+	.driver = {
+		.name	= CC2_DEV_NAME,
+		.of_match_table = cc2_of_match,
+	},
+	.probe		= cc2_probe,
+	.remove		= cc2_remove,
+};
+module_i2c_driver(cc2_driver);
+
+MODULE_AUTHOR("Javier Carrasco <javier.carrasco.cruz@gamil.com>");
+MODULE_DESCRIPTION("Amphenol ChipCap 2 humidity and temperature sensor driver");
+MODULE_LICENSE("GPL");

-- 
2.39.2


