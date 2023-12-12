Return-Path: <devicetree+bounces-24108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD4A80E090
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 01:58:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF9BE282552
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 00:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B5B64A;
	Tue, 12 Dec 2023 00:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="FStsEO0u"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 82D38B3;
	Mon, 11 Dec 2023 16:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ALA6E
	1kxgqoyYdK+X/tV01Cv4nS2fQCV1ZSR7WI680E=; b=FStsEO0uHLWJqwximzbpg
	kRqRlujuNe6619REWsYePZpQ1B5Cv+psr0Gtv2/FKSQhuAcWEE1hFCb3RFGdHhY+
	fhCFztfy8uxsMWM9uogzwTROQidBzm2wdG9MYizO+tABPLpRfzdsc0UCLzwpAezZ
	ZqijZ/n1qZRMdLtZpr1DDs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-3 (Coremail) with SMTP id _____wDnLx3nr3dlgINjCQ--.23988S2;
	Tue, 12 Dec 2023 08:57:15 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: iommu@lists.linux.dev
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	joro@8bytes.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com,
	will@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Tue, 12 Dec 2023 08:57:10 +0800
Message-Id: <20231212005710.1837066-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnLx3nr3dlgINjCQ--.23988S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7JF15GFyxXF45Jr1DGF43GFg_yoW8JF45pF
	srCryDXFyxGw1fWa9rtFn3Cr45tr4DAa1jgryaga17WFn8ta45GrnY9rn8ZF1DWFW8AFW7
	ua9rurW5A3yavrUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jrcTPUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBBEXmVOA5nBygAAsY

From: Andy Yan <andy.yan@rock-chips.com>

Add a Rockchip RK3588 compatible

I split it from the vop2 patch series as suggested by Heiko[0]

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[0]https://patchwork.kernel.org/project/dri-devel/patch/20231207080235.652719-1-andyshrk@163.com/

---

Changes in v2:
- Add maintainers for the iommu subsystem to cc list

 .../devicetree/bindings/iommu/rockchip,iommu.yaml     | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..621dde0e45d8 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -19,9 +19,14 @@ description: |+
 
 properties:
   compatible:
-    enum:
-      - rockchip,iommu
-      - rockchip,rk3568-iommu
+    oneOf:
+      - enum:
+          - rockchip,iommu
+          - rockchip,rk3568-iommu
+      - items:
+          - enum:
+              - rockchip,rk3588-iommu
+          - const: rockchip,rk3568-iommu
 
   reg:
     items:
-- 
2.34.1


