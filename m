Return-Path: <devicetree+bounces-148889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17236A3DA9D
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34A1F3BFF6E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A231F9406;
	Thu, 20 Feb 2025 12:58:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180431F8BCC
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740056317; cv=none; b=jDQh2FTD/Wf/mLoLYOg2M50lazrHmYGEToO47ijv4w446ffqcSljD30lgX3/MfLXvjVOcFM7/fDOMuZGs2RtVmClgvogYrtUbnmVnnwR7r/rO4g/+GeOop3mE2uoLtZ4h7jMFtc3vPW4gg5aWNksdD8nHRC2xjWhPjs2MsH3j7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740056317; c=relaxed/simple;
	bh=e1Tx75YpR/a9qarhgSskZSmW2Axl9rBq1IVbb5q0piw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F/28EDTzBZ3rtznuFoX792qy2phDy+0QAGUxfUq0h1ugjwj2t2fV8w+SAAHttmFyO843KzgGPC6sczIanluxAVjgsi+Qhddw16maH+PZZwm9jNbQOXCbbPck0lEsVkJvL2ItFGIAKVdZWFBNVnUqylp+x9ncgxeqLDA4FnIKJ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tl68I-0004lJ-Ct; Thu, 20 Feb 2025 13:58:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 20 Feb 2025 13:57:56 +0100
Subject: [PATCH 1/2] dt-bindings: leds: add lp5860 LED controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-v6-14-topic-ti-lp5860-v1-1-42874bdc7513@pengutronix.de>
References: <20250220-v6-14-topic-ti-lp5860-v1-0-42874bdc7513@pengutronix.de>
In-Reply-To: <20250220-v6-14-topic-ti-lp5860-v1-0-42874bdc7513@pengutronix.de>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Steffen Trumtrar <kernel@pengutronix.de>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The lp5860 is a LED matrix driver with 18 constant current sinks and 11
scan switches for 198 LED dots:
  * Supply range from 2.7 V to 5.5 V
  * 0.1mA - 50mA per current sink
  * 1MHz I2C and 12MHz SPI control interface
  * 8-bit analog dimming
  * 8/16-bit PWM dimming
  * individual ON and OFF control for each LED dot
  * globat 3-bit Maximum Current setting for all LED dots
  * individual LED dot open/short detection

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../devicetree/bindings/leds/leds-lp5860.yaml      | 112 +++++++++++++++++++++
 1 file changed, 112 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp5860.yaml b/Documentation/devicetree/bindings/leds/leds-lp5860.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a4e39fd843f3f260ee9c1103e2cb27dcb230608c
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-lp5860.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/leds-lp5860.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LED driver for LP5860 RGB LED from Texas Instruments.
+
+maintainers:
+  - Steffen Trumtrar <kernel@pengutronix.de>
+
+description: |
+  The LP5860 is multi-channel, I2C and SPI RGB LED Driver that can group RGB LEDs
+  into a LED group or control them individually.
+
+  For more product information please see the link below:
+  https://www.ti.com/lit/ds/symlink/lp5860.pdf
+
+properties:
+  compatible:
+    enum:
+      - ti,lp5860
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 12000000
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^multi-led@[0-9a-f]$':
+    type: object
+    $ref: leds-class-multicolor.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minItems: 1
+        maxItems: 12
+        description:
+          This property denotes the LED module number(s) that is used
+          for the child node.
+
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      "^led@[0-9a-f]+$":
+        type: object
+        $ref: common.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            maxItems: 1
+
+        required:
+          - reg
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/leds/common.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@0 {
+            compatible = "ti,lp5860";
+            reg = <0x0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            multi-led@0 {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                reg = <0x0>;
+                color = <LED_COLOR_ID_RGB>;
+
+                led@0 {
+                     reg = <0x0>;
+                     color = <LED_COLOR_ID_RED>;
+                };
+
+                led@1 {
+                     reg = <0x1>;
+                     color = <LED_COLOR_ID_GREEN>;
+                };
+
+                led@2 {
+                     reg = <0x2>;
+                     color = <LED_COLOR_ID_BLUE>;
+                };
+            };
+        };
+    };

-- 
2.47.1


