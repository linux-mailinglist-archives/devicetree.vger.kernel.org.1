Return-Path: <devicetree+bounces-134500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 987B69FDA7F
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 13:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E7EC3A1209
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 12:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B1616F900;
	Sat, 28 Dec 2024 12:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="LXGi/i2C"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E737B15B54A;
	Sat, 28 Dec 2024 12:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735388572; cv=none; b=uutVR6C+3bpjdK0jGbk3pHOmOpxjUJwMdrviuogo91ASUmBqZg9lggxAfFd4Eb0e01axSmA6zzbDU7nFQis6kRsYIBE4IJ31jnehQpbkRWhj5VsilPoVpp7W6GVZsignHjueTvQfsDd8RsIql4V3eaHvTRmfR6gGsyV3kD65EV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735388572; c=relaxed/simple;
	bh=uY/vrtonJknJiPjcrNdxF2in+We3Hm2EnHymmUFSl8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VXm2nEyR4hL21XoEOG5SdjI66+Xe0NSW9xCJDsI1d1uYXnGLBvnOZkew/Hp0sZ83A9jFkamQed9WJw8NKjoiFnrM8Tm1iHkAAgMNL4pGlrW/mV4d/FyY5CUbqlhdHJDuMekmxU0rtIpaXDcjaEv3CZd52wP986UBWOT0s2fdnwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=LXGi/i2C; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=tWjTA
	OLgd9HkbIXFzlj06PfRlzkvfWEKiYD/XWeq8os=; b=LXGi/i2CbK8w97uz6lNmS
	fevRKfb7w9vg03qEzbeuO6Xpdrs7vlVFmDxID48ZcUnJBWw7PR3F+AfIQ0bh1vXG
	8ErwPmIwr0Z8g7evJjVT4J+hRPLDrXzSjtXAW88tYMlsWZMmXOR01riv5dahx1yV
	gpXGS/fByXPWdZjDRJK4iU=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3t0tl7W9nUxdCCQ--.1009S7;
	Sat, 28 Dec 2024 20:22:07 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzk+dt@kernel.org,
	joro@8bytes.org
Cc: cl@rock-chips.com,
	robh@kernel.org,
	hjc@rock-chips.com,
	vkoul@kernel.org,
	devicetree@vger.kernel.org,
	detlev.casanova@collabora.com,
	cristian.ciocaltea@collabora.com,
	dri-devel@lists.freedesktop.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 5/8] dt-bindings: display: vop2: Add rk3576 support
Date: Sat, 28 Dec 2024 20:21:48 +0800
Message-ID: <20241228122155.646957-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3t0tl7W9nUxdCCQ--.1009S7
X-Coremail-Antispam: 1Uf129KBjvJXoWxWr1kWFWxArW5XFyUKr4xXrb_yoW5XF13pa
	93CFyDXrWxGF1UXw4ktFn5Can5tF9Yyw4Ykrn7ta17KrsIgF4kWw4agr1DJr13WF17ZayY
	9FsYk347G39avr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j7L05UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA-DXmdv62k-HQAAsS

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576, the main difference between rk3576 and the
previous vop is that each VP has its own interrupt line.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v1:
- ordered by soc name
- Add description for newly added interrupt

 .../display/rockchip/rockchip-vop2.yaml       | 70 +++++++++++++++----
 1 file changed, 56 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..f28cea4a6d82 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3576-vop
       - rockchip,rk3588-vop
 
   reg:
@@ -37,10 +38,22 @@ properties:
       - const: gamma-lut
 
   interrupts:
-    maxItems: 1
-    description:
-      The VOP interrupt is shared by several interrupt sources, such as
-      frame start (VSYNC), line flag and other status interrupts.
+    minItems: 1
+    maxItems: 4
+    items:
+      - description:
+          vop system interrupt, such as bus error, and vsync for vop version under
+          rk3576.
+      - description:
+          independent interrupts for each video port, such as vsync and other video
+          port related error interrupts.
+
+  interrupt-names:
+    items:
+      - const: vop-sys
+      - const: vop-vp0
+      - const: vop-vp1
+      - const: vop-vp2
 
   # See compatible-specific constraints below.
   clocks:
@@ -127,31 +140,60 @@ allOf:
           minItems: 7
         clock-names:
           minItems: 7
-
         ports:
           required:
             - port@0
             - port@1
             - port@2
             - port@3
-
       required:
         - rockchip,grf
         - rockchip,vo1-grf
         - rockchip,vop-grf
         - rockchip,pmu
 
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-vop
+    then:
       properties:
-        rockchip,vo1-grf: false
-        rockchip,vop-grf: false
-        rockchip,pmu: false
-
         clocks:
-          maxItems: 5
+          minItems: 5
         clock-names:
-          maxItems: 5
-
+          minItems: 5
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+        interrupts:
+          minItems: 4
+          maxItems: 4
+        interrupt-names:
+          items:
+            - const: vop-sys
+            - const: vop-vp0
+            - const: vop-vp1
+            - const: vop-vp2
+      required:
+        - rockchip,grf
+        - rockchip,pmu
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3568-vop
+              - rockchip,rk3566-vop
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          minItems: 5
         ports:
           required:
             - port@0
-- 
2.34.1


