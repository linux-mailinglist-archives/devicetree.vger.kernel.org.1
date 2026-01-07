Return-Path: <devicetree+bounces-252434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F788CFF07F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AB80365AEB2
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C9B3502AA;
	Wed,  7 Jan 2026 16:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JnFV41LX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF133D515
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802310; cv=none; b=blOL1VM2/zzd/00D7THFdQo2OZM3wL+Lr/u9kJdswZJSU1dQCQ/BDpngTJYunUKVPfSDywtFsMBCyv1ZmHUunVroN4wvr7v6LFDVNLFCWGGjBFN34Xs9GJyxbXq/3BrW+lr5tC61R93mX5uZdDajx1mLGZeoDcYPpK2RYMvqV/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802310; c=relaxed/simple;
	bh=EviLD4/mJjFwxNkyJ8kQD92ARlrkQwwG/YXL4MapDl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FBfdmn6JbLfBXciIhFFxRQ/6AmFh1R8DWecFgm//dMl0x+/3BB9GV5r7qW5KZ9IRKCVayHDqxP2J6bNxhFo49OkQPkbwYAl4Dp3BpURHa5IpVY4QV18rXoKSuVdoyR4/f+mH6AMbxJ/5Vs/8DJadfVJxFGJfmuslsutuzdXo0+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JnFV41LX; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so1767519b3a.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802299; x=1768407099; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3S/VWu3rjtLAXEYggnwZO63anTsADRidu6WH/Uifn/I=;
        b=JnFV41LX96mCWS56bbD9oMtsMGwoKUlSNPmgMCNGjcrdHaJ3NEmyQqJzBrM8zuQpGg
         5MNP8ulqubNE6Jv5liV9R7vMGEUNn/A8zu1bAUB4KGgQPhP8cWTbA9w8TftCqWGrJ8lR
         PIkWbwCD2WnIC4yBp6b/lIdfkDvx+HdlwDfpKvt1sAkkKWokpfLFPM/YhurzeMvcl/lP
         pfzIK/W5Dv0sKskKJ+/HFBdC5RswMHN7FEcaaikhYF5tfRyYC3/3o3ibne4UdYwK5nEP
         SZ0uCU3ag83pRqcRpW7krNrpdsAPzQCoT+Oz+URMeYTsi4y1AjgLilLV7EnoRb4XiF2P
         pF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802299; x=1768407099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3S/VWu3rjtLAXEYggnwZO63anTsADRidu6WH/Uifn/I=;
        b=NBUmvsp3W26lVwzrE/BFU01zgLvK+0/w1C4VTeyrquOwLtxvNxsi+GuawHJdEgj0lK
         5VjkhUP+J+9H60TsHBA2TdClNwuyfIthXWujLXMgQlKneHdIpPkj1IrJcWbKt0WOs5tH
         MGcghzB2ui+SZO42ed7jN5GFl0+rHyLmkQE2dIKtRUv1MptHTsChPGZaLqbfJ2eoqdnS
         YZCTjySKLtDEtsfoJ4o0+oncNCT6R0+9Dq3rG1mDyz9wi6UXTXMN5DGRgOH9UGFum/9V
         8X/NpKu/RFUKE8vL2czWRcKB4TnUkeB53ToDPcUKTjcNLXeuQQR9Rvw2o4SyS4GPHm9I
         xVUw==
X-Forwarded-Encrypted: i=1; AJvYcCWI4408qPnr1mH/F6ip+FHvHutV8ME/dykLECKKXIBEl4CuKjzgNzEo+/avBLJJcJZ5vQrBqVnAeX/+@vger.kernel.org
X-Gm-Message-State: AOJu0YzagNOKMWu7zQok/n3fefvZxmNpX61KotuBLyke+q/UAOrZlmM4
	+SosF91ySP2srheT8q/rp5aRJhepr6VlyADBx0Pew8iwZeCdBp303o89
X-Gm-Gg: AY/fxX7mletAwbzGDeTdBirXg/OuzDuRgMZSsiGq/xQFCfYqN0Xdf5HGysabQS8Qa4y
	fggUMYc4CQJVh2KOTIm+ZOraEqtiiecc356ooZu11Ikyo6DVNZy/anRWvMBYVTt6LA+3nEf6LgN
	fNKgxzomRqEiFH9/a+NPeIb+hLQX2eGEhvvTfCOWcyB+uIe8xWYWel38CJ4g855MLxQPGhGotjN
	44/udDmhUJNopujvlGk0M460OjsW2+iF6RRPDUjKLtG8feAKkImtSbmkbs+UrzipWinbiikrqgC
	9a4MAUhd8fp9YEm67CseSrItKyiOY70RtGf76wgxhbBs0DJobV/Is1EyDwt70FAok1FJf/fN8CO
	bWmdbaMhoD6/GeNV/gYmyyyIAY54KfNOXRzSUa/dmOQz1R9Ecj+sKYxvmaBIX99BqwCXhuz/aPk
	qKKQsIFyGCtY+vVyDpLwsvnkly84+DwO3GkUf6Vw==
X-Google-Smtp-Source: AGHT+IEK3qjmLNBAzRjCXOSCfmQSEWXzEYKyyWE4wHQOEYhfzG+7BSZ4jrb35hckW3y1RZ4QFOylwQ==
X-Received: by 2002:a05:6a00:339a:b0:7f6:37e5:48d2 with SMTP id d2e1a72fcca58-81b7ef0bbc4mr2676839b3a.25.1767802299413;
        Wed, 07 Jan 2026 08:11:39 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:39 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Wed, 07 Jan 2026 16:11:16 +0000
Subject: [PATCH v2 2/2] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
In-Reply-To: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3

Convert TI OMAP Control PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'control-phy' to match nodes defined in DT.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 94 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ----------------------
 2 files changed, 94 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..2c91609cac35
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI OMAP Control PHY Module
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+description:
+  The TI OMAP Control PHY module is a hardware block within the system
+  control module (SCM) of Texas Instruments OMAP SoCs. It provides
+  centralized control over power, configuration, and auxiliary features
+  for multiple on-chip PHYs. This module is essential for proper PHY
+  operation in power-constrained embedded systems.
+
+properties:
+  $nodename:
+    pattern: "^control-phy(@[0-9a-f]+)?$"
+
+  compatible:
+    enum:
+      - ti,control-phy-otghs
+      - ti,control-phy-usb2
+      - ti,control-phy-pipe3
+      - ti,control-phy-pcie
+      - ti,control-phy-usb2-dra7
+      - ti,control-phy-usb2-am437
+
+  reg:
+    minItems: 1
+    maxItems: 4
+
+  reg-names:
+    minItems: 1
+    maxItems: 4
+    items:
+      enum: [otghs_control, power, pcie_pcs, control_sma]
+
+allOf:
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
+required:
+  - reg
+  - compatible
+  - reg-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    control-phy@4a00233c {
+        compatible = "ti,control-phy-otghs";
+        reg = <0x4a00233c 0x4>;
+        reg-names = "otghs_control";
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

-- 
2.52.0


