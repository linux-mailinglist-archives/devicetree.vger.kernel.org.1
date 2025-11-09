Return-Path: <devicetree+bounces-236401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4975FC44008
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EBEF188AE49
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49382FDC23;
	Sun,  9 Nov 2025 14:19:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AFD2FDC24
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697989; cv=none; b=b4pMh64NHABTL14v8AsGlwfVwDxwTLOgg5bxGZQrgigyrQ+o18FgV6lKAgPv2zyqt7uoMb9xMDjxjoXxHFyo/1ksn7NfZQk4cSJ9InW+5LULDw1ziiI6+WpackyYGxOaKZ7puV0ronJoyS0C9BNxuxUTqncSb9mdOcjfHhiiKJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697989; c=relaxed/simple;
	bh=wtB1uM/RxZCTrqOptiT3/75NeNHvlQEbSzZVjhro6zk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AMlrcRr3HwTJ/IaAG4gAP8irbkYFieObeDGDmzr2/jg80Af8Cldn+bH7/3fWSOFsMC5lO19w7+Mujfo4q7FQ4gSAy+DY1oKUAQIru3nHpfRAs9jbkjfrhcLv3zoO0ArS2NQwm88dZmJJDK0MkpqjrpQVWTM8OdR/OMDx6/+bEm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dt015030;
	Sun, 9 Nov 2025 23:19:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 09/14] arm64: dts: rockchip: Fix vcc_3v3_s0 vin-supply for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:54 +0000
Message-ID: <20251109141859.206835-10-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

vcc_3v3_s3 is the right vin-supply for vcc_3v3_s0.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- New
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 4f5376d0d109c..e693eedcbc378 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -148,7 +148,7 @@ vcc_3v3_s0: regulator-vcc-3v3-s0 {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_1v8_s0>;
+		vin-supply = <&vcc_3v3_s3>;
 	};
 
 	vcc_5v0: regulator-vcc-5v0 {
-- 
2.43.0


