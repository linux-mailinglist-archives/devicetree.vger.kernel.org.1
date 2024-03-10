Return-Path: <devicetree+bounces-49653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5108774AE
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 02:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBCA11C20880
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 01:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9F823A8;
	Sun, 10 Mar 2024 01:02:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE2C816;
	Sun, 10 Mar 2024 01:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710032561; cv=none; b=ajniymKNdCaSufUKrzu0BhJTebpgvQfYY0i4uiztYpfzU2l2sF7qDw6BkjADKPLVqD1mLZZq1YQ2JsLig+MGYiNPBBaYlMhFydjw0XdqthKqFiUABZd2mEuNgE8Pk97WBaGTV8gY6gJJTP7U8g2r8US8AqxzyP+B3SyQiiF9N7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710032561; c=relaxed/simple;
	bh=wN1Ql7gTLgc/PL9olWh5vIG5mutxC7refYJ48cl6xsc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f5vJVrXGrFCwmN6Ulk64lvNfjudGt5N3H0kzbTk1FfOVgJI7y3umNqdWxjt4bAMjnPsfAIs9bIXcYAMIFVuAVEo2gS60ac5UMbv44pAs/OwQ7yR5DT6bSLg5O2vgt6ykZIDb21H9Ldbhp7e2v4NySOkwnmkNVQZv1oQhCg4pjYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7041150C;
	Sat,  9 Mar 2024 17:03:13 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9E583F73F;
	Sat,  9 Mar 2024 17:02:35 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 3/4] mfd: axp20x: add support for AXP717 PMIC
Date: Sun, 10 Mar 2024 01:02:10 +0000
Message-Id: <20240310010211.28653-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.8
In-Reply-To: <20240310010211.28653-1-andre.przywara@arm.com>
References: <20240310010211.28653-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The AXP717a is a PMIC chip produced by X-Powers, it can be connected to
an I2C or RSB bus.

It's a rather complete PMIC, with many regulators, interrupts, an ADC and
battery charging functionality. It also offer USB type-C CC pin
handling.

Describe the regmap and the MFD bits, along with the registers exposed
via I2C or RSB. This covers the regulator, interrupts and power key
devices for now.
Advertise the device using the new compatible string.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/mfd/axp20x-i2c.c   |  2 +
 drivers/mfd/axp20x-rsb.c   |  1 +
 drivers/mfd/axp20x.c       | 90 ++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/axp20x.h | 67 ++++++++++++++++++++++++++++
 4 files changed, 160 insertions(+)

diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
index 68d3560cfe4a0..b8e7ac89f6976 100644
--- a/drivers/mfd/axp20x-i2c.c
+++ b/drivers/mfd/axp20x-i2c.c
@@ -65,6 +65,7 @@ static const struct of_device_id axp20x_i2c_of_match[] = {
 	{ .compatible = "x-powers,axp221", .data = (void *)AXP221_ID },
 	{ .compatible = "x-powers,axp223", .data = (void *)AXP223_ID },
 	{ .compatible = "x-powers,axp313a", .data = (void *)AXP313A_ID },
+	{ .compatible = "x-powers,axp717", .data = (void *)AXP717_ID },
 	{ .compatible = "x-powers,axp803", .data = (void *)AXP803_ID },
 	{ .compatible = "x-powers,axp806", .data = (void *)AXP806_ID },
 	{ .compatible = "x-powers,axp15060", .data = (void *)AXP15060_ID },
@@ -81,6 +82,7 @@ static const struct i2c_device_id axp20x_i2c_id[] = {
 	{ "axp221", 0 },
 	{ "axp223", 0 },
 	{ "axp313a", 0 },
+	{ "axp717", 0 },
 	{ "axp803", 0 },
 	{ "axp806", 0 },
 	{ "axp15060", 0 },
diff --git a/drivers/mfd/axp20x-rsb.c b/drivers/mfd/axp20x-rsb.c
index 214bc0d84d44c..059656f2a1bd6 100644
--- a/drivers/mfd/axp20x-rsb.c
+++ b/drivers/mfd/axp20x-rsb.c
@@ -58,6 +58,7 @@ static void axp20x_rsb_remove(struct sunxi_rsb_device *rdev)
 
 static const struct of_device_id axp20x_rsb_of_match[] = {
 	{ .compatible = "x-powers,axp223", .data = (void *)AXP223_ID },
+	{ .compatible = "x-powers,axp717", .data = (void *)AXP717_ID },
 	{ .compatible = "x-powers,axp803", .data = (void *)AXP803_ID },
 	{ .compatible = "x-powers,axp806", .data = (void *)AXP806_ID },
 	{ .compatible = "x-powers,axp809", .data = (void *)AXP809_ID },
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index d8daa593ebd53..48ce6ea693cea 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -42,6 +42,7 @@ static const char * const axp20x_model_names[] = {
 	"AXP223",
 	"AXP288",
 	"AXP313a",
+	"AXP717",
 	"AXP803",
 	"AXP806",
 	"AXP809",
@@ -207,6 +208,25 @@ static const struct regmap_access_table axp313a_volatile_table = {
 	.n_yes_ranges = ARRAY_SIZE(axp313a_volatile_ranges),
 };
 
+static const struct regmap_range axp717_writeable_ranges[] = {
+	regmap_reg_range(AXP717_IRQ0_EN, AXP717_IRQ4_EN),
+	regmap_reg_range(AXP717_DCDC_OUTPUT_CONTROL, AXP717_CPUSLDO_CONTROL),
+};
+
+static const struct regmap_range axp717_volatile_ranges[] = {
+	regmap_reg_range(AXP717_IRQ0_STATE, AXP717_IRQ4_STATE),
+};
+
+static const struct regmap_access_table axp717_writeable_table = {
+	.yes_ranges = axp717_writeable_ranges,
+	.n_yes_ranges = ARRAY_SIZE(axp717_writeable_ranges),
+};
+
+static const struct regmap_access_table axp717_volatile_table = {
+	.yes_ranges = axp717_volatile_ranges,
+	.n_yes_ranges = ARRAY_SIZE(axp717_volatile_ranges),
+};
+
 static const struct regmap_range axp806_volatile_ranges[] = {
 	regmap_reg_range(AXP20X_IRQ1_STATE, AXP20X_IRQ2_STATE),
 };
@@ -317,6 +337,11 @@ static const struct resource axp313a_pek_resources[] = {
 	DEFINE_RES_IRQ_NAMED(AXP313A_IRQ_PEK_FAL_EDGE, "PEK_DBF"),
 };
 
+static const struct resource axp717_pek_resources[] = {
+	DEFINE_RES_IRQ_NAMED(AXP717_IRQ_PEK_RIS_EDGE, "PEK_DBR"),
+	DEFINE_RES_IRQ_NAMED(AXP717_IRQ_PEK_FAL_EDGE, "PEK_DBF"),
+};
+
 static const struct resource axp803_pek_resources[] = {
 	DEFINE_RES_IRQ_NAMED(AXP803_IRQ_PEK_RIS_EDGE, "PEK_DBR"),
 	DEFINE_RES_IRQ_NAMED(AXP803_IRQ_PEK_FAL_EDGE, "PEK_DBF"),
@@ -391,6 +416,15 @@ static const struct regmap_config axp313a_regmap_config = {
 	.cache_type = REGCACHE_MAPLE,
 };
 
+static const struct regmap_config axp717_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.wr_table = &axp717_writeable_table,
+	.volatile_table = &axp717_volatile_table,
+	.max_register = AXP717_CPUSLDO_CONTROL,
+	.cache_type = REGCACHE_RBTREE,
+};
+
 static const struct regmap_config axp806_regmap_config = {
 	.reg_bits	= 8,
 	.val_bits	= 8,
@@ -589,6 +623,40 @@ static const struct regmap_irq axp313a_regmap_irqs[] = {
 	INIT_REGMAP_IRQ(AXP313A, DIE_TEMP_HIGH,		0, 0),
 };
 
+static const struct regmap_irq axp717_regmap_irqs[] = {
+	INIT_REGMAP_IRQ(AXP717, SOC_DROP_LVL2,		0, 7),
+	INIT_REGMAP_IRQ(AXP717, SOC_DROP_LVL1,		0, 6),
+	INIT_REGMAP_IRQ(AXP717, GAUGE_NEW_SOC,		0, 4),
+	INIT_REGMAP_IRQ(AXP717, BOOST_OVER_V,		0, 2),
+	INIT_REGMAP_IRQ(AXP717, VBUS_OVER_V,		0, 1),
+	INIT_REGMAP_IRQ(AXP717, VBUS_FAULT,		0, 0),
+	INIT_REGMAP_IRQ(AXP717, VBUS_PLUGIN,		1, 7),
+	INIT_REGMAP_IRQ(AXP717, VBUS_REMOVAL,		1, 6),
+	INIT_REGMAP_IRQ(AXP717, BATT_PLUGIN,		1, 5),
+	INIT_REGMAP_IRQ(AXP717, BATT_REMOVAL,		1, 4),
+	INIT_REGMAP_IRQ(AXP717, PEK_SHORT,		1, 3),
+	INIT_REGMAP_IRQ(AXP717, PEK_LONG,		1, 2),
+	INIT_REGMAP_IRQ(AXP717, PEK_FAL_EDGE,		1, 1),
+	INIT_REGMAP_IRQ(AXP717, PEK_RIS_EDGE,		1, 0),
+	INIT_REGMAP_IRQ(AXP717, WDOG_EXPIRE,		2, 7),
+	INIT_REGMAP_IRQ(AXP717, LDO_OVER_CURR,		2, 6),
+	INIT_REGMAP_IRQ(AXP717, BATT_OVER_CURR,		2, 5),
+	INIT_REGMAP_IRQ(AXP717, CHARG_DONE,		2, 4),
+	INIT_REGMAP_IRQ(AXP717, CHARG,			2, 3),
+	INIT_REGMAP_IRQ(AXP717, DIE_TEMP_HIGH,		2, 2),
+	INIT_REGMAP_IRQ(AXP717, CHARG_TIMER,		2, 1),
+	INIT_REGMAP_IRQ(AXP717, BATT_OVER_V,		2, 0),
+	INIT_REGMAP_IRQ(AXP717, BC_USB_DONE,		3, 7),
+	INIT_REGMAP_IRQ(AXP717, BC_USB_CHNG,		3, 6),
+	INIT_REGMAP_IRQ(AXP717, BATT_QUIT_TEMP_HIGH,	3, 4),
+	INIT_REGMAP_IRQ(AXP717, BATT_CHG_TEMP_HIGH,	3, 3),
+	INIT_REGMAP_IRQ(AXP717, BATT_CHG_TEMP_LOW,	3, 2),
+	INIT_REGMAP_IRQ(AXP717, BATT_ACT_TEMP_HIGH,	3, 1),
+	INIT_REGMAP_IRQ(AXP717, BATT_ACT_TEMP_LOW,	3, 0),
+	INIT_REGMAP_IRQ(AXP717, TYPEC_REMOVE,		4, 6),
+	INIT_REGMAP_IRQ(AXP717, TYPEC_PLUGIN,		4, 5),
+};
+
 static const struct regmap_irq axp803_regmap_irqs[] = {
 	INIT_REGMAP_IRQ(AXP803, ACIN_OVER_V,		0, 7),
 	INIT_REGMAP_IRQ(AXP803, ACIN_PLUGIN,		0, 6),
@@ -776,6 +844,17 @@ static const struct regmap_irq_chip axp313a_regmap_irq_chip = {
 	.num_regs		= 1,
 };
 
+static const struct regmap_irq_chip axp717_regmap_irq_chip = {
+	.name			= "axp717_irq_chip",
+	.status_base		= AXP717_IRQ0_STATE,
+	.ack_base		= AXP717_IRQ0_STATE,
+	.unmask_base		= AXP717_IRQ0_EN,
+	.init_ack_masked	= true,
+	.irqs			= axp717_regmap_irqs,
+	.num_irqs		= ARRAY_SIZE(axp717_regmap_irqs),
+	.num_regs		= 5,
+};
+
 static const struct regmap_irq_chip axp803_regmap_irq_chip = {
 	.name			= "axp803",
 	.status_base		= AXP20X_IRQ1_STATE,
@@ -941,6 +1020,11 @@ static struct mfd_cell axp313a_cells[] = {
 	MFD_CELL_RES("axp313a-pek", axp313a_pek_resources),
 };
 
+static struct mfd_cell axp717_cells[] = {
+	MFD_CELL_NAME("axp20x-regulator"),
+	MFD_CELL_RES("axp20x-pek", axp717_pek_resources),
+};
+
 static const struct resource axp288_adc_resources[] = {
 	DEFINE_RES_IRQ_NAMED(AXP288_IRQ_GPADC, "GPADC"),
 };
@@ -1181,6 +1265,12 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
 		axp20x->regmap_cfg = &axp313a_regmap_config;
 		axp20x->regmap_irq_chip = &axp313a_regmap_irq_chip;
 		break;
+	case AXP717_ID:
+		axp20x->nr_cells = ARRAY_SIZE(axp717_cells);
+		axp20x->cells = axp717_cells;
+		axp20x->regmap_cfg = &axp717_regmap_config;
+		axp20x->regmap_irq_chip = &axp717_regmap_irq_chip;
+		break;
 	case AXP803_ID:
 		axp20x->nr_cells = ARRAY_SIZE(axp803_cells);
 		axp20x->cells = axp803_cells;
diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
index 9b2b7ac2107f4..fd7a41a69526f 100644
--- a/include/linux/mfd/axp20x.h
+++ b/include/linux/mfd/axp20x.h
@@ -19,6 +19,7 @@ enum axp20x_variants {
 	AXP223_ID,
 	AXP288_ID,
 	AXP313A_ID,
+	AXP717_ID,
 	AXP803_ID,
 	AXP806_ID,
 	AXP809_ID,
@@ -113,6 +114,38 @@ enum axp20x_variants {
 #define AXP313A_IRQ_EN			0x20
 #define AXP313A_IRQ_STATE		0x21
 
+#define AXP717_ON_INDICATE		0x00
+#define AXP717_IRQ0_EN			0x40
+#define AXP717_IRQ1_EN			0x41
+#define AXP717_IRQ2_EN			0x42
+#define AXP717_IRQ3_EN			0x43
+#define AXP717_IRQ4_EN			0x44
+#define AXP717_IRQ0_STATE		0x48
+#define AXP717_IRQ1_STATE		0x49
+#define AXP717_IRQ2_STATE		0x4a
+#define AXP717_IRQ3_STATE		0x4b
+#define AXP717_IRQ4_STATE		0x4c
+#define AXP717_DCDC_OUTPUT_CONTROL	0x80
+#define AXP717_DCDC1_CONTROL		0x83
+#define AXP717_DCDC2_CONTROL		0x84
+#define AXP717_DCDC3_CONTROL		0x85
+#define AXP717_DCDC4_CONTROL		0x86
+#define AXP717_LDO0_OUTPUT_CONTROL	0x90
+#define AXP717_LDO1_OUTPUT_CONTROL	0x91
+#define AXP717_ALDO1_CONTROL		0x93
+#define AXP717_ALDO2_CONTROL		0x94
+#define AXP717_ALDO3_CONTROL		0x95
+#define AXP717_ALDO4_CONTROL		0x96
+#define AXP717_BLDO1_CONTROL		0x97
+#define AXP717_BLDO2_CONTROL		0x98
+#define AXP717_BLDO3_CONTROL		0x99
+#define AXP717_BLDO4_CONTROL		0x9a
+#define AXP717_CLDO1_CONTROL		0x9b
+#define AXP717_CLDO2_CONTROL		0x9c
+#define AXP717_CLDO3_CONTROL		0x9d
+#define AXP717_CLDO4_CONTROL		0x9e
+#define AXP717_CPUSLDO_CONTROL		0x9f
+
 #define AXP806_STARTUP_SRC		0x00
 #define AXP806_CHIP_ID			0x03
 #define AXP806_PWR_OUT_CTRL1		0x10
@@ -732,6 +765,40 @@ enum axp313a_irqs {
 	AXP313A_IRQ_PEK_RIS_EDGE,
 };
 
+enum axp717_irqs {
+	AXP717_IRQ_VBUS_FAULT,
+	AXP717_IRQ_VBUS_OVER_V,
+	AXP717_IRQ_BOOST_OVER_V,
+	AXP717_IRQ_GAUGE_NEW_SOC = 4,
+	AXP717_IRQ_SOC_DROP_LVL1 = 6,
+	AXP717_IRQ_SOC_DROP_LVL2,
+	AXP717_IRQ_PEK_RIS_EDGE,
+	AXP717_IRQ_PEK_FAL_EDGE,
+	AXP717_IRQ_PEK_LONG,
+	AXP717_IRQ_PEK_SHORT,
+	AXP717_IRQ_BATT_REMOVAL,
+	AXP717_IRQ_BATT_PLUGIN,
+	AXP717_IRQ_VBUS_REMOVAL,
+	AXP717_IRQ_VBUS_PLUGIN,
+	AXP717_IRQ_BATT_OVER_V,
+	AXP717_IRQ_CHARG_TIMER,
+	AXP717_IRQ_DIE_TEMP_HIGH,
+	AXP717_IRQ_CHARG,
+	AXP717_IRQ_CHARG_DONE,
+	AXP717_IRQ_BATT_OVER_CURR,
+	AXP717_IRQ_LDO_OVER_CURR,
+	AXP717_IRQ_WDOG_EXPIRE,
+	AXP717_IRQ_BATT_ACT_TEMP_LOW,
+	AXP717_IRQ_BATT_ACT_TEMP_HIGH,
+	AXP717_IRQ_BATT_CHG_TEMP_LOW,
+	AXP717_IRQ_BATT_CHG_TEMP_HIGH,
+	AXP717_IRQ_BATT_QUIT_TEMP_HIGH,
+	AXP717_IRQ_BC_USB_CHNG = 30,
+	AXP717_IRQ_BC_USB_DONE,
+	AXP717_IRQ_TYPEC_PLUGIN = 37,
+	AXP717_IRQ_TYPEC_REMOVE,
+};
+
 enum axp803_irqs {
 	AXP803_IRQ_ACIN_OVER_V = 1,
 	AXP803_IRQ_ACIN_PLUGIN,
-- 
2.35.8


