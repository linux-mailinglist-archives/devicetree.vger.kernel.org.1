Return-Path: <devicetree+bounces-125851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA74C9DF8EE
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 03:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F6ED280F52
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 02:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0E52943F;
	Mon,  2 Dec 2024 02:34:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B1D26AE4
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 02:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733106885; cv=none; b=uujWs4crI3QO4+FG2nFQu45LYtn7Nn/0b/YUwsq3HcCFQoXYy9a8jT6yNebvwCoSBt83fx2PM8PMdKp2oA6eozrA/XPoMZx30FWnLSM5K6CA1g+9iz7ODHLwz87xVchf+pZV7HP2iT8xRjD582ecA6+VRAd0Yt74b5qIggC7f+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733106885; c=relaxed/simple;
	bh=PbNvTJ4BsT0nw2ifvKl6YQEnmAGa2ETK5y1sXzfIXJw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWjPvQz3CcnYm/WdKUoaV1EHWz74LThH7zviTE9Ascf0sHpEN5i/PAhP81okdBdUeBpWcpGgOHHJp856Ct+H75movhyUQVwYF1C5JzPzE25zIDSLKdyeG36JaKQN+6FyhndOcJ17yiOrFsiVFx+qF/Fe17S8EaXdMj6dLONPPPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B22XVDg000375;
	Mon, 2 Dec 2024 11:33:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
Date: Mon,  2 Dec 2024 02:32:26 +0000
Message-ID: <20241202023227.2671-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
References: <20241202023227.2671-1-naoki@radxa.com>
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
Changes in v2
- fix order in pcie2 in pinctrl
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 85 +++++++++----------
 1 file changed, 39 insertions(+), 46 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c816febb486a..c29c61b4ffa7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -24,18 +24,15 @@ chosen {
 	analog-sound {
 		compatible = "audio-graph-card";
 		label = "rk3588-es8316";
-
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
-
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-
 		dais = <&i2s0_8ch_p0>;
 		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
 	};
 
 	hdmi0-con {
@@ -140,13 +137,13 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 
 	vcc5v_usb: regulator-vcc5v-usb {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v_usb";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb_host_pwren_h>;
+		regulator-name = "vcc5v_usb";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -315,10 +312,10 @@ &i2c7 {
 	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
-		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
 		#sound-dai-cells = <0>;
 
 		port {
@@ -407,27 +404,15 @@ &pcie3x4 {
 };
 
 &pinctrl {
-	rtc {
-		rtc_int_l: rtc-int-l {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	sound {
-		hp_detect: hp-detect {
-			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+	pcie2 {
+		ekey_en: ekey-en {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-	};
 
-	pcie2 {
 		pcie30x1_0_perstn_m1_l: pcie30x1-0-perstn-m1-l {
 			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		ekey_en: ekey-en {
-			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		pcie_perst_l: pcie-perst-l {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -443,6 +428,18 @@ pcie30x4_pwren_h: pcie30x4-pwren-h {
 		};
 	};
 
+	rtc {
+		rtc_int_l: rtc-int-l {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -465,44 +462,44 @@ &saradc {
 
 &sdhci {
 	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
 	no-sdio;
 	no-sd;
 	non-removable;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
 	status = "okay";
 };
 
 &sdio {
 	max-frequency = <200000000>;
-	no-sd;
-	no-mmc;
-	non-removable;
 	bus-width = <4>;
 	cap-sdio-irq;
 	disable-wp;
 	keep-power-in-suspend;
-	wakeup-source;
+	no-sd;
+	no-mmc;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdiom0_pins>;
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdiom0_pins>;
+	wakeup-source;
 	status = "okay";
 };
 
 &sdmmc {
 	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
+	no-sdio;
+	no-mmc;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
@@ -527,22 +524,21 @@ &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
 	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-	num-cs = <1>;
 
 	pmic@0 {
 		compatible = "rockchip,rk806";
-		spi-max-frequency = <1000000>;
 		reg = <0x0>;
-
+		gpio-controller;
+		#gpio-cells = <2>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
-
+		spi-max-frequency = <1000000>;
 		system-power-controller;
 
 		vcc1-supply = <&vcc4v0_sys>;
@@ -561,9 +557,6 @@ pmic@0 {
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
 		vcca-supply = <&vcc4v0_sys>;
 
-		gpio-controller;
-		#gpio-cells = <2>;
-
 		rk806_dvs1_null: dvs1-null-pins {
 			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
-- 
2.43.0


