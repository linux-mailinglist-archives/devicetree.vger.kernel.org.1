Return-Path: <devicetree+bounces-263337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC/yIZPYhWlZHQQAu9opvQ
	(envelope-from <devicetree+bounces-263337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:03:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFFBFD72C
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48505303980C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4416433A9D9;
	Fri,  6 Feb 2026 12:01:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9E6337BA4;
	Fri,  6 Feb 2026 12:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770379312; cv=none; b=Nya5VbP0S36dsj7qoQx62B1nhe0zsx/8FOP9QDW6717Sr3e8rwHk6eKmZ4Xs2Su+VBe6uS0x98ZfZ/hc4YYuLVK2nFJYgd7PBh5B03NqNHOUTIkZ5D/SdCLbcuNVX9jcSfLs6CPdi8J/RQwRB6WPq4IUPLH9QKnKa0Bg7q7gxIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770379312; c=relaxed/simple;
	bh=+gJQDQ9G7RY5p+bkxbMbyBe2jxc00SAo7TlBfxVa/EU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WijA2Uf5wWRc4Zwc8EbRW0pMfIddvi9u5Glcgh6siWoRnC8os7piKkCZcXiPSDzZ6Sfovx58xiBkov+xDYqcWFOMtF769YF90Y1hhCVfKzszhk68oD1CRQ/We7P1/HEe3F77U2p3Sr5NipE1TQ52J1GzQ9W+HTwLvhDygCtZe9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2088A2014E0;
	Fri,  6 Feb 2026 13:01:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 10E06200036;
	Fri,  6 Feb 2026 13:01:50 +0100 (CET)
Received: from lsv15573.swis.ro-buh01.nxp.com (lsv15573.swis.ro-buh01.nxp.com [10.172.0.77])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 04575202AB;
	Fri,  6 Feb 2026 13:01:47 +0100 (CET)
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
Subject: [PATCH v5 4/5] regulator: p3h2x4x: Add driver for on-die regulators in NXP P3H2x4x i3c hub
Date: Fri,  6 Feb 2026 14:01:20 +0200
Message-Id: <20260206120121.856471-4-aman.kumarpandey@nxp.com>
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
	TAGGED_FROM(0.00)[bounces-263337-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.730];
	FROM_NEQ_ENVFROM(0.00)[aman.kumarpandey@nxp.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rcfg.dev:url,nxp.com:mid,nxp.com:email,infradead.org:email]
X-Rspamd-Queue-Id: DFFFBFD72C
X-Rspamd-Action: no action

The NXP P3H2x4x family integrates on-die regulators alongside I3C hub
functionality. This driver registers the regulators using the MFD
framework and exposes them via the regulator subsystem.

Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>

---
Changes in v5:
 - Updated dev_err_probe() for regmap_init failure.
 - Updated module description

Changes in v4:
 - Split the driver into three separate patches (mfd, regulator and I3C hub) 
 - Introduced driver for on-die regulators in NXP P3H2x4x I3C hub
---
---
 MAINTAINERS                                   |   1 +
 drivers/regulator/Kconfig                     |  10 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/p3h2840_i3c_hub_regulator.c | 247 ++++++++++++++++++
 4 files changed, 259 insertions(+)
 create mode 100644 drivers/regulator/p3h2840_i3c_hub_regulator.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6c247e4a0c12..6601830b6e86 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18914,6 +18914,7 @@ L:	linux-i3c-owner@lists.infradead.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
 F:	drivers/mfd/p3h2840.c
+F:	drivers/regulator/p3h2840_i3c_hub_regulator.c
 F:	include/linux/mfd/p3h2840.h
 
 NXP PF5300/PF5301/PF5302 PMIC REGULATOR DEVICE DRIVER
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index d2335276cce5..84684701dad7 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1010,6 +1010,16 @@ config REGULATOR_MTK_DVFSRC
 	  of Mediatek. It allows for voting on regulator state
 	  between multiple users.
 
+config REGULATOR_P3H2X4X
+       tristate "P3H2X4X regulator support"
+       depends on MFD_P3H2X4X
+       help
+         This driver provides support for the voltage regulators of the
+         P3H244x/P3H284x multi-function I3C Hub device.
+
+         Say M here if you want to include support for this regulator as
+         a module. The module will be named "p3h2840_i3c_hub_regulator".
+
 config REGULATOR_PALMAS
 	tristate "TI Palmas PMIC Regulators"
 	depends on MFD_PALMAS
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 1beba1493241..145138f437d8 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -127,6 +127,7 @@ obj-$(CONFIG_REGULATOR_QCOM_RPMH) += qcom-rpmh-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SMD_RPM) += qcom_smd-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SPMI) += qcom_spmi-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_USB_VBUS) += qcom_usb_vbus-regulator.o
+obj-$(CONFIG_REGULATOR_P3H2X4X) += p3h2840_i3c_hub_regulator.o
 obj-$(CONFIG_REGULATOR_PALMAS) += palmas-regulator.o
 obj-$(CONFIG_REGULATOR_PCA9450) += pca9450-regulator.o
 obj-$(CONFIG_REGULATOR_PF0900) += pf0900-regulator.o
diff --git a/drivers/regulator/p3h2840_i3c_hub_regulator.c b/drivers/regulator/p3h2840_i3c_hub_regulator.c
new file mode 100644
index 000000000000..1e9abc398f5a
--- /dev/null
+++ b/drivers/regulator/p3h2840_i3c_hub_regulator.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2025 NXP
+ * This P3H2x4x driver file contain functions for enable/disable regulator and voltage set/get.
+ */
+#include <linux/bitfield.h>
+#include <linux/mfd/p3h2840.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+
+#define P3H2x4x_LDO_AND_PULLUP_CONF				0x19
+#define P3H2x4x_LDO_ENABLE_DISABLE_MASK				GENMASK(3, 0)
+#define P3H2x4x_CP0_EN_LDO				        BIT(0)
+#define P3H2x4x_CP1_EN_LDO				        BIT(1)
+#define P3H2x4x_TP0145_EN_LDO					BIT(2)
+#define P3H2x4x_TP2367_EN_LDO					BIT(3)
+
+#define P3H2x4x_NET_OPER_MODE_CONF				0x15
+#define P3H2x4x_VCCIO_LDO_CONF					0x16
+#define P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK			GENMASK(1, 0)
+#define P3H2x4x_CP0_VCCIO_LDO_VOLTAGE(x)	\
+		FIELD_PREP(P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK, x)
+#define P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK			GENMASK(3, 2)
+#define P3H2x4x_CP1_VCCIO_LDO_VOLTAGE(x)	\
+		FIELD_PREP(P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK, x)
+#define P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK			GENMASK(5, 4)
+#define P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE(x)	\
+		FIELD_PREP(P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK, x)
+#define P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK			GENMASK(7, 6)
+#define P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE(x)	\
+		FIELD_PREP(P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK, x)
+#define P3H2x4x_LDO_COUNT					4
+
+struct p3h2x4x_regulator_dev {
+	struct regulator_dev *rp3h2x4x_dev[P3H2x4x_LDO_COUNT];
+	struct regmap *regmap;
+};
+
+static int p3h2x4x_regulator_enable(struct regulator_dev *rdev)
+{
+	int ret;
+	unsigned int orig;
+
+	ret = regmap_read(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, &orig);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE,
+				   P3H2x4x_REGISTERS_UNLOCK_CODE);
+		if (ret)
+			return ret;
+	}
+
+	ret = regulator_enable_regmap(rdev);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, orig);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static int p3h2x4x_regulator_disable(struct regulator_dev *rdev)
+{
+	int ret;
+	unsigned int orig;
+
+	ret = regmap_read(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, &orig);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE,
+				   P3H2x4x_REGISTERS_UNLOCK_CODE);
+		if (ret)
+			return ret;
+	}
+
+	ret = regulator_disable_regmap(rdev);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, orig);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static int p3h2x4x_regulator_set_voltage_sel(struct regulator_dev *rdev, unsigned int sel)
+{
+	int ret;
+	unsigned int orig;
+
+	ret = regmap_read(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, &orig);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE,
+				   P3H2x4x_REGISTERS_UNLOCK_CODE);
+		if (ret)
+			return ret;
+	}
+
+	ret = regulator_set_voltage_sel_regmap(rdev, sel);
+	if (ret)
+		return ret;
+
+	if (orig != P3H2x4x_REGISTERS_UNLOCK_CODE) {
+		ret = regmap_write(rdev->regmap, P3H2x4x_DEV_REG_PROTECTION_CODE, orig);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static const struct regulator_ops p3h2x4x_ldo_ops = {
+	.list_voltage = regulator_list_voltage_table,
+	.map_voltage = regulator_map_voltage_iterate,
+	.set_voltage_sel = p3h2x4x_regulator_set_voltage_sel,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.enable = p3h2x4x_regulator_enable,
+	.disable = p3h2x4x_regulator_disable,
+	.is_enabled = regulator_is_enabled_regmap,
+};
+
+static const unsigned int p3h2x4x_voltage_table[] = {
+	1000000,
+	1100000,
+	1200000,
+	1800000,
+};
+
+static struct regulator_desc p3h2x4x_regulators[] = {
+	{
+		.name = "LDO_CP0",
+		.of_match = of_match_ptr("LDO_CP0"),
+		.regulators_node = of_match_ptr("regulators"),
+		.volt_table = p3h2x4x_voltage_table,
+		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
+		.ops = &p3h2x4x_ldo_ops,
+		.type = REGULATOR_VOLTAGE,
+		.owner = THIS_MODULE,
+		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
+		.enable_mask = P3H2x4x_CP0_EN_LDO,
+		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
+		.vsel_mask = P3H2x4x_CP0_VCCIO_LDO_VOLTAGE_MASK,
+	},
+	{
+		.name = "LDO_CP1",
+		.of_match = of_match_ptr("LDO_CP1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.volt_table = p3h2x4x_voltage_table,
+		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
+		.ops = &p3h2x4x_ldo_ops,
+		.type = REGULATOR_VOLTAGE,
+		.owner = THIS_MODULE,
+		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
+		.enable_mask = P3H2x4x_CP1_EN_LDO,
+		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
+		.vsel_mask = P3H2x4x_CP1_VCCIO_LDO_VOLTAGE_MASK,
+	},
+	{
+		.name = "LDO_TPG0",
+		.of_match = of_match_ptr("LDO_TPG0"),
+		.regulators_node = of_match_ptr("regulators"),
+		.volt_table = p3h2x4x_voltage_table,
+		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
+		.ops = &p3h2x4x_ldo_ops,
+		.type = REGULATOR_VOLTAGE,
+		.owner = THIS_MODULE,
+		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
+		.enable_mask = P3H2x4x_TP0145_EN_LDO,
+		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
+		.vsel_mask = P3H2x4x_TP0145_VCCIO_LDO_VOLTAGE_MASK,
+	},
+	{
+		.name = "LDO_TPG1",
+		.of_match = of_match_ptr("LDO_TPG1"),
+		.regulators_node = of_match_ptr("regulators"),
+		.volt_table = p3h2x4x_voltage_table,
+		.n_voltages = ARRAY_SIZE(p3h2x4x_voltage_table),
+		.ops = &p3h2x4x_ldo_ops,
+		.type = REGULATOR_VOLTAGE,
+		.owner = THIS_MODULE,
+		.enable_reg = P3H2x4x_LDO_AND_PULLUP_CONF,
+		.enable_mask = P3H2x4x_TP2367_EN_LDO,
+		.vsel_reg = P3H2x4x_VCCIO_LDO_CONF,
+		.vsel_mask = P3H2x4x_TP2367_VCCIO_LDO_VOLTAGE_MASK,
+	},
+};
+
+static int p3h2x4x_regulator_probe(struct platform_device *pdev)
+{
+	struct p3h2x4x_dev *p3h2x4x = dev_get_drvdata(pdev->dev.parent);
+	struct p3h2x4x_regulator_dev *p3h2x4x_regulator;
+	struct regulator_config rcfg = { };
+	struct device *dev = &pdev->dev;
+	struct regulator_dev *rdev;
+	int ret, i;
+
+	p3h2x4x_regulator = devm_kzalloc(dev, sizeof(*p3h2x4x_regulator), GFP_KERNEL);
+	if (!p3h2x4x_regulator)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, p3h2x4x_regulator);
+
+	p3h2x4x_regulator->regmap = p3h2x4x->regmap;
+	device_set_of_node_from_dev(dev, dev->parent);
+
+	rcfg.dev = dev;
+	rcfg.dev->of_node = dev->of_node;
+	rcfg.regmap = p3h2x4x_regulator->regmap;
+	rcfg.driver_data = p3h2x4x_regulator;
+
+	for (i = 0; i < ARRAY_SIZE(p3h2x4x_regulators); i++) {
+		rdev = devm_regulator_register(&pdev->dev, &p3h2x4x_regulators[i], &rcfg);
+		if (IS_ERR(rdev)) {
+			return dev_err_probe(dev, PTR_ERR(rdev), "Failed to register %s\n",
+					     p3h2x4x_regulators[i].name);
+		}
+		p3h2x4x_regulator->rp3h2x4x_dev[i] = rdev;
+	}
+	return 0;
+}
+
+static struct platform_driver p3h2x4x_regulator_driver = {
+	.driver = {
+		.name = "p3h2x4x-regulator",
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
+	},
+	.probe = p3h2x4x_regulator_probe,
+};
+module_platform_driver(p3h2x4x_regulator_driver);
+
+MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
+MODULE_AUTHOR("vikash Bansal <vikash.bansal@nxp.com>");
+MODULE_DESCRIPTION("P3H2x4x I3C HUB Regulator driver");
+MODULE_LICENSE("GPL");
-- 
2.25.1


