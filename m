Return-Path: <devicetree+bounces-1353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E623D7A5FCC
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:39:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E53728107A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFB61862F;
	Tue, 19 Sep 2023 10:39:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B1015A6
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:39:28 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0BC1FEA;
	Tue, 19 Sep 2023 03:39:25 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1353AFEC;
	Tue, 19 Sep 2023 03:40:02 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9EF23F67D;
	Tue, 19 Sep 2023 03:39:22 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Lee Jones <lee@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Mark Brown <broonie@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Shengyu Qu <wiagn233@outlook.com>,
	Martin Botka <martin.botka1@gmail.com>,
	Matthew Croughan <matthew.croughan@nix.how>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] mfd: axp20x: Generalise handling without interrupt
Date: Tue, 19 Sep 2023 11:39:13 +0100
Message-Id: <20230919103913.463156-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230919103913.463156-1-andre.przywara@arm.com>
References: <20230919103913.463156-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

At the moment we allow the AXP15060 and the AXP806 PMICs to omit the
interrupt line to the SoC, and we skip registering the PEK (power key)
driver in this case, since that crashes when no IRQ is described in the
DT node.
The IRQ pin potentially not being connected to anything does affect more
PMICs, though, and the PEK driver is not the only one requiring an
interrupt: at least the AC power supply driver crashes in a similar
fashion.

Generalise the handling of AXP MFD devices when the platform tables
describe no interrupt, by allowing each device to specify an alternative
MFD list for this case. If no specific alternative is specified, we go
with the safe default of "just the regulators", which matches the current
situation.

This enables new devices using the AXP313a PMIC, but not connecting the
IRQ pin.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/mfd/axp20x.c | 44 ++++++++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index 87603eeaa2770..d93189b0230de 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -1133,6 +1133,8 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
 	struct device *dev = axp20x->dev;
 	const struct acpi_device_id *acpi_id;
 	const struct of_device_id *of_id;
+	const struct mfd_cell *cells_no_irq = NULL;
+	int nr_cells_no_irq = 0;
 
 	if (dev->of_node) {
 		of_id = of_match_device(dev->driver->of_match_table, dev);
@@ -1207,14 +1209,15 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
 		 * if there is no interrupt line.
 		 */
 		if (of_property_read_bool(axp20x->dev->of_node,
-					  "x-powers,self-working-mode") &&
-		    axp20x->irq > 0) {
+					  "x-powers,self-working-mode")) {
 			axp20x->nr_cells = ARRAY_SIZE(axp806_self_working_cells);
 			axp20x->cells = axp806_self_working_cells;
 		} else {
 			axp20x->nr_cells = ARRAY_SIZE(axp806_cells);
 			axp20x->cells = axp806_cells;
 		}
+		nr_cells_no_irq = ARRAY_SIZE(axp806_cells);
+		cells_no_irq = axp806_cells;
 		axp20x->regmap_cfg = &axp806_regmap_config;
 		axp20x->regmap_irq_chip = &axp806_regmap_irq_chip;
 		break;
@@ -1238,24 +1241,8 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
 		axp20x->regmap_irq_chip = &axp803_regmap_irq_chip;
 		break;
 	case AXP15060_ID:
-		/*
-		 * Don't register the power key part if there is no interrupt
-		 * line.
-		 *
-		 * Since most use cases of AXP PMICs are Allwinner SOCs, board
-		 * designers follow Allwinner's reference design and connects
-		 * IRQ line to SOC, there's no need for those variants to deal
-		 * with cases that IRQ isn't connected. However, AXP15660 is
-		 * used by some other vendors' SOCs that didn't connect IRQ
-		 * line, we need to deal with this case.
-		 */
-		if (axp20x->irq > 0) {
-			axp20x->nr_cells = ARRAY_SIZE(axp15060_cells);
-			axp20x->cells = axp15060_cells;
-		} else {
-			axp20x->nr_cells = ARRAY_SIZE(axp_regulator_only_cells);
-			axp20x->cells = axp_regulator_only_cells;
-		}
+		axp20x->nr_cells = ARRAY_SIZE(axp15060_cells);
+		axp20x->cells = axp15060_cells;
 		axp20x->regmap_cfg = &axp15060_regmap_config;
 		axp20x->regmap_irq_chip = &axp15060_regmap_irq_chip;
 		break;
@@ -1263,6 +1250,23 @@ int axp20x_match_device(struct axp20x_dev *axp20x)
 		dev_err(dev, "unsupported AXP20X ID %lu\n", axp20x->variant);
 		return -EINVAL;
 	}
+
+	/*
+	 * Use an alternative cell array when no interrupt line is connected,
+	 * since IRQs are required by some drivers.
+	 * The default is the safe "regulator-only", as this works fine without
+	 * an interrupt specified.
+	 */
+	if (axp20x->irq <= 0) {
+		if (cells_no_irq) {
+			axp20x->nr_cells = nr_cells_no_irq;
+			axp20x->cells = cells_no_irq;
+		} else {
+			axp20x->nr_cells = ARRAY_SIZE(axp_regulator_only_cells);
+			axp20x->cells = axp_regulator_only_cells;
+		}
+	}
+
 	dev_info(dev, "AXP20x variant %s found\n",
 		 axp20x_model_names[axp20x->variant]);
 
-- 
2.25.1


