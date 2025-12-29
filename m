Return-Path: <devicetree+bounces-250077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 71610CE628F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 08:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5C263004BA5
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6412652A4;
	Mon, 29 Dec 2025 07:39:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE351B142D
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766993994; cv=none; b=BQLtxg11uR5Z93hn8G7LviKuoW25phtuCj069/1E1lyOt5D399o6ILw6FKmVDuK2A3/niKuQwsmlgdFqAaj7ejRlwvi7Po1HRdmTPAv7dn+9Fb76dp1Tr5sfJ3w6ydO0rxxuKtS4MoVlfrIJZ4VWAKmmox9BzuUigcHctINnPeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766993994; c=relaxed/simple;
	bh=azJlmEWpCC+fmRvrCSJ+m6fpBRgoLAE2tlrc3lw5/7I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IBmQBTWpdgGSmfcEnZNxHwSTFzFUcEQ6hY2dNTIchBf1WdA3YHEq4vcAtjPyuyu1SGyj+SqH6na90Tcwu7EzIV3mR5Z31cT/AlwVNfiFzdMowdeu3rAgBuauBWrTPC3Tqx/KJB2kY6OkBGB70bw7G3YrCXdODWK5rNi2ZvU4quk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT7cluS012783;
	Mon, 29 Dec 2025 16:38:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
        jonas@kwiboo.se, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
        alchark@gmail.com, pbrobinson@gmail.com, ziyao@disroot.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC PATCH 3/3] arm64: dts: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Mon, 29 Dec 2025 07:38:40 +0000
Message-ID: <20251229073840.25516-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251229073840.25516-1-naoki@radxa.com>
References: <20251229073840.25516-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Raspberry Pi Compute Module 4 IO Board is an application board for
the Compute Module 4. [1]

This patch adds support for the Radxa CM3J mounted on the RPi CM4 IO
Board.

Specification:
- 12V 5521 DC jack
- 2x full-size HDMI 2.0 connectors (only HDMI0 is supported with CM3J)
- Gigabit Ethernet RJ45 with PoE support
- 2x USB 2.0 connectors, with header for two more connectors
- Micro USB connector
- microSD card socket
- PCIe Gen 2 x1 socket
- 12V 4-pin PWM fan connector
- External power connector (+5V, +12V)
- 2x MIPI DSI connectors
- 2x MIPI CSI-2 connectors
- 40-pin GPIO header
- RTC with battery socket
- Red (power) and green (heartbeat) LEDs

[1] https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3568-radxa-cm3j-rpi-cm4.dts    | 204 ++++++++++++++++++
 2 files changed, 205 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 3fdd1e4832e1..37150e920b01 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -148,6 +148,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-photonicat.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts233.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-cm3j-rpi-cm4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts
new file mode 100644
index 000000000000..b91ac0ca854c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j-rpi-cm4.dts
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568-radxa-cm3j.dtsi"
+
+/ {
+	model = "Radxa CM3J on RPi CM4 IO Board";
+	compatible = "radxa,cm3j-rpi-cm4", "radxa,cm3j", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc1 = &sdmmc0;
+		rtc0 = &pcf85063;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds-1 {
+		compatible = "gpio-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_LOW>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&npwr_led>;
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&pi_nled_activity>;
+		};
+	};
+
+	dc12v: regulator-12v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "dc12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	dc3v3_pcie: regulator-3v3-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "dc3v3_pcie";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc12v>;
+	};
+
+	gpio_vref: regulator-3v3-3 {
+		compatible = "regulator-fixed";
+		regulator-name = "gpio_vref";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc3v3>;
+	};
+
+	dc5v: regulator-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "dc5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc12v>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&combphy2 {
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+};
+
+&gpio0 {
+	nextrst-hog {
+		gpio-hog;
+		/*
+		 * GPIO_ACTIVE_LOW + output-low here means that the pin is set
+		 * to high, because output-low decides the value pre-inversion.
+		 */
+		gpios = <RK_PC0 GPIO_ACTIVE_LOW>;
+		line-name = "nEXTRST";
+		output-low;
+	};
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	emc2301: fan-controller@2f {
+		compatible = "microchip,emc2301", "microchip,emc2305";
+		reg = <0x2f>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#pwm-cells = <3>;
+
+		fan@0 {
+			reg = <0x0>;
+			pwms = <&emc2301 26000 0 1>;
+			#cooling-cells = <2>;
+		};
+	};
+
+	pcf85063: rtc@51 {
+		compatible = "nxp,pcf85063a";
+		reg = <0x51>;
+		wakeup-source;
+	};
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		npwr_led: npwr-led {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pi_nled_activity: pi-nled-activity {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pcie2x1 {
+	vpcie3v3-supply = <&dc3v3_pcie>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	broken-cd;
+	disable-wp;
+	no-mmc;
+	no-sdio;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
+	vmmc-supply = <&dc3v3>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	status = "okay";
+};
-- 
2.43.0


