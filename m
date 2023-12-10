Return-Path: <devicetree+bounces-23593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3553180BB42
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 14:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEA36280DFB
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 13:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E959F9F5;
	Sun, 10 Dec 2023 13:48:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 019FCB3;
	Sun, 10 Dec 2023 05:48:07 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.04,265,1695654000"; 
   d="scan'208";a="185923349"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 10 Dec 2023 22:48:07 +0900
Received: from localhost.localdomain (unknown [10.226.92.40])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id D0AB44003EBC;
	Sun, 10 Dec 2023 22:48:01 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Support Opensource <support.opensource@diasemi.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Steve Twiss <stwiss.opensource@diasemi.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 8/8] dt-bindings: mfd: dlg,da9063: Convert da9062 to json-schema
Date: Sun, 10 Dec 2023 13:47:17 +0000
Message-Id: <20231210134717.94020-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231210134717.94020-1-biju.das.jz@bp.renesas.com>
References: <20231210134717.94020-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the da9062 PMIC device tree binding documentation to json-schema.

Document the missing gpio child node for da9062.

While at it, update description with link to product information and
example.

The missing child node with of_compatible defined in MFD_CELL_OF is
causing the below warning message:
da9062-gpio: Failed to locate of_node [id: -1]

So, make all child nodes with of_compatible defined in struct mfd_cell
as required property for da906{1,2} devices.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * Updated commit description
 * Dropped unnecessary ref from gpio child node.
 * Added gpio-hog pattern property
 * Moved gpio-controller,gpio-cells above child nodes
 * Sorted compatible in rtc child node.
 * Dropped status from example.
 * Updated the example.
v3->v4:
 * Split the thermal binding patch separate.
 * Updated the description.
v2->v3:
 * Fixed bot errors related to MAINTAINERS entry, invalid doc
   references and thermal examples by merging patch#4.
v2:
 * New patch
---
 .../bindings/input/dlg,da9062-onkey.yaml      |   3 +-
 .../devicetree/bindings/mfd/da9062.txt        | 124 ----------
 .../devicetree/bindings/mfd/dlg,da9063.yaml   | 215 +++++++++++++++++-
 .../bindings/thermal/dlg,da9062-thermal.yaml  |   2 +-
 4 files changed, 212 insertions(+), 132 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/da9062.txt

diff --git a/Documentation/devicetree/bindings/input/dlg,da9062-onkey.yaml b/Documentation/devicetree/bindings/input/dlg,da9062-onkey.yaml
index 757a522c102c..1480d95421e1 100644
--- a/Documentation/devicetree/bindings/input/dlg,da9062-onkey.yaml
+++ b/Documentation/devicetree/bindings/input/dlg,da9062-onkey.yaml
@@ -11,8 +11,7 @@ maintainers:
 
 description: |
   This module is part of the DA9061/DA9062/DA9063. For more details about entire
-  DA9062 and DA9061 chips see Documentation/devicetree/bindings/mfd/da9062.txt
-  For DA9063 see Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
+  DA906{1,2,3} chips see Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
 
   This module provides the KEY_POWER event.
 
diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
deleted file mode 100644
index c8a7f119ac84..000000000000
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ /dev/null
@@ -1,124 +0,0 @@
-* Dialog DA9062 Power Management Integrated Circuit (PMIC)
-
-Product information for the DA9062 and DA9061 devices can be found here:
-- https://www.dialog-semiconductor.com/products/da9062
-- https://www.dialog-semiconductor.com/products/da9061
-
-The DA9062 PMIC consists of:
-
-Device                   Supply Names    Description
-------                   ------------    -----------
-da9062-regulator        :               : LDOs & BUCKs
-da9062-rtc              :               : Real-Time Clock
-da9062-onkey            :               : On Key
-da9062-watchdog         :               : Watchdog Timer
-da9062-thermal          :               : Thermal
-da9062-gpio             :               : GPIOs
-
-The DA9061 PMIC consists of:
-
-Device                   Supply Names    Description
-------                   ------------    -----------
-da9062-regulator        :               : LDOs & BUCKs
-da9062-onkey            :               : On Key
-da9062-watchdog         :               : Watchdog Timer
-da9062-thermal          :               : Thermal
-
-======
-
-Required properties:
-
-- compatible : Should be
-    "dlg,da9062" for DA9062
-    "dlg,da9061" for DA9061
-- reg : Specifies the I2C slave address (this defaults to 0x58 but it can be
-  modified to match the chip's OTP settings).
-
-Optional properties:
-
-- gpio-controller : Marks the device as a gpio controller.
-- #gpio-cells     : Should be two. The first cell is the pin number and the
-                    second cell is used to specify the gpio polarity.
-
-See Documentation/devicetree/bindings/gpio/gpio.txt for further information on
-GPIO bindings.
-
-- interrupts : IRQ line information.
-- interrupt-controller
-
-See Documentation/devicetree/bindings/interrupt-controller/interrupts.txt for
-further information on IRQ bindings.
-
-Sub-nodes:
-
-- regulators : This node defines the settings for the LDOs and BUCKs.
-  The DA9062 regulators are bound using their names listed below:
-
-    buck1    : BUCK_1
-    buck2    : BUCK_2
-    buck3    : BUCK_3
-    buck4    : BUCK_4
-    ldo1     : LDO_1
-    ldo2     : LDO_2
-    ldo3     : LDO_3
-    ldo4     : LDO_4
-
-  The DA9061 regulators are bound using their names listed below:
-
-    buck1    : BUCK_1
-    buck2    : BUCK_2
-    buck3    : BUCK_3
-    ldo1     : LDO_1
-    ldo2     : LDO_2
-    ldo3     : LDO_3
-    ldo4     : LDO_4
-
-  The component follows the standard regulator framework and the bindings
-  details of individual regulator device can be found in:
-  Documentation/devicetree/bindings/regulator/regulator.txt
-
-  regulator-initial-mode may be specified for buck regulators using mode values
-  from include/dt-bindings/regulator/dlg,da9063-regulator.h.
-
-- rtc : This node defines settings required for the Real-Time Clock associated
-  with the DA9062. There are currently no entries in this binding, however
-  compatible = "dlg,da9062-rtc" should be added if a node is created.
-
-- onkey : See ../input/dlg,da9062-onkey.yaml
-
-- watchdog: See ../watchdog/dlg,da9062-watchdog.yaml
-
-- thermal : See ../thermal/dlg,da9062-thermal.yaml
-
-Example:
-
-	pmic0: da9062@58 {
-		compatible = "dlg,da9062";
-		reg = <0x58>;
-		interrupt-parent = <&gpio6>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
-		interrupt-controller;
-
-		rtc {
-			compatible = "dlg,da9062-rtc";
-		};
-
-		regulators {
-			DA9062_BUCK1: buck1 {
-				regulator-name = "BUCK1";
-				regulator-min-microvolt = <300000>;
-				regulator-max-microvolt = <1570000>;
-				regulator-min-microamp = <500000>;
-				regulator-max-microamp = <2000000>;
-				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
-				regulator-boot-on;
-			};
-			DA9062_LDO1: ldo1 {
-				regulator-name = "LDO_1";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <3600000>;
-				regulator-boot-on;
-			};
-		};
-	};
-
diff --git a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
index 676b4f2566ae..da741c999445 100644
--- a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
+++ b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mfd/dlg,da9063.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Dialog DA9063/DA9063L Power Management Integrated Circuit (PMIC)
+title: Dialog DA906{3L,3,2,1} Power Management Integrated Circuit (PMIC)
 
 maintainers:
   - Steve Twiss <stwiss.opensource@diasemi.com>
@@ -17,10 +17,17 @@ description: |
   moment where all voltage monitors are disabled. Next, as da9063 only supports
   UV *and* OV monitoring, both must be set to the same severity and value
   (0: disable, 1: enable).
+  Product information for the DA906{3L,3,2,1} devices can be found here:
+  - https://www.dialog-semiconductor.com/products/da9063l
+  - https://www.dialog-semiconductor.com/products/da9063
+  - https://www.dialog-semiconductor.com/products/da9062
+  - https://www.dialog-semiconductor.com/products/da9061
 
 properties:
   compatible:
     enum:
+      - dlg,da9061
+      - dlg,da9062
       - dlg,da9063
       - dlg,da9063l
 
@@ -35,6 +42,18 @@ properties:
   "#interrupt-cells":
     const: 2
 
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio:
+    type: object
+    additionalProperties: false
+    properties:
+      compatible:
+        const: dlg,da9062-gpio
+
   onkey:
     $ref: /schemas/input/dlg,da9062-onkey.yaml
 
@@ -42,7 +61,7 @@ properties:
     type: object
     additionalProperties: false
     patternProperties:
-      "^(ldo([1-9]|1[01])|bcore([1-2]|s-merged)|b(pro|mem|io|peri)|bmem-bio-merged)$":
+      "^(ldo([1-9]|1[01])|bcore([1-2]|s-merged)|b(pro|mem|io|peri)|bmem-bio-merged|buck[1-4])$":
         $ref: /schemas/regulator/regulator.yaml
         unevaluatedProperties: false
 
@@ -52,16 +71,85 @@ properties:
     unevaluatedProperties: false
     properties:
       compatible:
-        const: dlg,da9063-rtc
+        enum:
+          - dlg,da9062-rtc
+          - dlg,da9063-rtc
+
+  thermal:
+    $ref: /schemas/thermal/dlg,da9062-thermal.yaml
 
   watchdog:
     $ref: /schemas/watchdog/dlg,da9062-watchdog.yaml
 
+patternProperties:
+  "^(.+-hog(-[0-9]+)?)$":
+    type: object
+
+    required:
+      - gpio-hog
+
 required:
   - compatible
   - reg
-  - interrupts
-  - interrupt-controller
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - dlg,da9063
+              - dlg,da9063l
+    then:
+      properties:
+        gpio-controller: false
+        "#gpio-cells": false
+        gpio: false
+        regulators:
+          patternProperties:
+            "^buck[1-4]$": false
+        thermal: false
+      required:
+        - interrupts
+        - interrupt-controller
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - dlg,da9062
+    then:
+      properties:
+        regulators:
+          patternProperties:
+            "^(ldo([5-9]|10|11)|bcore([1-2]|s-merged)|b(pro|mem|io|peri)|bmem-bio-merged)$": false
+      required:
+        - gpio
+        - onkey
+        - rtc
+        - thermal
+        - watchdog
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - dlg,da9061
+    then:
+      properties:
+        gpio-controller: false
+        "#gpio-cells": false
+        gpio: false
+        regulators:
+          patternProperties:
+            "^(ldo([5-9]|10|11)|bcore([1-2]|s-merged)|b(pro|mem|io|peri)|bmem-bio-merged|buck4)$": false
+        rtc: false
+      required:
+        - onkey
+        - thermal
+        - watchdog
 
 additionalProperties: false
 
@@ -118,4 +206,121 @@ examples:
         };
       };
     };
+
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/dlg,da9063-regulator.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      pmic@58 {
+        compatible = "dlg,da9062";
+        reg = <0x58>;
+        gpio-controller;
+        #gpio-cells = <2>;
+
+        sd0-pwr-sel-hog {
+          gpio-hog;
+          gpios = <1 0>;
+          input;
+          line-name = "SD0_PWR_SEL";
+        };
+
+        sd1-pwr-sel-hog {
+          gpio-hog;
+          gpios = <2 0>;
+          input;
+          line-name = "SD1_PWR_SEL";
+        };
+
+        sw-et0-en-hog {
+          gpio-hog;
+          gpios = <3 0>;
+          input;
+          line-name = "SW_ET0_EN#";
+        };
+
+        pmic-good-hog {
+          gpio-hog;
+          gpios = <4 0>;
+          output-high;
+          line-name = "PMIC_PGOOD";
+        };
+
+        gpio {
+          compatible = "dlg,da9062-gpio";
+        };
+
+        onkey {
+          compatible = "dlg,da9062-onkey";
+        };
+
+        regulators {
+          buck1 {
+            regulator-name = "vdd_arm";
+            regulator-min-microvolt = <925000>;
+            regulator-max-microvolt = <1380000>;
+            regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
+            regulator-always-on;
+          };
+          buck2 {
+            regulator-name = "vdd_soc";
+            regulator-min-microvolt = <1150000>;
+            regulator-max-microvolt = <1380000>;
+            regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
+            regulator-always-on;
+          };
+          buck3 {
+            regulator-name = "vdd_ddr3";
+            regulator-min-microvolt = <1500000>;
+            regulator-max-microvolt = <1500000>;
+            regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
+            regulator-always-on;
+          };
+          buck4 {
+            regulator-name = "vdd_eth";
+            regulator-min-microvolt = <1200000>;
+            regulator-max-microvolt = <1200000>;
+            regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
+            regulator-always-on;
+          };
+          ldo1 {
+            regulator-name = "vdd_snvs";
+            regulator-min-microvolt = <3000000>;
+            regulator-max-microvolt = <3000000>;
+            regulator-always-on;
+          };
+          ldo2 {
+            regulator-name = "vdd_high";
+            regulator-min-microvolt = <3000000>;
+            regulator-max-microvolt = <3000000>;
+            regulator-always-on;
+          };
+          ldo3 {
+            regulator-name = "vdd_eth_io";
+            regulator-min-microvolt = <2500000>;
+            regulator-max-microvolt = <2500000>;
+          };
+          ldo4 {
+            regulator-name = "vdd_emmc";
+            regulator-min-microvolt = <1800000>;
+            regulator-max-microvolt = <1800000>;
+            regulator-always-on;
+          };
+        };
+
+        rtc {
+          compatible = "dlg,da9062-rtc";
+        };
+
+        thermal {
+          compatible = "dlg,da9062-thermal";
+        };
+
+        watchdog {
+          compatible = "dlg,da9062-watchdog";
+          dlg,use-sw-pm;
+        };
+      };
+    };
 ...
diff --git a/Documentation/devicetree/bindings/thermal/dlg,da9062-thermal.yaml b/Documentation/devicetree/bindings/thermal/dlg,da9062-thermal.yaml
index 206635f74850..e8b2cac41084 100644
--- a/Documentation/devicetree/bindings/thermal/dlg,da9062-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/dlg,da9062-thermal.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description: |
   This module is part of the DA9061/DA9062. For more details about entire
-  DA9062 and DA9061 chips see Documentation/devicetree/bindings/mfd/da9062.txt
+  DA906{1,2} chips see Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
 
   Junction temperature thermal module uses an interrupt signal to identify
   high THERMAL_TRIP_HOT temperatures for the PMIC device.
-- 
2.39.2


