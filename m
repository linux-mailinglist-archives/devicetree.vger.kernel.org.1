Return-Path: <devicetree+bounces-117595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8589B707C
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 00:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D94C1C20FD1
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 23:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1020C217902;
	Wed, 30 Oct 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="N2fZV3Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E031E411C;
	Wed, 30 Oct 2024 23:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730330902; cv=none; b=VocclchQi8F1NSYiydeT2E/lRTgB5x4OAGA74NPDhb/Xl4HyZNR/RzX/2eLnlDE0HPtRSdOWo8Cu2hSkY1A/CV9lYycwuek4AHJ23WRcg6tT2M0gx5OPhGjubbF9nQdK3sOhfbiXBsFSm4cFjT3sithnmPgVjZJ2Nm6FXkZ705Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730330902; c=relaxed/simple;
	bh=1EFPN0h0RYWagxWmIAMurwmO0d3DAI4C5nIx85EP/18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WZhfuuwszW9ha8lrRoT2G7qt+LgnV017FKj9Aza6C+pr3uvHhXoLrkQZ9tVqHDpcl/0NqixqoqvmcvcYpK0XZ2NOkEuL+bdKqSI7SPXZszpvDVsclkzRVrRfEIv/xg2M0+IE+JOSMCEtKgqzvMK9AMBOAvBE7XRPgIgiy1nAFu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=N2fZV3Jt; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=SQoy8Fllcs7SdUYNd0Zvdn0Epo+q7ZejwtPQm9QAd8o=; b=N2fZV3JtBc2KT+pblFYcyLJc9v
	MnRNYDb0tH9I8PdO0TAodYUkqUfA2uGJs/p+5Hznrmrmhf/WdQra4qyE2v1Q+Oa2YkFw1yqICpYBo
	gOZtQeDX3xwuON06/byMJjPNu7kjkU7DZT8KUGmMYlPq3JZx3HLdtMVw2droe5kQwa4tM+0F67FrN
	2s7e4Sek3rMLMFUWZDG9hfrB2kds1TRhKeApAcmqZ6R4qChJzI7lT4Hu0hyq+IwZuFeG/HW7kSvVS
	80Gqj6R0/ZtnGVl+olJiinTkYhmjYOq57KU5sFF7KDX6+eNdYuX2ddwr8ZeNkC2xrIp/Ceqreh6EZ
	f7dS0G5g==;
From: Andreas Kemnade <andreas@kemnade.info>
To: Conor Dooley <conor+dt@kernel.org>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH v3 2/3] ARM: dts: imx: Add devicetree for Kobo Clara 2E
Date: Thu, 31 Oct 2024 00:27:45 +0100
Message-Id: <20241030232746.2644502-3-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241030232746.2644502-1-andreas@kemnade.info>
References: <20241030232746.2644502-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds a devicetree for the Kobo Clara 2E Ebook reader. It is based
on boards marked with "37NB-E60K2M+4A2" or "37NB-E60K2M+4B0". It is
equipped with an i.MX6SLL SoC.

Expected to work:
  - Buttons
  - Wifi
  - Bluetooth
    (if Wifi is initialized first, driver does not handle regulators
     yet)
  - LED
  - uSD
  - USB
  - RTC
  - Touchscreen

Add human-readable comments for devices without mainlined driver and
binding. Such comments can e.g. be help to find testers if someone
starts to work on the missing drivers.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/nxp/imx/Makefile            |   2 +
 .../dts/nxp/imx/imx6sll-kobo-clara2e-a.dts    |  23 +
 .../dts/nxp/imx/imx6sll-kobo-clara2e-b.dts    |  23 +
 .../nxp/imx/imx6sll-kobo-clara2e-common.dtsi  | 514 ++++++++++++++++++
 4 files changed, 562 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-a.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-common.dtsi

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index 92e291603ea13..58db45352b666 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -290,6 +290,8 @@ dtb-$(CONFIG_SOC_IMX6SL) += \
 dtb-$(CONFIG_SOC_IMX6SLL) += \
 	imx6sll-evk.dtb \
 	imx6sll-kobo-clarahd.dtb \
+	imx6sll-kobo-clara2e-a.dtb \
+	imx6sll-kobo-clara2e-b.dtb \
 	imx6sll-kobo-librah2o.dtb
 dtb-$(CONFIG_SOC_IMX6SX) += \
 	imx6sx-nitrogen6sx.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-a.dts b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-a.dts
new file mode 100644
index 0000000000000..33756d6de7aa0
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-a.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * Device tree for the Kobo Clara 2E rev A ebook reader
+ *
+ * Name on mainboard is: 37NB-E60K2M+4A2
+ * Serials start with: E60K2M (a number also seen in
+ * vendor kernel sources)
+ *
+ * Copyright 2024 Andreas Kemnade
+ */
+
+/dts-v1/;
+
+#include "imx6sll-kobo-clara2e-common.dtsi"
+
+/ {
+	model = "Kobo Clara 2E";
+	compatible = "kobo,clara2e-b", "kobo,clara2e", "fsl,imx6sll";
+};
+
+&i2c2 {
+	/* EPD PMIC SY7636 at 0x62 */
+};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
new file mode 100644
index 0000000000000..f81aeacf51420
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * Device tree for the Kobo Clara 2E rev B ebook reader
+ *
+ * Name on mainboard is: 37NB-E60K2M+4B0
+ * Serials start with: E60K2M (a number also seen in
+ * vendor kernel sources)
+ *
+ * Copyright 2024 Andreas Kemnade
+ */
+
+/dts-v1/;
+
+#include "imx6sll-kobo-clara2e-common.dtsi"
+
+/ {
+	model = "Kobo Clara 2E";
+	compatible = "kobo,clara2e-b", "kobo,clara2e", "fsl,imx6sll";
+};
+
+&i2c2 {
+	/* EPD PMIC JD9930 at 0x18 */
+};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-common.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-common.dtsi
new file mode 100644
index 0000000000000..c344cd8c2b839
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll-kobo-clara2e-common.dtsi
@@ -0,0 +1,514 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * Common part for Kobo Clara 2e device tree
+ * Copyright 2024 Andreas Kemnade
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "imx6sll.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &usdhc2;
+		mmc1 = &usdhc3;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		key-cover {
+			label = "Cover";
+			gpios = <&gpio4 23 GPIO_ACTIVE_LOW>;
+			linux,code = <SW_LID>;
+			linux,input-type = <EV_SW>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led>;
+
+		led {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&gpio4 17 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;
+	};
+
+	reg_wifi: regulator-wifi {
+		compatible = "regulator-fixed";
+		regulator-name = "SD3_SPWR";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6SLL_CLK_PLL4_AUDIO_DIV>;
+	assigned-clock-rates = <393216000>;
+};
+
+&cpu0 {
+	arm-supply = <&buck1>;
+	soc-supply = <&buck2>;
+};
+
+&i2c1 {
+	pinctrl-names = "default","sleep";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_sleep>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* backlight aw99703 at 0x36 */
+};
+
+&i2c2 {
+	pinctrl-names = "default","sleep";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_sleep>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* backlight aw99703 at 0x36 */
+
+	touchscreen@38 {
+		compatible = "focaltech,ft5426";
+		reg = <0x38>;
+		pinctrl-names = "default", "suspend";
+		pinctrl-0 = <&pinctrl_touch_gpio>;
+		pinctrl-1 = <&pinctrl_touch_gpio_sleep>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <24 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <1072>;
+		touchscreen-size-y = <1448>;
+		touchscreen-swapped-x-y;
+	};
+};
+
+&i2c3 {
+	/* Bus seems to be in bad state after boot, allow full recovery */
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	sda-gpios = <&gpio3 22 GPIO_ACTIVE_HIGH>;
+	scl-gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	pmic@4b {
+		compatible = "rohm,bd71879", "rohm,bd71828";
+		reg = <0x4b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bd71828>;
+
+		interrupt-parent = <&gpio4>;
+		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		system-power-controller;
+
+		clocks = <&clks 0>;
+		#clock-cells = <0>;
+		clock-output-names = "bd71828-32k-out";
+
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-reserved-ranges = <0 1>, <2 1>;
+
+		/* charge sense resistor is 30 milli-ohm */
+
+		regulators {
+			LDO1 {
+				name = "LDO1";
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			LDO2 {
+				name = "LDO2";
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			LDO3 {
+				name = "LDO3";
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo4: LDO4 {
+				name = "LDO4";
+				regulator-name = "ldo4";
+				regulator-always-on;
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			LDO5 {
+				name = "LDO5";
+				regulator-name = "ldo5";
+				regulator-always-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			LDO6 {
+				name = "LDO6";
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			LDO7 {
+				name = "LDO7";
+				regulator-name = "ldo7";
+				regulator-always-on;
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			buck1: BUCK1 {
+				name = "BUCK1";
+				regulator-name = "buck1";
+				regulator-always-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+			};
+
+			buck2: BUCK2 {
+				name = "BUCK2";
+				regulator-name = "buck2";
+				regulator-always-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-boot-on;
+			};
+
+			BUCK3 {
+				name = "BUCK3";
+				regulator-name = "buck3";
+				regulator-always-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+			};
+
+			BUCK4 {
+				name = "BUCK4";
+				regulator-name = "buck4";
+				regulator-always-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-boot-on;
+			};
+
+			BUCK5 {
+				name = "BUCK5";
+				regulator-name = "buck5";
+				regulator-always-on;
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+			};
+
+			BUCK6 {
+				name = "BUCK6";
+				regulator-name = "buck6";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2000000>;
+			};
+
+			BUCK7 {
+				name = "BUCK7";
+				regulator-name = "buck7";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <2000000>;
+			};
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl_touch_gpio: touch-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_GPIO4_IO24__GPIO4_IO24	0x17059 /* TP_INT */
+			MX6SLL_PAD_GPIO4_IO18__GPIO4_IO18	0x10059 /* TP_RST */
+		>;
+	};
+
+	pinctrl_touch_gpio_sleep: touch-gpio-sleepgrp {
+		fsl,pins = <
+			MX6SLL_PAD_GPIO4_IO24__GPIO4_IO24	0x10059 /* TP_INT */
+			MX6SLL_PAD_GPIO4_IO18__GPIO4_IO18	0x10059 /* TP_RST */
+		>;
+	};
+
+	pinctrl_gpio_keys: gpio-keysgrp {
+		fsl,pins = <
+			MX6SLL_PAD_GPIO4_IO25__GPIO4_IO25	0x17059	/* PWR_SW */
+			MX6SLL_PAD_GPIO4_IO23__GPIO4_IO23	0x17059	/* HALL_EN */
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C1_SCL__I2C1_SCL	0x4001f8b1
+			MX6SLL_PAD_I2C1_SDA__I2C1_SDA	0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c1_sleep: i2c1-sleepgrp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C1_SCL__I2C1_SCL	0x400108b1
+			MX6SLL_PAD_I2C1_SDA__I2C1_SDA	0x400108b1
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C2_SCL__I2C2_SCL	0x4001f8b1
+			MX6SLL_PAD_I2C2_SDA__I2C2_SDA	0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c2_sleep: i2c2-sleepgrp {
+		fsl,pins = <
+			MX6SLL_PAD_I2C2_SCL__I2C2_SCL	0x400108b1
+			MX6SLL_PAD_I2C2_SDA__I2C2_SDA	0x400108b1
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX6SLL_PAD_REF_CLK_24M__I2C3_SCL 0x4001f8b1
+			MX6SLL_PAD_REF_CLK_32K__I2C3_SDA 0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_REF_CLK_24M__GPIO3_IO21 0x4001f8b1
+			MX6SLL_PAD_REF_CLK_32K__GPIO3_IO22 0x4001f8b1
+		>;
+	};
+
+	pinctrl_led: ledgrp {
+		fsl,pins = <
+			MX6SLL_PAD_GPIO4_IO17__GPIO4_IO17 0x10059
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6SLL_PAD_UART1_TXD__UART1_DCE_TX 0x1b0b1
+			MX6SLL_PAD_UART1_RXD__UART1_DCE_RX 0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6SLL_PAD_LCD_ENABLE__UART2_DCE_RX	0x41b0b1
+			MX6SLL_PAD_LCD_HSYNC__UART2_DCE_TX	0x41b0b1
+			MX6SLL_PAD_LCD_VSYNC__UART2_DCE_RTS	0x41b0b1
+			MX6SLL_PAD_LCD_RESET__UART2_DCE_CTS	0x41b0b1
+		>;
+	};
+
+	pinctrl_uart2_sleep: uart2grp-sleep {
+		fsl,pins = <
+			MX6SLL_PAD_LCD_ENABLE__GPIO2_IO16	0x10059
+			MX6SLL_PAD_LCD_HSYNC__GPIO2_IO17	0x10059
+			MX6SLL_PAD_LCD_VSYNC__GPIO2_IO18	0x10059
+			MX6SLL_PAD_LCD_RESET__GPIO2_IO19	0x10059
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1grp {
+		fsl,pins = <
+			MX6SLL_PAD_EPDC_PWR_COM__USB_OTG1_ID 0x17059
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130b9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170b9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170b9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170b9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170b9
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170f9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130f9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170f9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170f9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170f9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170f9
+		>;
+	};
+
+	pinctrl_usdhc2_sleep: usdhc2-sleepgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__GPIO5_IO04		0x100f9
+			MX6SLL_PAD_SD2_CLK__GPIO5_IO05		0x100f9
+			MX6SLL_PAD_SD2_DATA0__GPIO5_IO01	0x100f9
+			MX6SLL_PAD_SD2_DATA1__GPIO4_IO30	0x100f9
+			MX6SLL_PAD_SD2_DATA2__GPIO5_IO03	0x100f9
+			MX6SLL_PAD_SD2_DATA3__GPIO4_IO28	0x100f9
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x11059
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x11059
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x11059
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x11059
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x11059
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x11059
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x170b9
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x170b9
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x170b9
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x170b9
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x170b9
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x170b9
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__SD3_CMD	0x170f9
+			MX6SLL_PAD_SD3_CLK__SD3_CLK	0x170f9
+			MX6SLL_PAD_SD3_DATA0__SD3_DATA0	0x170f9
+			MX6SLL_PAD_SD3_DATA1__SD3_DATA1	0x170f9
+			MX6SLL_PAD_SD3_DATA2__SD3_DATA2	0x170f9
+			MX6SLL_PAD_SD3_DATA3__SD3_DATA3	0x170f9
+		>;
+	};
+
+	pinctrl_usdhc3_sleep: usdhc3-sleepgrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD3_CMD__GPIO5_IO21	0x100c1
+			MX6SLL_PAD_SD3_CLK__GPIO5_IO18	0x100c1
+			MX6SLL_PAD_SD3_DATA0__GPIO5_IO19	0x100c1
+			MX6SLL_PAD_SD3_DATA1__GPIO5_IO20	0x100c1
+			MX6SLL_PAD_SD3_DATA2__GPIO5_IO16	0x100c1
+			MX6SLL_PAD_SD3_DATA3__GPIO5_IO17	0x100c1
+		>;
+	};
+
+	pinctrl_wifi_power: wifi-powergrp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_DATA6__GPIO4_IO29	0x10059
+		>;
+	};
+
+	pinctrl_bd71828: bd71828-gpiogrp {
+		fsl,pins = <
+			MX6SLL_PAD_KEY_COL0__GPIO3_IO24		0x1b8b1
+			MX6SLL_PAD_GPIO4_IO19__GPIO4_IO19	0x1b8b1
+		>;
+	};
+};
+
+&snvs_rtc {
+	/* we are using the rtc in the pmic, not disabled in imx6sll.dtsi */
+	status = "disabled";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_uart2>;
+	pinctrl-1 = <&pinctrl_uart2_sleep>;
+	status = "okay";
+
+	/* requires LDO4 + power enable gpio */
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+		fw-init-baudrate = <1500000>;
+	};
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1>;
+	disable-over-current;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz","sleep";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc3_sleep>;
+	/* card requires also ldo4 */
+	vmmc-supply = <&reg_wifi>;
+	cap-power-off-card;
+	non-removable;
+	status = "okay";
+};
-- 
2.39.5


