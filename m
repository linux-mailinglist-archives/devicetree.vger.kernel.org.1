Return-Path: <devicetree+bounces-238125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C64AEC5778A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8D9EE4E1C73
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98042DECDE;
	Thu, 13 Nov 2025 12:44:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410803F9C5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763037863; cv=none; b=MG0Ocn7jPGCB+ctzOUB7m1pBJl2+V5VvUVeRvCjbz7QN0w3OsM0fHRb7zKqiwC+jGTsX4fkYlrC262lDHUspeDE40F0GsNtA62J3SgSNed3M8YfNYwJV7j/eTCyBrbcP9RliOTnMYyAKasS7sCRsdBSEK9de+Dn1vVvO8j9bjS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763037863; c=relaxed/simple;
	bh=T4IWM3XO8ub9sXkyQuB+2WD9BGnAywQersoeSNlTCgo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GxkxiD0h3SL/QobWXdfEvB9Skqtb+I3BL2/BAGeU7Y7A60RiAftGUjR5i9kbFUxliIAS9gj3oDwOrYO2oxL5z+invmi1th5x3aUvG+K3ZPH+vZWSK+SNl0+iX5bpgSNXGD7pmW5NJ6rMI5ayCTmI7MawLcleuIsBUrDTr8AwnBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXu030553;
	Thu, 13 Nov 2025 21:42:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 1/3] arm64: dts: rockchip: Use default-state for power LED for Radxa boards
Date: Thu, 13 Nov 2025 12:42:20 +0000
Message-ID: <20251113124222.4691-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch addresses the inconsistency for the power LED by using
default-state = "on" instead of linux,default-trigger = "default-on".

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 2 +-
 6 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 7a32972bc2496..c1e3098b9a7bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -35,7 +35,6 @@ green-led {
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			label = "rockpis:green:power";
-			linux,default-trigger = "default-on";
 		};
 
 		blue-led {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 962b8b231c960..74160cf891885 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -39,8 +39,8 @@ leds {
 		led-0 {
 			function = LED_FUNCTION_POWER;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "default-on";
 		};
 
 		/* USER_LED2 */
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
index c03ae1dd34560..0b696d49b71fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
@@ -45,7 +45,6 @@ led-1 {
 		default-state = "on";
 		function = LED_FUNCTION_STATUS;
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
-		linux,default-trigger = "default-on";
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 9bc33422ced50..7023dc326d0e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -52,9 +52,9 @@ leds: leds {
 
 		power-led {
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 
 		user-led {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..e360446368ae6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -88,8 +88,8 @@ gpio-leds {
 		pinctrl-0 = <&led_pins>;
 
 		power-led1 {
+			default-state = "on";
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 
 		hdd-led2 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..217538ed12df8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -61,9 +61,9 @@ io-led {
 
 		power-led {
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "default-on";
 		};
 	};
 
-- 
2.43.0


