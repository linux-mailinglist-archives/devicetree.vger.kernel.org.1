Return-Path: <devicetree+bounces-140007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE3AA17BE2
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:35:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 864C8188843D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B4961F2C28;
	Tue, 21 Jan 2025 10:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="WtnYvh5O"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5EE1F237D;
	Tue, 21 Jan 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455637; cv=none; b=VGR3Ac9jBqra+GwPpQYnEE64Fp0awzr3a8Gxz9TLruSadQ6a226pV4NountgflcM7GhITat29zFBfFt+ORed/B8bKHjbtCpCPgj2UamZHGC/TWrrHVC8fN7p3GtR6h/xmAf2lDW64sfMEZ8M3tbDN/sd5P2jnebSV0RwJtMZvL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455637; c=relaxed/simple;
	bh=3LmxOuV7di667L9jwDuoex+Hk62DRDBsXEF7f6kC+7o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gY19NTUhv97sIDQpuTm+Fhpm9lAn7DI4HQRb+YdKVemC9NvqIFnYSGqnyqzySdgdZ1TZF+pmjMhnQTF5wAuKpJW4MaRDve40fEmi8DUb5uq0gZ9Bcb0er3Fj0RC530xY6p35Oeka4vQUFqYjHtadwQslIELerlDoSX9T5ANzH3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=WtnYvh5O; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=n50bX
	jL6CzsZAywq5myPb2oe8TPuInq6nzZ0FGMySmo=; b=WtnYvh5OrLJFZkembmmv4
	e4nr+f9ubsoWJy9Gnfb1GbEUULNTD/MAK/pC71wYRN4DVCRXHBx0K0AwqcokU4JP
	W6unlYhmKcIW3ciQr+BsxFp+c6Bsf0na3r6vMB2PBlSqsddYEDvhw1Y1dHawSHjL
	Od0NExiP+mhW7kyojd5wQk=
Received: from ProDesk.. (unknown [])
	by gzsmtp1 (Coremail) with SMTP id PCgvCgDHkqjYd49nreMjBg--.21590S12;
	Tue, 21 Jan 2025 18:33:09 +0800 (CST)
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
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v12 10/13] dt-bindings: display: vop2: describe constraint SoC by SoC
Date: Tue, 21 Jan 2025 18:32:47 +0800
Message-ID: <20250121103254.2528004-11-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121103254.2528004-1-andyshrk@163.com>
References: <20250121103254.2528004-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PCgvCgDHkqjYd49nreMjBg--.21590S12
X-Coremail-Antispam: 1Uf129KBjvJXoWxZF4UWFWrJw47tw1kZF4Dtwb_yoW5WF4kpa
	93Cas8X3y8Gr1UWw4ktF1rCw40qF93Aw4xJrn7t3WxGa1qvF4UG3yagrn8Ar9xWrsrZaya
	kFs0kw15J3y2vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j8zV8UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hfbXmePdPc5zgAAsc

From: Andy Yan <andy.yan@rock-chips.com>

As more SoCs variants are introduced, each SoC brings its own
unique set of constraints, describe this constraints SoC by
SoC will make things easier for adding new variant.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v12:
- Only change the description method for existing SoC.

Changes in v11:
- Remove redundant min/maxItems constraint

Changes in v10:
- Move interrupt-names back to top level
- Add constraint of interrupts for all platform
- Add constraint for all grf phandles
- Reorder some properties

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

 .../display/rockchip/rockchip-vop2.yaml       | 44 +++++++++++++------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..f23939e67fd0 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -14,6 +14,7 @@ description:
 maintainers:
   - Sandy Huang <hjc@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
+  - Andy Yan <andyshrk@163.com>
 
 properties:
   compatible:
@@ -120,43 +121,58 @@ allOf:
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
+
+        interrupts:
+          maxItems: 1
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
-            - port@3
-
-      required:
-        - rockchip,grf
-        - rockchip,vo1-grf
-        - rockchip,vop-grf
-        - rockchip,pmu
 
-    else:
-      properties:
         rockchip,vo1-grf: false
         rockchip,vop-grf: false
         rockchip,pmu: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vop
+    then:
+      properties:
         clocks:
-          maxItems: 5
+          minItems: 7
+
         clock-names:
-          maxItems: 5
+          minItems: 7
+
+        interrupts:
+          maxItems: 1
 
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


