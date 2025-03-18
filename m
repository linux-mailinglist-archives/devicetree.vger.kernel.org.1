Return-Path: <devicetree+bounces-158401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC0FA6647D
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D797B3B9B8D
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C84261FF2;
	Tue, 18 Mar 2025 01:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="Cbi+w9V5"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CD435959
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259814; cv=none; b=D9LUG2FkoGEYlA3U+4LRqXO4QSBnnvLD1kz9UnP4DHCWsC3zr3cVg7nQjgYa6O4ROHvD9kbXdfEUhJZE/RyW1lLHdp9RYD2DUblZZ4dwxxiH5KC+VX8eulbZlHK+Dm92khzo2NZjrK2+0N31pXo+Rk9R/4McoWGfgU/4aPFuEkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259814; c=relaxed/simple;
	bh=z1B36YOexL5VrhTJ3rAo4uFHke3wsJOB5JbXhrLslao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C2FAqFlXQnZLmbOe60V9fnrShcZxc/HaCSHntCKe7gJA/3bNdUM9eCZ0LuzCLMAuzbaGWBUAlqhPWUeeWS0/cuamBdXHWuMtu1DQsfGYXSoVoIy7En9CYmafu4Jkzw5mMmntfEIlR6/DabCYubmdAy5Tqzqag3KjdJPge6W33iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=Cbi+w9V5; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XMJZOyL3SEX5jyJTAAzuQu79M14FE1mvO3h6YlbQU1o=; b=Cbi+w9V5S4KW8Hexco3iHE55VE
	tYKunjllumo1/7+cuogOFlfsdNuutRxF5XfLi1XtsT903meNGrMxl5n/LrdyYrurtId4Ckxqy7UAm
	na/jTEkERWiSdevIR2QhzAHl4o5QR1HZxarH8roe96fcA2ZKhKT5jzrgZNvjInQ/lo+xMRV6auE3D
	R9TU4LIT8Hq9GkfqG2DawiejC48sz8PTh2CUmMkQ4B5TEAfGrgwtyeoE0OvDBu3vyuzB09Nbzmxcx
	r7CcKim1o02IkpGxCIKot6oaBFqvZpcNzmoHJe71KLqI0jloC/lh0G1eN4QScoSxjzk1tNB0tw/UM
	P6ncfS+g==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tuLMc-002UCS-K1; Tue, 18 Mar 2025 02:03:26 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Date: Mon, 17 Mar 2025 22:01:10 -0300
Subject: [PATCH v6 2/5] dt-bindings: gpu: v3d: Add per-compatible register
 restrictions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250317-v3d-gpu-reset-fixes-v6-2-f3ee7717ed17@igalia.com>
References: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
In-Reply-To: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3829; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=z1B36YOexL5VrhTJ3rAo4uFHke3wsJOB5JbXhrLslao=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn2MZHYe/1umWR8qF05TVyczOXvQg+UJ9s7I7Y8
 AvtnWitW9uJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9jGRwAKCRA/8w6Kdoj6
 qs2uB/4paSGtyrMQPq7KVVyym3DQPIkgyCMn4SJWpSBX4O/F6S2KJXWV1bdhO3pJCTspxTxqIh7
 8Sehw+Oq4M557HB4hBCdTeimY4I79jUuphMQw04EPp693IvnN23ObTYEiNNPVMzmpnzcNGvxTVn
 vIMeq9IDbbX04nTxvo0Dc+07uZFl5K+tkZAS3duzUD4gCsd7wyIZgPECLkabivViEyHjMdkyhoZ
 +TKclXkJdpH47iMZj1eKSZrKqXmgeVmMXrm6VJbUvEIHaQgigFFaNnmn/aGOmqEwLkFrLj0jGDA
 Vsw86+ruaPBzZWKQCb6mG/7mmdldci2L/uuQfA8Lni2nf3u7
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

In order to enforce per-SoC register rules, add per-compatible
restrictions. For example, V3D 3.3 (used in brcm,7268-v3d) has a cache
controller (GCA), which is not present in other V3D generations. Declaring
these differences helps ensure the DTB accurately reflect the hardware
design.

The example was using an incorrect order for the register names. This
commit corrects that by enforcing the order established in the register
items description.

Signed-off-by: Maíra Canal <mcanal@igalia.com>
---
 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 86 ++++++++++++++++++----
 1 file changed, 73 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index dc078ceeca9ac3447ba54a7c8830821f0b2a7f9f..6a1a09031983eda4691a939329ed159b32f77669 100644
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
+            - description: core0 register
+            - description: GCA cache controller register
+            - description: bridge register
+        reg-names:
+          items:
+            - const: hub
+            - const: core0
+            - const: gca
+            - const: bridge
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
@@ -66,9 +126,9 @@ examples:
       compatible = "brcm,7268-v3d";
       reg = <0xf1200000 0x4000>,
             <0xf1208000 0x4000>,
-            <0xf1204000 0x100>,
-            <0xf1204100 0x100>;
-      reg-names = "hub", "core0", "bridge", "gca";
+            <0xf1204100 0x100>,
+            <0xf1204000 0x100>;
+      reg-names = "hub", "core0", "gca", "bridge";
       interrupts = <0 78 4>,
                    <0 77 4>;
     };

-- 
2.49.0


