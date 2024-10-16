Return-Path: <devicetree+bounces-112187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E48089A15E9
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 00:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3F66284829
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 22:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161EC1D3564;
	Wed, 16 Oct 2024 22:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="tWiMac/R"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA889F9C1
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 22:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729119178; cv=none; b=H5iiOuNpSA1cRJNkKpfL1NxvgJv5lFRaGgjcMTgurhv/h4K1DU1gHg8bfcjpSv6cdrznBwcO3ajcEBAAQlSK6GLsBou62WWY3eB6+H93wlHaaFFh8b+aC7Ayh2Q3D0w1mXRapYfyJtDHsJ/iXwzYNQxhgCQhzGXx7g1YovGOmIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729119178; c=relaxed/simple;
	bh=bMGzEDpf6O0xseBvFkZwc7mYrPVvLJllGooDm9p6k+I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eAr5MW5Sss3wKkIC9mrlXpXPbp/XMPCAI+isbA3KYLdWsjUZCE/xANvp+etvlTVG/aym9QE6BA9023eGRjN7fC3ZlEkS07+I8FQPardtEIk1R47PSgbgt6eXea6spR7IKlwLIT8iKlAAMSGY6JMdy2GD86NdqYL0IVVeoBnIT5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=tWiMac/R; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 61F1088C05;
	Thu, 17 Oct 2024 00:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1729119167;
	bh=qt6vK9kPSapUUvkHneFffnWCm70skCO5km1tzomR42E=;
	h=From:To:Cc:Subject:Date:From;
	b=tWiMac/RGKvJfCE6MYs6Otkl15e0hGQLVAG60OHnowcjz4Px9bj8Or9Ff0zqcrZo+
	 jysfNajMParkB42unPzWoksFgkRBvCvmHO6WMITFsKnJHN3LesnDrsygF3gmJsIDgp
	 jsna5GIqwvfGcSLjEbM2x2FM+khaX/lUPqf2ZNEbNFph4eZrMQoad9SczFEknMbG7h
	 J70ZNKl7GdykJt6jAutdr3luT8ltXjldieDFBWffgc8JyC5NUKyqkEAk68o+3AXjVU
	 G7xldwu8/9OukHBbzB/4EBFS+yqsd3923ixUf3wFftycYZ9NjeNgrspU/FMre6ZSas
	 Wb+teP9V/INEw==
From: Marek Vasut <marex@denx.de>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	kernel@dh-electronics.com
Subject: [PATCH v2] dt-bindings: regulator: lltc,ltc3676: convert to YAML
Date: Thu, 17 Oct 2024 00:52:17 +0200
Message-ID: <20241016225235.114635-1-marex@denx.de>
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
DT bindings to DT schema. Add missing interrupts: property as this
IC does have interrupt line and it is used in existing DTs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
V2: - Move unevaluatedProperties and additionalProperties just below type:object
    - Use DT schema to refer to the lltc,ltc3676.yaml file
    - Add RB from Krzysztof
---
 .../bindings/regulator/lltc,ltc3676.yaml      | 167 ++++++++++++++++++
 .../devicetree/bindings/regulator/ltc3676.txt |  94 ----------
 2 files changed, 167 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/ltc3676.txt

diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
new file mode 100644
index 0000000000000..f47eacf96cd67
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3676.yaml
@@ -0,0 +1,167 @@
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
+    additionalProperties: false
+    description: |
+      List of regulators provided by this controller, must be named
+      after their hardware counterparts (SW|LDO)[1-4].
+
+    patternProperties:
+      "^(sw[1-4]|ldo[24])$":
+        type: object
+        unevaluatedProperties: false
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
+    properties:
+      ldo1:
+        type: object
+        unevaluatedProperties: false
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
+      ldo3:
+        type: object
+        unevaluatedProperties: false
+        $ref: regulator.yaml#
+        description:
+          The LDO3 regulator is fixed to 1.8 V. See patternProperties
+          description above for the rest of the details.
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


