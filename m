Return-Path: <devicetree+bounces-215763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A3FB52970
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:00:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA49D682075
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A380827145C;
	Thu, 11 Sep 2025 07:00:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923C326FDBD
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757574002; cv=none; b=gjn3jEPnhc/qmslf8omioMp3bE68TBsQILJg9Jn0NM6ZwTwNpZO29FaY0IBjyIj0f8Cc8ztzgcqJKSmdqE0gR5ktdq9rZITX6bgaQQp8HDtJJ6kRgzyWp17AKQWCmgYtYqzNF5a7JkeqQzqbkk7ypnUjt0HphlunzaxQ1+m8LTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757574002; c=relaxed/simple;
	bh=ikmvF5McPKvbvKcbMDQxO1YadbWImTCIb9/ZX2RJXiI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GsKDQTHQRzbvH8bBmnywUTHUpD0g3BdjDyDIOhQTmKj9HwFFxeu2zv342EPXUPPRGDfSIA0P5BLusXYOn4/alTV/YBSlcbcMwzlIb//QPWC67prGT5ZoYScX2b1VK7lAx/Uw+MsTVaMWof62s3yy6PKSaRM+o4EcTYLxNv+QXa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uwbHb-0002uj-LN; Thu, 11 Sep 2025 08:59:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 11 Sep 2025 08:59:31 +0200
Subject: [PATCH v3 1/3] dt-bindings: leds: add lp5860 LED controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-v6-14-topic-ti-lp5860-v3-1-390738ef9d71@pengutronix.de>
References: <20250911-v6-14-topic-ti-lp5860-v3-0-390738ef9d71@pengutronix.de>
In-Reply-To: <20250911-v6-14-topic-ti-lp5860-v3-0-390738ef9d71@pengutronix.de>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Steffen Trumtrar <kernel@pengutronix.de>, Pavel Machek <pavel@kernel.org>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Steffen Trumtrar <s.trumtrar@pengutronix.de>
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
 .../devicetree/bindings/leds/leds-lp5860.yaml      | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-lp5860.yaml b/Documentation/devicetree/bindings/leds/leds-lp5860.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1ccba48541595eb85c8accc7e6514b33482c5f4d
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/leds-lp5860.yaml
@@ -0,0 +1,111 @@
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
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - ti,lp5860
+
+  reg:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^multi-led@[0-9a-f]+$':
+    type: object
+    $ref: leds-class-multicolor.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 198
+        description:
+          This property denotes the LED module number that is used
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
+unevaluatedProperties: false
+
+examples:
+  - |
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
2.49.0


