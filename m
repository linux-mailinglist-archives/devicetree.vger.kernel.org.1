Return-Path: <devicetree+bounces-133433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 419BA9FA906
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A803B164FE7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D54D26D;
	Mon, 23 Dec 2024 01:39:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9945FD51C
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734917998; cv=none; b=Um81FbA0MhyOxCz7yKHRFYEsD/+cYlmsdAIcZTNesehTnLhDwjsvFhB8ffkeaDgfQdeaQxUjee2Dr+1stC6EBkeEKwOv83jZwdz+0HE/0jHnt5gmNLNa6kcqkwUFmUULu2HxkCm9bR/UL9WxAWwFUONrYy6jMySQtLtfgglCwtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734917998; c=relaxed/simple;
	bh=3fAZQoI3/fK8JcnVYMpoU8LSaQIKmldxj5vF5yjWAOE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LYLS7vBsyqRTplmCgH0OyJ1P2la+QHBG/rZsm86IZmHIatE3eTABCu67mEnmK7pZofYOpdK2wRwOyDy3VNY8qbbH7zPu3XpI5Yewm0tWdYevKObXy3CHxmVzTyrFtjNqLrawz4KWQNLBe4GVyOOv20Zl2lWoeVxlf5Z101cQcWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW75024519;
	Mon, 23 Dec 2024 10:39:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 6/7] arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:25 +0000
Message-ID: <20241223013926.1134-7-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

No functional change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6:
- New
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 79 +++++++++----------
 1 file changed, 38 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9ce69ffad125..419730f06f8f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -25,7 +25,7 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	analog-sound {
+	sound {
 		compatible = "audio-graph-card";
 		label = "rk3588-es8316";
 		dais = <&i2s0_8ch_p0>;
@@ -50,7 +50,7 @@ hdmi0_con_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
+		pinctrl-0 = <&led_0 &led_1>;
 
 		led-0 {
 			color = <LED_COLOR_ID_GREEN>;
@@ -76,28 +76,19 @@ fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
-	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
+	vcc3v3_pcie2x1l2: regulator-3v3-0 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pow_en>;
-		regulator-name = "pcie2x1l2_3v3";
+		regulator-name = "vcc3v3_pcie2x1l2";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v_dcin: regulator-vcc5v-dcin {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v_dcin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
+	vcc5v0_usb_host: regulator-5v0-0 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -109,7 +100,7 @@ vcc5v0_usb_host: regulator-vcc5v0-usb-host {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v0_usb_otg0: regulator-vcc5v0-usb-otg0 {
+	vcc5v0_usb_otg0: regulator-5v0-1 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
@@ -121,7 +112,7 @@ vcc5v0_usb_otg0: regulator-vcc5v0-usb-otg0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
+	vcc_1v1_nldo_s3: regulator-1v1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v1_nldo_s3";
 		regulator-always-on;
@@ -131,7 +122,7 @@ vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
+	vcc_3v3_pmu: regulator-3v3-1 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3_pmu";
 		regulator-always-on;
@@ -141,17 +132,17 @@ vcc_3v3_pmu: regulator-vcc-3v3-pmu {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc_3v3_s0: regulator-vcc-3v3-s0 {
+	vcc_3v3_s0: regulator-3v3-2 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3_s0";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_1v8_s0>;
+		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc_5v0: regulator-vcc-5v0 {
+	vcc_5v0: regulator-5v0-2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
@@ -163,17 +154,16 @@ vcc_5v0: regulator-vcc-5v0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_sysin: regulator-vcc-sysin {
+	vcc_sysin: regulator-5v0-3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sysin";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v_dcin>;
 	};
 
-	vcca: regulator-vcca {
+	vcca: regulator-4v0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcca";
 		regulator-always-on;
@@ -183,7 +173,7 @@ vcca: regulator-vcca {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vdd_3v3: regulator-vdd-3v3 {
+	vdd_3v3: regulator-3v3-3 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
@@ -404,48 +394,53 @@ &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&pcie2x1l2_3v3>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
 };
 
 &pinctrl {
 	leds {
-		led_pins: led-pins {
-			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		led_0: led-0 {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		led_1: led-1 {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-	mdio {
-		gmac1_rstn: gmac1-rstn {
+	ethernet-phy {
+		gmac1_rstn: ethernet-phy-0 {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	pcie {
-		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+		pcie20x1_2_perstn_m0: pcie-0 {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pow_en: pow-en {
+		pow_en: regulator-3v3-0 {
 			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb {
-		usb_host_pwren_h: usb-host-pwren-h {
+		usb_host_pwren_h: regulator-5v0-0 {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		usb_otg_pwren_h: usb-otg-pwren-h {
+		usb_otg_pwren_h: regulator-5v0-1 {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		usb_wifi_pwr: usb-wifi-pwr {
+		usb_wifi_pwr: regulator-3v3-3 {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
-		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
+	regulators {
+		vcc_5v0_pwren_h: regulator-5v0-2 {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -464,11 +459,14 @@ &saradc {
 
 &sdhci {
 	bus-width = <8>;
+	cap-mmc-highspeed;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	no-sdio;
 	no-sd;
+	no-sdio;
 	non-removable;
+	vmmc-supply = <&vcc_3v3_s0>;
+	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
 };
 
@@ -479,7 +477,6 @@ &sdmmc {
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
-	no-mmc;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
@@ -630,7 +627,7 @@ regulator-state-mem {
 			};
 
 			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-name = "vcc_2v0_pldo_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <2000000>;
@@ -665,8 +662,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-- 
2.43.0


