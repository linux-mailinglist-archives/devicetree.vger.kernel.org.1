Return-Path: <devicetree+bounces-143648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3525A2AA8E
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 15:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52250168642
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1F51C6FFB;
	Thu,  6 Feb 2025 14:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUezUB13"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119391624C3;
	Thu,  6 Feb 2025 14:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738850520; cv=none; b=r+93dTvcxEyK35UBUrLQqJGg4FodlulGPWa9z6w7Azx3jluZNlxcXvn5JfNFxDUTRL/cOpou4BpLD2Wxr0Ck6omMWBzP/nu6NcD6CxbZCBl+3emVYZ5mBD6icJSwP2UbjA9xEmIDNhWoVq8yHvk4KtONcqzTHBTB1kBvCj8sk4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738850520; c=relaxed/simple;
	bh=f+DglNqsF0GBhahZCan5DrNq0Oz15iuAvk2QpZMFvp4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b/ctlB6fCEpjZxh/Wauj5Jl0gBI/QSZd5GKPTQa8FWszricAwKpJW+/85HILaa7VHS3CQSuetb/ni8h15TUONsJWeIEeYFUTNV7fnnNCFyOeLtH4Xv8XbDu1awqIYk1tfWAIufHaUy+1lA11adykZ0ge/vyrej43822UtgmW6IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUezUB13; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36D2C4CEE2;
	Thu,  6 Feb 2025 14:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738850519;
	bh=f+DglNqsF0GBhahZCan5DrNq0Oz15iuAvk2QpZMFvp4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=bUezUB13IeQei33hhzV9Hs5F8PjLZFhH/Z6OSLN75Yp63kDXhrwe8gF5LHeqcrwbL
	 9GP1sOa196l0FB9EVu0zSQxHSrGqk+isuhYVTBBI2anKs6OWpdYilJ+r+rhqD/YUpN
	 SD+zj2LGbVbSWyEqpVOnGPRf8HXYEKSb7a9nquLdK+SwqHhg8gP8dwTJXKbl84c3F+
	 kwM2N8A8IBGtD2mCAtMXQtia1Rh/ahNzdBGBEZywHVCwS1dByCWX/XjIlVpyhXjF57
	 vFL6kpe4cH9WdMa6mhZlE3jjEoUFkQuxVkUZW3bg25FC9UGTWDdOlL/do46fakOsPw
	 V7hGmmvJOCL1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C030AC02196;
	Thu,  6 Feb 2025 14:01:59 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Date: Thu, 06 Feb 2025 15:01:54 +0100
Subject: [PATCH v6 1/5] dt-bindings: display: Add Apple pre-DCP display
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250206-adpdrm-v6-1-c8ab9348b853@gmail.com>
References: <20250206-adpdrm-v6-0-c8ab9348b853@gmail.com>
In-Reply-To: <20250206-adpdrm-v6-0-c8ab9348b853@gmail.com>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
 Janne Grunau <j@jannau.net>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738850518; l=7308;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=L+DtRl+AoX1NvwfwdsVyCcuYMOPBNtcxaSIUYvQWNFA=;
 b=dgBEyqQi5Xk72a1JhW5rJ6lIgjvCUUAh+9Q6K7LsD+jtO4RZq+utP+GpkMhuXRvVdMS+08tq9
 XoDiHhwF5HwCKq0JoTWWXr7iksdgO4htLbyklIu4t1WDFUTM0zZlWSo
X-Developer-Key: i=fnkl.kernel@gmail.com; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Endpoint-Received: by B4 Relay for fnkl.kernel@gmail.com/20241124 with
 auth_id=283
X-Original-From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Reply-To: fnkl.kernel@gmail.com

From: Sasha Finkelstein <fnkl.kernel@gmail.com>

Add bindings for a secondary display controller present on certain
Apple laptops.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
---
 .../display/apple,h7-display-pipe-mipi.yaml        | 83 ++++++++++++++++++++
 .../bindings/display/apple,h7-display-pipe.yaml    | 88 ++++++++++++++++++++++
 .../bindings/display/panel/apple,summit.yaml       | 58 ++++++++++++++
 3 files changed, 229 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml b/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5e6da66499a508c001670f68fa00d6bab13591d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/apple,h7-display-pipe-mipi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/apple,h7-display-pipe-mipi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple pre-DCP display controller MIPI interface
+
+maintainers:
+  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+
+description:
+  The MIPI controller part of the pre-DCP Apple display controller
+
+allOf:
+  - $ref: dsi-controller.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - apple,t8112-display-pipe-mipi
+          - apple,t8103-display-pipe-mipi
+      - const: apple,h7-display-pipe-mipi
+
+  reg:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input port. Always connected to the primary controller
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output MIPI DSI port to the panel
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - ports
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dsi@28200000 {
+        compatible = "apple,t8103-display-pipe-mipi", "apple,h7-display-pipe-mipi";
+        reg = <0x28200000 0xc000>;
+        power-domains = <&ps_dispdfr_mipi>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                dfr_adp_out_mipi: endpoint {
+                    remote-endpoint = <&dfr_adp_out_mipi>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                dfr_panel_in: endpoint {
+                    remote-endpoint = <&dfr_mipi_out_panel>;
+                };
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml b/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..102fb1804c0c0b84f590e507ca2d526948e98f68
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/apple,h7-display-pipe.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/apple,h7-display-pipe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple pre-DCP display controller
+
+maintainers:
+  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+
+description:
+  A secondary display controller used to drive the "touchbar" on
+  certain Apple laptops.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - apple,t8112-display-pipe
+          - apple,t8103-display-pipe
+      - const: apple,h7-display-pipe
+
+  reg:
+    items:
+      - description: Primary register block, controls planes and blending
+      - description:
+          Contains other configuration registers like interrupt
+          and FIFO control
+
+  reg-names:
+    items:
+      - const: be
+      - const: fe
+
+  power-domains:
+    description:
+      Phandles to pmgr entries that are needed for this controller to turn on.
+      Aside from that, their specific functions are unknown
+    maxItems: 2
+
+  interrupts:
+    items:
+      - description: Unknown function
+      - description: Primary interrupt. Vsync events are reported via it
+
+  interrupt-names:
+    items:
+      - const: be
+      - const: fe
+
+  iommus:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: Output port. Always connected to apple,h7-display-pipe-mipi
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/apple-aic.h>
+    display-pipe@28200000 {
+        compatible = "apple,t8103-display-pipe", "apple,h7-display-pipe";
+        reg = <0x28200000 0xc000>,
+              <0x28400000 0x4000>;
+        reg-names = "be", "fe";
+        power-domains = <&ps_dispdfr_fe>, <&ps_dispdfr_be>;
+        interrupt-parent = <&aic>;
+        interrupts = <AIC_IRQ 502 IRQ_TYPE_LEVEL_HIGH>,
+                     <AIC_IRQ 506 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "be", "fe";
+        iommus = <&displaydfr_dart 0>;
+
+        port {
+            dfr_adp_out_mipi: endpoint {
+                remote-endpoint = <&dfr_mipi_in_adp>;
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/display/panel/apple,summit.yaml b/Documentation/devicetree/bindings/display/panel/apple,summit.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..f081755325e97ad58b831893b84082cc10f8d5e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/apple,summit.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/apple,summit.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Apple "Summit" display panel
+
+maintainers:
+  - Sasha Finkelstein <fnkl.kernel@gmail.com>
+
+description:
+  An OLED panel used as a touchbar on certain Apple laptops.
+  Contains a backlight device, which controls brightness of the panel itself.
+  The backlight common properties are included for this reason
+
+allOf:
+  - $ref: panel-common.yaml#
+  - $ref: /schemas/leds/backlight/common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - apple,j293-summit
+          - apple,j493-summit
+      - const: apple,summit
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - max-brightness
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "apple,j293-summit", "apple,summit";
+            reg = <0>;
+            max-brightness = <255>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&dfr_bridge_out>;
+                };
+            };
+        };
+    };
+...

-- 
2.48.1



