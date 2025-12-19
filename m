Return-Path: <devicetree+bounces-248076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BC2CCEA92
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46B0B30287E7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF5E2D8795;
	Fri, 19 Dec 2025 06:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="tXKRAe5Q";
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="X9AJWiV4"
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06E3F2D94B4;
	Fri, 19 Dec 2025 06:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.130.44.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766126414; cv=none; b=Pp5CCTgAWcKnvZZBFPCK8xcaKD78zCUWRXRoOiFtxzeIhm4lQt4s8JGlOWMolDoyPGC6fpdd8lUqsNCPP+y0oiV9Nnn1EOhzlgZT3oiVUHeCjGA6JSr2cK2QpRgCrJbKHWZ6wE5TKZzS3kZ4EnR8f98EP6ZwJ16D/BbmIa3Vzvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766126414; c=relaxed/simple;
	bh=VhlJGQS64FeoyKzziNvMJy5neikLCBZ7PXZ1DVTJS4o=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QRPwuh4v4JPH5SbNwWiVChdeq2GNdS8egmqZnKRn764z+ywFs/M9LiwUZ1faV+EJCVABPwCf1ZXwK9FpQBe0CjAGKvrO4lzdDRcchZ/vqYsgjgUBzN8DcmUhcpFn1fmj4bS3gEdqnwJtldpoIZ07nk2M2CQBH5peya8fyCmNrf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=tXKRAe5Q; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=X9AJWiV4; arc=none smtp.client-ip=220.130.44.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126409;
	bh=R66MbqIwbyu8wG2Eyksdh3AQD2+LCWxOX+Toxv1X8JI=; l=11583;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=tXKRAe5QjHnuikuUORYW9RPGtDInHT8K0FCF2/7y9EHlykfinySHymIlxuaOUcDmR
	 9R7xqmTlezptmRmi8glJVaCCNWX1fM7dhB6XF7oQJRy9+/sMPIX2aIaHtuvoSJa2yJ
	 7crvmYBEZEvuL0fGsfedJsVxp96+zgGM2jWX/ag+Zgiu9MbsjdqayRZG+l+xziGann
	 T5ZGzyYsvdYGqBUKfz2zHCQ7YYWVvVLCXq2QJ1fk3HcxadoMxlySuKCyPtioc8TBmW
	 SJejtruSomQ0vHX3A7dX9GWMeXV3+MG5UW93m2Q/cOVWX882fjRj2A9C8m6Gu8gURT
	 qIDge2hoYGU6w==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128086:0:AUTH_RELAY)
	(envelope-from <prvs=144339BFC1=cy_huang@richtek.com>); Fri, 19 Dec 2025 14:40:04 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1766126403;
	bh=R66MbqIwbyu8wG2Eyksdh3AQD2+LCWxOX+Toxv1X8JI=; l=11583;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=X9AJWiV4FB71eOWJMGY9mvXSzDsjvNnhPijkhZ3GBB1wOVCU/yVn9TeFxhP4qZ7oG
	 bVA8Kj5RnuvL6KQUXpbxQ2WNg+gDV4dLs6okdhTfa1tf+MBZI7Zxh6KzJgAj1d49tL
	 RkIkmDA8ICTf/cxE65RBaBhBaZjMq9FhF10JkWFBiBqzJZBe+znNZ3kiR6rMK0U2GY
	 kKtaZCLy+9liq6gvaSQrvCMEbSC7L46pLw/rESDNkEh2oP9jwKZWgQchg6/tfNPGwI
	 yC3gtwnWafBbk9KzsN9IoP/efRRD4MkTivZJ7E0TbBXIh47TEuWpEcxcAtydXnZh8J
	 qLIfC9WkrSFjg==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(2572443:0:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Fri, 19 Dec 2025 14:36:29 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Fri, 19 Dec
 2025 14:36:24 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1748.26 via Frontend
 Transport; Fri, 19 Dec 2025 14:36:24 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, ChiYuan Huang <cy_huang@richtek.com>,
	Alan Lan <alan_lan@richtek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] regulator: Add rt8092 support
Date: Fri, 19 Dec 2025 14:36:20 +0800
Message-ID: <d2293c513f396f86e54f9b806fd0195b57db7aae.1766125676.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1766125676.git.cy_huang@richtek.com>
References: <cover.1766125676.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: ChiYuan Huang <cy_huang@richtek.com>

RT8092 is a 3MHz 4A efficiency step-down converter with I2C control
interface. It can support wide output range from 0.7 to 5.5V, based on
the voltage bank selection.

Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
 drivers/regulator/Kconfig  |   9 ++
 drivers/regulator/Makefile |   1 +
 drivers/regulator/rt8092.c | 313 +++++++++++++++++++++++++++++++++++++
 3 files changed, 323 insertions(+)
 create mode 100644 drivers/regulator/rt8092.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index d2335276cce5..ca68d5e3c13c 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1394,6 +1394,15 @@ config REGULATOR_RT6245
 	  It can support up to 14A output current and adjustable output voltage
 	  from 0.4375V to 1.3875V, per step 12.5mV.
 
+config REGULATOR_RT8092
+	tristate "Richtek RT8092 voltage regulator"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  The RT8092 is a peak-current mode PWM step-down DC/DC converter with
+	  I2C control interface. It is capable of delivering 4A continuing
+	  current over a wide input range from 2.5V to 5.5V.
+
 config REGULATOR_RTQ2134
 	tristate "Richtek RTQ2134 SubPMIC Regulator"
 	depends on I2C
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 1beba1493241..5757a450d135 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -161,6 +161,7 @@ obj-$(CONFIG_REGULATOR_RT5759)	+= rt5759-regulator.o
 obj-$(CONFIG_REGULATOR_RT6160)	+= rt6160-regulator.o
 obj-$(CONFIG_REGULATOR_RT6190)	+= rt6190-regulator.o
 obj-$(CONFIG_REGULATOR_RT6245)	+= rt6245-regulator.o
+obj-$(CONFIG_REGULATOR_RT8092)	+= rt8092.o
 obj-$(CONFIG_REGULATOR_RTMV20)	+= rtmv20-regulator.o
 obj-$(CONFIG_REGULATOR_RTQ2134) += rtq2134-regulator.o
 obj-$(CONFIG_REGULATOR_RTQ6752)	+= rtq6752-regulator.o
diff --git a/drivers/regulator/rt8092.c b/drivers/regulator/rt8092.c
new file mode 100644
index 000000000000..558bd04a2090
--- /dev/null
+++ b/drivers/regulator/rt8092.c
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Copyright (c) 2025 Richtek Technology Corp.
+//
+// Author: ChiYuan Huang <cy_huang@richtek.com>
+
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+
+#define RT8092_REG_MNTRPT	0x00
+#define RT8092_REG_VOUTH	0x10
+#define RT8092_REG_VOUTL	0x11
+#define RT8092_REG_PWMMODE	0x14
+#define RT8092_REG_EVENT	0x18
+#define RT8092_REG_VBANKH	0x1C
+#define RT8092_REG_VBANKL	0x1D
+#define RT8092_REG_VBOUND	0x1E
+
+#define RT8092_TSDEVT_MASK	BIT(7)
+#define RT8092_PGEVT_MASK	BIT(0)
+#define RT8092_VSEL_MASK	GENMASK(6, 0)
+#define RT8092_VOUTEN_MASK	BIT(7)
+#define RT8092_FPWML_MASK	BIT(7)
+#define RT8092_FPWMH_MASK	BIT(6)
+#define RT8092_OCPEVT_MASK	BIT(7)
+#define RT8092_SCPEVT_MASK	BIT(4)
+#define RT8092_VINUVEVT_MASK	BIT(1)
+#define RT8092_VBANK_MASK	GENMASK(1, 0)
+
+#define RT8092_MODE_AUTO	0
+#define RT8092_MODE_FPWM	1
+#define RT8092_VOUT_BASEUV	303125
+#define RT8092_VOUT_STEPUV	3125
+#define RT8092_VOUT_MINSEL	15
+#define RT8092_NUM_VOLTS	128
+#define RT8092_INITSS_US	400
+
+static int rt8092_get_vbank_index(struct regmap *regmap, bool vsel_high, unsigned int *vbank_idx)
+{
+	unsigned int vbank_reg = vsel_high ? RT8092_REG_VBANKH : RT8092_REG_VBANKL;
+	unsigned int index;
+	int ret;
+
+	ret = regmap_read(regmap, vbank_reg, &index);
+	if (ret)
+		return ret;
+
+	*vbank_idx = FIELD_GET(RT8092_VBANK_MASK, index);
+	return 0;
+}
+
+static int rt8092_set_operating_mode(struct regulator_dev *rdev, unsigned int mode)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int mode_mask, mode_val;
+
+	mode_mask = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_FPWMH_MASK : RT8092_FPWML_MASK;
+
+	switch (mode) {
+	case REGULATOR_MODE_FAST:
+		mode_val = mode_mask;
+		break;
+	case REGULATOR_MODE_NORMAL:
+		mode_val = 0;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return regmap_update_bits(regmap, RT8092_REG_PWMMODE, mode_mask, mode_val);
+}
+
+static unsigned int rt8092_get_operating_mode(struct regulator_dev *rdev)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int mode_mask, mode_val;
+	int ret;
+
+	mode_mask = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_FPWMH_MASK : RT8092_FPWML_MASK;
+
+	ret = regmap_read(regmap, RT8092_REG_PWMMODE, &mode_val);
+	if (ret)
+		return REGULATOR_MODE_INVALID;
+
+	return mode_val & mode_mask ? REGULATOR_MODE_FAST : REGULATOR_MODE_NORMAL;
+}
+
+static int rt8092_get_error_flags(struct regulator_dev *rdev, unsigned int *flags)
+{
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int mntrpt, evtrpt, events = 0;
+	int ret;
+
+	ret = regmap_read(regmap, RT8092_REG_MNTRPT, &mntrpt);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(regmap, RT8092_REG_EVENT, &evtrpt);
+	if (ret)
+		return ret;
+
+	if (!(mntrpt & RT8092_PGEVT_MASK) || evtrpt & RT8092_VINUVEVT_MASK)
+		events |= REGULATOR_ERROR_UNDER_VOLTAGE;
+
+	if (mntrpt & RT8092_TSDEVT_MASK)
+		events |= REGULATOR_ERROR_OVER_TEMP;
+
+	if (evtrpt & RT8092_OCPEVT_MASK)
+		events |= REGULATOR_ERROR_OVER_CURRENT;
+
+	if (evtrpt & RT8092_SCPEVT_MASK)
+		events |= REGULATOR_ERROR_FAIL;
+
+	*flags = events;
+	return 0;
+}
+
+
+static int rt8092_set_suspend_voltage(struct regulator_dev *rdev, int uV)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int vsel_reg, vsel_val, vbank_idx;
+	bool vsel_high;
+	int ret;
+
+	vsel_reg = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_REG_VOUTL : RT8092_REG_VOUTH;
+	vsel_high = desc->vsel_reg == RT8092_REG_VOUTH;
+
+	ret = rt8092_get_vbank_index(regmap, vsel_high, &vbank_idx);
+	if (ret)
+		return ret;
+
+	/* VOUT  = (BASEUV + STEPUV * VSEL) * 2^vbank_idx */
+	uV >>= vbank_idx;
+	if (uV < RT8092_VOUT_BASEUV)
+		return -EINVAL;
+
+	vsel_val = (uV - RT8092_VOUT_BASEUV) / RT8092_VOUT_STEPUV;
+	if (vsel_val < RT8092_VOUT_MINSEL || vsel_val >= RT8092_NUM_VOLTS)
+		return -EINVAL;
+
+	return regmap_update_bits(regmap, vsel_reg, RT8092_VSEL_MASK, vsel_val);
+}
+
+static int rt8092_set_suspend_enable(struct regulator_dev *rdev)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int enable_reg;
+
+	enable_reg = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_REG_VOUTL : RT8092_REG_VOUTH;
+	return regmap_set_bits(regmap, enable_reg, RT8092_VOUTEN_MASK);
+}
+
+static int rt8092_set_suspend_disable(struct regulator_dev *rdev)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int enable_reg;
+
+	enable_reg = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_REG_VOUTL : RT8092_REG_VOUTH;
+	return regmap_clear_bits(regmap, enable_reg, RT8092_VOUTEN_MASK);
+}
+
+static int rt8092_set_suspend_mode(struct regulator_dev *rdev, unsigned int mode)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int mode_mask, mode_val;
+
+	mode_mask = desc->vsel_reg == RT8092_REG_VOUTH ? RT8092_FPWML_MASK : RT8092_FPWMH_MASK;
+
+	switch (mode) {
+	case REGULATOR_MODE_FAST:
+		mode_val = mode_mask;
+		break;
+	case REGULATOR_MODE_NORMAL:
+		mode_val = 0;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return regmap_update_bits(regmap, RT8092_REG_PWMMODE, mode_mask, mode_val);
+}
+
+static const struct regulator_ops rt8092_regulator_ops = {
+	.list_voltage = regulator_list_voltage_linear,
+	.get_voltage_sel = regulator_get_voltage_sel_regmap,
+	.set_voltage_sel = regulator_set_voltage_sel_regmap,
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.set_mode = rt8092_set_operating_mode,
+	.get_mode = rt8092_get_operating_mode,
+	.get_error_flags = rt8092_get_error_flags,
+	.set_suspend_voltage = rt8092_set_suspend_voltage,
+	.set_suspend_enable = rt8092_set_suspend_enable,
+	.set_suspend_disable = rt8092_set_suspend_disable,
+	.set_suspend_mode = rt8092_set_suspend_mode,
+};
+
+static unsigned int rt8092_of_map_mode(unsigned int mode)
+{
+	switch (mode) {
+	case RT8092_MODE_AUTO:
+		return REGULATOR_MODE_NORMAL;
+	case RT8092_MODE_FPWM:
+		return REGULATOR_MODE_FAST;
+	default:
+		return REGULATOR_MODE_INVALID;
+	}
+}
+
+static const struct regmap_config rt8092_regmap_cfg = {
+	.name =	"rt8092",
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RT8092_REG_VBOUND,
+};
+
+static int rt8092_probe(struct i2c_client *i2c)
+{
+	unsigned int vbank_idx, min_uV, step_uV;
+	struct regulator_config cfg = {};
+	struct device *dev = &i2c->dev;
+	struct regulator_desc *desc;
+	struct regulator_dev *rdev;
+	struct gpio_desc *enable;
+	struct regmap *regmap;
+	bool vsel_high;
+	int ret;
+
+	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
+	if (!desc)
+		return -ENOMEM;
+
+	enable = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
+	if (IS_ERR(enable))
+		return dev_err_probe(dev, PTR_ERR(enable), "Failed get 'enable' gpio\n");
+
+	regmap = devm_regmap_init_i2c(i2c, &rt8092_regmap_cfg);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap), "Failed to init regmap\n");
+
+	vsel_high = device_property_read_bool(dev, "richtek,vsel-active-high");
+
+	ret = rt8092_get_vbank_index(regmap, vsel_high, &vbank_idx);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get VOUT bank index\n");
+
+	/*
+	 * step VOUT = STEP_UV * 2^vbank_idx
+	 * min VOUT  = (BASEUV + STEPUV * VMIN_SEL) * 2^vbank_idx
+	 */
+	step_uV = RT8092_VOUT_STEPUV << vbank_idx;
+	min_uV = (RT8092_VOUT_BASEUV + RT8092_VOUT_STEPUV * RT8092_VOUT_MINSEL) << vbank_idx;
+
+	desc->name = "rt8092";
+	desc->owner = THIS_MODULE;
+	desc->type = REGULATOR_VOLTAGE;
+	desc->ops = &rt8092_regulator_ops;
+	desc->n_voltages = RT8092_NUM_VOLTS;
+	desc->min_uV = min_uV;
+	desc->uV_step = step_uV;
+	desc->linear_min_sel = RT8092_VOUT_MINSEL;
+	desc->enable_reg = desc->vsel_reg = vsel_high ? RT8092_REG_VOUTH : RT8092_REG_VOUTL;
+	desc->vsel_mask = RT8092_VSEL_MASK;
+	desc->enable_mask = RT8092_VOUTEN_MASK;
+	desc->enable_time = RT8092_INITSS_US;
+	desc->of_map_mode = rt8092_of_map_mode;
+
+	cfg.dev = dev;
+	cfg.of_node = dev_of_node(dev);
+	cfg.init_data = of_get_regulator_init_data(dev, dev_of_node(dev), desc);
+
+	rdev = devm_regulator_register(dev, desc, &cfg);
+	if (IS_ERR(rdev))
+		return dev_err_probe(dev, PTR_ERR(rdev), "Failed to register regulator\n");
+
+	return 0;
+}
+
+static const struct of_device_id rt8092_device_tables[] = {
+	{ .compatible = "richtek,rt8092" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, rt8092_device_tables);
+
+static struct i2c_driver rt8092_driver = {
+	.driver = {
+		.name = "rt8092",
+		.of_match_table = rt8092_device_tables,
+	},
+	.probe = rt8092_probe,
+};
+module_i2c_driver(rt8092_driver);
+
+MODULE_AUTHOR("ChiYuan Huang <cy_huang@richtek.com>");
+MODULE_DESCRIPTION("Richtek RT8092 Regulator Driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1


