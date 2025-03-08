Return-Path: <devicetree+bounces-155646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F21A5A57B14
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5826A3AD83A
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414F21DC997;
	Sat,  8 Mar 2025 14:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="cYcQFwWW"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C2A1DB37B
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741444472; cv=none; b=mv/5yCQaxAx444OxIZvLdU+x7nZ0GKC/6iuRW5PpLKpbIcUM+5gCzNb7nUGg+NATAHK9BEwwV01ftHj7LdX+zkV8mawCExIc21b0SymCrdwZrSLD6d/ZdCFih/FOC80C0FaoqlfXuvLJ5332iB35jrUYTeXxV5Xvc2jnyd+ka1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741444472; c=relaxed/simple;
	bh=mjJ8aBksw1UwkCYqGMcU6WAF4b3rkyrnGleWp560Vb8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fUATZ0YlygK89dwxj665AMu5X/rtBvKOPvwkd7FSW4k0uhnpvLa7TRc/FhyqWm13VeOy54GGwIDfspjhbWeW2f2qCRU2meuxBoiDFA3OV9adljE5Q6cpQy83a1874TQgVJyAfHSh3S39icOlVeJbzvttzLL3O8WZauB+z7mUrcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=cYcQFwWW; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UjRZWbLEME+WuQHUi6XOzLrc6/fGINrz8TDoRoVZM84=; b=cYcQFwWWPkCWTfWbHJ4BVYzzon
	a0knsqMYdondMPOAEiMFLl6o5gm/5NbFJhmXPA6mQZygC1CxOWLUOR4MQb8QEEtNRuxikiwyw8HAq
	fTaQsHJgDNoVuTQNLZqOAHWYp68U4sytzrWyJPbAcG65yYx/mfMYUOgIXumQrmeyTzqtQwnheECoY
	KQak5oIQiLj9s/XrQIwfc5XC3VM9ga283f96KUGANDe1IP/fItqdStXFE7EdXNWKZ5+NQdyiIEugV
	ldpEz5qomvI9bIPWRXT2LaQt8O12D4MNmGSVU43UockRo9kKlUQqB0jdzpOd/00mX4dI097W+Cmj0
	lEZF/rWQ==;
Received: from [189.7.87.170] (helo=1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tqvFt-005pPS-Rh; Sat, 08 Mar 2025 15:34:27 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sat, 08 Mar 2025 11:33:43 -0300
Subject: [PATCH v2 4/6] dt-bindings: gpu: v3d: Add SMS to the registers'
 list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250308-v3d-gpu-reset-fixes-v2-4-2939c30f0cc4@igalia.com>
References: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
In-Reply-To: <20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 kernel-dev@igalia.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, devicetree@vger.kernel.org, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2985; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=mjJ8aBksw1UwkCYqGMcU6WAF4b3rkyrnGleWp560Vb8=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBnzFVitKBWN01vstWvf6hCiuKtukaUDcQL7W3Nd
 UodbjWaSPCJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ8xVYgAKCRA/8w6Kdoj6
 qvjUB/4gRMiWRJGPEm1E44Kuis6jlXba6P8PXGAIBM50qJVc5ilEwxcNQUgbqqgGQIAJL3hQZEv
 EcE3uLx01142inO8hBUjz9Hf3c4j6MeAB+yu8oqi0a0CtA2rciFBTS/KvtL8UD/83XUuTFXfAU2
 HZsI0OP08onUtu2sbWy8S3xcAdBFbKz6WGztLnJTkjDWLF1HwtD45jJ7rM6r+SA/8sAL4Y2q1Ug
 4N+HqVLW+YQNj/k1rIgIiX/z4hlYBiEOpggsEodqZPnY7WPkQql1bihQtew2V3ZisdlkeuBf/YG
 0/pL7Xczzl3yyMSTjlpex3G/U8gAiIETSFkErHFlX/8KvPyo
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
V3D 7.1 core, add a new register item to the list. Similar to the GCA
and bridge register, SMS is optional and should only be added for V3D
7.1 variants.

In order to enforce per-SoC register rules, add per-compatible
restrictions. The restrictions will assure that GCA will only be added
in BCM7268 (V3D 3.3) and SMS will only be added in BCM2712 (V3D 7.1).

Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 60 ++++++++++++++++++++--
 1 file changed, 55 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..c0caee055e8c18dbcac0e51aa192951996545695 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -27,15 +27,12 @@ properties:
       - description: core0 register (required)
       - description: GCA cache controller register (if GCA controller present)
       - description: bridge register (if no external reset controller)
+      - description: SMS register (if SMS controller present)
     minItems: 2
 
   reg-names:
-    items:
-      - const: hub
-      - const: core0
-      - enum: [ bridge, gca ]
-      - enum: [ bridge, gca ]
     minItems: 2
+    maxItems: 4
 
   interrupts:
     items:
@@ -60,6 +57,59 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - brcm,2711-v3d
+              - brcm,7278-v3d
+    then:
+      properties:
+        reg:
+          minItems: 2
+          maxItems: 3
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: bridge
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,2712-v3d
+    then:
+      properties:
+        reg:
+          minItems: 3
+          maxItems: 4
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - enum: [ bridge, sms ]
+            - enum: [ bridge, sms ]
+          minItems: 3
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,7268-v3d
+    then:
+      properties:
+        reg:
+          minItems: 3
+          maxItems: 4
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - enum: [ bridge, gca ]
+            - enum: [ bridge, gca ]
+          minItems: 3
+
 examples:
   - |
     gpu@f1200000 {

-- 
Git-154)


