Return-Path: <devicetree+bounces-13709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D477E01AB
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 11:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1298B1C21026
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 10:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC53E14A90;
	Fri,  3 Nov 2023 10:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2302125A8
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 10:53:22 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C61B187
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 03:53:19 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qyrnX-0002OX-8c; Fri, 03 Nov 2023 11:53:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qyrnW-006IGz-IT; Fri, 03 Nov 2023 11:53:06 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qyrnW-00AJkq-1d;
	Fri, 03 Nov 2023 11:53:06 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: freescale: Add SKOV IMX8MP CPU revB board
Date: Fri,  3 Nov 2023 11:53:05 +0100
Message-Id: <20231103105305.2459143-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103105305.2459143-1-o.rempel@pengutronix.de>
References: <20231103105305.2459143-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add Skov i.MX8MP based climate controller.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/Makefile        |   3 +
 .../boot/dts/freescale/imx8mp-skov-reva.dtsi  | 713 ++++++++++++++++++
 .../dts/freescale/imx8mp-skov-revb-hdmi.dts   |  20 +
 .../dts/freescale/imx8mp-skov-revb-lt6.dts    | 101 +++
 .../imx8mp-skov-revb-mi1010ait-1cp1.dts       | 100 +++
 5 files changed, 937 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 300049037eb0..45bfaf5a8b66 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -115,6 +115,9 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-hdmi.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-mi1010ait-1cp1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw71xx-2x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw72xx-2x.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
new file mode 100644
index 000000000000..1bfbd4a9bfae
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
@@ -0,0 +1,713 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include "imx8mp.dtsi"
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	aliases {
+		/* some of this aliases like backlight0, ethernetX and switch0
+		 * are needed for the bootloader.
+		 */
+		backlight0 = &backlight;
+		ethernet0 = &eqos;
+		ethernet1 = &lan1;
+		ethernet2 = &lan2;
+		rtc0 = &i2c_rtc;
+		rtc1 = &snvs_rtc;
+		switch0 = &switch;
+	};
+
+	/*
+	 * Backlight is present only on some of boards, so it is disabled by
+	 * default.
+	 */
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-0 = <&pinctrl_backlight>;
+		pwms = <&pwm1 0 20000 0>;
+		power-supply = <&reg_24v>;
+		enable-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <17>;
+		default-brightness-level = <8>;
+		status = "disabled";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		led-0 {
+			label = "D1";
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-1 {
+			label = "D2";
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-2 {
+			label = "D3";
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+
+	reg_1v2: regulator-1v2 {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_5v_p>;
+		regulator-name = "1V2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+	};
+
+	reg_2v5: regulator-2v5 {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_5v_s>;
+		regulator-name = "2V5";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_5v_s>;
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	/*
+	 * This regulator will provide power as long as possible even if
+	 * undervoltage is detected.
+	 */
+	reg_5v_p: regulator-5v-p {
+		compatible = "regulator-fixed";
+		regulator-name = "5V_P";
+		vin-supply = <&reg_24v>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	/*
+	 * This regulator will be automatically shutdown if undervoltage is
+	 * detected.
+	 */
+	reg_5v_s: regulator-5v-s {
+		compatible = "regulator-fixed";
+		regulator-name = "5V_S";
+		vin-supply = <&reg_24v>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_24v: regulator-24v {
+		compatible = "regulator-fixed";
+		regulator-name = "24V";
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+	};
+
+	reg_can2rs: regulator-can2rs {
+		compatible = "regulator-fixed";
+		regulator-name = "CAN2RS";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_can2rs>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 22 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_canrs: regulator-canrs {
+		compatible = "regulator-fixed";
+		regulator-name = "CANRS";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_canrs>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 21 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_tft_vcom: regulator-tft-vcom {
+		compatible = "pwm-regulator";
+		pwms = <&pwm4 0 20000 0>;
+		regulator-name = "VCOM";
+		vin-supply = <&reg_5v_s>;
+		regulator-min-microvolt = <3600000>;
+		regulator-max-microvolt = <3600000>;
+		regulator-always-on;
+		voltage-table = <3600000 26>;
+		status = "disabled";
+	};
+
+	reg_vsd_3v3: regulator-vsd-3v3 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_vsd_3v3>;
+		vin-supply = <&reg_vdd_3v3>;
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_1 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_2 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_3 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	adc: adc@0 {
+		compatible = "microchip,mcp3002";
+		reg = <0>;
+		vref-supply = <&reg_vdd_3v3>;
+		spi-max-frequency = <1000000>;
+		#io-channel-cells = <1>;
+	};
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii";
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_canrs>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	xceiver-supply = <&reg_can2rs>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@25 {
+		compatible = "nxp,pca9450c";
+		reg = <0x25>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupts-extended = <&gpio1 3 IRQ_TYPE_EDGE_RISING>;
+		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			reg_vdd_soc: BUCK1 {
+				regulator-name = "VDD_SOC";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			reg_vdd_arm: BUCK2 {
+				regulator-name = "VDD_ARM";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			reg_vdd_3v3: BUCK4 {
+				regulator-name = "VDD_3V3";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vdd_1v8: BUCK5 {
+				regulator-name = "VDD_1V8";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_nvcc_dram_1v1: BUCK6 {
+				regulator-name = "NVCC_DRAM_1V1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_nvcc_snvs_1v8: LDO1 {
+				regulator-name = "NVCC_SNVS_1V8";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_vdda_1v8: LDO3 {
+				regulator-name = "VDDA_1V8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			reg_nvcc_sd2: LDO5 {
+				regulator-name = "NVCC_SD2";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				vin-supply = <&reg_5v_p>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	i2c_rtc: rtc@51 {
+		compatible = "nxp,pcf85063tp";
+		reg = <0x51>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rtc>;
+		interrupts-extended = <&gpio4 31 IRQ_TYPE_EDGE_FALLING>;
+		quartz-load-femtofarads = <12500>;
+	};
+};
+
+&i2c4 {
+	clock-frequency = <380000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+
+	switch: switch@5f {
+		compatible = "microchip,ksz9893";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_switch>;
+		reset-gpios = <&gpio5 1 GPIO_ACTIVE_LOW>;
+		reg = <0x5f>;
+
+		ethernet-ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			lan1: port@0 {
+				reg = <0>;
+				phy-mode = "internal";
+				label = "lan1";
+			};
+
+			lan2: port@1 {
+				reg = <1>;
+				phy-mode = "internal";
+				label = "lan2";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "cpu";
+				ethernet = <&eqos>;
+				/* 2ns rgmii-rxid is implemented on PCB.
+				 * Switch should add only rgmii-txid.
+				 */
+				phy-mode = "rgmii-txid";
+				tx-internal-delay-ps = <2000>;
+				rx-internal-delay-ps = <0>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	/* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb3_phy0 {
+	vbus-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "host";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+};
+
+/* SD Card */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	vmmc-supply = <&reg_vsd_3v3>;
+	vqmmc-supply = <&reg_nvcc_sd2>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+/* eMMC */
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	vmmc-supply = <&reg_vdd_3v3>;
+	vqmmc-supply = <&reg_vdd_1v8>;
+	bus-width = <8>;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_backlight: backlightgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_TXFS__GPIO4_IO24			0x0100
+		>;
+	};
+
+	pinctrl_can2rs: can2rsgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22			0x154
+		>;
+	};
+
+	pinctrl_canrs: canrsgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_RXFS__GPIO4_IO21			0x154
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI2_SCLK__ECSPI2_SCLK			0x44
+			MX8MP_IOMUXC_ECSPI2_MOSI__ECSPI2_MOSI			0x44
+			MX8MP_IOMUXC_ECSPI2_MISO__ECSPI2_MISO			0x44
+			MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13			0x40
+		>;
+	};
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
+			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x91
+			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x91
+			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x91
+			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
+			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x91
+			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x1f
+			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x1f
+			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x1f
+			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x1f
+			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x1f
+			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_RX__CAN1_RX				0x154
+			MX8MP_IOMUXC_SPDIF_TX__CAN1_TX				0x154
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_MCLK__CAN2_RX				0x154
+			MX8MP_IOMUXC_SAI2_TXD0__CAN2_TX				0x154
+		>;
+	};
+
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05			0x19
+			MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06			0x19
+			MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07			0x19
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL				0x400001c2
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA				0x400001c2
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL				0x400001c2
+			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA				0x400001c2
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL				0x400001c3
+			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA				0x400001c3
+		>;
+	};
+
+	pinctrl_pmic: pmicirqgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03			0x41
+			MX8MP_IOMUXC_GPIO1_IO04__GPIO1_IO04			0x41
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SPDIF_EXT_CLK__PWM1_OUT			0x116
+		>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_MCLK__PWM4_OUT			0x116
+		>;
+	};
+
+	pinctrl_reg_vsd_3v3: regvsd3v3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x40
+		>;
+	};
+
+	pinctrl_rtc: rtcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXFS__GPIO4_IO31			0x41
+		>;
+	};
+
+	pinctrl_switch: switchgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI3_TXC__GPIO5_IO00			0x41
+			MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01			0x41
+		>;
+	};
+
+	pinctrl_touchscreen: touchscreengrp {
+		fsl,pins = <
+			/* external 10 k pull up */
+			/* CTP_INT */
+			MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28			0x41
+			/* CTP_RST */
+			MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29			0x41
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX			0x140
+			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX			0x140
+			MX8MP_IOMUXC_UART3_RXD__UART1_DTE_RTS			0x140
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX			0x14f
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX			0x14f
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK			0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD			0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK			0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD			0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d4
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK			0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD			0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0			0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1			0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2			0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3			0x1d6
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12			0x1c4
+			MX8MP_IOMUXC_SD2_WP__GPIO2_IO20				0x1c4
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK			0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD			0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0			0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1			0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2			0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3			0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4			0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5			0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6			0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7			0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE			0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK			0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD			0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0			0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1			0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2			0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3			0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4			0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5			0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6			0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7			0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE			0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK			0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD			0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0			0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1			0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2			0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3			0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4			0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5			0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6			0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7			0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE			0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B			0xc6
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
new file mode 100644
index 000000000000..c1ca69da3cb8
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "imx8mp-skov-reva.dtsi"
+
+/ {
+	model = "SKOV IMX8MP CPU revB - HDMI";
+	compatible = "skov,imx8mp-skov-revb-hdmi", "fsl,imx8mp";
+};
+
+&iomuxc {
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL		0x1c3
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA		0x1c3
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD			0x19
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
new file mode 100644
index 000000000000..ccbd3abedd69
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
@@ -0,0 +1,101 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "imx8mp-skov-reva.dtsi"
+
+/ {
+	model = "SKOV IMX8MP CPU revB - LT6";
+	compatible = "skov,imx8mp-skov-revb-lt6", "fsl,imx8mp";
+
+	touchscreen {
+		compatible = "resistive-adc-touch";
+		io-channels = <&adc_ts 1>, <&adc_ts 3>, <&adc_ts 4>, <&adc_ts 5>;
+		io-channel-names = "y", "z1", "z2", "x";
+		touchscreen-min-pressure = <65000>;
+		touchscreen-inverted-y;
+		touchscreen-swapped-x-y;
+		touchscreen-x-plate-ohms = <300>;
+	};
+};
+
+&reg_tft_vcom {
+	regulator-min-microvolt = <3600000>;
+	regulator-max-microvolt = <3600000>;
+	voltage-table = <3600000 26>;
+	status = "okay";
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&backlight {
+	status = "okay";
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	adc_ts: adc@0 {
+		compatible = "ti,tsc2046e-adc";
+		reg = <0>;
+		pinctrl-0 = <&pinctrl_touch>;
+		pinctrl-names ="default";
+		spi-max-frequency = <1000000>;
+		interrupts-extended = <&gpio4 25 IRQ_TYPE_LEVEL_LOW>;
+		#io-channel-cells = <1>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		channel@1 {
+			reg = <1>;
+			settling-time-us = <700>;
+			oversampling-ratio = <5>;
+		};
+
+		channel@3 {
+			reg = <3>;
+			settling-time-us = <700>;
+			oversampling-ratio = <5>;
+		};
+
+		channel@4 {
+			reg = <4>;
+			settling-time-us = <700>;
+			oversampling-ratio = <5>;
+		};
+
+		channel@5 {
+			reg = <5>;
+			settling-time-us = <700>;
+			oversampling-ratio = <5>;
+		};
+	};
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK			0x44
+			MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI			0x44
+			MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO			0x44
+			MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09			0x40
+		>;
+	};
+
+	pinctrl_touch: touchgrp {
+		fsl,pins = <
+			/* external pull up */
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25			0x40
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts
new file mode 100644
index 000000000000..3c2efdc59bfa
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "imx8mp-skov-reva.dtsi"
+
+/ {
+	model = "SKOV IMX8MP CPU revB - MI1010AIT-1CP1";
+	compatible = "skov,imx8mp-skov-revb-mi1010ait-1cp1", "fsl,imx8mp";
+
+	panel {
+		compatible = "multi-inno,mi1010ait-1cp";
+		backlight = <&backlight>;
+		power-supply = <&reg_tft_vcom>;
+
+		port {
+			in_lvds0: endpoint {
+				remote-endpoint = <&ldb_lvds_ch0>;
+			};
+		};
+	};
+};
+
+&backlight {
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "edt,edt-ft5406";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupts-extended = <&gpio4 28 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <1280>;
+		touchscreen-size-y = <800>;
+		vcc-supply = <&reg_vdd_3v3>;
+		iovcc-supply = <&reg_vdd_3v3>;
+		wakeup-source;
+	};
+};
+
+&lcdif2 {
+	status = "okay";
+};
+
+&lvds_bridge {
+	/* IMX8MP_CLK_MEDIA_LDB = IMX8MP_CLK_MEDIA_DISP2_PIX * 7 */
+	assigned-clock-rates = <482300000>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			ldb_lvds_ch0: endpoint {
+				remote-endpoint = <&in_lvds0>;
+			};
+		};
+	};
+};
+
+&media_blk_ctrl {
+	/* currently it is not possible to let display clocks confugure
+	 * automatically, so we need to set them manually
+	 */
+	assigned-clock-rates = <500000000>, <200000000>, <0>,
+		/* IMX8MP_CLK_MEDIA_DISP2_PIX = pixelclk of lvds panel */
+		<68900000>,
+		/* IMX8MP_VIDEO_PLL1 = IMX8MP_CLK_MEDIA_LDB * 2 */
+		<964600000>;
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&reg_tft_vcom {
+	regulator-min-microvolt = <3160000>;
+	regulator-max-microvolt = <3160000>;
+	voltage-table = <3160000 73>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL				0x400001c2
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA				0x400001c2
+		>;
+	};
+};
-- 
2.39.2


