Return-Path: <devicetree+bounces-20800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A99800EB4
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 16:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5516B212B1
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 15:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E054AF8C;
	Fri,  1 Dec 2023 15:39:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [IPv6:2001:4b7e:0:8::81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7C51D4A;
	Fri,  1 Dec 2023 07:39:36 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id B121A211B5;
	Fri,  1 Dec 2023 16:39:34 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 2/2] arm64: dts: freescale: verdin-imx8mp: add support to mallow board
Date: Fri,  1 Dec 2023 16:39:29 +0100
Message-Id: <20231201153929.26590-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231201153929.26590-1-francesco@dolcini.it>
References: <20231201153929.26590-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joao Paulo Goncalves <joao.goncalves@toradex.com>

Add Toradex Verdin IMX8MP Mallow carrier board support. Mallow is a
low-cost carrier board in the Verdin family with a small form factor and
build for volume production making it ideal for industrial and embedded
applications.

https://www.toradex.com/products/carrier-board/mallow-carrier-board

Signed-off-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
v2:
 - remove dt nodes: eeprom_display_adapter, hwmon
 - correct hwmon_temp node compatible to "ti,tmp1075"
---
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../dts/freescale/imx8mp-verdin-mallow.dtsi   | 199 ++++++++++++++++++
 .../imx8mp-verdin-nonwifi-mallow.dts          |  18 ++
 .../freescale/imx8mp-verdin-wifi-mallow.dts   |  18 ++
 4 files changed, 237 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6d83f84090e1..0a94be0430fc 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -123,9 +123,11 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw74xx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-venice-gw7905-2x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-mallow.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-mallow.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-verdin-wifi-yavia.dtb
 
 imx8mp-tqma8mpql-mba8mpxl-lvds-dtbs += imx8mp-tqma8mpql-mba8mpxl.dtb imx8mp-tqma8mpql-mba8mpxl-lvds.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
new file mode 100644
index 000000000000..8482393f3cac
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ *
+ * Common dtsi for Verdin IMX8MP SoM on Mallow carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx-8m-plus
+ * https://www.toradex.com/products/carrier-board/mallow-carrier-board
+ */
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>;
+
+		/* SODIMM 52 - USER_LED_1_RED */
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 54 - USER_LED_1_GREEN */
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 56 - USER_LED_2_RED */
+		led-2 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&gpio3 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 58 - USER_LED_2_GREEN */
+		led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&gpio3 7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&backlight {
+	power-supply = <&reg_3p3v>;
+};
+
+/* Verdin SPI_1 */
+&ecspi1 {
+	pinctrl-0 = <&pinctrl_ecspi1>, <&pinctrl_tpm_cs>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>, <&gpio3 16 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	tpm@1 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tpm_irq>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
+		spi-max-frequency = <18500000>;
+	};
+};
+
+/* EEPROM on Mallow */
+&eeprom_carrier_board {
+	status = "okay";
+};
+
+/* Verdin ETH_1 */
+&eqos {
+	status = "okay";
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
+/* Temperature sensor on Mallow */
+&hwmon_temp {
+	compatible = "ti,tmp1075";
+	status = "okay";
+};
+
+/* Verdin I2C_2_DSI */
+&i2c2 {
+	status = "okay";
+};
+
+/* Verdin I2C_4_CSI */
+&i2c3 {
+	status = "okay";
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
+/* Verdin PWM_1 */
+&pwm1 {
+	status = "okay";
+};
+
+/* Verdin PWM_2 */
+&pwm2 {
+	status = "okay";
+};
+
+/* Verdin PWM_3_DSI */
+&pwm3 {
+	status = "okay";
+};
+
+&reg_usdhc2_vmmc {
+	vin-supply = <&reg_3p3v>;
+};
+
+/* Verdin UART_1 */
+&uart1 {
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&uart2 {
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
+	pinctrl_leds: ledsgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_NAND_ALE__GPIO3_IO00	0x106>, /* SODIMM 52 */
+			<MX8MP_IOMUXC_NAND_CE0_B__GPIO3_IO01	0x106>, /* SODIMM 54 */
+			<MX8MP_IOMUXC_NAND_DATA00__GPIO3_IO06	0x106>, /* SODIMM 56 */
+			<MX8MP_IOMUXC_NAND_DATA01__GPIO3_IO07	0x106>; /* SODIMM 58 */
+	};
+
+	pinctrl_tpm_cs: tpmcsgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x82>; /* SODIMM 64 */
+	};
+
+	pinctrl_tpm_irq: tpmirqgrp {
+		fsl,pins =
+			<MX8MP_IOMUXC_NAND_DQS__GPIO3_IO14	0x16>; /* SODIMM 66 */
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts b/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts
new file mode 100644
index 000000000000..6a536a4964bb
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-nonwifi-mallow.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ */
+
+/dts-v1/;
+
+#include "imx8mp-verdin.dtsi"
+#include "imx8mp-verdin-nonwifi.dtsi"
+#include "imx8mp-verdin-mallow.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX8M Plus on Mallow Board";
+	compatible = "toradex,verdin-imx8mp-nonwifi-mallow",
+		     "toradex,verdin-imx8mp-nonwifi",
+		     "toradex,verdin-imx8mp",
+		     "fsl,imx8mp";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts b/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts
new file mode 100644
index 000000000000..08b7aef3fdde
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-mallow.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ */
+
+/dts-v1/;
+
+#include "imx8mp-verdin.dtsi"
+#include "imx8mp-verdin-wifi.dtsi"
+#include "imx8mp-verdin-mallow.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX8M Plus WB on Mallow Board";
+	compatible = "toradex,verdin-imx8mp-wifi-mallow",
+		     "toradex,verdin-imx8mp-wifi",
+		     "toradex,verdin-imx8mp",
+		     "fsl,imx8mp";
+};
-- 
2.25.1


