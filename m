Return-Path: <devicetree+bounces-185843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1511AD96CA
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3086189E041
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BBDB2571D7;
	Fri, 13 Jun 2025 21:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MFcYXQPd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145CA257427
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848522; cv=none; b=qBVU5dyawWbf/XQpAWXdEV2Tw4aIv37Po6rCBrCj9G+arKzuNea4VqjMgU4uwmjcrrVvqhXMxFRxtiI/N7H4oZTuob6QH6R3S/urc2UprI4jqMj66Km6SedRzlGiw+3J81zuHUbUi2U3gMtAQC/QxW/kogssOpZy+iqom8CBNrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848522; c=relaxed/simple;
	bh=b3Huas1W0oVKaoxL9uBJ2vP6fLeAOfS4lRPBYTXCaPw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LDHPd5Xq+LEAwqxnXHSAgUZ1R0YyrdCWUn5ZAZnKBEmyuTlwRx7sTqSxRyqyn3Liqly2h3s+9SLkyYLOr9WEzP/H9awDycO3saU7DE6tSUGwRmTI5/510tZexBmRWxqMsYd7WZOXZistAjRD6sumhtRXbimU9GVmPbD11FLjuzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MFcYXQPd; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d8020ba858so26849745ab.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749848519; x=1750453319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bayV79zaWlgDc/UJx6Jb5IeLhP0HuWPwi77b5RVh27g=;
        b=MFcYXQPd+Dwx48f5fyAj4YOGAx8DxhY/3g+jZzzikiLRcKTx18qPlX/2/KReKjHg9b
         eHy36hQ5Wy9ffrDZRdPtGA4kF+t2yyc+b1p1cdfC9+WY3J7NSqMzesJ76L2aU9r0y/X7
         1QuXODE/2qkOa/d+l064SoAF7j5pTTHEJC2SBeYZtLNBZgbEqjd06r15z+muJhtddZwN
         NJhPwZrwGv+jzkqA3wbu/bcxYRTGc9DXTXk0rwo2IFD3sgkAPiwT4pqJ1SRoWHfKGck6
         Z0ZbV5+izuZR0v53ZEpAxP7vvYPh0wqd/GsdrjP0wW0lEwb8tqACR+pZga3pydRMJB/F
         GQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848519; x=1750453319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bayV79zaWlgDc/UJx6Jb5IeLhP0HuWPwi77b5RVh27g=;
        b=D1UzbLlT/JBtM8Y98MFX5pE5pmVvuA0dqK9n+4KNHFoQjFeIP7wl/b8RbvMP/l6tua
         qLb1oD04soMs+jpCKLL2S14JBR3sgaxsZVOzhgj64hIgKuFC++vfUaM+4ILtVpnyDehs
         d8uK7x8DmoyUiQcLM3gSLSiIa5Ivt/vmBLzYGEpvywHEQaw6wPWaYs8E4WV14hhfYPn2
         nPnrwxLExdTKToo+8AFmEc5mX3MraLtX/JxPS8mlLK1yhl4TjrcNABxVt+Ie2VGK+Q0n
         jZvUH6rrqVeGT+MPa9HJ/N4EkxA8SbrKeubOLUR2AaB+N0VSxj7frC+hbDiRtJpCi2q+
         PA+g==
X-Forwarded-Encrypted: i=1; AJvYcCVr8RjnUSjQ363yl6p/f17y8v7L+055O0vAG16CXSqpB5hKUgfwM6uB+ELfWtzXLI7Es9Y5P+AZtyng@vger.kernel.org
X-Gm-Message-State: AOJu0YyPduhV/FS9sMa1k2z16cD2nizx1DeXAfUF+hGY5twzf3aE0Z4z
	8HkTLb1OmjQwNAvaFQRM6+9gMNy21ZtGpUf9uLB/b5smt+AUU0MVgqH2Brxjsai85p0=
X-Gm-Gg: ASbGncubFnyRMHhRXRAIRBT/8bAq1qehobTuY2b43vGqtoaVQq8G9poXFujXz15vR5w
	kSN7V0Q961oTUhbvFPDj1bT9nJ7UqgAen5k+elgIm+5Rg+OXRjqraQ7XTGCUUpcr/SZDWmSUhA6
	uXBxXVs/7rqhR2tmrB6934cXMGPRyY+UnnimWHmJJzNIlPu4GlqU0Wub413Q2mAE+Y1uwZagI01
	YOVY093ZHlI0viF687Ry1ylrgsO/CJO7E3o9JbR2NzNOGVn3b47nhG5ebiiFXb0sLyBqZ339f67
	1Jn8pabNHzNLeQgK94GNDchiTKOyr/SdA1+mpK/Wr/a2XEkHxQuuWNectgPj+x/QTcKlidmNH0V
	lYJesTBfNZe+lmov5pkAE6NyaMgtFTJU=
X-Google-Smtp-Source: AGHT+IFLtieRvZ64VODdayKiID1ZTjmtaAjQzmjvcBqsglVzn2K9do6/FO22tJ0JBfPl2+tj1sKKFA==
X-Received: by 2002:a05:6e02:194d:b0:3dd:c78c:ec3e with SMTP id e9e14a558f8ab-3de07d01d7emr16581605ab.22.1749848518961;
        Fri, 13 Jun 2025 14:01:58 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de019b44b3sm4996315ab.10.2025.06.13.14.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:01:58 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] regulator: spacemit: support SpacemiT P1 regulators
Date: Fri, 13 Jun 2025 16:01:46 -0500
Message-ID: <20250613210150.1468845-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250613210150.1468845-1-elder@riscstar.com>
References: <20250613210150.1468845-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the regulators found in the SpacemiT P1 PMIC.  This
PMIC provides six buck converters and 12 LDO regulators.

The PMIC is implemented as a multi-function device.  These regulators
are probed based on this driver being named in a MFD cell in the P1
PMIC driver.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/regulator/Kconfig       |   9 ++
 drivers/regulator/Makefile      |   1 +
 drivers/regulator/spacemit-p1.c | 154 ++++++++++++++++++++++++++++++++
 3 files changed, 164 insertions(+)
 create mode 100644 drivers/regulator/spacemit-p1.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 6d8988387da45..7bb7b8fad24f2 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1384,6 +1384,15 @@ config REGULATOR_SLG51000
 	  The SLG51000 is seven compact and customizable low dropout
 	  regulators.
 
+config REGULATOR_SPACEMIT_P1
+	tristate "SpacemiT P1 regulators"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	default ARCH_SPACEMIT
+	help
+	  Enable support for regulators implemented by the SpacemiT P1
+	  power controller.  The P1 implements 6 high-efficiency buck
+	  converters and 12 programmable LDO regulators.
+
 config REGULATOR_STM32_BOOSTER
 	tristate "STMicroelectronics STM32 BOOSTER"
 	depends on ARCH_STM32 || COMPILE_TEST
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index c0bc7a0f4e670..c58aecadd466e 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -161,6 +161,7 @@ obj-$(CONFIG_REGULATOR_S5M8767) += s5m8767.o
 obj-$(CONFIG_REGULATOR_SC2731) += sc2731-regulator.o
 obj-$(CONFIG_REGULATOR_SKY81452) += sky81452-regulator.o
 obj-$(CONFIG_REGULATOR_SLG51000) += slg51000-regulator.o
+obj-$(CONFIG_REGULATOR_SPACEMIT_P1) += spacemit-p1.o
 obj-$(CONFIG_REGULATOR_STM32_BOOSTER) += stm32-booster.o
 obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
 obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
diff --git a/drivers/regulator/spacemit-p1.c b/drivers/regulator/spacemit-p1.c
new file mode 100644
index 0000000000000..35c7b4a36e3ee
--- /dev/null
+++ b/drivers/regulator/spacemit-p1.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for regulators found in the SpacemiT P1 PMIC
+ *
+ * Copyright (C) 2025 by RISCstar Solutions Corporation.  All rights reserved.
+ * Derived from code from SpacemiT.
+ *	Copyright (c) 2023, SPACEMIT Co., Ltd
+ */
+
+#include <linux/array_size.h>
+#include <linux/bits.h>
+#include <linux/device.h>
+#include <linux/linear_range.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/driver.h>
+
+enum p1_regulator_id {
+	P1_BUCK1,
+	P1_BUCK2,
+	P1_BUCK3,
+	P1_BUCK4,
+	P1_BUCK5,
+	P1_BUCK6,
+
+	P1_ALDO1,
+	P1_ALDO2,
+	P1_ALDO3,
+	P1_ALDO4,
+
+	P1_DLDO1,
+	P1_DLDO2,
+	P1_DLDO3,
+	P1_DLDO4,
+	P1_DLDO5,
+	P1_DLDO6,
+	P1_DLDO7,
+};
+
+static const struct regulator_ops p1_regulator_ops = {
+	.list_voltage		= regulator_list_voltage_linear_range,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.set_voltage_time_sel   = regulator_set_voltage_time_sel,
+	.enable			= regulator_enable_regmap,
+	.disable		= regulator_disable_regmap,
+	.is_enabled		= regulator_is_enabled_regmap,
+};
+
+/* Selector value 255 can be used to disable the buck converter on sleep */
+static const struct linear_range p1_buck_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 0, 170, 5000),
+	REGULATOR_LINEAR_RANGE(1375000, 171, 254, 25000),
+};
+
+/* Selector value 0 can be used for suspend */
+static const struct linear_range p1_ldo_ranges[] = {
+	REGULATOR_LINEAR_RANGE(500000, 11, 127, 25000),
+};
+
+/* These define the voltage selector field for buck and LDO regulators */
+#define BUCK_MASK		GENMASK(7, 0)
+#define LDO_MASK		GENMASK(6, 0)
+
+#define P1_ID(_TYPE, _n)	P1_ ## _TYPE ## _n
+#define P1_ENABLE_REG(_off, _n)	((_off) + 3 * ((_n) - 1))
+
+#define P1_REG_DESC(_TYPE, _type, _n, _s, _off, _mask, _nv, _ranges)	\
+	{								\
+		.name			= #_type #_n,			\
+		.supply_name		= _s,				\
+		.of_match		= of_match_ptr(#_type #_n),	\
+		.regulators_node	= of_match_ptr("regulators"),	\
+		.id			= P1_ID(_TYPE, _n),		\
+		.n_voltages		= _nv,				\
+		.ops			= &p1_regulator_ops,		\
+		.owner			= THIS_MODULE,			\
+		.linear_ranges		= _ranges,			\
+		.n_linear_ranges	= ARRAY_SIZE(_ranges),		\
+		.vsel_reg		= P1_ENABLE_REG(_off, _n) + 1,	\
+		.vsel_mask		= _mask,			\
+		.enable_reg		= P1_ENABLE_REG(_off, _n),	\
+		.enable_mask		= BIT(0),			\
+	}
+
+#define P1_BUCK_DESC(_n) \
+	P1_REG_DESC(BUCK, buck, _n, "vcc", 0x47, BUCK_MASK, 254, p1_buck_ranges)
+
+#define P1_ALDO_DESC(_n) \
+	P1_REG_DESC(ALDO, aldo, _n, "vcc", 0x5b, LDO_MASK, 117, p1_ldo_ranges)
+
+#define P1_DLDO_DESC(_n) \
+	P1_REG_DESC(DLDO, dldo, _n, "buck5", 0x67, LDO_MASK, 117, p1_ldo_ranges)
+
+static const struct regulator_desc p1_regulator_desc[] = {
+	P1_BUCK_DESC(1),
+	P1_BUCK_DESC(2),
+	P1_BUCK_DESC(3),
+	P1_BUCK_DESC(4),
+	P1_BUCK_DESC(5),
+	P1_BUCK_DESC(6),
+
+	P1_ALDO_DESC(1),
+	P1_ALDO_DESC(2),
+	P1_ALDO_DESC(3),
+	P1_ALDO_DESC(4),
+
+	P1_DLDO_DESC(1),
+	P1_DLDO_DESC(2),
+	P1_DLDO_DESC(3),
+	P1_DLDO_DESC(4),
+	P1_DLDO_DESC(5),
+	P1_DLDO_DESC(6),
+	P1_DLDO_DESC(7),
+};
+
+static int p1_regulator_probe(struct platform_device *pdev)
+{
+	struct regulator_config config = { };
+	struct device *dev = &pdev->dev;
+	u32 i;
+
+	/*
+	 * The parent device (PMIC) owns the regmap.  Since we don't
+	 * provide one in the config structure, that one will be used.
+	 */
+	config.dev = dev->parent;
+
+	for (i = 0; i < ARRAY_SIZE(p1_regulator_desc); i++) {
+		const struct regulator_desc *desc = &p1_regulator_desc[i];
+		struct regulator_dev *rdev;
+
+		rdev = devm_regulator_register(dev, desc, &config);
+		if (IS_ERR(rdev))
+			return dev_err_probe(dev, PTR_ERR(rdev),
+					     "error registering regulator %s\n",
+					     desc->name);
+	}
+
+	return 0;
+}
+
+static struct platform_driver p1_regulator_driver = {
+	.probe = p1_regulator_probe,
+	.driver = {
+		.name = "spacemit-p1-regulator",
+	},
+};
+
+module_platform_driver(p1_regulator_driver);
+
+MODULE_DESCRIPTION("SpacemiT P1 regulator driver");
+MODULE_LICENSE("GPL");
-- 
2.45.2


