Return-Path: <devicetree+bounces-239982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C03BCC6BBAF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 74DFE242D9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8722EC0A2;
	Tue, 18 Nov 2025 21:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDlM0odi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA972DFA40;
	Tue, 18 Nov 2025 21:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763501748; cv=none; b=g3E+TkYvPvvsa3LaLZIJnMoRALUxS4D6FQCC/n2KCVIZLYSNuE/nsXImSPEAz2t8J7hHP3lQ2pCMxpOzk4tVvbFlCpQn92s6jZ8bqXyrBtFjL3j5P9hWjr1M3nyVV0oQUUYr/ek4mhQzBlpSVLs09/L96oZFvg9LtpaDsPO4AAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763501748; c=relaxed/simple;
	bh=dmxEmfLgmcrkP8R3H71oJOtqiEt83Sm3cSN+h2cZdM4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f7Yk9MeclAPZ9doh48q/h8NqvczIUddx5Z2LMlkUKfMAKBd2iTf+pljEgxEsT6mX5GAGOMLwVdeAlVIVlZhN+UhHgOLV188SNPjGp6BQB0qBMIAar6xbymVKQy4jnjNlmWZasA8duNSb8HMR5dQpfYMyz7AwTorFF8A/9PNcLH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDlM0odi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C60C2BCB5;
	Tue, 18 Nov 2025 21:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763501747;
	bh=dmxEmfLgmcrkP8R3H71oJOtqiEt83Sm3cSN+h2cZdM4=;
	h=From:To:Cc:Subject:Date:From;
	b=fDlM0odiCCNEh2ZysYpMpUiCDSLIYLWCLr49ZjeHUBxhohXYJif+zLsC1m4Jkg5LB
	 uCXJMFm7qmYOpOL07q7YSQFxsdBvABsXHgYSNaOAznf3rKXEtjBCA4nl+SsKvGmZRx
	 7a1iNo0bJ2zrz4EEoXXrbke69hRYKk895OR9PxNP+TxSFrCjK0mWMXeYimOqou9GKG
	 Clg3YtYFh52cz8iNIwX9on5T5yJZ3ubo+ba7iU+wZdVG9Hcri8VgH+T2FXsgKpu928
	 gJxpaOcWCEiPL5lycETELiOa1USY6hWGLWCr0Ex7PxE5MnkVZZzKjiI1i2dqXydWYW
	 vUkzIzGcBbhCQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexander Kurz <akurz@blala.de>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: fsl,mc13xxx: Fix leds node schema
Date: Tue, 18 Nov 2025 15:35:40 -0600
Message-ID: <20251118213541.43812-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'leds' node is missing constraints on additional properties. It is
mixing 'leds' node and child node properties as well as missing some
properties. Add the 'led@' child nodes and the missing properties.

Fixes: 1160f9f88be2 ("dt-bindings: mfd: fsl,mc13xxx: Convert txt to DT schema")
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/mfd/fsl,mc13xxx.yaml  | 74 +++++++++++--------
 1 file changed, 43 insertions(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/fsl,mc13xxx.yaml b/Documentation/devicetree/bindings/mfd/fsl,mc13xxx.yaml
index d2886f2686a8..cfa69f1f380a 100644
--- a/Documentation/devicetree/bindings/mfd/fsl,mc13xxx.yaml
+++ b/Documentation/devicetree/bindings/mfd/fsl,mc13xxx.yaml
@@ -93,38 +93,14 @@ properties:
 
   leds:
     type: object
-    $ref: /schemas/leds/common.yaml#
+    additionalProperties: false
 
     properties:
-      reg:
-        description: |
-          One of
-          MC13783 LED IDs
-            0: Main display
-            1: AUX display
-            2: Keypad
-            3: Red 1
-            4: Green 1
-            5: Blue 1
-            6: Red 2
-            7: Green 2
-            8: Blue 2
-            9: Red 3
-            10: Green 3
-            11: Blue 3
-
-          MC13892 LED IDs
-            0: Main display
-            1: AUX display
-            2: Keypad
-            3: Red
-            4: Green
-            5: Blue
-
-          MC34708 LED IDs
-            0: Charger Red
-            1: Charger Green
-        maxItems: 1
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
 
       led-control:
         $ref: /schemas/types.yaml#/definitions/uint32-array
@@ -132,6 +108,42 @@ properties:
           Setting for LED-Control register array length depends on model,
           mc13783: 6, mc13892: 4, mc34708: 1
 
+    patternProperties:
+      '^led@[0-9a-b]$':
+        $ref: /schemas/leds/common.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            description: |
+              One of
+              MC13783 LED IDs
+                0: Main display
+                1: AUX display
+                2: Keypad
+                3: Red 1
+                4: Green 1
+                5: Blue 1
+                6: Red 2
+                7: Green 2
+                8: Blue 2
+                9: Red 3
+                10: Green 3
+                11: Blue 3
+
+              MC13892 LED IDs
+                0: Main display
+                1: AUX display
+                2: Keypad
+                3: Red
+                4: Green
+                5: Blue
+
+              MC34708 LED IDs
+                0: Charger Red
+                1: Charger Green
+            maxItems: 1
+
   regulators:
     type: object
 
@@ -262,7 +274,7 @@ examples:
                 #size-cells = <0>;
                 led-control = <0x000 0x000 0x0e0 0x000>;
 
-                sysled@3 {
+                led@3 {
                     reg = <3>;
                     label = "system:red:live";
                     linux,default-trigger = "heartbeat";
-- 
2.51.0


