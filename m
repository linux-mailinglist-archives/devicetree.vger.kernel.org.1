Return-Path: <devicetree+bounces-125640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B319C9DEDDE
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:41:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74809280D0A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 00:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1993B796;
	Sat, 30 Nov 2024 00:41:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED2F28687
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927314; cv=none; b=o6QnpVHXl4zSqm3LP/DENJUiocHYp6jzWLzNfuJpONNmlrcnRJibIw2Q3wTjrsle2iiO0GhdFj9X+SaRXG1AgEvCgkH9MraPumWoDteM0JYWbIJwv+WBgii7rOp3Qrf4uVuFSPro++aoeA7gNhgS2NMJP6d8b7eDr0vB9AivuIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927314; c=relaxed/simple;
	bh=hyiHrZw5pGZXfL3MoADbJml358CFFgd0HEim8RZXxiU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PEDC8KMKVfsWzVt2/qJU3MPG3h76xuje2tyZ10lzr8stgDw5Au55Q5enRR0DOC134yE7ysl53P6ysH1QTbUK1/f7VoqYDMzV+2VVzYjkmU96ixdWjelRRtmd07dEp2NTk63h7hJ3KHcT4MpzR4lG/+n5RQLgPUk+AlhNn7oxQeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BF024368;
	Sat, 30 Nov 2024 09:41:04 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        inindev@gmail.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/6] arm64: dts: rockchip: fix regulators for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:52 +0000
Message-ID: <20241130004057.7432-2-naoki@radxa.com>
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

fix regulator and pin names to match with schematic. regulator for USB
ports are unnamed, so I referred schematic for Radxa ROCK 5B+.

add missing "typec_vin" and "vcc4v0_sys" regulator, and add missing
"phy-supply" for "pcie30phy" and "u2phy1_otg". remove now unused and
non-existent "vcc3v3_pcie2x1l2" regulator.

remove "regulator-always-on" and "regulator-boot-on" from regulators
which is turned on by consumer.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 106 ++++++++++--------
 1 file changed, 57 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b..727a5880d87a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -84,54 +84,59 @@ rfkill-bt {
 		shutdown-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 	};
 
-	vcc3v3_pcie2x1l0: regulator-vcc3v3-pcie2x1l0 {
+	typec_vin: regulator-typec-vin {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pcie2_0_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-name = "typec_vin";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <50000>;
-		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie2x1l2: regulator-vcc3v3-pcie2x1l2 {
+	vcc3v3_wf: regulator-vcc3v3-wf {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_pcie2x1l2";
+		enable-active-high;
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ekey_en>;
+		regulator-name = "vcc3v3_wf";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		startup-delay-us = <5000>;
-		vin-supply = <&vcc_3v3_s3>;
+		startup-delay-us = <50000>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_pcie30: regulator-vcc3v3-pcie30 {
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_05: vcc3v3_pcie30: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie3_vcc3v3_en>;
-		regulator-name = "vcc3v3_pcie30";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pi6c_05";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc5v0_host: regulator-vcc5v0-host {
+	vcc4v0_sys: regulator-vcc4v0-sys {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_host";
-		regulator-boot-on;
+		regulator-name = "vcc4v0_sys";
 		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v_usb: regulator-vcc5v-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v_usb";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
+		pinctrl-0 = <&usb_host_pwren_h>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 
@@ -142,6 +147,7 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
+		vin-supply = <&typec_vin>;
 	};
 
 	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
@@ -151,7 +157,7 @@ vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
 		regulator-boot-on;
 		regulator-min-microvolt = <1100000>;
 		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 	};
 };
 
@@ -239,7 +245,7 @@ vdd_cpu_big0_s0: regulator@42 {
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <1050000>;
 		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -256,7 +262,7 @@ vdd_cpu_big1_s0: regulator@43 {
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <1050000>;
 		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc5v0_sys>;
+		vin-supply = <&vcc4v0_sys>;
 
 		regulator-state-mem {
 			regulator-off-in-suspend;
@@ -350,27 +356,28 @@ map1 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie30x1_0_perstn_m1_l>;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
 	status = "okay";
 };
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_2_rst>;
+	pinctrl-0 = <&pcie_perst_l>;
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
 &pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_05>;
 	status = "okay";
 };
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -396,31 +403,31 @@ hp_detect: hp-detect {
 	};
 
 	pcie2 {
-		pcie2_0_rst: pcie2-0-rst {
+		pcie30x1_0_perstn_m1_l: pcie30x1-0-perstn-m1-l {
 			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
+		ekey_en: ekey-en {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_2_rst: pcie2-2-rst {
+		pcie_perst_l: pcie-perst-l {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	pcie3 {
-		pcie3_rst: pcie3-rst {
+		pcie30x4_perstn_m1_l: pcie30x4-perstn-m1-l {
 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
+		pcie30x4_pwren_h: pcie30x4-pwren-h {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
+		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -474,7 +481,7 @@ &sdio {
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_pcie2x1l0>;
+	vmmc-supply = <&vcc3v3_wf>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdiom0_pins>;
@@ -523,21 +530,21 @@ pmic@0 {
 
 		system-power-controller;
 
-		vcc1-supply = <&vcc5v0_sys>;
-		vcc2-supply = <&vcc5v0_sys>;
-		vcc3-supply = <&vcc5v0_sys>;
-		vcc4-supply = <&vcc5v0_sys>;
-		vcc5-supply = <&vcc5v0_sys>;
-		vcc6-supply = <&vcc5v0_sys>;
-		vcc7-supply = <&vcc5v0_sys>;
-		vcc8-supply = <&vcc5v0_sys>;
-		vcc9-supply = <&vcc5v0_sys>;
-		vcc10-supply = <&vcc5v0_sys>;
+		vcc1-supply = <&vcc4v0_sys>;
+		vcc2-supply = <&vcc4v0_sys>;
+		vcc3-supply = <&vcc4v0_sys>;
+		vcc4-supply = <&vcc4v0_sys>;
+		vcc5-supply = <&vcc4v0_sys>;
+		vcc6-supply = <&vcc4v0_sys>;
+		vcc7-supply = <&vcc4v0_sys>;
+		vcc8-supply = <&vcc4v0_sys>;
+		vcc9-supply = <&vcc4v0_sys>;
+		vcc10-supply = <&vcc4v0_sys>;
 		vcc11-supply = <&vcc_2v0_pldo_s3>;
-		vcc12-supply = <&vcc5v0_sys>;
+		vcc12-supply = <&vcc4v0_sys>;
 		vcc13-supply = <&vcc_1v1_nldo_s3>;
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
-		vcca-supply = <&vcc5v0_sys>;
+		vcca-supply = <&vcc4v0_sys>;
 
 		gpio-controller;
 		#gpio-cells = <2>;
@@ -840,6 +847,7 @@ &u2phy1 {
 };
 
 &u2phy1_otg {
+	phy-supply = <&vcc5v_usb>;
 	status = "okay";
 };
 
@@ -858,7 +866,7 @@ &u2phy3 {
 };
 
 &u2phy3_host {
-	phy-supply = <&vcc5v0_host>;
+	phy-supply = <&vcc5v_usb>;
 	status = "okay";
 };
 
-- 
2.43.0


