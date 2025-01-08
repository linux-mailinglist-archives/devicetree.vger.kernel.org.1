Return-Path: <devicetree+bounces-136613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F18A05A95
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C9561887B98
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3CC1FC0FF;
	Wed,  8 Jan 2025 11:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="GWy3ZByF"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BD1B1FBEB4;
	Wed,  8 Jan 2025 11:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337213; cv=none; b=hB2feB6XnLYTjfC8zqxVbH9qBauSYCx+kX3kqbo8F5zjHsa5GL2qM9j5bdl9lllUNloHo8V9wmL8EDf8DEKDcwMK92slSRFbEIBCK1FRfDrKww2jmRd+DvOUvW6aQqSC0QXVOthIOvxKwJ6Au8qwHu8FZW91JH9LTdco+ki2QUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337213; c=relaxed/simple;
	bh=8MLiNDAMT+HhMOJVve531F3Lkvn8J/are+dhtQQ7FdY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ttPu6uEFMJMBTZLtOxXVVKSN1Pu4JiG+ONvs8cFuXz6nEnRy7C3XdfOBG+B0dG9ZkhG9xbLU7xNXvn4HbGVnGof2M4/tvi3aZoLFuRlZYwx8hvNLUCwepdlTnAdrhwzx5CcHJ3NRC2xdAtopDTQH8luyiu+XfNOU/UzXzZfa9NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=GWy3ZByF; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=Fb7Vt
	HZp4ZP+khwQrNOo4zrrHvRLsqIV0ZgKIF4ub3s=; b=GWy3ZByFEH468GsVN76MH
	PUsRkmkL6I+oD5D/nNHzsTc1E2WvBSLgx1CJIz0V+NPImfzR4assJ51wQ2dX3JA2
	oS+Yu9Bf+uWFZPzmsfKeBrp+S6Capfzj24XvEqGL+S+I63QQh8jwqmCebCecvFpO
	3Uq9wpmTVWG7Z3JBC4fb2I=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHpyUCZ35n8Xn7EQ--.26804S12;
	Wed, 08 Jan 2025 19:52:50 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v9 10/11] dt-bindings: display: vop2: Add rk3576 support
Date: Wed,  8 Jan 2025 19:52:27 +0800
Message-ID: <20250108115233.17729-11-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250108115233.17729-1-andyshrk@163.com>
References: <20250108115233.17729-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDHpyUCZ35n8Xn7EQ--.26804S12
X-Coremail-Antispam: 1Uf129KBjvJXoWxWr1kWFW5XryrGr4xJrWDurg_yoWrJry7pa
	93Ca4DXrW8Gr1UWw1ktF1rCwn5tFn5Ar4Ykrn7ta17KrsIqr4UWw4agrn8Xr13Wry7Zaya
	9FsYk343G392vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UXa9fUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h7OXmd+YSuOwAAAsB

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576, the main difference between rk3576 and the
previous vop is that each VP has its own interrupt line.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v9:
- Drop 'vop-' prefix of interrupt-names.
- Add blank line between DT properties
- Remove list interrupt-names in top level

Changes in v8:
- Fix dt_binding_check errors
- ordered by soc name
- Link to the previous version:
  https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u

Changes in v4:
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v3:
- ordered by soc name
- Add description for newly added interrupt

Changes in v2:
- Add dt bindings

 .../display/rockchip/rockchip-vop2.yaml       | 83 +++++++++++++++----
 1 file changed, 67 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..44256cdcb877 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3576-vop
       - rockchip,rk3588-vop
 
   reg:
@@ -37,10 +38,17 @@ properties:
       - const: gamma-lut
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
     description:
-      The VOP interrupt is shared by several interrupt sources, such as
-      frame start (VSYNC), line flag and other status interrupts.
+      For VOP version under rk3576, the interrupt is shared by several interrupt
+      sources, such as frame start (VSYNC), line flag and other interrupt status.
+      For VOP version from rk3576 there is a system interrupt for bus error, and
+      every video port has it's independent interrupts for vsync and other video
+      port related error interrupts.
+
+  interrupt-names:
+    maxItems: 4
 
   # See compatible-specific constraints below.
   clocks:
@@ -120,43 +128,86 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-vop
+            enum:
+              - rockchip,rk3566-vop
+              - rockchip,rk3568-vop
     then:
       properties:
         clocks:
-          minItems: 7
+          minItems: 5
+
         clock-names:
-          minItems: 7
+          minItems: 5
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
-            - port@3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-vop
+    then:
+      properties:
+        clocks:
+          minItems: 5
+
+        clock-names:
+          minItems: 5
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+
+        interrupts:
+          items:
+            - description: vop system interrupt, such as axi bus error
+            - description: interrupts for video port0, such as vsync, dsp_hold.
+            - description: interrupts for video port1, such as vsync, dsp_hold.
+            - description: interrupts for video port2, such as vsync, dsp_hold.
+
+        interrupt-names:
+          items:
+            - const: sys
+            - const: vp0
+            - const: vp1
+            - const: vp2
 
       required:
         - rockchip,grf
-        - rockchip,vo1-grf
-        - rockchip,vop-grf
         - rockchip,pmu
 
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vop
+    then:
       properties:
-        rockchip,vo1-grf: false
-        rockchip,vop-grf: false
-        rockchip,pmu: false
-
         clocks:
-          maxItems: 5
+          minItems: 7
+
         clock-names:
-          maxItems: 5
+          minItems: 7
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
+            - port@3
+
+      required:
+        - rockchip,grf
+        - rockchip,vo1-grf
+        - rockchip,vop-grf
+        - rockchip,pmu
 
 additionalProperties: false
 
-- 
2.34.1


