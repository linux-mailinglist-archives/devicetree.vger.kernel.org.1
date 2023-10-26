Return-Path: <devicetree+bounces-12208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC997D8522
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:48:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7413A28202E
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 012D82EB10;
	Thu, 26 Oct 2023 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1A2EB06
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:48:44 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7F411B5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:48:41 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1es-0005Zt-2b; Thu, 26 Oct 2023 16:48:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-004Qq9-Ke; Thu, 26 Oct 2023 16:48:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-00H3YE-1s;
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
Subject: [PATCH v4 5/5] regulator: Implement uv_survival_time for handling under-voltage events
Date: Thu, 26 Oct 2023 16:48:24 +0200
Message-Id: <20231026144824.4065145-6-o.rempel@pengutronix.de>
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

Add 'uv_survival_time' field to regulation_constraints for specifying
survival time post critical under-voltage event. Update the regulator
notifier call chain and Device Tree property parsing to use this new
field, allowing a configurable timeout before emergency shutdown.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/regulator/core.c          | 2 +-
 drivers/regulator/of_regulator.c  | 7 +++++++
 include/linux/regulator/machine.h | 8 ++++++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index a072f721f288..a6cb84af989e 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -5094,7 +5094,7 @@ static void regulator_handle_critical(struct regulator_dev *rdev,
 		return;
 
 	hw_protection_shutdown(reason,
-			       REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS);
+			       rdev->constraints->uv_less_critical_window_ms);
 }
 
 /**
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 3bdd6f1919a4..03afc160fc72 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -175,6 +175,13 @@ static int of_get_regulation_constraints(struct device *dev,
 	if (!ret)
 		constraints->enable_time = pval;
 
+	ret = of_property_read_u32(np, "regulator-uv-survival-time-ms", &pval);
+	if (!ret)
+		constraints->uv_less_critical_window_ms = pval;
+	else
+		constraints->uv_less_critical_window_ms =
+				REGULATOR_DEF_UV_LESS_CRITICAL_WINDOW_MS;
+
 	constraints->soft_start = of_property_read_bool(np,
 					"regulator-soft-start");
 	ret = of_property_read_u32(np, "regulator-active-discharge", &pval);
diff --git a/include/linux/regulator/machine.h b/include/linux/regulator/machine.h
index e0ddfb5593c9..0cd76d264727 100644
--- a/include/linux/regulator/machine.h
+++ b/include/linux/regulator/machine.h
@@ -162,6 +162,13 @@ struct notification_limit {
  *		      regulator_active_discharge values are used for
  *		      initialisation.
  * @enable_time: Turn-on time of the rails (unit: microseconds)
+ * @uv_less_critical_window_ms: Specifies the time window (in milliseconds)
+ *                              following a critical under-voltage (UV) event
+ *                              during which less critical actions can be
+ *                              safely carried out by the system (for example
+ *                              logging). After this time window more critical
+ *                              actions should be done (for example prevent
+ *                              HW damage).
  */
 struct regulation_constraints {
 
@@ -213,6 +220,7 @@ struct regulation_constraints {
 	unsigned int settling_time_up;
 	unsigned int settling_time_down;
 	unsigned int enable_time;
+	unsigned int uv_less_critical_window_ms;
 
 	unsigned int active_discharge;
 
-- 
2.39.2


