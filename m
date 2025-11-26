Return-Path: <devicetree+bounces-242265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BB2C88A8C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2242434E8B9
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0A73168F7;
	Wed, 26 Nov 2025 08:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="JD7ShE0P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5794F313542;
	Wed, 26 Nov 2025 08:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146047; cv=none; b=ICJjDf/A2jkpBpO2lJUE3OTwOmlhGHVaIfO3XwAEDtASblXFD8kl2r+ifdT0+tWt2FFoPNfYzlyJs4i3MAB9tqrE0y0E7COmhq3YPvgGkkBdMIxBBUv1HazAlqwSe4cwP3tWRCzNX4pANjy6QKYxqb58xmdfHO++1Yl2e+kvG50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146047; c=relaxed/simple;
	bh=dr4SOm92jHcnGXQ/thNFLXAMyQSt3snfzz493W109ww=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=cW/KejDrwcyOnXd7u9kE0pG319HvJIWdYm1+8cLt3jrOvb51QB/6CBrKsT5tFVO1Muw7Gs9rP9j2hApZG5z5vvSpmwjBvdhS4RIVxtQmsNaWiVuOj+L4J2Kxn+tcWJ6pXrrGUAVFbFOam1/+VjD5Mn9T8rf6AGPP/GjaNdBNe5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=JD7ShE0P; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764146038;
	bh=lW1MabH8TwyvbabLyjolWKrj+twdSqiGH4BPvNSLuws=;
	h=From:To:Subject:Date:Message-Id;
	b=JD7ShE0P3FVcitfNufDzT2M4aqaZywoIW/lzu5AOePvYCW/fYKr6P3w10CPfTdO3c
	 xpMiYzIzN8SClYxZlxrZu9RIozT1JeHAO7PagZrdxCAkjo5zKeNbXvgs0AnhXJKRcb
	 12eQxTv1vs7uxR8y4moNaWzIlKBiR8yhKREkdrlw=
X-QQ-mid: zesmtpgz4t1764146033t0aba92f9
X-QQ-Originating-IP: bmKFoRbntIb+LrnhcHZ68Pi2yQdiUGGadX6Gt3Q2ucY=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 26 Nov 2025 16:33:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18429734964785922997
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
Subject: [PATCH 1/2] dt-bindings: iommu: rockchip: Add support for multiple interface clocks
Date: Wed, 26 Nov 2025 16:33:44 +0800
Message-Id: <20251126083345.88-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251126083345.88-1-kernel@airkyi.com>
References: <20251126083345.88-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NDtUtlvFer7vnEqA/tTmQzjbxzzgzuoTJXNzm2HPd7Tmet7QypVIiSx5
	D1X+7VRlewFsLspeNIfP8glzyGQwBTQz6u2XwM3r+z3oG65so6CqvwlMvYWXxeiGJhEkJZn
	UHUrX7I6+SLp7yMtt0uoGr6ZbYyXDdZOBxYqw7nY8oY3amYX38N72VoQPd/Gqg1WxChTQk8
	CF48fHAuHTc0ZhQgHyoK8QoG7ODIyXoTL/UbBgZFqg5Iq8kAuCqVZN81v0onmYZqnN2ZNhZ
	vrPvcbcesJWs4aJUOaXX41BPtCG0qRARSj8WHM4R01FY2QqRkWZM5bAhl7hop/3L1SoUQvQ
	V/ma/z9SPGLMAuzhKFS+9PyLIK0rqfH2N7BfOc+8TZmXcKY4ZurIBf/sMHUilRd9rrM0kuP
	m3dL75gtWQz0Su4nieRQeTFYe/BWhymunYXUVnWfCrgAD/P8ej+UlbW8mpDiuIYc/9JeCwc
	24y5K8r8f3GijECchEBC6RS7edcVZ1Y8IV98Vujp+nhOGQe0PJAIomWB6Cpe8sUCqhdfq78
	5YzudHUBAJTl8mdlyJtiJEvW98c0b/+WzaM0vaCi0xcfrfTceVaTN27DmjL4hU8DpIdmWBa
	U+HrD2gJ5BvqbGlEATAxlnFd1TR6URT/Ku/c7V7UPLH/8uIdzA2ObtDGKFxh9Eg2lTCn/2g
	+3bpDgKTo98GLD2mFJTeapTnffoC/qRpDCAC4vZ/eDCqzFKXlp6G7LNov0a8zC7cbQaH4pq
	xttdV5KFWu5VkRUYlvaVbBt3lnTIf6g2QVvJLOkrxromXEbg9kacZKC8blQynw/o86Mj9fq
	Q+4aTCttyyUHNE6OhIBh217VA7JXtfZiGCi5FIpER/bRC2PbDUBp9xQau+QvNd3FGgdj2q5
	wzc1yHmtJXVpz0BZJoU3vYZTErZ28bTVF8E3UvPDi8S7tzNtFWUBJgOEU4/hZ1ikQqc90m6
	iUiWQTxhKuMpbOgkZEX5x29X6URp5pLFlEZZ4gbv/I9HQcA==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The iommu found on RK3576 NPU/RKVDEC may contains more than one
interface clock.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 .../devicetree/bindings/iommu/rockchip,iommu.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 6ce41d11ff5e..11cc22a0b1d3 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -42,14 +42,22 @@ properties:
     minItems: 1
 
   clocks:
+    minItems: 2
     items:
       - description: Core clock
       - description: Interface clock
+      - description: Interface clock 1
+      - description: Interface clock 2
+      - description: Interface clock 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aclk
       - const: iface
+      - const: iface_1
+      - const: iface_2
+      - const: iface_3
 
   "#iommu-cells":
     const: 0
-- 
2.51.1


