Return-Path: <devicetree+bounces-6100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB70C7B9D82
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:48:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C9B151C20942
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790CF25110;
	Thu,  5 Oct 2023 13:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="lXOW4IYt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE5324205
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:48:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BACE7;
	Thu,  5 Oct 2023 06:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696513710; x=1728049710;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=v+okn4KDE0Jh/SeH/Yc5Kcs3VNsIMzK5+c32V9VGkMY=;
  b=lXOW4IYtbiAuhuGql4XYHJDG8paGuU3srPxZDvpA+46juc8Ww4LL+1A+
   +GXTTU7ZPcxeoZGY1YK1NRByTwxJz6Gz4AoVXTbNtyZSVjsHZH8+ussEM
   gqzmeh3uIBBuPVPKlPBuYMbzdNcJDDHR1lKvZUN6wWzV3FeW3nHMguj1O
   xl5BsmaJDKEIn2F7ADlXEfxPHsyB4+l1n6NhiWHnoqayBDBsHS6ZZgmbh
   juOT6NXFP6M5WQ3kMIR1powre5jjSJxMZFAVCoDss3ATmoSI8SFb30FiY
   cOi6aPJkM/TqmqY7URT4WYmmOOrxDLIpA51/873d+xEXjR3TaLSqNU6C9
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="469675367"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="469675367"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2023 22:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867737716"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="867737716"
Received: from unknown (HELO localhost.localdomain) ([10.226.216.116])
  by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2023 22:18:35 -0700
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
Subject: [PATCH v2] dt-bindings: mtd: cadence: convert cadence-nand-controller.txt to yaml
Date: Thu,  5 Oct 2023 13:15:48 +0800
Message-Id: <20231005051548.55122-1-niravkumar.l.rabara@intel.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>

Convert cadence-nand-controller.txt to yaml format.
Update cadence-nand-controller.txt to cadence,nand.yaml in MAINTAINER file.

Signed-off-by: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
---
 .../devicetree/bindings/mtd/cadence,nand.yaml | 73 +++++++++++++++++++
 .../bindings/mtd/cadence-nand-controller.txt  | 53 --------------
 MAINTAINERS                                   |  2 +-
 3 files changed, 74 insertions(+), 54 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/cadence,nand.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt

diff --git a/Documentation/devicetree/bindings/mtd/cadence,nand.yaml b/Documentation/devicetree/bindings/mtd/cadence,nand.yaml
new file mode 100644
index 000000000000..781812ac702f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/cadence,nand.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/cadence,nand.yaml#
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
+      - description: Address and length of the controller register set
+      - description: Address and length of the Slave DMA data port
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
+      nand-controller@10b80000 {
+        compatible = "cdns,hp-nfc";
+        reg = <0x10b80000 0x10000>,
+            <0x10840000 0x10000>;
+        reg-names = "reg", "sdma";
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <0 97 4>;
+        clocks = <&nf_clk>;
+        cdns,board-delay-ps = <4830>;
+
+        nand@0 {
+            reg = <0>;
+        };
+      };
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..502963390646 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4474,7 +4474,7 @@ F:	drivers/media/platform/cadence/cdns-csi2*
 CADENCE NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-F:	Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt
+F:	Documentation/devicetree/bindings/mtd/cadence,nand.yaml
 F:	drivers/mtd/nand/raw/cadence-nand-controller.c
 
 CADENCE USB3 DRD IP DRIVER
-- 
2.25.1


