Return-Path: <devicetree+bounces-189821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B7FAE9A24
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 11:34:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BD867ACA9F
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 09:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A148C2C3274;
	Thu, 26 Jun 2025 09:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="cpcdJzxk"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5405029C344
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 09:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750930443; cv=none; b=HD82KD+QsmtF/MiXjLpING78QTvMMvHoCZ+VzhrH6ElWtTIRIM2eCn338fPHHobIu3sFAhaSfCQPEZ/lIGUtyvqVdG5uoDb0EQ/asiB1WNvssBL42XntRpmAF9aZMlpRfJ0273uRtPIY21fEaK4Pb1PmHSpI6v0LRbeg37ImBh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750930443; c=relaxed/simple;
	bh=m+a9GhkmqGO/UF/SgWUyKNH2FMpqsq3qKIChzCdiP9E=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=NVeWxfv1f7BPNYOtL2Nzc3tVbOZBZrm0sEQmNjCGrvAZVg1l3SHkUvU/KsbBRASGIzQGoHtB0R9MTF8K7nXthCII0zWZDyNLjAwAuegkGcj6ZIay4nIcg8FRMWmUqX39YGOhoBXoBVlDbD95yaIpfA/KX4JHdY61z1w5MW7wx7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=cpcdJzxk; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250626093358euoutp0204af95cb6677ec4810790a76c9f78975~MjfUUVcP60286402864euoutp02D
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 09:33:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250626093358euoutp0204af95cb6677ec4810790a76c9f78975~MjfUUVcP60286402864euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750930438;
	bh=0cxYq6ecVQYEouUOPludphXkFkj0eDSu98gp3EjBQ5g=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=cpcdJzxkzYfTBJ8g3eTivV+VFcqLIo4A5TGF44U7he6ORcviZKuvIOmmfQ8fcwJ3a
	 7JfYJ49Ix94GvCThF5LjCCefm5AUu2ouBlO1tTFhfDvCDOQ9aMvL2VxWfbim5ZUYJH
	 f/flD2h9GknJWjEqCoYkM0Xz1sNQB8cMsKidX5sM=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250626093358eucas1p1e5d763dc86dccb0ed9fa725182ea59e6~MjfTpEyTP0080700807eucas1p1T;
	Thu, 26 Jun 2025 09:33:58 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250626093356eusmtip219bc257793110e2073fe16714d5ec177~MjfSjBKcC1062510625eusmtip2O;
	Thu, 26 Jun 2025 09:33:56 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Thu, 26 Jun 2025 11:33:47 +0200
Subject: [PATCH v7 2/5] dt-bindings: gpu: img,powervr-rogue: Add TH1520 GPU
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250626-apr_14_for_sending-v7-2-6593722e0217@samsung.com>
In-Reply-To: <20250626-apr_14_for_sending-v7-0-6593722e0217@samsung.com>
To: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,  Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
	<conor+dt@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>,
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>, Ulf Hansson
	<ulf.hansson@linaro.org>,  Marek Szyprowski <m.szyprowski@samsung.com>, 
	Drew Fustini <fustini@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org,  Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,  Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250626093358eucas1p1e5d763dc86dccb0ed9fa725182ea59e6
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250626093358eucas1p1e5d763dc86dccb0ed9fa725182ea59e6
X-EPHeader: CA
X-CMS-RootMailID: 20250626093358eucas1p1e5d763dc86dccb0ed9fa725182ea59e6
References: <20250626-apr_14_for_sending-v7-0-6593722e0217@samsung.com>
	<CGME20250626093358eucas1p1e5d763dc86dccb0ed9fa725182ea59e6@eucas1p1.samsung.com>

Update the img,powervr-rogue.yaml to include the T-HEAD TH1520 SoC's
specific GPU compatible string.

The thead,th1520-gpu compatible, along with its full chain
img,img-bxm-4-64, and img,img-rogue, is added to the
list of recognized GPU types.

While the BXM-4-64 GPU IP is designed with two distinct power domains,
the TH1520 SoC integrates it with only a single, unified power gate that
is controllable by the kernel.

To model this reality correctly while keeping the binding accurate for
other devices, add conditional constraints to the `allOf` section:
 - If the compatible is "thead,th1520-gpu", enforce a maximum of one
   power domain.
 - For other "img,img-bxm-4-64" and "img,img-bxs-4-64" devices,
   enforce a minimum of two power domains, using a 'not:' clause to
   exclude the TH1520.

This makes the binding strict and correct for both the specific TH1520
implementation and for other SoCs that use the B-series Rogue GPUs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 .../devicetree/bindings/gpu/img,powervr-rogue.yaml | 26 +++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
index 4450e2e73b3ccf74d29f0e31e2e6687d7cbe5d65..263c40c8438e26efcf1613b5e2af54f2d6599871 100644
--- a/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
+++ b/Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
@@ -21,6 +21,11 @@ properties:
           # work with newer dts.
           - const: img,img-axe
           - const: img,img-rogue
+      - items:
+          - enum:
+              - thead,th1520-gpu
+          - const: img,img-bxm-4-64
+          - const: img,img-rogue
       - items:
           - enum:
               - ti,j721s2-gpu
@@ -89,6 +94,18 @@ allOf:
         - power-domains
         - power-domain-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: thead,th1520-gpu
+    then:
+      properties:
+        power-domains:
+          maxItems: 1
+        power-domain-names:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
@@ -105,7 +122,14 @@ allOf:
       properties:
         compatible:
           contains:
-            const: img,img-bxs-4-64
+            enum:
+              - img,img-bxs-4-64
+              - img,img-bxm-4-64
+      not:
+        properties:
+          compatible:
+            contains:
+              const: thead,th1520-gpu
     then:
       properties:
         power-domains:

-- 
2.34.1


