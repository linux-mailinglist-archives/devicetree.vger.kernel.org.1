Return-Path: <devicetree+bounces-43000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FB4858F65
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 13:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A66902833FC
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 12:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBD27A73C;
	Sat, 17 Feb 2024 12:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOPlPaeA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E137A726;
	Sat, 17 Feb 2024 12:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708174337; cv=none; b=El7OyHDsVmUQQRsYez1EAWJU6yDWid1oMzuKOWBq0XkAHLRJxsGkIox9DsOe0H92XRCHawv6zRCUMC0G4MvrA3w6okYNMlITX1LYCm7wq44FSJN4FmGSz0KUYHbKdgLmkO07qtqIRUgBfWSGDnTEObU3g8u5WCdNKwCSazTforY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708174337; c=relaxed/simple;
	bh=6ind78AJynwY1LmfkNQ1U7di0XLqP8blmVqUvrmOS3Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qXo3kZHryrGZyTec+PSKTVWQCi4tXs42LSyLOOxsudUvuYYyW7xqLxJvLGYjWdgb8B99flTPaYzuKWnktYzv7x0pUuAjH+T6My/KDjcWgQE0T61oGuwZhhzQluCt9cCWs+1c4d9RekUwU6zlbWmM+ih1zV7dFmwNiwqOIi9w6zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOPlPaeA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB6C433B2;
	Sat, 17 Feb 2024 12:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708174336;
	bh=6ind78AJynwY1LmfkNQ1U7di0XLqP8blmVqUvrmOS3Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=EOPlPaeAZ6GFxFb8MJpLhAGn/O2k4GBmyynkmnukMZsbU+PbpA2dEF3FpPYYSU1/o
	 FzNprKhNXsxUTgfktSODennK7W41Ioig2lPHF9pcjs0KryYlrvAmZ24ENmDtHUMidf
	 /mQpwJOCpLDIjjfTm7+QA+V9AxkbCOIAffIGG4AWN7+9x9hzNdeh+21X0nWZJkApuc
	 8S6MlAtpeGOLoSHJysOJ+GxRoBNUwvv6I5/V5zjdTak53vqLOnv4dbK9dBrnhgzuYS
	 +m7jkReQZc1Prh3zNVJFPGdVBk4r/3tCaBNxWL22zZC1N156zvuIakDQtEI21Bgbi8
	 BO5yZWQv89cLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F016C54764;
	Sat, 17 Feb 2024 12:52:16 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Sat, 17 Feb 2024 20:52:08 +0800
Subject: [PATCH RFC v2 3/5] dt-bindings: clock: merge all hisilicon clock
 bindings to hisilicon,clock-reset-generator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-clk-mv200-v2-3-b782e4eb66f7@outlook.com>
References: <20240217-clk-mv200-v2-0-b782e4eb66f7@outlook.com>
In-Reply-To: <20240217-clk-mv200-v2-0-b782e4eb66f7@outlook.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: David Yang <mmyangfl@gmail.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708174332; l=13720;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=EqQMvIXx4LM4+ET9KWtgSD1GCj4ursrFPHmTnhir2L0=;
 b=p7Jw6SVdlnzdWHZ8dv/2hulHSBBwl6/14RIKZyq+pzIim5S44VxrCTv4+busIz9SsFlYy6NCv
 pxt/FQtCCgpD3A55QiCgdUivOY95apDKfJbGj0rMkf1E/RSQPnYHVuL
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received:
 by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
Reply-To: <forbidden405@outlook.com>

From: Yang Xiwen <forbidden405@outlook.com>

We don't need so many separated and duplicated dt-binding files. Merge
them all and convert them to YAML.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 .../devicetree/bindings/clock/hi3660-clock.txt     |  47 -------
 .../devicetree/bindings/clock/hi3670-clock.txt     |  43 -------
 .../devicetree/bindings/clock/hi6220-clock.txt     |  52 --------
 .../devicetree/bindings/clock/hisi-crg.txt         |  50 --------
 .../clock/hisilicon,clock-reset-generator.yaml     | 139 +++++++++++++++++++++
 .../clock/hisilicon,hi3559av100-clock.yaml         |  59 ---------
 6 files changed, 139 insertions(+), 251 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/hi3660-clock.txt b/Documentation/devicetree/bindings/clock/hi3660-clock.txt
deleted file mode 100644
index 946da7cee54f..000000000000
--- a/Documentation/devicetree/bindings/clock/hi3660-clock.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-* Hisilicon Hi3660 Clock Controller
-
-The Hi3660 clock controller generates and supplies clock to various
-controllers within the Hi3660 SoC.
-
-Required Properties:
-
-- compatible: the compatible should be one of the following strings to
-	indicate the clock controller functionality.
-
-	- "hisilicon,hi3660-crgctrl"
-	- "hisilicon,hi3660-pctrl"
-	- "hisilicon,hi3660-pmuctrl"
-	- "hisilicon,hi3660-sctrl"
-	- "hisilicon,hi3660-iomcu"
-	- "hisilicon,hi3660-stub-clk"
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Optional Properties:
-
-- mboxes: Phandle to the mailbox for sending message to MCU.
-            (See: ../mailbox/hisilicon,hi3660-mailbox.txt for more info)
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifier could be found in <dt-bindings/clock/hi3660-clock.h>.
-
-Examples:
-	crg_ctrl: clock-controller@fff35000 {
-		compatible = "hisilicon,hi3660-crgctrl", "syscon";
-		reg = <0x0 0xfff35000 0x0 0x1000>;
-		#clock-cells = <1>;
-	};
-
-	uart0: serial@fdf02000 {
-		compatible = "arm,pl011", "arm,primecell";
-		reg = <0x0 0xfdf02000 0x0 0x1000>;
-		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&crg_ctrl HI3660_CLK_MUX_UART0>,
-			 <&crg_ctrl HI3660_PCLK>;
-		clock-names = "uartclk", "apb_pclk";
-	};
diff --git a/Documentation/devicetree/bindings/clock/hi3670-clock.txt b/Documentation/devicetree/bindings/clock/hi3670-clock.txt
deleted file mode 100644
index 66f3697eca78..000000000000
--- a/Documentation/devicetree/bindings/clock/hi3670-clock.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-* Hisilicon Hi3670 Clock Controller
-
-The Hi3670 clock controller generates and supplies clock to various
-controllers within the Hi3670 SoC.
-
-Required Properties:
-
-- compatible: the compatible should be one of the following strings to
-	indicate the clock controller functionality.
-
-	- "hisilicon,hi3670-crgctrl"
-	- "hisilicon,hi3670-pctrl"
-	- "hisilicon,hi3670-pmuctrl"
-	- "hisilicon,hi3670-sctrl"
-	- "hisilicon,hi3670-iomcu"
-	- "hisilicon,hi3670-media1-crg"
-	- "hisilicon,hi3670-media2-crg"
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifier could be found in <dt-bindings/clock/hi3670-clock.h>.
-
-Examples:
-	crg_ctrl: clock-controller@fff35000 {
-		compatible = "hisilicon,hi3670-crgctrl", "syscon";
-		reg = <0x0 0xfff35000 0x0 0x1000>;
-		#clock-cells = <1>;
-	};
-
-	uart0: serial@fdf02000 {
-		compatible = "arm,pl011", "arm,primecell";
-		reg = <0x0 0xfdf02000 0x0 0x1000>;
-		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&crg_ctrl HI3670_CLK_GATE_UART0>,
-			 <&crg_ctrl HI3670_PCLK>;
-		clock-names = "uartclk", "apb_pclk";
-	};
diff --git a/Documentation/devicetree/bindings/clock/hi6220-clock.txt b/Documentation/devicetree/bindings/clock/hi6220-clock.txt
deleted file mode 100644
index 17ac4a3dd26a..000000000000
--- a/Documentation/devicetree/bindings/clock/hi6220-clock.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-* Hisilicon Hi6220 Clock Controller
-
-Clock control registers reside in different Hi6220 system controllers,
-please refer the following document to know more about the binding rules
-for these system controllers:
-
-Documentation/devicetree/bindings/arm/hisilicon/hisilicon.yaml
-
-Required Properties:
-
-- compatible: the compatible should be one of the following strings to
-	indicate the clock controller functionality.
-
-	- "hisilicon,hi6220-acpu-sctrl"
-	- "hisilicon,hi6220-aoctrl"
-	- "hisilicon,hi6220-sysctrl"
-	- "hisilicon,hi6220-mediactrl"
-	- "hisilicon,hi6220-pmctrl"
-	- "hisilicon,hi6220-stub-clk"
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Optional Properties:
-
-- hisilicon,hi6220-clk-sram: phandle to the syscon managing the SoC internal sram;
-  the driver need use the sram to pass parameters for frequency change.
-
-- mboxes: use the label reference for the mailbox as the first parameter, the
-  second parameter is the channel number.
-
-Example 1:
-	sys_ctrl: sys_ctrl@f7030000 {
-		compatible = "hisilicon,hi6220-sysctrl", "syscon";
-		reg = <0x0 0xf7030000 0x0 0x2000>;
-		#clock-cells = <1>;
-	};
-
-Example 2:
-	stub_clock: stub_clock {
-		compatible = "hisilicon,hi6220-stub-clk";
-		hisilicon,hi6220-clk-sram = <&sram>;
-		#clock-cells = <1>;
-		mboxes = <&mailbox 1>;
-	};
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifier could be found in <dt-bindings/clock/hi6220-clock.h>.
diff --git a/Documentation/devicetree/bindings/clock/hisi-crg.txt b/Documentation/devicetree/bindings/clock/hisi-crg.txt
deleted file mode 100644
index cc60b3d423f3..000000000000
--- a/Documentation/devicetree/bindings/clock/hisi-crg.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-* HiSilicon Clock and Reset Generator(CRG)
-
-The CRG module provides clock and reset signals to various
-modules within the SoC.
-
-This binding uses the following bindings:
-    Documentation/devicetree/bindings/clock/clock-bindings.txt
-    Documentation/devicetree/bindings/reset/reset.txt
-
-Required Properties:
-
-- compatible: should be one of the following.
-  - "hisilicon,hi3516cv300-crg"
-  - "hisilicon,hi3516cv300-sysctrl"
-  - "hisilicon,hi3519-crg"
-  - "hisilicon,hi3798cv200-crg"
-  - "hisilicon,hi3798cv200-sysctrl"
-
-- reg: physical base address of the controller and length of memory mapped
-  region.
-
-- #clock-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifier could be found in <dt-bindings/clock/hi3519-clock.h>.
-
-- #reset-cells: should be 2.
-
-A reset signal can be controlled by writing a bit register in the CRG module.
-The reset specifier consists of two cells. The first cell represents the
-register offset relative to the base address. The second cell represents the
-bit index in the register.
-
-Example: CRG nodes
-CRG: clock-reset-controller@12010000 {
-	compatible = "hisilicon,hi3519-crg";
-	reg = <0x12010000 0x10000>;
-	#clock-cells = <1>;
-	#reset-cells = <2>;
-};
-
-Example: consumer nodes
-i2c0: i2c@12110000 {
-	compatible = "hisilicon,hi3519-i2c";
-	reg = <0x12110000 0x1000>;
-	clocks = <&CRG HI3519_I2C0_RST>;
-	resets = <&CRG 0xe4 0>;
-};
diff --git a/Documentation/devicetree/bindings/clock/hisilicon,clock-reset-generator.yaml b/Documentation/devicetree/bindings/clock/hisilicon,clock-reset-generator.yaml
new file mode 100644
index 000000000000..d37cd892473e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/hisilicon,clock-reset-generator.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/hisilicon,clock-reset-generator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hisilicon SOC Clock and Reset Generator (CRG) module
+
+maintainers:
+  - Yang Xiwen <forbidden405@foxmail.com>
+
+description: |
+  Hisilicon SOC clock control module which supports the clocks, resets and
+  power domains on various SoCs.
+
+properties:
+  compatible:
+    minItems: 1
+    items:
+      - enum:
+          - hisilicon,hi3559av100-clock
+          - hisilicon,hi3559av100-shub-clock
+          - hisilicon,hi3660-crgctrl
+          - hisilicon,hi3660-pctrl
+          - hisilicon,hi3660-pmuctrl
+          - hisilicon,hi3660-sctrl
+          - hisilicon,hi3660-iomcu
+          - hisilicon,hi3660-stub-clk
+          - hisilicon,hi3670-crgctrl
+          - hisilicon,hi3670-pctrl
+          - hisilicon,hi3670-pmuctrl
+          - hisilicon,hi3670-sctrl
+          - hisilicon,hi3670-iomcu
+          - hisilicon,hi3670-media1-crg
+          - hisilicon,hi3670-media2-crg
+          - hisilicon,hi6220-acpu-sctrl
+          - hisilicon,hi6220-aoctrl
+          - hisilicon,hi6220-sysctrl
+          - hisilicon,hi6220-mediactrl
+          - hisilicon,hi6220-pmctrl
+          - hisilicon,hi6220-stub-clk
+          - hisilicon,hi3516cv300-crg
+          - hisilicon,hi3516cv300-sysctrl
+          - hisilicon,hi3519-crg
+          - hisilicon,hi3798cv200-crg
+          - hisilicon,hi3798cv200-sysctrl
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    enum: [1, 2]
+    description: |
+      First cell is reset request register offset.
+      Second cell is bit offset in reset request register.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+  mboxes:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      Phandle to the mailbox for sending msg to MCU
+      (See ../mailbox/hisilicon,hi3660-mailbox.txt for more info)
+
+  mbox-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: |
+      Names of the mailboxes.
+
+  hisilicon,hi6220-clk-sram:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: |
+      Phandle to the syscon managing the SoC internal sram
+      the driver needs using the sram to pass parameters for frequency change.
+
+  reset-controller:
+    type: object
+    description: |
+      Reset controller for Hi3798CV200 GMAC module
+
+required:
+  - compatible
+  - '#clock-cells'
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              enum:
+                - hisilicon,hi3798cv200-crg
+    then:
+      properties:
+        reset-controller: false
+  - oneOf:
+      - required:
+          - hisilicon,hi6220-clk-sram
+      - required:
+          - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/hi3559av100-clock.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        clock-controller@12010000 {
+            compatible = "hisilicon,hi3559av100-clock";
+            #clock-cells = <1>;
+            #reset-cells = <2>;
+            reg = <0x0 0x12010000 0x0 0x10000>;
+        };
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/hi3660-clock.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        clock-controller@fff35000 {
+            compatible = "hisilicon,hi3660-crgctrl", "syscon";
+            reg = <0x0 0xfff35000 0x0 0x1000>;
+            #clock-cells = <1>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/clock/hisilicon,hi3559av100-clock.yaml b/Documentation/devicetree/bindings/clock/hisilicon,hi3559av100-clock.yaml
deleted file mode 100644
index 3ceb29cec704..000000000000
--- a/Documentation/devicetree/bindings/clock/hisilicon,hi3559av100-clock.yaml
+++ /dev/null
@@ -1,59 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/hisilicon,hi3559av100-clock.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Hisilicon SOC Clock for HI3559AV100
-
-maintainers:
-  - Dongjiu Geng <gengdongjiu@huawei.com>
-
-description: |
-  Hisilicon SOC clock control module which supports the clocks, resets and
-  power domains on HI3559AV100.
-
-  See also:
-    dt-bindings/clock/hi3559av100-clock.h
-
-properties:
-  compatible:
-    enum:
-      - hisilicon,hi3559av100-clock
-      - hisilicon,hi3559av100-shub-clock
-
-  reg:
-    minItems: 1
-    maxItems: 2
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 2
-    description: |
-      First cell is reset request register offset.
-      Second cell is bit offset in reset request register.
-
-required:
-  - compatible
-  - reg
-  - '#clock-cells'
-  - '#reset-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    soc {
-        #address-cells = <2>;
-        #size-cells = <2>;
-
-        clock-controller@12010000 {
-            compatible = "hisilicon,hi3559av100-clock";
-            #clock-cells = <1>;
-            #reset-cells = <2>;
-            reg = <0x0 0x12010000 0x0 0x10000>;
-        };
-    };
-...

-- 
2.43.0


