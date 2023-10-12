Return-Path: <devicetree+bounces-8003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9020B7C6696
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2AA91C20BD1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C414110785;
	Thu, 12 Oct 2023 07:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Hun9hSWC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D81101C1
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:42:45 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06A06120
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697096562; x=1728632562;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=F/2U5ThofQWNhUL+3iAYutU9FLm5SomsITP5q3JhqYo=;
  b=Hun9hSWCWSGRHZCAfa5kyfDukHEsU4JOddk1rzwqh/RD90KRG2UFldMf
   csSQno0qeBE0HocUyrMlVN9oaiaEV2duGkd5xPPBkt6ki4Xv0nE0nxx3Z
   9I7cCeFMM3vmCHzQXn6lyUT/QuX7ys4uT5pMf7VuDhkCwE1YMKFZRZMEN
   T4h832Lz+QsjdJZNdUWx256S12SXnmSqwUxX5MVhDP65hjXo84JBHHe5f
   9TZddpXsJsfSp+G+/ZHOQfk+b209PeLu6H0VsFwSt0tc61rG8Zw4kqzym
   Nn3UdmShLnAPb/NeSHxX/k+Kh51+/Hx480tFBDcgyhCbd7TYBgesMhAo2
   w==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33421876"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 09:42:37 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E7027280082;
	Thu, 12 Oct 2023 09:42:36 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: freescale: add initial device tree for MBa93xxCA starter kit
Date: Thu, 12 Oct 2023 09:42:36 +0200
Message-Id: <20231012074236.2708881-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
References: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds support for TQMa93xx module and MBa93xxCA starterkit mainboard.
TQMa93xx is a SOM using i.MX93 SOC. The SOM features PMIC, RAM, e-MMC and
some optional peripherals like SPI-NOR, RTC, EEPROM, gyroscope and
secure element.
TQMa93xxLA is a solder on type SOM and can be used on MBa93XXCA using an
adapter. TQMa93xxCA is a feature compatible, socketable type SOM.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx93-tqma9352-mba93xxca.dts    | 709 ++++++++++++++++++
 2 files changed, 710 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 300049037eb0b..a3c5fc814adbf 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -164,6 +164,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-iris-v2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxca.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
 
 imx8mm-venice-gw72xx-0x-imx219-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-imx219.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
new file mode 100644
index 0000000000000..af795ecf678b7
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxca.dts
@@ -0,0 +1,709 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (c) 2022-2023 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Markus Niebel
+ * Author: Alexander Stein
+ */
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include <dt-bindings/pwm/pwm.h>
+
+#include "imx93-tqma9352.dtsi"
+
+/{
+	model = "TQ-Systems i.MX93 TQMa93xxLA/TQMa93xxCA on MBa93xxCA starter kit";
+	compatible = "tq,imx93-tqma9352-mba93xxca",
+		     "tq,imx93-tqma9352", "fsl,imx93";
+	chassis-type = "embedded";
+
+	chosen {
+		stdout-path = &lpuart1;
+	};
+
+	aliases {
+		eeprom0 = &eeprom0;
+		rtc0 = &pcf85063;
+		rtc1 = &bbnsm_rtc;
+	};
+
+	backlight_lvds: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&tpm5 0 5000000 0>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_12v0>;
+		enable-gpios = <&expander2 2 GPIO_ACTIVE_HIGH>;
+		status = "disabled";
+	};
+
+	fan0: pwm-fan {
+		compatible = "pwm-fan";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pwmfan>;
+		fan-supply = <&reg_pwm_fan>;
+		#cooling-cells = <2>;
+		/* typical 25 kHz -> 40.000 nsec */
+		pwms = <&tpm6 0 40000 PWM_POLARITY_INVERTED>;
+		cooling-levels = <0 32 64 128 196 240>;
+		pulses-per-revolution = <2>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		status = "disabled";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		switch-a {
+			label = "switcha";
+			linux,code = <BTN_0>;
+			gpios = <&expander0 6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		switch-b {
+			label = "switchb";
+			linux,code = <BTN_1>;
+			gpios = <&expander0 7 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&expander2 6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&expander2 7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc1 0>, <&adc1 1>, <&adc1 2>, <&adc1 3>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_3V3_MB";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_5v0: regulator-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_5V0_MB";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_12v0: regulator-12v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&expander1 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_mpcie_1v5: regulator-mpcie-1v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_1V5_MPCIE";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		gpio = <&expander0 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_mpcie_3v3: regulator-mpcie-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_3V3_MPCIE";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&expander0 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_pwm_fan: regulator-pwm-fan {
+		compatible = "regulator-fixed";
+		regulator-name = "FAN_PWR";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&expander0 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_12v0>;
+	};
+
+	thermal-zones {
+		cpu-thermal {
+			trips {
+				cpu_active0: trip-active0 {
+					temperature = <40000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				cpu_active1: trip-active1 {
+					temperature = <48000>;
+					hysteresis = <3000>;
+					type = "active";
+				};
+
+				cpu_active2: trip-active2 {
+					temperature = <60000>;
+					hysteresis = <10000>;
+					type = "active";
+				};
+			};
+
+			cooling-maps {
+				map1 {
+					trip = <&cpu_active0>;
+					cooling-device = <&fan0 1 1>;
+				};
+
+				map2 {
+					trip = <&cpu_active1>;
+					cooling-device = <&fan0 2 2>;
+				};
+
+				map3 {
+					trip = <&cpu_active2>;
+					cooling-device = <&fan0 3 3>;
+				};
+			};
+		};
+	};
+};
+
+&adc1 {
+	status = "okay";
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy_eqos>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy_eqos: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_eqos_phy>;
+			reset-gpios = <&expander1 0 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+			enet-phy-lane-no-swap;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy_fec>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clock-frequency = <5000000>;
+
+		ethphy_fec: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fec_phy>;
+			reset-gpios = <&expander1 1 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <500000>;
+			reset-deassert-us = <50000>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+			enet-phy-lane-no-swap;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,dp83867-rxctrl-strap-quirk;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+		};
+	};
+};
+
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	xceiver-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&gpio1 {
+	expander-irq-hog {
+		gpio-hog;
+		gpios = <12 GPIO_ACTIVE_LOW>;
+		input;
+		line-name = "PEX_INT#";
+	};
+
+	tcpc-irq-hog {
+		gpio-hog;
+		gpios = <2 GPIO_ACTIVE_LOW>;
+		input;
+		line-name = "USB_C_ALERT#";
+	};
+};
+
+&lpi2c3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpi2c3>;
+	pinctrl-1 = <&pinctrl_lpi2c3>;
+	status = "okay";
+
+	temperature-sensor@1c {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
+		reg = <0x1c>;
+	};
+
+	eeprom2: eeprom@54 {
+		compatible = "nxp,se97b", "atmel,24c02";
+		reg = <0x54>;
+		pagesize = <16>;
+		vcc-supply = <&reg_3v3>;
+	};
+
+	expander0: gpio@70 {
+		compatible = "nxp,pca9538";
+		reg = <0x70>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pexp_irq>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&reg_3v3>;
+		gpio-line-names = "FAN_PWR_EN", "MPCIE_WAKE#",
+				  "MPCIE_1V5_EN", "MPCIE_3V3_EN",
+				  "MPCIE_PERST#", "MPCIE_WDISABLE#",
+				  "BUTTON_A#", "BUTTON_B#";
+
+		mpcie-wake-hog {
+			gpio-hog;
+			gpios = <1 GPIO_ACTIVE_LOW>;
+			input;
+			line-name = "MPCIE_WAKE#";
+		};
+
+		/*
+		 * Controls the mPCIE slot reset which is low active as
+		 * reset signal. The output-low states, the signal is
+		 * inactive, e.g. not in reset
+		 */
+		mpcie_rst_hog: mpcie-rst-hog {
+			gpio-hog;
+			gpios = <4 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "MPCIE_PERST#";
+		};
+
+		/*
+		 * Controls the mPCIE slot WDISABLE pin which is low active
+		 * as disable signal. The output-low states, the signal is
+		 * inactive, e.g. not disabled
+		 */
+		mpcie_wdisable_hog: mpcie-wdisable-hog {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "MPCIE_WDISABLE#";
+		};
+	};
+
+	expander1: gpio@71 {
+		compatible = "nxp,pca9538";
+		reg = <0x71>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		vcc-supply = <&reg_3v3>;
+		gpio-line-names = "ENET1_RESET#", "ENET2_RESET#",
+				  "USB_RESET#", "",
+				  "WLAN_PD#", "WLAN_W_DISABLE#",
+				  "WLAN_PERST#", "12V_EN";
+
+		/*
+		 * Controls the on board USB Hub reset which is low
+		 * active as reset signal. The output-low states, the
+		 * signal is inactive, e.g. no reset
+		 */
+		usb-reset-hog {
+			gpio-hog;
+			gpios = <2 GPIO_ACTIVE_LOW>;
+			output-low;
+			line-name = "USB_RESET#";
+		};
+
+		/*
+		 * Controls the WiFi card PD pin which is low active
+		 * as power down signal. The output-high states, the signal
+		 * is active, e.g. card is powered down
+		 */
+		wlan-pd-hog {
+			gpio-hog;
+			gpios = <4 GPIO_ACTIVE_LOW>;
+			output-high;
+			line-name = "WLAN_PD#";
+		};
+
+		/*
+		 * Controls the WiFi card disable pin which is low active
+		 * as disable signal. The output-high states, the signal
+		 * is active, e.g. card is disabled
+		 */
+		wlan-wdisable-hog {
+			gpio-hog;
+			gpios = <5 GPIO_ACTIVE_LOW>;
+			output-high;
+			line-name = "WLAN_W_DISABLE#";
+		};
+
+		/*
+		 * Controls the WiFi card reset pin which is low active
+		 * as reset signal. The output-high states, the signal
+		 * is active, e.g. card in reset
+		 */
+		wlan-perst-hog {
+			gpio-hog;
+			gpios = <6 GPIO_ACTIVE_LOW>;
+			output-high;
+			line-name = "WLAN_PERST#";
+		};
+	};
+
+	expander2: gpio@72 {
+		compatible = "nxp,pca9538";
+		reg = <0x72>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		vcc-supply = <&reg_3v3>;
+		gpio-line-names = "LCD_RESET#", "LCD_PWR_EN",
+				  "LCD_BLT_EN", "DP_EN",
+				  "MIPI_CSI_EN", "MIPI_CSI_RST#",
+				  "USER_LED1", "USER_LED2";
+	};
+};
+
+&lpi2c5 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <400000>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpi2c5>;
+	pinctrl-1 = <&pinctrl_lpi2c5>;
+	status = "okay";
+};
+
+&lpspi6 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpspi6>;
+	pinctrl-1 = <&pinctrl_lpspi6>;
+	status = "okay";
+};
+
+&lpuart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&lpuart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	linux,rs485-enabled-at-boot-time;
+	status = "okay";
+};
+
+/* disabled per default, console for M33 */
+&lpuart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "disabled";
+};
+
+&lpuart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	status = "okay";
+};
+
+&lpuart8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart8>;
+	status = "okay";
+};
+
+&tpm5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_tpm5>;
+};
+
+&tpm6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_tpm6>;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2_hs>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_uhs>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_uhs>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	no-sdio;
+	no-mmc;
+	disable-wp;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			/* PD | FSEL_2 | DSE X4 */
+			MX93_PAD_ENET1_MDC__ENET_QOS_MDC		0x51e
+			MX93_PAD_ENET1_MDIO__ENET_QOS_MDIO		0x4000051e
+			/* PD | FSEL_2 | DSE X6 */
+			MX93_PAD_ENET1_RD0__ENET_QOS_RGMII_RD0		0x57e
+			MX93_PAD_ENET1_RD1__ENET_QOS_RGMII_RD1		0x57e
+			MX93_PAD_ENET1_RD2__ENET_QOS_RGMII_RD2		0x57e
+			MX93_PAD_ENET1_RD3__ENET_QOS_RGMII_RD3		0x57e
+			/* PD | FSEL_3 | DSE X6 */
+			MX93_PAD_ENET1_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x5fe
+			MX93_PAD_ENET1_RX_CTL__ENET_QOS_RGMII_RX_CTL	0x57e
+			/* PD | FSEL_2 | DSE X4 */
+			MX93_PAD_ENET1_TD0__ENET_QOS_RGMII_TD0		0x51e
+			MX93_PAD_ENET1_TD1__ENET_QOS_RGMII_TD1		0x51e
+			MX93_PAD_ENET1_TD2__ENET_QOS_RGMII_TD2		0x51e
+			MX93_PAD_ENET1_TD3__ENET_QOS_RGMII_TD3		0x51e
+			MX93_PAD_ENET1_TX_CTL__ENET_QOS_RGMII_TX_CTL	0x51e
+			/* PD | FSEL_3 | DSE X3 */
+			MX93_PAD_ENET1_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x58e
+		>;
+	};
+
+	pinctrl_eqos_phy: eqosphygrp {
+		fsl,pins = <
+			MX93_PAD_CCM_CLKO1__GPIO3_IO26		0x1306
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			/* PD | FSEL_2 | DSE X4 */
+			MX93_PAD_ENET2_MDC__ENET1_MDC			0x51e
+			MX93_PAD_ENET2_MDIO__ENET1_MDIO			0x4000051e
+			/* PD | FSEL_2 | DSE X6 */
+			MX93_PAD_ENET2_RD0__ENET1_RGMII_RD0		0x57e
+			MX93_PAD_ENET2_RD1__ENET1_RGMII_RD1		0x57e
+			MX93_PAD_ENET2_RD2__ENET1_RGMII_RD2		0x57e
+			MX93_PAD_ENET2_RD3__ENET1_RGMII_RD3		0x57e
+			/* PD | FSEL_3 | DSE X6 */
+			MX93_PAD_ENET2_RXC__ENET1_RGMII_RXC		0x5fe
+			MX93_PAD_ENET2_RX_CTL__ENET1_RGMII_RX_CTL	0x57e
+			/* PD | FSEL_2 | DSE X4 */
+			MX93_PAD_ENET2_TD0__ENET1_RGMII_TD0		0x51e
+			MX93_PAD_ENET2_TD1__ENET1_RGMII_TD1		0x51e
+			MX93_PAD_ENET2_TD2__ENET1_RGMII_TD2		0x51e
+			MX93_PAD_ENET2_TD3__ENET1_RGMII_TD3		0x51e
+			MX93_PAD_ENET2_TX_CTL__ENET1_RGMII_TX_CTL	0x51e
+			/* PD | FSEL_3 | DSE X3 */
+			MX93_PAD_ENET2_TXC__ENET1_RGMII_TXC		0x58e
+		>;
+	};
+
+	pinctrl_fec_phy: fecphygrp {
+		fsl,pins = <
+			MX93_PAD_CCM_CLKO2__GPIO3_IO27		0x1306
+		>;
+	};
+
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <
+			MX93_PAD_PDM_BIT_STREAM0__CAN1_RX	0x139e
+			MX93_PAD_PDM_CLK__CAN1_TX		0x139e
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO25__CAN2_TX		0x139e
+			MX93_PAD_GPIO_IO27__CAN2_RX		0x139e
+		>;
+	};
+
+	pinctrl_lpi2c3: lpi2c3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO28__LPI2C3_SDA		0x40000b9e
+			MX93_PAD_GPIO_IO29__LPI2C3_SCL		0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c5: lpi2c5grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO22__LPI2C5_SDA		0x40000b9e
+			MX93_PAD_GPIO_IO23__LPI2C5_SCL		0x40000b9e
+		>;
+	};
+
+	pinctrl_lpspi6: lpspi6grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO00__LPSPI6_PCS0		0x3fe
+			MX93_PAD_GPIO_IO01__LPSPI6_SIN		0x3fe
+			MX93_PAD_GPIO_IO02__LPSPI6_SOUT		0x3fe
+			MX93_PAD_GPIO_IO03__LPSPI6_SCK		0x3fe
+		>;
+	};
+
+	pinctrl_pexp_irq: pexpirqgrp {
+		fsl,pins = <
+			MX93_PAD_SAI1_TXC__GPIO1_IO12		0x1306
+		>;
+	};
+
+	pinctrl_pwmfan: pwmfangrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO09__GPIO2_IO09		0x1306
+		>;
+	};
+
+	pinctrl_tpm5: tpm5grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO06__TPM5_CH0		0x57e
+		>;
+	};
+
+	pinctrl_tpm6: tpm6grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO08__TPM6_CH0		0x57e
+		>;
+	};
+
+	pinctrl_typec: typecgrp {
+		fsl,pins = <
+			MX93_PAD_I2C2_SCL__GPIO1_IO02		0x1306
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX93_PAD_UART1_RXD__LPUART1_RX		0x31e
+			MX93_PAD_UART1_TXD__LPUART1_TX		0x31e
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX93_PAD_UART2_TXD__LPUART2_TX		0x31e
+			MX93_PAD_UART2_RXD__LPUART2_RX		0x31e
+			MX93_PAD_SAI1_TXD0__LPUART2_RTS_B   0x51e
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO14__LPUART3_TX		0x31e
+			MX93_PAD_GPIO_IO15__LPUART3_RX		0x31e
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO04__LPUART6_TX		0x31e
+			MX93_PAD_GPIO_IO05__LPUART6_RX		0x31e
+		>;
+	};
+
+	pinctrl_uart8: uart8grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO12__LPUART8_TX		0x31e
+			MX93_PAD_GPIO_IO13__LPUART8_RX		0x31e
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX93_PAD_SD2_CD_B__GPIO3_IO00		0x31e
+		>;
+	};
+
+	pinctrl_usdhc2_hs: usdhc2hsgrp {
+		fsl,pins = <
+			/* HYS | PD | PU | FSEL_3 | DSE X5 */
+			MX93_PAD_SD2_CLK__USDHC2_CLK		0x17be
+			/* HYS | PD | PU | FSEL_3 | DSE X4 */
+			MX93_PAD_SD2_CMD__USDHC2_CMD		0x139e
+			/* HYS | PD | PU | FSEL_3 | DSE X3 */
+			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x138e
+			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x138e
+			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x138e
+			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x138e
+			/* PD | PU | FSEL_2 | DSE X3 */
+			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x50e
+		>;
+	};
+
+	pinctrl_usdhc2_uhs: usdhc2uhsgrp {
+		fsl,pins = <
+			/* HYS | PD | PU | FSEL_3 | DSE X6 */
+			MX93_PAD_SD2_CLK__USDHC2_CLK		0x17fe
+			/* HYS | PD | PU | FSEL_3 | DSE X4 */
+			MX93_PAD_SD2_CMD__USDHC2_CMD		0x139e
+			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x139e
+			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x139e
+			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x139e
+			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x139e
+			/* PD | PU | FSEL_2 | DSE X3 */
+			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x50e
+		>;
+	};
+};
-- 
2.34.1


