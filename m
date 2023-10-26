Return-Path: <devicetree+bounces-12212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EA47D8526
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C6DC282099
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103982EB1C;
	Thu, 26 Oct 2023 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63312EB0F
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:48:45 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091AA1AA
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:48:44 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1es-0005Zq-2D; Thu, 26 Oct 2023 16:48:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-004Qq4-JD; Thu, 26 Oct 2023 16:48:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-00H3Xj-1g;
	Thu, 26 Oct 2023 16:48:25 +0200
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
Subject: [PATCH v4 2/5] regulator: Introduce handling for system-critical under-voltage events
Date: Thu, 26 Oct 2023 16:48:21 +0200
Message-Id: <20231026144824.4065145-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231026144824.4065145-1-o.rempel@pengutronix.de>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
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

Handle under-voltage events for crucial regulators to maintain system
stability and avoid issues during power drops.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/core.c          | 38 +++++++++++++++++++++++++++++++
 drivers/regulator/of_regulator.c  |  2 ++
 include/linux/regulator/machine.h | 10 ++++++++
 3 files changed, 50 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 3137e40fcd3e..a072f721f288 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -19,6 +19,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/of.h>
+#include <linux/reboot.h>
 #include <linux/regmap.h>
 #include <linux/regulator/of_regulator.h>
 #include <linux/regulator/consumer.h>
@@ -5061,6 +5062,41 @@ void regulator_bulk_free(int num_consumers,
 }
 EXPORT_SYMBOL_GPL(regulator_bulk_free);
 
+/**
+ * regulator_handle_critical - Handle events for system-critical regulators.
+ * @rdev: The regulator device.
+ * @event: The event being handled.
+ *
+ * This function handles critical events such as under-voltage, over-current,
+ * and unknown errors for regulators deemed system-critical. On detecting such
+ * events, it triggers a hardware protection shutdown with a defined timeout.
+ */
+static void regulator_handle_critical(struct regulator_dev *rdev,
+				      unsigned long event)
+{
+	const char *reason = NULL;
+
+	if (!rdev->constraints->system_critical)
+		return;
+
+	switch (event) {
+	case REGULATOR_EVENT_UNDER_VOLTAGE:
+		reason = "System critical regulator: voltage drop detected";
+		break;
+	case REGULATOR_EVENT_OVER_CURRENT:
+		reason = "System critical regulator: over-current detected";
+		break;
+	case REGULATOR_EVENT_FAIL:
+		reason = "System critical regulator: unknown error";
+	}
+
+	if (!reason)
+		return;
+
+	hw_protection_shutdown(reason,
+			       REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS);
+}
+
 /**
  * regulator_notifier_call_chain - call regulator event notifier
  * @rdev: regulator source
@@ -5073,6 +5109,8 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
 int regulator_notifier_call_chain(struct regulator_dev *rdev,
 				  unsigned long event, void *data)
 {
+	regulator_handle_critical(rdev, event);
+
 	_notifier_call_chain(rdev, event, data);
 	return NOTIFY_DONE;
 
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 1b65e5e4e40f..3bdd6f1919a4 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -131,6 +131,8 @@ static int of_get_regulation_constraints(struct device *dev,
 		constraints->valid_ops_mask |= REGULATOR_CHANGE_STATUS;
 
 	constraints->pull_down = of_property_read_bool(np, "regulator-pull-down");
+	constraints->system_critical = of_property_read_bool(np,
+						"system-critical-regulator");
 
 	if (of_property_read_bool(np, "regulator-allow-bypass"))
 		constraints->valid_ops_mask |= REGULATOR_CHANGE_BYPASS;
diff --git a/include/linux/regulator/machine.h b/include/linux/regulator/machine.h
index 621b7f4a3639..e0ddfb5593c9 100644
--- a/include/linux/regulator/machine.h
+++ b/include/linux/regulator/machine.h
@@ -49,6 +49,13 @@ struct regulator;
 #define DISABLE_IN_SUSPEND	1
 #define ENABLE_IN_SUSPEND	2
 
+/*
+ * Default time window (in milliseconds) following a critical under-voltage
+ * event during which less critical actions can be safely carried out by the
+ * system.
+ */
+#define REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS	10
+
 /* Regulator active discharge flags */
 enum regulator_active_discharge {
 	REGULATOR_ACTIVE_DISCHARGE_DEFAULT,
@@ -127,6 +134,8 @@ struct notification_limit {
  * @ramp_disable: Disable ramp delay when initialising or when setting voltage.
  * @soft_start: Enable soft start so that voltage ramps slowly.
  * @pull_down: Enable pull down when regulator is disabled.
+ * @system_critical: Set if the regulator is critical to system stability or
+ *                   functionality.
  * @over_current_protection: Auto disable on over current event.
  *
  * @over_current_detection: Configure over current limits.
@@ -214,6 +223,7 @@ struct regulation_constraints {
 	unsigned ramp_disable:1; /* disable ramp delay */
 	unsigned soft_start:1;	/* ramp voltage slowly */
 	unsigned pull_down:1;	/* pull down resistor when regulator off */
+	unsigned system_critical:1;	/* critical to system stability */
 	unsigned over_current_protection:1; /* auto disable on over current */
 	unsigned over_current_detection:1; /* notify on over current */
 	unsigned over_voltage_detection:1; /* notify on over voltage */
-- 
2.39.2


