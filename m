Return-Path: <devicetree+bounces-134903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA69FEE5D
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A4E93A2C20
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB7318C00B;
	Tue, 31 Dec 2024 09:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="jDRhSSkx"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C4B1953BD;
	Tue, 31 Dec 2024 09:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735637560; cv=none; b=DyN9DP9YQtBwRZkxWICN2FdjcGqEAItB0kMrTYWxjHt8TzNqlKctNWWpq0TeqzbpiAQhkXpmzAiv58A9UTuglstbwiVp+sAZnkfrMnJEcprMpKwv6ggThgTIkJX+30v+I2jZFJKFYQUdU+7oGh9iwIGAK8GrXUWlr81arPAwgFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735637560; c=relaxed/simple;
	bh=SefbSpWQMhmWbFhTp7LsyjTAVJhDaW25OIX5ECCCxtE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aT/91fjmVcflANqzRBXwILIA5NIFxUc/h1rlb4z/nI4DvK/gKlVDF8EOrBinVtvU1hF4byfhjp5+qv8+dPzSrNzbqe3JNZiiiJRJ/OHt/hzF9PlL4Vgc+33nPDFPv5xYnGMTBqvXK08JAJC/Bse+MgEdOgMbjSa+KEyEGF7uY7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=jDRhSSkx; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=gAzC/
	E/F7q/7HFvoRLgpsRSdEdWdl1u9Ms//kuDq2hg=; b=jDRhSSkxqwLJqKUdO1aaW
	F2Ha5TSL4HZSmDvqSh56vNz+ifMFrCHmMwi4nnLetoGB/8qGpuEuGOEMPdMDQ7yR
	erTouyT4rNVc3J0PV+itsShs1DG6LxEi5qen0SzF5Zhbd5zbM1YQoPbvwMTM4Y5d
	uJGrbf32sxWm4ByDyxRqPM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wD31yQLunNn0QGeCw--.9208S2;
	Tue, 31 Dec 2024 17:31:59 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: joro@8bytes.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [RESEND PATCH] dt-bindings: iommu: rockchip: Add Rockchip RK3576
Date: Tue, 31 Dec 2024 17:31:50 +0800
Message-ID: <20241231093154.252595-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD31yQLunNn0QGeCw--.9208S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtw1xZFW3uF47Kw4kGw1rWFg_yoWfCFb_C3
	WxZw4UZF4rtrWFvw1qvrWxWrn8G3W2kFn5ZFn8CFn5Ja4qvrWkJF95Jw1Yyr1UGr47uFyS
	9Fn3Wry7XF9xGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbD73PUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h7GXmdzt4U2PQABs4

From: Andy Yan <andy.yan@rock-chips.com>

Just like RK3588, RK3576 is compatible to the existing rk3568
binding.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---

 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 621dde0e45d8..6ce41d11ff5e 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -25,6 +25,7 @@ properties:
           - rockchip,rk3568-iommu
       - items:
           - enum:
+              - rockchip,rk3576-iommu
               - rockchip,rk3588-iommu
           - const: rockchip,rk3568-iommu
 
-- 
2.34.1


