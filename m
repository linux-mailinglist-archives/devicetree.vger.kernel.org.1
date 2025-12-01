Return-Path: <devicetree+bounces-243293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 17891C968D8
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9328B342CC5
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5AA2302CAB;
	Mon,  1 Dec 2025 10:01:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836B921CC4F;
	Mon,  1 Dec 2025 10:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583285; cv=none; b=dWayyEPC9mAJe888mHhBoEC/NlqbCKysFBuVZPYKYt0BigOD70dP/g+Lm/78DjNctcyEafOqHvSPhTymaIM3fbSH0HAyHoCYANZiDRn/Qh1rPtcezpPoqSBibvebh8hfBJ1ij/LuPphEVuHPf5VjLwdu0h/zhBIKLkb5cqbJFx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583285; c=relaxed/simple;
	bh=lfVDOivQf6Z/dG8wiaO+Sxrje8XJ3xVbyTDR/NR0P1E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WwP9oMhKi0de0p776nVpwVHFEGYf9usNOz1k+Hc7k6L0HiIxkP17HfvLIei33TdNw8+zKnwknTlWWUz6RFLvoGEk07AJg0xqW6OuLbyJVf2hqLJDZbxbxpq+zE82TxZQoIM31Wt2fAL9xglB7acApH3wb5r74LbDt7ytFFruHoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b846f248;
	Mon, 1 Dec 2025 18:01:19 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: arm: rockchip: Add MangoPi M28K
Date: Mon,  1 Dec 2025 18:00:07 +0800
Message-Id: <20251201100008.206524-4-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251201100008.206524-1-amadeus@jmu.edu.cn>
References: <20251201100008.206524-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ad95c0b6203a2kunm919d19c1367a3d
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHk0dVklIGB4aSxkaH0JDGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG

The MangoPi M28K is a dual-gigabit SBC developed by Widora based
on the RK3528 SoC. Add devicetree binding documentation for it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 8d6e2b28e51a..8fef370b637c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1269,6 +1269,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: MangoPi M28K
+        items:
+          - const: widora,mangopi-m28k
+          - const: rockchip,rk3528
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.25.1


