Return-Path: <devicetree+bounces-6765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2DE7BCD4A
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 10:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DE0F2816D0
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 08:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4732571;
	Sun,  8 Oct 2023 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC8653AA
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 08:52:05 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 625F5C5;
	Sun,  8 Oct 2023 01:52:02 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 0D71324E24A;
	Sun,  8 Oct 2023 16:51:59 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 16:51:58 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Sun, 8 Oct
 2023 16:51:58 +0800
From: Jack Zhu <jack.zhu@starfivetech.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Foss
	<rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	<bryan.odonoghue@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-staging@lists.linux.dev>,
	<jack.zhu@starfivetech.com>, <changhuang.liang@starfivetech.com>
Subject: [PATCH v10 1/8] media: dt-bindings: Add JH7110 Camera Subsystem
Date: Sun, 8 Oct 2023 16:51:47 +0800
Message-ID: <20231008085154.6757-2-jack.zhu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231008085154.6757-1-jack.zhu@starfivetech.com>
References: <20231008085154.6757-1-jack.zhu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the bindings documentation for Starfive JH7110 Camera Subsystem
which is used for handing image sensor data.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
---
 .../bindings/media/starfive,jh7110-camss.yaml | 180 ++++++++++++++++++
 MAINTAINERS                                   |   7 +
 2 files changed, 187 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/starfive,jh71=
10-camss.yaml

diff --git a/Documentation/devicetree/bindings/media/starfive,jh7110-cams=
s.yaml b/Documentation/devicetree/bindings/media/starfive,jh7110-camss.ya=
ml
new file mode 100644
index 000000000000..c66586d90fa2
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/starfive,jh7110-camss.yaml
@@ -0,0 +1,180 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/starfive,jh7110-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starfive SoC CAMSS ISP
+
+maintainers:
+  - Jack Zhu <jack.zhu@starfivetech.com>
+  - Changhuang Liang <changhuang.liang@starfivetech.com>
+
+description:
+  The Starfive CAMSS ISP is a Camera interface for Starfive JH7110 SoC. =
It
+  consists of a VIN controller (Video In Controller, a top-level control=
 unit)
+  and an ISP.
+
+properties:
+  compatible:
+    const: starfive,jh7110-camss
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: syscon
+      - const: isp
+
+  clocks:
+    maxItems: 7
+
+  clock-names:
+    items:
+      - const: apb_func
+      - const: wrapper_clk_c
+      - const: dvp_inv
+      - const: axiwr
+      - const: mipi_rx0_pxl
+      - const: ispcore_2x
+      - const: isp_axi
+
+  resets:
+    maxItems: 6
+
+  reset-names:
+    items:
+      - const: wrapper_p
+      - const: wrapper_c
+      - const: axird
+      - const: axiwr
+      - const: isp_top_n
+      - const: isp_top_axi
+
+  power-domains:
+    items:
+      - description: JH7110 ISP Power Domain Switch Controller.
+
+  interrupts:
+    maxItems: 4
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Input port for receiving DVP data.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              bus-type:
+                enum: [5, 6]
+
+              bus-width:
+                enum: [8, 10, 12]
+
+              data-shift:
+                enum: [0, 2]
+                default: 0
+
+              hsync-active:
+                enum: [0, 1]
+                default: 1
+
+              vsync-active:
+                enum: [0, 1]
+                default: 1
+
+            required:
+              - bus-type
+              - bus-width
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input port for receiving CSI data.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - power-domains
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    isp@19840000 {
+        compatible =3D "starfive,jh7110-camss";
+        reg =3D <0x19840000 0x10000>,
+              <0x19870000 0x30000>;
+        reg-names =3D "syscon", "isp";
+        clocks =3D <&ispcrg 0>,
+                 <&ispcrg 13>,
+                 <&ispcrg 2>,
+                 <&ispcrg 12>,
+                 <&ispcrg 1>,
+                 <&syscrg 51>,
+                 <&syscrg 52>;
+        clock-names =3D "apb_func",
+                      "wrapper_clk_c",
+                      "dvp_inv",
+                      "axiwr",
+                      "mipi_rx0_pxl",
+                      "ispcore_2x",
+                      "isp_axi";
+        resets =3D <&ispcrg 0>,
+                 <&ispcrg 1>,
+                 <&ispcrg 10>,
+                 <&ispcrg 11>,
+                 <&syscrg 41>,
+                 <&syscrg 42>;
+        reset-names =3D "wrapper_p",
+                      "wrapper_c",
+                      "axird",
+                      "axiwr",
+                      "isp_top_n",
+                      "isp_top_axi";
+        power-domains =3D <&pwrc 5>;
+        interrupts =3D <92>, <87>, <88>, <90>;
+
+        ports {
+            #address-cells =3D <1>;
+            #size-cells =3D <0>;
+            port@0 {
+                reg =3D <0>;
+                vin_from_sc2235: endpoint {
+                    remote-endpoint =3D <&sc2235_to_vin>;
+                    bus-type =3D <5>;
+                    bus-width =3D <8>;
+                    data-shift =3D <2>;
+                    hsync-active =3D <1>;
+                    vsync-active =3D <0>;
+                    pclk-sample =3D <1>;
+                };
+            };
+
+            port@1 {
+                reg =3D <1>;
+                vin_from_csi2rx: endpoint {
+                    remote-endpoint =3D <&csi2rx_to_vin>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 75af99eeda6e..774dcb5b70ca 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20448,6 +20448,13 @@ M:	Ion Badulescu <ionut@badula.org>
 S:	Odd Fixes
 F:	drivers/net/ethernet/adaptec/starfire*
=20
+STARFIVE CAMERA SUBSYSTEM DRIVER
+M:	Jack Zhu <jack.zhu@starfivetech.com>
+M:	Changhuang Liang <changhuang.liang@starfivetech.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/starfive,jh7110-camss.yaml
+
 STARFIVE CRYPTO DRIVER
 M:	Jia Jie Ho <jiajie.ho@starfivetech.com>
 M:	William Qiu <william.qiu@starfivetech.com>
--=20
2.34.1


