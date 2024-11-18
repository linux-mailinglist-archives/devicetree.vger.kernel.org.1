Return-Path: <devicetree+bounces-122570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 611C09D11E8
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 14:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E53721F23691
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 13:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073C91B21BB;
	Mon, 18 Nov 2024 13:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="uewjUIV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37A91A9B4B;
	Mon, 18 Nov 2024 13:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731936593; cv=none; b=cguBcZaFcqpFDkbnrjhfKvpI+0WOKe8pAry8YS2XAEUuAZ0q95Ztd5qeD1jqsKt55Kmn9ZH1M8ITWVsvblu/YOJKxgdtnv6woPVb/nnrXsxXof8NfupJm3wGPylWv5+EIYcmE4fWBbWbLqwiqVbQNR1DEJqnydOMV58ilr4d3uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731936593; c=relaxed/simple;
	bh=81KLNGckOpRcfiS5oiVGCafriEiyYCX0Om9SKUse4WI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=HrjPqa6NA7jKt+gRks1oChcNmu9OWkSdBroLr50CUA3AClefgJ5nnf/2mvnm87ITWzP1ls3SxGyC1Z1+yjVlUYuACBWyaOCtK7zXwwMlS18w9+U2DkSLN4z2vKdTd9bRUzAflEYWRrr+d96acu3Ti8O5M0aujRI75JNi/azK+C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=uewjUIV8; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AICK2L7027979;
	Mon, 18 Nov 2024 13:02:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=H
	xiyNLoqzCUMiH9mB70tmCdqxixNga/U7MEzXOIWs00=; b=uewjUIV890yslZMCF
	JQD3kW3d2lKXwzJE56rP0WVl4jalKM4LECw0kqr3tn+KM//Phiw4++pGcaovuWLb
	m7eFW6+P0RBddPnz82tb57bsrPYzbVKlGWo5LZ8Tg6euuM7q5rMD9PmZ+YbdV9Q5
	IjJHsKAbsYb/4oSC76e+KbHVhGmILPWra2+pz7P5ovaYfY0hMacGeLsLb5qt9csH
	eEhmpgugzuCMDU2K3NhdogbwgH/aqsfqfj7RO8uXq9OupVVzC9oqpgBDvbpC7rHQ
	+KEfCQup2MRp3K/mAolsA31R+WgUKSxlIJVMMXw/BfcZCmYhumh7f20C1y67L+WO
	YWMlA==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 42xmc1hmj1-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 18 Nov 2024 13:02:37 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.16.114) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Mon, 18 Nov 2024 13:02:36 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Mon, 18 Nov 2024 13:02:00 +0000
Subject: [PATCH v2 08/21] dt-bindings: gpu: img: Add BXS-4-64 devicetree
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241118-sets-bxs-4-64-patch-v1-v2-8-3fd45d9fb0cf@imgtec.com>
References: <20241118-sets-bxs-4-64-patch-v1-v2-0-3fd45d9fb0cf@imgtec.com>
In-Reply-To: <20241118-sets-bxs-4-64-patch-v1-v2-0-3fd45d9fb0cf@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2946;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=81KLNGckOpRcfiS5oiVGCafriEiyYCX0Om9SKUse4WI=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaRbWz11y2qYOityypcT5SU+tfYlChYtEXMWCK/UE+WPq
 Dujsm55RykLgxgHg6yYIsuOFZYr1P6oaUnc+FUMM4eVCWQIAxenAEzkXx8jQ9OClZzGxpaa69bK
 sk47dXCxxBbnQs9EK8Fpu9hdTlq2rmb47+oZ820f626P6l9eNhO5bsRaHxFrd4rbbXVr7pRSLv0
 n7AA=
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-ORIG-GUID: EmQI_Ii6gB5zrTOu_0DCPDXIPwRD9Dqw
X-Authority-Analysis: v=2.4 cv=E4efprdl c=1 sm=1 tr=0 ts=673b3aed cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=hzDjp0mCheYA:10 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8 a=UMqySDzDKqdhnTw82VMA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: EmQI_Ii6gB5zrTOu_0DCPDXIPwRD9Dqw

Like the existing AXE-1-16M integration, BXS-4-64 uses the single clock
integration in the TI k3-j721s2.

Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
Changes in v2:
- Use normal reg syntax for 64-bit values
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-8-4ed30e865892@imgtec.com
---
 .../devicetree/bindings/gpu/img,powervr-rogue.yaml | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
index 9dc55a6d0d4023983a3fc480340351f3fa974ce5..b620baa56a4caa41246f7b53064d0e3309bdda8e 100644
--- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
+++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
@@ -18,6 +18,11 @@ properties:
               - ti,am62-gpu
           - const: img,img-axe-1-16m
           - const: img,img-rogue
+      - items:
+          - enum:
+              - ti,j721s2-gpu
+          - const: img,img-bxs-4-64
+          - const: img,img-rogue
 
       # This legacy combination of compatible strings was introduced early on before the more
       # specific GPU identifiers were used. Keep it around here for compatibility, but never use
@@ -78,6 +83,18 @@ allOf:
       properties:
         power-domains:
           maxItems: 1
+  # Cores with two power domains
+  - if:
+      properties:
+        compatible:
+          contains:
+            anyOf:
+              - const: img,img-bxs-4-64
+    then:
+      properties:
+        power-domains:
+          minItems: 2
+          maxItems: 2
   # Vendor integrations using a single clock domain
   - if:
       properties:
@@ -85,6 +102,7 @@ allOf:
           contains:
             anyOf:
               - const: ti,am62-gpu
+              - const: ti,j721s2-gpu
     then:
       properties:
         clocks:
@@ -105,3 +123,26 @@ examples:
         power-domains = <&k3_pds 187 TI_SCI_PD_EXCLUSIVE>;
         power-domain-names = "a";
     };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    / {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        interrupt-controller;
+        #interrupt-cells = <3>;
+
+        gpu@4e20000000 {
+            compatible = "ti,j721s2-gpu", "img,img-bxs-4-64", "img,img-rogue";
+            reg = <0x4e 0x20000000 0x00 0x80000>;
+            clocks = <&k3_clks 130 1>;
+            clock-names = "core";
+            interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+            power-domains = <&k3_pds 130 TI_SCI_PD_EXCLUSIVE>,
+                            <&k3_pds 373 TI_SCI_PD_EXCLUSIVE>;
+            power-domain-names = "a", "b";
+            dma-coherent;
+        };
+    };

-- 
2.47.0


