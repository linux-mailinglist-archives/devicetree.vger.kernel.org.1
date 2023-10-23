Return-Path: <devicetree+bounces-10674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 585C37D2777
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 02:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100CC2811A4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE0ED19F;
	Mon, 23 Oct 2023 00:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij7HGas0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A468D63A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB524C433CA;
	Mon, 23 Oct 2023 00:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698020757;
	bh=tGOqCOvdrA6nIMmxcZC6vvV7X3z92/KfzUcVgeGiuqs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ij7HGas0dDx28ZdDKvl1ZQZnThbmb7SxsBMr/tlX3piff0jNnzU+xMw5KxsvVJuDd
	 gKzzuz6JaXC0EkLtC6lbKDjzWNk13sJyrRKBruvOBSQnMxfmlbxYVWjbQAXDiYB1XJ
	 UVI852+PqLM9tAKwIzd3Wo46TIjwnDHv6c2R/uT2byg84XJ1HUST1nlIeOSB6TXgRD
	 4bvKy7H/wNEa9WU6hTrOPKoyVKY5T/JyY9TuwlzJsSWQUWXgavtkKPdMMct8PalCEI
	 SBFr4I33nA8+1wwoRGNyVfTxfzv1XeqtPhpcsUmFgRCxevGxzYYJYY20kVM/gLKOYY
	 CNTYZiQxMQ01A==
Received: by mercury (Postfix, from userid 1000)
	id C6E0110603FC; Mon, 23 Oct 2023 02:25:53 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] media: dt-bindings: gc0308: add binding
Date: Mon, 23 Oct 2023 02:22:08 +0200
Message-ID: <20231023002547.1754190-2-sre@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231023002547.1754190-1-sre@kernel.org>
References: <20231023002547.1754190-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT binding for GalaxyCore GC0308 camera sensor.

Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
 .../bindings/media/i2c/galaxycore,gc0308.yaml | 106 ++++++++++++++++++
 1 file changed, 106 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml
new file mode 100644
index 000000000000..f1fa11ea88b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/galaxycore,gc0308.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/galaxycore,gc0308.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Galaxycore GC0308 and GC0309 Image Sensors
+
+maintainers:
+  - Sebastian Reichel <sre@kernel.org>
+
+description: |
+  The GalaxyCore GC0308 and GC0309 are 640x480 VGA sensors programmable
+  through an I2C interface and connected via parallel bus and include
+  an ISP capable of auto exposure and auto white balance.
+
+allOf:
+  - $ref: ../video-interface-devices.yaml#
+
+properties:
+  compatible:
+    enum:
+      - galaxycore,gc0308
+      - galaxycore,gc0309
+
+  reg:
+    const: 0x21
+
+  clocks:
+    description: Reference to the xclk clock.
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO descriptor for the reset pin.
+    maxItems: 1
+
+  powerdown-gpios:
+    description: GPIO descriptor for the powerdown pin.
+    maxItems: 1
+
+  vdd28-supply:
+    description: 2.8V supply
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    description: |
+      Video output port.
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          bus-width: true
+          data-shift: true
+          hsync-active: true
+          vsync-active: true
+          data-active: true
+          pclk-sample: true
+
+        required:
+          - bus-width
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - powerdown-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera-sensor@21 {
+            compatible = "galaxycore,gc0308";
+            reg = <0x21>;
+            clocks = <&camera_clk>;
+            powerdown-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+            vdd28-supply = <&vdd28>;
+
+            port {
+                gc0308_ep: endpoint {
+                    remote-endpoint = <&parallel_from_gc0308>;
+                    bus-width = <8>;
+                    data-shift = <2>; /* lines 9:2 are used */
+                    hsync-active = <1>; /* active high */
+                    vsync-active = <1>; /* active high */
+                    data-active = <1>; /* active high */
+                    pclk-sample = <1>; /* sample on rising edge */
+                };
+            };
+        };
+    };
+
+...
-- 
2.42.0


