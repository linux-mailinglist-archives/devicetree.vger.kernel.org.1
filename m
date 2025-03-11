Return-Path: <devicetree+bounces-156627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD506A5CD8F
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB0267AD049
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87F6263C61;
	Tue, 11 Mar 2025 18:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="O6RjmMh0"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B09E26389C
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716880; cv=none; b=Pu7UpHpI5/9Xjbs3YTxFqyuorWBQ2M8ivSJxn6v7t8gb/dH/YwjkPBTe5ceJvLKTpGhxxTYOaFdIktE8/glJyW0FlBAX/manJ34i2nMnl7juejOeBXJhKOdcHr+UO6qPK6BZwLXh32QF6K8MYaNJL0xF5c4AjJQDkZXER56hBZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716880; c=relaxed/simple;
	bh=JdgqvNtflpyoyBlk5wlUALSmD1sKQ5OFdVDxI+f36aI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UEUsP+ROf7TylUpYucyDL22RnVmF8s1lvlnDx6POsftENwUllE4optbjyAy4UM7gta5RvWkJsCPoIxADwSAzLw1byluWvgkJBoyy3J8vb/kSotiR4MTyZm7dW8QAmiojXc3b5RSqL1q36hx106d33ClRxEzzwdWlAIDigB2ZoHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=O6RjmMh0; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ajacH/5tpV7Kup0244QZuNY5yBxLr83dWQ4c5DKHADI=; b=O6RjmMh0uA3tUShaDPVlSE8zOG
	hdWA5BU6WTlgoi8i/ac3IU3fYV8DYwn3PxbpYl+YNxOI3PiHmxNQQjrQ9BF1PoaKb6YhpLVjR8Wh/
	Dp3Avffqf1ZpCF9eVD2oFjcV1cZx97cmyxYvZBo9a93wTfJL36JJfCu++sDvXYuLwObgfB7/cC954
	r8CBGQtjqt76CeE7NAc1CYSWITW3Y8A74aFFIjoHP7/3yfpphjmU/Dbz2y5E9dpJhuITJgpAttjA2
	8uCBp3KfTTptSPC6qFBeyR906XMcI3C9UdY0lGymr3KLG/jdgBf9c7zkR/2oU/FWVFwE2I50nssWS
	cwYy62iw==;
Received: from [189.7.87.170] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1ts47X-007Dal-FV; Tue, 11 Mar 2025 19:14:33 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Tue, 11 Mar 2025 15:13:46 -0300
Subject: [PATCH v3 4/7] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-v3d-gpu-reset-fixes-v3-4-64f7a4247ec0@igalia.com>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Jose Maria Casanova Crespo <jmcasanova@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2902; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=JdgqvNtflpyoyBlk5wlUALSmD1sKQ5OFdVDxI+f36aI=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn0H113io2C0Sra1qQBDb0Ch+rOlj1JgbHC/0D/
 a5Nz8ICE5SJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9B9dQAKCRA/8w6Kdoj6
 qqxQB/9LIQguOlcXnPMDcZVgxhQGr+58zDNLs2XfMJvKzyqDp2DfJ2k/FBFLVFJAy5LxVauuZtC
 crOE3gm0Jh81uUiuAXuYJmja9+XANYnQbWeeQ9m4M1jfwD/3hj81OniILUdfP8SXRWlIcpsifUt
 ScV1cckfF2nHQQCkUuZeysNg7b8vGOfrp+agz+AHO7Hd/iPG1CsxqVWd+B5Pvedbl40+bJCudDt
 IEsgp/BRaHhp8Jv67DfI389d3coutgy8MQfqKT6t+r/kPol+JWp+z1r5BcTq28w1If2MwBytdR5
 i4qpUbeZKx3g74RlcnEkUshw1qWgnsQDWgy7FEHLJiPjAMeg
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
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 55 ++++++++++++++++++----
 1 file changed, 45 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..141f2ed540bb4ddb85a933d7d44a4078c386ba39 100644
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
@@ -58,6 +50,49 @@ required:
   - reg-names
   - interrupts
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - brcm,2711-v3d
+              - brcm,2712-v3d
+              - brcm,7278-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register (required)
+            - description: core0 register (required)
+            - description: bridge register (if no external reset controller)
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: bridge
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: brcm,7268-v3d
+    then:
+      properties:
+        reg:
+          items:
+            - description: hub register (required)
+            - description: core0 register (required)
+            - description: GCA cache controller register (required)
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


