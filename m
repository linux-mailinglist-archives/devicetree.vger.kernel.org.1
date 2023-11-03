Return-Path: <devicetree+bounces-13696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 501497DFFF1
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 10:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B83EFB2129C
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 09:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E498BF7;
	Fri,  3 Nov 2023 09:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015B179D1
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:18:07 +0000 (UTC)
Received: from SHSQR01.spreadtrum.com (mx1.unisoc.com [222.66.158.135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA85DE;
	Fri,  3 Nov 2023 02:18:02 -0700 (PDT)
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3A39HDMF020188;
	Fri, 3 Nov 2023 17:17:13 +0800 (+08)
	(envelope-from Huangzheng.Lai@unisoc.com)
Received: from SHDLP.spreadtrum.com (shmbx04.spreadtrum.com [10.0.1.214])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4SMFPn17H3z2LqmCc;
	Fri,  3 Nov 2023 17:12:29 +0800 (CST)
Received: from xm9614pcu.spreadtrum.com (10.13.2.29) by shmbx04.spreadtrum.com
 (10.0.1.214) with Microsoft SMTP Server (TLS) id 15.0.1497.23; Fri, 3 Nov
 2023 17:17:11 +0800
From: Huangzheng Lai <Huangzheng.Lai@unisoc.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang
	<baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>, <linux-i2c@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        huangzheng lai <laihuangzheng@gmail.com>,
        Huangzheng Lai <Huangzheng.Lai@unisoc.com>,
        Xiongpeng Wu
	<xiongpeng.wu@unisoc.com>
Subject: [PATCH] dt-bindings: i2c: Add yaml for Spreadtrum I2C controller
Date: Fri, 3 Nov 2023 17:16:53 +0800
Message-ID: <20231103091653.4591-1-Huangzheng.Lai@unisoc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.13.2.29]
X-ClientProxiedBy: SHCAS03.spreadtrum.com (10.0.1.207) To
 shmbx04.spreadtrum.com (10.0.1.214)
X-MAIL:SHSQR01.spreadtrum.com 3A39HDMF020188

Add a yaml file to replace the txt file. Due to the recent addition
of the 'reset' framework to the Spreadtrum I2C driver to reset the
controller, information related to the 'reset' attribute has been
added to the bindings file.

Change in V2
-Rename 'i2c-sprd.txt' to 'sprd,sc9860-i2c.yaml'.
-Add ref to i2c-controller.
-Drop items in 'compatible'.
-Add describe for 'reg' items.
-Drop 'clocks' description and just maxItems: 3.
-Fix typo in 'clo-frequency': Contains.
-Add explanation in commit message explaining why 'resets' be added.
-Drop '#size-cells' and 'address-cells' in properties and required.
-Drop description of 'resets'.
-Add child node in examples.

Signed-off-by: Huangzheng Lai <Huangzheng.Lai@unisoc.com>
---
 .../devicetree/bindings/i2c/i2c-sprd.txt      | 31 --------
 .../bindings/i2c/sprd,sc9860-i2c.yaml         | 75 +++++++++++++++++++
 2 files changed, 75 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sprd.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt b/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
deleted file mode 100644
index 7b6b3b8d0d11..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-sprd.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-I2C for Spreadtrum platforms
-
-Required properties:
-- compatible: Should be "sprd,sc9860-i2c".
-- reg: Specify the physical base address of the controller and length
-  of memory mapped region.
-- interrupts: Should contain I2C interrupt.
-- clock-names: Should contain following entries:
-  "i2c" for I2C clock,
-  "source" for I2C source (parent) clock,
-  "enable" for I2C module enable clock.
-- clocks: Should contain a clock specifier for each entry in clock-names.
-- clock-frequency: Contains desired I2C bus clock frequency in Hz.
-- #address-cells: Should be 1 to describe address cells for I2C device address.
-- #size-cells: Should be 0 means no size cell for I2C device address.
-
-Optional properties:
-- Child nodes conforming to I2C bus binding
-
-Examples:
-i2c0: i2c@70500000 {
-	compatible = "sprd,sc9860-i2c";
-	reg = <0 0x70500000 0 0x1000>;
-	interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-	clock-names = "i2c", "source", "enable";
-	clocks = <&clk_i2c3>, <&ext_26m>, <&clk_ap_apb_gates 11>;
-	clock-frequency = <400000>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-};
-
diff --git a/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml b/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml
new file mode 100644
index 000000000000..f7dd5f116e0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/sprd,sc9860-i2c.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2020 Unisoc Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/sprd,sc9860-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Unisoc I2C Controller Device
+
+maintainers:
+  - Huangzheng Lai <laihuangzheng@gmail.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: sprd,sc9860-i2c
+
+  reg:
+    description: physical base address of the controller, length of memory mapped region.
+    maxItems: 2
+
+  interrupts:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: i2c
+      - const: source
+      - const: enable
+
+  clocks:
+    maxItems: 3
+
+  clock-frequency:
+    description: Contains desired I2C bus clock frequency in Hz.
+    minimum: 100000
+    maximum: 3400000
+
+  reset-names:
+    const: i2c_rst
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clock-names
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c0: i2c@2240000 {
+            compatible = "sprd,sc9860-i2c";
+            reg = <0 0x2240000 0 0x1000>;
+            interrupts = <11>;
+            clock-names = "i2c", "source", "enable";
+            clocks = <&clk_i2c3>, <&ext_26m>, <&clk_ap_apb_gates 11>;
+            clock-frequency = <400000>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            reset-names = "i2c_rst";
+            resets = <&apahb_gate 3>;
+
+            charger@63 {
+                    compatible = "sprd,sc2731-charger";
+                    reg = <0x63>;
+            };
+    };
+
-- 
2.17.1


