Return-Path: <devicetree+bounces-157909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B69A63604
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 15:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63097188EEB6
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 14:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E6C1AAE28;
	Sun, 16 Mar 2025 14:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="fiFFz2Ym"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8656C1A314C
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 14:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742134609; cv=none; b=RbS7QC3TT50W4iYg9KgjPKqyYkMuJ5SNck4sxidxq7agmghQX3shU1ckk7tQaMzcdISbpI+uQNPXVS9+0qjkAg2GPJ/iwLAwKbP5sUWtqpJIVpLp8TWIRGUIvLmXVrt8EoVs8+8u2qT0SqNOWK99B2TCYd4i0rAXDf5wIZWMLNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742134609; c=relaxed/simple;
	bh=1AyDdwwMCnALN/JnGRo5434bKgHs+1fqjZgt9iG85SY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y/ZU83h6j4A5FcIUPtfoZxeWyRhE/hkLSCTgohiT9bDWINsnSn/t28neSnb9Q+SyPgsNg/tbV9IuvvYEw3r60aUG5utL9vqXQWPsBBTUuhfMOTeMhe55Dy5+JjencGao9hW3zwyEUkULK7XptvRzcARacvDPuO8T3ORlXTXXbjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=fiFFz2Ym; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pZNo22H99YsXVVQLUdWIQTaFAQXug4Byoe1ZTYTjjtM=; b=fiFFz2YmlS2D+nNO0eaJsoSOqo
	801r0XGyM5Q8oBudL1T+Ark9FNYqUnZTIyzoGz9kDcXPPoBOFHVpaT+eV0OHpUM3UDirG9IAzeiL4
	TPX6WlsR7ljA8Qspqi8YHeVSimVqjnEKEVoyqPKbrfD1LBDL60ZfIEG1Ni8iSsypBBmAcUxYdhu7S
	/uurC1Ogi1PV55gjGosOf0bVFGXOEzjQgOrYGorC4yFLet6QEBf2SyKBdtF3NIZAWzuE3MsJww6zg
	zmr2DHh33zdMOuPO4xjsXWuIrSzPArq6Py4bN9kjVixVxjDLddn4KrkOOzV/SJe7OgF8d3wZ01m7i
	SpXldkZQ==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tton5-0016D3-BR; Sun, 16 Mar 2025 15:16:35 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Sun, 16 Mar 2025 11:15:09 -0300
Subject: [PATCH v5 2/6] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250316-v3d-gpu-reset-fixes-v5-2-9779cdb12f06@igalia.com>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3941; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=1AyDdwwMCnALN/JnGRo5434bKgHs+1fqjZgt9iG85SY=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn1t0yENcTqCPZLeXg5ptCoj6GF3cOHwBHMg9M/
 o35jYv/aL+JATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9bdMgAKCRA/8w6Kdoj6
 qkO2B/40vpb7jpFPrsXArdjpYyvTWLZhtzpwi0LFeM6tRCqcm6mEJMNMwjp4hidmKIRe7wJaloe
 xgB3+K1Ic3lnjBgBI1NZ91wWKKYknHgZHPsumoeoFblvEUtk+m6hWEl8K2IoWX3uanmpXl+01ar
 cyL/16kzqLv3IbUJ0qLUaW4o9hV0f8YRZxoh5YAy8lRRPFkcIX/1sTBQTRXrT8Q6hormgvrp3wt
 1M7KqjA7aLT7to1knvhCEu+VGQz7LHOGkyFGJahEtHVzWYAxjjkA4nJ4Fo6rRx5jecGE8/HPdvS
 KMj2H8Fse53RPRBEkZBn3P4TKBcj32bK4Uapl9r8IJj6HzQ9
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

In order to enforce per-SoC register rules, add per-compatible
restrictions. V3D 3.3 (used in brcm,7268-v3d) has a cache controller
(GCA), which is not present in other V3D generations. Declaring these
differences helps ensure the DTB accurately reflect the hardware design.

This commit breaks the ABI for BCM7268 to enforce an ascending address
order for registers. With a now well-defined ABI for different SoCs, the
goal is to maintain stability going forward.

Due to the change in the ABI, the example also needed to be updated.

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 86 ++++++++++++++++++----
 1 file changed, 73 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..c736b3b00ed2c259c263615bdc2bc1899c8961f8 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -22,20 +22,12 @@ properties:
       - brcm,7278-v3d
 
   reg:
-    items:
-      - description: hub register (required)
-      - description: core0 register (required)
-      - description: GCA cache controller register (if GCA controller present)
-      - description: bridge register (if no external reset controller)
     minItems: 2
+    maxItems: 4
 
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
@@ -58,6 +50,74 @@ required:
   - reg-names
   - interrupts
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,2711-v3d
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
+            - description: bridge register
+            - description: GCA cache controller register
+            - description: core0 register
+        reg-names:
+          items:
+            - const: hub
+            - const: bridge
+            - const: gca
+            - const: core0
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,7278-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register
+            - description: core0 register
+            - description: bridge register
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: bridge
+
 additionalProperties: false
 
 examples:
@@ -65,10 +125,10 @@ examples:
     gpu@f1200000 {
       compatible = "brcm,7268-v3d";
       reg = <0xf1200000 0x4000>,
-            <0xf1208000 0x4000>,
             <0xf1204000 0x100>,
-            <0xf1204100 0x100>;
-      reg-names = "hub", "core0", "bridge", "gca";
+            <0xf1204100 0x100>,
+            <0xf1208000 0x4000>;
+      reg-names = "hub", "bridge", "gca", "core0";
       interrupts = <0 78 4>,
                    <0 77 4>;
     };

-- 
Git-154)


