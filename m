Return-Path: <devicetree+bounces-104859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F5C984503
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 13:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 270171F24C69
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 11:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4CBA1A725D;
	Tue, 24 Sep 2024 11:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="Z6yekC4H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811641A4F2E;
	Tue, 24 Sep 2024 11:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727178063; cv=none; b=KtdNVWKqCobVm6T8jHPzF/9DM1bz88NHFj+3yrhfcXeXHG1eRr9VZwU+WfhZtlPj95AsSxjAu/8SH4Jw/I2IgrHrTFwucCZu6YXTASJMTVJd5Pto/iuS4yNBYgRqt9pE/aS3T84u4VqnrMYRK3cciPBPO9/6fZLDSCUtqj8Cflw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727178063; c=relaxed/simple;
	bh=Z7GXB1hY9yuFlRj//hULDFZ3X0jhxOLu1qz2jpKJkBM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pnKSk5afdBjGzDT0zm30syGlD9VZsiW4Wo5pyzhZLR8n/+TrMVpQZkJYLoA6a5pcO7ztppyv8dLPeGN+vsvk6aQp9qQflireLwWoIicHOH0GvlH39h0eaHz/ZKqJn2bIOgDC5ZgPKXP2M4mWBWxshVgW4re3/KEdWl72U0iC2Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=Z6yekC4H; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 363D21FAA3;
	Tue, 24 Sep 2024 13:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1727178059;
	bh=zQ63Mq2IZ4t8UXdTtqZXmEF+p6OTi0tAeDBrubJaU9M=; h=From:To:Subject;
	b=Z6yekC4HJWhnan1BakOXtRuOxd4velaQwpgd6sIF8W+HleBoVHVo0lLE1+h/Mbzgj
	 h72nhWemp2meHJi3cju7+y9HJ/VZ2Txoq5cS5VdG6rOlQctD0fa9MZMa8Bk9vOkPlg
	 RlbbCEgLx8R7BeypbjW+6NTKqVvrunbmu9vKAV8zn/EXnOl0ejeA3xf2ZApoY/CfvO
	 E+dvLjXX9aMge7eWFFXNVOhostZ5+kNvBLSd+cuxZsy/IOBdKlq3Pu/hq+b9Wn8pDD
	 9tGrs7NL3YmzymW/tpHGCBmi+RNA/9Gr+kvnN79fIdK2vPv+p/t3TG2wNYymx4ebAc
	 32RW46tCbO/Dg==
From: Francesco Dolcini <francesco@dolcini.it>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 3/3] arm64: dts: freescale: imx8mp-verdin: Add Ivy carrier board
Date: Tue, 24 Sep 2024 13:40:53 +0200
Message-Id: <20240924114053.127737-4-francesco@dolcini.it>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20240924114053.127737-1-francesco@dolcini.it>
References: <20240924114053.127737-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Paulo Gonçalves <joao.goncalves@toradex.com>

Add Toradex Verdin Ivy carrier board support. One notable feature of Ivy
is the analog inputs. These inputs are multiplexed, allowing the same
input to measure either voltage or current. For current measurements,
a GPIO switch enables or disables the shunt resistor. This process is
automatically managed by the Linux kernel using the IIO and MUX
subsystems. Voltage measurement is always enabled, but the voltage
measured by the ADC is scaled by a cascade voltage divider. In the
device tree, the equivalent gain of the voltage divider is used, which
can be calculated as follows:

               ------------
               +          |
                         .-.
                  R1=30K | |
                         | |
                         '-'
                          |-------------------
    Analog Input (AIN)    |                  |
                         .-.                .-.
                  R2=10K | |         R3=30K | |
                         | |                | |
                         '-'                '-'
                          |                  |
                          |                  |--------
                          |                 .-.      +
                          |          R4=10K | |
                          |                 | |      ADC Input (Channels 0 and 1)
                          |                 '-'
               -          |                  |       -
               -----------|                  |--------
                         ===                ===
                         GND                GND

Vin  = Analog Input (AIN)
Vout = ADC Input
Rth  = Thevenin Equiv. Resistance
Vth  = Thevenin Equiv. Voltage
RL   = Load Resistor

R1 = 30K, R2 = 10K, R3 = 30K, R4 = 10K
RL = R4 = 10K

Rth  = (R1 // R2) + R3 = 37500 Ohms
Vth  = (Vin * R2) / (R1 + R2) = Vin/4;
Vout = (Vth * RL)/ (Rth + RL) = Vth/4.75 = Vin/19
Gain = Vout/Vin = 1/19

https://www.toradex.com/products/carrier-board/ivy-carrier-board

Signed-off-by: João Paulo Gonçalves <joao.goncalves@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../boot/dts/freescale/imx8mp-verdin-ivy.dtsi | 512 ++++++++++++++++++
 .../freescale/imx8mp-verdin-nonwifi-ivy.dts   |  18 +
 .../dts/freescale/imx8mp-verdin-wifi-ivy.dts  |  18 +
 4 files changed, 550 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-ivy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-ivy.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-ivy.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 9d3df8b218a2..349ff1af0361 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -189,10 +189,12 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw75xx-2x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-ivy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-mallow.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-ivy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-mallow.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-yavia.dtb
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-ivy.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-ivy.dtsi
new file mode 100644
index 000000000000..db1b4ee7728c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-ivy.dtsi
@@ -0,0 +1,512 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2024 Toradex
+ *
+ * Common dtsi for Verdin IMX8MP SoM on Ivy carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx-8m-plus
+ * https://www.toradex.com/products/carrier-board/ivy-carrier-board
+ */
+
+#include <dt-bindings/mux/mux.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
+
+/ {
+	/* AIN1 Voltage w/o AIN1_MODE gpio control */
+	ain1_voltage_unmanaged: voltage-divider-ain1 {
+		compatible = "voltage-divider";
+		#io-channel-cells = <1>;
+		io-channels = <&ivy_adc1 0>;
+		full-ohms = <19>;
+		output-ohms = <1>;
+	};
+
+	/* AIN1 Current w/o AIN1_MODE gpio control */
+	ain1_current_unmanaged: current-sense-shunt-ain1 {
+		compatible = "current-sense-shunt";
+		#io-channel-cells = <0>;
+		io-channels = <&ivy_adc1 1>;
+		shunt-resistor-micro-ohms = <100000000>;
+	};
+
+	/* AIN1_MODE - SODIMM 216 */
+	ain1_mode_mux_ctrl: mux-controller-0 {
+		compatible = "gpio-mux";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio5>;
+		#mux-control-cells = <0>;
+		mux-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+	};
+
+	ain1-voltage {
+		compatible = "io-channel-mux";
+		channels = "ain1_voltage", "";
+		io-channels = <&ain1_voltage_unmanaged 0>;
+		io-channel-names = "parent";
+		mux-controls = <&ain1_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	ain1-current {
+		compatible = "io-channel-mux";
+		channels = "", "ain1_current";
+		io-channels = <&ain1_current_unmanaged>;
+		io-channel-names = "parent";
+		mux-controls = <&ain1_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	/* AIN2 Voltage w/o AIN2_MODE gpio control */
+	ain2_voltage_unmanaged: voltage-divider-ain2 {
+		compatible = "voltage-divider";
+		#io-channel-cells = <1>;
+		io-channels = <&ivy_adc2 0>;
+		full-ohms = <19>;
+		output-ohms = <1>;
+	};
+
+	/* AIN2 Current w/o AIN2_MODE gpio control */
+	ain2_current_unmanaged: current-sense-shunt-ain2 {
+		compatible = "current-sense-shunt";
+		#io-channel-cells = <0>;
+		io-channels = <&ivy_adc2 1>;
+		shunt-resistor-micro-ohms = <100000000>;
+	};
+
+	/* AIN2_MODE - SODIMM 218 */
+	ain2_mode_mux_ctrl: mux-controller-1 {
+		compatible = "gpio-mux";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio6>;
+		#mux-control-cells = <0>;
+		mux-gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+	};
+
+	ain2-voltage {
+		compatible = "io-channel-mux";
+		channels = "ain2_voltage", "";
+		io-channels = <&ain2_voltage_unmanaged 0>;
+		io-channel-names = "parent";
+		mux-controls = <&ain2_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	ain2-current {
+		compatible = "io-channel-mux";
+		channels = "", "ain2_current";
+		io-channels = <&ain2_current_unmanaged>;
+		io-channel-names = "parent";
+		mux-controls = <&ain2_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ivy_leds>;
+
+		/* D7 Blue - SODIMM 30 - LEDs.GPIO1 */
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio3 25 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D7 Green - SODIMM 32 - LEDs.GPIO2 */
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio3 22 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D7 Red - SODIMM 34 - LEDs.GPIO3 */
+		led-2 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Blue - SODIMM 36 - LEDs.GPIO4 */
+		led-3 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio4 2 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Green - SODIMM 54 - LEDs.GPIO5 */
+		led-4 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Red - SODIMM 44 - LEDs.GPIO6 */
+		led-5 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio4 31 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D9 Blue - SODIMM 46 - LEDs.GPIO7 */
+		led-6 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <3>;
+			gpios = <&gpio5 01 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D9 Red - SODIMM 48 - LEDs.GPIO8 */
+		led-7 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <3>;
+			gpios = <&gpio4 30 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	reg_3v2_ain1: regulator-3v2-ain1 {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3200000>;
+		regulator-min-microvolt = <3200000>;
+		regulator-name = "+3V2_AIN1";
+	};
+
+	reg_3v2_ain2: regulator-3v2-ain2 {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3200000>;
+		regulator-min-microvolt = <3200000>;
+		regulator-name = "+3V2_AIN2";
+	};
+
+	/* Ivy Power Supply Input Voltage */
+	ivy-input-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_1 */
+		io-channels = <&verdin_som_adc 7>;
+		full-ohms = <204700>; /* 200k + 4.7k */
+		output-ohms = <4700>;
+	};
+
+	ivy-5v-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_2 */
+		io-channels = <&verdin_som_adc 6>;
+		full-ohms = <39000>; /* 27k + 12k */
+		output-ohms = <12000>;
+	};
+
+	ivy-3v3-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_3 */
+		io-channels = <&verdin_som_adc 5>;
+		full-ohms = <54000>; /* 27k + 27k */
+		output-ohms = <27000>;
+	};
+
+	ivy-1v8-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_4 */
+		io-channels = <&verdin_som_adc 4>;
+		full-ohms = <39000>; /* 12k + 27k */
+		output-ohms = <27000>;
+	};
+};
+
+/* Verdin SPI_1 */
+&ecspi1 {
+	pinctrl-0 = <&pinctrl_ecspi1>,
+		    <&pinctrl_gpio1>,
+		    <&pinctrl_gpio4>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>,
+		   <&gpio1 0 GPIO_ACTIVE_LOW>,
+		   <&gpio1 6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	tpm@1 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <1>;
+		spi-max-frequency = <18500000>;
+	};
+
+	fram@2 {
+		compatible = "fujitsu,mb85rs256", "atmel,at25";
+		reg = <2>;
+		address-width = <16>;
+		size = <32768>;
+		spi-max-frequency = <33000000>;
+		pagesize = <1>;
+	};
+};
+
+/* EEPROM on Ivy */
+&eeprom_carrier_board {
+	status = "okay";
+};
+
+/* Verdin ETH_1 */
+&eqos {
+	status = "okay";
+};
+
+/* Verdin ETH_2 */
+&fec {
+	phy-handle = <&ethphy2>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&verdin_eth2_mdio {
+	ethphy2: ethernet-phy@2 {
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+};
+
+/* Verdin CAN_1 */
+&flexcan1 {
+	status = "okay";
+};
+
+/* Verdin CAN_2 */
+&flexcan2 {
+	status = "okay";
+};
+
+&gpio1 {
+	gpio-line-names =
+		"", /* 0 */
+		"GPIO2", /* Verdin GPIO_2 - SODIMM 208 */
+		"",
+		"",
+		"",
+		"GPIO3", /* Verdin GPIO_3 - SODIMM 210 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"", /* 10 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"", /* 20 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"";
+};
+
+&gpio3 {
+	gpio-line-names =
+		"", /* 0 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"DIG_1", /* SODIMM 56 */
+		"DIG_2", /* SODIMM 58 */
+		"REL1",  /* SODIMM 60 */
+		"REL2",  /* SODIMM 62 */
+		"", /* 10 */
+		"",
+		"",
+		"",
+		"REL4", /* SODIMM 66 */
+		"",
+		"REL3", /* SODIMM 64 */
+		"",
+		"",
+		"",
+		"", /* 20 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"";
+};
+
+/* Temperature sensor on Ivy */
+&hwmon_temp {
+	compatible = "ti,tmp1075";
+	status = "okay";
+};
+
+/* Verdin I2C_4 CSI */
+&i2c3 {
+	status = "okay";
+
+	ivy_adc1: adc@40 {
+		compatible = "ti,ads1119";
+		reg = <0x40>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio7>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		avdd-supply = <&reg_3v2_ain1>;
+		dvdd-supply = <&reg_3v2_ain1>;
+		vref-supply = <&reg_3v2_ain1>;
+		#address-cells = <1>;
+		#io-channel-cells = <1>;
+		#size-cells = <0>;
+
+		/* AIN1 0-33V Voltage Input */
+		channel@0 {
+			reg = <0>;
+			diff-channels = <0 1>;
+		};
+
+		/* AIN1 0-20mA Current Input */
+		channel@1 {
+			reg = <1>;
+			diff-channels = <2 3>;
+		};
+	};
+
+	ivy_adc2: adc@41 {
+		compatible = "ti,ads1119";
+		reg = <0x41>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio8>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+		avdd-supply = <&reg_3v2_ain2>;
+		dvdd-supply = <&reg_3v2_ain2>;
+		vref-supply = <&reg_3v2_ain2>;
+		#address-cells = <1>;
+		#io-channel-cells = <1>;
+		#size-cells = <0>;
+
+		/* AIN2 0-33V Voltage Input */
+		channel@0 {
+			reg = <0>;
+			diff-channels = <0 1>;
+		};
+
+		/* AIN2 0-20mA Current Input */
+		channel@1 {
+			reg = <1>;
+			diff-channels = <2 3>;
+		};
+	};
+};
+
+/* Verdin I2C_1 */
+&i2c4 {
+	status = "okay";
+};
+
+/* Verdin PCIE_1 */
+&pcie {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+/* Verdin UART_1 */
+&uart1 {
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&uart2 {
+	linux,rs485-enabled-at-boot-time;
+	rs485-rx-during-tx;
+	status = "okay";
+};
+
+/* Verdin UART_3 */
+&uart3 {
+	status = "okay";
+};
+
+/* Verdin USB_1 */
+&usb3_0 {
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+/* Verdin USB_2 */
+&usb3_1 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+/* Verdin SD_1 */
+&usdhc2 {
+	status = "okay";
+};
+
+&iomuxc {
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio2>, <&pinctrl_gpio3>,
+		    <&pinctrl_ivy_dig_inputs>, <&pinctrl_ivy_relays>;
+
+	pinctrl_ivy_dig_inputs: ivydiginputsgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_NAND_DATA00__GPIO3_IO06	0x96>, /* SODIMM 56 */
+			<MX8MP_IOMUXC_NAND_DATA01__GPIO3_IO07	0x96>; /* SODIMM 58 */
+	};
+
+	pinctrl_ivy_leds: ivyledsgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_SAI5_MCLK__GPIO3_IO25	0x16>, /* SODIMM 30 */
+			<MX8MP_IOMUXC_SAI5_RXD1__GPIO3_IO22	0x16>, /* SODIMM 32 */
+			<MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19	0x16>, /* SODIMM 34 */
+			<MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02	0x16>, /* SODIMM 36 */
+			<MX8MP_IOMUXC_SAI3_TXFS__GPIO4_IO31	0x16>, /* SODIMM 44 */
+			<MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01	0x16>, /* SODIMM 46 */
+			<MX8MP_IOMUXC_SAI3_RXD__GPIO4_IO30	0x16>, /* SODIMM 48 */
+			<MX8MP_IOMUXC_NAND_CE0_B__GPIO3_IO01	0x16>; /* SODIMM 54 */
+	};
+
+	pinctrl_ivy_relays: ivyrelaysgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_NAND_DATA02__GPIO3_IO08	0x16>, /* SODIMM 60 */
+			<MX8MP_IOMUXC_NAND_DATA03__GPIO3_IO09	0x16>, /* SODIMM 62 */
+			<MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x16>, /* SODIMM 64 */
+			<MX8MP_IOMUXC_NAND_DQS__GPIO3_IO14	0x16>; /* SODIMM 66 */
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-ivy.dts b/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-ivy.dts
new file mode 100644
index 000000000000..cb49690050ff
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-ivy.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2024 Toradex
+ */
+
+/dts-v1/;
+
+#include "imx8mp-verdin.dtsi"
+#include "imx8mp-verdin-nonwifi.dtsi"
+#include "imx8mp-verdin-ivy.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX8M Plus on Ivy";
+	compatible = "toradex,verdin-imx8mp-nonwifi-ivy",
+		     "toradex,verdin-imx8mp-nonwifi",
+		     "toradex,verdin-imx8mp",
+		     "fsl,imx8mp";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-ivy.dts b/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-ivy.dts
new file mode 100644
index 000000000000..22b8fe70b36d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-ivy.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2024 Toradex
+ */
+
+/dts-v1/;
+
+#include "imx8mp-verdin.dtsi"
+#include "imx8mp-verdin-wifi.dtsi"
+#include "imx8mp-verdin-ivy.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX8M Plus WB on Ivy";
+	compatible = "toradex,verdin-imx8mp-wifi-ivy",
+		     "toradex,verdin-imx8mp-wifi",
+		     "toradex,verdin-imx8mp",
+		     "fsl,imx8mp";
+};
-- 
2.39.5


