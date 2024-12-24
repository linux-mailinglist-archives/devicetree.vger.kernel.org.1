Return-Path: <devicetree+bounces-133825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B69FBCC7
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:57:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2889F7A2068
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0551B3945;
	Tue, 24 Dec 2024 10:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="W8FB6mNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m12774.qiye.163.com (mail-m12774.qiye.163.com [115.236.127.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D49192B69;
	Tue, 24 Dec 2024 10:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735037859; cv=none; b=EpYQpsPz3vTvA5OiEaMlvhRQF288WnJQW9+GYzcRofdCBF8EHjbkXnZyDWI0lGIduzpUD4KKKPPuOXteLOFy787LecXEJ/36DvmRvMo2wJEOgUkEws0HLpnmAuZdVT3HDlsP4/Ho8Zr1ntebjeCU8N52KVE3fF8G+77gKaeyt2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735037859; c=relaxed/simple;
	bh=4LmQv/jQaTEdjMANYB7Gty8iK9uLfpnMqvhVcvh38zE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XD3R8jJV3yOZxMNfulWDcwC/gvymQ7rOmKg3eWwpwaSNL1BTpdRty1dshuEbyXFZV7b35Lrt1xi9r8Fg7zKsw27qZ582rhQtNNyJk11hd/EsdqNHsJct4G9fyYhkCTRtUOgBxeDQGI6mPisx4IN9WCvdgURhl08TZr+1WLj7WYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=W8FB6mNL; arc=none smtp.client-ip=115.236.127.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aaa2c18;
	Tue, 24 Dec 2024 17:41:54 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: nvmem: rockchip,otp: Add support for rk3562 and rk3568
Date: Tue, 24 Dec 2024 17:41:51 +0800
Message-Id: <20241224094153.3816923-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh1NGFYZGR5ITUxPShhNTh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f80b5c4e03afkunm6aaa2c18
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MC46Hjo*EjIXNkpCSzc#NxJR
	GC9PChFVSlVKTEhOS0hISEpOT09DVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0hDNwY+
DKIM-Signature:a=rsa-sha256;
	b=W8FB6mNLCpLEXDtXU1qOQgAjV3G9Vyzg1AeJi3ICUpFL3Bv8BP6igQpD2XO/RPzNclOxdV5ysHUlzOlwZa0cyJzWXRZfkSfbWy/P/Jw7RZu1OfLSIViOi+uVFooO1dTyTmwbJKzQCMsWtNY4DP1Z8YuFDw3PS33Ky/slY4FlP4E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zG8fo9UPdwDqsNEMp4SUheJp0t9EsDHamrlelso9VNk=;
	h=date:mime-version:subject:message-id:from;

rk3562 and rk3568 has similar clocks which different than other SoCs.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 .../bindings/nvmem/rockchip,otp.yaml          | 49 ++++++++++++++++---
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
index a44d44b32809..33d2905f6c16 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
@@ -14,6 +14,8 @@ properties:
     enum:
       - rockchip,px30-otp
       - rockchip,rk3308-otp
+      - rockchip,rk3562-otp
+      - rockchip,rk3568-otp
       - rockchip,rk3588-otp
 
   reg:
@@ -25,19 +27,15 @@ properties:
 
   clock-names:
     minItems: 3
-    items:
-      - const: otp
-      - const: apb_pclk
-      - const: phy
-      - const: arb
+    maxItems: 4
 
   resets:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
   reset-names:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
 required:
   - compatible
@@ -62,12 +60,43 @@ allOf:
       properties:
         clocks:
           maxItems: 3
+        clock-names:
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
         resets:
           maxItems: 1
         reset-names:
           items:
             - const: phy
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3562-otp
+              - rockchip,rk3568-otp
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: usr
+            - const: sbpi
+            - const: apb_pclk
+            - const: phy
+        resets:
+          minItems: 4
+        reset-names:
+          items:
+            - const: usr
+            - const: sbpi
+            - const: apb
+            - const: phy
+
   - if:
       properties:
         compatible:
@@ -78,6 +107,12 @@ allOf:
       properties:
         clocks:
           minItems: 4
+        clock-names:
+          items:
+            - const: otp
+            - const: apb_pclk
+            - const: phy
+            - const: arb
         resets:
           minItems: 3
         reset-names:
-- 
2.25.1


