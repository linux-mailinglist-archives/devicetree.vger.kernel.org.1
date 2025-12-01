Return-Path: <devicetree+bounces-243292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8A7C968BA
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:03:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E35C4E20F9
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A6D30214D;
	Mon,  1 Dec 2025 10:01:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9DE2E4279;
	Mon,  1 Dec 2025 10:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583284; cv=none; b=hlz3ZMRiWuYM+2AUJ26zYJr6XSzT+V6+bakEu9ckZkYP81+guJuULAMljWjoWbXCVmwSv8OTWJ6/hzXl7QhPbsq8bWmZkjksJ1ecIUeJdHC8LS4s9FxwKfOM9ltuM/noUlSIx/YhlthmuBkd1OSEhybPgGYAWHs5YQ94UsUz5Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583284; c=relaxed/simple;
	bh=3ithkSbCBMU6iwVOGCExIuy5tg+GbzuIHt/59Me8q/M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CAsOdy+uXcqa8DRsVlSJIzvYuegQeuueeMqmcCagGHoXPYS6Oil3YsNxNO8qOSUjGhpMI1ihokdp9A8a24Q0jWxD/uqv6Kzaht1vdcALc7EWdehNioToEpLPlj9Wi7ej4GX4o2goaBRm11Gj7ExYIGufhz1fngg4aq/3Yu9A04g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b846f23a;
	Mon, 1 Dec 2025 18:01:12 +0800 (GMT+08:00)
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
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Add HINLINK H28K
Date: Mon,  1 Dec 2025 18:00:05 +0800
Message-Id: <20251201100008.206524-2-amadeus@jmu.edu.cn>
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
X-HM-Tid: 0a9ad95bf13203a2kunm919d19c1367a07
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSU9OVkwfQx0YQ0gaQkMYHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSk
	JLS1kG

The HINLINK H28K is a dual-gigabit SBC based on the RK3528 SoC.
Add devicetree binding documentation for it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..8d6e2b28e51a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -718,6 +718,11 @@ properties:
           - const: hardkernel,odroid-m2
           - const: rockchip,rk3588s
 
+      - description: HINLINK H28K
+        items:
+          - const: hinlink,h28k
+          - const: rockchip,rk3528
+
       - description: HINLINK H66K / H68K
         items:
           - enum:
-- 
2.25.1


