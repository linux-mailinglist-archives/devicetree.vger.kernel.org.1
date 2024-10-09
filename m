Return-Path: <devicetree+bounces-109677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 495939978DE
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 01:08:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FC79B21A48
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 23:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8DB1E32D2;
	Wed,  9 Oct 2024 23:08:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ECCA18F2FC;
	Wed,  9 Oct 2024 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.160.252.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728515317; cv=none; b=GJKmGOTbFfAfWUeNru79BdFioAf+JTXKefcllSF+orIu3O+Oi8HLDUX+Ji8x/kAEtPISN1YaIWvUU7VN3AfJfOy/3c1/lsvdDb7tMZuZCRK/fDo52Oxkv936mnxauGas9QrvXGekE+yzpN/kxwoze/fd+3R2ButznISMqcTY4Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728515317; c=relaxed/simple;
	bh=zUklofw4VBo3XscNrofE2PmKP1p91Nfrb+OGGsZKb8Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FUTy6s0qfC5Vwy3rJvhy+GVPWCLfDVzDmPLpNR/VGBW3s+B6lQS4xmvEhPkJ9wKyS8HZ1Mcbz5+FElhAtBfZeNFKyKRIIQG8kWedu0Ybx9OvMMIZ39kZNzUPCtgw651jz5bE1l1pkWZfj67rqGcRv4frweIeYQB5p1FBmXaBLtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; arc=none smtp.client-ip=210.160.252.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
X-IronPort-AV: E=Sophos;i="6.11,191,1725289200"; 
   d="scan'208";a="221481429"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 10 Oct 2024 08:08:32 +0900
Received: from mulinux.home (unknown [10.226.93.36])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id F10174004BCA;
	Thu, 10 Oct 2024 08:08:26 +0900 (JST)
From: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Renesas RZ/V2H(P) Interrupt Controller
Date: Thu, 10 Oct 2024 00:08:15 +0100
Message-Id: <20241009230817.798582-2-fabrizio.castro.jz@renesas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241009230817.798582-1-fabrizio.castro.jz@renesas.com>
References: <20241009230817.798582-1-fabrizio.castro.jz@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings for the Renesas RZ/V2H(P) Interrupt Controller.

Also add macros for the NMI and IRQ0-15 interrupts which map the
SPI0-16 interrupts on the RZ/V2H(P) SoC so that they can be
used in the first cell of the interrupt specifiers.

For the second cell of the interrupt specifier, since NMI, IRQn
and TINTn support different types of interrupts between themselves,
add helper macros to make it easier for the user to work out what's
available.

Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---

v2->v3:
* The comment next to the compatible definition is now separated by 1
  space.
* IRQ has been replaced with PORT_IRQ in the description
* irq has been replaced with port_irq in the interrupt names

 .../renesas,rzv2h-icu.yaml                    | 278 ++++++++++++++++++
 1 file changed, 278 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
new file mode 100644
index 000000000000..d7ef4f1323a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzv2h-icu.yaml
@@ -0,0 +1,278 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/renesas,rzv2h-icu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/V2H(P) Interrupt Control Unit
+
+maintainers:
+  - Fabrizio Castro <fabrizio.castro.jz@renesas.com>
+  - Geert Uytterhoeven <geert+renesas@glider.be>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+description:
+  The Interrupt Control Unit (ICU) handles external interrupts (NMI, IRQ, and
+  TINT), error interrupts, DMAC requests, GPT interrupts, and internal
+  interrupts.
+
+properties:
+  compatible:
+    const: renesas,r9a09g057-icu # RZ/V2H(P)
+
+  '#interrupt-cells':
+    description: The first cell is the SPI number of the NMI or the
+      PORT_IRQ[0-15] interrupt, as per user manual. The second cell is used to
+      specify the flag.
+    const: 2
+
+  '#address-cells':
+    const: 0
+
+  interrupt-controller: true
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 58
+    items:
+      - description: NMI interrupt
+      - description: PORT_IRQ0 interrupt
+      - description: PORT_IRQ1 interrupt
+      - description: PORT_IRQ2 interrupt
+      - description: PORT_IRQ3 interrupt
+      - description: PORT_IRQ4 interrupt
+      - description: PORT_IRQ5 interrupt
+      - description: PORT_IRQ6 interrupt
+      - description: PORT_IRQ7 interrupt
+      - description: PORT_IRQ8 interrupt
+      - description: PORT_IRQ9 interrupt
+      - description: PORT_IRQ10 interrupt
+      - description: PORT_IRQ11 interrupt
+      - description: PORT_IRQ12 interrupt
+      - description: PORT_IRQ13 interrupt
+      - description: PORT_IRQ14 interrupt
+      - description: PORT_IRQ15 interrupt
+      - description: GPIO interrupt, TINT0
+      - description: GPIO interrupt, TINT1
+      - description: GPIO interrupt, TINT2
+      - description: GPIO interrupt, TINT3
+      - description: GPIO interrupt, TINT4
+      - description: GPIO interrupt, TINT5
+      - description: GPIO interrupt, TINT6
+      - description: GPIO interrupt, TINT7
+      - description: GPIO interrupt, TINT8
+      - description: GPIO interrupt, TINT9
+      - description: GPIO interrupt, TINT10
+      - description: GPIO interrupt, TINT11
+      - description: GPIO interrupt, TINT12
+      - description: GPIO interrupt, TINT13
+      - description: GPIO interrupt, TINT14
+      - description: GPIO interrupt, TINT15
+      - description: GPIO interrupt, TINT16
+      - description: GPIO interrupt, TINT17
+      - description: GPIO interrupt, TINT18
+      - description: GPIO interrupt, TINT19
+      - description: GPIO interrupt, TINT20
+      - description: GPIO interrupt, TINT21
+      - description: GPIO interrupt, TINT22
+      - description: GPIO interrupt, TINT23
+      - description: GPIO interrupt, TINT24
+      - description: GPIO interrupt, TINT25
+      - description: GPIO interrupt, TINT26
+      - description: GPIO interrupt, TINT27
+      - description: GPIO interrupt, TINT28
+      - description: GPIO interrupt, TINT29
+      - description: GPIO interrupt, TINT30
+      - description: GPIO interrupt, TINT31
+      - description: Software interrupt, INTA55_0
+      - description: Software interrupt, INTA55_1
+      - description: Software interrupt, INTA55_2
+      - description: Software interrupt, INTA55_3
+      - description: Error interrupt to CA55
+      - description: GTCCRA compare match/input capture (U0)
+      - description: GTCCRB compare match/input capture (U0)
+      - description: GTCCRA compare match/input capture (U1)
+      - description: GTCCRB compare match/input capture (U1)
+
+  interrupt-names:
+    minItems: 58
+    items:
+      - const: nmi
+      - const: port_irq0
+      - const: port_irq1
+      - const: port_irq2
+      - const: port_irq3
+      - const: port_irq4
+      - const: port_irq5
+      - const: port_irq6
+      - const: port_irq7
+      - const: port_irq8
+      - const: port_irq9
+      - const: port_irq10
+      - const: port_irq11
+      - const: port_irq12
+      - const: port_irq13
+      - const: port_irq14
+      - const: port_irq15
+      - const: tint0
+      - const: tint1
+      - const: tint2
+      - const: tint3
+      - const: tint4
+      - const: tint5
+      - const: tint6
+      - const: tint7
+      - const: tint8
+      - const: tint9
+      - const: tint10
+      - const: tint11
+      - const: tint12
+      - const: tint13
+      - const: tint14
+      - const: tint15
+      - const: tint16
+      - const: tint17
+      - const: tint18
+      - const: tint19
+      - const: tint20
+      - const: tint21
+      - const: tint22
+      - const: tint23
+      - const: tint24
+      - const: tint25
+      - const: tint26
+      - const: tint27
+      - const: tint28
+      - const: tint29
+      - const: tint30
+      - const: tint31
+      - const: int-ca55-0
+      - const: int-ca55-1
+      - const: int-ca55-2
+      - const: int-ca55-3
+      - const: icu-error-ca55
+      - const: gpt-u0-gtciada
+      - const: gpt-u0-gtciadb
+      - const: gpt-u1-gtciada
+      - const: gpt-u1-gtciadb
+
+  clocks:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - '#interrupt-cells'
+  - '#address-cells'
+  - interrupt-controller
+  - interrupts
+  - interrupt-names
+  - clocks
+  - power-domains
+  - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/renesas-cpg-mssr.h>
+
+    icu: interrupt-controller@10400000 {
+        compatible = "renesas,r9a09g057-icu";
+        reg = <0x10400000 0x10000>;
+        #interrupt-cells = <2>;
+        #address-cells = <0>;
+        interrupt-controller;
+        interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 426 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 427 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 428 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 429 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 431 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 433 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 434 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 435 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 436 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 437 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 438 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 439 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 441 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 442 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 443 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 444 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 445 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 446 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 447 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 449 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 450 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 263 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 264 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 265 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 451 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 452 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 453 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 454 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "nmi",
+                          "port_irq0", "port_irq1", "port_irq2",
+                          "port_irq3", "port_irq4", "port_irq5",
+                          "port_irq6", "port_irq7", "port_irq8",
+                          "port_irq9", "port_irq10", "port_irq11",
+                          "port_irq12", "port_irq13", "port_irq14",
+                          "port_irq15",
+                          "tint0", "tint1", "tint2", "tint3",
+                          "tint4", "tint5", "tint6", "tint7",
+                          "tint8", "tint9", "tint10", "tint11",
+                          "tint12", "tint13", "tint14", "tint15",
+                          "tint16", "tint17", "tint18", "tint19",
+                          "tint20", "tint21", "tint22", "tint23",
+                          "tint24", "tint25", "tint26", "tint27",
+                          "tint28", "tint29", "tint30", "tint31",
+                          "int-ca55-0", "int-ca55-1",
+                          "int-ca55-2", "int-ca55-3",
+                          "icu-error-ca55",
+                          "gpt-u0-gtciada", "gpt-u0-gtciadb",
+                          "gpt-u1-gtciada", "gpt-u1-gtciadb";
+        clocks = <&cpg CPG_MOD 0x5>;
+        power-domains = <&cpg>;
+        resets = <&cpg 0x36>;
+    };
-- 
2.34.1


