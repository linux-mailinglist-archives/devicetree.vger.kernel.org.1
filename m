Return-Path: <devicetree+bounces-133749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 296209FBB12
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87A461883EA5
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5041918FC74;
	Tue, 24 Dec 2024 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="CIKPY8dZ"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924ED1DA4E;
	Tue, 24 Dec 2024 09:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735031999; cv=none; b=fh8CqxmlDJOsNOdwo2Ndou5QEDcicN+8vTRQrkrXtWYCwUVII8hZMHkX1u09JQDLgOti4AEDQzug32LYCUDCKSMIMsRRxlp5ba+Wu7kG3VaqTj0+NtXFKs2fjlGrFtcGc7i8PzvmHHi/D+LUvGoFXXd5+m7gfNby1gWwPtU97mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735031999; c=relaxed/simple;
	bh=kBDiJm22lOeNqS+Ej3BcwcZ/2qLpDkGRDXJcrMgyUL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pu1BpEqq426q7vrqY/mcwofCCBIElkYH9qNN8INbljj4UPU3u+wZmm00uAl2efu2l4J0ggJGDbfTCgU0FDtgiJi7kKyJXOKyPF9IQlHXAelkJ86sWveoNUlqmGQcGrQ9KIhCECm4wPwRNT7Kqm2VptmHW+y1DORubbQy0z1J020=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=CIKPY8dZ; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=tl/tu
	4Ma3hxADCr1NvTtefCDyNtiOwwX1gtVqm6FISg=; b=CIKPY8dZ0VzvfmW8KZ65J
	yHu5trA2F2Ny2qXXKm3UgHdaPOUZiRpgtmBT4UB4Pvoq6M2ibeV4etehVCb5wNz3
	HX6VoGmHnbrlHh+Qazxc478Rc2Haf/Eb8Ui7ohMslDHaiuJlzlcj/rOiQmNB+WDP
	NtCoAHlObMTO3p01Gis0d0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp1 (Coremail) with SMTP id PCgvCgCH6oaYfGpnc96lDg--.3901S2;
	Tue, 24 Dec 2024 17:19:24 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: cristian.ciocaltea@collabora.com,
	detlev.casanova@collabora.com,
	krzk+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
Date: Tue, 24 Dec 2024 17:19:13 +0800
Message-ID: <20241224091919.267698-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PCgvCgCH6oaYfGpnc96lDg--.3901S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jry3tw4xJrWkuF1DWF18uFg_yoWfuFXEka
	4xZw1UZFWrtF1F9w1qy3yxCa4UJa129FykGas3JF1kK3y8Wr9FgrZ5AwnxZry5Cr4Duryk
	W3Z3Zry3GFnrGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUb9Xo3UUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxK-Xmdqe1Ai5wAAsj

From: Andy Yan <andy.yan@rock-chips.com>

The HDPTX PHY on rk3576 is compatible with it on
rk3588.

Add compatible for it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
index 84fe59dbcf48..364db2049ce2 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
@@ -11,8 +11,11 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3588-hdptx-phy
+    oneOf:
+      - const: rockchip,rk3588-hdptx-phy
+      - items:
+          - enum:
+              - rockchip,rk3576-hdptx-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


