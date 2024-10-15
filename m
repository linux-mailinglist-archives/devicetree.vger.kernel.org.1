Return-Path: <devicetree+bounces-111704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 621F899FB9D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 00:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22430288BD2
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545681D63C6;
	Tue, 15 Oct 2024 22:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="D/qt+ToT"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89531B0F32
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 22:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729032244; cv=none; b=qINTgDXzY7d206JRwn5GT8bQBU9JCq05AM+ChGqLiFa58rLuqhpFSv3o5qbjdD2Vqctkoh4XzwzrnmbjSxmSDYuJgt1HwIxDCYTvRFxcQtR6nxaJebOjJy4NNPECQIFo7UL+Tar+fMY3KpiHECDYLv9pURum2T3DzspsII03jfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729032244; c=relaxed/simple;
	bh=HRdx4WGv0IZR5n4PMa/Fp1NF4fdfPawGM6gpme7W9KQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BcqShMRCjMpuIa9SyXURlkAV0gMRN+vaq8I+w1BsGGtk/SUPS2eQ4yOT04UwBqz3NbGOThs7cAwo/AvHMWHT4xrmZMzOP3DAokIA2rLGL3ZHEHdDgVK74or4qwg60uARxN9ohSkz8CYdrRsJJKj0DDw/xQgXmc0ivx3Saw+f6Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=D/qt+ToT; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D72958899C;
	Wed, 16 Oct 2024 00:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729032240;
	bh=ZErQuzrfKMGy66ijcZFDRjY1WpupiFjIFdWT0ECNhzE=;
	h=From:To:Cc:Subject:Date:From;
	b=D/qt+ToT74Kox0sE7aeVo89tLttZz3B83cJSH3Y7jVG3xfZMhPwOynLui1BZUDaQ6
	 2UvWH9Eq2NvazAy/aJrifCSCDpcFx5ItiAR4lJFswlaRpxI5GPbvi0+RUWW4o01dU2
	 zqAqVZksyhNYra1TN5q7kCCUjItCZ75a9PU+Pt7PxQ0PKsp+r0N2MOtVOC54yvjihA
	 k1U/uPz54OVsP03aj8gtj1lxFZV+wE2tMIVRz6D6AG2m2S9pSbYoMxrccbOKGQVfp4
	 IP/gYJ6a7CEsmyKlKS6k5HemhdQ1YzuSuYNcCghQ7f6pYdjmsBOQvucKcRM+oiGnkQ
	 N4AStseffcOqw==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	kernel@dh-electronics.com
Subject: [PATCH] dt-bindings: regulator: lltc,ltc3676: convert to YAML
Date: Wed, 16 Oct 2024 00:42:51 +0200
Message-ID: <20241015224343.94302-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Convert Linear Technology LTC3676 8-output I2C voltage regulator IC
DT bindings to YAML DT. Add missing interrupts: property as this IC
does have interrupt line and it is used in existing DTs.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
---
 .../bindings/regulator/lltc,ltc3676.yaml      | 171 ++++++++++++++++++
 .../devicetree/bindings/regulator/ltc3676.txt |  94 ----------
 2 files changed, 171 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/ltc3676.txt

diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
new file mode 100644
index 0000000000000..ec9ce856a944d
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
@@ -0,0 +1,171 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/lltc,ltc3676.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Linear Technology LTC3676 8-output regulators
+
+maintainers:
+  - Tim Harvey <tharvey@gateworks.com>
+
+description: |
+  LTC3676 contains eight regulators, 4 switching SW1..SW4 and four LDO1..4 .
+
+properties:
+  compatible:
+    const: lltc,ltc3676
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description: |
+      List of regulators provided by this controller, must be named
+      after their hardware counterparts (SW|LDO)[1-4].
+
+    patternProperties:
+      "^(sw[1-4]|ldo[24])$":
+        type: object
+        $ref: regulator.yaml#
+        description:
+          Properties for single SW or LDO regulator. Regulators SW1..SW4 can
+          regulate the feedback reference from 412.5mV to 800mV in 12.5 mV
+          steps. The output voltage thus ranges between 0.4125 * (1 + R1/R2) V
+          and 0.8 * (1 + R1/R2) V.
+          Regulators LDO1, LDO2, LDO4 have a fixed 0.725 V reference and thus
+          output 0.725 * (1 + R1/R2) V.
+          The LDO1 standby regulator can not be disabled and thus should have
+          the regulator-always-on property set.
+
+        properties:
+          lltc,fb-voltage-divider:
+            description:
+              An array of two integers containing the resistor values
+              R1 and R2 of the feedback voltage divider in ohms.
+            $ref: /schemas/types.yaml#/definitions/uint32-array
+            minItems: 2
+            maxItems: 2
+
+        required:
+          - lltc,fb-voltage-divider
+
+        unevaluatedProperties: false
+
+    properties:
+      ldo1:
+        type: object
+        $ref: regulator.yaml#
+        description:
+          The LDO1 standby regulator can not be disabled and thus should
+          have the regulator-always-on property set. See patternProperties
+          description above for the rest of the details.
+
+        properties:
+          lltc,fb-voltage-divider:
+            description:
+              An array of two integers containing the resistor values
+              R1 and R2 of the feedback voltage divider in ohms.
+            $ref: /schemas/types.yaml#/definitions/uint32-array
+            minItems: 2
+            maxItems: 2
+
+        required:
+          - lltc,fb-voltage-divider
+          - regulator-always-on
+
+        unevaluatedProperties: false
+
+      ldo3:
+        type: object
+        $ref: regulator.yaml#
+        description:
+          The LDO3 regulator is fixed to 1.8 V. See patternProperties
+          description above for the rest of the details.
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
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
+            compatible = "lltc,ltc3676";
+            reg = <0x3c>;
+
+            regulators {
+                sw1_reg: sw1 {
+                    regulator-min-microvolt = <674400>;
+                    regulator-max-microvolt = <1308000>;
+                    lltc,fb-voltage-divider = <127000 200000>;
+                    regulator-ramp-delay = <7000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                sw2_reg: sw2 {
+                    regulator-min-microvolt = <1033310>;
+                    regulator-max-microvolt = <200400>;
+                    lltc,fb-voltage-divider = <301000 200000>;
+                    regulator-ramp-delay = <7000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                sw3_reg: sw3 {
+                    regulator-min-microvolt = <674400>;
+                    regulator-max-microvolt = <130800>;
+                    lltc,fb-voltage-divider = <127000 200000>;
+                    regulator-ramp-delay = <7000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                sw4_reg: sw4 {
+                    regulator-min-microvolt = <868310>;
+                    regulator-max-microvolt = <168400>;
+                    lltc,fb-voltage-divider = <221000 200000>;
+                    regulator-ramp-delay = <7000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                ldo2_reg: ldo2 {
+                    regulator-min-microvolt = <2490375>;
+                    regulator-max-microvolt = <2490375>;
+                    lltc,fb-voltage-divider = <487000 200000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+
+                ldo3_reg: ldo3 {
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-boot-on;
+                };
+
+                ldo4_reg: ldo4 {
+                    regulator-min-microvolt = <3023250>;
+                    regulator-max-microvolt = <3023250>;
+                    lltc,fb-voltage-divider = <634000 200000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/regulator/ltc3676.txt b/Documentation/devicetree/bindings/regulator/ltc3676.txt
deleted file mode 100644
index d4eb366ce18ce..0000000000000
--- a/Documentation/devicetree/bindings/regulator/ltc3676.txt
+++ /dev/null
@@ -1,94 +0,0 @@
-Linear Technology LTC3676 8-output regulators
-
-Required properties:
-- compatible: "lltc,ltc3676"
-- reg: I2C slave address
-
-Required child node:
-- regulators: Contains eight regulator child nodes sw1, sw2, sw3, sw4,
-  ldo1, ldo2, ldo3, and ldo4, specifying the initialization data as
-  documented in Documentation/devicetree/bindings/regulator/regulator.txt.
-
-Each regulator is defined using the standard binding for regulators. The
-nodes for sw1, sw2, sw3, sw4, ldo1, ldo2 and ldo4 additionally need to specify
-the resistor values of their external feedback voltage dividers:
-
-Required properties (not on ldo3):
-- lltc,fb-voltage-divider: An array of two integers containing the resistor
-  values R1 and R2 of the feedback voltage divider in ohms.
-
-Regulators sw1, sw2, sw3, sw4 can regulate the feedback reference from:
-412.5mV to 800mV in 12.5 mV steps. The output voltage thus ranges between
-0.4125 * (1 + R1/R2) V and 0.8 * (1 + R1/R2) V.
-
-Regulators ldo1, ldo2, and ldo4 have a fixed 0.725 V reference and thus output
-0.725 * (1 + R1/R2) V. The ldo3 regulator is fixed to 1.8 V.  The ldo1 standby
-regulator can not be disabled and thus should have the regulator-always-on
-property set.
-
-Example:
-
-	ltc3676: pmic@3c {
-		compatible = "lltc,ltc3676";
-		reg = <0x3c>;
-
-		regulators {
-			sw1_reg: sw1 {
-				regulator-min-microvolt = <674400>;
-				regulator-max-microvolt = <1308000>;
-				lltc,fb-voltage-divider = <127000 200000>;
-				regulator-ramp-delay = <7000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			sw2_reg: sw2 {
-				regulator-min-microvolt = <1033310>;
-				regulator-max-microvolt = <200400>;
-				lltc,fb-voltage-divider = <301000 200000>;
-				regulator-ramp-delay = <7000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			sw3_reg: sw3 {
-				regulator-min-microvolt = <674400>;
-				regulator-max-microvolt = <130800>;
-				lltc,fb-voltage-divider = <127000 200000>;
-				regulator-ramp-delay = <7000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			sw4_reg: sw4 {
-				regulator-min-microvolt = <868310>;
-				regulator-max-microvolt = <168400>;
-				lltc,fb-voltage-divider = <221000 200000>;
-				regulator-ramp-delay = <7000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2_reg: ldo2 {
-				regulator-min-microvolt = <2490375>;
-				regulator-max-microvolt = <2490375>;
-				lltc,fb-voltage-divider = <487000 200000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3_reg: ldo3 {
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-			};
-
-			ldo4_reg: ldo4 {
-				regulator-min-microvolt = <3023250>;
-				regulator-max-microvolt = <3023250>;
-				lltc,fb-voltage-divider = <634000 200000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
-- 
2.45.2


