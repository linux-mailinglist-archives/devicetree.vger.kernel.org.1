Return-Path: <devicetree+bounces-19174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302D7F9EAB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 258D6B20D63
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B776E1A290;
	Mon, 27 Nov 2023 11:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24071133;
	Mon, 27 Nov 2023 03:34:46 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 85ABB24DC13;
	Mon, 27 Nov 2023 19:34:39 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 27 Nov
 2023 19:34:39 +0800
Received: from yang-virtual-machine.localdomain (113.72.144.198) by
 EXMBX171.cuchost.com (172.16.6.91) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Mon, 27 Nov 2023 19:34:38 +0800
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<tomi.valkeinen@ideasonboard.com>, <r-ravikumar@ti.com>,
	<rdunlap@infradead.org>, <u.kleine-koenig@pengutronix.de>,
	<bbrezillon@kernel.org>, <changhuang.liang@starfivetech.com>,
	<keith.zhao@starfivetech.com>, <shengyang.chen@starfivetech.com>,
	<jack.zhu@starfivetech.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 1/2] dt-bindings: display: bridge: cdns: Add properties to support StarFive JH7110 SoC
Date: Mon, 27 Nov 2023 19:34:35 +0800
Message-ID: <20231127113436.57361-2-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231127113436.57361-1-shengyang.chen@starfivetech.com>
References: <20231127113436.57361-1-shengyang.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

From: Keith Zhao <keith.zhao@starfivetech.com>

Add properties in CDNS DSI yaml file to match with
CDNS DSI module in StarFive JH7110 SoC.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 .../bindings/display/bridge/cdns,dsi.yaml     | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
index 23060324d16e..3f02ee383aad 100644
--- a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - cdns,dsi
       - ti,j721e-dsi
+      - starfive,cdns-dsi
 
   reg:
     minItems: 1
@@ -27,14 +28,20 @@ properties:
           Register block for wrapper settings registers in case of TI J7 SoCs.
 
   clocks:
+    minItems: 2
     items:
       - description: PSM clock, used by the IP
       - description: sys clock, used by the IP
+      - description: apb clock, used by the IP
+      - description: txesc clock, used by the IP
 
   clock-names:
+    minItems: 2
     items:
       - const: dsi_p_clk
       - const: dsi_sys_clk
+      - const: apb
+      - const: txesc
 
   phys:
     maxItems: 1
@@ -46,10 +53,21 @@ properties:
     maxItems: 1
 
   resets:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: dsi sys reset line
+      - description: dsi dpi reset line
+      - description: dsi apb reset line
+      - description: dsi txesc reset line
+      - description: dsi txbytehs reset line
 
   reset-names:
-    const: dsi_p_rst
+    items:
+      - const: dsi_p_rst
+      - const: dsi_dpi
+      - const: dsi_apb
+      - const: dsi_txesc
+      - const: dsi_txbytehs
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -90,6 +108,22 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: starfive,cdns-dsi
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        resets:
+          minItems: 5
+          maxItems: 5
+      required:
+        - reset-names
+
 required:
   - compatible
   - reg
-- 
2.17.1


