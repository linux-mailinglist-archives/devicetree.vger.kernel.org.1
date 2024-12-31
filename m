Return-Path: <devicetree+bounces-134892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB76D9FEE36
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:09:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D58EA3A2A82
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B3E1990DE;
	Tue, 31 Dec 2024 09:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="lYDCGZg/"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE45D190678;
	Tue, 31 Dec 2024 09:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735636126; cv=none; b=IKYPyWJa/w4hEodC9x8qIhN0jz8acR+2NQb+7kmrvsMSM2oDmD1u3g3fmXSeeUpGrhAlgzZWhrwumuTGi7lAM5ZCWN1sBOr5dzfc/mNilHzUS8vYpWXTEEvbsK155OxSrnrqSypP6sIArcOar5H83qiWv5iszXp55UkCzt6fJ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735636126; c=relaxed/simple;
	bh=4m/9YcElXvYtOt9KpORBBl7cvv0/OcbH+f+jrWzQuvY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N1rk/Ipkat2oipsEzsh5ziYkUlG7g9XhV2W19qhIgBhxfoUuPNGaZ9u2wfPWc5MdYdFxsOCoqRjotKTfJLyjJ+SvcMV7Gw6ZCfOX3i5ESobXlFfp0SYvNAhyjhZfNprFnykxvFX/XvdWjn9QikhqkJkIuMVXJRBG7RVGVzIc/nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=lYDCGZg/; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=pD4rY
	OtR+d4vlbX2pPWDBCcK4oO1gPjv+46RQN4HNss=; b=lYDCGZg/k3paIwcb+39e7
	WkVvKh7dv7rqxEogn3VJK7O0qc22QkF+2rurAUvmCIXfV4HkjOg+Qkmr5adWhSEt
	WOQvqXZpwcgE7aGOeuqLcOnsUFNQIM1+N+/0a7zG3erloNjJ2K/dsU0D3CvGtB5q
	LZqLBDQx6EyxSxz4m7xWpc=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wBHEQp0tHNnooOKCw--.15748S10;
	Tue, 31 Dec 2024 17:08:16 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v8 8/9] dt-bindings: display: vop2: Add rk3576 support
Date: Tue, 31 Dec 2024 17:07:51 +0800
Message-ID: <20241231090802.251787-9-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241231090802.251787-1-andyshrk@163.com>
References: <20241231090802.251787-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBHEQp0tHNnooOKCw--.15748S10
X-Coremail-Antispam: 1Uf129KBjvJXoWxWr1kWFyDJrW8ZFyrGFyxAFb_yoW5KFWxpa
	93CFyDXrW8Gr1UXw4ktF1rCws5tFn0yw4Ykrn7ta17KrsxtF48Ww1agrn8Xr13Wry7ZayY
	9FsYk347G3savrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UZFxUUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQDGXmdzq1zveAACsH

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576, the main difference between rk3576 and the
previous vop is that each VP has its own interrupt line.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

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

 .../display/rockchip/rockchip-vop2.yaml       | 81 ++++++++++++++-----
 1 file changed, 63 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..4cdd9cced10c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3576-vop
       - rockchip,rk3588-vop
 
   reg:
@@ -37,10 +38,21 @@ properties:
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
+    items:
+      - const: vop-sys
+      - const: vop-vp0
+      - const: vop-vp1
+      - const: vop-vp2
 
   # See compatible-specific constraints below.
   clocks:
@@ -120,43 +132,76 @@ allOf:
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
         clock-names:
-          minItems: 7
-
+          minItems: 5
         ports:
           required:
             - port@0
             - port@1
             - port@2
-            - port@3
 
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
+        clock-names:
+          minItems: 5
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+        interrupts:
+          items:
+            - description: vop system interrupt, such as axi bus error
+            - description: interrupts for video port0, such as vsync, dsp_hold.
+            - description: interrupts for video port1, such as vsync, dsp_hold.
+            - description: interrupts for video port2, such as vsync, dsp_hold.
+        interrupt-names:
+          items:
+            - const: vop-sys
+            - const: vop-vp0
+            - const: vop-vp1
+            - const: vop-vp2
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
         clock-names:
-          maxItems: 5
-
+          minItems: 7
         ports:
           required:
             - port@0
             - port@1
             - port@2
+            - port@3
+      required:
+        - rockchip,grf
+        - rockchip,vo1-grf
+        - rockchip,vop-grf
+        - rockchip,pmu
 
 additionalProperties: false
 
-- 
2.34.1


