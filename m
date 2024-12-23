Return-Path: <devicetree+bounces-133439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCD99FA90A
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 02:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 463F718847D3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 01:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589EA14287;
	Mon, 23 Dec 2024 01:40:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3511D10A1F
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 01:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918004; cv=none; b=dWvTFLOBLDm7wuuVexq0ME5IT84psG79wDUmutj4/e6t8Pv3QaPqx277haLFlFRUrW82hW92V21KzbomZl1vCvye/Oi2FxWHOMwgPC0+i8qqGZObdZzRpxC+cdubylZY+jPrFc2j5e0Fuzp+aYCgjrf+8b0wqXfUoNoasvMFI7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918004; c=relaxed/simple;
	bh=fZcfNxI71mAPOI91Z91/rTJJIEs86twp391BY/63UQo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MmSyHJ+Yis3kYPrRqk5SzJd0o/lP/61KhCBQy3JJvnungrUuJclQR5/2Nct50v5lURqfd5THetqfLAcJsiPr13p2d9HO98SJBffzQdLLzKXDpHbADakj/lMIasWq5K3u6usfDT3xlIK9s7XRdS3GRPSWctju/nomOvAE8YQ5sY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1dW76024519;
	Mon, 23 Dec 2024 10:39:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 7/7] arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C
Date: Mon, 23 Dec 2024 01:39:26 +0000
Message-ID: <20241223013926.1134-8-naoki@radxa.com>
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

Sort nodes alphanumerically. No functional change.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v6:
- Reflect other commits, no functional change
Changes in v5:
- Reword commit message
Changes in v4:
- Reflect other commits, no functional change
Changes in v3:
- none
Changes in v2:
- new
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 176 +++++++++---------
 1 file changed, 88 insertions(+), 88 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 419730f06f8f..a3deae077233 100644
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
+	fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc_5v0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	hdmi0-con {
@@ -68,12 +65,14 @@ led-1 {
 		};
 	};
 
-	fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
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
@@ -88,6 +87,50 @@ vcc3v3_pcie2x1l2: regulator-3v3-0 {
 		vin-supply = <&vcc_sysin>;
 	};
 
+	vcc_3v3_pmu: regulator-3v3-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_pmu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc_3v3_s0: regulator-3v3-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vdd_3v3: regulator-3v3-3 {
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
 	vcc5v0_usb_host: regulator-5v0-0 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -112,36 +155,6 @@ vcc5v0_usb_otg0: regulator-5v0-1 {
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
-	vcc_3v3_pmu: regulator-3v3-1 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_pmu";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
-	vcc_3v3_s0: regulator-3v3-2 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc_5v0: regulator-5v0-2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -163,28 +176,15 @@ vcc_sysin: regulator-5v0-3 {
 		regulator-max-microvolt = <5000000>;
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
-	vdd_3v3: regulator-3v3-3 {
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
 
@@ -399,6 +399,12 @@ &pcie2x1l2 {
 };
 
 &pinctrl {
+	ethernet-phy {
+		gmac1_rstn: ethernet-phy-0 {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led_0: led-0 {
 			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -409,12 +415,6 @@ led_1: led-1 {
 		};
 	};
 
-	ethernet-phy {
-		gmac1_rstn: ethernet-phy-0 {
-			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie {
 		pcie20x1_2_perstn_m0: pcie-0 {
 			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -425,7 +425,17 @@ pow_en: regulator-3v3-0 {
 		};
 	};
 
+	regulators {
+		vcc_5v0_pwren_h: regulator-5v0-2 {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
+		usb_wifi_pwr: regulator-3v3-3 {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		usb_host_pwren_h: regulator-5v0-0 {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -433,16 +443,6 @@ usb_host_pwren_h: regulator-5v0-0 {
 		usb_otg_pwren_h: regulator-5v0-1 {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-
-		usb_wifi_pwr: regulator-3v3-3 {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	regulators {
-		vcc_5v0_pwren_h: regulator-5v0-2 {
-			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
 	};
 };
 
@@ -854,10 +854,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	status = "okay";
-};
-
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -879,7 +875,7 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
-&vop_mmu {
+&usbdp_phy0 {
 	status = "okay";
 };
 
@@ -887,6 +883,10 @@ &vop {
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


