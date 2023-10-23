Return-Path: <devicetree+bounces-10917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2607D3781
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FACC1C20860
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9E2C18E1B;
	Mon, 23 Oct 2023 13:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Bf7hu9t8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B030314AA6
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:14:25 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744E1C4;
	Mon, 23 Oct 2023 06:14:22 -0700 (PDT)
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E0AC26606F51;
	Mon, 23 Oct 2023 14:14:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698066861;
	bh=pj3VhyfFH6ErSwBdbhZsBJKn1hmYCYEaTcjA/2LT/4g=;
	h=From:To:Cc:Subject:Date:From;
	b=Bf7hu9t8ds8F3W5z5d9lLLMukJmnnj0UBlYLzZaquz4PldMp80lXdxA2f+OFgIxF7
	 QlCHR3uDawan1u+7Zhnsv52R66TxmULRndtqx0foRoWGoeeqmYFmH/sUx9w/3KhYNJ
	 XiNJvLzFWR5AKxr2sQebqbHQ2WNj6NneH11K6+jw0L1TaMnHzDIwR3X6W84UeYd9g5
	 /wqfCYMzz0yMazh2wpVjO85ukLOEAi6aVJZ/3UZo04ucMsltTmY1KMqsGH4hMP38Gx
	 zPcrZdOONFRtguh/ArPszK4DGHwozxYi2G13HFPhVu+dr/spvObKUdO0YvnfwbV70U
	 fe1zgm87hcz9Q==
Received: by mercury (Postfix, from userid 1000)
	id 7CBA3106052D; Mon, 23 Oct 2023 15:14:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4] dt-bindings: mfd: max8925: Convert to DT schema format
Date: Mon, 23 Oct 2023 15:12:20 +0200
Message-ID: <20231023131409.1796451-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the binding to DT schema format.

The sub-functions of this MFD device do not have their own compatible
string and are thus described directly in the MFD binding document
after being converted to YAML.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Hi Lee,

As mentioned in previous version, please merge through your tree. No need
for an immutable branch, since further fixes to the binding will go through
your tree.

Changes since PATCHv3:
 * https://lore.kernel.org/all/20230930202743.214631-1-sebastian.reichel@collabora.com/
 * Collected Acked-by from Rob Herring
 * Removed "power:" from patch subject
 * Fix mail address from Lee Jones

Changes since PATCHv2:
 * https://lore.kernel.org/all/20230922233142.1479677-1-sebastian.reichel@collabora.com/
 * Add unevaluatedProperties: false to regulators subnode (Krzysztof Kozlowski)
 * Use "pmic" for nodename (Krzysztof Kozlowski)

Changes since PATCHv1:
 * https://lore.kernel.org/all/20210413153407.GA1707829@robh.at.kernel.org/
 * Update License to GPL OR BSD
 * Add missing type references pointed out by Rob
---
 .../leds/backlight/max8925-backlight.txt      |  10 --
 .../devicetree/bindings/mfd/max8925.txt       |  64 --------
 .../bindings/mfd/maxim,max8925.yaml           | 145 ++++++++++++++++++
 .../bindings/power/supply/max8925_battery.txt |  18 ---
 4 files changed, 145 insertions(+), 92 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt
 delete mode 100644 Documentation/devicetree/bindings/mfd/max8925.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max8925.yaml
 delete mode 100644 Documentation/devicetree/bindings/power/supply/max8925_battery.txt

diff --git a/Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt b/Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt
deleted file mode 100644
index b4cffdaa4137..000000000000
--- a/Documentation/devicetree/bindings/leds/backlight/max8925-backlight.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-88pm860x-backlight bindings
-
-Optional properties:
-  - maxim,max8925-dual-string: whether support dual string
-
-Example:
-
-	backlights {
-		maxim,max8925-dual-string = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/mfd/max8925.txt b/Documentation/devicetree/bindings/mfd/max8925.txt
deleted file mode 100644
index 4f0dc6638e5e..000000000000
--- a/Documentation/devicetree/bindings/mfd/max8925.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-* Maxim max8925 Power Management IC
-
-Required parent device properties:
-- compatible : "maxim,max8925"
-- reg : the I2C slave address for the max8925 chip
-- interrupts : IRQ line for the max8925 chip
-- interrupt-controller: describes the max8925 as an interrupt
-  controller (has its own domain)
-- #interrupt-cells : should be 1.
-	- The cell is the max8925 local IRQ number
-
-Optional parent device properties:
-- maxim,tsc-irq: there are 2 IRQ lines for max8925, one is indicated in
-  interrupts property, the other is indicated here.
-
-max8925 consists of a large and varied group of sub-devices:
-
-Device			 Supply Names	 Description
-------			 ------------	 -----------
-max8925-onkey		:		: On key
-max8925-rtc		:		: RTC
-max8925-regulator	:		: Regulators
-max8925-backlight	:		: Backlight
-max8925-touch		:		: Touchscreen
-max8925-power		:		: Charger
-
-Example:
-
-	pmic: max8925@3c {
-		compatible = "maxim,max8925";
-		reg = <0x3c>;
-		interrupts = <1>;
-		interrupt-parent = <&intcmux4>;
-		interrupt-controller;
-		#interrupt-cells = <1>;
-		maxim,tsc-irq = <0>;
-
-		regulators {
-			SDV1 {
-				regulator-min-microvolt = <637500>;
-				regulator-max-microvolt = <1425000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			LDO1 {
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <3900000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-		};
-		backlight {
-			maxim,max8925-dual-string = <0>;
-		};
-		charger {
-			batt-detect = <0>;
-			topoff-threshold = <1>;
-			fast-charge = <7>;
-			no-temp-support = <0>;
-			no-insert-detect = <0>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mfd/maxim,max8925.yaml b/Documentation/devicetree/bindings/mfd/maxim,max8925.yaml
new file mode 100644
index 000000000000..86dd810851ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max8925.yaml
@@ -0,0 +1,145 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max8925.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MAX8925 PMIC from Maxim Integrated.
+
+maintainers:
+  - Lee Jones <lee@kernel.org>
+
+properties:
+  compatible:
+    const: maxim,max8925
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 1
+    description:
+      The cell is the IRQ number
+
+  maxim,tsc-irq:
+    description: second interrupt from max8925
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  regulators:
+    type: object
+
+    patternProperties:
+      "^SDV[1-3]$|^LDO[1-9]$|^LDO1[0-9]$|^LDO20$":
+        description: regulator configuration for SDV1-3 and LDO1-20
+        $ref: /schemas/regulator/regulator.yaml
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+  backlight:
+    type: object
+    properties:
+      maxim,max8925-dual-string:
+        description: set to 1 to support dual string
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        default: 0
+
+    additionalProperties: false
+
+  charger:
+    type: object
+    properties:
+      batt-detect:
+        description: set to 1 if battery detection via ID pin is supported
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        default: 0
+
+      topoff-threshold:
+        description: charging current in topoff mode, configures bits 5-6 in CHG_CNTL1
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 3
+        default: 0
+
+      fast-charge:
+        description: set charging current in fast mode, configures bits 0-3 in CHG_CNTL1
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 7
+        default: 0
+
+      no-temp-support:
+        description: set to 1 if temperature sensing is not supported
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        default: 0
+
+      no-insert-detect:
+        description: set to 1 if AC detection is not supported
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        default: 0
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - "#interrupt-cells"
+  - regulators
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@3c {
+            compatible = "maxim,max8925";
+            reg = <0x3c>;
+            interrupts = <1>;
+            interrupt-parent = <&intcmux4>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
+            maxim,tsc-irq = <0>;
+
+            regulators {
+                SDV1 {
+                    regulator-min-microvolt = <637500>;
+                    regulator-max-microvolt = <1425000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                LDO1 {
+                    regulator-min-microvolt = <750000>;
+                    regulator-max-microvolt = <3900000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+            };
+
+            backlight {
+                maxim,max8925-dual-string = <0>;
+            };
+
+            charger {
+                batt-detect = <0>;
+                topoff-threshold = <1>;
+                fast-charge = <7>;
+                no-temp-support = <0>;
+                no-insert-detect = <0>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/power/supply/max8925_battery.txt b/Documentation/devicetree/bindings/power/supply/max8925_battery.txt
deleted file mode 100644
index d7e3e0c0f71d..000000000000
--- a/Documentation/devicetree/bindings/power/supply/max8925_battery.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-max8925-battery bindings
-~~~~~~~~~~~~~~~~
-
-Optional properties :
- - batt-detect: whether support battery detect
- - topoff-threshold: set charging current in topoff mode
- - fast-charge: set charging current in fast mode
- - no-temp-support: whether support temperature protection detect
- - no-insert-detect: whether support insert detect
-
-Example:
-	charger {
-		batt-detect = <0>;
-		topoff-threshold = <1>;
-		fast-charge = <7>;
-		no-temp-support = <0>;
-		no-insert-detect = <0>;
-	};
-- 
2.42.0


