Return-Path: <devicetree+bounces-246793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6FACBFEF7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EA3930C1290
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A665C2DE1E0;
	Mon, 15 Dec 2025 21:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM0JeO1T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6BF26B74A;
	Mon, 15 Dec 2025 21:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833995; cv=none; b=D8pgs08VkMBz/eucktJNhtwadCgdYTNUUdhMKJOJblL/aWeXZiGwi28BAov276udnBX5DVypxVWx1jpAHKBo4cMz4fxdStBeyGwLpQL8cM77EyCTgAKKiJY8Co8udtejAEvrpvLTL8i2KgwnnrFuX8Uxo5K4aUSWx48UnGUEoxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833995; c=relaxed/simple;
	bh=k3TJ50RJbW8Xj/AFXaKDhNiir1iwZUG4k/nN+AtrZB4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=aiMRu34L1NNnuN0s92rBOL86egy0jrR1W8oVn6IlJ6ezoBGb70LAQjYTeqKumusBvCS67iSa5eKmVb6D7VERghUUdz50wVQnb2YvWj8+qVRaf7OuE2ZEZirkuflnXsjbS6iCalRGuSKwhDF1ttDr/+RGypvAyZ+8+cbo5HXFChw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FM0JeO1T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D400DC4CEF5;
	Mon, 15 Dec 2025 21:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833995;
	bh=k3TJ50RJbW8Xj/AFXaKDhNiir1iwZUG4k/nN+AtrZB4=;
	h=From:To:Cc:Subject:Date:From;
	b=FM0JeO1TlQJsUV4n8ho4ov2T9nyQbtm0EBFNI0opAw2z92LS4pR4sVVcDAfITqSZ8
	 Zo0NfdUd7h2GF3MCbRcvnaKuxwRc3+hMVtOsH0Wp1O37d4obhdDzYXMCBba6jnD8D+
	 2XI91R9PTw47nOy6r14bU8Q/9W3galqXJGGkhTsPZSqmN0zeTYOMZPn12o/rJJTga0
	 OCk9ePzkuazLCJvGwJ/Lke9ywFx5q9PrtlyiwV7NaXyOTmWCOgVIwVEQIpFJqIcuQn
	 qJPpmfFBUWHWMx5sa6Tjq9JJMYTSyzKEHUQ/RWAd40ZZbe7wPV9qoY8lEQ9gGLR6Ug
	 BFsBOJikYrprQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Add Realtek RTD1xxx system controllers
Date: Mon, 15 Dec 2025 15:26:21 -0600
Message-ID: <20251215212624.3319681-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Realtek system controllers are already in use with only generic
'"syscon", "simple-mfd"' compatibles and are missing specific
compatibles as required. Add a schema with specific compatibles. The
labels used in .dts files serve as the basis for the names.

It's doubtful the child nodes upstream are complete and I don't have
documentation, so the specific child nodes aren't documented here. Of
the ones in use, bindings already exist for them.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/mfd/realtek,rtd1xxx.yaml         | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/realtek,rtd1xxx.yaml

diff --git a/Documentation/devicetree/bindings/mfd/realtek,rtd1xxx.yaml b/Documentation/devicetree/bindings/mfd/realtek,rtd1xxx.yaml
new file mode 100644
index 000000000000..b0342df0e32a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/realtek,rtd1xxx.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/realtek,rtd1xxx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek RTD1xxx system controllers
+
+maintainers:
+  - Andreas Färber <afaerber@suse.de>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - realtek,rtd1293-crt
+          - realtek,rtd1293-iso
+          - realtek,rtd1293-misc
+          - realtek,rtd1293-sb2
+          - realtek,rtd1293-scpu-wrapper
+          - realtek,rtd1295-crt
+          - realtek,rtd1295-iso
+          - realtek,rtd1295-misc
+          - realtek,rtd1295-sb2
+          - realtek,rtd1295-scpu-wrapper
+          - realtek,rtd1296-crt
+          - realtek,rtd1296-iso
+          - realtek,rtd1296-misc
+          - realtek,rtd1296-sb2
+          - realtek,rtd1296-scpu-wrapper
+          - realtek,rtd1395-crt
+          - realtek,rtd1395-iso
+          - realtek,rtd1395-misc
+          - realtek,rtd1395-sb2
+          - realtek,rtd1395-scpu-wrapper
+          - realtek,rtd1619-crt
+          - realtek,rtd1619-iso
+          - realtek,rtd1619-misc
+          - realtek,rtd1619-sb2
+          - realtek,rtd1619-scpu-wrapper
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  reg-io-width:
+    const: 4
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
+  '@[0-9a-f]+$':
+    type: object
+
+    required:
+      - compatible
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
-- 
2.51.0


