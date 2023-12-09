Return-Path: <devicetree+bounces-23378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3780B197
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 02:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B9B5281942
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 01:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7177780E;
	Sat,  9 Dec 2023 01:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="YHbdN3p4"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 79AFAE7;
	Fri,  8 Dec 2023 17:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=hDOWo
	ySA4CZNBE7lDkM9JvLOpbEJ+zrh02ycvkDH8j8=; b=YHbdN3p44zuvEHiPDNNxd
	8rnOhUySjsWhqV8PWkh60ad0I5el+QC0jzmNBF3uLH56/c70hO+SqEqwQTX+kwAU
	llELJdBt+tD5AqILXfcJi9cIgyj5BaF5/+WUukv+fybAxchFu9WvbYul7F0VOM3U
	uzW+4nk+u3EvACfxwOP+YI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-1 (Coremail) with SMTP id _____wBXn4Dwx3NlPIyWFA--.59698S2;
	Sat, 09 Dec 2023 09:50:43 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: conor+dt@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Sat,  9 Dec 2023 09:50:38 +0800
Message-Id: <20231209015038.1457967-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBXn4Dwx3NlPIyWFA--.59698S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF17JF4DJF4rurW7KFWrAFb_yoWkKFX_C3
	WxXw15XF48tFWFv3WDA3yxGryDGw12krn5XF9YkF1kCw1qvry8J393Jw15Aw18Wr47uFyS
	93WxWry2gF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8GYLDUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBdBXmVOA2VgAwAAsO

From: Andy Yan <andy.yan@rock-chips.com>

Add a Rockchip RK3588 compatible

I split it from the vop2 patch series as suggested by Heiko[0]

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[0]https://patchwork.kernel.org/project/dri-devel/patch/20231207080235.652719-1-andyshrk@163.com/

---

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


