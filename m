Return-Path: <devicetree+bounces-235030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51257C33FB0
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 06:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8908F189D8EC
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 05:19:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FAB261B9F;
	Wed,  5 Nov 2025 05:18:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A6324888A
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 05:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762319923; cv=none; b=PP5dmUd+D1P3OymnCjbYobvoDiGa9rEBGjQEqIP/59ORASGAAioE8dFmgzdRZh3GRdXG7RtAJAYP0jUmoIXJLxCJgvmoPl3uGcwiGE86qEB1l0sIpVFQFjuqt/BaoDNjAp65jpAJPTHig4S0cTRlS6Pzja1QPJVzui4DBrOGmAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762319923; c=relaxed/simple;
	bh=CihgcZsFOg5g5s7UU983EfN60ijKQ349a2bW3RhDYwY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W0QEQlTf7F3Jx0ipROroOMSvT0TGiNd9HwliYVfLzfecQuupBevRRFo8F2JHn+Kax52qrjTHbpyAHsEup/6sfmHd/e4aBl1ZU7tJTb6khPhpx1PLcrDi6ez9eZNV2l/omStyKDD2kYYmDY0hqi0/EipAcZnfi3BthHZnAPbf5bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A55DfSu031533;
	Wed, 5 Nov 2025 14:13:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
        i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
        dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
Date: Wed,  5 Nov 2025 05:13:35 +0000
Message-ID: <20251105051335.17652-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa CM5 IO Board is an application board for the Radxa CM5.

Specification:
- 1x HDMI TX
- 2x MIPI DSI
- 2x MIPI CSI
- 1x USB 3.0 Type-A port
- 1x USB 3.0 Type-C port (supports DisplayPort Alt mode)
- 2x USB 2.0 Type-A ports
- 1x Gigabit Ethernet (supports PoE with add-on PoE HAT)
- 1x microSD card slot
- 1x Fan header
- 1x M.2 E Key slot
- 1x Headphone jack with microphone input
- 40-pin GPIO header
- RTC and battery holder
- 12V 5525 DC jack

Link: https://dl.radxa.com/cm5/io_board_v2200/radxa_cm5_io_board_v2200_schematic.pdf
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 ++++++++++++++++++
 2 files changed, 504 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4cd8ef607f55c..61790f41c57ba 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -205,6 +205,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-radxa-cm5-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
new file mode 100644
index 0000000000000..12fa8ba83212a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
@@ -0,0 +1,503 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
+ * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
+ */
+
+/*
+ * CM5 IO Board schematic
+ * https://dl.radxa.com/cm5/io_board_v2200/radxa_cm5_io_board_v2200_schematic.pdf
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+#include "rk3588s-radxa-cm5.dtsi"
+
+/ {
+	model = "Radxa CM5 IO Board";
+	compatible = "radxa,cm5-io", "radxa,cm5", "rockchip,rk3588s";
+
+	aliases {
+		mmc1 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	fan: fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm11 0 60000 0>;
+	};
+
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
+	keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-1 {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	vcc12v_dcin: regulator-12v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v3_wf: regulator-3v3 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_pwr_en>;
+		regulator-name = "vcc3v3_wf";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_sysin: regulator-4v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sysin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_sys: vcc5v0_usb: regulator-5v0-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb1: regulator-5v0-1 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwren_h>;
+		regulator-name = "vcc5v0_usb1";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vbus5v0_typec: regulator-5v0-2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_pwren_h>;
+		regulator-name = "vbus5v0_typec";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_wake_bt_h>;
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-wlan {
+		compatible = "rfkill-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h>;
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+		dais = <&i2s0_8ch_p0>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&combphy2_psu {
+	phy-supply = <&vcc5v0_usb1>;
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6m3_xfer>;
+	status = "okay";
+
+	usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC4 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cc_int0_l>;
+		vbus-supply = <&vbus5v0_typec>;
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "dual";
+			label = "USB-C";
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "source";
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_to_usbc0>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_sbu>;
+					};
+				};
+			};
+		};
+	};
+
+	rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "rtc_32k_in";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int_l>;
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c8m2_xfer>;
+	status = "okay";
+
+	audio-codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_8ch_p0_0>;
+			};
+		};
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+
+	i2s0_8ch_p0: port {
+		i2s0_8ch_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
+};
+
+&i2s5_8ch {
+	status = "okay";
+};
+
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
+		};
+
+		map1 {
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
+		};
+	};
+};
+
+&pcie2x1l2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcie {
+		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_pwr_en: wifi-pwr-en {
+			rockchip,pins = <1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	rfkill {
+		bt_reg_on_h: bt-reg-on-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		host_wake_bt_h: host-wake-bt-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	rtc {
+		rtc_int_l: rtc-int-l {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		cc_int0_l: cc-int0-l {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usb_host_pwren_h: usb-host-pwren-h {
+			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usbc_sbu_dc: usbc-sbu-dc {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
+					<3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		typec5v_pwren_h: typec5v-pwren-h {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm11 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm11m3_pins>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-sdio;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb1>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_usb1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb_host0_xhci_to_usbc0: endpoint {
+			remote-endpoint = <&usbc0_hs>;
+		};
+	};
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host2_xhci {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usbc_sbu_dc>;
+	sbu1-dc-gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.43.0


