Return-Path: <devicetree+bounces-263336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIKvKXvYhWlZHQQAu9opvQ
	(envelope-from <devicetree+bounces-263336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:03:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E09AFD71E
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DA0F3051292
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B37337BA4;
	Fri,  6 Feb 2026 12:01:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0F1396D2B;
	Fri,  6 Feb 2026 12:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770379301; cv=none; b=s143b5X+G6iCHYyh1/7kgA8B7mUKfQiroa/dRb2YI56j4c6jGwQTHBdUaqZZHi1EvV4r0nxAUyOoMclSw1cTbYRdzniclM2esfENd7BsywBkt/O+uVptBAlWwn/cWzp+/bLiv6xlYnGAeNxzmwhVpFNmx+VG4FqpN9N4i1MwvMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770379301; c=relaxed/simple;
	bh=ixnSxbQ/ADVakfJyWlxe5h5CUDXeHd/J7SULK0z5+f4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IdpJjPDJDIXvBpDw2rhKfhlDVcY3dLgDUFb7vFF1zHXE2aGDRJhGRr+H+CWD9X5C/IiVtiE+onD1EAMm3YUUvuCQmKmfyl3sSlznLLkHS0e0fFK53fjQOt2H6xey0I9XW/Y1D2AZLomgdziS30wVTmSJXdVqBmPOflNtoUd++SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8F2312014E0;
	Fri,  6 Feb 2026 13:01:39 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8144D200036;
	Fri,  6 Feb 2026 13:01:39 +0100 (CET)
Received: from lsv15573.swis.ro-buh01.nxp.com (lsv15573.swis.ro-buh01.nxp.com [10.172.0.77])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 77A6C202AB;
	Fri,  6 Feb 2026 13:01:37 +0100 (CET)
From: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
To: linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	Frank.Li@nxp.com,
	lgirdwood@gmail.com
Cc: vikash.bansal@nxp.com,
	priyanka.jain@nxp.com,
	shashank.rebbapragada@nxp.com,
	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Subject: [PATCH v5 3/5] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub and on-die regulator
Date: Fri,  6 Feb 2026 14:01:19 +0200
Message-Id: <20260206120121.856471-3-aman.kumarpandey@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260206120121.856471-1-aman.kumarpandey@nxp.com>
References: <20260206120121.856471-1-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263336-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.453];
	FROM_NEQ_ENVFROM(0.00)[aman.kumarpandey@nxp.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,nxp.com:mid,nxp.com:email,carnegierobotics.com:email]
X-Rspamd-Queue-Id: 0E09AFD71E
X-Rspamd-Action: no action

Add core MFD support for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
family of multiport I3C hub devices. These devices connect to a host via
I3C/I2C/SMBus and expose multiple downstream target ports.

This patch introduces the MFD driver that registers sub-devices for the
I3C hub and on-die regulators.

Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>

---
Changes in v5:
 - Corrected the ordering in the Makefile and Kconfig for MFD_P3H2X4X
 - Updated dev_err_probe() for regmap_init failure.
 - Updated module description

Changes in v4:
 - Split the driver into three separate patches(mfd, regulator and I3C hub)
 - Added support for NXP P3H2x4x MFD functionality
---
---
 MAINTAINERS                 |   2 +
 drivers/mfd/Kconfig         |  12 ++++
 drivers/mfd/Makefile        |   1 +
 drivers/mfd/p3h2840.c       | 128 ++++++++++++++++++++++++++++++++++++
 include/linux/mfd/p3h2840.h |  28 ++++++++
 5 files changed, 171 insertions(+)
 create mode 100644 drivers/mfd/p3h2840.c
 create mode 100644 include/linux/mfd/p3h2840.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 7e1a6cb22ca3..6c247e4a0c12 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18913,6 +18913,8 @@ L:	linux-kernel@vger.kernel.org
 L:	linux-i3c-owner@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
+F:	drivers/mfd/p3h2840.c
+F:	include/linux/mfd/p3h2840.h
 
 NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
 M:	Woodrow Douglass <wdouglass@carnegierobotics.com>
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index aace5766b38a..10d03cf308d7 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -606,6 +606,18 @@ config MFD_MX25_TSADC
 	  i.MX25 processors. They consist of a conversion queue for general
 	  purpose ADC and a queue for Touchscreens.
 
+config MFD_P3H2X4X
+       tristate "NXP P3H2X4X I3C Hub Device"
+       depends on I3C
+       select MFD_CORE
+       select REGMAP_I3C
+       help
+         Enable Support for NXP P3H244x/P3H284x I3C HUB device using I3C/I2c
+         communication interface.
+
+         This driver provides support for I3C Hub and regulator, additional
+         drivers must be enabled in order to use the functionality of the device.
+
 config MFD_PF1550
 	tristate "NXP PF1550 PMIC Support"
 	depends on I2C=y && OF
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index e75e8045c28a..aaadf50fedf4 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -122,6 +122,7 @@ obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx-core.o
 obj-$(CONFIG_MFD_MC13XXX_SPI)	+= mc13xxx-spi.o
 obj-$(CONFIG_MFD_MC13XXX_I2C)	+= mc13xxx-i2c.o
 
+obj-$(CONFIG_MFD_P3H2X4X) 	+= p3h2840.o
 obj-$(CONFIG_MFD_PF1550)	+= pf1550.o
 
 obj-$(CONFIG_MFD_NCT6694)	+= nct6694.o
diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
new file mode 100644
index 000000000000..acc10c396b47
--- /dev/null
+++ b/drivers/mfd/p3h2840.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2025 NXP
+ * P3H2x4x i3c hub and regulator device.
+ */
+
+#include <linux/i3c/master.h>
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/p3h2840.h>
+#include <linux/regmap.h>
+
+static const struct mfd_cell p3h2x4x_devs[] = {
+	{
+		.name = "p3h2x4x-regulator",
+	},
+	{
+		.name = "p3h2x4x-i3c-hub",
+	},
+};
+
+static const struct regmap_config p3h2x4x_regmap_config = {
+	.reg_bits = P3H2x4x_REG_BITS,
+	.val_bits = P3H2x4x_VAL_BITS,
+	.max_register = 0xFF,
+};
+
+static int p3h2x4x_device_probe_i3c(struct i3c_device *i3cdev)
+{
+	struct p3h2x4x_dev *p3h2x4x;
+	int ret;
+
+	p3h2x4x = devm_kzalloc(&i3cdev->dev, sizeof(*p3h2x4x), GFP_KERNEL);
+	if (!p3h2x4x)
+		return -ENOMEM;
+
+	i3cdev_set_drvdata(i3cdev, p3h2x4x);
+
+	p3h2x4x->regmap = devm_regmap_init_i3c(i3cdev, &p3h2x4x_regmap_config);
+	if (IS_ERR(p3h2x4x->regmap)) {
+		return dev_err_probe(&i3cdev->dev, PTR_ERR(p3h2x4x->regmap),
+				     "Failed to register I3C HUB regmap\n");
+	}
+
+	p3h2x4x->is_p3h2x4x_in_i3c = true;
+	p3h2x4x->i3cdev = i3cdev;
+
+	ret = devm_mfd_add_devices(&i3cdev->dev, PLATFORM_DEVID_NONE,
+				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
+				   NULL, 0, NULL);
+	if (ret)
+		return dev_err_probe(&i3cdev->dev, ret, "Failed to add sub devices\n");
+
+	return 0;
+}
+
+static int p3h2x4x_device_probe_i2c(struct i2c_client *client)
+{
+	struct p3h2x4x_dev *p3h2x4x;
+	int ret;
+
+	p3h2x4x = devm_kzalloc(&client->dev, sizeof(*p3h2x4x), GFP_KERNEL);
+	if (!p3h2x4x)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, p3h2x4x);
+
+	p3h2x4x->regmap = devm_regmap_init_i2c(client, &p3h2x4x_regmap_config);
+	if (IS_ERR(p3h2x4x->regmap)) {
+		return dev_err_probe(&client->dev, PTR_ERR(p3h2x4x->regmap),
+				     "Failed to register I3C HUB regmap\n");
+	}
+
+	p3h2x4x->is_p3h2x4x_in_i3c = false;
+	p3h2x4x->i2c_client = client;
+
+	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
+				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
+				   NULL, 0, NULL);
+	if (ret)
+		return dev_err_probe(&client->dev, ret, "Failed to add sub devices\n");
+
+	return 0;
+}
+
+/* p3h2x4x ids (i3c) */
+static const struct i3c_device_id p3h2x4x_i3c_ids[] = {
+	I3C_CLASS(I3C_DCR_HUB, NULL),
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(i3c, p3h2x4x_i3c_ids);
+
+/* p3h2x4x ids (i2c) */
+static const struct i2c_device_id p3h2x4x_i2c_id_table[] = {
+	{ "nxp-i3c-hub" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, p3h2x4x_i2c_id_table);
+
+static const struct of_device_id  p3h2x4x_i2c_of_match[] = {
+	{ .compatible = "nxp,p3h2840", },
+	{ /* sentinel */ }
+};
+
+MODULE_DEVICE_TABLE(of, p3h2x4x_i2c_of_match);
+static struct i3c_driver p3h2x4x_i3c = {
+	.driver = {
+		.name = "p3h2x4x_i3c_drv",
+	},
+	.probe = p3h2x4x_device_probe_i3c,
+	.id_table = p3h2x4x_i3c_ids,
+};
+
+static struct i2c_driver p3h2x4x_i2c = {
+	.driver = {
+		.name = "p3h2x4x_i2c_drv",
+		.of_match_table = p3h2x4x_i2c_of_match,
+	},
+	.probe =  p3h2x4x_device_probe_i2c,
+	.id_table = p3h2x4x_i2c_id_table,
+};
+
+module_i3c_i2c_driver(p3h2x4x_i3c, &p3h2x4x_i2c);
+
+MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
+MODULE_AUTHOR("vikash Bansal <vikash.bansal@nxp.com>");
+MODULE_DESCRIPTION("P3H2x4x I3C HUB multi function driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/p3h2840.h b/include/linux/mfd/p3h2840.h
new file mode 100644
index 000000000000..b7a9c7f3aa4d
--- /dev/null
+++ b/include/linux/mfd/p3h2840.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2025 NXP
+ * This header file contain private Reg address and its bit mapping etc.
+ */
+
+#ifndef P3H2840_H
+#define P3H2840_H
+
+#include <linux/types.h>
+
+/* Device Configuration Registers */
+#define P3H2x4x_DEV_REG_PROTECTION_CODE				0x10
+#define P3H2x4x_REGISTERS_LOCK_CODE				0x00
+#define P3H2x4x_REGISTERS_UNLOCK_CODE				0x69
+#define P3H2x4x_CP1_REGISTERS_UNLOCK_CODE			0x6a
+
+/* Reg config for Regmap */
+#define P3H2x4x_REG_BITS					8
+#define P3H2x4x_VAL_BITS					8
+
+struct p3h2x4x_dev {
+	struct i3c_device *i3cdev;
+	struct i2c_client *i2c_client;
+	struct regmap *regmap;
+	bool is_p3h2x4x_in_i3c;
+};
+#endif /* P3H2840_H */
-- 
2.25.1


