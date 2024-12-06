Return-Path: <devicetree+bounces-128156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 983969E7A07
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 736AF166F38
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 20:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35D51C54AD;
	Fri,  6 Dec 2024 20:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="PgwGkuAi"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4439A1C549F
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 20:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733517154; cv=none; b=hW0dOHn0PGPCNSJhgT/8nyRBtlSQFZXQDYR2rn4O+7CtE+xqM8uAkMbPy0B5/D7Uu31E6RA6pgtzvnDhpMfZFZuA/ucjGGPqEYpDVqxV9Z+q+Q/pZJl8ZcVLt2mtdmSO1kYBcC1EbMoTBNEBAwGcFG8pySagVzJk9xZcbb4pgcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733517154; c=relaxed/simple;
	bh=rDQGdBjL/LuGTsCVqABXJNWOZrISXtQOpqQ1esqPAMk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YfUWmfi1n2RoIwZqe4mskhE3cLo2kt1qWj3aqOPSkpf4mOFWK7OFWuXeCdX36XPFtpht1upeV/UAFXf+45HXo079A0SwDbV7kApX08Ja4Jzfrea0awiHaZNK1qKhjs1r2L/z627a41q3CdTRgp7m17nSQmrzoJwiEJ1Sa2Lqo8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=PgwGkuAi; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 202412062032273403ef3419a4ea8efc
        for <devicetree@vger.kernel.org>;
        Fri, 06 Dec 2024 21:32:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=srnTp6v2ssU8L9UplTSduQLBKlRJzEYhUVuERVKEkWc=;
 b=PgwGkuAi4Y1LVCqMAQT3irndpnG+9Op6Lz7Ra6Xbpdpi3TdiLOja8j3Qreo2YqohhMdQpt
 rFLPa3QBtBLKkkeg9fEaltj7c68J4/bpy9CpA+bUElGlHQuYxkSUWrpgawDH7qPN0skyjo5P
 klJo955sxautsHPwkr5xuVMfY2aIP74W48pjb1ceoKNj/eqzxamOIfBBAfVdHE9VXpLC2QiP
 XkbWEY9kCVvJAya73MpKBUaE21JLNNonikK+rR2H3wEchG768qtwcp8RiGEeJb5aFwlOtgGD
 I7AFTCvnsciPo5eaLyfIlxsOdL7kBHmkhMgEwtJBJH4E2uy9f9GDj1cw==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Andrew Davis <afd@ti.com>,
	devicetree@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-leds@vger.kernel.org
Subject: [PATCH] dt-bindings: leds: Convert LP8860 into YAML format
Date: Fri,  6 Dec 2024 21:31:00 +0100
Message-ID: <20241206203103.1122459-1-alexander.sverdlin@siemens.com>
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

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
The patch is now separated from the LP8864 series:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241206170717.1090206-2-alexander.sverdlin@siemens.com/

 .../devicetree/bindings/leds/leds-lp8860.txt  | 50 ----------
 .../devicetree/bindings/leds/ti,lp8860.yaml   | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-lp8860.txt
 create mode 100644 Documentation/devicetree/bindings/leds/ti,lp8860.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-lp8860.txt b/Documentation/devicetree/bindings/leds/leds-lp8860.txt
deleted file mode 100644
index 8bb25749a3da3..0000000000000
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
index 0000000000000..62f133006fd0e
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/ti,lp8860.yaml
@@ -0,0 +1,95 @@
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
+  "^led@[0]$":
+    type: object
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          Index of the LED.
+        const: 0
+
+      function: true
+      color: true
+      label: true
+      linux,default-trigger: true
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
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


