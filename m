Return-Path: <devicetree+bounces-189165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D96AE6F56
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 21:15:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A50F217F102
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 19:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D7A317A2E2;
	Tue, 24 Jun 2025 19:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjuriQmX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387A51EF1D
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750792555; cv=none; b=RrlNEr3LKCSFPgtJVvgMOT/toZLlbj2R2ET7QwDdGl+m4wzHEqdToDxQbnKgrwm8Md+LQKjxmAxPdk5sB7ShHkroZ/eAUUNpOy2IjMCAGzo17cznLH80ymSwiBlhznS/wmvhkaqKYqPXWyiRaxeWywQM7Yin2djtDBDFWbZy3Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750792555; c=relaxed/simple;
	bh=tykJAYjaAngA3M5JYwQhs/lC11AMboBXgyt6vjavRwc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o9pRnbDI9udhUEKVmm5vyCtD7yo/KyoJBjahIc1WBkaXF9zGNmCCYu6ZSn4+3waWFvsc2LP7VKu9P9Dd/7yeLHzYfOTYMtsBhJTNciMzrzRUa0Yv907Po9MhBPfQ6QrdXJXaXoFFs4gAqhM0H04N9R+H8CTqFKm/FgxT6UBMm2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjuriQmX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5987AC4CEEF;
	Tue, 24 Jun 2025 19:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750792554;
	bh=tykJAYjaAngA3M5JYwQhs/lC11AMboBXgyt6vjavRwc=;
	h=From:To:Cc:Subject:Date:From;
	b=YjuriQmXopUl1VG95mV/DR2bkoneEGVBA1VrEveReMvViQcOs4wFdm7IwMdtf96q1
	 PSxMf1r+pcrMb4siALc0FtfAgieqkndwJY+CtTqATtV4fRElYtjg9hdbmNX6HLtLhG
	 b4LdyAJ/P/okLWF/BBOJVqTQyxI1SKoHboiIHujy+rQ1+vMtFzrJdFMWbibjC+M9wG
	 ntWiDyG24zvBdc6iLvv4/jGlPp9vys3eIKWUK9QfJZdlCH6yXw4qW6obUzbJXeMlZE
	 l7AP3Yqqdv5jNeXaFnAy1LJsCTNj28ynLvZ3srdH0gA9SDXzfiTZaNOJNlnG43TTgg
	 dXfPbwGMLJ6xA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCHv4] dt-bindings: net: convert socfpga-dwmac.txt to DT schema
Date: Tue, 24 Jun 2025 14:15:49 -0500
Message-ID: <20250624191549.474686-1-dinguyen@kernel.org>
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
v4: remove maxItems for clock-names
v3: Address all of Rob Herring's comments
v2: Add allOf to include the base dmac yaml
    fix Rob Herring's dt_binding_check warnings
---
 .../bindings/net/altr,dwmac-socfpga.yaml      | 138 ++++++++++++++++++
 .../devicetree/bindings/net/socfpga-dwmac.txt |  57 --------
 2 files changed, 138 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt

diff --git a/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
new file mode 100644
index 000000000000..e852d282d37a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
@@ -0,0 +1,138 @@
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
+    oneOf:
+      - items:
+          - const: altr,socfpga-stmmac
+          - const: snps,dwmac-3.70a
+          - const: snps,dwmac
+      - items:
+          - const: altr,socfpga-stmmac-a10-s10
+          - const: snps,dwmac-3.72a
+          - const: snps,dwmac
+      - items:
+          - const: altr,socfpga-stmmac-a10-s10
+          - const: snps,dwmac-3.74a
+          - const: snps,dwmac
+
+  reg:
+    maxItems: 1
+
+  iommus:
+    minItems: 1
+    maxItems: 2
+
+  clocks:
+    minItems: 1
+    items:
+      - description: GMAC main clock
+      - description: PTP clock
+
+  clock-names:
+    minItems: 1
+    items:
+      - const: stmmaceth
+      - const: ptp_ref
+
+  resets:
+    minItems: 1
+    items:
+      - description: GMAC stmmaceth reset
+      - description: AHB reset
+
+  reset-names:
+    minItems: 1
+    items:
+      - const: stmmaceth
+      - const: ahb
+
+  interrupts:
+    items:
+      - description: DWMAC interrupt
+
+  interrupt-names:
+    items:
+      - const: macirq
+
+  phy-mode:
+    maxItems: 1
+    items:
+      enum:
+        - rgmii
+        - gmii
+        - mii
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
+unevaluatedProperties: false
+
+examples:
+  - |
+    gmac0: ethernet@ff700000 {
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


