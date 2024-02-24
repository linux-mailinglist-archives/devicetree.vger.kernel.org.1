Return-Path: <devicetree+bounces-45609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AD38627BD
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 22:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BE2628247E
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D534A4D9E6;
	Sat, 24 Feb 2024 21:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqyAltnU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3674D58A;
	Sat, 24 Feb 2024 21:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708810393; cv=none; b=GISiV2Vk3X1my1CibLtNTgkT9waq9Q0snzOK5ozbeJOqxv8kml1quPLQ3y/NrLjpfNvjUEbT4CWXttQOHENY5LTwFWN+3J82auFWGfAR065GVCCCPN7peQrhs+J2B7aRCx2LwJm97ZETUANHfBCxo7PQn3M5UakglPiRNF+ghrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708810393; c=relaxed/simple;
	bh=snnR1gu7w8P9G0LSlc7qZ8AC7qVf+H2XXxGnseGSLOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l588XkW8d93uKmTuUuZ5bOj1ylrmI2T5oK3NeKvOuJoRaA5XOt4CrMgXHXcjWfdxRVE9pgwV9vcx6F05osBt4c8QCFzKvpS8RsNKaiQmA2Vhrw8H49vZmRSYYJ2MIwvJbH5W2f7XmAI+NpU5zVN2iqk4psuYOeIwuZ4MfaPpkX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqyAltnU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95B9C43394;
	Sat, 24 Feb 2024 21:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708810393;
	bh=snnR1gu7w8P9G0LSlc7qZ8AC7qVf+H2XXxGnseGSLOA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kqyAltnUfQbgJrDsIFpty7TUqzKP3H9/RP/BOD8p4zJbGNZvtY0TVBg4AdUfNaue+
	 ynb3+xRZZ1wp5RupDO0rvHOdRAGrIIrcz5aAOpI7aSeYC3hTDgcJrK5YEsikZBezvQ
	 lLK22NfnPrVqO0QOJeLrVpEjEhXKTbHp9wtjUqr0HG1Gmd+EQN0ySI7iwn9lg35WnX
	 AHezQuXPKqvdJ8HIXJTi0Pvl2bZRAm+xLFewqAuNbR8fiZTZXfvW2pDVDbr/ov3EV2
	 N/GTqIDnW3uhTH8jeZlnhEGgGtsCDYP74kh3TQfUB7H9MIiIrP4mpwqAt3guS3ICtv
	 XI+FhXK+s/cGw==
Received: by mercury (Postfix, from userid 1000)
	id E5B391060D95; Sat, 24 Feb 2024 22:33:09 +0100 (CET)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 02/16] dt-bindings: bus: imx-weim: convert to YAML
Date: Sat, 24 Feb 2024 22:29:34 +0100
Message-ID: <20240224213240.1854709-3-sre@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240224213240.1854709-1-sre@kernel.org>
References: <20240224213240.1854709-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the i.MX  Wireless External Interface Module binding to YAML.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
 .../devicetree/bindings/bus/imx-weim.txt      | 117 ----------
 .../fsl/fsl,imx-weim-peripherals.yaml         |  31 +++
 .../memory-controllers/fsl/fsl,imx-weim.yaml  | 204 ++++++++++++++++++
 .../mc-peripheral-props.yaml                  |   1 +
 .../fieldbus/arcx,anybus-controller.txt       |   2 +-
 5 files changed, 237 insertions(+), 118 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/bus/imx-weim.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim-peripherals.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim.yaml

diff --git a/Documentation/devicetree/bindings/bus/imx-weim.txt b/Documentation/devicetree/bindings/bus/imx-weim.txt
deleted file mode 100644
index e7f502070d77..000000000000
--- a/Documentation/devicetree/bindings/bus/imx-weim.txt
+++ /dev/null
@@ -1,117 +0,0 @@
-Device tree bindings for i.MX Wireless External Interface Module (WEIM)
-
-The term "wireless" does not imply that the WEIM is literally an interface
-without wires. It simply means that this module was originally designed for
-wireless and mobile applications that use low-power technology.
-
-The actual devices are instantiated from the child nodes of a WEIM node.
-
-Required properties:
-
- - compatible:		Should contain one of the following:
-			  "fsl,imx1-weim"
-			  "fsl,imx27-weim"
-			  "fsl,imx51-weim"
-			  "fsl,imx50-weim"
-			  "fsl,imx6q-weim"
- - reg:			A resource specifier for the register space
-			(see the example below)
- - clocks:		the clock, see the example below.
- - #address-cells:	Must be set to 2 to allow memory address translation
- - #size-cells:		Must be set to 1 to allow CS address passing
- - ranges:		Must be set up to reflect the memory layout with four
-			integer values for each chip-select line in use:
-
-			   <cs-number> 0 <physical address of mapping> <size>
-
-Optional properties:
-
- - fsl,weim-cs-gpr:	For "fsl,imx50-weim" and "fsl,imx6q-weim" type of
-			devices, it should be the phandle to the system General
-			Purpose Register controller that contains WEIM CS GPR
-			register, e.g. IOMUXC_GPR1 on i.MX6Q.  IOMUXC_GPR1[11:0]
-			should be set up as one of the following 4 possible
-			values depending on the CS space configuration.
-
-			IOMUXC_GPR1[11:0]    CS0    CS1    CS2    CS3
-			---------------------------------------------
-				05	    128M     0M     0M     0M
-				033          64M    64M     0M     0M
-				0113         64M    32M    32M     0M
-				01111        32M    32M    32M    32M
-
-			In case that the property is absent, the reset value or
-			what bootloader sets up in IOMUXC_GPR1[11:0] will be
-			used.
-
- - fsl,burst-clk-enable	For "fsl,imx50-weim" and "fsl,imx6q-weim" type of
-			devices, the presence of this property indicates that
-			the weim bus should operate in Burst Clock Mode.
-
- - fsl,continuous-burst-clk	Make Burst Clock to output continuous clock.
-			Without this option Burst Clock will output clock
-			only when necessary. This takes effect only if
-			"fsl,burst-clk-enable" is set.
-
-Timing property for child nodes. It is mandatory, not optional.
-
- - fsl,weim-cs-timing:	The timing array, contains timing values for the
-			child node. We get the CS indexes from the address
-			ranges in the child node's "reg" property.
-			The number of registers depends on the selected chip:
-			For i.MX1, i.MX21 ("fsl,imx1-weim") there are two
-			registers: CSxU, CSxL.
-			For i.MX25, i.MX27, i.MX31 and i.MX35 ("fsl,imx27-weim")
-			there are three registers: CSCRxU, CSCRxL, CSCRxA.
-			For i.MX50, i.MX53 ("fsl,imx50-weim"),
-			i.MX51 ("fsl,imx51-weim") and i.MX6Q ("fsl,imx6q-weim")
-			there are six registers: CSxGCR1, CSxGCR2, CSxRCR1,
-			CSxRCR2, CSxWCR1, CSxWCR2.
-
-Example for an imx6q-sabreauto board, the NOR flash connected to the WEIM:
-
-	weim: weim@21b8000 {
-		compatible = "fsl,imx6q-weim";
-		reg = <0x021b8000 0x4000>;
-		clocks = <&clks 196>;
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0x08000000 0x08000000>;
-		fsl,weim-cs-gpr = <&gpr>;
-
-		nor@0,0 {
-			compatible = "cfi-flash";
-			reg = <0 0 0x02000000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			bank-width = <2>;
-			fsl,weim-cs-timing = <0x00620081 0x00000001 0x1c022000
-					0x0000c000 0x1404a38e 0x00000000>;
-		};
-	};
-
-Example for an imx6q-based board, a multi-chipselect device connected to WEIM:
-
-In this case, both chip select 0 and 1 will be configured with the same timing
-array values.
-
-	weim: weim@21b8000 {
-		compatible = "fsl,imx6q-weim";
-		reg = <0x021b8000 0x4000>;
-		clocks = <&clks 196>;
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0x08000000 0x02000000
-			  1 0 0x0a000000 0x02000000
-			  2 0 0x0c000000 0x02000000
-			  3 0 0x0e000000 0x02000000>;
-		fsl,weim-cs-gpr = <&gpr>;
-
-		acme@0 {
-			compatible = "acme,whatever";
-			reg = <0 0 0x100>, <0 0x400000 0x800>,
-				<1 0x400000 0x800>;
-			fsl,weim-cs-timing = <0x024400b1 0x00001010 0x20081100
-				0x00000000 0xa0000240 0x00000000>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim-peripherals.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim-peripherals.yaml
new file mode 100644
index 000000000000..82fc5f4a1ed6
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim-peripherals.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/fsl/fsl,imx-weim-peripherals.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX WEIM Bus Peripheral Nodes
+
+maintainers:
+  - Shawn Guo <shawnguo@kernel.org>
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+description:
+  This binding is meant for the child nodes of the WEIM node. The node
+  represents any device connected to the WEIM bus. It may be a Flash chip,
+  RAM chip or Ethernet controller, etc. These properties are meant for
+  configuring the WEIM settings/timings and will accompany the bindings
+  supported by the respective device.
+
+properties:
+  reg: true
+
+  fsl,weim-cs-timing:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Timing values for the child node.
+    minItems: 2
+    maxItems: 6
+
+# the WEIM child will have its own native properties
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim.yaml
new file mode 100644
index 000000000000..3f40ca5b13f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim.yaml
@@ -0,0 +1,204 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/fsl/fsl,imx-weim.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX Wireless External Interface Module (WEIM)
+
+maintainers:
+  - Shawn Guo <shawnguo@kernel.org>
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+description:
+  The term "wireless" does not imply that the WEIM is literally an interface
+  without wires. It simply means that this module was originally designed for
+  wireless and mobile applications that use low-power technology. The actual
+  devices are instantiated from the child nodes of a WEIM node.
+
+properties:
+  $nodename:
+    pattern: "^memory-controller@[0-9a-f]+$"
+
+  compatible:
+    oneOf:
+      - enum:
+          - fsl,imx1-weim
+          - fsl,imx27-weim
+          - fsl,imx50-weim
+          - fsl,imx51-weim
+          - fsl,imx6q-weim
+      - items:
+          - enum:
+              - fsl,imx31-weim
+              - fsl,imx35-weim
+          - const: fsl,imx27-weim
+      - items:
+          - enum:
+              - fsl,imx6sx-weim
+              - fsl,imx6ul-weim
+          - const: fsl,imx6q-weim
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ranges: true
+
+  fsl,weim-cs-gpr:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      Phandle to the system General Purpose Register controller that contains
+      WEIM CS GPR register, e.g. IOMUXC_GPR1 on i.MX6Q. IOMUXC_GPR1[11:0]
+      should be set up as one of the following 4 possible values depending on
+      the CS space configuration.
+
+      IOMUXC_GPR1[11:0]    CS0    CS1    CS2    CS3
+      ---------------------------------------------
+              05          128M     0M     0M     0M
+              033          64M    64M     0M     0M
+              0113         64M    32M    32M     0M
+              01111        32M    32M    32M    32M
+
+      In case that the property is absent, the reset value or what bootloader
+      sets up in IOMUXC_GPR1[11:0] will be used.
+
+  fsl,burst-clk-enable:
+    type: boolean
+    description:
+      The presence of this property indicates that the weim bus should operate
+      in Burst Clock Mode.
+
+  fsl,continuous-burst-clk:
+    type: boolean
+    description:
+      Make Burst Clock to output continuous clock. Without this option Burst
+      Clock will output clock only when necessary.
+
+patternProperties:
+  "^.*@[0-7],[0-9a-f]+$":
+    type: object
+    description: Devices attached to chip selects are represented as subnodes.
+    $ref: fsl,imx-weim-peripherals.yaml
+    additionalProperties: true
+    required:
+      - fsl,weim-cs-timing
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              enum:
+                - fsl,imx50-weim
+                - fsl,imx6q-weim
+    then:
+      properties:
+        fsl,weim-cs-gpr: false
+        fsl,burst-clk-enable: false
+  - if:
+      not:
+        required:
+          - fsl,burst-clk-enable
+    then:
+      properties:
+        fsl,continuous-burst-clk: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx1-weim
+    then:
+      patternProperties:
+        "^.*@[0-7],[0-9a-f]+$":
+          properties:
+            fsl,weim-cs-timing:
+              items:
+                items:
+                  - description: CSxU
+                  - description: CSxL
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx27-weim
+              - fsl,imx31-weim
+              - fsl,imx35-weim
+    then:
+      patternProperties:
+        "^.*@[0-7],[0-9a-f]+$":
+          properties:
+            fsl,weim-cs-timing:
+              items:
+                items:
+                  - description: CSCRxU
+                  - description: CSCRxL
+                  - description: CSCRxA
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx50-weim
+              - fsl,imx51-weim
+              - fsl,imx6q-weim
+              - fsl,imx6sx-weim
+              - fsl,imx6ul-weim
+    then:
+      patternProperties:
+        "^.*@[0-7],[0-9a-f]+$":
+          properties:
+            fsl,weim-cs-timing:
+              items:
+                items:
+                  - description: CSxGCR1
+                  - description: CSxGCR2
+                  - description: CSxRCR1
+                  - description: CSxRCR2
+                  - description: CSxWCR1
+                  - description: CSxWCR2
+
+additionalProperties: false
+
+examples:
+  - |
+    memory-controller@21b8000 {
+        compatible = "fsl,imx6q-weim";
+        reg = <0x021b8000 0x4000>;
+        clocks = <&clks 196>;
+        #address-cells = <2>;
+        #size-cells = <1>;
+        ranges = <0 0 0x08000000 0x08000000>;
+        fsl,weim-cs-gpr = <&gpr>;
+
+        flash@0,0 {
+            compatible = "cfi-flash";
+            reg = <0 0 0x02000000>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            bank-width = <2>;
+            fsl,weim-cs-timing = <0x00620081 0x00000001 0x1c022000
+                                  0x0000c000 0x1404a38e 0x00000000>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml b/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
index 8d9dae15ade0..00deeb09f87d 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/mc-peripheral-props.yaml
@@ -37,5 +37,6 @@ allOf:
   - $ref: ingenic,nemc-peripherals.yaml#
   - $ref: intel,ixp4xx-expansion-peripheral-props.yaml#
   - $ref: ti,gpmc-child.yaml#
+  - $ref: fsl/fsl,imx-weim-peripherals.yaml
 
 additionalProperties: true
diff --git a/drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt b/drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
index b1f9474f36d5..f34a95611645 100644
--- a/drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
+++ b/drivers/staging/fieldbus/Documentation/devicetree/bindings/fieldbus/arcx,anybus-controller.txt
@@ -48,7 +48,7 @@ Example of usage:
 -----------------
 
 This example places the bridge on top of the i.MX WEIM parallel bus, see:
-Documentation/devicetree/bindings/bus/imx-weim.txt
+Documentation/devicetree/bindings/memory-controllers/fsl/fsl,imx-weim.yaml
 
 &weim {
 	controller@0,0 {
-- 
2.43.0


