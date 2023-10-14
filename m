Return-Path: <devicetree+bounces-8630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E27C951A
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D48B1C20904
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8CC134AE;
	Sat, 14 Oct 2023 15:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F61FA5
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:26 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.241])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDDA5C9
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:24 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-0.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id e54c8dd3-f5f6-4b71-aba5-6ec585167e8e;
	Sat, 14 Oct 2023 23:54:20 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id 0D1271C03BE;
	Sat, 14 Oct 2023 23:54:20 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	tglx@linutronix.de,
	maz@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 17/35]  Documentation/devicetree/bindings/interrupt-controller: Add renesas,sh7751-irl-ext.yaml
Date: Sat, 14 Oct 2023 23:53:52 +0900
Message-Id: <864ad8a2e7a31360e074818a489095282ade81f5.1697199949.git.ysato@users.sourceforge.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1697199949.git.ysato@users.sourceforge.jp>
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_SOFTFAIL autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SH7751 external interrupt encoder binding definition.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 .../renesas,sh7751-irl-ext.yaml               | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-irl-ext.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-irl-ext.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-irl-ext.yaml
new file mode 100644
index 000000000000..323229ccc4c3
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-irl-ext.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/renesas,sh7751-irl-ext.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SH7751 IRL external encoder with enable regs.
+
+maintainers:
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+description: |
+  This is the generally used external interrupt encoder on SH7751 based boards.
+
+properties:
+  compatible:
+    items:
+      - const: renesas,sh7751-irl-ext
+
+  reg:
+    minItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+
+  '#address-cells':
+    const: 0
+
+  '#size-cells':
+    const: 0
+
+  renesas,width:
+    description: Enable register width
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  renesas,regtype:
+    description: Enable register type
+    $ref: /schemas/types.yaml#/definitions/string
+    oneOf:
+      - description:
+          1 is interrupt enable / 0 is interrupt disable.
+        const: enable
+      - description:
+          1 is interrupt mask / 0 is interrupt unmask.
+        const: mask
+
+  renesas,irqbit:
+    description: IRQ to enable register bit mapping
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+  - renesas,width
+  - renesas,regtype
+  - renesas,irqbit
+
+additionalProperties: false
+
+examples:
+  - |
+    r2dintc: sh7751irl_encoder@a4000000 {
+        compatible = "renesas,sh7751-irl-ext";
+        reg = <0xa4000000 0x02>;
+        interrupt-controller;
+        #address-cells = <0>;
+        #size-cells = <0>;
+        #interrupt-cells = <1>;
+        renesas,width = <16>;
+        renesas,regtype = "enable";
+        renesas,irqbit =  <11>,         /* PCI INTD */
+                          <9>,          /* CF IDE */
+                          <8>,          /* CF CD */
+                          <12>,         /* PCI INTC */
+                          <10>,         /* SM501 */
+                          <6>,          /* KEY */
+                          <5>,          /* RTC ALARM */
+                          <4>,          /* RTC T */
+                          <7>,          /* SDCARD */
+                          <14>,         /* PCI INTA */
+                          <13>,         /* PCI INTB */
+                          <0>,          /* EXT */
+                          <15>;         /* TP */
+    };
-- 
2.39.2


