Return-Path: <devicetree+bounces-125642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 091879DEDE1
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75E2DB216FA
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47721433BC;
	Sat, 30 Nov 2024 00:41:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03038BA45
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927316; cv=none; b=bKSUetZ5Yg9dc8TfWwdv3QHLlIA/um26Px2HfotOgMjkyDi8HbhciJBcwb48rMZr1xSpEJOgn55tpDY4banNmZIFhFRpOacGWQiO+QAnDLamZOQEN4+zuIQoNRVz8DcTrx3nIiIEm+q5N86woZIzpAgGNfGEFWCqVXbDMN0jnxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927316; c=relaxed/simple;
	bh=xZ2dBoMlQzsE5JqPRMe5NUPCzrAugo0v9H+PJP5ME6U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q6waaXaN+q5u2zw1VElx444aPw2+HVFslPXuf5/9KveDtY0MEs5+zmdH27uOzFFdttafBLydUuO1CPFIc9Sxh6Jsdt1SzOwAIuiKDHDJK/2wNZXzcg8cCPM/QnwG93kESoG96eH8BalcDJHD1jNnHPoQQu+TFOWemm7l/S/MXLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BI024368;
	Sat, 30 Nov 2024 09:41:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: convert leds node to "pwm-led" for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:55 +0000
Message-ID: <20241130004057.7432-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130004057.7432-1-naoki@radxa.com>
References: <20241130004057.7432-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

convert heartbeat LED to use "pwm-led" to control birghtness.
also, define default-state = "on" to match with U-Boot.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 22 +++++++++----------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95f2f4dbf12d..7c8359fe712a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -50,15 +50,15 @@ hdmi0_con_in: endpoint {
 	};
 
 	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_rgb_b>;
+		compatible = "pwm-leds";
 
-		led_rgb_b {
-			function = LED_FUNCTION_STATUS;
+		led-0 {
 			color = <LED_COLOR_ID_BLUE>;
-			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			pwms = <&pwm0 0 1000000 0>;
+			max-brightness = <255>;
 		};
 	};
 
@@ -413,12 +413,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	leds {
-		led_rgb_b: led-rgb-b {
-			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	sound {
 		hp_detect: hp-detect {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -456,6 +450,10 @@ usb_host_pwren_h: usb-host-pwren-h {
 	};
 };
 
+&pwm0 {
+	status = "okay";
+};
+
 &pwm1 {
 	status = "okay";
 };
-- 
2.43.0


