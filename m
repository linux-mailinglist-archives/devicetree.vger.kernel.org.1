Return-Path: <devicetree+bounces-132406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6929F6F41
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 22:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74ED61891517
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 21:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215671FC7C3;
	Wed, 18 Dec 2024 21:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="dDfwtd2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F191F63E7
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 21:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734556088; cv=none; b=IsdlrHA8e11dauMRUq1/z4ZJVZVrQ8MaGglhUeybe3EaCq0GaXhSKm4JfTUxo5BjM5Y5fGoOtVonzu/DMXUhWnEBVwc/e6X8uRqVUisA0veJepXGzaaVDzhggo5myxQK2onTvhZ//ESsmEBtRHQQcUO9b40f08oeLtmnM5GfUYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734556088; c=relaxed/simple;
	bh=dDZRgbeJvhB1AZdOZNuDjYv4G+6rxHpqQmzXfMnHlng=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OqGWwRyZyEonDXEFrVDQIJuwUZdh3sdYtPVuTbWNPiKCf6wkP7JxBc17WIsyIryK91DboFpeHBx2ARDVIee38AhZwoOSU7WrFIter5O173ohGyQkRd0m8khoqajO7dz1ajYPILFTXcmLebp/kaZjiguFw0UzLPKVcgtyZf8k03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=dDfwtd2a; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 202412182107560e4c4b7bc3a0cf9842
        for <devicetree@vger.kernel.org>;
        Wed, 18 Dec 2024 22:07:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=5Jh+57Y1c2R3e6lTZjw2mUMUSyN78LBTkzkZJHLCVKo=;
 b=dDfwtd2akSGbLVnS1cmqbt662uzBnV2VHJ5G6zOvvEGa435X5q5xP9EWV5f0o4V0DS/UDz
 wsE+qtScyg1L114hh7yll3OcQSqOoTX7ZkUCf7qiFQ5kxM4Db/btQsWaVhg4SkMLJmuXTKbQ
 Qhs10aNwSaSt01EObNh3vW+4WmvhJj6e2aMOo8O60OE5tJ9lRwS57A1lRlmmWre17lbLufot
 Vih4RndT1RC+gbRJJNgIjH3/g5+WL8YiqhSTEGhw5fVRtqiiFznE3b0lSSd6IXz0q6j/7po/
 ZXOe5GesP+1MASCX4i79Dh80/D+Auv2FiOnhMc3reRPuMTcDf/1j3xog==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>,
	devicetree@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-leds@vger.kernel.org
Subject: [PATCH v3] dt-bindings: leds: Convert LP8860 into YAML format
Date: Wed, 18 Dec 2024 22:06:30 +0100
Message-ID: <20241218210631.72997-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Convert Texas Instruments' LP8860 LED driver bindings into YAML format.

Acked-by: Andrew Davis <afd@ti.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
Changelog:
v3: made reg, #address-cells/#size-cells optional
v2: patternProperties: ^led@[0]$ -> ^led(@[0-3])?$

 .../devicetree/bindings/leds/leds-lp8860.txt  | 50 -----------
 .../devicetree/bindings/leds/ti,lp8860.yaml   | 90 +++++++++++++++++++
 2 files changed, 90 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-lp8860.txt
 create mode 100644 Documentation/devicetree/bindings/leds/ti,lp8860.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-lp8860.txt b/Documentation/devicetree/bindings/leds/leds-lp8860.txt
deleted file mode 100644
index 8bb25749a3da..000000000000
--- a/Documentation/devicetree/bindings/leds/leds-lp8860.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-* Texas Instruments - lp8860 4-Channel LED Driver
-
-The LP8860-Q1 is an high-efficiency LED
-driver with boost controller. It has 4 high-precision
-current sinks that can be controlled by a PWM input
-signal, a SPI/I2C master, or both.
-
-Required properties:
-	- compatible :
-		"ti,lp8860"
-	- reg : I2C slave address
-	- #address-cells : 1
-	- #size-cells : 0
-
-Optional properties:
-	- enable-gpios : gpio pin to enable (active high)/disable the device.
-	- vled-supply : LED supply
-
-Required child properties:
-	- reg : 0
-
-Optional child properties:
-	- function : see Documentation/devicetree/bindings/leds/common.txt
-	- color : see Documentation/devicetree/bindings/leds/common.txt
-	- label : see Documentation/devicetree/bindings/leds/common.txt (deprecated)
-	- linux,default-trigger :
-	   see Documentation/devicetree/bindings/leds/common.txt
-
-Example:
-
-#include <dt-bindings/leds/common.h>
-
-led-controller@2d {
-	compatible = "ti,lp8860";
-	#address-cells = <1>;
-	#size-cells = <0>;
-	reg = <0x2d>;
-	enable-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
-	vled-supply = <&vbatt>;
-
-	led@0 {
-		reg = <0>;
-		function = LED_FUNCTION_BACKLIGHT;
-		color = <LED_COLOR_ID_WHITE>;
-		linux,default-trigger = "backlight";
-	};
-}
-
-For more product information please see the link below:
-https://www.ti.com/product/lp8860-q1
diff --git a/Documentation/devicetree/bindings/leds/ti,lp8860.yaml b/Documentation/devicetree/bindings/leds/ti,lp8860.yaml
new file mode 100644
index 000000000000..0ee357b02661
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/ti,lp8860.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/ti,lp8860.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments - lp8860 4-Channel LED Driver
+
+maintainers:
+  - Andrew Davis <afd@ti.com>
+
+description: |
+  The LP8860-Q1 is an high-efficiency LED driver with boost controller.
+  It has 4 high-precision current sinks that can be controlled by a PWM input
+  signal, a SPI/I2C master, or both.
+
+  For more product information please see the link below:
+    https://www.ti.com/product/lp8860-q1
+
+properties:
+  compatible:
+    const: ti,lp8860
+
+  reg:
+    maxItems: 1
+    description: I2C slave address
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO pin to enable (active high) / disable the device
+
+  vled-supply:
+    description: LED supply
+
+patternProperties:
+  "^led(@[0-3])?$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          Index of the LED.
+        maxItems: 1
+
+      function: true
+      color: true
+      label: true
+      linux,default-trigger: true
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
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        led-controller@2d {
+            compatible = "ti,lp8860";
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reg = <0x2d>;
+            enable-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+            vled-supply = <&vbatt>;
+
+            led@0 {
+                reg = <0>;
+                function = LED_FUNCTION_BACKLIGHT;
+                color = <LED_COLOR_ID_WHITE>;
+                linux,default-trigger = "backlight";
+            };
+        };
+    };
+
+...
-- 
2.47.1


