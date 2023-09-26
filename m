Return-Path: <devicetree+bounces-3414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B177AECB7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:24:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2B83A28201B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F7A27EC8;
	Tue, 26 Sep 2023 12:24:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74EC27ED9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:24:44 +0000 (UTC)
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3678112A;
	Tue, 26 Sep 2023 05:24:42 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,177,1694703600"; 
   d="scan'208";a="177299714"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 26 Sep 2023 21:24:38 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 3DF4241FAD06;
	Tue, 26 Sep 2023 21:24:38 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com,
	mani@kernel.org
Cc: marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Serge Semin <fancer.lancer@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v23 10/16] dt-bindings: PCI: renesas: Add R-Car Gen4 PCIe Host
Date: Tue, 26 Sep 2023 21:24:25 +0900
Message-Id: <20230926122431.3974714-11-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230926122431.3974714-1-yoshihiro.shimoda.uh@renesas.com>
References: <20230926122431.3974714-1-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document bindings for Renesas R-Car Gen4 and R-Car S4-8 (R8A779F0)
PCIe host module.

Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-15-yoshihiro.shimoda.uh@renesas.com
Link: https://lore.kernel.org/linux-pci/20230901131711.2861283-3-yoshihiro.shimoda.uh@renesas.com
Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/pci/rcar-gen4-pci-host.yaml      | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml

diff --git a/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
new file mode 100644
index 000000000000..ffb34339b637
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2022-2023 Renesas Electronics Corp.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/rcar-gen4-pci-host.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas R-Car Gen4 PCIe Host
+
+maintainers:
+  - Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
+
+allOf:
+  - $ref: snps,dw-pcie.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: renesas,r8a779f0-pcie   # R-Car S4-8
+      - const: renesas,rcar-gen4-pcie  # R-Car Gen4
+
+  reg:
+    maxItems: 7
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: atu
+      - const: dma
+      - const: app
+      - const: phy
+      - const: config
+
+  interrupts:
+    maxItems: 4
+
+  interrupt-names:
+    items:
+      - const: msi
+      - const: dma
+      - const: sft_ce
+      - const: app
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: ref
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: pwr
+
+  max-link-speed:
+    maximum: 4
+
+  num-lanes:
+    maximum: 4
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - power-domains
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/r8a779f0-sysc.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie: pcie@e65d0000 {
+            compatible = "renesas,r8a779f0-pcie", "renesas,rcar-gen4-pcie";
+            reg = <0 0xe65d0000 0 0x1000>, <0 0xe65d2000 0 0x0800>,
+                  <0 0xe65d3000 0 0x2000>, <0 0xe65d5000 0 0x1200>,
+                  <0 0xe65d6200 0 0x0e00>, <0 0xe65d7000 0 0x0400>,
+                  <0 0xfe000000 0 0x400000>;
+            reg-names = "dbi", "dbi2", "atu", "dma", "app", "phy", "config";
+            interrupts = <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "msi", "dma", "sft_ce", "app";
+            clocks = <&cpg CPG_MOD 624>, <&pcie0_clkref>;
+            clock-names = "core", "ref";
+            power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
+            resets = <&cpg 624>;
+            reset-names = "pwr";
+            max-link-speed = <4>;
+            num-lanes = <2>;
+            #address-cells = <3>;
+            #size-cells = <2>;
+            bus-range = <0x00 0xff>;
+            device_type = "pci";
+            ranges = <0x01000000 0 0x00000000 0 0xfe000000 0 0x00400000>,
+                     <0x02000000 0 0x30000000 0 0x30000000 0 0x10000000>;
+            dma-ranges = <0x42000000 0 0x00000000 0 0x00000000 1 0x00000000>;
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 7>;
+            interrupt-map = <0 0 0 1 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 2 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 3 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 4 &gic GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH>;
+            snps,enable-cdm-check;
+        };
+    };
-- 
2.25.1


