Return-Path: <devicetree+bounces-256204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A1CD33A35
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11C653042FCB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F154D3451BA;
	Fri, 16 Jan 2026 17:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="OP64Dgzt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E49D339B39;
	Fri, 16 Jan 2026 17:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768582960; cv=none; b=By9vM9vxfpzZUvj9XAjrxHiB27RioY1ug+XDqFUzWg4H3VcHOkqlicMqEvNDmD4vemiLzK5Yf7Z5/7XlWcVapt0QeifdXInijEd1l4KV37Dpdd05ltL9ZqXv4lC2QmC3t1WZ3NHuv53a/RHfH5H33qFL7JwsWQb4Vzf6tyvcLhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768582960; c=relaxed/simple;
	bh=0zIFnLQkrNv1RDeV/OGwROGYLBJyPuLw2Z2up66C6SY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UrU8CbXdLaE1SVDjJznsLGMzAbyAca77rPWhu+w5JsnDCc8F1YbuOLUU6pJSlDI6e6z+jXg3oaAqGPb9Aq+JP05IhIcMirfsgY+UesWjgRXg82iJDaDqZiiwDyBJU9pdQ7jvkNLiYbyQJIkd2J8V4sRDm/Rhr2UhB8Z0ep5PdYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=OP64Dgzt; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id D19381A28CD;
	Fri, 16 Jan 2026 17:02:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A2601606F9;
	Fri, 16 Jan 2026 17:02:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2FE7410B68CA3;
	Fri, 16 Jan 2026 18:02:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768582956; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=O0e7oK0+DtrdeS2mjGJxW+Ios+Q8mp3j2SQs5EO70xg=;
	b=OP64DgztMG0GOvqPwm4qmDxKp7nnr2ieoQEFGJ2mlvQ5g4bLQC+JQlqa23ORyyUqnArxQx
	NXALwXg/7ciZrFAW5WZhCXMwigkTqjH5+YSM2xrQFfFgoqkc9Np2jasoaeD61hBlDMj0Kn
	Bmjn5MsDVhKNnVp9n4+pYh/qfxby40C/pU5myzPDmfFbMeqaiFePA5ujRxfMB2fGlGA8p/
	BvbClLQNEYMNc5b8f5lO5khzQ3LHOZfTac3tOh3oBsDCCzj23OM1Lg34sWNQn48P2S7Sbs
	xz/n7OFv3ruDT0/ds0k6oY1be0U1pi0s42nYdm3Qh4ZaCbJkFYlVM7M6MT8v1w==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Fri, 16 Jan 2026 18:02:01 +0100
Subject: [PATCH v4 01/25] dt-bindings: display: tilcdc: Convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-feature_tilcdc-v4-1-2c1c22143087@bootlin.com>
References: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
In-Reply-To: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>, 
 Bajjuri Praneeth <praneeth@ti.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Miguel Gazquez <miguel.gazquez@bootlin.com>, 
 Herve Codina <herve.codina@bootlin.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Convert the device tree binding documentation for tilcdc
from plain text to DT binding schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
---
Change in v3:
- Rename binding file to ti,am33xx-tilcdc.yaml.
- Use generic node name and drop unused label.
---
 .../bindings/display/tilcdc/ti,am33xx-tilcdc.yaml  | 100 +++++++++++++++++++++
 .../devicetree/bindings/display/tilcdc/tilcdc.txt  |  82 -----------------
 2 files changed, 100 insertions(+), 82 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/tilcdc/ti,am33xx-tilcdc.yaml b/Documentation/devicetree/bindings/display/tilcdc/ti,am33xx-tilcdc.yaml
new file mode 100644
index 0000000000000..eb0ebb678fa87
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/tilcdc/ti,am33xx-tilcdc.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2025 Bootlin
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/tilcdc/ti,am33xx-tilcdc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI LCD Controller, found on AM335x, DA850, AM18x and OMAP-L138
+
+maintainers:
+  - Kory Maincent <kory.maincent@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,am33xx-tilcdc
+      - ti,da850-tilcdc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
+  ti,hwmods:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      Name of the hwmod associated to the LCDC
+
+  max-bandwidth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The maximum pixels per second that the memory interface / lcd
+      controller combination can sustain
+    # maximum: 2048*2048*60
+    maximum: 251658240
+
+  max-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The maximum horizontal pixel width supported by the lcd controller.
+    maximum: 2048
+
+  max-pixelclock:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The maximum pixel clock that can be supported by the lcd controller
+      in KHz.
+
+  blue-and-red-wiring:
+    enum: [straight, crossed]
+    description:
+      This property deals with the LCDC revision 2 (found on AM335x)
+      color errata [1].
+       - "straight" indicates normal wiring that supports RGB565,
+         BGR888, and XBGR8888 color formats.
+       - "crossed" indicates wiring that has blue and red wires
+         crossed. This setup supports BGR565, RGB888 and XRGB8888
+         formats.
+       - If the property is not present or its value is not recognized
+         the legacy mode is assumed. This configuration supports RGB565,
+         RGB888 and XRGB8888 formats. However, depending on wiring, the red
+         and blue colors are swapped in either 16 or 24-bit color modes.
+
+       [1] There is an errata about AM335x color wiring. For 16-bit color
+       mode the wires work as they should (LCD_DATA[0:4] is for Blue[3:7]),
+       but for 24 bit color modes the wiring of blue and red components is
+       crossed and LCD_DATA[0:4] is for Red[3:7] and LCD_DATA[11:15] is
+       for Blue[3-7]. For more details see section 3.1.1 in AM335x
+       Silicon Errata
+       https://www.ti.com/general/docs/lit/getliterature.tsp?baseLiteratureNumber=sprz360
+
+required:
+  - compatible
+  - interrupts
+  - reg
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    display-controller@4830e000 {
+        compatible = "ti,am33xx-tilcdc";
+        reg = <0x4830e000 0x1000>;
+        interrupt-parent = <&intc>;
+        interrupts = <36>;
+        ti,hwmods = "lcdc";
+
+        blue-and-red-wiring = "crossed";
+
+        port {
+            endpoint {
+                remote-endpoint = <&hdmi_0>;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt b/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
deleted file mode 100644
index 3b3d0bbfcfff4..0000000000000
--- a/Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
+++ /dev/null
@@ -1,82 +0,0 @@
-Device-Tree bindings for tilcdc DRM driver
-
-Required properties:
- - compatible: value should be one of the following:
-    - "ti,am33xx-tilcdc" for AM335x based boards
-    - "ti,da850-tilcdc" for DA850/AM18x/OMAP-L138 based boards
- - interrupts: the interrupt number
- - reg: base address and size of the LCDC device
-
-Recommended properties:
- - ti,hwmods: Name of the hwmod associated to the LCDC
-
-Optional properties:
- - max-bandwidth: The maximum pixels per second that the memory
-   interface / lcd controller combination can sustain
- - max-width: The maximum horizontal pixel width supported by
-   the lcd controller.
- - max-pixelclock: The maximum pixel clock that can be supported
-   by the lcd controller in KHz.
- - blue-and-red-wiring: Recognized values "straight" or "crossed".
-   This property deals with the LCDC revision 2 (found on AM335x)
-   color errata [1].
-    - "straight" indicates normal wiring that supports RGB565,
-      BGR888, and XBGR8888 color formats.
-    - "crossed" indicates wiring that has blue and red wires
-      crossed. This setup supports BGR565, RGB888 and XRGB8888
-      formats.
-    - If the property is not present or its value is not recognized
-      the legacy mode is assumed. This configuration supports RGB565,
-      RGB888 and XRGB8888 formats. However, depending on wiring, the red
-      and blue colors are swapped in either 16 or 24-bit color modes.
-
-Optional nodes:
-
- - port/ports: to describe a connection to an external encoder. The
-   binding follows Documentation/devicetree/bindings/graph.txt and
-   supports a single port with a single endpoint.
-
- - See also Documentation/devicetree/bindings/display/tilcdc/panel.txt and
-   Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml for connecting
-   tfp410 DVI encoder or lcd panel to lcdc
-
-[1] There is an errata about AM335x color wiring. For 16-bit color mode
-    the wires work as they should (LCD_DATA[0:4] is for Blue[3:7]),
-    but for 24 bit color modes the wiring of blue and red components is
-    crossed and LCD_DATA[0:4] is for Red[3:7] and LCD_DATA[11:15] is
-    for Blue[3-7]. For more details see section 3.1.1 in AM335x
-    Silicon Errata:
-    https://www.ti.com/general/docs/lit/getliterature.tsp?baseLiteratureNumber=sprz360
-
-Example:
-
-	fb: fb@4830e000 {
-		compatible = "ti,am33xx-tilcdc", "ti,da850-tilcdc";
-		reg = <0x4830e000 0x1000>;
-		interrupt-parent = <&intc>;
-		interrupts = <36>;
-		ti,hwmods = "lcdc";
-
-		blue-and-red-wiring = "crossed";
-
-		port {
-			lcdc_0: endpoint {
-				remote-endpoint = <&hdmi_0>;
-			};
-		};
-	};
-
-	tda19988: tda19988 {
-		compatible = "nxp,tda998x";
-		reg = <0x70>;
-
-		pinctrl-names = "default", "off";
-		pinctrl-0 = <&nxp_hdmi_bonelt_pins>;
-		pinctrl-1 = <&nxp_hdmi_bonelt_off_pins>;
-
-		port {
-			hdmi_0: endpoint {
-				remote-endpoint = <&lcdc_0>;
-			};
-		};
-	};

-- 
2.43.0


