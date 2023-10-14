Return-Path: <devicetree+bounces-8632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0632E7C951C
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E5CF282219
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD8A134C7;
	Sat, 14 Oct 2023 15:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377A9134A0
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:27 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.243])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B103FCE
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:25 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-0.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id 83d8e8af-847f-4749-ae51-a1bc9974faf3;
	Sat, 14 Oct 2023 23:54:22 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id 70E131C050D;
	Sat, 14 Oct 2023 23:54:22 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 25/35] Documentation/devicetree/bindings/sh/cpus.yaml: Add SH CPU.
Date: Sat, 14 Oct 2023 23:54:00 +0900
Message-Id: <46ef748dd27127ef9b39fa6c97fe51e8d3422a4f.1697199949.git.ysato@users.sourceforge.jp>
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

Renesas SuperH binding definition.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 .../devicetree/bindings/sh/cpus.yaml          | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sh/cpus.yaml

diff --git a/Documentation/devicetree/bindings/sh/cpus.yaml b/Documentation/devicetree/bindings/sh/cpus.yaml
new file mode 100644
index 000000000000..273df4dfb74e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sh/cpus.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sh/cpus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SuperH CPUs
+
+maintainers:
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+description: |+
+  The device tree allows to describe the layout of CPUs in a system through
+  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
+  defining properties for every cpu.
+
+  Bindings for CPU nodes follow the Devicetree Specification, available from:
+
+  https://www.devicetree.org/specifications/
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - renesas,sh4
+      - const: renesas,sh
+
+  clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      CPU core clock freqency.
+
+required:
+  - compatible
+
+additionalProperties: true
+
+examples:
+  - |
+        cpus {
+                cpu: cpu@0 {
+                      compatible = "renesas,sh4", "renesas,sh";
+                };
+        };
+...
-- 
2.39.2


