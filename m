Return-Path: <devicetree+bounces-268493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC/LKgovn2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E84F19B6D1
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B42F3183FC5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19E53E8C4D;
	Wed, 25 Feb 2026 17:16:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54F63E95AB
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039770; cv=none; b=AWAnNCVzlyLkHFMnpRqwAet2HWQWefS277Nogx64U7ljSv5iBCQ2kxw7vVnrdXV3krUEqYWs9VLLmIsfLPkWULp3ciNQuFuhl2J4dAskaOXfwYoENR4OYd5qdaMZ+0oGBjRjLe1OOfp1F4TRAvCkmGfzez/xQJgxa1lsto1ZoZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039770; c=relaxed/simple;
	bh=QAPDDrkGu+gBYm1VJtxlKarRL2Bu+IkX6q4u8fGCoX0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A/FdVQC8gMUWrWqOhBmU+pxfVAdqLpec16MHSItvWWYaBwLxvtxqWj9BnwppD3AsK919Xrpkusc+oGORZ9u2XngY/L5EpSDKA4UBXRcePZaGTnu6O59cbhUGMu1hm4QmrPucVG7/+VJrZb7X6KzcqPzj38gPIyi5TFlXH7kr080=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUF-0003C6-S1; Wed, 25 Feb 2026 18:15:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUD-002b7v-28;
	Wed, 25 Feb 2026 18:15:47 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1vvIUE-00000008JDa-3ulC;
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
Subject: [PATCH v1 1/8] dt-bindings: mfd: add NXP MC33978/MC34978 MSDI
Date: Wed, 25 Feb 2026 18:15:34 +0100
Message-ID: <20260225171545.1980385-2-o.rempel@pengutronix.de>
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
	TAGGED_FROM(0.00)[bounces-268493-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.968];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,pengutronix.de:mid,pengutronix.de:email,0.0.0.0:email,protonic.nl:email]
X-Rspamd-Queue-Id: 0E84F19B6D1
X-Rspamd-Action: no action

Add device tree binding documentation for the NXP MC33978 and MC34978
Multiple Switch Detection Interface (MSDI) devices.

These ICs monitor up to 22 mechanical switch contacts in automotive and
industrial environments. They provide configurable wetting currents to
break through contact oxidation and feature extensive hardware protection
against thermal overload and voltage transients (load dumps/brown-outs).

The device interfaces via SPI and is modeled as an MFD due to its discrete
internal functional blocks:
- pinctrl: Manages the 22 switch inputs (SG/SP pins).
- hwmon: Exposes critical hardware faults (OT, OV, UV) and static
  voltage/temperature thresholds.
- mux: Controls the 24-to-1 analog multiplexer to route pin voltages,
  internal temperature, or battery voltage to an external SoC ADC.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/mfd/nxp,mc33978.yaml  | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml

diff --git a/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
new file mode 100644
index 000000000000..85720f389509
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/nxp,mc33978.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/nxp,mc33978.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP MC33978/MC34978 Multiple Switch Detection Interface
+
+maintainers:
+  - David Jander <david@protonic.nl>
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+
+description: |
+  The MC33978 and MC34978 are Multiple Switch Detection Interface (MSDI)
+  devices with 22 switch inputs, integrated fault detection, and analog
+  multiplexer (AMUX) for voltage/temperature monitoring.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nxp,mc33978
+      - nxp,mc34978
+
+  reg:
+    maxItems: 1
+    description: SPI chip select number
+
+  spi-max-frequency:
+    maximum: 8000000
+    description: Maximum SPI clock frequency (up to 8 MHz)
+
+  interrupts:
+    maxItems: 1
+    description: |
+      INT_B pin interrupt. Active-low, indicates pin state changes or
+      fault conditions.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+    description: |
+      First cell is the IRQ number (0-21 for pins, 22 for faults).
+      Second cell is the trigger type (IRQ_TYPE_* from interrupt-controller.h).
+
+  vddq-supply:
+    description: Digital supply voltage
+
+  vbatp-supply:
+    description: Battery/power supply
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        msdi: mc33978@0 {
+            compatible = "nxp,mc33978";
+            reg = <0>;
+            spi-max-frequency = <4000000>;
+
+            interrupt-parent = <&gpiog>;
+            interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-controller;
+            #interrupt-cells = <2>;
+
+            vddq-supply = <&reg_3v3>;
+            vbatp-supply = <&reg_12v>;
+        };
+    };
-- 
2.47.3


