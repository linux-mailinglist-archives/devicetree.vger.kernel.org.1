Return-Path: <devicetree+bounces-177132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC033AB682D
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:57:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25D658630E8
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0AF26A0BE;
	Wed, 14 May 2025 09:54:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA3D25E46E
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747216498; cv=none; b=Wv/KnVoFTY/LJn2tNXSfnjEuwCDezX9A+zEt/rFrzTVmjWkGknrhfLzQQHn1FWXiWPNWoDJo0CuSKJ4UbKSsX+QEowclEZhOQhbbje6gHUxou6UyN/D0ogXCy3lVD/Ldo1X6SCNUpIp5ltN7l0ERoJN6LFPwUa+QG7TfBbYIjbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747216498; c=relaxed/simple;
	bh=XWzQ7/NdKX2eslToNCklmz6xwvlvOuN9+NAg3dTzo7Y=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PzKRHMI6EA0IDuUjDrKmmjSGAI/m//OGWWTQL31sV6wt3zRnWZSwjuhMXehRHyLuX5f0BGzJehgfvUzw7toARqH1MGZS4G+L4WjBnFGgPBsxDZHVs1aEM+g9dQjJrYZf2ocoNgYdIRYgxRSsXFESzM0Rw61fhTJnfKrTUnBBc5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 54E9s0oU092463
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 May 2025 17:54:00 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Wed, 14 May 2025
 17:54:00 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <geert+renesas@glider.be>, <magnus.damm@gmail.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <tim609@andestech.com>,
        Ben Zong-You Xie <ben717@andestech.com>
Subject: [PATCH v4 6/9] dt-bindings: cache: add QiLai compatible to ax45mp
Date: Wed, 14 May 2025 17:53:47 +0800
Message-ID: <20250514095350.3765716-7-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514095350.3765716-1-ben717@andestech.com>
References: <20250514095350.3765716-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 54E9s0oU092463

Add a new compatible string for ax45mp-cache on QiLai SoC.

Also, add allOf constraints to enforce specific cache-sets and cache-size
values for qilai-ax45mp-cache.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 .../bindings/cache/andestech,ax45mp-cache.yaml | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
index df8bba14f758..cd08ea57b2d9 100644
--- a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
+++ b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
@@ -28,7 +28,9 @@ select:
 properties:
   compatible:
     items:
-      - const: renesas,r9a07g043f-ax45mp-cache
+      - enum:
+          - andestech,qilai-ax45mp-cache
+          - renesas,r9a07g043f-ax45mp-cache
       - const: andestech,ax45mp-cache
       - const: cache
 
@@ -66,6 +68,20 @@ required:
   - cache-size
   - cache-unified
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: andestech,qilai-ax45mp-cache
+
+    then:
+      properties:
+        cache-sets:
+          const: 2048
+        cache-size:
+          const: 2097152
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
-- 
2.34.1


