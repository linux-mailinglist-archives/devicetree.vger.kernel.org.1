Return-Path: <devicetree+bounces-236402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8E6C4400E
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2B3624E4176
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC852FDC40;
	Sun,  9 Nov 2025 14:19:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4382FDC24
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762697992; cv=none; b=pCVqheRt6IileTJD3oQMO4Wfstr6Si6sZOfvEyJNoHTzeDXwceRcboajQre88BPhPjRgou1jiidVs2qOmhwPCl5ntz/F5AVi+WkQzItqGATPK3R++f5pCxi6LV0Z9kqocb40osrTDs+/BCVV+xc5ci0ocxCiatNq5smPIcAwAx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762697992; c=relaxed/simple;
	bh=armZ7aGFI/1wQJS1S7ljtxIKOHo5lXH/SQ3zCOwHQ+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iMzAY3pVtwkWdCxFilER8Kdnf91wO7ao3M5J6ApEOEE8A73qVpEBMmb7aQFz3hBjfAD0eYPUy/bxOPWW5X3Xj3pfL5/FFPpBM8+tEjBPgV7ixlp4vUBEo+AaqAa4a9bEZIp+UTmfipoDvg+88rGwPd6QJpOl9pDAzzOuxew15bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dv015030;
	Sun, 9 Nov 2025 23:19:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 11/14] arm64: dts: rockchip: Sort nodes/properties for Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:56 +0000
Message-ID: <20251109141859.206835-12-naoki@radxa.com>
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

Sort nodes/properties alphanumerically. No functional change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Reflect other commits, no functional change
Changes in v6:
- Reflect other commits, no functional change
Changes in v5:
- Reword commit message
Changes in v4:
- Reflect other commits, no functional change
Changes in v3:
- None
Changes in v2:
- New
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 162 +++++++++---------
 1 file changed, 81 insertions(+), 81 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 4e15c28f8a5fa..6ef9a5d8cd9c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -25,15 +25,12 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	sound {
-		compatible = "audio-graph-card";
-		label = "rk3588-es8316";
-		dais = <&i2s0_8ch_p0>;
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
+	fan: fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc_5v0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	hdmi0-con {
@@ -70,12 +67,14 @@ led-1 {
 		};
 	};
 
-	fan: fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 24 44 64 128 192 255>;
-		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 60000 0>;
+	vcc_1v1_nldo_s3: regulator-1v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sysin>;
 	};
 
 	vcc3v3_pcie2x1l2: regulator-3v3-0 {
@@ -90,6 +89,40 @@ vcc3v3_pcie2x1l2: regulator-3v3-0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
+	vcc_3v3_s0: regulator-3v3-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vdd_3v3: regulator-3v3-2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_wifi_pwr>;
+		regulator-name = "vdd_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcca: regulator-4v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc_sysin>;
+	};
+
 	vcc5v_dcin: regulator-5v0-0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_dcin";
@@ -123,26 +156,6 @@ vcc5v0_usb_otg0: regulator-5v0-2 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc_1v1_nldo_s3: regulator-1v1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_1v1_nldo_s3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc_3v3_s0: regulator-3v3-1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc_5v0: regulator-5v0-3 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -165,28 +178,15 @@ vcc_sysin: regulator-5v0-4 {
 		vin-supply = <&vcc5v_dcin>;
 	};
 
-	vcca: regulator-4v0 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcca";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <4000000>;
-		regulator-max-microvolt = <4000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vdd_3v3: regulator-3v3-2 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_wifi_pwr>;
-		regulator-name = "vdd_3v3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
+	sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+		dais = <&i2s0_8ch_p0>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
 	};
 };
 
@@ -399,27 +399,27 @@ &package_thermal {
 
 	trips {
 		package_fan0: package-fan0 {
-			temperature = <55000>;
 			hysteresis = <2000>;
+			temperature = <55000>;
 			type = "active";
 		};
 
 		package_fan1: package-fan1 {
-			temperature = <65000>;
 			hysteresis = <2000>;
+			temperature = <65000>;
 			type = "active";
 		};
 	};
 
 	cooling-maps {
 		map0 {
-			trip = <&package_fan0>;
 			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
 		};
 
 		map1 {
-			trip = <&package_fan1>;
 			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
 		};
 	};
 };
@@ -437,6 +437,12 @@ &pd_gpu {
 };
 
 &pinctrl {
+	ethernet {
+		gmac1_rstn: gmac1-rstn {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		io_led: io-led {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -447,12 +453,6 @@ power_led: power-led {
 		};
 	};
 
-	ethernet {
-		gmac1_rstn: gmac1-rstn {
-			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie {
 		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -463,6 +463,12 @@ pow_en: pow-en {
 		};
 	};
 
+	regulators {
+		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -476,12 +482,6 @@ usb_wifi_pwr: usb-wifi-pwr {
 			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-
-	regulators {
-		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
-			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
 };
 
 &pwm3 {
@@ -500,8 +500,8 @@ &sdhci {
 	cap-mmc-highspeed;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	no-sdio;
 	no-sd;
+	no-sdio;
 	non-removable;
 	vmmc-supply = <&vcc_3v3_s0>;
 	vqmmc-supply = <&vccio_flash>;
@@ -514,8 +514,8 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	no-sdio;
 	no-mmc;
+	no-sdio;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
 	sd-uhs-sdr104;
@@ -538,12 +538,12 @@ flash@0 {
 };
 
 &spi2 {
-	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
 	assigned-clock-rates = <200000000>;
 	num-cs = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+	status = "okay";
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
@@ -898,10 +898,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	status = "okay";
-};
-
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -923,7 +919,7 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
-&vop_mmu {
+&usbdp_phy0 {
 	status = "okay";
 };
 
@@ -931,6 +927,10 @@ &vop {
 	status = "okay";
 };
 
+&vop_mmu {
+	status = "okay";
+};
+
 &vp0 {
 	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-- 
2.43.0


