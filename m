Return-Path: <devicetree+bounces-22570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB5180827F
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBD5D282B59
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88171E4A3;
	Thu,  7 Dec 2023 08:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="TfUvT0RU"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A40621715;
	Thu,  7 Dec 2023 00:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Eagjj
	KWNWKSpKBM+wTEZQyp+boVbVHbVzJJ39PCuk0M=; b=TfUvT0RUFYc7U2/AlB+F5
	UFEjE8ZxIUvKFTTlvaIjLSSd5yLel5Jek3mV1A833tuQNQkFRyizA1xoAYACBvzx
	ng4IYufs223SmaK8LluDXg0ozVxzHLEE4PXq6eGZ0+3LZc1Lg54jmxsI7oOuV+b4
	DTT0vhR4f8h5Mkgv0S7qYE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wD3_wsefHFlU2WcEw--.43577S2;
	Thu, 07 Dec 2023 16:02:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu,  7 Dec 2023 16:02:35 +0800
Message-Id: <20231207080235.652719-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3_wsefHFlU2WcEw--.43577S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF45ZrW7uFyDKrWfAryxKrg_yoWDJrX_C3
	WxZw45XF4rtFWF93WDA3yfGFyDCw42kr1kXa9YkF1vya4q9rykKr93J34rAr4rWr47uF9a
	93WS9ry3WF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8KFAPUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgM-XmVOA0XAIwAAs+

From: Andy Yan <andy.yan@rock-chips.com>

Add a Rockchip RK3588 compatible

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v4:
- Add const for rockchip,rk3588-iommu compatible

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


