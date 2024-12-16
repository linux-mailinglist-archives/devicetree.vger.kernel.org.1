Return-Path: <devicetree+bounces-131388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAD89F2FEF
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8D3B1883072
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6915A20459A;
	Mon, 16 Dec 2024 12:00:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A9145A11
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734350457; cv=none; b=eek4MkIBU+lYHpObiyqmNBpqxeUzR32LsTZdwswW+T0QsaxrQY5euDKlObnkh9RwPaDVaLSw/4iETz6xZpWm4ZE26ntsd/j8ftQ8RxKC+IOIGYVTuYrVse8jhmRJvGunYenbeteizSqbDulq2Jma0jCYlL3BiHtM/QOMzgjHdko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734350457; c=relaxed/simple;
	bh=RuBqMkN1DO9/6fSMkj8N0No0qa6+PQKoepq9ngv5UbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=vByzNT42T2H4+TpDw+CJ8aURzk2XbmvcH+s5HaSIkYP5IFlzFa5RnUJn1IbCj8uPnTuGg80Gcpq98vTQ4UEOhyfTG1n6rQ9h12F1BjqkZs0OTIpKYrt2OXAgspPTdNxrm44uzdd4guHCbtFynP4BKorDWoAhtxbbAl+mExHwDFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGC0bTj028820;
	Mon, 16 Dec 2024 21:00:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: Use PWM to drive blue LED on ROCK 5A/5C
Date: Mon, 16 Dec 2024 12:00:30 +0000
Message-ID: <20241216120030.16173-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
also has a PWM function. Using PWM, the user can change the brightness
of the LED.

Convert blue LED from "gpio-leds" to "pwm-leds" and enable related PWM.

Acked-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216113052.15696-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216114547.15892-1-naoki@radxa.com/
---
Changes in v3:
- Reword subject
Changes in v2:
- Reword commit message
---
 .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index d0b9513d56a7..d72314d917da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
+		pinctrl-0 = <&led_pin>;
 
 		led-0 {
 			color = <LED_COLOR_ID_GREEN>;
@@ -54,14 +54,6 @@ led-0 {
 			function = LED_FUNCTION_POWER;
 			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
 		};
-
-		led-1 {
-			color = <LED_COLOR_ID_BLUE>;
-			default-state = "on";
-			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
 	};
 
 	fan: pwm-fan {
@@ -72,6 +64,19 @@ fan: pwm-fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			pwms = <&pwm11 0 1000000 0>;
+			max-brightness = <255>;
+		};
+	};
+
 	vbus_typec: regulator-vbus-typec {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus_typec";
@@ -422,9 +427,8 @@ &pcie2x1l2 {
 
 &pinctrl {
 	leds {
-		led_pins: led-pins {
-			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		led_pin: led-pin {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
@@ -467,6 +471,12 @@ &pwm3 {
 	status = "okay";
 };
 
+&pwm11 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm11m3_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.43.0


