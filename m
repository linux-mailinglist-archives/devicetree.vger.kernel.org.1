Return-Path: <devicetree+bounces-253712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA91D10C11
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3F8C303AADE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3178031AA96;
	Mon, 12 Jan 2026 06:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="QLZxGf8e"
X-Original-To: devicetree@vger.kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D271C3191D1;
	Mon, 12 Jan 2026 06:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768200603; cv=none; b=VKmijs4DGe6cY7fk34D/IU05xuTe6xIzmx3sEsiphb2p/0H5z8SnHjjswXCaCtmE486fkTc+NCMlN73OZ21gPyTBDe2qKIZGMaT2U8ib9N1Z+AwLKgZjnP4ksqO18MAbTto+4iCa0E+UvWCHG1fxClo2bGhqXhk10pPQQCYH+qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768200603; c=relaxed/simple;
	bh=1cXPWKziI0lud7gSk8vrzIa8QAJhfZRXofCYwKv2KbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aXh9UhC9p0KcwMWgN3cxlIxLoHtKxlPNt6XU49Q/wcBkbzdnVrA42jkW3NPtZibqkKhTpWyEitMThmtXnNR6u3IYIGtMaDG27H/CfQBEUg3uxw1hLiXMeOi8sTD4mql010WeNMz108z+Wcw1t/QH0pSbpOMKpg0RgFo+yex6E4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=none smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=QLZxGf8e; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=JCZG+WNpYAv5tyKuOS7jPKegbvlT/kcNsBRZ8hMIAuQ=; b=QLZxGf8e25zgf6+LA1KaI+69EA
	1tcQQ5UoVwutsKh0pHCYgbEhgOkCgpkXMPvCqtOIC2rDc2ieIfZx9ozJP4clL81ZaThjjpmRcY7wJ
	+x934LC22YeWQkKhoNNUSq7lc/vFpiye/JjFa8QktY8BbAGVqQvLLmq2WWN/J30vmxzklz92uhFjE
	qMU+jK+JTNcG2F7kBJZVNL5SgbHQ8wNUcz0Yn4FeS/ljcx44au9CaS6FEO8dJ0LRjxg3SY5CdHwoe
	8BOLOs13y6ntj/tpdcYbcy1M9qMDVkL89Y9dVYxJyzKKjZZZoHBqrBUgpQaxb5Ohp4qCqqHtNuyEm
	K4rVqt3Q==;
Received: from [50.53.43.113] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfBkW-00000004pyp-0Wnm;
	Mon, 12 Jan 2026 06:50:00 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Robert Marko <robert.marko@sartura.hr>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] reset: remove the reset-tn48m driver
Date: Sun, 11 Jan 2026 22:49:58 -0800
Message-ID: <20260112064958.3837756-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reset-tn48m driver is useless without the simple-mfd parent, which
is not present in the kernel tree, so remove it and references to it.

Fixes: 5cd3921d16b6 ("reset: Add Delta TN48M CPLD reset controller")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
---
Based on v6.19-rc4.

Cc: Robert Marko <robert.marko@sartura.hr>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

 .../bindings/reset/delta,tn48m-reset.yaml          |  35 ------
 drivers/reset/Kconfig                              |  13 ---
 drivers/reset/Makefile                             |   1 -
 drivers/reset/reset-tn48m.c                        | 128 ---------------------
 include/dt-bindings/reset/delta,tn48m-reset.h      |  20 ----
 5 files changed, 197 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml b/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
deleted file mode 100644
index 0e5ee8decc0d..000000000000
--- a/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
+++ /dev/null
@@ -1,35 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/reset/delta,tn48m-reset.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Delta Networks TN48M CPLD reset controller
-
-maintainers:
-  - Robert Marko <robert.marko@sartura.hr>
-
-description: |
-  This module is part of the Delta TN48M multi-function device. For more
-  details see ../mfd/delta,tn48m-cpld.yaml.
-
-  Reset controller modules provides resets for the following:
-  * 88F7040 SoC
-  * 88F6820 SoC
-  * 98DX3265 switch MAC-s
-  * 88E1680 PHY-s
-  * 88E1512 PHY
-  * PoE PSE controller
-
-properties:
-  compatible:
-    const: delta,tn48m-reset
-
-  "#reset-cells":
-    const: 1
-
-required:
-  - compatible
-  - "#reset-cells"
-
-additionalProperties: false
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d..e7fca3e5d3b0 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -360,19 +360,6 @@ config RESET_TI_TPS380X
 	  you wish to use the reset framework for such devices, say Y here.
 	  Otherwise, say N.
 
-config RESET_TN48M_CPLD
-	tristate "Delta Networks TN48M switch CPLD reset controller"
-	depends on MFD_TN48M_CPLD || COMPILE_TEST
-	default MFD_TN48M_CPLD
-	help
-	  This enables the reset controller driver for the Delta TN48M CPLD.
-	  It provides reset signals for Armada 7040 and 385 SoC-s, Alleycat 3X
-	  switch MAC-s, Alaska OOB ethernet PHY, Quad Alaska ethernet PHY-s and
-	  Microchip PD69200 PoE PSE controller.
-
-	  This driver can also be built as a module. If so, the module will be
-	  called reset-tn48m.
-
 config RESET_UNIPHIER
 	tristate "Reset controller driver for UniPhier SoCs"
 	depends on ARCH_UNIPHIER || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 9c3e484dfd81..b6212c21b5b7 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -45,7 +45,6 @@ obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
 obj-$(CONFIG_RESET_TI_SCI) += reset-ti-sci.o
 obj-$(CONFIG_RESET_TI_SYSCON) += reset-ti-syscon.o
 obj-$(CONFIG_RESET_TI_TPS380X) += reset-tps380x.o
-obj-$(CONFIG_RESET_TN48M_CPLD) += reset-tn48m.o
 obj-$(CONFIG_RESET_UNIPHIER) += reset-uniphier.o
 obj-$(CONFIG_RESET_UNIPHIER_GLUE) += reset-uniphier-glue.o
 obj-$(CONFIG_RESET_ZYNQ) += reset-zynq.o
diff --git a/drivers/reset/reset-tn48m.c b/drivers/reset/reset-tn48m.c
deleted file mode 100644
index 130027291b6e..000000000000
--- a/drivers/reset/reset-tn48m.c
+++ /dev/null
@@ -1,128 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Delta TN48M CPLD reset driver
- *
- * Copyright (C) 2021 Sartura Ltd.
- *
- * Author: Robert Marko <robert.marko@sartura.hr>
- */
-
-#include <linux/device.h>
-#include <linux/kernel.h>
-#include <linux/mod_devicetable.h>
-#include <linux/module.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/reset-controller.h>
-
-#include <dt-bindings/reset/delta,tn48m-reset.h>
-
-#define TN48M_RESET_REG		0x10
-
-#define TN48M_RESET_TIMEOUT_US	125000
-#define TN48M_RESET_SLEEP_US	10
-
-struct tn48_reset_map {
-	u8 bit;
-};
-
-struct tn48_reset_data {
-	struct reset_controller_dev rcdev;
-	struct regmap *regmap;
-};
-
-static const struct tn48_reset_map tn48m_resets[] = {
-	[CPU_88F7040_RESET] = {0},
-	[CPU_88F6820_RESET] = {1},
-	[MAC_98DX3265_RESET] = {2},
-	[PHY_88E1680_RESET] = {4},
-	[PHY_88E1512_RESET] = {6},
-	[POE_RESET] = {7},
-};
-
-static inline struct tn48_reset_data *to_tn48_reset_data(
-			struct reset_controller_dev *rcdev)
-{
-	return container_of(rcdev, struct tn48_reset_data, rcdev);
-}
-
-static int tn48m_control_reset(struct reset_controller_dev *rcdev,
-			       unsigned long id)
-{
-	struct tn48_reset_data *data = to_tn48_reset_data(rcdev);
-	unsigned int val;
-
-	regmap_update_bits(data->regmap, TN48M_RESET_REG,
-			   BIT(tn48m_resets[id].bit), 0);
-
-	return regmap_read_poll_timeout(data->regmap,
-					TN48M_RESET_REG,
-					val,
-					val & BIT(tn48m_resets[id].bit),
-					TN48M_RESET_SLEEP_US,
-					TN48M_RESET_TIMEOUT_US);
-}
-
-static int tn48m_control_status(struct reset_controller_dev *rcdev,
-				unsigned long id)
-{
-	struct tn48_reset_data *data = to_tn48_reset_data(rcdev);
-	unsigned int regval;
-	int ret;
-
-	ret = regmap_read(data->regmap, TN48M_RESET_REG, &regval);
-	if (ret < 0)
-		return ret;
-
-	if (BIT(tn48m_resets[id].bit) & regval)
-		return 0;
-	else
-		return 1;
-}
-
-static const struct reset_control_ops tn48_reset_ops = {
-	.reset		= tn48m_control_reset,
-	.status		= tn48m_control_status,
-};
-
-static int tn48m_reset_probe(struct platform_device *pdev)
-{
-	struct tn48_reset_data *data;
-	struct regmap *regmap;
-
-	regmap = dev_get_regmap(pdev->dev.parent, NULL);
-	if (!regmap)
-		return -ENODEV;
-
-	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
-	if (!data)
-		return -ENOMEM;
-
-	data->regmap = regmap;
-
-	data->rcdev.owner = THIS_MODULE;
-	data->rcdev.ops = &tn48_reset_ops;
-	data->rcdev.nr_resets = ARRAY_SIZE(tn48m_resets);
-	data->rcdev.of_node = pdev->dev.of_node;
-
-	return devm_reset_controller_register(&pdev->dev, &data->rcdev);
-}
-
-static const struct of_device_id tn48m_reset_of_match[] = {
-	{ .compatible = "delta,tn48m-reset" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, tn48m_reset_of_match);
-
-static struct platform_driver tn48m_reset_driver = {
-	.driver = {
-		.name = "delta-tn48m-reset",
-		.of_match_table = tn48m_reset_of_match,
-	},
-	.probe = tn48m_reset_probe,
-};
-module_platform_driver(tn48m_reset_driver);
-
-MODULE_AUTHOR("Robert Marko <robert.marko@sartura.hr>");
-MODULE_DESCRIPTION("Delta TN48M CPLD reset driver");
-MODULE_LICENSE("GPL");
diff --git a/include/dt-bindings/reset/delta,tn48m-reset.h b/include/dt-bindings/reset/delta,tn48m-reset.h
deleted file mode 100644
index d4e9ed12de3e..000000000000
--- a/include/dt-bindings/reset/delta,tn48m-reset.h
+++ /dev/null
@@ -1,20 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Delta TN48M CPLD GPIO driver
- *
- * Copyright (C) 2021 Sartura Ltd.
- *
- * Author: Robert Marko <robert.marko@sartura.hr>
- */
-
-#ifndef _DT_BINDINGS_RESET_TN48M_H
-#define _DT_BINDINGS_RESET_TN48M_H
-
-#define CPU_88F7040_RESET	0
-#define CPU_88F6820_RESET	1
-#define MAC_98DX3265_RESET	2
-#define PHY_88E1680_RESET	3
-#define PHY_88E1512_RESET	4
-#define POE_RESET		5
-
-#endif /* _DT_BINDINGS_RESET_TN48M_H */

