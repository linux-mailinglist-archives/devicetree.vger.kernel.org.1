Return-Path: <devicetree+bounces-1791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B814A7A861E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E7EA281C44
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2133AC34;
	Wed, 20 Sep 2023 14:04:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC036B12
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:04:23 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F15DC
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:04:18 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ada609bb62so889959666b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1695218656; x=1695823456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w032pb+6esKyq8yphCBmJ8JNN5QmwR1Eb041EExaFZk=;
        b=IrydJ32a5C5SPF4D1WnCG1rYA50hhneUgjKgPCHhmVLsKjwFfmLAB0fvSYC7oYPkTj
         ogoUBoA/MNgG3KzHd/Dqe4gJXIfGwX45Yz5fjOF0+p+3FVcv9Dq/orL50zPa8x8lwJeZ
         vAVsl3pDZr3FUqAmv+bi6OyR1H88nYdK5YzhdyLIXmqyi7HzP7UIna2Zk0YdZiVvXhQ5
         MNuqPdIffBB+8hAr99puAsHphL59Z5Y95R03Zp4WG6wMaNugdt0WNp1+yyacRWl/ZwHR
         M2AFqPyWDv9j7L3xQxcHd+iz+POaK01QQHFvYeL79VoNsfKC9c0enoAWC01wDjg/q7Hv
         o33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695218656; x=1695823456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w032pb+6esKyq8yphCBmJ8JNN5QmwR1Eb041EExaFZk=;
        b=EtEnmGZsxiyZyjvHCdlAs4h9p/E5WzdMSrHMI5WGYzcOn//q7LRxPne/KS0hw6t6fK
         3mWTQLXvrfcEXrYzOFx3BPTdPqn9JgJyuY5eE+MRClIpTRyiwT7vlR4xTWhorb+DWCGp
         wp864XIKi5Q/Q1z0mezwr7xHKDzQfl9pCb8cRJ3uY9eweLi+JyK7aL4+E8vsnXovUzpw
         7DL2UqGB3aCcY7obkIgDNtEFOSiO1oHM/97zr/tn74fDxI/isVQbnim8GdUR+NF7rN4I
         BdBmEiEo1y8FlzM+Yo+WjMGJ8sFRn7W5Ql79StO9dd3RaW28apfJXGjynen2oDhmGa95
         wIcw==
X-Gm-Message-State: AOJu0YwhWDdfF7MRvn0ZTSoqL6DS6U+D8zv4kqHNllU9Mz+Hf2l+1Xuz
	gb/YemxUXa+U9I6wMU9AMmBy1A==
X-Google-Smtp-Source: AGHT+IE/14qrFxxxSUOR3v71Wjk2ijgN7NN3iU9WAeOZia0vNq5OGN6XaLta0ZA56FNPAv4OF96Nsw==
X-Received: by 2002:a17:907:7714:b0:9ad:e2c5:7f73 with SMTP id kw20-20020a170907771400b009ade2c57f73mr2341145ejc.27.1695218656360;
        Wed, 20 Sep 2023 07:04:16 -0700 (PDT)
Received: from capella.localdomain ([193.89.194.60])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906341a00b00993470682e5sm9397761ejb.32.2023.09.20.07.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 07:04:16 -0700 (PDT)
From: =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?=A0ipraga?= <alsi@bang-olufsen.dk>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rabeeh Khoury <rabeeh@solid-run.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: clock: si5351: convert to yaml
Date: Wed, 20 Sep 2023 15:09:53 +0200
Message-ID: <20230920140343.2329225-2-alvin@pqrs.dk>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230920140343.2329225-1-alvin@pqrs.dk>
References: <20230920140343.2329225-1-alvin@pqrs.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Alvin Šipraga <alsi@bang-olufsen.dk>

The following additional properties are described:

  - clock-names
  - clock-frequency of the clkout child nodes

In order to suppress warnings from the DT schema validator, the clkout
child nodes are prescribed names clkout@[0-7] rather than clkout[0-7].
The latter form is still admissible but the example has been changed to
use the former.

The example is refined as follows:

  - correct the usage of property pll-master -> silabs,pll-master
  - give an example of how the silabs,pll-reset property can be used

I made myself maintainer of the file as I cannot presume that anybody
else wants the responsibility.

Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Rabeeh Khoury <rabeeh@solid-run.com>
Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 .../bindings/clock/silabs,si5351.txt          | 126 ---------
 .../bindings/clock/silabs,si5351.yaml         | 251 ++++++++++++++++++
 2 files changed, 251 insertions(+), 126 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.txt
 create mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.yaml

diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.txt b/Documentation/devicetree/bindings/clock/silabs,si5351.txt
deleted file mode 100644
index bfda6af76bee..000000000000
--- a/Documentation/devicetree/bindings/clock/silabs,si5351.txt
+++ /dev/null
@@ -1,126 +0,0 @@
-Binding for Silicon Labs Si5351a/b/c programmable i2c clock generator.
-
-Reference
-[1] Si5351A/B/C Data Sheet
-    https://www.skyworksinc.com/-/media/Skyworks/SL/documents/public/data-sheets/Si5351-B.pdf
-
-The Si5351a/b/c are programmable i2c clock generators with up to 8 output
-clocks. Si5351a also has a reduced pin-count package (MSOP10) where only
-3 output clocks are accessible. The internal structure of the clock
-generators can be found in [1].
-
-==I2C device node==
-
-Required properties:
-- compatible: shall be one of the following:
-	"silabs,si5351a" - Si5351a, QFN20 package
-	"silabs,si5351a-msop" - Si5351a, MSOP10 package
-	"silabs,si5351b" - Si5351b, QFN20 package
-	"silabs,si5351c" - Si5351c, QFN20 package
-- reg: i2c device address, shall be 0x60 or 0x61.
-- #clock-cells: from common clock binding; shall be set to 1.
-- clocks: from common clock binding; list of parent clock
-  handles, shall be xtal reference clock or xtal and clkin for
-  si5351c only. Corresponding clock input names are "xtal" and
-  "clkin" respectively.
-- #address-cells: shall be set to 1.
-- #size-cells: shall be set to 0.
-
-Optional properties:
-- silabs,pll-source: pair of (number, source) for each pll. Allows
-  to overwrite clock source of pll A (number=0) or B (number=1).
-
-==Child nodes==
-
-Each of the clock outputs can be overwritten individually by
-using a child node to the I2C device node. If a child node for a clock
-output is not set, the eeprom configuration is not overwritten.
-
-Required child node properties:
-- reg: number of clock output.
-
-Optional child node properties:
-- silabs,clock-source: source clock of the output divider stage N, shall be
-  0 = multisynth N
-  1 = multisynth 0 for output clocks 0-3, else multisynth4
-  2 = xtal
-  3 = clkin (si5351c only)
-- silabs,drive-strength: output drive strength in mA, shall be one of {2,4,6,8}.
-- silabs,multisynth-source: source pll A(0) or B(1) of corresponding multisynth
-  divider.
-- silabs,pll-master: boolean, multisynth can change pll frequency.
-- silabs,pll-reset: boolean, clock output can reset its pll.
-- silabs,disable-state : clock output disable state, shall be
-  0 = clock output is driven LOW when disabled
-  1 = clock output is driven HIGH when disabled
-  2 = clock output is FLOATING (HIGH-Z) when disabled
-  3 = clock output is NEVER disabled
-
-==Example==
-
-/* 25MHz reference crystal */
-ref25: ref25M {
-	compatible = "fixed-clock";
-	#clock-cells = <0>;
-	clock-frequency = <25000000>;
-};
-
-i2c-master-node {
-
-	/* Si5351a msop10 i2c clock generator */
-	si5351a: clock-generator@60 {
-		compatible = "silabs,si5351a-msop";
-		reg = <0x60>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		#clock-cells = <1>;
-
-		/* connect xtal input to 25MHz reference */
-		clocks = <&ref25>;
-		clock-names = "xtal";
-
-		/* connect xtal input as source of pll0 and pll1 */
-		silabs,pll-source = <0 0>, <1 0>;
-
-		/*
-		 * overwrite clkout0 configuration with:
-		 * - 8mA output drive strength
-		 * - pll0 as clock source of multisynth0
-		 * - multisynth0 as clock source of output divider
-		 * - multisynth0 can change pll0
-		 * - set initial clock frequency of 74.25MHz
-		 */
-		clkout0 {
-			reg = <0>;
-			silabs,drive-strength = <8>;
-			silabs,multisynth-source = <0>;
-			silabs,clock-source = <0>;
-			silabs,pll-master;
-			clock-frequency = <74250000>;
-		};
-
-		/*
-		 * overwrite clkout1 configuration with:
-		 * - 4mA output drive strength
-		 * - pll1 as clock source of multisynth1
-		 * - multisynth1 as clock source of output divider
-		 * - multisynth1 can change pll1
-		 */
-		clkout1 {
-			reg = <1>;
-			silabs,drive-strength = <4>;
-			silabs,multisynth-source = <1>;
-			silabs,clock-source = <0>;
-			pll-master;
-		};
-
-		/*
-		 * overwrite clkout2 configuration with:
-		 * - xtal as clock source of output divider
-		 */
-		clkout2 {
-			reg = <2>;
-			silabs,clock-source = <2>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/clock/silabs,si5351.yaml b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
new file mode 100644
index 000000000000..3ca8d998c48c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -0,0 +1,251 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/silabs,si5351.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Silicon Labs Si5351A/B/C programmable I2C clock generators
+
+description: |
+  The Silicon Labs Si5351A/B/C are programmable I2C clock generators with up to
+  8 outputs. Si5351A also has a reduced pin-count package (10-MSOP) where only 3
+  output clocks are accessible. The internal structure of the clock generators
+  can be found in [1].
+
+  [1] Si5351A/B/C Data Sheet
+      https://www.skyworksinc.com/-/media/Skyworks/SL/documents/public/data-sheets/Si5351-B.pdf
+
+maintainers:
+  - Alvin Šipraga <alsi@bang-olufsen.dk>
+
+properties:
+  compatible:
+    enum:
+      - silabs,si5351a      # Si5351A, 20-QFN package
+      - silabs,si5351a-msop # Si5351A, 10-MSOP package
+      - silabs,si5351b      # Si5351B, 20-QFN package
+      - silabs,si5351c      # Si5351C, 20-QFN package
+
+  reg:
+    enum:
+      - 0x60
+      - 0x61
+    description: |
+      I2C address of the clock generator
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 1
+
+  silabs,pll-source:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 1
+    maxItems: 2
+    description: |
+      Pair of <number source> for each PLL. Allows to overwrite clock source of
+      PLL A (number=0) or PLL B (number=1).
+
+patternProperties:
+  "^clkout@?[0-8]$":
+    type: object
+
+    properties:
+      reg:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: Clock output number.
+
+      clock-frequency:
+        $ref: /schemas/clock/clock.yaml#/properties/clock-frequency
+
+      silabs,clock-source:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: |
+          Source clock of the this output's divider stage.
+
+          0 - use multisynth N for this output, where N is the output number
+          1 - use either multisynth 0 (if output number is 0-3) or multisynth 4
+              (otherwise) for this output
+          2 - use XTAL for this output
+          3 - use CLKIN for this output (Si5351C only)
+
+      silabs,drive-strength:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [2, 4, 6, 8]
+        description: Output drive strength in mA.
+
+      silabs,multisynth-source:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description: |
+          Source PLL A (0) or B (1) for the corresponding multisynth divider.
+
+      silabs,pll-master:
+        type: boolean
+        description: |
+          The frequency of the source PLL is allowed to be changed by the
+          multisynth when setting the rate of this clock output.
+
+      silabs,pll-reset:
+        type: boolean
+        description: Reset the source PLL when enabling this clock output.
+
+      silabs,disable-state:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
+        description: |
+          Clock output disable state. The state can be one of:
+
+          0 - clock output is driven LOW when disabled
+          1 - clock output is driven HIGH when disabled
+          2 - clock output is FLOATING (HIGH-Z) when disabled
+          3 - clock output is never disabled
+
+    allOf:
+      - if:
+          properties:
+            compatible:
+              contains:
+                const: silabs,si5351a-msop
+        then:
+          properties:
+            reg:
+              minimum: 0
+              maximum: 2
+        else:
+          properties:
+            reg:
+              minimum: 0
+              maximum: 7
+
+      - if:
+          properties:
+            compatible:
+              contains:
+                const: silabs,si5351c
+        then:
+          properties:
+            silabs,clock-source:
+              enum: [0, 1, 2, 3]
+        else:
+          properties:
+            silabs,clock-source:
+              enum: [0, 1, 2]
+    required:
+      - reg
+
+    additionalProperties: false
+
+allOf:
+  - $ref: /schemas/clock/clock.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - silabs,si5351a
+              - silabs,si5351a-msop
+              - silabs,si5351b
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 1
+        clock-names:
+          items:
+            - const: xtal
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: silabs,si5351c
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 2
+        clock-names:
+          minItems: 1
+          items:
+            - const: xtal
+            - const: clkin
+
+required:
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - "#clock-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      si5351a: clock-generator@60 {
+        compatible = "silabs,si5351a-msop";
+        reg = <0x60>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #clock-cells = <1>;
+
+        /* Connect XTAL input to 25MHz reference */
+        clocks = <&ref25>;
+        clock-names = "xtal";
+
+        /* Use XTAL input as source of PLL0 and PLL1 */
+        silabs,pll-source = <0 0>, <1 0>;
+
+        /*
+         * Overwrite CLK0 configuration with:
+         * - 8 mA output drive strength
+         * - PLL0 as clock source of multisynth 0
+         * - Multisynth 0 as clock source of output divider
+         * - Multisynth 0 can change PLL0
+         * - Set initial clock frequency of 74.25MHz
+         */
+        clkout@0 {
+          reg = <0>;
+          silabs,drive-strength = <8>;
+          silabs,multisynth-source = <0>;
+          silabs,clock-source = <0>;
+          silabs,pll-master;
+          clock-frequency = <74250000>;
+        };
+
+        /*
+         * Overwrite CLK1 configuration with:
+         * - 4 mA output drive strength
+         * - PLL1 as clock source of multisynth 1
+         * - Multisynth 1 as clock source of output divider
+         * - Multisynth 1 can change PLL1
+         * - Reset PLL1 when enabling this clock output
+         */
+        clkout@1 {
+          reg = <1>;
+          silabs,drive-strength = <4>;
+          silabs,multisynth-source = <1>;
+          silabs,clock-source = <0>;
+          silabs,pll-master;
+          silabs,pll-reset;
+        };
+
+        /*
+         * Overwrite CLK2 configuration with:
+         * - XTAL as clock source of output divider
+         */
+        clkout@2 {
+          reg = <2>;
+          silabs,clock-source = <2>;
+        };
+      };
+    };
-- 
2.41.0


