Return-Path: <devicetree+bounces-268495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHHwMB8vn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 386AE19B6F3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DB2D3194845
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B793E9F77;
	Wed, 25 Feb 2026 17:16:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669173E95AD
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039771; cv=none; b=SisQA8O6liL1Z1XA9/qbHyw00aQh8aZqMnOo7Tdjf3XhYzLmaLWW8XRVq9vmqPO6WCrmq2HS7Zy8Xg/1QU4PImHKisR7C1/Qmvt6k+o0c+YO9tE97NHCn6o4XAv6zbpVRge4xsGL4MWkD2FLeYGw04KoDriVpy3KYoMns+zO4Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039771; c=relaxed/simple;
	bh=Z4CSQJ9iua7F24rhgOgP3bHK4M7tJcg6iv9kF/O6Y34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oUr7greuOnpLpaIEw5MiV+2EB7KBsbcBH1+tDSaaiec9kftLxxUdTBtkCIr+SQaYjo4L25Tgm0V/nH9s6uil9ZhfcW7uGIgj9j/JXd2GMA2qjWy12OsapYOdOYJSz3L+LCGVAPaSO2Q1pVnfFFc3sNUlZTwTDZt4nWJQF1WUUEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUF-0003C8-S2; Wed, 25 Feb 2026 18:15:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUD-002b7x-2J;
	Wed, 25 Feb 2026 18:15:47 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUE-00000008JDu-489x;
	Wed, 25 Feb 2026 18:15:46 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Linus Walleij <linusw@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: [PATCH v1 3/8] dt-bindings: pinctrl: add NXP MC33978/MC34978 pinctrl
Date: Wed, 25 Feb 2026 18:15:36 +0100
Message-ID: <20260225171545.1980385-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225171545.1980385-1-o.rempel@pengutronix.de>
References: <20260225171545.1980385-1-o.rempel@pengutronix.de>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268495-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.970];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid,pengutronix.de:email,devicetree.org:url,protonic.nl:email]
X-Rspamd-Queue-Id: 386AE19B6F3
X-Rspamd-Action: no action

Add device tree binding documentation for the pin control and GPIO block
of the NXP MC33978/MC34978 Multiple Switch Detection Interface (MSDI).

This block manages 22 switch detection inputs (14 Switch-to-Ground,
8 Programmable) and acts as a GPIO controller.

Additionally, it supports pin configuration for hardware-specific features
required for long-term contact maintenance in harsh environments, such as
adjusting the continuous/pulsed wetting current to penetrate oxide layers
on mechanical switches.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/mfd/nxp,mc33978.yaml  | 12 ++++
 .../bindings/pinctrl/nxp,mc33978-pinctrl.yaml | 66 +++++++++++++++++++
 2 files changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/nxp,mc33978-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
index 85720f389509..5e8ab2cff685 100644
--- a/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
+++ b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
@@ -52,6 +52,12 @@ properties:
   vbatp-supply:
     description: Battery/power supply
 
+  pinctrl:
+    type: object
+    $ref: /schemas/pinctrl/nxp,mc33978-pinctrl.yaml#
+    description: |
+      Pinctrl and GPIO controller child node for the 22 switch inputs.
+
 required:
   - compatible
   - reg
@@ -82,5 +88,11 @@ examples:
 
             vddq-supply = <&reg_3v3>;
             vbatp-supply = <&reg_12v>;
+
+            pinctrl {
+                compatible = "nxp,mc33978-pinctrl";
+                gpio-controller;
+                #gpio-cells = <2>;
+            };
         };
     };
diff --git a/Documentation/devicetree/bindings/pinctrl/nxp,mc33978-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/nxp,mc33978-pinctrl.yaml
new file mode 100644
index 000000000000..4eeb70da6752
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/nxp,mc33978-pinctrl.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/nxp,mc33978-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP MC33978/MC34978 Pinctrl/GPIO Driver
+
+maintainers:
+  - David Jander <david@protonic.nl>
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description: |
+  Pin control and GPIO driver for the MC33978/MC34978 MSDI device.
+
+  Pin numbering:
+  - Pins 0-13: SG0-SG13 (Switch-to-Ground inputs)
+  - Pins 14-21: SP0-SP7 (Programmable inputs, can be SG or SB)
+
+properties:
+  compatible:
+    enum:
+      - nxp,mc33978-pinctrl
+      - nxp,mc34978-pinctrl
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    const: 2
+
+  ngpios:
+    const: 22
+
+patternProperties:
+  "-grp$":
+    type: object
+    $ref: pincfg-node.yaml#
+    additionalProperties: false
+    description: |
+      Pin configuration subnodes.
+    properties:
+      pins: true
+      bias-pull-up: true
+      bias-pull-down: true
+      bias-high-impedance: true
+
+required:
+  - compatible
+  - gpio-controller
+  - '#gpio-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pinctrl {
+        compatible = "nxp,mc33978-pinctrl";
+        gpio-controller;
+        #gpio-cells = <2>;
+        ngpios = <22>;
+
+        door-grp {
+            pins = "sg0";
+            bias-high-impedance;
+        };
+    };
-- 
2.47.3


