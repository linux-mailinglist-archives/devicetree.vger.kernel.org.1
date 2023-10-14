Return-Path: <devicetree+bounces-8631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BC77C951B
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76B0C1C209A7
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197C5134BC;
	Sat, 14 Oct 2023 15:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973D25CBE
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:26 +0000 (UTC)
X-Greylist: delayed 964 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 14 Oct 2023 08:10:24 PDT
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.243])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7B11BB
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:24 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-0.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id b6a00e04-5b79-45ba-90cd-dcb684deafe7;
	Sat, 14 Oct 2023 23:54:19 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id 68BBC1C03BE;
	Sat, 14 Oct 2023 23:54:19 +0900 (JST)
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
Subject: [RFC PATCH v3 15/35]  Documentation/devicetree/bindings/interrupt-controller: Add renesas,sh7751-intc.yaml
Date: Sat, 14 Oct 2023 23:53:50 +0900
Message-Id: <eee98f679a9e86180ce047de319edcd30ac38d8b.1697199949.git.ysato@users.sourceforge.jp>
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

SH7751 interrupt controller binding definition.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 .../renesas,sh7751-intc.yaml                  | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-intc.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-intc.yaml
new file mode 100644
index 000000000000..02cc8e73eaf9
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,sh7751-intc.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/renesas,sh7751-intc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SH7751 Interrupt Controller
+
+maintainers:
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+properties:
+  compatible:
+    items:
+      - const: renesas,sh7751-intc
+
+  '#interrupt-cells':
+    # an interrupt index and flags, as defined in interrupts.txt in
+    # this directory
+    const: 2
+
+  interrupt-controller: true
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: ICR
+      - const: INTPRI00
+
+  renesas,icr-irlm:
+    type: boolean
+    description: Use ICR.IRLM=1
+
+  renesas,ipr-map:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      IRQ to IPR mapping definition.
+
+required:
+  - compatible
+  - '#interrupt-cells'
+  - interrupt-controller
+  - reg
+  - reg-names
+  - renesas,ipr-map
+
+additionalProperties: false
+
+examples:
+  - |
+        shintc: interrupt-controller@ffd00000 {
+                compatible = "renesas,sh7751-intc";
+                #interrupt-cells = <2>;
+                interrupt-controller;
+                reg = <0xffd00000 14>, <0xfe080000 128>;
+                renesas,ipr-map = IPRDEF(0x240, IPRD, IPR_B12), /* IRL0 */
+                                  IPRDEF(0x2a0, IPRD, IPR_B8),  /* IRL1 */
+                                  IPRDEF(0x300, IPRD, IPR_B4),  /* IRL2 */
+                                  IPRDEF(0x360, IPRD, IPR_B0),  /* IRL3 */
+                                  IPRDEF(0x400, IPRA, IPR_B12), /* TMU0 */
+                                  IPRDEF(0x420, IPRA, IPR_B8),  /* TMU1 */
+                                  IPRDEF(0x440, IPRA, IPR_B4),  /* TMU2 TNUI */
+                                  IPRDEF(0x460, IPRA, IPR_B4),  /* TMU2 TICPI */
+                                  IPRDEF(0x480, IPRA, IPR_B0),  /* RTC ATI */
+                                  IPRDEF(0x4a0, IPRA, IPR_B0),  /* RTC PRI */
+                                  IPRDEF(0x4c0, IPRA, IPR_B0),  /* RTC CUI */
+                                  IPRDEF(0x4e0, IPRB, IPR_B4),  /* SCI ERI */
+                                  IPRDEF(0x500, IPRB, IPR_B4),  /* SCI RXI */
+                                  IPRDEF(0x520, IPRB, IPR_B4),  /* SCI TXI */
+                                  IPRDEF(0x540, IPRB, IPR_B4),  /* SCI TEI */
+                                  IPRDEF(0x560, IPRB, IPR_B12), /* WDT */
+                                  IPRDEF(0x580, IPRB, IPR_B8),  /* REF RCMI */
+                                  IPRDEF(0x5a0, IPRB, IPR_B4),  /* REF ROVI */
+                                  IPRDEF(0x600, IPRC, IPR_B0),  /* H-UDI */
+                                  IPRDEF(0x620, IPRC, IPR_B12), /* GPIO */
+                                  IPRDEF(0x640, IPRC, IPR_B8),  /* DMAC DMTE0 */
+                                  IPRDEF(0x660, IPRC, IPR_B8),  /* DMAC DMTE1 */
+                                  IPRDEF(0x680, IPRC, IPR_B8),  /* DMAC DMTE2 */
+                                  IPRDEF(0x6a0, IPRC, IPR_B8),  /* DMAC DMTE3 */
+                                  IPRDEF(0x6c0, IPRC, IPR_B8),  /* DMAC DMAE */
+                                  IPRDEF(0x700, IPRC, IPR_B4),  /* SCIF ERI */
+                                  IPRDEF(0x720, IPRC, IPR_B4),  /* SCIF RXI */
+                                  IPRDEF(0x740, IPRC, IPR_B4),  /* SCIF BRI */
+                                  IPRDEF(0x760, IPRC, IPR_B4),  /* SCIF TXI */
+                                  IPRDEF(0x780, IPRC, IPR_B8),  /* DMAC DMTE4 */
+                                  IPRDEF(0x7a0, IPRC, IPR_B8),  /* DMAC DMTE5 */
+                                  IPRDEF(0x7c0, IPRC, IPR_B8),  /* DMAC DMTE6 */
+                                  IPRDEF(0x7e0, IPRC, IPR_B8),  /* DMAC DMTE7 */
+                                  IPRDEF(0xa00, INTPRI00, IPR_B0),      /* PCIC PCISERR */
+                                  IPRDEF(0xa20, INTPRI00, IPR_B4),      /* PCIC CIDMA3 */
+                                  IPRDEF(0xa40, INTPRI00, IPR_B4),      /* PCIC CIDMA2 */
+                                  IPRDEF(0xa60, INTPRI00, IPR_B4),      /* PCIC PCIDMA1 */
+                                  IPRDEF(0xa80, INTPRI00, IPR_B4),      /* PCIC PCIDMA0 */
+                                  IPRDEF(0xaa0, INTPRI00, IPR_B4),      /* PCIC PCIPWON */
+                                  IPRDEF(0xac0, INTPRI00, IPR_B4),      /* PCIC PCIPWDWN */
+                                  IPRDEF(0xae0, INTPRI00, IPR_B4),      /* PCIC PCIERR */
+                                  IPRDEF(0xb00, INTPRI00, IPR_B8),      /* TMU3 */
+                                  IPRDEF(0xb80, INTPRI00, IPR_B12);     /* TMU4 */
+        };
+...
-- 
2.39.2


