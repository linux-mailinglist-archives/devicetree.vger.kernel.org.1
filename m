Return-Path: <devicetree+bounces-125646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BAA9DEDE7
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 401F1B2169D
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9A64317E;
	Sat, 30 Nov 2024 00:49:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E911C28E
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927787; cv=none; b=CLFEs6Rxe+Q0BHs+d3PIkkezPsMrQ76blOOEHEEKhe2SJXZrPjWJ31ZTOlqa7XMbVjhxttRTCRdG6m6pWfulE6KqoWeEbaNM8eOuPELuc02py7T+pvlQrEp+4DjHX0DKdHnmr1+OQFHGvg/F4T97OsaSyz8Vbsyc8H1n1ZfJcQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927787; c=relaxed/simple;
	bh=urD/8I1KGsH5vkRmtDI25bazjTdCs6zxq2ETSmZ4WZ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nw6PrA3idV033HTF+EiTwNn8XgsEeKt9y71x/stS0WEFgEupcRV3c8iaokguUrVu1nadytI5jNQiESLwzXZpLY0pEJtgb1K6zRV+99F8Xl1+pDw3h7XrjHpSjmN8Fhn3vXJ7VjR3upFPlPnJdRREKAnZBCbtg0mVd7B0KwBmiBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0nQ2N024394;
	Sat, 30 Nov 2024 09:49:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:49:18 +0000
Message-ID: <20241130004920.7505-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004920.7505-1-naoki@radxa.com>
References: <20241130004920.7505-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

sort alphanumerically.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 42 +++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 08f5efeeac9c..c816febb486a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -91,30 +91,30 @@ typec_vin: regulator-typec-vin {
 		regulator-boot-on;
 	};
 
-	vcc3v3_wf: regulator-vcc3v3-wf {
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&ekey_en>;
-		regulator-name = "vcc3v3_wf";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pi6c_05";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
+		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	/* pi6c pcie clock generator */
-	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
+	vcc3v3_wf: regulator-vcc3v3-wf {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie30x4_pwren_h>;
-		regulator-name = "vcc3v3_pi6c_05";
+		pinctrl-0 = <&ekey_en>;
+		regulator-name = "vcc3v3_wf";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
+		startup-delay-us = <50000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -128,6 +128,16 @@ vcc4v0_sys: regulator-vcc4v0-sys {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&typec_vin>;
+	};
+
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_usb";
@@ -140,16 +150,6 @@ vcc5v_usb: regulator-vcc5v-usb {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_sys: regulator-vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&typec_vin>;
-	};
-
 	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v1_nldo_s3";
-- 
2.43.0


