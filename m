Return-Path: <devicetree+bounces-254499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC5CD188B2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 87EBD300183A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9553738A9CB;
	Tue, 13 Jan 2026 11:45:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F9A2857EA;
	Tue, 13 Jan 2026 11:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768304758; cv=none; b=Lq950i6t5dgZEIawdYMg205sIrHYHfUBUH5KsT2SEhWiBa264bdPB96HGa/kNLq4tGt73X4Xs7f2Xr3rtMrRGKwMfhIBlCpZn7IFnc8piILEE7tgOeq+rNlwuZU8z4B1LAlLjgd4Y/Dj30id3CkkoVL+DRAM8qkKyC5K3GUJxN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768304758; c=relaxed/simple;
	bh=QTeA6ms5DmLNmA4lTVskbwarACdVa8hknZhixAQkb8E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HGQN83iHriX9ncCfKBayLfCch5OmYrZNYwMrwACNb9+S7yvgSbdJJGu6CPNiLBpJrL9gZcmCKYmP/FJpc7nyBN9oPwh+C20iv/g+ChiAZeTidFiqDIf6BUcDpQGjg3P3BqTRAvOL0MLekBJjkoYSu44Y4X+B/NHb7EycqvkzTYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6708A201C97;
	Tue, 13 Jan 2026 12:45:55 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 59277201C90;
	Tue, 13 Jan 2026 12:45:55 +0100 (CET)
Received: from lsv15573.swis.ro-buh01.nxp.com (lsv15573.swis.ro-buh01.nxp.com [10.172.0.77])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 58A02202F3;
	Tue, 13 Jan 2026 12:45:53 +0100 (CET)
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
Subject: [PATCH v4 3/5] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub and on-die regulator
Date: Tue, 13 Jan 2026 13:45:27 +0200
Message-Id: <20260113114529.1692213-3-aman.kumarpandey@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP

Add core MFD support for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
family of multiport I3C hub devices. These devices connect to a host via
I3C/I2C/SMBus and expose multiple downstream target ports.

This patch introduces the MFD driver that registers sub-devices for the
I3C hub and on-die regulators.

Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>

---
Changes in v4:
 - Split the driver into three separate patches(mfd, regulator and I3C hub)
 - Added support for NXP P3H2x4x MFD functionality
---
---
 MAINTAINERS                 |   4 ++
 drivers/mfd/Kconfig         |  12 ++++
 drivers/mfd/Makefile        |   2 +
 drivers/mfd/p3h2840.c       | 128 ++++++++++++++++++++++++++++++++++++
 include/linux/mfd/p3h2840.h |  22 +++++++
 5 files changed, 168 insertions(+)
 create mode 100644 drivers/mfd/p3h2840.c
 create mode 100644 include/linux/mfd/p3h2840.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 03a66efbcc4c..aa7043499223 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18931,6 +18931,10 @@ L:	linux-kernel@vger.kernel.org
 L:	linux-i3c-owner@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml
+F:	drivers/mfd/Kconfig
+F:	drivers/mfd/Makefile
+F:	drivers/mfd/p3h2840.c
+F:	include/linux/mfd/p3h2840.h
 
 NXP SGTL5000 DRIVER
 M:	Fabio Estevam <festevam@gmail.com>
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index aace5766b38a..6c41beb0db88 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2540,6 +2540,18 @@ config MFD_RSMU_SPI
 	  Additional drivers must be enabled in order to use the functionality
 	  of the device.
 
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
 config MFD_UPBOARD_FPGA
 	tristate "Support for the AAeon UP board FPGA"
 	depends on (X86 && ACPI)
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index e75e8045c28a..223142cdd803 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -301,6 +301,8 @@ obj-$(CONFIG_MFD_QNAP_MCU)	+= qnap-mcu.o
 obj-$(CONFIG_MFD_RSMU_I2C)	+= rsmu_i2c.o rsmu_core.o
 obj-$(CONFIG_MFD_RSMU_SPI)	+= rsmu_spi.o rsmu_core.o
 
+obj-$(CONFIG_MFD_P3H2X4X) 	+= p3h2840.o
+
 obj-$(CONFIG_MFD_UPBOARD_FPGA)	+= upboard-fpga.o
 
 obj-$(CONFIG_MFD_LOONGSON_SE)	+= loongson-se.o
diff --git a/drivers/mfd/p3h2840.c b/drivers/mfd/p3h2840.c
new file mode 100644
index 000000000000..f6a99291c305
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
+#include <linux/regmap.h>
+#include <linux/mfd/p3h2840.h>
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
+		ret = PTR_ERR(p3h2x4x->regmap);
+		return dev_err_probe(&client->dev, ret, "Failed to register I3C HUB regmap\n");
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
+MODULE_DESCRIPTION("P3H2x4x I3C HUB driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/p3h2840.h b/include/linux/mfd/p3h2840.h
new file mode 100644
index 000000000000..3c989426bb4d
--- /dev/null
+++ b/include/linux/mfd/p3h2840.h
@@ -0,0 +1,22 @@
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


