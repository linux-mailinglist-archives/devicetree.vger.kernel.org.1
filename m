Return-Path: <devicetree+bounces-189132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B31BAE6D70
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 19:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 015DC1761F0
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 17:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4FB62989B0;
	Tue, 24 Jun 2025 17:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMzeX9fD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEDB1A8F60
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 17:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750785569; cv=none; b=NanKpI+J7lBh5AG9UNjIf4MOVIMmTkPpDMX/Hd4SQzOWiOYgr0SJoHJCcazP8xft0+qrlw7/+CnjTkJnInXYFCh1z0UonXYhENokmBYwPbXSgjwlypo/BgzAc3o5Wk/y1BxrDIvA/AX9Rlu/wZvtzEUCBrTq2WdARYkRSVIaix8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750785569; c=relaxed/simple;
	bh=f4fO3gspUXwm6yLiX9zli1umyV3b5sjU5/AkqFFShks=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FB2eVUg5JTAU3ij+Nk/f5ao7tE2SNsBiyuPTv0ZzJH+KgcKaXp25f2/oGvQCY93p+G0V/STP7l9jyIdmylK+ye/z2Xy8htQ/MB36tP8Ll3WjygKHSgn+5aSwnF2AZqpFMXRUYet70eSXvPDdoH3ZixQVW+hfLghrKdknSNxN5tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMzeX9fD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4CC4C4CEE3;
	Tue, 24 Jun 2025 17:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750785569;
	bh=f4fO3gspUXwm6yLiX9zli1umyV3b5sjU5/AkqFFShks=;
	h=From:To:Cc:Subject:Date:From;
	b=cMzeX9fDYAPfwDcT/2YNg6t7zbQHMyKrrPk+U5UL57m8jtSJP+LdbPUHOyQ8jN/2o
	 9ScKApVImDHfm9fQ4amU2soaalaM3QEcy7kYlIptYc3iSdU+DEsoh5Vz/Odc9pzxFA
	 e6zWZxMGhudd/TI2drgsOlFikkT6q8R7WBfnvR5VO3GCE3gFbnMmNlpJFvkCzahtLs
	 DP4AzEcGTxOtduWaX5Ba2yXfJx9TGC+z8mGUxxMwUCsu5Gf0KsC1x/Y++HEnrEyRVI
	 VNJy2HQSUVjTUpWOCnnwSid5sSO7zOQgQO7TbsSjXRRcTGsIKgzMJn8VZ1cfoED+WP
	 UmZRPesEePKTg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCHv3] dt-bindings: net: convert socfpga-dwmac.txt to DT schema
Date: Tue, 24 Jun 2025 12:19:24 -0500
Message-ID: <20250624171924.433301-1-dinguyen@kernel.org>
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
v3: Address all of Rob Herring's comments
v2: Add allOf to include the base dmac yaml
    fix Rob Herring's dt_binding_check warnings
---
 .../bindings/net/altr,dwmac-socfpga.yaml      | 139 ++++++++++++++++++
 .../devicetree/bindings/net/socfpga-dwmac.txt |  57 -------
 2 files changed, 139 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt

diff --git a/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
new file mode 100644
index 000000000000..6ec369ea9e66
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
@@ -0,0 +1,139 @@
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
+    maxItems: 2
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


