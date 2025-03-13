Return-Path: <devicetree+bounces-157276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E0EA5F8EA
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 15:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E57E3B3E16
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42845267B96;
	Thu, 13 Mar 2025 14:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="BvkdW7cX"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655F786337
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741877220; cv=none; b=ePNiH9FXbg2u8uCPPzUO0kF4uOmq6ZRJvyTQzJkUu5vIbTnJUXCo1+XJwqG4mY6Pisvl1KwP+0HUh9EVWggSv9dfdvBGFRKwG16AI2BNWLz4ghtT9YLn6VRvMLtaZdZ7WrIchyUwrJbWgtg5xWNWOm/gPEu2ZqzVpU1dQ8VzZZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741877220; c=relaxed/simple;
	bh=1HXdul0BTSoDQyMLX7kq2Nu9+dHWcOZRCBzIkaUnkN8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kAwTNPD2WATwUTDKzYxFF5MAwzqpMGpbpmfnYdC36x2kIFZQaCtKtPh7rkgipF93XNZxIv7hymMTNsnnf/MeuD6J5vHvDYqiRApP5uMZLUFWPI2n/v2ibW7V/8FFBNy2GwsYsKSlmMC49x+7uw2obIWspEhdXboZDqS7PTVXKE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=BvkdW7cX; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vqq3YnQFKkeRdoaga/IONCoJSsOB2RrU605UFKZ3Pxg=; b=BvkdW7cXWab+skXxHKDbTBro/B
	gcilnuDS3P9B49LFLWY68MfK9YQ70AsyvOVkWK9WaK/q9ATOAACU3flfZedFle0VfUE4Cb/hsZVQU
	uvH4piycTopiIn8nEbzuUmIkTS6oTWF7R1ICDZVwFYIIVuXC9D+b6UmV/4t7tF/bcA4ttEB1PGLLl
	cGVuZSu07hp41SkO9yTadNJW3TDdlR9lqL6egvYUVYevFiUn9qEwd+Mf/QrvaJ+Kgcb5TwhOBoooZ
	79I9bdPI5IUyqr56Otk8sNddM6sLW72OE8miuHLO1elBSDz17hsugDOkxuNvYxKmJvgujMu5WRcZQ
	pYtrD8cA==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tsjpf-008Cju-2L; Thu, 13 Mar 2025 15:46:53 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Thu, 13 Mar 2025 11:43:29 -0300
Subject: [PATCH v4 4/7] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250313-v3d-gpu-reset-fixes-v4-4-c1e780d8e096@igalia.com>
References: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
In-Reply-To: <20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3220; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=1HXdul0BTSoDQyMLX7kq2Nu9+dHWcOZRCBzIkaUnkN8=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0u/IC8oVnauxpTr45TQr/OJHGBVgNCYVwjt4L
 bSv89CGOTOJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9LvyAAKCRA/8w6Kdoj6
 qpTKCADAAJBgjFx1QMQRrZqjWgXa8rSkaM1Jmcv4X/TDqvQtMQIQC//NcRqtNyN9HxYySKN1tpP
 D1Hyq959yaJy3OpDh6rZeUQ4x5KeAruL+yim3UH4d1Vak3GWW7y22Z/PTOrFoVSoigDxsh9HF2E
 D51tAGRlyVLCduEs6PjpwahmVh9KoYCzOnZJDjGftxu61IzmGfpc+lVJk5ni5j7idcJNo7vYBX+
 X5GCXoOFr0T4koRMau1UpY/thjlliADO7hxaUDFr1C2u5PXQ8rqeqEOA5ooosOb86bgKkUiNz7U
 z91IsHITfctNrbgqFn76IwwT/UawkLgl+3Bjqmvk4SFc8f08
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

In order to enforce per-SoC register rules, add per-compatible
restrictions. V3D 3.3 (represented by brcm,7268-v3d) has a cache
controller (GCA), which is not present in other V3D generations.
Declaring these differences helps ensure the DTB accurately reflect
the hardware design.

While not ideal, this commit keeps the register order flexible for
brcm,7268-v3d with the goal to keep the ABI backwards compatible.

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 73 ++++++++++++++++++----
 1 file changed, 61 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..9867b617c60c6fe34a0f88a3ee2f581a94b69a5c 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -22,20 +22,10 @@ properties:
       - brcm,7278-v3d
 
   reg:
-    items:
-      - description: hub register (required)
-      - description: core0 register (required)
-      - description: GCA cache controller register (if GCA controller present)
-      - description: bridge register (if no external reset controller)
-    minItems: 2
+    maxItems: 4
 
   reg-names:
-    items:
-      - const: hub
-      - const: core0
-      - enum: [ bridge, gca ]
-      - enum: [ bridge, gca ]
-    minItems: 2
+    maxItems: 4
 
   interrupts:
     items:
@@ -58,6 +48,65 @@ required:
   - reg-names
   - interrupts
 
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
+          items:
+            - description: hub register
+            - description: core0 register
+            - description: bridge register (if no external reset controller)
+          minItems: 2
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: bridge
+          minItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,2712-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register
+            - description: core0 register
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,7268-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register
+            - description: core0 register
+            - description: GCA cache controller register
+            - description: bridge register (if no external reset controller)
+          minItems: 3
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - enum: [ bridge, gca ]
+            - enum: [ bridge, gca ]
+          minItems: 3
+
 additionalProperties: false
 
 examples:

-- 
Git-154)


