Return-Path: <devicetree+bounces-188758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B38DAAE4DA6
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 21:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3D0B3A9E4D
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 19:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162C525D55D;
	Mon, 23 Jun 2025 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUQwP8zp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D191EEA47
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750707401; cv=none; b=HuTYwVXt3l6R+Va1ybzHvr1JR6yT++l8OGV2bD9AzpMBUWTQWvRZTTns9c6eCyEjmEiC3DNvhe7gBnAe0hzhQ8He9FQp7wvXAFXafJ6DD7k1TM3+e4LTA/XXrTeY6JqGVLYb8jZ4XwgweEh5XHYNlMwg1HL14HDLxb8AVbgj8tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750707401; c=relaxed/simple;
	bh=VFiH6uHcD0q5xdjf14NoloWG/jpZNe1Bbp/UwT4ZEQk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VE1i/PMMkjMYb6bqBYKLw38zrHkkONvmnzMnu6ve5C3TthD2eAD/u32bFKPCowW4kdUH6bVQUp2k6ZNRy4MIZTL4Nrz+cBIBU4IKpwkTapjfnfku7NCPi1XK/I7KAlc6SRsQ+nQ1z6ySuiWFX5nL8815sphnd6f+CYGK/oBOFdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUQwP8zp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E18C4CEEA;
	Mon, 23 Jun 2025 19:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750707400;
	bh=VFiH6uHcD0q5xdjf14NoloWG/jpZNe1Bbp/UwT4ZEQk=;
	h=From:To:Cc:Subject:Date:From;
	b=fUQwP8zpLtykV1bAA7gqGNFp+RpzbfRt2HaWCBKk+RPHuRX8Mpt7abkF72FquTB41
	 PTzKcFNdq3G7m0RDN66b/uSymdOYdJIxdjFKEgcKUutIBcT+6oCloOmV1MpjJCHjQ3
	 0qs4t5Ldrcsq6NcnbZ7pk2i+Opdxjc6N3FGjr6b5dPwWLlJuMDFhZJjkrv9EpEtuL+
	 GFbpBUgI4cWXxedeLgn85jQ1RDm4oyd5c+57BiDSdmFSx+5wAENG7OHxZmAxnbRE7E
	 yNa8ynS4fVajwrzpQxqeNXHJGDj8Lss5rvuFaPtxSEBMOfci804wzJtUJnAnKhcWJs
	 U62Z84Z++nRig==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCHv2] dt-bindings: net: convert socfpga-dwmac.txt to DT schema
Date: Mon, 23 Jun 2025 14:36:36 -0500
Message-ID: <20250623193636.298869-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the socfpga-dwmac.txt to yaml.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: Add allOf to include the base dmac yaml
    fix Rob Herring's dt_binding_check warnings
---
 .../bindings/net/altr,dwmac-socfpga.yaml      | 162 ++++++++++++++++++
 .../devicetree/bindings/net/socfpga-dwmac.txt |  57 ------
 2 files changed, 162 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt

diff --git a/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
new file mode 100644
index 000000000000..901993aaa528
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
@@ -0,0 +1,162 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/altr,dwmac-socfpga.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel/Altera SoCFPGA DWMAC controller
+
+maintainers:
+  - Dinh Nguyen <dinguyen@kernel.org>
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - altr,socfpga-stmmac
+          - altr,socfpga-stmmac-a10-s10
+  required:
+    - compatible
+
+allOf:
+  - $ref: snps,dwmac.yaml#
+
+properties:
+  compatible:
+    additionalItems: true
+    maxItems: 3
+    items:
+      - enum:
+          - altr,socfpga-stmmac
+          - altr,socfpga-stmmac-a10-s10
+    contains:
+      enum:
+        - snps,dwmac-3.74a
+        - snps,dwmac-3.70a
+        - snps,dwmac
+
+  reg:
+    items:
+      - description: Base DWMAC registers
+
+  iommus:
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    minItems: 1
+    items:
+      - description: MAC host clock
+      - description: MAC timer clock
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
+    contains:
+      enum:
+        - stmmaceth
+        - ptp_ref
+
+  resets:
+    minItems: 1
+    items:
+      - description: GMAC stmmaceth reset
+      - description: AHB reset
+
+  reset-names:
+    oneOf:
+      - items:
+          - enum: [stmmaceth, ahb]
+      - items:
+          - const: stmmaceth
+          - const: ahb
+
+  interrupts:
+    items:
+      - description: DWAC interrupt
+
+  interrupt-names:
+    items:
+      - const: macirq
+
+  mac-address: true
+
+  phy-mode:
+    maxItems: 1
+    items:
+      enum:
+        - rgmii
+        - gmii
+        - mii
+
+  tx-fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: DWMAC Tx fifo depth(Stratix10, Agilex)
+
+  rx-fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: DWMAC Rx fifo depth(Stratix10, Agilex)
+
+  snps,multicast-filter-bins:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of multicast filter hash bins supported by this device
+      instance
+
+  altr,sysmgr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the sysmgr node
+          - description: register offset that controls the SDMMC clock phase
+          - description: register shift for the smplsel(drive in) setting
+    description:
+      Should be the phandle to the system manager node that
+      encompasses the glue register, the register offset, and the register shift.
+      On Cyclone5/Arria5, the register shift represents the PHY mode bits, while
+      on the Arria10/Stratix10/Agilex platforms, the register shift represents
+      bit for each emac to enable/disable signals from the FPGA fabric to the
+      EMAC modules.
+
+  altr,emac-splitter:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Should be the phandle to the emac splitter soft IP node if DWMAC
+      controller is connected emac splitter.
+
+  altr,sgmii-to-sgmii-converter:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the TSE SGMII converter.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - phy-mode
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        gmac0: ethernet@ff700000 {
+            compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
+            altr,sysmgr-syscon = <&sysmgr 0x60 0>;
+            reg = <0xff700000 0x2000>;
+            interrupts = <0 115 4>;
+            interrupt-names = "macirq";
+            mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
+            clocks = <&emac_0_clk>;
+            clock-names = "stmmaceth";
+            phy-mode = "rgmii";
+            tx-fifo-depth = <16384>;
+            rx-fifo-depth = <16384>;
+       };
+    };
diff --git a/Documentation/devicetree/bindings/net/socfpga-dwmac.txt b/Documentation/devicetree/bindings/net/socfpga-dwmac.txt
deleted file mode 100644
index 612a8e8abc88..000000000000
--- a/Documentation/devicetree/bindings/net/socfpga-dwmac.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Altera SOCFPGA SoC DWMAC controller
-
-This is a variant of the dwmac/stmmac driver an inherits all descriptions
-present in Documentation/devicetree/bindings/net/stmmac.txt.
-
-The device node has additional properties:
-
-Required properties:
- - compatible	: For Cyclone5/Arria5 SoCs it should contain
-		  "altr,socfpga-stmmac". For Arria10/Agilex/Stratix10 SoCs
-		  "altr,socfpga-stmmac-a10-s10".
-		  Along with "snps,dwmac" and any applicable more detailed
-		  designware version numbers documented in stmmac.txt
- - altr,sysmgr-syscon : Should be the phandle to the system manager node that
-   encompasses the glue register, the register offset, and the register shift.
-   On Cyclone5/Arria5, the register shift represents the PHY mode bits, while
-   on the Arria10/Stratix10/Agilex platforms, the register shift represents
-   bit for each emac to enable/disable signals from the FPGA fabric to the
-   EMAC modules.
- - altr,f2h_ptp_ref_clk use f2h_ptp_ref_clk instead of default eosc1 clock
-   for ptp ref clk. This affects all emacs as the clock is common.
-
-Optional properties:
-altr,emac-splitter: Should be the phandle to the emac splitter soft IP node if
-		DWMAC controller is connected emac splitter.
-phy-mode: The phy mode the ethernet operates in
-altr,sgmii-to-sgmii-converter: phandle to the TSE SGMII converter
-
-This device node has additional phandle dependency, the sgmii converter:
-
-Required properties:
- - compatible	: Should be altr,gmii-to-sgmii-2.0
- - reg-names	: Should be "eth_tse_control_port"
-
-Example:
-
-gmii_to_sgmii_converter: phy@100000240 {
-	compatible = "altr,gmii-to-sgmii-2.0";
-	reg = <0x00000001 0x00000240 0x00000008>,
-		<0x00000001 0x00000200 0x00000040>;
-	reg-names = "eth_tse_control_port";
-	clocks = <&sgmii_1_clk_0 &emac1 1 &sgmii_clk_125 &sgmii_clk_125>;
-	clock-names = "tse_pcs_ref_clk_clock_connection", "tse_rx_cdr_refclk";
-};
-
-gmac0: ethernet@ff700000 {
-	compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
-	altr,sysmgr-syscon = <&sysmgr 0x60 0>;
-	reg = <0xff700000 0x2000>;
-	interrupts = <0 115 4>;
-	interrupt-names = "macirq";
-	mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
-	clocks = <&emac_0_clk>;
-	clock-names = "stmmaceth";
-	phy-mode = "sgmii";
-	altr,gmii-to-sgmii-converter = <&gmii_to_sgmii_converter>;
-};
-- 
2.42.0.411.g813d9a9188


