Return-Path: <devicetree+bounces-7311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C67C000F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:12:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 166A428142E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E2E4347B0;
	Tue, 10 Oct 2023 15:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="jSejRz6j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629F024C96
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:12:29 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86F44AF;
	Tue, 10 Oct 2023 08:12:27 -0700 (PDT)
Received: from uno.lan (unknown [IPv6:2001:b07:5d2e:52c9:72c3:346:a663:c82d])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 91FBB512;
	Tue, 10 Oct 2023 17:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696950743;
	bh=j7AI58mWWEpwII/C6iOxf4fih/h5Pw1XG1cO4kW3ucs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jSejRz6j7FZtd6CDSS2eT48gutjz3YhPOakyhLIy0Khp4854rQDjfoE+rl8GhhUwE
	 lrn5iwkkEVIxytV1APop7mu9S++LMFFthTDzWnuJqhuWsy/ebWUT5SW2DgbqQ6l1sZ
	 DqF8mc9pV6cesHig8s7C0y/SGoHSlFIC13Ncu57U=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Lee Jackson <lee.jackson@arducam.com>
Subject: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Date: Tue, 10 Oct 2023 17:12:07 +0200
Message-ID: <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add bindings for OmniVision OV64A40.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
---
 .../bindings/media/i2c/ovti,ov64a40.yaml      | 97 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 2 files changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml
new file mode 100644
index 000000000000..e6c9d540a2dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ovti,ov64a40.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: OmniVision OV64A40 Image Sensor
+
+maintainers:
+  - Jacopo Mondi <jacopo.mondi@ideasonboard.com>
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: ovti,ov64a40
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog voltage supply, 2.8 volts
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.1 volts
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.8 volts
+
+  powerdown-gpios:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        additionalProperties: false
+
+        properties:
+          bus-type:
+            enum:
+              - 1 # MIPI CSI-2 C-PHY
+              - 4 # MIPI CSI-2 D-PHY
+          data-lanes: true
+          link-frequencies: true
+          clock-noncontinuous: true
+          remote-endpoint: true
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/gpio/gpio.h>
+
+      i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          camera@36 {
+              compatible = "ovti,ov64a40";
+              reg = <0x36>;
+              clocks = <&camera_clk>;
+              dovdd-supply = <&vgen4_reg>;
+              avdd-supply = <&vgen3_reg>;
+              dvdd-supply = <&vgen2_reg>;
+              powerdown-gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+              reset-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+              rotation = <180>;
+              orientation = <2>;
+
+              port {
+                  endpoint {
+                      remote-endpoint = <&mipi_csi2_in>;
+                      bus-type = <4>;
+                      data-lanes = <1 2 3 4>;
+                  };
+              };
+          };
+      };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index b19995690904..df089d68b58c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15821,6 +15821,13 @@ S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
 F:	drivers/media/i2c/ov5695.c

+OMNIVISION OV64A40 SENSOR DRIVER
+M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml
+
 OMNIVISION OV7670 SENSOR DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
--
2.42.0


