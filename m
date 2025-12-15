Return-Path: <devicetree+bounces-246794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9DDCBFEFD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8B6030CAD03
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E66432D7F0;
	Mon, 15 Dec 2025 21:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdH3buuc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DF132D7D7;
	Mon, 15 Dec 2025 21:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834005; cv=none; b=r8yBszowhYYnT4wK5/8LMOa/iniea3r3OMnXdbEeIBjX+j41EEBiUN3nD8+L805fPH2qk85nZuXPuO2VBbrWzoMkT4J05ynSlviS5yUg34OVeBXZCXPAJUkiJkpdyCV1LUNa1KG++9pjeRjSrvUb3HumOXrsP3KbXx+igvIZrSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834005; c=relaxed/simple;
	bh=uRNJddo+vouEyP794R241aVY4Zf28Y6gZRyDWhZTXHs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OGW3yTDNcxT5LuFqF7pRxhsR6N73/3MlbGDa5Gc0xVxL+nL7f/VGgCRPGRFMGWxm1tLFHuadqL5ecnRYpvUErOpEyp/sDZGxzAZvqepH2UJBqVmjugUXVZ4IVBXaYX8uRVF7gYzFm2vphGqn/nWt+IuIV6Zv0WV98lvJyInsM3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdH3buuc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81AE8C4CEF5;
	Mon, 15 Dec 2025 21:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834004;
	bh=uRNJddo+vouEyP794R241aVY4Zf28Y6gZRyDWhZTXHs=;
	h=From:To:Cc:Subject:Date:From;
	b=gdH3buuc8+XlWjhZV0kvO53liUqNHc4lvv4qOoHX7QIWzVORMPhjpjwBJzh6DL+TB
	 jKoOTTYPqHdb+Z1LvpQfLaEskdkVbcRy5YYGEyLtgTPZ9kO6Z0FwmgNeNXTHgW3VtZ
	 Ql1RHlsH2sTGpcBKaQ8q3gVpgb+F1efX6lPZaMvgW7uK7Z4h5+u1yoGJgsNDjPJDiZ
	 azvo3E3QaxdFDh9Qmsd+F6m/PkfZFLV1V4BDrW3dj99hkGPpD7dEX6wQEF83NV4Cmj
	 +DMRsaYjZaDN0K8iT4v6JMJdjmWfYZF9Vp11vSKcNPzxboBAmDA9QKFz9arBK0KvX4
	 fqwxK5ud0XmQA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Add Bitmain BM1880 System Controller
Date: Mon, 15 Dec 2025 15:26:38 -0600
Message-ID: <20251215212639.3320085-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the already in use Bitmain BM1880 System Controller binding. All the
child nodes already have schemas.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/mfd/bitmain,bm1880-sctrl.yaml    | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/bitmain,bm1880-sctrl.yaml

diff --git a/Documentation/devicetree/bindings/mfd/bitmain,bm1880-sctrl.yaml b/Documentation/devicetree/bindings/mfd/bitmain,bm1880-sctrl.yaml
new file mode 100644
index 000000000000..3cdc90ba421b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/bitmain,bm1880-sctrl.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/bitmain,bm1880-sctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bitmain BM1880 System Controller
+
+maintainers:
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - const: bitmain,bm1880-sctrl
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+patternProperties:
+  '^pinctrl@[0-9a-f]+$':
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        contains:
+          const: bitmain,bm1880-pinctrl
+
+  '^clock-controller@[0-9a-f]+$':
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        contains:
+          const: bitmain,bm1880-clk
+
+  '^reset-controller@[0-9a-f]+$':
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        contains:
+          const: bitmain,bm1880-reset
+
+required:
+  - compatible
+  - reg
+  - ranges
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+...
-- 
2.51.0


