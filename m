Return-Path: <devicetree+bounces-34687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B94D83A9A3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14E52285428
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2434B65BDA;
	Wed, 24 Jan 2024 12:22:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14FA65BBB
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706098954; cv=none; b=OVS7pMcuBUSzqJm+x35/yEZ6P4HVGWNNZZcArFBSFprhJ6EoGFyNCHBcpdBmPOArzgLRGLSSvho7ctRkzDwo02++KZzcqch2ryehVQW9tPthWt/3jIbHeRsINCvRzdsgq1ZGFudKlqGKq3pdC+ymt0SSiCREvgX+67Eaogv73Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706098954; c=relaxed/simple;
	bh=IQtFllAeAbEnjjWov46KcbIiLiSA2S5/+KtiKXOriws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dePVwK8P1s0uxI/s+MZJqn2uNzKtKUuJdBztX1V/xilk6GQ2oKZd/puhi3yVtmMsTbaLLWPxNpYqYGYnRDoHQNADYagznTXyUn4eLalPZhV7T0Ny3rq2pCtigRxawNJgva0ZSDevbI2b3N7qq4zHKqctLDNvK6JQ4zFrrWixV3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGd-0007o6-1B; Wed, 24 Jan 2024 13:22:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGb-0023Zc-Vt; Wed, 24 Jan 2024 13:22:05 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGb-003414-2x;
	Wed, 24 Jan 2024 13:22:05 +0100
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
Subject: [PATCH v2 2/8] dt-bindings: power: reset: add generic PSCRR binding trackers
Date: Wed, 24 Jan 2024 13:21:58 +0100
Message-Id: <20240124122204.730370-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240124122204.730370-1-o.rempel@pengutronix.de>
References: <20240124122204.730370-1-o.rempel@pengutronix.de>
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

Add binding for Power State Change Reason Recording (PSCRR) subsystem

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../bindings/power/reset/pscrr.yaml           | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscrr.yaml

diff --git a/Documentation/devicetree/bindings/power/reset/pscrr.yaml b/Documentation/devicetree/bindings/power/reset/pscrr.yaml
new file mode 100644
index 000000000000..c8738b4930fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/pscrr.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/pscrr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Power State Change Reason (PSCR)
+
+maintainers:
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description: Binding for devices responsible to store reasons for power state
+  changes such as reboot and power-off. Reasons like unknown, under voltage,
+  and over temperature are captured for diagnostic or automatic recovery
+  purposes.
+
+properties:
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
+      Value to indicate an unknown, system ctitical regulator related failure
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


