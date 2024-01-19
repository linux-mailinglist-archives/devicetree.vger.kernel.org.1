Return-Path: <devicetree+bounces-33245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A642832A79
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 14:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03211281EE4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 13:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45BC55C09;
	Fri, 19 Jan 2024 13:25:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A06055789
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705670749; cv=none; b=TWsU+epc76R15k8tYwqhj0N03HpT8Aol4HW3AlxsDQDlRa9yKWE6EoQa12130Ua5pzUO9S+09SjnsN5AvQuM01+nFdW47az4cavqnwFoBT+kon7f9eBuelYu0JNlkVH2vtt1CqKm8aqH+iSKScg2Wb2A2GQqLHk++EMtgNnkin4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705670749; c=relaxed/simple;
	bh=yxObVGl9FlHXCDPkT1CCVeqiUamoD375a9LA8yEV5Ro=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mjf6x+Dc1O9EF77amS9c+L1yK1veWI2ySzl0e5fELlgQMnhlZg7q/n1OKpxLZUgcgzlV+mq60oX/s1+SPv8jVEu8IYtqyHnHatPnNgXxH9BQ/fzvwQafWhLJ+fTetsAC5feX8WQP5b6fEczsSOnS7dKmZwZAXZuhOU14AYFjZVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos7-00074F-C2; Fri, 19 Jan 2024 14:25:23 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-000viG-4z; Fri, 19 Jan 2024 14:25:22 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-00F97h-0G;
	Fri, 19 Jan 2024 14:25:22 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>
Subject: [RFC PATCH v1 1/7] dt-bindings: power: reset: add generic PSCR binding trackers
Date: Fri, 19 Jan 2024 14:25:15 +0100
Message-Id: <20240119132521.3609945-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119132521.3609945-1-o.rempel@pengutronix.de>
References: <20240119132521.3609945-1-o.rempel@pengutronix.de>
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

Add binding for Power State Change Reason (PSCR) subsystem

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/power/reset/pscr.yaml | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscr.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/pscr.yaml b/Documentation/devicetree/bindings/power/reset/pscr.yaml
new file mode 100644
index 000000000000..1ce973f3473c
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/pscr.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/state-change/pscr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Power State Change Reason (PSCR)
+
+maintainers:
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description: Binding for devices responsable to store reasons for power state
+  changes such as reboot and power-off. Reasons like unknown, under voltage,
+  and over temperature are captured for diagnostic or automatic recovery
+  purposes.
+
+properties:
+  $nodename:
+    pattern: "^pscr(@.*|-([0-9]|[1-9][0-9]+))?$"
+
+  pscr-unknown:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Value to indicate an unknown reason for the power state change.
+
+  pscr-under-voltage:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Value to indicate an under-voltage condition of a system critical
+      regulator as the reason for the power state change.
+
+  pscr-over-current:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Value to indicate an over-current condition of a system ctitical regulator
+      as the reason for the power state change.
+
+  pscr-regulator-failure:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Value to indicate an unknow, system ctitical regulator related failure
+      as the reason for the power state change.
+
+  pscr-over-temperature:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Value to indicate a system critical over-temperature condition as the
+      reason for the power state change.
+
+additionalProperties: true
+
+...
-- 
2.39.2


