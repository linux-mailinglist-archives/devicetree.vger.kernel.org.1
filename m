Return-Path: <devicetree+bounces-250129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D4BCE6658
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18B9130024F6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3CF2F530A;
	Mon, 29 Dec 2025 10:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LorXcLCd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB92B2F3C18
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767004976; cv=none; b=PDenzxURDnf/3TA/40jWEVYwFkLaCO1V2kyOt6IBpjWxt0iiJ6wJz3xx0yr6qUyNgQDgzdi92jdI4rBZepPz24YcvP6ssTOne37ltTjj+F1gC11q1WuWpFFP3UbUDtSAXvvTOgsKaPyNbB8Mag54AzWrRCA528ewdl/BGixK0Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767004976; c=relaxed/simple;
	bh=82V4QD5hN+twP+eBKNDcpj74/i/Tdt400F6+yHPj8w0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AKtQqCqSjKg9cLluUKrKpHueNcWK6JcUa4bn3xyRBjYmeu71A6+6d99EUFSa0wJ72h8Q6urMWdrGpGo09bhhYeekrjUNIjSezCVLlpsUjBNoFliNK2CffWFZOOBFx7HPvDVwJUKFNDUsg6L+vjCRmGGSM13Ex/fX6TqyrhWFFMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LorXcLCd; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0bb2f093aso89813035ad.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767004974; x=1767609774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aHfJ14kDlyfY27Whrgp81XQ0o/zmFM31pG3R//sYJCA=;
        b=LorXcLCdxdVlrW6M1TJw80JSJio+sgdYjz7ZZQOxREmBQIN3sinIRCYgelYldioDp2
         2uUQ4csXHYG+2+rpucWX/1gMCU5ADyEugjJNg29btV6KzQCJ7c4iHYti5Ls/QF10LNw6
         t5zuXR7CYNGTDL7ozRH48+tqeDyFo80qIEXmtRp17aRPNLZ8FJKQKqtqubFsRZgmaUSx
         kfgIT5kpnLsS4NXslpqx0Hf7YEgrIFdZEH9mDGbZLjTkca4M9orYAlWXiQzQrUlNPf40
         H6f8AFqIPVq4EWwpSenJdgdQ+vuywybK9Lfmqs+pR7ybu+sNX+IwkQBs9xsmoHYejJK/
         p18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767004974; x=1767609774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aHfJ14kDlyfY27Whrgp81XQ0o/zmFM31pG3R//sYJCA=;
        b=hOWwvCAretbLnkchF0WL7cT16X45RxLnBJKP0mQvCe+mFh3LVETxYPCGArVEireSzR
         X++0J1ck+rjohYo4LlKSe95pijXkVQrN1krvraK88QjB9Nnki8nOwJJqnpk/EiV3MHPM
         SmVaOT/Lx0OFkH+BC/eULJTjCIW3TjBO3aAspNV/PTxDNt14cVYSa5vexVJvTUTpXLtX
         BcAsePQTlQDSGCEia5dSPB1BuN7zr6dtFV08k0C0Kcdmgaag0lbozMj+QjaNkR00YlEM
         lyGncUvYokFjUGDeLNokbGePELK7I5+rnV2Od/7fuTkV36BSBPCzSoGgbsr+D0sH9kBo
         CFhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkRY1vCOTGelL7Dg1Ext1vt6M+Pr/iwrPqF4jAksluR3PBROMLI4t5NH3/rYNH4kiNPsAIsn2SZPbN@vger.kernel.org
X-Gm-Message-State: AOJu0YwqsS42VGEUbdC7tnkvl3EcRRIBXljTzaQvxA7QluvNCIAdk6Kd
	dhHJ0lEX2ZihWxFdcgypByTR8tSbzMkSoX5EVlFKSbvL2FhoQc+rs8Y4SwEtRT/m
X-Gm-Gg: AY/fxX6568FPBbZDmUMUhxB/+Txsx85DNEiNUNxMlRBhjNLsTtisklaMmJMZBBwS7OY
	FLudET+dYFMyk/UW2ffdFWNFsT6cL1xkrXkjC9p/sWebQsMdAhUUAghvoVGOAuc0qwvoKr3PKX4
	MNLqstQZTvz2GPWOlrMg3MgEckmboOBzEoYBIHrh/uXHSs6F+4Yi/Uvr4YFamNOW0bZWrX6FoZn
	NVpgi7zP46UBJNk9C5G443CBpvCB5uPcqJ5AKmi0ivCxCJl+YTSVFTQQ3+o8oxXK8AwFaff04Hf
	km3JQsqyN96qNwOnfCfglWW7U3Ki71HcWjVl+fC27K2cPyQlr846rzvV6Q3ntb/WRekm0qNCUeO
	M8BIWTiLUN9Mbbc2CUmw06NvKk5XN4mLMT65aLG1k6xyMwlKL+6whI2ADNMFtm9vMb16Twv9Yh8
	qGuKUfldIxN6d+0kosg6N4Jc/QzVdiEedj75Xd8ZAwkDrqCumqUJhgHj7VX6fhY+2zQFpWvitkP
	gLPbcYt7zEG6iyx3gnlEXvtc+BFRKpYp3/69FE75Q==
X-Google-Smtp-Source: AGHT+IFS/DkMbYGdytL2bK+99dazArhC2rFhHLDNZL2oc8MJN3QlunUgYeIJS5atrbKBmSEfWcelsA==
X-Received: by 2002:a17:903:19f0:b0:2a0:a92c:2cb6 with SMTP id d9443c01a7336-2a2f2732647mr322614775ad.36.1767004974016;
        Mon, 29 Dec 2025 02:42:54 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d77566sm272803575ad.97.2025.12.29.02.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:42:53 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: linux@roeck-us.net
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v5 2/2] hwmon: pmbus: add support for STEF48H28
Date: Mon, 29 Dec 2025 18:39:56 +0800
Message-Id: <20251229103956.120184-2-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229103956.120184-1-hsu.yungteng@gmail.com>
References: <20251229103956.120184-1-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for STEF48H28 hot-swap controller.

Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
---
 Documentation/hwmon/index.rst     |  1 +
 Documentation/hwmon/stef48h28.rst | 73 +++++++++++++++++++++++++++++
 MAINTAINERS                       |  7 +++
 drivers/hwmon/pmbus/Kconfig       |  9 ++++
 drivers/hwmon/pmbus/Makefile      |  1 +
 drivers/hwmon/pmbus/stef48h28.c   | 76 +++++++++++++++++++++++++++++++
 6 files changed, 167 insertions(+)
 create mode 100644 Documentation/hwmon/stef48h28.rst
 create mode 100644 drivers/hwmon/pmbus/stef48h28.c

diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
index 85d7a686883e..c682751a1fe3 100644
--- a/Documentation/hwmon/index.rst
+++ b/Documentation/hwmon/index.rst
@@ -233,6 +233,7 @@ Hardware Monitoring Kernel Drivers
    shtc1
    sis5595
    sl28cpld
+   stef48h28
    smpro-hwmon
    smsc47b397
    smsc47m192
diff --git a/Documentation/hwmon/stef48h28.rst b/Documentation/hwmon/stef48h28.rst
new file mode 100644
index 000000000000..786e102287f2
--- /dev/null
+++ b/Documentation/hwmon/stef48h28.rst
@@ -0,0 +1,73 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Kernel driver stef48h28
+=======================
+
+Supported chips:
+
+  * Analog Devices STEF48H28
+
+    Prefix: 'stef48h28'
+
+    Addresses scanned: -
+
+    Datasheet: https://www.st.com/resource/en/data_brief/stef48h28.pdf
+
+Author:
+
+  - Charles Hsu <hsu.yungteng@gmail.com>
+
+
+Description
+-----------
+
+The STEF48H28 is a 30 A integrated e-fuse for 9-80 V DC power rails.
+It provides inrush control, undervoltage/overvoltage lockout and
+overcurrent protection using an adaptive (I x t) scheme that permits
+short high-current pulses typical of CPU/GPU loads.
+
+The device offers an analog current-monitor output and an on-chip
+temperature-monitor signal for system supervision. Startup behavior is
+programmable through insertion-delay and soft-start settings.
+
+Additional features include power-good indication, self-diagnostics,
+thermal shutdown and a PMBus interface for telemetry and status
+reporting.
+
+Platform data support
+---------------------
+
+The driver supports standard PMBus driver platform data.
+
+Sysfs entries
+-------------
+
+================= ========================================
+in1_label		"vin".
+in1_input		Measured voltage. From READ_VIN register.
+in1_min			Minimum Voltage. From VIN_UV_WARN_LIMIT register.
+in1_max			Maximum voltage. From VIN_OV_WARN_LIMIT register.
+
+in2_label		"vout1".
+in2_input		Measured voltage. From READ_VOUT register.
+in2_min			Minimum Voltage. From VOUT_UV_WARN_LIMIT register.
+in2_max			Maximum voltage. From VOUT_OV_WARN_LIMIT register.
+
+curr1_label "iin".
+curr1_input Measured current. From READ_IIN register.
+
+curr2_label "iout1".
+curr2_input Measured current. From READ_IOUT register.
+
+power1_label		"pin"
+power1_input		Measured input power. From READ_PIN register.
+
+power2_label		"pout1"
+power2_input		Measured output power. From READ_POUT register.
+
+temp1_input		Measured temperature. From READ_TEMPERATURE_1 register.
+temp1_max		Maximum temperature. From OT_WARN_LIMIT register.
+temp1_crit		Critical high temperature. From OT_FAULT_LIMIT register.
+
+temp2_input		Measured temperature. From READ_TEMPERATURE_2 register.
+================= ========================================
diff --git a/MAINTAINERS b/MAINTAINERS
index d701a4d5b00e..be6b6e9ee79b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24665,6 +24665,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/power/supply/st,stc3117.yaml
 F:	drivers/power/supply/stc3117_fuel_gauge.c
 
+ST STEF48H28 DRIVER
+M:	Charles Hsu	<hsu.yungteng@gmail.com>
+L:	linux-hwmon@vger.kernel.org
+S:	Maintained
+F:	Documentation/hwmon/stef48h28.rst
+F:	drivers/hwmon/pmbus/stef48h28.c
+
 ST STM32 FIREWALL
 M:	Gatien Chevallier <gatien.chevallier@foss.st.com>
 S:	Maintained
diff --git a/drivers/hwmon/pmbus/Kconfig b/drivers/hwmon/pmbus/Kconfig
index f3fb94cebf1a..29ea8ba98b8b 100644
--- a/drivers/hwmon/pmbus/Kconfig
+++ b/drivers/hwmon/pmbus/Kconfig
@@ -576,6 +576,15 @@ config SENSORS_Q54SJ108A2
 	  This driver can also be built as a module. If so, the module will
 	  be called q54sj108a2.
 
+config SENSORS_STEF48H28
+    tristate "ST STEF48H28"
+	help
+	  If you say yes here you get hardware monitoring support for ST
+	  STEF48H28.
+
+	  This driver can also be built as a module. If so, the module will
+	  be called stef48h28.
+
 config SENSORS_STPDDC60
 	tristate "ST STPDDC60"
 	help
diff --git a/drivers/hwmon/pmbus/Makefile b/drivers/hwmon/pmbus/Makefile
index 349a89b6d92e..b2497f1d7bd9 100644
--- a/drivers/hwmon/pmbus/Makefile
+++ b/drivers/hwmon/pmbus/Makefile
@@ -56,6 +56,7 @@ obj-$(CONFIG_SENSORS_PLI1209BC)	+= pli1209bc.o
 obj-$(CONFIG_SENSORS_PM6764TR)	+= pm6764tr.o
 obj-$(CONFIG_SENSORS_PXE1610)	+= pxe1610.o
 obj-$(CONFIG_SENSORS_Q54SJ108A2)	+= q54sj108a2.o
+obj-$(CONFIG_SENSORS_STEF48H28)	+= stef48h28.o
 obj-$(CONFIG_SENSORS_STPDDC60)	+= stpddc60.o
 obj-$(CONFIG_SENSORS_TDA38640)	+= tda38640.o
 obj-$(CONFIG_SENSORS_TPS25990)	+= tps25990.o
diff --git a/drivers/hwmon/pmbus/stef48h28.c b/drivers/hwmon/pmbus/stef48h28.c
new file mode 100644
index 000000000000..f66612b2031b
--- /dev/null
+++ b/drivers/hwmon/pmbus/stef48h28.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Hardware monitoring driver for STMicroelectronics digital controller stef48h28
+ */
+
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+
+#include "pmbus.h"
+
+static struct pmbus_driver_info stef48h28_info = {
+	.pages = 1,
+	.format[PSC_VOLTAGE_IN] = direct,
+	.format[PSC_VOLTAGE_OUT] = direct,
+	.format[PSC_CURRENT_IN] = direct,
+	.format[PSC_CURRENT_OUT] = direct,
+	.format[PSC_POWER] = direct,
+	.format[PSC_TEMPERATURE] = direct,
+	.m[PSC_VOLTAGE_IN] = 50,
+	.b[PSC_VOLTAGE_IN] = 0,
+	.R[PSC_VOLTAGE_IN] = 0,
+	.m[PSC_VOLTAGE_OUT] = 50,
+	.b[PSC_VOLTAGE_OUT] = 0,
+	.R[PSC_VOLTAGE_OUT] = 0,
+	.m[PSC_CURRENT_IN] = 100,
+	.b[PSC_CURRENT_IN] = 0,
+	.R[PSC_CURRENT_IN] = 0,
+	.m[PSC_CURRENT_OUT] = 100,
+	.b[PSC_CURRENT_OUT] = 0,
+	.R[PSC_CURRENT_OUT] = 0,
+	.m[PSC_POWER] = 9765,
+	.b[PSC_POWER] = 0,
+	.R[PSC_POWER] = -3,
+	.m[PSC_TEMPERATURE] = 25,
+	.b[PSC_TEMPERATURE] = 500,
+	.R[PSC_TEMPERATURE] = 0,
+	.func[0] = PMBUS_HAVE_VIN | PMBUS_HAVE_IIN | PMBUS_HAVE_PIN
+	    | PMBUS_HAVE_STATUS_INPUT | PMBUS_HAVE_TEMP | PMBUS_HAVE_TEMP2
+	    | PMBUS_HAVE_STATUS_TEMP | PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT
+	    | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT | PMBUS_HAVE_POUT
+};
+
+static int stef48h28_probe(struct i2c_client *client)
+{
+	return pmbus_do_probe(client, &stef48h28_info);
+}
+
+static const struct i2c_device_id stef48h28_id[] = {
+	{"stef48h28"},
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, stef48h28_id);
+
+static const struct of_device_id __maybe_unused stef48h28_of_match[] = {
+	{.compatible = "st,stef48h28"},
+	{}
+};
+
+/* This is the driver that will be inserted */
+static struct i2c_driver stef48h28_driver = {
+	.driver = {
+		   .name = "stef48h28",
+		   .of_match_table = of_match_ptr(stef48h28_of_match),
+		   },
+	.probe = stef48h28_probe,
+	.id_table = stef48h28_id,
+};
+
+module_i2c_driver(stef48h28_driver);
+
+MODULE_AUTHOR("Charles Hsu <hsu.yungteng@gmail.com>");
+MODULE_DESCRIPTION("PMBus driver for ST stef48h28");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("PMBUS");
-- 
2.34.1


