Return-Path: <devicetree+bounces-266629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGIvOsXtlmngrAIAu9opvQ
	(envelope-from <devicetree+bounces-266629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:02:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B15815E1F4
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B07F63058B99
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5618033D6D8;
	Thu, 19 Feb 2026 11:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nOzzsSIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF9633D503
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771498884; cv=none; b=J50txbV2o7dT6fAP2EZV8XWv4Q7VL3HWvC4YvEptCtILM/4vvFdcwNBMc0u3oQrN3X+Vizn7CIQPCEWj2KdveNLHjFz4CBRv+51tVcCahkS6i1c/+sdk84fEPJcCXuiczYrt+5kJmqOZkELTcvr0OV4JEicLdoEbdOePQGnLEOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771498884; c=relaxed/simple;
	bh=skgvFjJHMlRkWo3prizBsBkUFGQTiIkbcAlgk0nIVlo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Esmn/Kj/y5zncZjPb79RzVyoPAwF3TgYsMJitkz4jTdSsOSeJqgtVV7hIcsLhF5xQbjVAJ32/M9aJrz/ULiV4beIj5sT7Z0+la9yVRZ5hCL8Akpz9QazjDj4cGyGEars2GJuOXdlFbR1tQMubNsfzx8m+wIl3sgVkokAP/R/L4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nOzzsSIq; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a929245b6aso7623735ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771498881; x=1772103681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pAX16mjprYtf6YC1ox8d1Sd0Pel8V9yDH1WEINK3oK0=;
        b=nOzzsSIq2L+qBIVEd4rRQK/9diQrdaKDcqNymbTc+fLrvEH5xu4IrTKkihhsLsQFVp
         QiZ1YPqzZCyrJSSYXuLuvibqwFZG0QvdrM78GqF7ZAShc7sre/QZY2uYRwpZAeM0yHSD
         1zyOOUhPHoXRJiFjGhQxsYvhy9oOUboAqzRkIIijIfKtnGgmLTdJwG9zOP5BHN7VQR4k
         1R1tizSBMcGJq8k4us5J/r9hHHMxDP1oq8S3eWgiZyIe9d4pDyWXqwYVrt/L1l6kvsaS
         aQuFMNLqO14DinIL0BAoif7J6VvBC8HkmeZV/HnAbZRGuSwU6tdntpsH8vlY6O4czi4B
         N/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771498881; x=1772103681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pAX16mjprYtf6YC1ox8d1Sd0Pel8V9yDH1WEINK3oK0=;
        b=hG73yQ1ymVP/Uk9uSaULKUgY8qXgY8d2/wja5wIgsYc+fl/y3iM2EWTB3eGuRleN6e
         jJ3swKjCCDuTbMu/3Y2sWBQW95zS2xnZdIjO2y06160Hp8oioBY39TQOqgcce9kZCcGa
         b6pwkWvuSj47haFeaZFEShmHtypuggCdcXzq1ZDdmQ4SkGGSY8hNSEsYiHA2qes8yTCI
         1IFjlhvzkct7rqLjf558h+Qzzxj0bpdxd0F3z3KQDSK8tAKWrOHDqlcpftOXYxcV0ISJ
         Ig2cdH4pWnWh9mtTx4weAQ6M9krv0RDGZ5crbbmqGIVkL9inL58TUKQAX1PPdvnwcL6g
         GpJg==
X-Forwarded-Encrypted: i=1; AJvYcCUcw8pRSsdpqYRTTuilRGBZBCc3+K7lh7K2CkrVSFhlHt9UbnOIwkmaNTB10A9nsng+2ZDMlHLSGThc@vger.kernel.org
X-Gm-Message-State: AOJu0YxqSmPvNaHWNC/l0l+445hCVOvVQPSVat4qptpZ3uu2NWaBSDg+
	Nr4tsXLEZemds0B0Fk0Ju0BU/7n3fJ3bixBDsa+38aQiRlQ6WB7rv16e
X-Gm-Gg: AZuq6aKSJwloeu6r08A+ZmUNjwIuyCNlB6EvBiMaOLydPqVXt3m7wR2AV4oqO/CM85p
	dqerNXWS/NDcpO4YcWjk2sNDVDhbJ/w0PkAaf7iHVPakdeZUonsuULzXgzA+cxAC5lAwY8lwe2N
	cJXmrgS9JgpEMte0pUKxlcGyo8VeTRUjyZ4OFxpRXT9lHHdqVixqH6/aesGXcOYwkX33pXrCtr+
	sxKiyd103n2V/7dnYl7cI1iRLU0wSYxifHiR7f6kP6Vd1hG3NWPBXbLb6iutKQ+NvlGmI+DSyK7
	QBNd0lLsP5kKGYHl6sESD5v6F/wDOHw/GbpI3CWcfNrLLlvBmaVC+sMn7KA8V1WrKDh3Xfa52EL
	/S+hr8j4XYn5DiJth/p3xG6SjMrdqlP7riqdy+Hm2R0/VnKiaKlF78PV4QvEYm+sbDeHNwa3Iwv
	K0S7lJ2+Iae/cfMfrBeVp4BDnSFRgu35l90iqk02SFAa73SR61/D8qUuP6
X-Received: by 2002:a17:903:8cc:b0:2a2:ecb6:55ac with SMTP id d9443c01a7336-2ad17433389mr185284915ad.7.1771498881116;
        Thu, 19 Feb 2026 03:01:21 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:939b:3231:1953:3f2f:aba4:9c8a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadd9e8sm164339745ad.74.2026.02.19.03.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 03:01:20 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v2 3/3] hwmon:(pmbus/xdpe1a2g7b) Add support for xdpe1a2g5b/7b controllers
Date: Thu, 19 Feb 2026 16:26:30 +0530
Message-Id: <20260219105630.11929-4-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
References: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266629-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4B15815E1F4
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Add the pmbus driver for Infineon Digital Multi-phase XDPE1A2G5B and
XDPE1A2G7B controllers.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
---
XDPE1A2G5B and XDPE1A2G7B support both Linear and NVIDIA PWM VID Data
formats for VOUT_MODE.
The configuring both loops/pages of the device independently is not
supported for VOUT_MODE.
In case of vid mode, NVIDIA PWM VID vrm_version is supported:
Vout = 5mV * (VID-1) + 195mV
---
 drivers/hwmon/pmbus/Kconfig      |   9 +++
 drivers/hwmon/pmbus/Makefile     |   1 +
 drivers/hwmon/pmbus/xdpe1a2g7b.c | 120 +++++++++++++++++++++++++++++++
 3 files changed, 130 insertions(+)
 create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c

diff --git a/drivers/hwmon/pmbus/Kconfig b/drivers/hwmon/pmbus/Kconfig
index fc1273abe357..a4513fc6bc26 100644
--- a/drivers/hwmon/pmbus/Kconfig
+++ b/drivers/hwmon/pmbus/Kconfig
@@ -711,6 +711,15 @@ config SENSORS_XDPE152
 	  This driver can also be built as a module. If so, the module will
 	  be called xdpe152c4.
 
+config SENSORS_XDPE1A2G7B
+	tristate "Infineon XDPE1A2G7B"
+	help
+	  If you say yes here you get hardware monitoring support for Infineon
+	  XDPE1A2G5B and XDPE1A2G7B.
+
+	  This driver can also be built as a module. If so, the module will
+	  be called xdpe1a2g7b.
+
 config SENSORS_XDPE122
 	tristate "Infineon XDPE122 family"
 	help
diff --git a/drivers/hwmon/pmbus/Makefile b/drivers/hwmon/pmbus/Makefile
index d6c86924f887..d592d8c77bec 100644
--- a/drivers/hwmon/pmbus/Makefile
+++ b/drivers/hwmon/pmbus/Makefile
@@ -70,6 +70,7 @@ obj-$(CONFIG_SENSORS_UCD9200)	+= ucd9200.o
 obj-$(CONFIG_SENSORS_XDP710)	+= xdp710.o
 obj-$(CONFIG_SENSORS_XDPE122)	+= xdpe12284.o
 obj-$(CONFIG_SENSORS_XDPE152)	+= xdpe152c4.o
+obj-$(CONFIG_SENSORS_XDPE1A2G7B)	+= xdpe1a2g7b.o
 obj-$(CONFIG_SENSORS_ZL6100)	+= zl6100.o
 obj-$(CONFIG_SENSORS_PIM4328)	+= pim4328.o
 obj-$(CONFIG_SENSORS_CRPS)	+= crps.o
diff --git a/drivers/hwmon/pmbus/xdpe1a2g7b.c b/drivers/hwmon/pmbus/xdpe1a2g7b.c
new file mode 100644
index 000000000000..e10bafeb0984
--- /dev/null
+++ b/drivers/hwmon/pmbus/xdpe1a2g7b.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Hardware monitoring driver for Infineon Multi-phase Digital XDPE1A2G5B
+ * and XDPE1A2G7B Controllers
+ *
+ * Copyright (c) 2026 Infineon Technologies. All rights reserved.
+ */
+
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include "pmbus.h"
+
+#define XDPE1A2G7B_PAGE_NUM 2
+#define XDPE1A2G7B_NVIDIA_195MV 0x1E /* NVIDIA mode 1.95mV, VID step is 5mV */
+
+static int xdpe1a2g7b_identify(struct i2c_client *client,
+			       struct pmbus_driver_info *info)
+{
+	u8 vout_params;
+	int vout_mode;
+
+	/*
+	 * XDPE1A2G5B and XDPE1A2G7B support both Linear and NVIDIA PWM VID data
+	 * formats via VOUT_MODE. Note that the device pages/loops are not fully
+	 * independent: configuration is shared, so programming each page/loop
+	 * separately is not supported for VOUT_MODE.
+	 */
+	vout_mode = pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
+	if (vout_mode >= 0 && vout_mode != 0xff) {
+		switch (vout_mode >> 5) {
+		case 0:
+			info->format[PSC_VOLTAGE_OUT] = linear;
+			return 0;
+		case 1:
+			info->format[PSC_VOLTAGE_OUT] = vid;
+			vout_params = vout_mode & GENMASK(4, 0);
+			/* Check for VID Code Type */
+			switch (vout_params) {
+			case XDPE1A2G7B_NVIDIA_195MV:
+				/* VID vrm_version for PAGE0 and PAGE1 */
+				info->vrm_version[0] = nvidia195mv;
+				info->vrm_version[1] = nvidia195mv;
+				break;
+			default:
+				return -EINVAL;
+			}
+			break;
+		default:
+			return -ENODEV;
+		}
+	} else {
+		return vout_mode < 0 ? vout_mode : -ENODEV;
+	}
+
+	return 0;
+}
+
+static struct pmbus_driver_info xdpe1a2g7b_info = {
+	.pages = XDPE1A2G7B_PAGE_NUM,
+	.identify = xdpe1a2g7b_identify,
+	.format[PSC_VOLTAGE_IN] = linear,
+	.format[PSC_TEMPERATURE] = linear,
+	.format[PSC_CURRENT_IN] = linear,
+	.format[PSC_CURRENT_OUT] = linear,
+	.format[PSC_POWER] = linear,
+	.func[0] = PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT |
+		   PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
+		   PMBUS_HAVE_TEMP | PMBUS_HAVE_TEMP2 | PMBUS_HAVE_STATUS_TEMP |
+		   PMBUS_HAVE_POUT | PMBUS_HAVE_PIN | PMBUS_HAVE_STATUS_INPUT,
+	.func[1] = PMBUS_HAVE_VIN | PMBUS_HAVE_VOUT | PMBUS_HAVE_STATUS_VOUT |
+		   PMBUS_HAVE_IIN | PMBUS_HAVE_IOUT | PMBUS_HAVE_STATUS_IOUT |
+		   PMBUS_HAVE_PIN | PMBUS_HAVE_POUT | PMBUS_HAVE_STATUS_INPUT,
+};
+
+static int xdpe1a2g7b_probe(struct i2c_client *client)
+{
+	struct pmbus_driver_info *info;
+
+	info = devm_kmemdup(&client->dev, &xdpe1a2g7b_info, sizeof(*info),
+			    GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	return pmbus_do_probe(client, info);
+}
+
+static const struct i2c_device_id xdpe1a2g7b_id[] = {
+	{ "xdpe1a2g5b" },
+	{ "xdpe1a2g7b" },
+	{}
+};
+
+MODULE_DEVICE_TABLE(i2c, xdpe1a2g7b_id);
+
+static const struct of_device_id __maybe_unused xdpe1a2g7b_of_match[] = {
+	{ .compatible = "infineon,xdpe1a2g5b" },
+	{ .compatible = "infineon,xdpe1a2g7b" },
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, xdpe1a2g7b_of_match);
+
+static struct i2c_driver xdpe1a2g7b_driver = {
+	.driver = {
+		.name = "xdpe1a2g7b",
+		.of_match_table = of_match_ptr(xdpe1a2g7b_of_match),
+	},
+	.probe = xdpe1a2g7b_probe,
+	.id_table = xdpe1a2g7b_id,
+};
+
+module_i2c_driver(xdpe1a2g7b_driver);
+
+MODULE_AUTHOR("Ashish Yadav <ashish.yadav@infineon.com>");
+MODULE_DESCRIPTION("PMBus driver for Infineon XDPE1A2G5B/7B");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("PMBUS");
-- 
2.39.5


