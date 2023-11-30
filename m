Return-Path: <devicetree+bounces-20358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5ED7FEEFA
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBC3D281E30
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64534655C;
	Thu, 30 Nov 2023 12:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="KqvQJYQn"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id C71DFD46;
	Thu, 30 Nov 2023 04:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=HsMdD
	gBypqtkG1OFGiMB2UoHwvIggl4Bbz2nxPJ5Bog=; b=KqvQJYQniw9wVxHZpv1L/
	k5pus0FoHCBVMmjyC/MyfDKWdQuG31qHdZ1tBwRS/MzSTH2lqc7z8ttVUDRP/Bm+
	qOssO2mRLSDMDrVV/a7WCPC+Jt4g6RoAIv79zVKIJ5IGPd9NW6nr9V6mXPb0KGdC
	3V0mrkZ+47U+1zKXJnD/D4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-0 (Coremail) with SMTP id _____wCXftrzfmhlziFBEQ--.52552S2;
	Thu, 30 Nov 2023 20:24:22 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 09/14] dt-bindings: display: vop2: Add rk3588 support
Date: Thu, 30 Nov 2023 20:24:18 +0800
Message-Id: <20231130122418.13258-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wCXftrzfmhlziFBEQ--.52552S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw4kZr47WFW7ZFW5Aw1rtFb_yoWrZw43pa
	s3C3W8JFWxGr1UXr1ktw1rCwn3KF4kZw4jyrs7XrsxtayaqF40qF4akwn8Xay5CFn7Za42
	9FW8ua4xJ3W3ZF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jweOLUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhQ4XmVOAqtnDwABsL

From: Andy Yan <andy.yan@rock-chips.com>

The vop2 on rk3588 is similar to which on rk356x
but with 4 video ports and need to reference
more grf modules.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- constrain properties in allOf:if:then
- some description updates

Changes in v2:
- fix errors when running 'make DT_CHECKER_FLAGS=-m dt_binding_check'

 .../display/rockchip/rockchip-vop2.yaml       | 118 +++++++++++++++---
 1 file changed, 99 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index b60b90472d42..b94d911ee9a6 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3588-vop
 
   reg:
     items:
@@ -41,45 +42,69 @@ properties:
       The VOP interrupt is shared by several interrupt sources, such as
       frame start (VSYNC), line flag and other status interrupts.
 
+  # See compatible-specific constraints below.
   clocks:
+    minItems: 5
     items:
-      - description: Clock for ddr buffer transfer.
-      - description: Clock for the ahb bus to R/W the phy regs.
-      - description: Pixel clock for video port 0.
-      - description: Pixel clock for video port 1.
-      - description: Pixel clock for video port 2.
+      - description: Clock for ddr buffer transfer via axi.
+      - description: Clock for the ahb bus to R/W the regs
+      - description: Pixel clock for video port 0
+      - description: Pixel clock for video port 1
+      - description: Pixel clock for video port 2
+      - description: Pixel clock for video port 3
+      - description: Peripheral(vop grf/dsi) clock.
 
   clock-names:
+    minItems: 5
     items:
       - const: aclk
       - const: hclk
       - const: dclk_vp0
       - const: dclk_vp1
       - const: dclk_vp2
+      - const: dclk_vp3
+      - const: pclk_vop
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-      Phandle to GRF regs used for misc control
+      Phandle to GRF regs used for control the polarity of dclk/hsync/vsync of DPI,
+      also used for query vop memory bisr enable status, etc.
+
+  rockchip,vo1-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VO GRF regs used for control the polarity of dclk/hsync/vsync of hdmi
+      on rk3588
+
+  rockchip,vop-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VOP GRF regs used for control data path between vopr and hdmi/edp.
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU GRF used for query vop memory bisr status on rk3588
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
-
-    properties:
-      port@0:
+    description: |
+      The connections to the output video ports are modeled using the OF
+      graph bindings specified in Documentation/devicetree/bindings/graph.txt.
+      The number of ports and their assignment are model-dependent. Each port
+      shall have a single endpoint.
+
+    patternProperties:
+      "^port@[0-3]$":
         $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP0
+        description: Output endpoint of VP0/1/2/3
+        unevaluatedProperties: false
 
-      port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP1
+    required:
+      - port@0
 
-      port@2:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP2
+    unevaluatedProperties: false
 
   iommus:
     maxItems: 1
@@ -96,6 +121,61 @@ required:
   - clock-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vop
+    then:
+      properties:
+        clocks:
+          minItems: 7
+        clock-names:
+          items:
+            - const: aclk
+            - const: hclk
+            - const: dclk_vp0
+            - const: dclk_vp1
+            - const: dclk_vp2
+            - const: dclk_vp3
+            - const: pclk_vop
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+            - port@3
+
+      required:
+        - rockchip,grf
+        - rockchip,vo1-grf
+        - rockchip,vop-grf
+        - rockchip,pmu
+
+    else:
+      properties:
+        rockchip,vo1-grf: false
+        rockchip,vop-grf: false
+        rockchip,pmu: false
+
+        clocks:
+          minItems: 5
+        clock-names:
+          items:
+            - const: aclk
+            - const: hclk
+            - const: dclk_vp0
+            - const: dclk_vp1
+            - const: dclk_vp2
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


