Return-Path: <devicetree+bounces-11687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B72357D6595
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:46:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64EA5281C67
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9265D1D55B;
	Wed, 25 Oct 2023 08:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8D62D63A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:46:29 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6D29189
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:46:27 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWq-0002CG-9l; Wed, 25 Oct 2023 10:46:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-0048Wk-Ec; Wed, 25 Oct 2023 10:46:15 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-00CyTR-1C;
	Wed, 25 Oct 2023 10:46:15 +0200
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
Subject: [PATCH v3 7/7] regulator: Implement uv_survival_time for handling under-voltage events
Date: Wed, 25 Oct 2023 10:46:14 +0200
Message-Id: <20231025084614.3092295-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231025084614.3092295-1-o.rempel@pengutronix.de>
References: <20231025084614.3092295-1-o.rempel@pengutronix.de>
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
 drivers/regulator/of_regulator.c  | 6 ++++++
 include/linux/regulator/machine.h | 6 ++++++
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 903c384f25e3..bb864969fc79 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -5077,7 +5077,7 @@ int regulator_notifier_call_chain(struct regulator_dev *rdev,
 	if (rdev->constraints->system_critical &&
 	    event == REGULATOR_EVENT_UNDER_VOLTAGE)
 		hw_protection_shutdown("System critical voltage drop detected",
-				       REGULATOR_DEF_EMERG_SHUTDWN_TMO);
+				       rdev->constraints->uv_survival_time);
 
 	_notifier_call_chain(rdev, event, data);
 	return NOTIFY_DONE;
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 3bdd6f1919a4..6463b455ebc5 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -175,6 +175,12 @@ static int of_get_regulation_constraints(struct device *dev,
 	if (!ret)
 		constraints->enable_time = pval;
 
+	ret = of_property_read_u32(np, "regulator-uv-survival-time-ms", &pval);
+	if (!ret)
+		constraints->uv_survival_time = pval;
+	else
+		constraints->uv_survival_time = REGULATOR_DEF_EMERG_SHUTDWN_TMO;
+
 	constraints->soft_start = of_property_read_bool(np,
 					"regulator-soft-start");
 	ret = of_property_read_u32(np, "regulator-active-discharge", &pval);
diff --git a/include/linux/regulator/machine.h b/include/linux/regulator/machine.h
index 7332ee36e9d6..daddec83d887 100644
--- a/include/linux/regulator/machine.h
+++ b/include/linux/regulator/machine.h
@@ -158,6 +158,11 @@ struct notification_limit {
  *		      regulator_active_discharge values are used for
  *		      initialisation.
  * @enable_time: Turn-on time of the rails (unit: microseconds)
+ * @uv_survival_time: Survival time post a critical under-voltage event. Time
+ *                    the system can operate before the on-board capacitors
+ *                    fail, providing a window for necessary actions or
+ *                    preparations to be taken before power loss.
+ *                    (unit: microseconds)
  */
 struct regulation_constraints {
 
@@ -209,6 +214,7 @@ struct regulation_constraints {
 	unsigned int settling_time_up;
 	unsigned int settling_time_down;
 	unsigned int enable_time;
+	unsigned int uv_survival_time;
 
 	unsigned int active_discharge;
 
-- 
2.39.2


