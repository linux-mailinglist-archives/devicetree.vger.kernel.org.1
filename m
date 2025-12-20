Return-Path: <devicetree+bounces-248455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 567ACCD2CE1
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 11:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 10CB23006E33
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 10:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5062ED16D;
	Sat, 20 Dec 2025 10:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A12DEA90;
	Sat, 20 Dec 2025 10:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766225134; cv=none; b=t0n3dO3hp1elp4nHOEtTM+L8ZdgxjarUXaYiOZzP97wi0nx0B7DoE4DLOXYNh+QwpenLj2VedcHEKV2TnaSE766/OTCysTNuqgupW6PFzNC7k/fteTS8vkQu6rPR0OrucPu+e2SYyAaVllRgsILGgv2hXn1bPu2bVae4HJqB9jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766225134; c=relaxed/simple;
	bh=DfDGX9FIsfGQwcsPIJDeQIRJk0yJia7ApjJt70iFoxk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gIEtXnDOFbYeEsB2qBUF2KfPhAqy3vHAyb1HTcOhNV8YPh0vjsdBOxA7KDm4XfKQNWuWxKxz9j02wZCK7N3X1DlGGt8lDcOPnrnsB2wEcR18noysY6saF+kDUw7yNoCD+7hbp4mQc7D3ik/D3MrOtOD9A7Lh0g0kQy/auxl2snA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.214.229])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2df715f9e;
	Sat, 20 Dec 2025 18:00:18 +0800 (GMT+08:00)
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
Subject: [PATCH 1/3] arm64: dts: rockchip: remove rtc regulator for ArmSoM Sige5
Date: Sat, 20 Dec 2025 18:00:08 +0800
Message-Id: <20251220100010.26643-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b3b33f23803a2kunmb12117682b9085
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGkxLVk5CGEsYQh1LSUIaHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKT1VJSUJZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0xVSktLVU
	tZBg++

According to the schematic, RTC is powered by vcc_3v3_s3.
The vcc_3v3_rtc_s5 regulator does not exist, remove it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index 3386084f6318..392ba83ab05a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -156,16 +156,6 @@ vcc_3v3_pcie: regulator-vcc-3v3-pcie {
 		vin-supply = <&vcc_5v0_sys>;
 	};
 
-	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_rtc_s5";
-		regulator-boot-on;
-		regulator-always-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_5v0_sys>;
-	};
-
 	vcc_3v3_s0: regulator-vcc-3v3-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3_s0";
-- 
2.25.1


