Return-Path: <devicetree+bounces-20364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EE17FEF11
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E92A281AC9
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7297147765;
	Thu, 30 Nov 2023 12:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="jRnlGiYG"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id C926A1726;
	Thu, 30 Nov 2023 04:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=/4Iua
	fg2hhPzAVvzMsQQEyFbtwMDIUlEC3dLvK0EF3M=; b=jRnlGiYG/xmMAfrj6CeQr
	TN3MsHGd7q+lhtHmN4wCJlSSIJUctjk+IdxdkEH5SV+acJmhIiIJiqmlOAB0L7m6
	5TsaXzItfujHJz2tc+Rtu2aar/fxNZnET88VqGBFkhN2Un0z9q3o+uSFK5RjG5ZZ
	TduBK0UHpYx5zyl8zOWXKY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-1 (Coremail) with SMTP id _____wD3_7Ydf2hl0M6qCQ--.51188S2;
	Thu, 30 Nov 2023 20:25:04 +0800 (CST)
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
Subject: [PATCH v3 13/14] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Thu, 30 Nov 2023 20:25:00 +0800
Message-Id: <20231130122500.13491-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3_7Ydf2hl0M6qCQ--.51188S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF4rZFW3KryxGr15GrWDtwb_yoW3XFb_u3
	WxXa15XF48tF4F9w1DZw4xGr98G3W2krn3ZFs8CF1kC3WUZrykt3s3Jw1rAr4xWr47uFyS
	9F1vgry3WF9xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8KFAPUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAU4XmVOAquXMgAAss

From: Andy Yan <andy.yan@rock-chips.com>

Add a Rockchip RK3588 compatible

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..3febf0c3c404 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -22,6 +22,7 @@ properties:
     enum:
       - rockchip,iommu
       - rockchip,rk3568-iommu
+      - rockchip,rk3588-iommu
 
   reg:
     items:
-- 
2.34.1


