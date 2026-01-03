Return-Path: <devicetree+bounces-251188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 240F5CEFE59
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 12:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 713523014DE0
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 11:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A36030B533;
	Sat,  3 Jan 2026 11:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mQYSOmti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C702D838C
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 11:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767438422; cv=none; b=X3GQ3Vj+umjJrSkcX6iD76o8owMrGuWX1aWgHfSSV+xu/8Nwxn6969TERcbrv+BQZe5Eids5naxyeIrMP/Tn/hILi+CSdTYzylrx7axZ9Vff7I805C3QejoDfc9FZeAhHsqyL5VzbrZCho7LLVDRUI+cgeDsq2zffklGP2PN2sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767438422; c=relaxed/simple;
	bh=xhuVP0IAM1Flv7hpNjiFjSzL9aw39gSt6RojuIs9r9k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=cMT8EhlmGX52VkAUYRjF8GjS/3LlnFF7IFaWeuIjuXsgaHzvRf3vDv8CNxz/dlIi3PMenkjaWU1OOSz9k4lQjTjsYQDqu1Dl0pZFVmx8cbBQmN8zA4oH6FqsorUoL/jDwH4zEbXP1pGxR34q0bE0FMNYPobBY3cMkRlmISYXKbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mQYSOmti; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7f651586be1so253626b3a.1
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 03:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767438418; x=1768043218; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/qXjdEM0PiM5e6vNdQXr41n+NvZL846nY2Dsa0NWVco=;
        b=mQYSOmtiJtjNgES9V87dMdHdAc9bzLG2hXIjuJicRIsKhcwPI9N4d4LqXkhe7k3gey
         Ix0VoaPr+KOdLfXgIAX30vupRBEHBy+Qnj8CsLpbYYCbtb74zNzX+8uUYTSElKBtX0vj
         iWvOOk+ed0LuJhXiSZbJRVKUoO3IUsTk7EK/e5cv33lB9RlIYkQsOTBNZdqOD3uIzWh8
         4IaqCyOFx5s5AirubzlLZIVbdaulD8ajJlHBFLq0iJidzPetj2TWkkrV1FxfOFK2+aTR
         S9oTOpHDcz04vrvG7VbRbawCx85CjxkwTipCtOvJGXmPbwbvRFKuCvst93Ksz82ba4Xq
         AOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767438418; x=1768043218;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qXjdEM0PiM5e6vNdQXr41n+NvZL846nY2Dsa0NWVco=;
        b=FEjVCiajGO+gKTRjuQ8ROZrUHB/9ZQmPo/13+G1cwH1ZYWTsm3hcTvzxRcHdbaoKZ6
         zadCr0OGKZAGOM+A5al3EVBjMoQi6IZ3N89MAV9WFl5ABsNzSOKehe3NKomQIWqaKnP+
         wySk9PhkDKCaOXbjRbXs99x2FlT6Fwqp9WOuJwI5OyHW7pdAEg/C6cgKttYNmkGtq5fx
         F8FgmR/cXiGNkfS5KK8bOpQ315tXD2c4ricdS+yeoaKmRz0t5s4ybzbo6rdbf7yu7uw9
         wk4qCLQLrxY2j80WTpj5xYOhbnzCMsgJnSNuX0StO6zjw4lQ6M0AxGghsR0hWl7lEL6U
         Ri0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFBQlFBIrz8KwmS83NQnpPZxBCKJ0bGXTZUoI4W30Y42P/P92SAD27ydpM+draJbOrZhypfgYppKt6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7daKsH3QYSUO8u+QaiQQQHoWjxYilB9lWeCmEJ69c7XCnrVAJ
	4Idh7fZIN8h8EdoiciEq+yLNWsRrvLP1T9hCqP0pW/MLTFEZNbfntoHI
X-Gm-Gg: AY/fxX4TXMk3alBLmYlfqNdmrCXprb0oULK8jDNOwl4BsvI6r9bGPG4XcSb2fx3CqBv
	ffQth3FCswGAYLgt5COQYAdzdnMLq/Ziuo+BVsnEDfJL/mDt/HdeMu5zQB8LUL7gRYhDNoLP/Nc
	WkuPQvP8XvOt2WNyYVzGGbEE0pxaExcFKEfeWxWJLsCmK5q43jwM5fc75p2UxxK1m6c795cjdAP
	T4bvArskG8PGnK49S/wWO3uUAAc8GgzxB45TTR3TA1EaxqHokkTH7iPRsfuHDXgRblra2+vDLMN
	xCnJtM/L2Wr+VGWL2au6lYuL4QtiUF7fvb/HB30z+m1rnzyweN8cvko3BlYHmp9ZkE1HYiWGlWz
	pVZ5DWbeK34BwUGNk0jfUz4oOGvZEvKUtmITkloFsVHan4Zm3ldL1+TRuE/haSUf9XprKak8zBD
	rzBsHsHPHjHqzquRqPdvknukoh/XsVrg+3cg==
X-Google-Smtp-Source: AGHT+IHBTpuqCkcGdKPEZcXGW5io0CXIBbVL2fvT6qgAxrAZ7lPVD9hE8XhbGTqOQ9gl7T++4U1kUQ==
X-Received: by 2002:aa7:9f4c:0:b0:7e8:3fcb:9b03 with SMTP id d2e1a72fcca58-8148c00b373mr1481328b3a.25.1767438417926;
        Sat, 03 Jan 2026 03:06:57 -0800 (PST)
Received: from Black-Pearl.localdomain ([122.181.60.165])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f300sm42961246b3a.54.2026.01.03.03.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 03:06:57 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 03 Jan 2026 11:06:10 +0000
Subject: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
X-B4-Tracking: v=1; b=H4sIACL4WGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI2ND3ZJM3YKMSl1Ti6Qky1Rji+S0ZEsloOKCotS0zAqwQdGxtbUAkD4
 ckFgAAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
Changes during conversion:
- Define a new pattern 'pciephy'and 'control-phy' to match nodes
  defined in DT.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
 2 files changed, 206 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..830be2af5fb6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,206 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  This device tree binding describes the TI PHYs used in TI platforms.
+  Two types of PHYs are supported.
+  1. OMAP Control PHY - Simple control PHYs for power control
+  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
+
+properties:
+  $nodename:
+    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"
+
+  compatible:
+    oneOf:
+      - description: OMAP Control PHY compatibles
+        items:
+          enum:
+            - ti,control-phy-otghs
+            - ti,control-phy-usb2
+            - ti,control-phy-pipe3
+            - ti,control-phy-pcie
+            - ti,control-phy-usb2-dra7
+            - ti,control-phy-usb2-am437
+      - description: PIPE3 high-speed PHY compatibles
+        items:
+          enum:
+            - ti,phy-usb3
+            - ti,phy-pipe3-sata
+            - ti,phy-pipe3-pcie
+            - ti,omap-usb3
+
+  reg:
+    minItems: 1
+    maxItems: 4
+
+  reg-names:
+    oneOf:
+      - description: OMAP Control PHY
+        items:
+          enum: [otghs_control, power, pcie_pcs, control_sma]
+      - description: PIPE3 high-speed PHY
+        items:
+          enum: [phy_rx, phy_tx, pll_ctrl]
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 7
+
+  clock-names:
+    minItems: 2
+    maxItems: 7
+    items:
+      enum: [wkupclk, sysclk, refclk, dpll_ref,
+             dpll_ref_m2, phy-div, div-clk]
+
+# Optional Properties
+  id:
+    description:
+      Instance ID for multiple instances of same PHY type.
+      Used for multi-lane PCIe PHYs.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1
+
+  syscon-phy-power:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module register for PHY
+      power on/off.
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
+      SATA_PLL_SOFT_RESET bit (SATA PHY only).
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module for writing PCS delay value.
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+dependencies:
+  syscon-pllreset:
+    properties:
+      compatible:
+        contains:
+          const: ti,phy-pipe3-sata
+
+allOf:
+  # OMAP Control PHY validation
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-otghs
+    then:
+      properties:
+        reg-names:
+          const: otghs_control
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-pcie
+    then:
+      properties:
+        reg-names:
+          items:
+            - enum: [power, pcie_pcs, control_sma]
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-usb2
+              - ti,control-phy-usb2-dra7
+              - ti,control-phy-usb2-am437
+              - ti,control-phy-pipe3
+    then:
+      properties:
+        reg-names:
+          const: power
+
+  # PIPE3 PHY validation
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,phy-usb3
+              - ti,phy-pipe3-sata
+              - ti,phy-pipe3-pcie
+              - ti,omap-usb3
+    then:
+      required:
+        - "#phy-cells"
+        - clocks
+        - clock-names
+
+required:
+  - reg
+  - compatible
+  - reg-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    /* OMAP Control PHY (USB OTG HS) */
+    control-phy@4a00233c {
+        compatible = "ti,control-phy-otghs";
+        reg = <0x4a00233c 0x4>;
+        reg-names = "otghs_control";
+    };
+
+  - |
+    /* TI PIPE3 USB3 PHY */
+    usb3phy@4a084400 {
+        compatible = "ti,phy-usb3";
+        reg = <0x4a084400 0x80>,
+              <0x4a084800 0x64>,
+              <0x4a084c00 0x40>;
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        #phy-cells = <0>;
+        clocks = <&usb_phy_cm_clk32k>,
+                 <&sys_clkin>,
+                 <&usb_otg_ss_refclk960m>;
+        clock-names = "wkupclk", "sysclk", "refclk";
+        ctrl-module = <&omap_control_usb>;
+    };
+
+  - |
+    /* TI PIPE3 SATA PHY */
+    phy@4a096000 {
+        compatible = "ti,phy-pipe3-sata";
+        reg = <0x4A096000 0x80>,  /* phy_rx */
+              <0x4A096400 0x64>,  /* phy_tx */
+              <0x4A096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
deleted file mode 100644
index 7c7936b89f2c..000000000000
--- a/Documentation/devicetree/bindings/phy/ti-phy.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
-
-OMAP CONTROL PHY
-
-Required properties:
- - compatible: Should be one of
- "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
- "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
-                        e.g. USB2_PHY on OMAP5.
- "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
-                        e.g. USB3 PHY and SATA PHY on OMAP5.
- "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
-			set PCS delay value.
-			e.g. PCIE PHY in DRA7x
- "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
-                        DRA7 platform.
- "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
-                        AM437 platform.
- - reg : register ranges as listed in the reg-names property
- - reg-names: "otghs_control" for control-phy-otghs
-	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
-	      "power" for all other types
-
-omap_control_usb: omap-control-usb@4a002300 {
-        compatible = "ti,control-phy-otghs";
-        reg = <0x4a00233c 0x4>;
-        reg-names = "otghs_control";
-};
-
-TI PIPE3 PHY
-
-Required properties:
- - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
-   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
- - reg : Address and length of the register set for the device.
- - reg-names: The names of the register addresses corresponding to the registers
-   filled in "reg".
- - #phy-cells: determine the number of cells that should be given in the
-   phandle while referencing this phy.
- - clocks: a list of phandles and clock-specifier pairs, one for each entry in
-   clock-names.
- - clock-names: should include:
-   * "wkupclk" - wakeup clock.
-   * "sysclk" - system clock.
-   * "refclk" - reference clock.
-   * "dpll_ref" - external dpll ref clk
-   * "dpll_ref_m2" - external dpll ref clk
-   * "phy-div" - divider for apll
-   * "div-clk" - apll clock
-
-Optional properties:
- - id: If there are multiple instance of the same type, in order to
-   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
-   PHY). If "id" is not provided, it is set to default value of '1'.
- - syscon-pllreset: Handle to system control region that contains the
-   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
-   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
- - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
-   register offset to write the PCS delay value.
-
-Deprecated properties:
- - ctrl-module : phandle of the control module used by PHY driver to power on
-   the PHY.
-
-Recommended properties:
- - syscon-phy-power : phandle/offset pair. Phandle to the system control
-   module and the register offset to power on/off the PHY.
-
-This is usually a subnode of ocp2scp to which it is connected.
-
-usb3phy@4a084400 {
-	compatible = "ti,phy-usb3";
-	reg = <0x4a084400 0x80>,
-	      <0x4a084800 0x64>,
-	      <0x4a084c00 0x40>;
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_usb>;
-	#phy-cells = <0>;
-	clocks = <&usb_phy_cm_clk32k>,
-		 <&sys_clkin>,
-		 <&usb_otg_ss_refclk960m>;
-	clock-names =	"wkupclk",
-			"sysclk",
-			"refclk";
-};
-
-sata_phy: phy@4a096000 {
-	compatible = "ti,phy-pipe3-sata";
-	reg = <0x4A096000 0x80>, /* phy_rx */
-	      <0x4A096400 0x64>, /* phy_tx */
-	      <0x4A096800 0x40>; /* pll_ctrl */
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_sata>;
-	clocks = <&sys_clkin1>, <&sata_ref_clk>;
-	clock-names = "sysclk", "refclk";
-	syscon-pllreset = <&scm_conf 0x3fc>;
-	#phy-cells = <0>;
-};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


