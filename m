Return-Path: <devicetree+bounces-141480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B206A20E66
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D20E7A2305
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BEA1DA60B;
	Tue, 28 Jan 2025 16:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="iixA76WJ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9B91D63CE;
	Tue, 28 Jan 2025 16:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081232; cv=none; b=PT4aU2V/WTquDGcUJjY5T0rYS8p7Gw/6XJZVrsPtnZD3wbNM1fjH2H5gzHG2VxlHl3SfRmI5qLFpcP47i7xrpL99yBxNpbdThxLwa+l9SdRmsaaQUBHCtREBT03B30qJosLNJwWsmkBoRHn3us67LGuXMzLznoFJ/FKX9Ma89uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081232; c=relaxed/simple;
	bh=yhcPz2+03mIWBQr/O6LXwvLAbIxqgVlOfoEdgCRaVdM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eLW8UzCyI48iz8TxoAvhOUKNiry1oHsWpQ7oqkijm+I1O6KCDmgEcYDLTjTIaXXVGBBStL7Rc5eOHF7cvWfXHdt3S0fvAs5RepdSvJ6DhaOPM/gro9eG76RaLahwXO/TJ3oQ6NodH6AEtA9g/5wCJT0WGMksJWziupcmYsYJEJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=iixA76WJ; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738081232; x=1769617232;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yhcPz2+03mIWBQr/O6LXwvLAbIxqgVlOfoEdgCRaVdM=;
  b=iixA76WJnut2Xcbw07ui9pVQQiLJ4kdK3YeSRIuYz11iBui2gZkvZVhq
   hG1wNtk0H+QFsG/nmDa0h4YwAvJMvPx7xWq3AKyX+XhDNYXRrdYdKdu3c
   ky0SfUfT3V6J74ccCWSanXd430vb9f2/lwOL5JGdXeNRmMgwx/UFP4gcp
   J4fVKY7PDtEuJBSd7CHZNg23FCljEk5s24dFeHZ6K7GY+Ujh5bqxq1oSB
   4ry1znoZFSR+QSus5fYWD7yt8f+XmLwwIIObWrMpi1wi7Yjq+omysRfXD
   b4Yt+zTa5TH3NTa8C5b5umBYuWrutVihr8AGM8LYJVTDIV+h3UOPAbzIu
   Q==;
X-CSE-ConnectionGUID: gZUkyJ0GT6+5er0WEIFfZw==
X-CSE-MsgGUID: 7RK9+KxdQ32dL7to83cUFQ==
X-IronPort-AV: E=Sophos;i="6.13,241,1732604400"; 
   d="scan'208";a="37017197"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 28 Jan 2025 09:19:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 28 Jan 2025 09:19:10 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Tue, 28 Jan 2025 09:19:07 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <broonie@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrei Simion <andrei.simion@microchip.com>
Subject: [PATCH 1/2] dt-bindings: misc: atmel,at91-ssc: Convert to YAML format
Date: Tue, 28 Jan 2025 18:18:43 +0200
Message-ID: <20250128161842.44541-2-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250128161842.44541-1-andrei.simion@microchip.com>
References: <20250128161842.44541-1-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Convert devicetree binding atmel-ssc.txt to YAML format.

Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
---
 .../bindings/misc/atmel,at91-ssc.yaml         | 111 ++++++++++++++++++
 .../devicetree/bindings/misc/atmel-ssc.txt    |  50 --------
 2 files changed, 111 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
 delete mode 100644 Documentation/devicetree/bindings/misc/atmel-ssc.txt

diff --git a/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml b/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
new file mode 100644
index 0000000000000..a37ee5e58fa58
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/atmel,at91-ssc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel Serial Synchronous Serial (SSC)
+
+maintainers:
+  - Andrei Simion <andrei.simion@microchip.com>
+
+description:
+  The Atmel Synchronous Serial Controller (SSC) provides a versatile
+  synchronous communication link for audio and telecom applications,
+  supporting protocols like I2S, Short Frame Sync, and Long Frame Sync.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - atmel,at91rm9200-ssc
+          - atmel,at91sam9g45-ssc
+      - items:
+          - const: microchip,sam9x7-ssc
+          - const: atmel,at91sam9g45-ssc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
+  dmas:
+    items:
+      - description: TX DMA Channel
+      - description: RX DMA Channel
+
+  dma-names:
+    description: Names of the DMA channels.
+    items:
+      - const: tx
+      - const: rx
+
+  atmel,clk-from-rk-pin:
+    description:
+      Specify the clock source for the SSC (Synchronous Serial Controller)
+      when operating in slave mode. By default, the clock is sourced from
+      the TK pin. Set this property to true to source the clock from
+      the RK pin instead, based on your hardware design requirements.
+    type: boolean
+
+allOf:
+  - $ref: ../sound/dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - atmel,at91sam9g45-ssc
+    then:
+      required:
+        - compatible
+        - reg
+        - interrupts
+        - dmas
+        - dma-names
+        - clocks
+        - clock-names
+    else:
+      required:
+        - compatible
+        - reg
+        - interrupts
+        - clocks
+        - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/dma/at91.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    ssc@100000 {
+       compatible = "atmel,at91sam9g45-ssc";
+       reg = <0x100000 0x4000>;
+       interrupts = <28 IRQ_TYPE_LEVEL_HIGH 5>;
+       dmas = <&dma0 (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+                     AT91_XDMAC_DT_PERID(38))>,
+              <&dma0 (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+                     AT91_XDMAC_DT_PERID(39))>;
+       dma-names = "tx", "rx";
+       clocks = <&pmc PMC_TYPE_PERIPHERAL 28>;
+       clock-names = "pclk";
+    };
+
+    ssc@c00000 {
+      compatible = "atmel,at91rm9200-ssc";
+      reg = <0xc00000 0x4000>;
+      interrupts = <14 IRQ_TYPE_LEVEL_HIGH 5>;
+      clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
+      clock-names = "pclk";
+    };
diff --git a/Documentation/devicetree/bindings/misc/atmel-ssc.txt b/Documentation/devicetree/bindings/misc/atmel-ssc.txt
deleted file mode 100644
index f9fb412642fe0..0000000000000
--- a/Documentation/devicetree/bindings/misc/atmel-ssc.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-* Atmel SSC driver.
-
-Required properties:
-- compatible: "atmel,at91rm9200-ssc" or "atmel,at91sam9g45-ssc"
-	- atmel,at91rm9200-ssc: support pdc transfer
-	- atmel,at91sam9g45-ssc: support dma transfer
-- reg: Should contain SSC registers location and length
-- interrupts: Should contain SSC interrupt
-- clock-names: tuple listing input clock names.
-	Required elements: "pclk"
-- clocks: phandles to input clocks.
-
-
-Required properties for devices compatible with "atmel,at91sam9g45-ssc":
-- dmas: DMA specifier, consisting of a phandle to DMA controller node,
-  the memory interface and SSC DMA channel ID (for tx and rx).
-  See Documentation/devicetree/bindings/dma/atmel-dma.txt for details.
-- dma-names: Must be "tx", "rx".
-
-Optional properties:
-  - atmel,clk-from-rk-pin: bool property.
-     - When SSC works in slave mode, according to the hardware design, the
-       clock can get from TK pin, and also can get from RK pin. So, add
-       this parameter to choose where the clock from.
-     - By default the clock is from TK pin, if the clock from RK pin, this
-       property is needed.
-  - #sound-dai-cells: Should contain <0>.
-     - This property makes the SSC into an automatically registered DAI.
-
-Examples:
-- PDC transfer:
-ssc0: ssc@fffbc000 {
-	compatible = "atmel,at91rm9200-ssc";
-	reg = <0xfffbc000 0x4000>;
-	interrupts = <14 4 5>;
-	clocks = <&ssc0_clk>;
-	clock-names = "pclk";
-};
-
-- DMA transfer:
-ssc0: ssc@f0010000 {
-      compatible = "atmel,at91sam9g45-ssc";
-      reg = <0xf0010000 0x4000>;
-      interrupts = <28 4 5>;
-      dmas = <&dma0 1 13>,
-	     <&dma0 1 14>;
-      dma-names = "tx", "rx";
-      pinctrl-names = "default";
-      pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-};
-- 
2.34.1


