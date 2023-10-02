Return-Path: <devicetree+bounces-5092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2217B5308
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 127DB1C20757
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A329117757;
	Mon,  2 Oct 2023 12:27:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0BD15499
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:27:55 +0000 (UTC)
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 188DB9E;
	Mon,  2 Oct 2023 05:27:52 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,194,1694703600"; 
   d="scan'208";a="177923954"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 02 Oct 2023 21:27:52 +0900
Received: from localhost.localdomain (unknown [10.226.92.126])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id B771C420F232;
	Mon,  2 Oct 2023 21:27:47 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v11 1/4] dt-bindings: display: Document Renesas RZ/G2L DU bindings
Date: Mon,  2 Oct 2023 13:27:37 +0100
Message-Id: <20231002122740.220177-2-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231002122740.220177-1-biju.das.jz@bp.renesas.com>
References: <20231002122740.220177-1-biju.das.jz@bp.renesas.com>
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

The RZ/G2L LCD controller is composed of Frame Compression Processor
(FCPVD), Video Signal Processor (VSPD), and Display Unit (DU).

The DU module supports the following hardware features
− Display Parallel Interface (DPI) and MIPI LINK Video Interface
− Display timing master
− Generates video timings
− Selecting the polarity of output DCLK, HSYNC, VSYNC, and DE
− Supports Progressive
− Input data format (from VSPD): RGB888, RGB666
− Output data format: same as Input data format
− Supporting Full HD (1920 pixels x 1080 lines) for MIPI-DSI Output
− Supporting WXGA (1280 pixels x 800 lines) for Parallel Output

This patch documents the DU module found on RZ/G2L LCDC.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
v10->v1:
 * No change
v9->v10:
 * Added Rb tag from Laurent
 * Updated the commit description.
 * Updated description of the port by dropping the text "specified in
   Documentation/devicetree/bindings/graph.txt."
 * Dropped empty endpoint from example.
v8->v9:
 * No change
v7->v8:
 * No change
v6->v7:
 * No change
v5->v6:
 * No change.
v4->v5:
 * Added Rb tag from Rob.
v3->v4:
 * Changed compatible name from renesas,du-r9a07g044->renesas,r9a07g044-du
 * started using same compatible for RZ/G2{L,LC}
v3: New patch
---
 .../bindings/display/renesas,rzg2l-du.yaml    | 121 ++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml

diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
new file mode 100644
index 000000000000..9ffe5be04c23
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
@@ -0,0 +1,121 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/renesas,rzg2l-du.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas RZ/G2L Display Unit (DU)
+
+maintainers:
+  - Biju Das <biju.das.jz@bp.renesas.com>
+  - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
+
+description: |
+  These DT bindings describe the Display Unit embedded in the Renesas RZ/G2L
+  and RZ/V2L SoCs.
+
+properties:
+  compatible:
+    enum:
+      - renesas,r9a07g044-du # RZ/G2{L,LC}
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Main clock
+      - description: Register access clock
+      - description: Video clock
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: pclk
+      - const: vclk
+
+  resets:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: |
+      The connections to the DU output video ports are modeled using the OF
+      graph bindings. The number of ports and their assignment are
+      model-dependent. Each port shall have a single endpoint.
+
+    patternProperties:
+      "^port@[0-1]$":
+        $ref: /schemas/graph.yaml#/properties/port
+        unevaluatedProperties: false
+
+    required:
+      - port@0
+
+    unevaluatedProperties: false
+
+  renesas,vsps:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    items:
+      items:
+        - description: phandle to VSP instance that serves the DU channel
+        - description: Channel index identifying the LIF instance in that VSP
+    description:
+      A list of phandle and channel index tuples to the VSPs that handle the
+      memory interfaces for the DU channels.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - power-domains
+  - ports
+  - renesas,vsps
+
+additionalProperties: false
+
+examples:
+  # RZ/G2L DU
+  - |
+    #include <dt-bindings/clock/r9a07g044-cpg.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    display@10890000 {
+        compatible = "renesas,r9a07g044-du";
+        reg = <0x10890000 0x10000>;
+        interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cpg CPG_MOD R9A07G044_LCDC_CLK_A>,
+                 <&cpg CPG_MOD R9A07G044_LCDC_CLK_P>,
+                 <&cpg CPG_MOD R9A07G044_LCDC_CLK_D>;
+        clock-names = "aclk", "pclk", "vclk";
+        resets = <&cpg R9A07G044_LCDC_RESET_N>;
+        power-domains = <&cpg>;
+
+        renesas,vsps = <&vspd0 0>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                endpoint {
+                    remote-endpoint = <&dsi0_in>;
+                };
+            };
+            port@1 {
+                reg = <1>;
+            };
+        };
+    };
+
+...
-- 
2.25.1


