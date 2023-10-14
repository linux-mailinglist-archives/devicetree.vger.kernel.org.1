Return-Path: <devicetree+bounces-8636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E93417C9521
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77E8DB20BB2
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8CDA134A4;
	Sat, 14 Oct 2023 15:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF97134B9
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:28 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.239])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDED8CA
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:24 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-0.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id 3b3169b0-57ff-4307-843c-466ca2e6d78d;
	Sat, 14 Oct 2023 23:54:19 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id BD16D1C03DF;
	Sat, 14 Oct 2023 23:54:18 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 13/35] Documentation/devicetree/bindings/clock: Add renesas,sh7750-cpg binding document.
Date: Sat, 14 Oct 2023 23:53:48 +0900
Message-Id: <a911866d220f7b0945e0fb12448e0c1faa3ff346.1697199949.git.ysato@users.sourceforge.jp>
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

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 .../bindings/clock/renesas,sh7750-cpg.yaml    | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.yaml

diff --git a/Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.yaml b/Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.yaml
new file mode 100644
index 000000000000..a640968ed005
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/renesas,sh7750-cpg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SH7750/7751 Clock Pulse Generator (CPG)
+
+maintainers:
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+description:
+  The Clock Pulse Generator (CPG) generates core clocks for the SoC.  It
+  includes PLLs, and variable ratio dividers.
+
+  The CPG may also provide a Clock Domain for SoC devices, in combination with
+  the CPG Module Stop (MSTP) Clocks.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,sh7750-cpg             # SH7750
+          - renesas,sh7750s-cpg            # SH775S
+          - renesas,sh7750r-cpg            # SH7750R
+          - renesas,sh7751-cpg             # SH7751
+          - renesas,sh7751r-cpg            # SH7751R
+      - const: renesas,sh7750-cpg
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: FRQCR
+      - const: CLKSTP00
+
+  clocks: true
+
+  clock-names: true
+
+  '#clock-cells':
+    const: 1
+
+  renesas,mode:
+    description: Board-specific settings of the MD[0-2] pins on SoC
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 6
+
+  '#power-domain-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sh7750.h>
+    cpg: clock-controller@ffc00000 {
+        #clock-cells = <1>;
+        #power-domain-cells = <0>;
+        compatible = "renesas,sh7751r-cpg";
+        clocks = <&xtal>;
+        clock-names = "xtal";
+        reg = <0xffc00000 20>, <0xfe0a0000 16>;
+    };
-- 
2.39.2


