Return-Path: <devicetree+bounces-36307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA84840784
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3F931C242EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2815D657BC;
	Mon, 29 Jan 2024 13:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="t6V/vxxr"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B8B657BA
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706536459; cv=none; b=AwIbIkesoMo2HUJSvnOyMMc/lBIwuoxPRSXCgQ9lXbCwPeMqFXlPjpxva+NmbE3aiI/Ied8eG2c9oeJTlJsvGRE6f8M+QnSIP8K39b2P6/H48+7+KA3notOG7PZuLq6xSDcnXlLJM7giCc3ULwN0/JmOAuhLcUDvRm8Whg2ID1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706536459; c=relaxed/simple;
	bh=7vZFCTV71fslLgsh9lvnMFlwl390CgTSt4QA/svTQ78=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pzQiFt8BGfeE0krrR0Xc6muOw2AhxFBgxObzsYISQCEu3Zz+vKJTJb2Ldy6PWp/0Qu1lqUkLGdkpAAAPPgvGuhfPieAkvH0zct9/WnVVHyd703CfWGv7wy/l1WluoqDeQZW1EQtGeoq9IOGWkVAOvoCA9OJVpEQLvWboe9849Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=t6V/vxxr; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1706536457; x=1738072457;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7vZFCTV71fslLgsh9lvnMFlwl390CgTSt4QA/svTQ78=;
  b=t6V/vxxrnX3ebMvLN1xeMJ/IlvRivzcv44hWzwyQ+fpp4o7MGMlUVZhc
   pya+jl55KgrH7j3wi1KA+li4Dz5QZ+WYnYTkDAdqLZ2ql1GYyesfJYiJK
   qdm4EiG3oxp4C9El2AUrdr9b7fIqnUk6ZIXuOou3DE+9Z7hy0Fd8kGCCf
   PLlX84rnv8fuUDPApHopoMyuREEY1ljeKw2+jLxd/AQTm+as4EURVtG/s
   kmSH4UkDQNpsiICkoq4oSUDaKa3TNh7x/XlBiRrZTkE1qfnGFsJ3irZ32
   9cIrL7bsB1XP58oFfuooBjKW9A6ApzyElPBuvpm7G+Wj6pPiga9xSp4hx
   w==;
X-CSE-ConnectionGUID: s7N4nxqNSBiXdknRFVZ/YA==
X-CSE-MsgGUID: MCNEYjhAS8mgb8MX4at4Qw==
X-IronPort-AV: E=Sophos;i="6.05,227,1701154800"; 
   d="scan'208";a="246170047"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Jan 2024 06:54:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 06:53:45 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 06:53:43 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
	<conor+dt@kernel.org>, <claudiu.beznea@tuxon.dev>, <lgirdwood@gmail.com>,
	<broonie@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	Andrei Simion <andrei.simion@microchip.com>
Subject: [PATCH v2] regulator: dt-bindings: microchip,mcp16502: convert to YAML
Date: Mon, 29 Jan 2024 15:53:36 +0200
Message-ID: <20240129135336.98197-1-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Convert devicetree binding mcp16502-regulator.txt to YAML format.

Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
---
Changes v1 -> v2:
- reverse subject prefixes
- line break after file "description:"
- drop description for reg
- drop regulator-name
- add regulator-initial-mode
- unevaluatedProperties just after $ref: regulator.yaml#
- additionalProperties  just before "required"
- node names generic in example
- use 4 spaces for example indentation
---
 .../bindings/regulator/mcp16502-regulator.txt | 144 --------------
 .../regulator/microchip,mcp16502.yaml         | 182 ++++++++++++++++++
 2 files changed, 182 insertions(+), 144 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/mcp16502-regulator.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/microchip,mcp16502.yaml

diff --git a/Documentation/devicetree/bindings/regulator/mcp16502-regulator.txt b/Documentation/devicetree/bindings/regulator/mcp16502-regulator.txt
deleted file mode 100644
index 451cc4e86b01..000000000000
--- a/Documentation/devicetree/bindings/regulator/mcp16502-regulator.txt
+++ /dev/null
@@ -1,144 +0,0 @@
-MCP16502 PMIC
-
-Required properties:
-- compatible: "microchip,mcp16502"
-- reg: I2C slave address
-- lpm-gpios: GPIO for LPM pin. Note that this GPIO *must* remain high during
-	     suspend-to-ram, keeping the PMIC into HIBERNATE mode; this
-	     property is optional;
-- regulators: A node that houses a sub-node for each regulator within
-              the device. Each sub-node is identified using the node's
-              name. The content of each sub-node is defined by the
-              standard binding for regulators; see regulator.txt.
-
-Regulators of MCP16502 PMIC:
-1) VDD_IO	- Buck (1.2 - 3.7 V)
-2) VDD_DDR	- Buck (0.6 - 1.85 V)
-3) VDD_CORE	- Buck (0.6 - 1.85 V)
-4) VDD_OTHER	- BUCK (0.6 - 1.85 V)
-5) LDO1		- LDO  (1.2 - 3.7 V)
-6) LDO2		- LDO  (1.2 - 3.7 V)
-
-Regulator modes:
-2 - FPWM: higher precision, higher consumption
-4 - AutoPFM: lower precision, lower consumption
-
-Each regulator is defined using the standard binding for regulators.
-
-Example:
-
-mcp16502@5b {
-	compatible = "microchip,mcp16502";
-	reg = <0x5b>;
-	status = "okay";
-	lpm-gpios = <&pioBU 7 GPIO_ACTIVE_HIGH>;
-
-	regulators {
-		VDD_IO {
-			regulator-name = "VDD_IO";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <3700000>;
-			regulator-initial-mode = <2>;
-			regulator-allowed-modes = <2>, <4>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-				regulator-mode = <4>;
-			};
-
-			regulator-state-mem {
-				regulator-off-in-suspend;
-				regulator-mode = <4>;
-			};
-		};
-
-		VDD_DDR {
-			regulator-name = "VDD_DDR";
-			regulator-min-microvolt = <600000>;
-			regulator-max-microvolt = <1850000>;
-			regulator-initial-mode = <2>;
-			regulator-allowed-modes = <2>, <4>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-				regulator-mode = <4>;
-			};
-
-			regulator-state-mem {
-				regulator-on-in-suspend;
-				regulator-mode = <4>;
-			};
-		};
-
-		VDD_CORE {
-			regulator-name = "VDD_CORE";
-			regulator-min-microvolt = <600000>;
-			regulator-max-microvolt = <1850000>;
-			regulator-initial-mode = <2>;
-			regulator-allowed-modes = <2>, <4>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-				regulator-mode = <4>;
-			};
-
-			regulator-state-mem {
-				regulator-off-in-suspend;
-				regulator-mode = <4>;
-			};
-		};
-
-		VDD_OTHER {
-			regulator-name = "VDD_OTHER";
-			regulator-min-microvolt = <600000>;
-			regulator-max-microvolt = <1850000>;
-			regulator-initial-mode = <2>;
-			regulator-allowed-modes = <2>, <4>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-				regulator-mode = <4>;
-			};
-
-			regulator-state-mem {
-				regulator-off-in-suspend;
-				regulator-mode = <4>;
-			};
-		};
-
-		LDO1 {
-			regulator-name = "LDO1";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <3700000>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-			};
-
-			regulator-state-mem {
-				regulator-off-in-suspend;
-			};
-		};
-
-		LDO2 {
-			regulator-name = "LDO2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <3700000>;
-			regulator-always-on;
-
-			regulator-state-standby {
-				regulator-on-in-suspend;
-			};
-
-			regulator-state-mem {
-				regulator-off-in-suspend;
-			};
-		};
-
-	};
-};
diff --git a/Documentation/devicetree/bindings/regulator/microchip,mcp16502.yaml b/Documentation/devicetree/bindings/regulator/microchip,mcp16502.yaml
new file mode 100644
index 000000000000..708f922764fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/microchip,mcp16502.yaml
@@ -0,0 +1,182 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/microchip,mcp16502.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MCP16502 - High-Performance PMIC
+
+maintainers:
+  - Andrei Simion <andrei.simion@microchip.com>
+
+description:
+  The MCP16502 is an optimally integrated PMIC compatible
+  with Microchip's eMPUs(Embedded Microprocessor Units), requiring
+  Dynamic Voltage Scaling (DVS) with the use of High-Performance mode (HPM).
+
+properties:
+  compatible:
+    const: microchip,mcp16502
+
+  lpm-gpios:
+    description: GPIO for LPM pin.
+      Note that this GPIO must remain high during
+      suspend-to-ram, keeping the PMIC into HIBERNATE mode;
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  regulators:
+    type: object
+    description: List of regulators and its properties.
+      A node that houses a sub-node for each regulator within
+      the device. Each sub-node is identified using the node's
+      name. The content of each sub-node is defined by the
+      standard binding for regulators;
+
+    patternProperties:
+      "^(VDD_(IO|CORE|DDR|OTHER)|LDO[1-2])$":
+        type: object
+        $ref: regulator.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          regulator-initial-mode:
+            description: Initial operating mode.
+            enum: [2, 4]
+            default: 2
+
+          regulator-allowed-modes:
+            description: Supported modes
+              2 - FPWM higher precision, higher consumption
+              4 - AutoPFM lower precision, lower consumption
+            items:
+              enum: [2, 4]
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@5b {
+            compatible = "microchip,mcp16502";
+            reg = <0x5b>;
+
+            regulators {
+                VDD_IO {
+                    regulator-name = "VDD_IO";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-initial-mode = <2>;
+                    regulator-allowed-modes = <2>, <4>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                        regulator-mode = <4>;
+                    };
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-mode = <4>;
+                    };
+                };
+
+                VDD_DDR {
+                    regulator-name = "VDD_DDR";
+                    regulator-min-microvolt = <1350000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-initial-mode = <2>;
+                    regulator-allowed-modes = <2>, <4>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                        regulator-mode = <4>;
+                    };
+
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                        regulator-mode = <4>;
+                    };
+                };
+
+                VDD_CORE {
+                    regulator-name = "VDD_CORE";
+                    regulator-min-microvolt = <1150000>;
+                    regulator-max-microvolt = <1150000>;
+                    regulator-initial-mode = <2>;
+                    regulator-allowed-modes = <2>, <4>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                        regulator-mode = <4>;
+                    };
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-mode = <4>;
+                    };
+                };
+
+                VDD_OTHER {
+                    regulator-name = "VDD_OTHER";
+                    regulator-min-microvolt = <1050000>;
+                    regulator-max-microvolt = <1250000>;
+                    regulator-initial-mode = <2>;
+                    regulator-allowed-modes = <2>, <4>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                        regulator-mode = <4>;
+                    };
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-mode = <4>;
+                    };
+                };
+
+                LDO1 {
+                    regulator-name = "LDO1";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                    };
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                LDO2 {
+                    regulator-name = "LDO2";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3700000>;
+                    regulator-always-on;
+
+                    regulator-state-standby {
+                        regulator-on-in-suspend;
+                    };
+
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+            };
+        };
+    };
-- 
2.34.1


