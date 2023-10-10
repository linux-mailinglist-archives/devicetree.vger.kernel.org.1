Return-Path: <devicetree+bounces-7141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5887BF698
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 994771C209DD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D09515AE9;
	Tue, 10 Oct 2023 08:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788C615AC3
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 08:59:23 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1629DA4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:59:20 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a4-00016W-Od; Tue, 10 Oct 2023 10:59:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a3-000cTN-TD; Tue, 10 Oct 2023 10:59:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qq8a3-00ER1u-2k;
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
Subject: [PATCH v1 2/3] regulator: fixed: add support for under-voltage IRQ
Date: Tue, 10 Oct 2023 10:59:05 +0200
Message-Id: <20231010085906.3440452-2-o.rempel@pengutronix.de>
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

Add interrupt support for under-voltage notification. This functionality
can be used on systems capable to detect under-voltage state and having
enough capacity to let the SoC do some emergency preparation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/fixed.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 55130efae9b8..493dd244e4f4 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -105,6 +105,35 @@ static int reg_is_enabled(struct regulator_dev *rdev)
 	return priv->enable_counter > 0;
 }
 
+static irqreturn_t reg_fixed_under_voltage_irq_handler(int irq, void *data)
+{
+	struct fixed_voltage_data *priv = data;
+	struct regulator_dev *rdev = priv->dev;
+
+	regulator_notifier_call_chain(rdev, REGULATOR_EVENT_UNDER_VOLTAGE, NULL);
+
+	return IRQ_HANDLED;
+}
+
+static int reg_fixed_get_irqs(struct device *dev,
+			      struct fixed_voltage_data *priv)
+{
+	const char *uv = "under-voltage";
+	int ret;
+
+	ret = fwnode_irq_get_byname(dev_fwnode(dev), "under-voltage");
+	/* This is optional IRQ. Ignore if not found */
+	if (ret < 0)
+		return 0;
+
+	ret = devm_request_threaded_irq(dev, ret, NULL,
+					reg_fixed_under_voltage_irq_handler,
+					IRQF_ONESHOT, uv, priv);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to request %s IRQ\n", uv);
+
+	return 0;
+}
 
 /**
  * of_get_fixed_voltage_config - extract fixed_voltage_config structure info
@@ -294,6 +323,10 @@ static int reg_fixed_voltage_probe(struct platform_device *pdev)
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


