Return-Path: <devicetree+bounces-92030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E104B94B9CF
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 11:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A23D21F22761
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 09:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B24F189BA1;
	Thu,  8 Aug 2024 09:38:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631D914EC77
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 09:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109927; cv=none; b=i4CIs4h+lksBTe4UDJpnq2FDYr0Js8qSVkR/9lx92tibm6CETG15wH8TAYARp8iWmUp7aB2MoHML0j3YJG69Gtrf7MIJTq1L4XL59tXgl1goW3iS7UqkyFdTjzzJD3Rce13u1328xY+TeH8pf03ZI2WrvE6OEgAJEwVN8I2IpNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109927; c=relaxed/simple;
	bh=RCwBqVkgVAzHOXelQjXSDEFly//vgILiET7mN3KCjIo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OszO9GGhGv4KXyMtyyXAoHrcxW+gaMfyHDEi2oN+1lDmC6otuYsJbobKum969/ltsbuktVO1pdqTz7OZeh7dDBj02Vb3gd+6Vi3mYHpHemYXL0lr/cXnzSe+xM50TPXUuJN8uvLfEJ+JS7Z5Pnn2q4g3fA7YxIj5NAheansbTB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE8030905;
	Thu, 8 Aug 2024 18:38:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 07/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
Date: Thu,  8 Aug 2024 18:38:05 +0900
Message-ID: <20240808093808.1740-8-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- sort properties
- add default-state
- add function for multi-led
- remove redundant parameters from pwms

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 7 ++++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 45b03dcbbad4..b287d9cca6f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -20,9 +20,10 @@ gpio-leds {
 		compatible = "gpio-leds";
 
 		led_user: led-0 {
-			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-			function = LED_FUNCTION_HEARTBEAT;
 			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			pinctrl-names = "default";
 			pinctrl-0 = <&led_user_en>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..4b5203c0037a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -16,21 +16,22 @@ pwm-leds {
 
 		multi-led {
 			color = <LED_COLOR_ID_RGB>;
+			function = LED_FUNCTION_ACTIVITY;
 			max-brightness = <255>;
 
 			led-red {
 				color = <LED_COLOR_ID_RED>;
-				pwms = <&pwm1 0 1000000 0>;
+				pwms = <&pwm1 0 1000000>;
 			};
 
 			led-green {
 				color = <LED_COLOR_ID_GREEN>;
-				pwms = <&pwm2 0 1000000 0>;
+				pwms = <&pwm2 0 1000000>;
 			};
 
 			led-blue {
 				color = <LED_COLOR_ID_BLUE>;
-				pwms = <&pwm12 0 1000000 0>;
+				pwms = <&pwm12 0 1000000>;
 			};
 		};
 	};
-- 
2.43.0


