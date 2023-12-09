Return-Path: <devicetree+bounces-23410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D880B3A5
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3481281027
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B1912B6C;
	Sat,  9 Dec 2023 10:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="WxH7/13U"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7E54A10E0;
	Sat,  9 Dec 2023 02:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=UJTxz
	ULlo1PSHuzPI7aSyCkSWzQgmoVbwP2iESWvZng=; b=WxH7/13UvQqwMZMkOoIuC
	Vt5+8nXtO1B587jQnF7qZg5LUR+RZa+j5BsE0Wd8PnIdi5NgiVsvwE/l3Rv4y+or
	eg2gUx0iBxtq306VHbJAqokoLgq6UO2rnFsXV5rs61UbKfSvcL6HbHeNDr/GDnIT
	3u4ColCi981iV0gGPqWgv8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-2 (Coremail) with SMTP id _____wB3n+J9Q3Rlp3CvDQ--.60130S2;
	Sat, 09 Dec 2023 18:37:52 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Sat,  9 Dec 2023 18:37:48 +0800
Message-Id: <20231209103748.1568462-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209103622.1568289-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wB3n+J9Q3Rlp3CvDQ--.60130S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrWkAF4UArWDGF4rAryUtrb_yoWfWrcEka
	4xZF15WFWFvFyY9w4qkF4kGryjkw47KF9ru3Z8AF1kA3yDt393tFWkt34akFy7ur43urn3
	CF1rtr9xuFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAl19UUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgVBXmVOA2tDlgAAse

Add Cool Pi 4B, a SBC powered by RK3588S

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5deb66a5c7d9..5de9f3090be1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi 4 Model B
+        items:
+          - const: CoolPi 4 Model B
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
-- 
2.34.1


