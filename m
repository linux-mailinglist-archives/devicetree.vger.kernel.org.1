Return-Path: <devicetree+bounces-31990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC1A82D6B6
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 11:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1940B2152E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 10:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65B8F9C7;
	Mon, 15 Jan 2024 10:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cZNpGgU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982E72BAE7;
	Mon, 15 Jan 2024 10:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3bd67e9d6ceso1095122b6e.3;
        Mon, 15 Jan 2024 02:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705313148; x=1705917948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cE/sruch355aNPyWFCJ0Jm77E7XLyVymxmRq0m4YSas=;
        b=cZNpGgU0pF6pYV1Hj3BgMVhycPng/vyMWQBz6YviobfLeX7hCEMFeRewU4FvZEPGds
         1/XiROr1FPkB6ingX96gWw+WQ7B7sKaptquWqsHBbcv030bwvJ/QcuZZxs1206TaIf2Z
         KbYoTYXzT4sW6qB14RAY0WAmLvItmNp9UZTqHHwu8roa3qfY6UuFo97q+c6rwl+XhRE1
         KZDKzl4BiEtflmPOuVwQaj8bPE4uhV1QKCDzCsWxKvhMlwI6kagqdE92gaKqZfEvb6TG
         kpxnQCwwvWIiXcnioqGVJOteeVnzv9ezoArUEnW3xqF1PCBG+ygYrGaqHF5bCGzVftO/
         duaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705313148; x=1705917948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cE/sruch355aNPyWFCJ0Jm77E7XLyVymxmRq0m4YSas=;
        b=V3wm7Sxs/TOcZaRea0Anaqskh6X4/jJrcHumKaVvEkIk7HxtzR8NM1ktO0HAkdE/wV
         toKR4nBuhaAdRNK6qxoguSYZU8c+TLGamoROnKOvCb71EYioGzyMLr7RzLTfrk8CshC/
         WZ2E8M2kxT+FpLNk7s86sOJtcV+3z68bWm2/GFNE7PaIjyYc7ysXLEEdd0QK87fJIzRE
         PtYSslzQ1aeupSz3bhfN8eI+sSGTrT/vmwLEpsSASAltSI0vEvMKIgJ4ABgUftpTgf+M
         APvBPKk409GWCVy3ZYLGXTK3rzcGC8jn9OF6+Inu66QHtI0C73+WysFTc+Dx5mwOTSIO
         dKAQ==
X-Gm-Message-State: AOJu0YybJDMHo0HXU3+StNMwjB96C8LXnUsrX8YSFDllX2Dl1DNzDqjP
	1BaFIWY4uU9J9SA/+CCxJ6w=
X-Google-Smtp-Source: AGHT+IHNlAuvI1Yy0qjR74ZU34fbPHYJni2lfQQutXRngLMyw9BQESnCEMkjUkUL3lYkD96bLZjiPw==
X-Received: by 2002:a05:6358:c11a:b0:175:7201:5785 with SMTP id fh26-20020a056358c11a00b0017572015785mr3967014rwb.7.1705313148317;
        Mon, 15 Jan 2024 02:05:48 -0800 (PST)
Received: from cosmo-ubuntu-2204.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id d10-20020a65424a000000b005cda7a1d72dsm6870712pgq.74.2024.01.15.02.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 02:05:47 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	corbet@lwn.net,
	broonie@kernel.org,
	naresh.solanki@9elements.com,
	vincent@vtremblay.dev,
	patrick.rudolph@9elements.com,
	luca.ceresoli@bootlin.com,
	bhelgaas@google.com,
	festevam@denx.de,
	alexander.stein@ew.tq-group.com,
	heiko@sntech.de,
	jernej.skrabec@gmail.com,
	macromorgan@hotmail.com,
	forbidden405@foxmail.com,
	sre@kernel.org,
	linus.walleij@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-doc@vger.kernel.org,
	chou.cosmo@gmail.com,
	cosmo.chou@quantatw.com
Subject: [PATCH v4 3/3] hwmon: Add driver for Astera Labs PT5161L retimer
Date: Mon, 15 Jan 2024 18:05:18 +0800
Message-Id: <20240115100518.2887549-4-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240115100518.2887549-1-chou.cosmo@gmail.com>
References: <20240115100518.2887549-1-chou.cosmo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver implements support for temperature monitoring of Astera Labs
PT5161L series PCIe retimer chips.

This driver implementation originates from the CSDK available at
Link: https://github.com/facebook/openbmc/tree/helium/common/recipes-lib/retimer-v2.14
The communication protocol utilized is based on the I2C/SMBus standard.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 Documentation/hwmon/index.rst   |   1 +
 Documentation/hwmon/pt5161l.rst |  42 ++
 MAINTAINERS                     |   7 +
 drivers/hwmon/Kconfig           |  10 +
 drivers/hwmon/Makefile          |   1 +
 drivers/hwmon/pt5161l.c         | 670 ++++++++++++++++++++++++++++++++
 6 files changed, 731 insertions(+)
 create mode 100644 Documentation/hwmon/pt5161l.rst
 create mode 100644 drivers/hwmon/pt5161l.c

diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
index c7ed1f73ac06..9f5f215fcb2d 100644
--- a/Documentation/hwmon/index.rst
+++ b/Documentation/hwmon/index.rst
@@ -185,6 +185,7 @@ Hardware Monitoring Kernel Drivers
    pmbus
    powerz
    powr1220
+   pt5161l
    pxe1610
    pwm-fan
    q54sj108a2
diff --git a/Documentation/hwmon/pt5161l.rst b/Documentation/hwmon/pt5161l.rst
new file mode 100644
index 000000000000..1b97336991ea
--- /dev/null
+++ b/Documentation/hwmon/pt5161l.rst
@@ -0,0 +1,42 @@
+.. SPDX-License-Identifier: GPL-2.0-or-later
+
+Kernel driver pt5161l
+=====================
+
+Supported chips:
+
+  * Astera Labs PT5161L
+
+    Prefix: 'pt5161l'
+
+    Addresses scanned: I2C 0x20 - 0x27
+
+    Datasheet: Not publicly available.
+
+Authors: Cosmo Chou <cosmo.chou@quantatw.com>
+
+Description
+-----------
+
+This driver implements support for temperature monitoring of Astera Labs
+PT5161L series PCIe retimer chips.
+
+This driver implementation originates from the CSDK available at
+https://github.com/facebook/openbmc/tree/helium/common/recipes-lib/retimer-v2.14
+The communication protocol utilized is based on the I2C/SMBus standard.
+
+Sysfs entries
+----------------
+
+================ ==============================================
+temp1_input      Measured temperature (in millidegrees Celsius)
+================ ==============================================
+
+Debugfs entries
+----------------
+
+================ ===============================
+fw_load_status   Firmware load status
+fw_ver           Firmware version of the retimer
+heartbeat_status Heartbeat status
+================ ===============================
diff --git a/MAINTAINERS b/MAINTAINERS
index 391bbb855cbe..e194246f3c5c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17568,6 +17568,13 @@ F:	fs/pstore/
 F:	include/linux/pstore*
 K:	\b(pstore|ramoops)
 
+PT5161L HARDWARE MONITOR DRIVER
+M:	Cosmo Chou <cosmo.chou@quantatw.com>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/hwmon/pt5161l.rst
+F:	drivers/hwmon/pt5161l.c
+
 PTP HARDWARE CLOCK SUPPORT
 M:	Richard Cochran <richardcochran@gmail.com>
 L:	netdev@vger.kernel.org
diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index a608264da87d..c8d86a695f66 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -1714,6 +1714,16 @@ source "drivers/hwmon/peci/Kconfig"
 
 source "drivers/hwmon/pmbus/Kconfig"
 
+config SENSORS_PT5161L
+	tristate "Astera Labs PT5161L PCIe retimer hardware monitoring"
+	depends on I2C
+	help
+	  If you say yes here you get support for temperature monitoring
+	  on the Astera Labs PT5161L PCIe retimer.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called pt5161l.
+
 config SENSORS_PWM_FAN
 	tristate "PWM fan"
 	depends on (PWM && OF) || COMPILE_TEST
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 47be39af5c03..0554d3ccb09a 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -180,6 +180,7 @@ obj-$(CONFIG_SENSORS_PC87427)	+= pc87427.o
 obj-$(CONFIG_SENSORS_PCF8591)	+= pcf8591.o
 obj-$(CONFIG_SENSORS_POWERZ)	+= powerz.o
 obj-$(CONFIG_SENSORS_POWR1220)  += powr1220.o
+obj-$(CONFIG_SENSORS_PT5161L)	+= pt5161l.o
 obj-$(CONFIG_SENSORS_PWM_FAN)	+= pwm-fan.o
 obj-$(CONFIG_SENSORS_RASPBERRYPI_HWMON)	+= raspberrypi-hwmon.o
 obj-$(CONFIG_SENSORS_SBTSI)	+= sbtsi_temp.o
diff --git a/drivers/hwmon/pt5161l.c b/drivers/hwmon/pt5161l.c
new file mode 100644
index 000000000000..d7a47889bacf
--- /dev/null
+++ b/drivers/hwmon/pt5161l.c
@@ -0,0 +1,670 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/hwmon.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+
+/* Aries current average temp ADC code CSR */
+#define ARIES_CURRENT_AVG_TEMP_ADC_CSR	0x42c
+
+/* Device Load check register */
+#define ARIES_CODE_LOAD_REG	0x605
+/* Value indicating FW was loaded properly, [3:1] = 3'b111 */
+#define ARIES_LOAD_CODE	0xe
+
+/* Main Micro Heartbeat register */
+#define ARIES_MM_HEARTBEAT_ADDR	0x923
+
+/* Reg offset to specify Address for MM assisted accesses */
+#define ARIES_MM_ASSIST_REG_ADDR_OFFSET	0xd99
+/* Reg offset to specify Command for MM assisted accesses */
+#define ARIES_MM_ASSIST_CMD_OFFSET	0xd9d
+/* Reg offset to MM SPARE 0 used specify Address[7:0] */
+#define ARIES_MM_ASSIST_SPARE_0_OFFSET	0xd9f
+/* Reg offset to MM SPARE 3 used specify Data Byte 0 */
+#define ARIES_MM_ASSIST_SPARE_3_OFFSET	0xda2
+/* Wide register reads */
+#define ARIES_MM_RD_WIDE_REG_2B	0x1d
+#define ARIES_MM_RD_WIDE_REG_3B	0x1e
+#define ARIES_MM_RD_WIDE_REG_4B	0x1f
+#define ARIES_MM_RD_WIDE_REG_5B	0x20
+
+/* Time delay between checking MM status of EEPROM write (microseconds) */
+#define ARIES_MM_STATUS_TIME	5000
+
+/* AL Main SRAM DMEM offset (A0) */
+#define AL_MAIN_SRAM_DMEM_OFFSET	(64 * 1024)
+/* SRAM read command */
+#define AL_TG_RD_LOC_IND_SRAM	0x16
+
+/* Offset for main micro FW info */
+#define ARIES_MAIN_MICRO_FW_INFO	(96 * 1024 - 128)
+/* FW Info (Major) offset location in struct */
+#define ARIES_MM_FW_VERSION_MAJOR	0
+/* FW Info (Minor) offset location in struct */
+#define ARIES_MM_FW_VERSION_MINOR	1
+/* FW Info (Build no.) offset location in struct */
+#define ARIES_MM_FW_VERSION_BUILD	2
+
+#define ARIES_TEMP_CAL_CODE_DEFAULT	84
+
+/* Struct defining FW version loaded on an Aries device */
+struct pt5161l_fw_ver {
+	u8 major;
+	u8 minor;
+	u16 build;
+};
+
+/* Each client has this additional data */
+struct pt5161l_data {
+	struct i2c_client *client;
+	struct dentry *debugfs;
+	struct pt5161l_fw_ver fw_ver;
+	struct mutex lock;
+	bool init_done;
+	bool code_load_okay; /* indicate if code load reg value is expected */
+	bool mm_heartbeat_okay; /* indicate if Main Micro heartbeat is good */
+	bool mm_wide_reg_access; /* MM assisted wide register access */
+};
+
+static struct dentry *pt5161l_debugfs_dir;
+
+/*
+ * Write multiple data bytes to Aries over I2C
+ */
+static int pt5161l_write_block_data(struct pt5161l_data *data, u32 address,
+				    u8 len, u8 *val)
+{
+	struct i2c_client *client = data->client;
+	int ret;
+	u8 remain_len = len;
+	u8 xfer_len, curr_len;
+	u8 buf[16];
+	u8 cmd = 0x0F; /* [7]:pec_en, [4:2]:func, [1]:start, [0]:end */
+	u8 config = 0x40; /* [6]:cfg_type, [4:1]:burst_len, [0]:address bit16 */
+
+	while (remain_len > 0) {
+		if (remain_len > 4) {
+			curr_len = 4;
+			remain_len -= 4;
+		} else {
+			curr_len = remain_len;
+			remain_len = 0;
+		}
+
+		buf[0] = config | (curr_len - 1) << 1 | ((address >> 16) & 0x1);
+		buf[1] = (address >> 8) & 0xff;
+		buf[2] = address & 0xff;
+		memcpy(&buf[3], val, curr_len);
+
+		xfer_len = 3 + curr_len;
+		ret = i2c_smbus_write_block_data(client, cmd, xfer_len, buf);
+		if (ret)
+			return ret;
+
+		val += curr_len;
+		address += curr_len;
+	}
+
+	return 0;
+}
+
+/*
+ * Read multiple data bytes from Aries over I2C
+ */
+static int pt5161l_read_block_data(struct pt5161l_data *data, u32 address,
+				   u8 len, u8 *val)
+{
+	struct i2c_client *client = data->client;
+	int ret, tries;
+	u8 remain_len = len;
+	u8 curr_len;
+	u8 wbuf[16], rbuf[24];
+	u8 cmd = 0x08; /* [7]:pec_en, [4:2]:func, [1]:start, [0]:end */
+	u8 config = 0x00; /* [6]:cfg_type, [4:1]:burst_len, [0]:address bit16 */
+
+	while (remain_len > 0) {
+		if (remain_len > 16) {
+			curr_len = 16;
+			remain_len -= 16;
+		} else {
+			curr_len = remain_len;
+			remain_len = 0;
+		}
+
+		wbuf[0] = config | (curr_len - 1) << 1 |
+			  ((address >> 16) & 0x1);
+		wbuf[1] = (address >> 8) & 0xff;
+		wbuf[2] = address & 0xff;
+
+		for (tries = 0; tries < 3; tries++) {
+			ret = i2c_smbus_write_block_data(client, (cmd | 0x2), 3,
+							 wbuf);
+			if (ret)
+				return ret;
+
+			ret = i2c_smbus_read_block_data(client, (cmd | 0x1),
+							rbuf);
+			if (ret == curr_len)
+				break;
+		}
+		if (tries >= 3)
+			return ret;
+
+		memcpy(val, rbuf, curr_len);
+		val += curr_len;
+		address += curr_len;
+	}
+
+	return 0;
+}
+
+static int pt5161l_read_wide_reg(struct pt5161l_data *data, u32 address,
+				 u8 width, u8 *val)
+{
+	int ret, tries;
+	u8 buf[8];
+	u8 status;
+
+	/*
+	 * Safely access wide registers using mailbox method to prevent
+	 * risking conflict with Aries firmware; otherwise fallback to
+	 * legacy, less secure method.
+	 */
+	if (data->mm_wide_reg_access) {
+		buf[0] = address & 0xff;
+		buf[1] = (address >> 8) & 0xff;
+		buf[2] = (address >> 16) & 0x1;
+		ret = pt5161l_write_block_data(
+			data, ARIES_MM_ASSIST_SPARE_0_OFFSET, 3, buf);
+		if (ret)
+			return ret;
+
+		/* Set command based on width */
+		switch (width) {
+		case 2:
+			buf[0] = ARIES_MM_RD_WIDE_REG_2B;
+			break;
+		case 3:
+			buf[0] = ARIES_MM_RD_WIDE_REG_3B;
+			break;
+		case 4:
+			buf[0] = ARIES_MM_RD_WIDE_REG_4B;
+			break;
+		case 5:
+			buf[0] = ARIES_MM_RD_WIDE_REG_5B;
+			break;
+		default:
+			return -EINVAL;
+		}
+		ret = pt5161l_write_block_data(data, ARIES_MM_ASSIST_CMD_OFFSET,
+					       1, buf);
+		if (ret)
+			return ret;
+
+		status = 0xff;
+		for (tries = 0; tries < 100; tries++) {
+			ret = pt5161l_read_block_data(
+				data, ARIES_MM_ASSIST_CMD_OFFSET, 1, &status);
+			if (ret)
+				return ret;
+
+			if (status == 0)
+				break;
+
+			usleep_range(ARIES_MM_STATUS_TIME,
+				     ARIES_MM_STATUS_TIME + 1000);
+		}
+		if (status != 0)
+			return -ETIMEDOUT;
+
+		ret = pt5161l_read_block_data(
+			data, ARIES_MM_ASSIST_SPARE_3_OFFSET, width, val);
+		if (ret)
+			return ret;
+	} else {
+		return pt5161l_read_block_data(data, address, width, val);
+	}
+
+	return 0;
+}
+
+/*
+ * Read multiple (up to eight) data bytes from micro SRAM over I2C
+ */
+static int
+pt5161l_read_block_data_main_micro_indirect(struct pt5161l_data *data,
+					    u32 address, u8 len, u8 *val)
+{
+	int ret, tries;
+	u8 buf[8];
+	u8 i, status;
+	u32 uind_offs = ARIES_MM_ASSIST_REG_ADDR_OFFSET;
+	u32 eeprom_base, eeprom_addr;
+
+	/* No multi-byte indirect support here. Hence read a byte at a time */
+	eeprom_base = address - AL_MAIN_SRAM_DMEM_OFFSET;
+	for (i = 0; i < len; i++) {
+		eeprom_addr = eeprom_base + i;
+		buf[0] = eeprom_addr & 0xff;
+		buf[1] = (eeprom_addr >> 8) & 0xff;
+		buf[2] = (eeprom_addr >> 16) & 0xff;
+		ret = pt5161l_write_block_data(data, uind_offs, 3, buf);
+		if (ret)
+			return ret;
+
+		buf[0] = AL_TG_RD_LOC_IND_SRAM;
+		ret = pt5161l_write_block_data(data, uind_offs + 4, 1, buf);
+		if (ret)
+			return ret;
+
+		status = 0xff;
+		for (tries = 0; tries < 255; tries++) {
+			ret = pt5161l_read_block_data(data, uind_offs + 4, 1,
+						      &status);
+			if (ret)
+				return ret;
+
+			if (status == 0)
+				break;
+		}
+		if (status != 0)
+			return -ETIMEDOUT;
+
+		ret = pt5161l_read_block_data(data, uind_offs + 3, 1, buf);
+		if (ret)
+			return ret;
+
+		val[i] = buf[0];
+	}
+
+	return 0;
+}
+
+/*
+ * Check firmware load status
+ */
+static int pt5161l_fw_load_check(struct pt5161l_data *data)
+{
+	int ret;
+	u8 buf[8];
+
+	ret = pt5161l_read_block_data(data, ARIES_CODE_LOAD_REG, 1, buf);
+	if (ret)
+		return ret;
+
+	if (buf[0] < ARIES_LOAD_CODE) {
+		dev_dbg(&data->client->dev,
+			"Code Load reg unexpected. Not all modules are loaded %x\n",
+			buf[0]);
+		data->code_load_okay = false;
+	} else {
+		data->code_load_okay = true;
+	}
+
+	return 0;
+}
+
+/*
+ * Check main micro heartbeat
+ */
+static int pt5161l_heartbeat_check(struct pt5161l_data *data)
+{
+	int ret, tries;
+	u8 buf[8];
+	u8 heartbeat;
+	bool hb_changed = false;
+
+	ret = pt5161l_read_block_data(data, ARIES_MM_HEARTBEAT_ADDR, 1, buf);
+	if (ret)
+		return ret;
+
+	heartbeat = buf[0];
+	for (tries = 0; tries < 100; tries++) {
+		ret = pt5161l_read_block_data(data, ARIES_MM_HEARTBEAT_ADDR, 1,
+					      buf);
+		if (ret)
+			return ret;
+
+		if (buf[0] != heartbeat) {
+			hb_changed = true;
+			break;
+		}
+	}
+	data->mm_heartbeat_okay = hb_changed;
+
+	return 0;
+}
+
+/*
+ * Check the status of firmware
+ */
+static int pt5161l_fwsts_check(struct pt5161l_data *data)
+{
+	int ret;
+	u8 buf[8];
+	u8 major = 0, minor = 0;
+	u16 build = 0;
+
+	ret = pt5161l_fw_load_check(data);
+	if (ret)
+		return ret;
+
+	ret = pt5161l_heartbeat_check(data);
+	if (ret)
+		return ret;
+
+	if (data->code_load_okay && data->mm_heartbeat_okay) {
+		ret = pt5161l_read_block_data_main_micro_indirect(
+			data,
+			ARIES_MAIN_MICRO_FW_INFO + ARIES_MM_FW_VERSION_MAJOR, 1,
+			&major);
+		if (ret)
+			return ret;
+
+		ret = pt5161l_read_block_data_main_micro_indirect(
+			data,
+			ARIES_MAIN_MICRO_FW_INFO + ARIES_MM_FW_VERSION_MINOR, 1,
+			&minor);
+		if (ret)
+			return ret;
+
+		ret = pt5161l_read_block_data_main_micro_indirect(
+			data,
+			ARIES_MAIN_MICRO_FW_INFO + ARIES_MM_FW_VERSION_BUILD, 2,
+			buf);
+		if (ret)
+			return ret;
+		build = buf[1] << 8 | buf[0];
+	}
+	data->fw_ver.major = major;
+	data->fw_ver.minor = minor;
+	data->fw_ver.build = build;
+
+	return 0;
+}
+
+static int pt5161l_fw_is_at_least(struct pt5161l_data *data, u8 major, u8 minor,
+				  u16 build)
+{
+	u32 ver = major << 24 | minor << 16 | build;
+	u32 curr_ver = data->fw_ver.major << 24 | data->fw_ver.minor << 16 |
+		       data->fw_ver.build;
+
+	if (curr_ver >= ver)
+		return true;
+
+	return false;
+}
+
+static int pt5161l_init_dev(struct pt5161l_data *data)
+{
+	int ret;
+
+	mutex_lock(&data->lock);
+	ret = pt5161l_fwsts_check(data);
+	mutex_unlock(&data->lock);
+	if (ret)
+		return ret;
+
+	/* Firmware 2.2.0 enables safe access to wide registers */
+	if (pt5161l_fw_is_at_least(data, 2, 2, 0))
+		data->mm_wide_reg_access = true;
+
+	data->init_done = true;
+
+	return 0;
+}
+
+static int pt5161l_read(struct device *dev, enum hwmon_sensor_types type,
+			u32 attr, int channel, long *val)
+{
+	struct pt5161l_data *data = dev_get_drvdata(dev);
+	int ret;
+	u8 buf[8];
+	long adc_code;
+
+	switch (attr) {
+	case hwmon_temp_input:
+		if (!data->init_done) {
+			ret = pt5161l_init_dev(data);
+			if (ret)
+				return ret;
+		}
+
+		mutex_lock(&data->lock);
+		ret = pt5161l_read_wide_reg(
+			data, ARIES_CURRENT_AVG_TEMP_ADC_CSR, 4, buf);
+		mutex_unlock(&data->lock);
+		if (ret) {
+			dev_dbg(dev, "Read adc_code failed %d\n", ret);
+			return ret;
+		}
+
+		adc_code = buf[3] << 24 | buf[2] << 16 | buf[1] << 8 | buf[0];
+		if (adc_code == 0 || adc_code >= 0x3ff) {
+			dev_dbg(dev, "Invalid adc_code %lx\n", adc_code);
+			return -EIO;
+		}
+
+		*val = 110000 +
+		       ((adc_code - (ARIES_TEMP_CAL_CODE_DEFAULT + 250)) *
+			-320);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static umode_t pt5161l_is_visible(const void *data,
+				  enum hwmon_sensor_types type, u32 attr,
+				  int channel)
+{
+	switch (attr) {
+	case hwmon_temp_input:
+		return 0444;
+	default:
+		break;
+	}
+
+	return 0;
+}
+
+static const struct hwmon_channel_info *pt5161l_info[] = {
+	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
+	NULL
+};
+
+static const struct hwmon_ops pt5161l_hwmon_ops = {
+	.is_visible = pt5161l_is_visible,
+	.read = pt5161l_read,
+};
+
+static const struct hwmon_chip_info pt5161l_chip_info = {
+	.ops = &pt5161l_hwmon_ops,
+	.info = pt5161l_info,
+};
+
+static ssize_t pt5161l_debugfs_read_fw_ver(struct file *file, char __user *buf,
+					   size_t count, loff_t *ppos)
+{
+	struct pt5161l_data *data = file->private_data;
+	int ret;
+	char ver[32];
+
+	mutex_lock(&data->lock);
+	ret = pt5161l_fwsts_check(data);
+	mutex_unlock(&data->lock);
+	if (ret)
+		return ret;
+
+	ret = snprintf(ver, sizeof(ver), "%u.%u.%u\n", data->fw_ver.major,
+		       data->fw_ver.minor, data->fw_ver.build);
+	if (ret < 0)
+		return ret;
+
+	return simple_read_from_buffer(buf, count, ppos, ver, ret + 1);
+}
+
+static const struct file_operations pt5161l_debugfs_ops_fw_ver = {
+	.read = pt5161l_debugfs_read_fw_ver,
+	.open = simple_open,
+};
+
+static ssize_t pt5161l_debugfs_read_fw_load_sts(struct file *file,
+						char __user *buf, size_t count,
+						loff_t *ppos)
+{
+	struct pt5161l_data *data = file->private_data;
+	int ret;
+	bool status = false;
+	char health[16];
+
+	mutex_lock(&data->lock);
+	ret = pt5161l_fw_load_check(data);
+	mutex_unlock(&data->lock);
+	if (ret == 0)
+		status = data->code_load_okay;
+
+	ret = snprintf(health, sizeof(health), "%s\n",
+		       status ? "normal" : "abnormal");
+	if (ret < 0)
+		return ret;
+
+	return simple_read_from_buffer(buf, count, ppos, health, ret + 1);
+}
+
+static const struct file_operations pt5161l_debugfs_ops_fw_load_sts = {
+	.read = pt5161l_debugfs_read_fw_load_sts,
+	.open = simple_open,
+};
+
+static ssize_t pt5161l_debugfs_read_hb_sts(struct file *file, char __user *buf,
+					   size_t count, loff_t *ppos)
+{
+	struct pt5161l_data *data = file->private_data;
+	int ret;
+	bool status = false;
+	char health[16];
+
+	mutex_lock(&data->lock);
+	ret = pt5161l_heartbeat_check(data);
+	mutex_unlock(&data->lock);
+	if (ret == 0)
+		status = data->mm_heartbeat_okay;
+
+	ret = snprintf(health, sizeof(health), "%s\n",
+		       status ? "normal" : "abnormal");
+	if (ret < 0)
+		return ret;
+
+	return simple_read_from_buffer(buf, count, ppos, health, ret + 1);
+}
+
+static const struct file_operations pt5161l_debugfs_ops_hb_sts = {
+	.read = pt5161l_debugfs_read_hb_sts,
+	.open = simple_open,
+};
+
+static int pt5161l_init_debugfs(struct pt5161l_data *data)
+{
+	data->debugfs = debugfs_create_dir(dev_name(&data->client->dev),
+					   pt5161l_debugfs_dir);
+
+	debugfs_create_file("fw_ver", 0444, data->debugfs, data,
+			    &pt5161l_debugfs_ops_fw_ver);
+
+	debugfs_create_file("fw_load_status", 0444, data->debugfs, data,
+			    &pt5161l_debugfs_ops_fw_load_sts);
+
+	debugfs_create_file("heartbeat_status", 0444, data->debugfs, data,
+			    &pt5161l_debugfs_ops_hb_sts);
+
+	return 0;
+}
+
+static int pt5161l_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct device *hwmon_dev;
+	struct pt5161l_data *data;
+
+	data = devm_kzalloc(dev, sizeof(struct pt5161l_data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->client = client;
+	mutex_init(&data->lock);
+	pt5161l_init_dev(data);
+	dev_set_drvdata(dev, data);
+
+	hwmon_dev = devm_hwmon_device_register_with_info(
+		dev, client->name, data, &pt5161l_chip_info, NULL);
+
+	pt5161l_init_debugfs(data);
+
+	return PTR_ERR_OR_ZERO(hwmon_dev);
+}
+
+static void pt5161l_remove(struct i2c_client *client)
+{
+	struct pt5161l_data *data = i2c_get_clientdata(client);
+
+	debugfs_remove_recursive(data->debugfs);
+}
+
+static const struct of_device_id __maybe_unused pt5161l_of_match[] = {
+	{ .compatible = "asteralabs,pt5161l" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, pt5161l_of_match);
+
+static const struct acpi_device_id __maybe_unused pt5161l_acpi_match[] = {
+	{ "PT5161L", 0 },
+	{},
+};
+MODULE_DEVICE_TABLE(acpi, pt5161l_acpi_match);
+
+static const struct i2c_device_id pt5161l_id[] = {
+	{ "pt5161l", 0 },
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, pt5161l_id);
+
+static struct i2c_driver pt5161l_driver = {
+	.class = I2C_CLASS_HWMON,
+	.driver = {
+		.name = "pt5161l",
+		.of_match_table = of_match_ptr(pt5161l_of_match),
+		.acpi_match_table = ACPI_PTR(pt5161l_acpi_match),
+	},
+	.probe = pt5161l_probe,
+	.remove = pt5161l_remove,
+	.id_table = pt5161l_id,
+};
+
+static int __init pt5161l_init(void)
+{
+	pt5161l_debugfs_dir = debugfs_create_dir("pt5161l", NULL);
+	return i2c_add_driver(&pt5161l_driver);
+}
+
+static void __exit pt5161l_exit(void)
+{
+	i2c_del_driver(&pt5161l_driver);
+	debugfs_remove_recursive(pt5161l_debugfs_dir);
+}
+
+module_init(pt5161l_init);
+module_exit(pt5161l_exit);
+
+MODULE_AUTHOR("Cosmo Chou <cosmo.chou@quantatw.com>");
+MODULE_DESCRIPTION("Hwmon driver for Astera Labs Aries PCIe retimer");
+MODULE_LICENSE("GPL");
-- 
2.34.1


