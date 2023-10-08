Return-Path: <devicetree+bounces-6781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8848A7BCE03
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:13:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E5431C20994
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 11:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55525BE6D;
	Sun,  8 Oct 2023 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pqrs.dk header.i=@pqrs.dk header.b="AmEmYHrL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9EFBE64
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 11:13:51 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2478ECA
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 04:13:48 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-53447d0241eso6498974a12.3
        for <devicetree@vger.kernel.org>; Sun, 08 Oct 2023 04:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1696763626; x=1697368426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X73w9Tm3/Fb3xfcteBxnrsvkSpD2zh7pbrO20v4v9zM=;
        b=AmEmYHrLmdAnN6lNs8Gn9045SVqdBAqm3sIFCyueGs9giuKaDRkNGYZKE8c5p5pw7x
         dHa2dRG9IOEMQxX+Mpjxx0RpEnVon1uv/3GaMw/p5yvBAgvsGvFTLVu1lrjR39EXG/0N
         pSmSyvza2EMYeY1qb5fazFzNxgi2raDpTdWiDH8Na2XdTTpNkCoIF3GVqB8L5i8MwlEz
         AxDEDQONcv5mwJliYtCzrw3xTiXnQc1VjEouE5vVdpMcxUGvs93Htnq3zec45gAFgLJJ
         C/QThBwBCU8QJUI1fF9fFe2alMatLQK9Hjbd21TO7+78YioP8b2wBYBH4Ox7O+GRKM63
         4Ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696763626; x=1697368426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X73w9Tm3/Fb3xfcteBxnrsvkSpD2zh7pbrO20v4v9zM=;
        b=PluPj0uiC+l5xDtMMAzjfBmD+9lycczoD4Kpesq4a98UNLR9GmWOOHehOJjiajUWkg
         hpWz2h7fnrqs5NrYxGOIcxOj+f4y9ASHAJ2xuF+kG2JwRgw4zeaT7/VnTGLEiR0nQCm6
         jww+UdN2UAl4K0keybYwClaPMfHHsADCpd+DRLvaprPaynST1GkUskZmyrgktWbyRsYd
         zudJ/FS19xFfUwYzrnl2dYFWBhk8uMPLXNhKbr8R/+zCTefBhNEFuMh7IDiNsflffgm1
         HySCMZCy6KUXbxsl13IJ9II4lpEO9FoRIpFvuAdQbQmrpUdNphHDf3ssP/leOcorYiYU
         Q44A==
X-Gm-Message-State: AOJu0YwsnS8BZz3T23ZYNl1ThrxSXY7CjMjCuCN1mP84Hmt89oEXJafK
	0BmAzuYrEatX20CHS9Ga6Jgm5g==
X-Google-Smtp-Source: AGHT+IFCZHne6hwIMK083BoZnPA3J9Blmp45true0lKIip8qf3L25CYzVFnedWjOuXymk0LuQ3WGRg==
X-Received: by 2002:a17:907:c70d:b0:9ae:47c3:35a0 with SMTP id ty13-20020a170907c70d00b009ae47c335a0mr11083414ejc.47.1696763626359;
        Sun, 08 Oct 2023 04:13:46 -0700 (PDT)
Received: from capella.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id t3-20020a1709064f0300b009b928eb8dd3sm5383396eju.163.2023.10.08.04.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 04:13:45 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: clock: si5351: convert to yaml
Date: Sun,  8 Oct 2023 13:09:37 +0200
Message-ID: <20231008111324.582595-2-alvin@pqrs.dk>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231008111324.582595-1-alvin@pqrs.dk>
References: <20231008111324.582595-1-alvin@pqrs.dk>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
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
 .../bindings/clock/silabs,si5351.yaml         | 244 ++++++++++++++++++
 2 files changed, 244 insertions(+), 126 deletions(-)
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
index 000000000000..99c4e2271b6d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/silabs,si5351.yaml
@@ -0,0 +1,244 @@
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
+  clocks: true
+
+  clock-names: true
+
+  silabs,pll-source:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    description: |
+      A list of cell pairs containing a PLL index and its source. Allows to
+      overwrite clock source of the internal PLLs.
+    items:
+      items:
+        - description: PLL A (0) or PLL B (1)
+          enum: [ 0, 1 ]
+        - description: PLL source, XTAL (0) or CLKIN (1, Si5351C only).
+          enum: [ 0, 1 ]
+
+patternProperties:
+  "^clkout@[0-7]$":
+    type: object
+
+    additionalProperties: false
+
+    properties:
+      reg:
+        description: Clock output number.
+
+      clock-frequency: true
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
+        enum: [ 2, 4, 6, 8 ]
+        description: Output drive strength in mA.
+
+      silabs,multisynth-source:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [ 0, 1 ]
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
+        enum: [ 0, 1, 2, 3 ]
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
+              maximum: 2
+        else:
+          properties:
+            reg:
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
+              enum: [ 0, 1, 2, 3 ]
+        else:
+          properties:
+            silabs,clock-source:
+              enum: [ 0, 1, 2 ]
+
+    required:
+      - reg
+
+allOf:
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
+          maxItems: 1
+        clock-names:
+          items:
+            - const: xtal
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
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
+      clock-generator@60 {
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
2.42.0


