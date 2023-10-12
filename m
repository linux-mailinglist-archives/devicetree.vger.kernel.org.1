Return-Path: <devicetree+bounces-8017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9EF7C6765
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A98231C2100C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F761803F;
	Thu, 12 Oct 2023 08:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3266EAFD
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:10:27 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C1D290;
	Thu, 12 Oct 2023 01:10:24 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id A465724E37D;
	Thu, 12 Oct 2023 16:10:17 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 12 Oct
 2023 16:10:17 +0800
Received: from localhost.localdomain (183.27.96.95) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 12 Oct
 2023 16:10:16 +0800
From: Xingyu Wu <xingyu.wu@starfivetech.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
	<tglx@linutronix.de>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Walker Chen
	<walker.chen@starfivetech.com>
CC: <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Xingyu Wu
	<xingyu.wu@starfivetech.com>, Samin Guo <samin.guo@starfivetech.com>,
	<linux-kernel@vger.kernel.org>, Conor Dooley <conor@kernel.org>
Subject: [PATCH v6 1/3] dt-bindings: timer: Add timer for StarFive JH7110 SoC
Date: Thu, 12 Oct 2023 16:10:13 +0800
Message-ID: <20231012081015.33121-2-xingyu.wu@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231012081015.33121-1-xingyu.wu@starfivetech.com>
References: <20231012081015.33121-1-xingyu.wu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.96.95]
X-ClientProxiedBy: EXCAS063.cuchost.com (172.16.6.23) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add bindings for the timer on the JH7110 RISC-V SoC
by StarFive Technology Ltd.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
---
 .../bindings/timer/starfive,jh7110-timer.yaml | 96 +++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/starfive,jh71=
10-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/starfive,jh7110-time=
r.yaml b/Documentation/devicetree/bindings/timer/starfive,jh7110-timer.ya=
ml
new file mode 100644
index 000000000000..9a2dac11eb06
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/starfive,jh7110-timer.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/starfive,jh7110-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive JH7110 Timer
+
+maintainers:
+  - Xingyu Wu <xingyu.wu@starfivetech.com>
+  - Samin Guo <samin.guo@starfivetech.com>
+
+description:
+  This timer has four free-running 32 bit counters in StarFive JH7110 So=
C.
+  And each channel(counter) triggers an interrupt when timeout. They sup=
port
+  one-shot mode and continuous-run mode.
+
+properties:
+  compatible:
+    const: starfive,jh7110-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: channel 0
+      - description: channel 1
+      - description: channel 2
+      - description: channel 3
+
+  clocks:
+    items:
+      - description: timer APB
+      - description: channel 0
+      - description: channel 1
+      - description: channel 2
+      - description: channel 3
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ch0
+      - const: ch1
+      - const: ch2
+      - const: ch3
+
+  resets:
+    items:
+      - description: timer APB
+      - description: channel 0
+      - description: channel 1
+      - description: channel 2
+      - description: channel 3
+
+  reset-names:
+    items:
+      - const: apb
+      - const: ch0
+      - const: ch1
+      - const: ch2
+      - const: ch3
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    timer@13050000 {
+        compatible =3D "starfive,jh7110-timer";
+        reg =3D <0x13050000 0x10000>;
+        interrupts =3D <69>, <70>, <71> ,<72>;
+        clocks =3D <&clk 124>,
+                 <&clk 125>,
+                 <&clk 126>,
+                 <&clk 127>,
+                 <&clk 128>;
+        clock-names =3D "apb", "ch0", "ch1",
+                      "ch2", "ch3";
+        resets =3D <&rst 117>,
+                 <&rst 118>,
+                 <&rst 119>,
+                 <&rst 120>,
+                 <&rst 121>;
+        reset-names =3D "apb", "ch0", "ch1",
+                      "ch2", "ch3";
+    };
+
--=20
2.25.1


