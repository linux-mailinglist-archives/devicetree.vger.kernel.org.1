Return-Path: <devicetree+bounces-8637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDD17C9520
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 17:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 968CB281D32
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5565F134A3;
	Sat, 14 Oct 2023 15:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC12134C4
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 15:10:29 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.238])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C9E3D9
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 08:10:27 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-2.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id 45889b23-c070-4b31-9412-af3c6884de5b;
	Sat, 14 Oct 2023 23:54:24 +0900 (JST)
Received: from SIOS1075.ysato.name (ZM005235.ppp.dion.ne.jp [222.8.5.235])
	by sakura.ysato.name (Postfix) with ESMTPSA id E33CE1C03DF;
	Sat, 14 Oct 2023 23:54:23 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v3 29/35]  Documentation/devicetree/bindings/soc/renesas/sh.yaml: Add SH7751 based target.
Date: Sat, 14 Oct 2023 23:54:04 +0900
Message-Id: <35311df6cf65c9f110604cbbdecad2f15ac602b6.1697199949.git.ysato@users.sourceforge.jp>
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

Renesas SuperH based target definition.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 .../devicetree/bindings/soc/renesas/sh.yaml   | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/renesas/sh.yaml

diff --git a/Documentation/devicetree/bindings/soc/renesas/sh.yaml b/Documentation/devicetree/bindings/soc/renesas/sh.yaml
new file mode 100644
index 000000000000..3fbff2532ad3
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/renesas/sh.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/renesas/sh.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas SuperH Platform
+
+maintainers:
+  - Yoshinori Sato <ysato@users.sourceforge.jp>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: RTS7751R2D Plus
+        items:
+          - enum:
+              - renesas,rts7751r2d # Renesas SH4 2D graphics board
+          - const: renesas,sh7751r
+
+      - description: Julian board
+        items:
+          - enum:
+              - iodata,landisk  # LANDISK HDL-U
+              - iodata,usl-5p   # USL-5P
+          - const: renesas,sh7751r
+
+additionalProperties: true
+
+...
-- 
2.39.2


