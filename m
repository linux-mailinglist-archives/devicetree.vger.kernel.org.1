Return-Path: <devicetree+bounces-133143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA8D9F961B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D6A016541A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 995B4219A9B;
	Fri, 20 Dec 2024 16:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob0iH/5c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBF522301;
	Fri, 20 Dec 2024 16:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711168; cv=none; b=ecTer71+tJQMfB7pfK4viHm+dKthrXjxEBT/vJGYkbERTFU7ObRa13FlxESXgETPfFZyisluVEIzBoV30E0a9WPGnG+ci11Hq6pNWc2WARCE1VJJUqQtMDt4RMizt0MzpIxxG/h5ZpdxWolPEsD7V5jnAcM9gx23yu7c4IqIsZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711168; c=relaxed/simple;
	bh=lT+NvKXEt+wDw547wMVflj0Ny9W3OCFAz0S4kRCQXyc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IRgiNxPi4ZZWcPeNRUgejUTgZWh9fqCGTPmxKxNeAlxViBOZSYnNrPxQ7WkbXKwQwTtrBykt5+9Echd8/WG16KSoa9hpsZ7bBqrBbSjEpdnsU3OWWU5QV7daEPVQ9axEo65xHX/gCcjnkRsN9rXdKXUUaDXhAkOcCNOyt52ojbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob0iH/5c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D146FC4CECD;
	Fri, 20 Dec 2024 16:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734711168;
	bh=lT+NvKXEt+wDw547wMVflj0Ny9W3OCFAz0S4kRCQXyc=;
	h=From:To:Cc:Subject:Date:From;
	b=Ob0iH/5cVvLnjtYxJS4SzD2U2vUzqvczNK6PKb13onAJa1JdH2JcBa/LUx469WpFV
	 51MkXpZbQLTKD2tXqJUL6GpN9flX2/kHmqo84lzpxZ1HR3rTAvWCy9jLDfSlg0F1CC
	 F+m1C+/9J6W5eoqZ/ILzoUxCsXolwifQfCcRcG/WJFyxQzBE4a/R/imyrQb6TSOIby
	 mLerfWhHLLnG9lL5nd9G884coJy3ORjfeVZYgjR2mEb91uFjTXZDoasXy/B9vCsZEb
	 vxVdLGM3UTr08eUKoNW7QrXuIwg/Ib/i563jV3g2G10T9QTm7I60ihfU7zHumgN6z4
	 Ds0nAp7zXUkjA==
Received: by wens.tw (Postfix, from userid 1000)
	id DBAD15FB8F; Sat, 21 Dec 2024 00:12:44 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
Subject: [PATCH v2] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0 ports
Date: Sat, 21 Dec 2024 00:12:40 +0800
Message-Id: <20241220161240.109253-1-wens@kernel.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen-Yu Tsai <wens@csie.org>

The Orange Pi 5 Plus has its first USB 3.0 interface on the SoC wired
directly to the USB type C port next to the MASKROM button, and the
second interface wired to a USB 3.0 hub which in turn is connected to
the USB 3.0 host ports on the board, as well as the USB 2.0 connection
on the M.2 E-key slot.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>

---
Changes since v1:
- Dropped source current to 1.4A
- Dropped sink current to 10mA, since it doesn't actually sink current
- Added try-power-role
- Added newline before endpoint device nodes in USB connector node
---
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 9f5a38b290bf..000d353645a9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -218,6 +218,18 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 		regulator-max-microvolt = <5000000>;
 	};
 
+	vbus5v0_typec: vbus-typec-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_pwren>;
+		regulator-name = "vbus5v0_typec";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc5v0_usb20: regulator-vcc5v0-usb20 {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -344,6 +356,57 @@ &i2c6 {
 	clock-frequency = <400000>;
 	status = "okay";
 
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus5v0_typec>;
+		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "dual";
+			source-pdos = <PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
+			op-sink-microwatt = <10>;
+			try-power-role = "source";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_drd_sw>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_typec_sbu>;
+					};
+				};
+			};
+		};
+	};
+
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -485,6 +548,16 @@ vcc5v0_usb20_en: vcc5v0-usb20-en {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb-typec {
+		usbc0_int: usbc0-int {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		typec5v_pwren: typec5v-pwren {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm2 {
@@ -876,6 +949,23 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -904,6 +994,33 @@ &uart9 {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -912,6 +1029,17 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb_host0_xhci_drd_sw: endpoint {
+			remote-endpoint = <&usbc0_hs>;
+		};
+	};
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -920,6 +1048,11 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &vop_mmu {
 	status = "okay";
 };
-- 
2.39.5


