Return-Path: <devicetree+bounces-8808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27C7CA313
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D8A31C20A17
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D211A5A5;
	Mon, 16 Oct 2023 09:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ceqlvABk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C60F1A59D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:00:41 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C43F4;
	Mon, 16 Oct 2023 02:00:38 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2ECABFF803;
	Mon, 16 Oct 2023 09:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697446837;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hpjgcBNJPQTB0ooU5RPIqtWS43UUpqZHMK3YSE09lug=;
	b=ceqlvABkqNeAJ8Aab6l5S6wKCM0QLoBpipmoZ+2klEHdO0TdhO3oqb0S+EKunHdAHqJmmd
	tc8mhj3AjGMjdlx7Uwp2fQZjBefFUDRaA6soU1Ro2U7MHVcjPibdx1QWHMT3Z6Du5yynsR
	E7CUrF5AqbKB80758ThGbrR0opq0kr8dk39uFqWEdI3wu0n6M21hmEqH816dqD+TM5ZA6a
	fek5XcwWJSia2IEsBkTtSJtlFbiejmojB6CIKiBBpijClISzCSCBYntB3lgWA8HUFyGnES
	2vf5dtD0J14dKdA6fo1xHgUvKpUxWIkDXYw4j7yysjJppUavYbAv8DZlqTePwA==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com,
	paul.kocialkowski@bootlin.com,
	Mehdi Djait <mehdi.djait@bootlin.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v8 1/3] media: dt-bindings: media: add bindings for Rockchip VIP
Date: Mon, 16 Oct 2023 11:00:03 +0200
Message-ID: <e4661737c6a33881ae2e2b2c3a5694fc758f35d4.1697446303.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1697446303.git.mehdi.djait@bootlin.com>
References: <cover.1697446303.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a documentation for the Rockchip Video Input Processor
binding.

The PX30 SoC is the only platform supported so far.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 .../bindings/media/rockchip,px30-vip.yaml     | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml

diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
new file mode 100644
index 000000000000..41f0cd58372d
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/rockchip,px30-vip.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip VIP Camera Interface
+
+maintainers:
+  - Mehdi Djait <mehdi.djait@bootlin.com>
+
+description: |-
+  Rockchip VIP is the Video Input Processor of the rockchip PX30 SoC. It
+  receives the data from Camera sensor or CCIR656 encoder and transfers it into
+  system main memory by AXI bus.
+
+properties:
+  compatible:
+    const: rockchip,px30-vip
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: ACLK
+      - description: HCLK
+      - description: PCLK
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: pclk
+
+  resets:
+    items:
+      - description: AXI
+      - description: AHB
+      - description: PCLK IN
+
+  reset-names:
+    items:
+      - const: axi
+      - const: ahb
+      - const: pclkin
+
+  power-domains:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: A connection to a sensor or decoder
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/px30-cru.h>
+    #include <dt-bindings/power/px30-power.h>
+
+    parent {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        vip@ff490000 {
+            compatible = "rockchip,px30-vip";
+            reg = <0x0 0xff490000 0x0 0x200>;
+            interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
+            clock-names = "aclk", "hclk", "pclk";
+            resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+            reset-names = "axi", "ahb", "pclkin";
+            power-domains = <&power PX30_PD_VI>;
+            port {
+                endpoint {
+                    remote-endpoint = <&tw9900_out>;
+                };
+            };
+        };
+    };
+...
-- 
2.41.0


