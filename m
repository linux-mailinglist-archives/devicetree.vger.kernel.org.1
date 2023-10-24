Return-Path: <devicetree+bounces-11296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D37D510A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:09:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 251D7B21038
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3346129416;
	Tue, 24 Oct 2023 13:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A16129405
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:08:54 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51198133
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:08:53 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvH9I-0002LA-3h; Tue, 24 Oct 2023 15:08:44 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvH9H-003x1k-G3; Tue, 24 Oct 2023 15:08:43 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qvH9H-00AQ0R-1P;
	Tue, 24 Oct 2023 15:08:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] regulator: fixed: add support for under-voltage IRQ
Date: Tue, 24 Oct 2023 15:08:42 +0200
Message-Id: <20231024130842.2483208-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024130842.2483208-1-o.rempel@pengutronix.de>
References: <20231024130842.2483208-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add interrupt support for under-voltage notification. This functionality
can be used on systems capable to detect under-voltage state and having
enough capacity to let the SoC do some emergency preparation.

This change enforce default policy to shutdown system as soon as
interrupt is triggered.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/fixed.c | 47 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 55130efae9b8..c60ea7ac7762 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
+#include <linux/reboot.h>
 #include <linux/regulator/driver.h>
 #include <linux/regulator/fixed.h>
 #include <linux/gpio/consumer.h>
@@ -29,6 +30,8 @@
 #include <linux/regulator/machine.h>
 #include <linux/clk.h>
 
+/* Default time in millisecond to wait for emergency shutdown */
+#define FV_DEF_EMERG_SHUTDWN_TMO	10
 
 struct fixed_voltage_data {
 	struct regulator_desc desc;
@@ -105,6 +108,46 @@ static int reg_is_enabled(struct regulator_dev *rdev)
 	return priv->enable_counter > 0;
 }
 
+static irqreturn_t reg_fixed_under_voltage_irq_handler(int irq, void *data)
+{
+	hw_protection_shutdown("Critical voltage drop reached",
+			       FV_DEF_EMERG_SHUTDWN_TMO);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * reg_fixed_get_irqs - Get and register the optional IRQ for fixed voltage
+ *                      regulator.
+ * @dev: Pointer to the device structure.
+ * @priv: Pointer to fixed_voltage_data structure containing private data.
+ *
+ * This function tries to get the IRQ from the device firmware node.
+ * If it's an optional IRQ and not found, it returns 0.
+ * Otherwise, it attempts to request the threaded IRQ.
+ *
+ * Return: 0 on success, or error code on failure.
+ */
+static int reg_fixed_get_irqs(struct device *dev,
+			      struct fixed_voltage_data *priv)
+{
+	int ret;
+
+	ret = fwnode_irq_get(dev_fwnode(dev), 0);
+	/* This is optional IRQ. If not found we will get -EINVAL */
+	if (ret == -EINVAL)
+		return 0;
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to get IRQ\n");
+
+	ret = devm_request_threaded_irq(dev, ret, NULL,
+					reg_fixed_under_voltage_irq_handler,
+					IRQF_ONESHOT, "under-voltage", priv);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to request IRQ\n");
+
+	return 0;
+}
 
 /**
  * of_get_fixed_voltage_config - extract fixed_voltage_config structure info
@@ -294,6 +337,10 @@ static int reg_fixed_voltage_probe(struct platform_device *pdev)
 	dev_dbg(&pdev->dev, "%s supplying %duV\n", drvdata->desc.name,
 		drvdata->desc.fixed_uV);
 
+	ret = reg_fixed_get_irqs(dev, drvdata);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.39.2


