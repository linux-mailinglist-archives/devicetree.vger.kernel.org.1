Return-Path: <devicetree+bounces-153168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A46A4B6E6
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 04:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACCDA1890EBE
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 03:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8424F1DE896;
	Mon,  3 Mar 2025 03:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="i2wqGaTI"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E688B1DB124;
	Mon,  3 Mar 2025 03:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740973517; cv=none; b=rB+YilYUPJNvUfT8j1EVFJxJU/5PxeThA4SL0NMal/CcpnorP7INNw/z6ep2tDaooM7ABa9y6FGxEsKoIzwLSRN8BJd9GSa/HWKrXl4Cdhg5LU11XbcxwensZMgVuYB4WdavZmpA9ZShiNbNHEMDSkLg6UGxAnhJrnOzJigDPno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740973517; c=relaxed/simple;
	bh=BQB4o5upyiHwOrq1ELkOKKwsTrjMz8B0lfGnMRuyQ1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uf9vkG6NREVy7D3ICYSFKOQCb8RxrOiyYYyQsKcb5DKztbcO5Dj9FjWPlx1coSmHIpeTwqds4IOH2HxC/LNQXgAWakhWOn5p2c9OLSEuVVBdKOHcteblxZdYzDMlsH0Vbfo8n7twjNK7P9V8nv+HiCcIf8E2rxb/U30EVyau5v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=i2wqGaTI; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=hqUIo
	3mPnUIyqguQPvXUfr2S5iboamQqTtFzA4Iiu08=; b=i2wqGaTITJc8AO41uGbZ4
	GYIhYfAbVS357WCjX0pGTnlcDDeMviUgCn6GtHGO4lma1p5kO/5loJpOU1fx6YZH
	qwdz+HTQbrxJBw5UXbGiJ8S+PkbhYIZwJdHtSaHYk14DmTakYSBKKXX/5tWlJ8Fc
	n6xMwpZw/3EwFrLvMfoLAY=
Received: from ProDesk.. (unknown [])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgC3Oc2lJcVnaJliJg--.43523S6;
	Mon, 03 Mar 2025 11:44:46 +0800 (CST)
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
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v16 4/7] dt-bindings: display: vop2: describe constraint SoC by SoC
Date: Mon,  3 Mar 2025 11:44:18 +0800
Message-ID: <20250303034436.192400-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250303034436.192400-1-andyshrk@163.com>
References: <20250303034436.192400-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PSgvCgC3Oc2lJcVnaJliJg--.43523S6
X-Coremail-Antispam: 1Uf129KBjvJXoWxZF4UWFyDtryDuw43JFyftFb_yoW5uryfpa
	97Cas8X3ykGr1UWw4ktF1fAw4SqF9xJw4UJrn7t3W7Ga1DKF4UGw4agw1DAr9xWFsFvaya
	9F45Cr15Jw42vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UN0edUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAcFXmfFIcOAVgAAsa

From: Andy Yan <andy.yan@rock-chips.com>

As more SoCs variants are introduced, each SoC brings its own
unique set of constraints, describe this constraints SoC by
SoC will make things easier.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v14)

Changes in v14:
- Set maxItems constraint of clocks for rk3588 to 9 as a recently
  merged patch added two optional clocks[0]:
  [0]https://patchwork.freedesktop.org/patch/msgid/20250204-vop2-hdmi0-disp-modes-v3-1-d71c6a196e58@collabora.com

Changes in v13:
- Add maxItems constraint for clocks
- Remove constraint for interrupts in allOf block, as the current
  maxItems is already 1.

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

 .../display/rockchip/rockchip-vop2.yaml       | 40 ++++++++++++-------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 46d956e63338..a5771edd83b5 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -14,6 +14,7 @@ description:
 maintainers:
   - Sandy Huang <hjc@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
+  - Andy Yan <andyshrk@163.com>
 
 properties:
   compatible:
@@ -124,43 +125,54 @@ allOf:
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
+          maxItems: 5
+
         clock-names:
-          minItems: 7
+          maxItems: 5
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
-            - port@3
 
-      required:
-        - rockchip,grf
-        - rockchip,vo1-grf
-        - rockchip,vop-grf
-        - rockchip,pmu
-
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
+          maxItems: 9
+
         clock-names:
-          maxItems: 5
+          minItems: 7
+          maxItems: 9
 
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


