Return-Path: <devicetree+bounces-134901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2149FEE57
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1B201882B7C
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E32718FC84;
	Tue, 31 Dec 2024 09:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="i8omjwax"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC5A18A95A;
	Tue, 31 Dec 2024 09:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735637280; cv=none; b=KgkjXNteLjKZtsZT/waP/C0Q8kpSOpEA1ASCC4F1dxFMcxVqHktDpJTaCQAjfMxnT/WSipZ8vFRGIfDFegETtVNkLrulzmDhQp2zHPsCHtYKell6Ty+LsdAAc4yX6xTE0w+OliGdPlZQTlVRQT4oA3L6dXjc6iQMoE/fd4mBFXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735637280; c=relaxed/simple;
	bh=inf5LUHn8z+vB7NimgTzLjR2CiyX5h4UlFu8feRQZ7c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ea04+4Vy1IEKIqhCCfPETSs8BOAFozAAGE+aTdDOT2XHnzGTqQhueuanJjrg/RfEWfDaBaQ49raV+5VViGyFZ5DclblB0dORL6klLF97qYaeauNBOnL8jXUIFaB+u6HZCPyEm8+f7o34fg0bL6h841eAjy21Slki4k3SYaIqXPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=i8omjwax; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=JpEWk
	VoO4RXba/rgKMxL/Z8ArtALwq7ono1kXj0OSeQ=; b=i8omjwaxlWT2Oz9zaiLmD
	VnbO8teQ00uYmsd6GdQu4l+hlL8fVQBpK6S0Kfw56yiQ5aN2ZShHm5VWKT0vZ7z7
	KveXChDJcXRGSU4yxFNKO4PXFrqlkjjzlx6+Q+Xl4tUMoA4k0GpulN6GCRXxPiLr
	ebZ6r3bjhMgxS0xBunthEc=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id _____wD3q9H6uHNn4DFGCw--.46410S2;
	Tue, 31 Dec 2024 17:27:26 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: vkoul@kernel.org
Cc: cristian.ciocaltea@collabora.com,
	heiko@sntech.de,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3] dt-bindings: phy: Add rk3576 hdptx phy
Date: Tue, 31 Dec 2024 17:27:11 +0800
Message-ID: <20241231092721.252405-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3q9H6uHNn4DFGCw--.46410S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCF4fJFy5ur1rCF1UXr48Xrb_yoW5GrWxpa
	9xCFykJF1xGw13ZayDtwn5CF93tFsayr4ayrnagr13Wws3KrWavr4a9F15ZryYvr48tay5
	Krsrury3ZF4avrDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UmjgsUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQ-GXmdztQxoqAAAsT

From: Andy Yan <andy.yan@rock-chips.com>

Add compatible for the HDPTX PHY on rk3576, which is compatible with
rk3588, but without rst_phy/rst_ropll/rst_lcpll.

In fact, these three reset lines are also optional on the rk3588,
they just used for debug, then they were removed on the rk3576 IC
design.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- Split from:
  https://lore.kernel.org/linux-rockchip/3330586.aeNJFYEL58@diego/T/#m02151cd8591d7fe92cf30ab69701ed57c1944c06

Changes in v2:
- Wrap commit message according to Linux coding style
- Make "rockchip,rk3588-hdptx-phy" const for "rockchip,rk3576-hdptx-phy"
- Make declare phy/ropll/lcpll reset line are not exit on rk3576

 .../phy/rockchip,rk3588-hdptx-phy.yaml        | 62 +++++++++++++------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
index 84fe59dbcf48..7a307f45cdec 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -11,8 +11,13 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3588-hdptx-phy
+    oneOf:
+      - enum:
+          - rockchip,rk3588-hdptx-phy
+      - items:
+          - enum:
+              - rockchip,rk3576-hdptx-phy
+          - const: rockchip,rk3588-hdptx-phy
 
   reg:
     maxItems: 1
@@ -34,24 +39,12 @@ properties:
     const: 0
 
   resets:
-    items:
-      - description: PHY reset line
-      - description: APB reset line
-      - description: INIT reset line
-      - description: CMN reset line
-      - description: LANE reset line
-      - description: ROPLL reset line
-      - description: LCPLL reset line
+    minItems: 4
+    maxItems: 7
 
   reset-names:
-    items:
-      - const: phy
-      - const: apb
-      - const: init
-      - const: cmn
-      - const: lane
-      - const: ropll
-      - const: lcpll
+    minItems: 4
+    maxItems: 7
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -67,6 +60,39 @@ required:
   - reset-names
   - rockchip,grf
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-hdptx-phy
+    then:
+      properties:
+        resets:
+          minItems: 4
+          maxItems: 4
+        reset-names:
+          items:
+            - const: apb
+            - const: init
+            - const: cmn
+            - const: lane
+    else:
+      properties:
+        resets:
+          minItems: 7
+          maxItems: 7
+        reset-names:
+          items:
+            - const: phy
+            - const: apb
+            - const: init
+            - const: cmn
+            - const: lane
+            - const: ropll
+            - const: lcpll
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


