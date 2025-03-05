Return-Path: <devicetree+bounces-154593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9886A50CFA
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 22:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E50B717116E
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 21:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEEB259C81;
	Wed,  5 Mar 2025 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eFXqQFWU"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077722586D9;
	Wed,  5 Mar 2025 21:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741208663; cv=none; b=iP7UmTcT8TuVytjIWWuFo2UfBA42VTcexBy+1a1CBNuY9EvGSkbZqckaVl4dOP1lrlKmMSsnAZzuVwo24ScQIjZdFKNld/9yvrpba6ga98JnqwOdgTJLrZkrxCyqdAPckR+LN+GhstC88+k0CxHExQxQ7+1z9O1f63SOD1pQlEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741208663; c=relaxed/simple;
	bh=M77Q5lJYMhl2FLc8g971kUJf6vvZF+CbqDQt0qZVSxo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TS0cEQU36OD52MTsxjP5rBJB9CP+cVq1po54e9KfU7mmfJq1Cn7tqIfSTHKg68/LR+xv4fxa/TQaRWFelWtNWIyR4GjPMNG7ye1JCgVXrcNJx3YNO2ZCDHyVoVdl/2iJUc2bP17uY2zJrK5ffxMkfRCLhRgeKFR6tGOVm2wkQVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=eFXqQFWU; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 525L3qkf4072773
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 5 Mar 2025 15:03:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1741208632;
	bh=ZeHVwuhZJosPASFtG0Fb++DZwgQi/rSiwgE/QMix1nI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=eFXqQFWUuKKj4tDn7xz5eWkMSZo6R83BKe5ct2LSoF9pWLzVA5cgdwMliCGM124ZA
	 NC5++eJ8+AO2aR2oO4v4XtClIuiZaRSPobwCVboxy7OYsEGHafrgnzjuc3t/+eShfZ
	 w7RjBdRGPXZoKsW9jIAj0ZZ+I5TMuTH8C/KOnJ0c=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 525L3qdL080648
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 5 Mar 2025 15:03:52 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 5
 Mar 2025 15:03:52 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 5 Mar 2025 15:03:52 -0600
Received: from DMZ007XYY.dhcp.ti.com (dmz007xyy.dhcp.ti.com [128.247.29.251])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 525L3peH125160;
	Wed, 5 Mar 2025 15:03:52 -0600
From: Shree Ramamoorthy <s-ramamoorthy@ti.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aaro.koskinen@iki.fi>,
        <andreas@kemnade.info>, <khilman@baylibre.com>, <rogerq@kernel.org>,
        <tony@atomide.com>, <lee@kernel.org>, <linux-omap@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <m-leonard@ti.com>, <praneeth@ti.com>
Subject: [PATCH v6 7/9] regulator: tps65219: Add support for TPS65215 regulator resources
Date: Wed, 5 Mar 2025 15:03:49 -0600
Message-ID: <20250305210351.249811-8-s-ramamoorthy@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250305210351.249811-1-s-ramamoorthy@ti.com>
References: <20250305210351.249811-1-s-ramamoorthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Isolate all changes involving TPS65215 regulator desc and range resources.

- 'chipid' will identify which PMIC to support, and the corresponding
  chip_data struct element to use in probe(). The chip_data struct is
  helpful for any new PMICs added to this driver. The goal is to add future
  PMIC info to necessary structs and minimize probe() function edits.

- The probe() will now loop through common (overlapping) regulators first,
  then device-specific structs identified in the chip_data struct.

- Add TI TPS65215 PMIC to the existing platform_device_id struct, so the
  regulator probe() can handle which PMIC chip_data information to use.

Signed-off-by: Shree Ramamoorthy <s-ramamoorthy@ti.com>
---
 drivers/regulator/Kconfig              |  7 ++-
 drivers/regulator/tps65219-regulator.c | 86 +++++++++++++++++++++-----
 2 files changed, 75 insertions(+), 18 deletions(-)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 39297f7d8177..6cd87443f9bb 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1579,10 +1579,11 @@ config REGULATOR_TPS65219
 	tristate "TI TPS65219 Power regulators"
 	depends on MFD_TPS65219 && OF
 	help
-	  This driver supports TPS65219 voltage regulator chips.
+	  This driver supports TPS65219 series and TPS65215 voltage regulator chips.
 	  TPS65219 series of PMICs have 3 single phase BUCKs & 4 LDOs
-	  voltage regulators. It supports software based voltage control
-	  for different voltage domains.
+	  voltage regulators.
+	  TPS65215 PMIC has 3 single phase BUCKs & 2 LDOs.
+	  Both PMICs support software based voltage control for different voltage domains.
 
 config REGULATOR_TPS6594
 	tristate "TI TPS6594 Power regulators"
diff --git a/drivers/regulator/tps65219-regulator.c b/drivers/regulator/tps65219-regulator.c
index 3c7c3a6d4c15..2542ac1453c9 100644
--- a/drivers/regulator/tps65219-regulator.c
+++ b/drivers/regulator/tps65219-regulator.c
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 //
-// tps65219-regulator.c
-//
-// Regulator driver for TPS65219 PMIC
+// Regulator driver for TPS65215/TPS65219 PMIC
 //
 // Copyright (C) 2022 BayLibre Incorporated - https://www.baylibre.com/
+// Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
 //
 // This implementation derived from tps65218 authored by
 // "J Keerthy <j-keerthy@ti.com>"
@@ -130,6 +129,11 @@ static const struct linear_range ldo_1_range[] = {
 	REGULATOR_LINEAR_RANGE(3400000, 0x38, 0x3f, 0),
 };
 
+static const struct linear_range tps65215_ldo_2_range[] = {
+	REGULATOR_LINEAR_RANGE(1200000, 0x0, 0xC, 50000),
+	REGULATOR_LINEAR_RANGE(3300000, 0x36, 0x3F, 0),
+};
+
 static const struct linear_range tps65219_ldo_2_range[] = {
 	REGULATOR_LINEAR_RANGE(600000, 0x0, 0x37, 50000),
 	REGULATOR_LINEAR_RANGE(3400000, 0x38, 0x3f, 0),
@@ -221,7 +225,7 @@ static const struct regulator_ops ldos_3_4_ops = {
 	.map_voltage		= regulator_map_voltage_linear_range,
 };
 
-static const struct regulator_desc regulators[] = {
+static const struct regulator_desc common_regs[] = {
 	TPS65219_REGULATOR("BUCK1", "buck1", TPS65219_BUCK_1,
 			   REGULATOR_VOLTAGE, bucks_ops, 64,
 			   TPS65219_REG_BUCK1_VOUT,
@@ -250,6 +254,20 @@ static const struct regulator_desc regulators[] = {
 			   TPS65219_REG_ENABLE_CTRL,
 			   TPS65219_ENABLE_LDO1_EN_MASK, 0, 0, ldo_1_range,
 			   2, 0, 0, NULL, 0, TPS65219_LDOS_BYP_CONFIG_MASK),
+};
+
+static const struct regulator_desc tps65215_regs[] = {
+	// TPS65215's LDO2 is the same as TPS65219's LDO3
+	TPS65219_REGULATOR("LDO2", "ldo2", TPS65215_LDO_2,
+			   REGULATOR_VOLTAGE, ldos_3_4_ops, 64,
+			   TPS65215_REG_LDO2_VOUT,
+			   TPS65219_BUCKS_LDOS_VOUT_VSET_MASK,
+			   TPS65219_REG_ENABLE_CTRL,
+			   TPS65215_ENABLE_LDO2_EN_MASK, 0, 0, tps65215_ldo_2_range,
+			   3, 0, 0, NULL, 0, 0),
+};
+
+static const struct regulator_desc tps65219_regs[] = {
 	TPS65219_REGULATOR("LDO2", "ldo2", TPS65219_LDO_2,
 			   REGULATOR_VOLTAGE, ldos_1_2_ops, 64,
 			   TPS65219_REG_LDO2_VOUT,
@@ -292,28 +310,65 @@ static irqreturn_t tps65219_regulator_irq_handler(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+struct tps65219_chip_data {
+	size_t rdesc_size;
+	size_t common_rdesc_size;
+	const struct regulator_desc *rdesc;
+	const struct regulator_desc *common_rdesc;
+};
+
+static struct tps65219_chip_data chip_info_table[] = {
+	[TPS65215] = {
+		.rdesc = tps65215_regs,
+		.rdesc_size = ARRAY_SIZE(tps65215_regs),
+		.common_rdesc = common_regs,
+		.common_rdesc_size = ARRAY_SIZE(common_regs),
+	},
+	[TPS65219] = {
+		.rdesc = tps65219_regs,
+		.rdesc_size = ARRAY_SIZE(tps65219_regs),
+		.common_rdesc = common_regs,
+		.common_rdesc_size = ARRAY_SIZE(common_regs),
+	},
+};
+
 static int tps65219_regulator_probe(struct platform_device *pdev)
 {
-	struct tps65219 *tps = dev_get_drvdata(pdev->dev.parent);
+	struct tps65219_regulator_irq_data *irq_data;
+	struct tps65219_regulator_irq_type *irq_type;
+
+	struct tps65219_chip_data *pmic;
 	struct regulator_dev *rdev;
-	struct regulator_config config = { };
-	int i;
 	int error;
 	int irq;
-	struct tps65219_regulator_irq_data *irq_data;
-	struct tps65219_regulator_irq_type *irq_type;
+	int i;
+
+	struct tps65219 *tps = dev_get_drvdata(pdev->dev.parent);
+	struct regulator_config config = { };
+	enum pmic_id chip = platform_get_device_id(pdev)->driver_data;
+
+	pmic = &chip_info_table[chip];
 
 	config.dev = tps->dev;
 	config.driver_data = tps;
 	config.regmap = tps->regmap;
 
-	for (i = 0; i < ARRAY_SIZE(regulators); i++) {
-		rdev = devm_regulator_register(&pdev->dev, &regulators[i],
+	for (i = 0; i <  pmic->common_rdesc_size; i++) {
+		rdev = devm_regulator_register(&pdev->dev, &pmic->common_rdesc[i],
+					       &config);
+		if (IS_ERR(rdev))
+			return dev_err_probe(tps->dev, PTR_ERR(rdev),
+					      "Failed to register %s regulator\n",
+					      pmic->common_rdesc[i].name);
+	}
+
+	for (i = 0; i <  pmic->rdesc_size; i++) {
+		rdev = devm_regulator_register(&pdev->dev, &pmic->rdesc[i],
 					       &config);
 		if (IS_ERR(rdev))
 			return dev_err_probe(tps->dev, PTR_ERR(rdev),
-					"Failed to register %s regulator\n",
-					regulators[i].name);
+					     "Failed to register %s regulator\n",
+					     pmic->rdesc[i].name);
 	}
 
 	irq_data = devm_kmalloc(tps->dev,
@@ -349,7 +404,8 @@ static int tps65219_regulator_probe(struct platform_device *pdev)
 }
 
 static const struct platform_device_id tps65219_regulator_id_table[] = {
-	{ "tps65219-regulator", },
+	{ "tps65215-regulator", TPS65215 },
+	{ "tps65219-regulator", TPS65219 },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(platform, tps65219_regulator_id_table);
@@ -366,5 +422,5 @@ static struct platform_driver tps65219_regulator_driver = {
 module_platform_driver(tps65219_regulator_driver);
 
 MODULE_AUTHOR("Jerome Neanne <j-neanne@baylibre.com>");
-MODULE_DESCRIPTION("TPS65219 voltage regulator driver");
+MODULE_DESCRIPTION("TPS65215/TPS65219 voltage regulator driver");
 MODULE_LICENSE("GPL");
-- 
2.43.0


