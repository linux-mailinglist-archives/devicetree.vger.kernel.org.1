Return-Path: <devicetree+bounces-216944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6700B56917
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5786017897A
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A17826CE03;
	Sun, 14 Sep 2025 13:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="laQuQMI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061CF261393
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757854983; cv=none; b=Q/RO5Y8+17rkc0DAPklUBaFNj5NAuCFHPtOFBwn5UraHG0eKajTMjFm+J2Qv9yBNeVp92Vc+w/8YNBvahEoisYgdLe4OpoFeGmyOsGwhylcfIsZTWjodpJhVM7TheNDLtUwjCKuC5n57F+ReByWRE4wWzvoAv0jS6ljN2QP9Qyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757854983; c=relaxed/simple;
	bh=RV4gHyPj9bgDY4dTtUPdHvGasakWg3O5UoQJWOgpT0s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qlVLbPuhU9DP0sIcgFnhgvFDvVcR0q+8f4J6KrQ9/99WVxsvNoOIZl8W9nZVRmlT6OXJ4E+gGlftx+xYaCwn3ERB7T0P9zrt8KhlTsH9BrQCfY4EjurFvNBBw2mTRC6P0LEttP1J+3p37dEAXQclJ7zEk+VKJiHaii93As1sYr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=laQuQMI/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45b9814efbcso27754815e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757854980; x=1758459780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5dyEduyxS9XdKZeAJ2xwrQP8Nn0pcUWGlbwmdWDN8k=;
        b=laQuQMI/vL6xFN6qNKyiMgN9oLct8+L9BPZ7Zgtl4mVTyYTUf2ViyBQ8kdFvew+iH9
         URsXqwtuuE8GhTwzqY8EhQEe+Ys2uFCoBhyKWQu/2R+KKeVa45AyzMgk0qmE2WYAl9Wj
         uVCkR7eEOAV0oTleVdwmA4U+/0UahR0KwN8OvxnjMdjEF57NbGE/xzLJeuG8N3l9LfZ6
         6p1YvHtE6AEHM/OXp7dydCce/fblThcGA2ixP670vTC3kd1G0aRYgneRE5T7669CEMKS
         rpXEod0adM9egnS9Vu4Pclbs6F0Ribz9XStuR0RmQcDpwtIseai/Ss4K7qbQP1RLPIJO
         NHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757854980; x=1758459780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E5dyEduyxS9XdKZeAJ2xwrQP8Nn0pcUWGlbwmdWDN8k=;
        b=D/JHZOGBl2eMTejhARpZ5wlIDVCGCELq5QN77BT4NfEUBdQcMDa3x9fF3EzjUiIkVM
         0n9ofiPld2bk2qOLKEG+GGYgYbbdIjYHuDs9Scg5KXoCpfFExnzes2rxuT0eeq4B4zCk
         w/xwM0uRgcRnb3FGMCNTwWq8hLG8YNmNPPEkDtu48eyKK2OqsX/Kd3fiT86xA0sjQmvW
         Xum348ZGVObac4rDLU/jk68NhLWv8x/R6eTHngyKTun65OH9VBWQdLiete1vU/J0jQYS
         FKC5J+QsmqtpAYhntU+Hdv1liutY6I/ooM2VkL7D1xIxyfSgUOKQPb8gsMlTbPOVcV/2
         4DiA==
X-Forwarded-Encrypted: i=1; AJvYcCWH0pLMCZyBDRHcsXZo6eIgfppC33VKm4eNdp7RrPGR8N95OgvNakkZ212I/7Z5wuxzSFftVzbyEjhX@vger.kernel.org
X-Gm-Message-State: AOJu0YyhWAPn8DoA3JoeUDfC2NuYEZiEiUTNxoY0JhNiRvUnIAKvvKLL
	JyJiju8U4daZRylpiU7FjtH5qBc+pJgi6OEIdRYd8MgKqQPu2gQD/omu
X-Gm-Gg: ASbGncu5jzttl3x53kavqmT6WjB8LU0gh7lut23LLeZzy75QYBtAhD7eddbMit9AtsP
	q6Y2r2F2nZ4v43fY/kGOCv8CUiJWpBAXosR74h/I1iLyP5daXC/B0eErqEW5rBziesx7mcg2u9T
	hj+jxnLYvN110bytWraRAgJApuGbPe5WE+r6CjJM6VRa5eGBQEKbLABiWbqevjHotAQgXdAImRn
	G2524gIJsDxYCBJ7krD+H8PjW0LzkNG91O3GYyFD4PmzuaUXXiSJo0k5ecczluXNrUwpLK92wRm
	AARFsCkikeY3ixCgB/GMOdIKPqrzCJTqhZNxlQDgCJgfdCdQ1rVV0vch7Jrd7vwu9GdI3WGaMNa
	qob1gdflcnfUp0uLj6BMYilQ7jsPcaWbjfk/BYeDaBH7Yj8YlI7WwRY/P7acVGW3k9Ivx7TIjoZ
	GXZoX1xQ8t
X-Google-Smtp-Source: AGHT+IHJyDhkoHW4iYNq7XQq97f1wBTNF3aFX/4tav7CB6jFkeCvKhX1pP6gSIF9wyriFXOQxFf/FQ==
X-Received: by 2002:a05:6000:4009:b0:3e7:68dc:d855 with SMTP id ffacd0b85a97d-3e768dcd9c7mr6891979f8f.18.1757854978398;
        Sun, 14 Sep 2025 06:02:58 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0187f0a7sm77060965e9.3.2025.09.14.06.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:02:57 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] regulator: max77838: add max77838 regulator driver
Date: Sun, 14 Sep 2025 16:02:30 +0300
Message-ID: <20250914130230.2622030-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914130230.2622030-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914130230.2622030-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The max77838 PMIC contains a BUCK regulator and 4 LDOs. It's primarily
used in the Samsung Galaxy S7 lineup and is accessed over I2C.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 MAINTAINERS                            |   1 +
 drivers/regulator/Kconfig              |   8 +
 drivers/regulator/Makefile             |   1 +
 drivers/regulator/max77838-regulator.c | 221 +++++++++++++++++++++++++
 4 files changed, 231 insertions(+)
 create mode 100644 drivers/regulator/max77838-regulator.c

diff --git a/MAINTAINERS b/MAINTAINERS
index a4916a178..276374ba7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15066,6 +15066,7 @@ M:	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
 L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/regulator/maxim,max77838.yaml
+F:	drivers/regulator/max77838-regulator.c
 
 MAXIM MAX77976 BATTERY CHARGER
 M:	Luca Ceresoli <luca@lucaceresoli.net>
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 41b56b647..18601bdc0 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -777,6 +777,14 @@ config REGULATOR_MAX77826
 	  It includes support for control of output voltage. This
 	  regulator is found on the Samsung Galaxy S5 (klte) smartphone.
 
+config REGULATOR_MAX77838
+	tristate "Maxim 77838 regulator"
+	depends on REGMAP_I2C
+	help
+	  This driver controls a Maxim 77838 regulator via I2C bus.
+	  The regulator include 4 LDOs and a BUCK regulator. It's
+	  present on the Samsung Galaxy S7 lineup of smartphones.
+
 config REGULATOR_MC13XXX_CORE
 	tristate
 
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index be98b29d6..0622e9de6 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -92,6 +92,7 @@ obj-$(CONFIG_REGULATOR_MAX77686) += max77686-regulator.o
 obj-$(CONFIG_REGULATOR_MAX77693) += max77693-regulator.o
 obj-$(CONFIG_REGULATOR_MAX77802) += max77802-regulator.o
 obj-$(CONFIG_REGULATOR_MAX77826) += max77826-regulator.o
+obj-$(CONFIG_REGULATOR_MAX77838) += max77838-regulator.o
 obj-$(CONFIG_REGULATOR_MAX77857) += max77857-regulator.o
 obj-$(CONFIG_REGULATOR_MC13783) += mc13783-regulator.o
 obj-$(CONFIG_REGULATOR_MC13892) += mc13892-regulator.o
diff --git a/drivers/regulator/max77838-regulator.c b/drivers/regulator/max77838-regulator.c
new file mode 100644
index 000000000..9faddbfd2
--- /dev/null
+++ b/drivers/regulator/max77838-regulator.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+//
+// regulator driver for Maxim MAX77838
+//
+// based on max77826-regulator.c
+//
+// Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/err.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/i2c.h>
+#include <linux/regmap.h>
+
+enum max77838_registers {
+	MAX77838_REG_DEVICE_ID = 0x00,
+	MAX77838_REG_TOPSYS_STAT,
+	MAX77838_REG_STAT,
+	MAX77838_REG_EN,
+	MAX77838_REG_GPIO_PD_CTRL,
+	MAX77838_REG_UVLO_CFG1,
+	/* 0x06 - 0x0B: reserved */
+	MAX77838_REG_I2C_CFG = 0x0C,
+	/* 0x0D - 0x0F: reserved */
+	MAX77838_REG_LDO1_CFG = 0x10,
+	MAX77838_REG_LDO2_CFG,
+	MAX77838_REG_LDO3_CFG,
+	MAX77838_REG_LDO4_CFG,
+	/* 0x14 - 0x1F: reserved */
+	MAX77838_REG_BUCK_CFG1 = 0x20,
+	MAX77838_REG_BUCK_VOUT,
+};
+
+enum max77838_regulators {
+	MAX77838_LDO1 = 0,
+	MAX77838_LDO2,
+	MAX77838_LDO3,
+	MAX77838_LDO4,
+	MAX77838_BUCK,
+	MAX77838_MAX_REGULATORS,
+};
+
+#define MAX77838_MASK_LDO		0x7f
+#define MAX77838_MASK_BUCK		0xff
+
+#define MAX77838_LDO1_EN		BIT(0)
+#define MAX77838_LDO2_EN		BIT(1)
+#define MAX77838_LDO3_EN		BIT(2)
+#define MAX77838_LDO4_EN		BIT(3)
+#define MAX77838_BUCK_EN		BIT(4)
+
+#define MAX77838_BUCK_AD		BIT(3)
+#define MAX77838_LDO_AD			BIT(7)
+
+#define MAX77838_LDO_VOLT_MIN		600000
+#define MAX77838_LDO_VOLT_MAX		3775000
+#define MAX77838_LDO_VOLT_STEP		25000
+
+#define MAX77838_BUCK_VOLT_MIN		500000
+#define MAX77838_BUCK_VOLT_MAX		2093750
+#define MAX77838_BUCK_VOLT_STEP		6250
+
+#define MAX77838_VOLT_RANGE(_type)				\
+	((MAX77838_ ## _type ## _VOLT_MAX -			\
+	  MAX77838_ ## _type ## _VOLT_MIN) /			\
+	  MAX77838_ ## _type ## _VOLT_STEP + 1)
+
+#define MAX77838_LDO(_id)							\
+	[MAX77838_LDO ## _id] = {						\
+		.id = MAX77838_LDO ## _id,					\
+		.name = "ldo"#_id,						\
+		.of_match = of_match_ptr("ldo"#_id),				\
+		.regulators_node = "regulators",				\
+		.ops = &max77838_regulator_ops,					\
+		.min_uV = MAX77838_LDO_VOLT_MIN,				\
+		.uV_step = MAX77838_LDO_VOLT_STEP,				\
+		.n_voltages = MAX77838_VOLT_RANGE(LDO),				\
+		.enable_reg = MAX77838_REG_EN,					\
+		.enable_mask = MAX77838_LDO ## _id ## _EN,			\
+		.vsel_reg = MAX77838_REG_LDO ## _id ## _CFG,			\
+		.vsel_mask = MAX77838_MASK_LDO,					\
+		.active_discharge_off = 0,					\
+		.active_discharge_on = MAX77838_LDO_AD,				\
+		.active_discharge_mask = MAX77838_LDO_AD,			\
+		.active_discharge_reg = MAX77838_REG_LDO ## _id ## _CFG,	\
+		.owner = THIS_MODULE,						\
+	}
+
+#define MAX77838_BUCK_DESC					\
+	[MAX77838_BUCK] = {					\
+		.id = MAX77838_BUCK,				\
+		.name = "buck",					\
+		.of_match = of_match_ptr("buck"),		\
+		.regulators_node = "regulators",		\
+		.ops = &max77838_regulator_ops,			\
+		.min_uV = MAX77838_BUCK_VOLT_MIN,		\
+		.uV_step = MAX77838_BUCK_VOLT_STEP,		\
+		.n_voltages = MAX77838_VOLT_RANGE(BUCK),	\
+		.enable_reg = MAX77838_REG_EN,			\
+		.enable_mask = MAX77838_BUCK_EN,		\
+		.vsel_reg = MAX77838_REG_BUCK_VOUT,		\
+		.vsel_mask = MAX77838_MASK_BUCK,		\
+		.active_discharge_off = 0,			\
+		.active_discharge_on = MAX77838_BUCK_AD,	\
+		.active_discharge_mask = MAX77838_BUCK_AD,	\
+		.active_discharge_reg = MAX77838_REG_BUCK_CFG1,	\
+		.owner = THIS_MODULE,				\
+	}
+
+struct max77838_regulator_info {
+	struct regmap *regmap;
+};
+
+static const struct regmap_config max77838_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = MAX77838_REG_BUCK_VOUT,
+};
+
+static const struct regulator_ops max77838_regulator_ops = {
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+	.list_voltage		= regulator_list_voltage_linear,
+	.map_voltage		= regulator_map_voltage_linear,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.set_active_discharge	= regulator_set_active_discharge_regmap,
+};
+
+static const struct regulator_desc max77838_regulators_desc[] = {
+	MAX77838_LDO(1),
+	MAX77838_LDO(2),
+	MAX77838_LDO(3),
+	MAX77838_LDO(4),
+	MAX77838_BUCK_DESC,
+};
+
+static int max77838_read_device_id(struct regmap *regmap, struct device *dev)
+{
+	unsigned int device_id;
+	int ret;
+
+	ret = regmap_read(regmap, MAX77838_REG_DEVICE_ID, &device_id);
+	if (!ret)
+		dev_dbg(dev, "DEVICE_ID: 0x%x\n", device_id);
+
+	return ret;
+}
+
+static int max77838_i2c_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct max77838_regulator_info *info;
+	struct regulator_config config = {};
+	struct regulator_dev *rdev;
+	struct regmap *regmap;
+	int i;
+
+	info = devm_kzalloc(dev, sizeof(struct max77838_regulator_info),
+			    GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	regmap = devm_regmap_init_i2c(client, &max77838_regmap_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to allocate regmap!\n");
+		return PTR_ERR(regmap);
+	}
+
+	info->regmap = regmap;
+	i2c_set_clientdata(client, info);
+
+	config.dev = dev;
+	config.regmap = regmap;
+	config.driver_data = info;
+
+	for (i = 0; i < MAX77838_MAX_REGULATORS; i++) {
+		rdev = devm_regulator_register(dev,
+					       &max77838_regulators_desc[i],
+					       &config);
+		if (IS_ERR(rdev)) {
+			dev_err(dev, "Failed to register regulator!\n");
+			return PTR_ERR(rdev);
+		}
+	}
+
+	return max77838_read_device_id(regmap, dev);
+}
+
+static const struct of_device_id __maybe_unused max77838_of_match[] = {
+	{ .compatible = "maxim,max77838" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, max77838_of_match);
+
+static const struct i2c_device_id max77838_id[] = {
+	{ "max77838-regulator" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, max77838_id);
+
+static struct i2c_driver max77838_regulator_driver = {
+	.driver = {
+		.name = "max77838",
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
+		.of_match_table = of_match_ptr(max77838_of_match),
+	},
+	.probe = max77838_i2c_probe,
+	.id_table = max77838_id,
+};
+module_i2c_driver(max77838_regulator_driver);
+
+MODULE_AUTHOR("Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>");
+MODULE_DESCRIPTION("MAX77838 PMIC regulator driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


