Return-Path: <devicetree+bounces-242900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41844C9101C
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD2603A9427
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 07:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D6B2D592D;
	Fri, 28 Nov 2025 07:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="ulZdl1A4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53B82D29C3;
	Fri, 28 Nov 2025 07:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764314023; cv=none; b=pqV77rYAOro2tayMDoLHoaUtS6XAlUTJ1EJGH46ilpB3UybftigEp+65Bam8L+i+l4YvcoxQfxZBbtK6KGD92sy5VM0zHyXhyXdJ+Zdxz9NHErc1zq84DLv26LbHpbQ3N7eK0fmwQ/HSvVfuX+WcAOSP7VIX8u7jSLj2uqHsFBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764314023; c=relaxed/simple;
	bh=z5IYYD2iKeBiEBmaHaDXbK7g31OzfjRBlEiS3Ct/UuU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=U0yhAsGMlGHksBu+feB6/k2LEcQz2NX03iJpwOSSYcL4xqyYjitvW6YOh7FSyZQdO3WZZ9XvzoDxvV1mYu+3bxwR2KMXkdFfrvCHQYbaXDnSFVSThUeeoakV1kD8n6xINMQ8F+p+cGCnAS7v/1kAExWVEZbm+vwxVikJIErToaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=ulZdl1A4; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764314013;
	bh=fb8KGAEKVYZnPu6e+o9GR6NcQ9hYiKO7SzU59n9Pv4A=;
	h=From:To:Subject:Date:Message-Id;
	b=ulZdl1A4ynSuClAWr8Ybm4mGNg/cPAviwKYV6JLOThJ2LMfBfAXm2n4qpd2S9qXRf
	 h/Mycw171E283oZxjKZFNRbsjWx5hZPKwhU6o6ylNBvsjCvbgCvyP4Dxq1JBVBnpzb
	 1t7KzSrRSeRAz/yWQoiZc61E3/WSwPpNlivYcURs=
X-QQ-mid: zesmtpsz7t1764314009t30004287
X-QQ-Originating-IP: cthJK7YnRP6ioMEHxol02BgS/hX9CBmdVTpAFbkHym0=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 15:13:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2606932567877476135
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: iommu: rockchip: Add support for multiple interface clocks
Date: Fri, 28 Nov 2025 15:13:21 +0800
Message-Id: <20251128071322.92-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251128071322.92-1-kernel@airkyi.com>
References: <20251128071322.92-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NDRJhlKLIrRL+NIQ68Wi+BbDUsNpwwwK8eC4uNFSvLc+px6ZKlQZM4qp
	S32A56/YpxBBE9l9KzR0xA7K23u8Ir0uSgTKf7X1IQeWYOJdhQQEohUkVatRGx7IDL3jMIA
	eGUoodcrho/PjlRIBYuC5nk/nJVuE5h0zhigvZqnUOi5xHqbVf9OUpBtpR9g2zpm8JG98i2
	12+COZtN8t3iK4r8euu9ji3jEYcmsN9I1ME8sOSuUu8CCOi3zvKQ34veP2Ji4HHaQUlD5Ct
	zdJz/AJmBfiqcYUATAm3wP737o7Ybfe+3LYGTh7UgaudOMB05sSDI0N3eUuxjiTmIPajF6M
	TfT81UOxWmH2cbsU6IMTZJvvdzGFCHrptaiH3v2bavAsRcq1XiY8GH1K1vljVaFH04Gr/Dk
	qxWO1lsn4nXV4TR03coPh3kPCqKnY6pcSA4TSfI6AM3WY7o5RUupcYZBsKI2zwHH0QVERYR
	FQ8KSNN0TL6QjA2+KW58lMWKJsJpWaWAXS0oXO50bpG07yn0ZQ/vc0CTa6XVH/mSM6mhENV
	UxMHkW4lZwmzNpWfiOG3S8aXwnQH0bvMZbol6JdNXo06kG845tyG/ljWuZdpWjXCXE+fZLN
	sDS1VVCstUWw1VxxCK0RDLrROLjkUQ5O0N9Xjg9zFHNNQdbfiMNQFnynzI33nxXZy1znrXA
	PL+6D8w2FUWROGWfx0nCT0EBrC2IFSsoZNU0dPIJ79jDib9VCsMh0Htd49095yeZ0+dbaV1
	PYbSP2azZwkkSoGgR0cDqwZe7s2w3KU1sbV6be7fe3OWu0IFwYGJN30vLk7LdQ+3Aim6lFm
	4fYUJTkJZTQIMxo0T//Wriy08rUiaVOlx6YeUVqlOQYXVF5YUneLkvgbWkrEkmywagygcCZ
	3lC9gwMwYMq10YV15Pjcz8oPWIgPgjFmiWejpcJwBJ/ShjII02bU7Nm/fNjx/6zvPTp2Ba7
	G8X+8f1PNhlr6h0kk2QnECqshnbrk87Yxom5JibuIn8td1zJPQ81jc1bm4//1g0gj1w4=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The iommu found on RK3576 NPU and RK3576 RKVDEC have 4 clock instead of
2 clock. Their clock names might differ, but I don't think that matters
much.

Add support for them.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

Changes in v2:
- Rewrite dt binding.

 .../bindings/iommu/rockchip,iommu.yaml        | 52 ++++++++++++++++---
 1 file changed, 46 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 6ce41d11ff5e..dfa5e25476d9 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -27,6 +27,8 @@ properties:
           - enum:
               - rockchip,rk3576-iommu
               - rockchip,rk3588-iommu
+              - rockchip,rk3576-npu-iommu
+              - rockchip,rk3576-rkvdec-iommu
           - const: rockchip,rk3568-iommu
 
   reg:
@@ -42,14 +44,12 @@ properties:
     minItems: 1
 
   clocks:
-    items:
-      - description: Core clock
-      - description: Interface clock
+    minItems: 2
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: iface
+    minItems: 2
+    maxItems: 4
 
   "#iommu-cells":
     const: 0
@@ -64,6 +64,46 @@ properties:
       Some mmu instances may produce unexpected results
       when the reset operation is used.
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-npu-iommu
+              - rockchip,rk3576-rkvdec-iommu
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          minItems: 4
+  - if:
+      properties:
+        compatible:
+          items:
+            - const: rockchip,iommu
+            - const: rockchip,rk3568-iommu
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-iommu
+              - rockchip,rk3588-iommu
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 required:
   - compatible
   - reg
-- 
2.51.1


