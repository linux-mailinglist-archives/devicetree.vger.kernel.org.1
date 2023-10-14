Return-Path: <devicetree+bounces-8620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3CE7C9486
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 14:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3CD28B20B34
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 12:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4ED11702;
	Sat, 14 Oct 2023 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="g9ub/JIT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C56101D1
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 12:07:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 386E5A2;
	Sat, 14 Oct 2023 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697285250; x=1728821250;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=TPUAKcvpY63K63QVha7oINqOiBDJBRMTvW/Gw4SWYfs=;
  b=g9ub/JITJ+P66LFRBPuzuVDqe1hMgvdBLuUZj1jefU1PG03jNlHxQohh
   cQfo++Fs5KRXYrllBZ8Hzq9Y/Mnb7fvUNYpYujYfrVUW/xgKyFmmxOhwc
   CMyke8l9XoEYp1IqKzz3zbZ2uJnyqmsQsvxJIYEY2eM4xXWg6SelZeo6X
   X5MYzAiXfsV7rmuAtBfCTjOJjdypCl7wRJSJK5BFIPNC+S4K0hC4PbGVh
   yq3Hs//RCdI28sLJay6fy2VozCPpVR163uFJa1C4WrGkiQffsjM2W02bH
   HJuHuu/06Sl59eTHog56E6RECmOaQK4VQMWqXoHXlz147O/5SBbkybtek
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="389181313"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; 
   d="scan'208";a="389181313"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2023 05:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="825361804"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; 
   d="scan'208";a="825361804"
Received: from unknown (HELO localhost.localdomain) ([10.226.216.116])
  by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2023 05:07:26 -0700
From: niravkumar.l.rabara@intel.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
Cc: linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: mtd: cadence: convert cadence-nand-controller.txt to yaml
Date: Sat, 14 Oct 2023 20:04:36 +0800
Message-Id: <20231014120436.1515339-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Convert cadence-nand-controller.txt to yaml format.
Update cadence-nand-controller.txt to cdns,hp-nfc.yaml in MAINTAINER file.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---

Changes in v3:
- Changed file name to cdns,hp-nfc.yaml to match with compatible.
- Update description, fixed alignment, and used defines for interrupt
  flag as per review comments in v2.

Changes in v2:
- Update name cadence-nand-controller.txt to cadence,nand.yaml in MAINTAINER
  file to resolve the warning.

 .../bindings/mtd/cadence-nand-controller.txt  | 53 -------------
 .../devicetree/bindings/mtd/cdns,hp-nfc.yaml  | 75 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 76 insertions(+), 54 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml

diff --git a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt b/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
deleted file mode 100644
index d2eada5044b2..000000000000
--- a/Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
+++ /dev/null
@@ -1,53 +0,0 @@
-* Cadence NAND controller
-
-Required properties:
-  - compatible : "cdns,hp-nfc"
-  - reg : Contains two entries, each of which is a tuple consisting of a
-	  physical address and length. The first entry is the address and
-	  length of the controller register set. The second entry is the
-	  address and length of the Slave DMA data port.
-  - reg-names: should contain "reg" and "sdma"
-  - #address-cells: should be 1. The cell encodes the chip select connection.
-  - #size-cells : should be 0.
-  - interrupts : The interrupt number.
-  - clocks: phandle of the controller core clock (nf_clk).
-
-Optional properties:
-  - dmas: shall reference DMA channel associated to the NAND controller
-  - cdns,board-delay-ps : Estimated Board delay. The value includes the total
-    round trip delay for the signals and is used for deciding on values
-    associated with data read capture. The example formula for SDR mode is
-    the following:
-    board delay = RE#PAD delay + PCB trace to device + PCB trace from device
-    + DQ PAD delay
-
-Child nodes represent the available NAND chips.
-
-Required properties of NAND chips:
-  - reg: shall contain the native Chip Select ids from 0 to max supported by
-    the cadence nand flash controller
-
-See Documentation/devicetree/bindings/mtd/nand-controller.yaml for more details on
-generic bindings.
-
-Example:
-
-nand_controller: nand-controller@60000000 {
-	  compatible = "cdns,hp-nfc";
-	  #address-cells = <1>;
-	  #size-cells = <0>;
-	  reg = <0x60000000 0x10000>, <0x80000000 0x10000>;
-	  reg-names = "reg", "sdma";
-	  clocks = <&nf_clk>;
-	  cdns,board-delay-ps = <4830>;
-	  interrupts = <2 0>;
-	  nand@0 {
-	      reg = <0>;
-	      label = "nand-1";
-	  };
-	  nand@1 {
-	      reg = <1>;
-	      label = "nand-2";
-	  };
-
-};
diff --git a/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml b/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
new file mode 100644
index 000000000000..402930995bd7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/cdns,hp-nfc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence NAND controller
+
+maintainers:
+  - Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
+
+allOf:
+  - $ref: nand-controller.yaml
+
+properties:
+  compatible:
+    items:
+      - const: cdns,hp-nfc
+
+  reg:
+    items:
+      - description: Controller register set
+      - description: Slave DMA data port register set
+
+  reg-names:
+    items:
+      - const: reg
+      - const: sdma
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  cdns,board-delay-ps:
+    description: |
+      Estimated Board delay. The value includes the total round trip
+      delay for the signals and is used for deciding on values associated
+      with data read capture. The example formula for SDR mode is the
+      following.
+      board delay = RE#PAD delay + PCB trace to device + PCB trace from device
+      + DQ PAD delay
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    nand-controller@10b80000 {
+        compatible = "cdns,hp-nfc";
+        reg = <0x10b80000 0x10000>,
+              <0x10840000 0x10000>;
+        reg-names = "reg", "sdma";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&nf_clk>;
+        cdns,board-delay-ps = <4830>;
+
+        nand@0 {
+            reg = <0>;
+        };
+      };
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..226efb6352e2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4474,7 +4474,7 @@ F:	drivers/media/platform/cadence/cdns-csi2*
 CADENCE NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-F:	Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
+F:	Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml
 F:	drivers/mtd/nand/raw/cadence-nand-controller.c
 
 CADENCE USB3 DRD IP DRIVER
-- 
2.25.1


