Return-Path: <devicetree+bounces-7140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE437BF697
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52243281C64
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF28515AE0;
	Tue, 10 Oct 2023 08:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA981FCF
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 08:59:22 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42D097
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:59:19 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a4-00016X-Oc; Tue, 10 Oct 2023 10:59:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a3-000cTO-Tp; Tue, 10 Oct 2023 10:59:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a3-00ER24-2o;
	Tue, 10 Oct 2023 10:59:07 +0200
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
Subject: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Date: Tue, 10 Oct 2023 10:59:06 +0200
Message-Id: <20231010085906.3440452-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010085906.3440452-1-o.rempel@pengutronix.de>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add handler to forward under-voltage events.
On systems for more or less complicated regulator chains we need to
forward under-voltage events to actual driver which need to react on
them.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/fixed.c | 36 +++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 493dd244e4f4..99d37f1ebbc9 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -33,6 +33,7 @@
 struct fixed_voltage_data {
 	struct regulator_desc desc;
 	struct regulator_dev *dev;
+	struct notifier_block nb;
 
 	struct clk *enable_clock;
 	unsigned int enable_counter;
@@ -105,6 +106,39 @@ static int reg_is_enabled(struct regulator_dev *rdev)
 	return priv->enable_counter > 0;
 }
 
+static int reg_fixed_regulator_notifier(struct notifier_block *nb,
+					unsigned long event, void *data)
+{
+	struct fixed_voltage_data *priv =
+		container_of(nb, struct fixed_voltage_data, nb);
+	struct regulator_dev *rdev = priv->dev;
+
+	if (event != REGULATOR_EVENT_UNDER_VOLTAGE_WARN &&
+	    event != REGULATOR_EVENT_UNDER_VOLTAGE)
+		return NOTIFY_OK;
+
+	regulator_notifier_call_chain(rdev, event, NULL);
+
+	return NOTIFY_OK;
+}
+
+static int reg_fixed_register_reg_notifier(struct fixed_voltage_data *priv,
+					   struct device *dev)
+{
+	struct regulator_dev *rdev = priv->dev;
+	int ret;
+
+	if (!rdev->supply)
+		return 0;
+
+	priv->nb.notifier_call = reg_fixed_regulator_notifier;
+	ret = devm_regulator_register_notifier(rdev->supply, &priv->nb);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register notifier\n");
+
+	return 0;
+}
+
 static irqreturn_t reg_fixed_under_voltage_irq_handler(int irq, void *data)
 {
 	struct fixed_voltage_data *priv = data;
@@ -327,7 +361,7 @@ static int reg_fixed_voltage_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	return 0;
+	return reg_fixed_register_reg_notifier(drvdata, dev);
 }
 
 #if defined(CONFIG_OF)
-- 
2.39.2


