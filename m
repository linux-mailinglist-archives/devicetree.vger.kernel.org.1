Return-Path: <devicetree+bounces-24204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473480E5E0
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88A1EB20C46
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C19433DB;
	Tue, 12 Dec 2023 08:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDROcLLs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6351A5BE
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 08:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81388C116B9;
	Tue, 12 Dec 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702369325;
	bh=0k3URFJZb18PwpzeMhJ7DF35374xGK50doG0S5Yr3LQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BDROcLLsTnJcbQihAaE0BHL0Lbyy9V3H9VyuCazvVN0bEju6TwjGQ/ypqBXaHSaHL
	 UJMkjFVUUjo2U/UjBIpURIcDoW6wFqshhCkuQIuAyMKTz5wIHG75kHV8w8+mCFvf48
	 fha6LVGFpw20neTCqRjwN/F//iiSMej51mGzxaZIbJ39yzjTisHlMu7hX1WuK4p68j
	 XJF1SDPQV9mwXLXJuI3mpwvxjNaF8AHtJb8Wnx8NLXp1x5/g+wQG0+IX9ggj2hPOnr
	 kAt34Zc9D4mOtJK93Yty6L08qxmRMmN8BJyFpiMaGl/CiK1RaDRXGwUIfW4I/WG005
	 esccW1E6yNufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E90C4167D;
	Tue, 12 Dec 2023 08:22:05 +0000 (UTC)
From:
 Nikita Shubin via B4 Relay <devnull+nikita.shubin.maquefel.me@kernel.org>
Date: Tue, 12 Dec 2023 11:20:36 +0300
Subject: [PATCH v6 19/40] dt-bindings: mtd: Add ts7200 nand-controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231212-ep93xx-v6-19-c307b8ac9aa8@maquefel.me>
References: <20231212-ep93xx-v6-0-c307b8ac9aa8@maquefel.me>
In-Reply-To: <20231212-ep93xx-v6-0-c307b8ac9aa8@maquefel.me>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nikita Shubin <nikita.shubin@maquefel.me>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13-dev-e3e53
X-Developer-Signature: v=1; a=ed25519-sha256; t=1702369322; l=1633;
 i=nikita.shubin@maquefel.me; s=20230718; h=from:subject:message-id;
 bh=bq2OLT9jIJx+y3Eu11Bq5qmV15g39ulN9ve41TDPTOE=; =?utf-8?q?b=3Derqpr0ElC5jE?=
 =?utf-8?q?9F+Z6WrURqHV/Erq5JGxnh4+9K7xC4SRBSXL+iAOecOFLHmnBMCm+hszovTlZ1L3?=
 b7orDvuTDlkjuUU/nvg+is304uxKOLlTD2DNC/NrWIv0UymoUK5i
X-Developer-Key: i=nikita.shubin@maquefel.me; a=ed25519;
 pk=vqf5YIUJ7BJv3EJFaNNxWZgGuMgDH6rwufTLflwU9ac=
X-Endpoint-Received:
 by B4 Relay for nikita.shubin@maquefel.me/20230718 with auth_id=65
X-Original-From: Nikita Shubin <nikita.shubin@maquefel.me>
Reply-To: <nikita.shubin@maquefel.me>

From: Nikita Shubin <nikita.shubin@maquefel.me>

Add YAML bindings for ts7200 NAND Controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
---
 .../devicetree/bindings/mtd/technologic,nand.yaml  | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/technologic,nand.yaml b/Documentation/devicetree/bindings/mtd/technologic,nand.yaml
new file mode 100644
index 000000000000..f9d87c46094b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/technologic,nand.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/technologic,nand.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Technologic Systems NAND controller
+
+maintainers:
+  - Nikita Shubin <nikita.shubin@maquefel.me>
+
+allOf:
+  - $ref: nand-controller.yaml
+
+properties:
+  compatible:
+    oneOf:
+      - const: technologic,ts7200-nand
+      - items:
+          - enum:
+              - technologic,ts7300-nand
+              - technologic,ts7260-nand
+              - technologic,ts7250-nand
+          - const: technologic,ts7200-nand
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    nand-controller@60000000 {
+        compatible = "technologic,ts7200-nand";
+        reg = <0x60000000 0x8000000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        nand@0 {
+           reg = <0>;
+        };
+    };

-- 
2.41.0


