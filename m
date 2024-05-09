Return-Path: <devicetree+bounces-66063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E168D8C11FF
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 17:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1056E1C20EF7
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 15:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9A2416F26E;
	Thu,  9 May 2024 15:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRya/aK2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F39A16F0E0;
	Thu,  9 May 2024 15:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715268676; cv=none; b=AagUb+UdwOVR2pYNwtDsTMAPQAcj6oEbPpv5ArSAU0EiwPf8gyrFHmZaeM1d1ocxEVN2CMKBphA1r6mPhG6z2Dn3AUx5u+XeyjGnFqeqrn5lVSjOIgmNc1HASIF7s5qJvlE/sSvKSjSImueayT603jEUikKBzLQcguP6NtbO35M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715268676; c=relaxed/simple;
	bh=6dJFzoz5/zPfJ2iN6WbR60T4ax8pQQwJWw+X5KaXXVM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RqvQQnqS/46zOmGk9gsK5VdKbne6JUx9eAY6dZpjvFx4Zh9O6v/Y4f4Gw7722RXJ4OmAqerj5Yng+gAVBC27Axn/iIEHAILC1It2XUQhjervp/8gl63WvFLmd01odE1AhrpknbegewlMfDH8DDV9KlNSEDGdldIkFaVuHJ4YYPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRya/aK2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 256F8C4AF0B;
	Thu,  9 May 2024 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715268676;
	bh=6dJFzoz5/zPfJ2iN6WbR60T4ax8pQQwJWw+X5KaXXVM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kRya/aK2RBV9u5OnjE/IwaEJG7bykOEM9DXVA/obwlUPNN0NTHgsBY+8B8V3bOljW
	 D3PZzukHqR7s+Q0qujXF8jQR5Bu+BAy/BQCR3Yzt4VKAhx31Ytu5nqduqPt59PrJEk
	 BzOPKmDLQ49Hsytwea0qHLHilTsFsOVqp8IFVgn41X0iXiofWJzth6INYNWbQh9NEb
	 9ZbY/hGReOUWR9ezk0iaanZeKdgQjSbPp3PNWINLMDDT7EayWHBMuZapN5h8kHs/MN
	 3xmSqn7ZgYMmt4m6pz+nF84/GYPJyGv3HLv2xtKE21oifKoSQP6E9YemOt0Y8O7C8q
	 a+5Th+alpxFWQ==
Received: by wens.tw (Postfix, from userid 1000)
	id BB4A95FD4B; Thu,  9 May 2024 23:31:13 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v6 2/2] regulator: sun20i: Add Allwinner D1 LDOs driver
Date: Thu,  9 May 2024 23:31:07 +0800
Message-Id: <20240509153107.438220-3-wens@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240509153107.438220-1-wens@kernel.org>
References: <20240509153107.438220-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Samuel Holland <samuel@sholland.org>

D1 contains two pairs of LDOs, "analog" LDOs and "system" LDOs. They are
similar and can share a driver, but only the system LDOs have a DT
binding defined so far.

The system LDOs have a single linear range. The voltage step is not an
integer, so a custom .list_voltage is needed to get the rounding right.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/regulator/Kconfig            |   8 ++
 drivers/regulator/Makefile           |   1 +
 drivers/regulator/sun20i-regulator.c | 157 +++++++++++++++++++++++++++
 3 files changed, 166 insertions(+)
 create mode 100644 drivers/regulator/sun20i-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 7db0a29b5b8d..acdb02a4ac0c 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1415,6 +1415,14 @@ config REGULATOR_STW481X_VMMC
 	  This driver supports the internal VMMC regulator in the STw481x
 	  PMIC chips.
 
+config REGULATOR_SUN20I
+	tristate "Allwinner D1 internal LDOs"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	select MFD_SYSCON
+	default ARCH_SUNXI
+	help
+	  This driver supports the internal LDOs in the Allwinner D1 SoC.
+
 config REGULATOR_SY7636A
 	tristate "Silergy SY7636A voltage regulator"
 	depends on MFD_SY7636A
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 46fb569e6be8..ba15fa5f30ad 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -163,6 +163,7 @@ obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
 obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
 obj-$(CONFIG_REGULATOR_STPMIC1) += stpmic1_regulator.o
 obj-$(CONFIG_REGULATOR_STW481X_VMMC) += stw481x-vmmc.o
+obj-$(CONFIG_REGULATOR_SUN20I) += sun20i-regulator.o
 obj-$(CONFIG_REGULATOR_SY7636A) += sy7636a-regulator.o
 obj-$(CONFIG_REGULATOR_SY8106A) += sy8106a-regulator.o
 obj-$(CONFIG_REGULATOR_SY8824X) += sy8824x.o
diff --git a/drivers/regulator/sun20i-regulator.c b/drivers/regulator/sun20i-regulator.c
new file mode 100644
index 000000000000..e09be44859e7
--- /dev/null
+++ b/drivers/regulator/sun20i-regulator.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// Copyright (c) 2021-2022 Samuel Holland <samuel@sholland.org>
+//
+
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+
+#define SUN20I_SYS_LDO_CTRL_REG		0x150
+
+struct sun20i_regulator_data {
+	const struct regulator_desc	*descs;
+	unsigned int			ndescs;
+};
+
+/* regulator_list_voltage_linear() modified for the non-integral uV_step. */
+static int sun20i_d1_system_ldo_list_voltage(struct regulator_dev *rdev,
+					     unsigned int selector)
+{
+	const struct regulator_desc *desc = rdev->desc;
+	unsigned int fraction, uV;
+
+	if (selector >= desc->n_voltages)
+		return -EINVAL;
+
+	uV = desc->min_uV + (desc->uV_step * selector);
+	fraction = selector + (desc->min_uV % 4);
+
+	if (uV > 1606667)
+		uV += 6667;
+	else
+		fraction++;
+
+	/* Produce correctly-rounded absolute voltages. */
+	return uV + (fraction / 3);
+}
+
+static const struct regulator_ops sun20i_d1_system_ldo_ops = {
+	.list_voltage		= sun20i_d1_system_ldo_list_voltage,
+	.map_voltage		= regulator_map_voltage_ascend,
+	.set_voltage_sel	= regulator_set_voltage_sel_regmap,
+	.get_voltage_sel	= regulator_get_voltage_sel_regmap,
+};
+
+static const struct regulator_desc sun20i_d1_system_ldo_descs[] = {
+	{
+		.name		= "ldoa",
+		.supply_name	= "ldo-in",
+		.of_match	= "ldoa",
+		.ops		= &sun20i_d1_system_ldo_ops,
+		.type		= REGULATOR_VOLTAGE,
+		.owner		= THIS_MODULE,
+		.n_voltages	= 32,
+		.min_uV		= 1593333,
+		.uV_step	= 13333, /* repeating */
+		.vsel_reg	= SUN20I_SYS_LDO_CTRL_REG,
+		.vsel_mask	= GENMASK(7, 0),
+	},
+	{
+		.name		= "ldob",
+		.supply_name	= "ldo-in",
+		.of_match	= "ldob",
+		.ops		= &sun20i_d1_system_ldo_ops,
+		.type		= REGULATOR_VOLTAGE,
+		.owner		= THIS_MODULE,
+		.n_voltages	= 64,
+		.min_uV		= 1166666,
+		.uV_step	= 13333, /* repeating */
+		.vsel_reg	= SUN20I_SYS_LDO_CTRL_REG,
+		.vsel_mask	= GENMASK(15, 8),
+	},
+};
+
+static const struct sun20i_regulator_data sun20i_d1_system_ldos = {
+	.descs	= sun20i_d1_system_ldo_descs,
+	.ndescs	= ARRAY_SIZE(sun20i_d1_system_ldo_descs),
+};
+
+static struct regmap *sun20i_regulator_get_regmap(struct device *dev)
+{
+	struct regmap *regmap;
+
+	/*
+	 * First try the syscon interface. The system control device is not
+	 * compatible with "syscon", so fall back to getting the regmap from
+	 * its platform device. This is ugly, but required for devicetree
+	 * backward compatibility.
+	 */
+	regmap = syscon_node_to_regmap(dev->parent->of_node);
+	if (!IS_ERR(regmap))
+		return regmap;
+
+	regmap = dev_get_regmap(dev->parent, NULL);
+	if (regmap)
+		return regmap;
+
+	return ERR_PTR(-EPROBE_DEFER);
+}
+
+static int sun20i_regulator_probe(struct platform_device *pdev)
+{
+	const struct sun20i_regulator_data *data;
+	struct device *dev = &pdev->dev;
+	struct regulator_config config;
+	struct regmap *regmap;
+
+	data = of_device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+
+	regmap = sun20i_regulator_get_regmap(dev);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap), "Failed to get regmap\n");
+
+	config = (struct regulator_config) {
+		.dev	= dev,
+		.regmap	= regmap,
+	};
+
+	for (unsigned int i = 0; i < data->ndescs; ++i) {
+		const struct regulator_desc *desc = &data->descs[i];
+		struct regulator_dev *rdev;
+
+		rdev = devm_regulator_register(dev, desc, &config);
+		if (IS_ERR(rdev))
+			return PTR_ERR(rdev);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id sun20i_regulator_of_match[] = {
+	{
+		.compatible = "allwinner,sun20i-d1-system-ldos",
+		.data = &sun20i_d1_system_ldos,
+	},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, sun20i_regulator_of_match);
+
+static struct platform_driver sun20i_regulator_driver = {
+	.probe	= sun20i_regulator_probe,
+	.driver	= {
+		.name		= "sun20i-regulator",
+		.of_match_table	= sun20i_regulator_of_match,
+	},
+};
+module_platform_driver(sun20i_regulator_driver);
+
+MODULE_AUTHOR("Samuel Holland <samuel@sholland.org>");
+MODULE_DESCRIPTION("Allwinner D1 internal LDO driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


