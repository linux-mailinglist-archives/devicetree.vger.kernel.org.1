Return-Path: <devicetree+bounces-20782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92730800DCA
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 15:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5BEB1C20EDE
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 831EB3FB16;
	Fri,  1 Dec 2023 14:56:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CFB110FA;
	Fri,  1 Dec 2023 06:55:58 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id AA4F7211B9;
	Fri,  1 Dec 2023 15:55:56 +0100 (CET)
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v2 3/3] arm64: dts: ti: add verdin am62 mallow board
Date: Fri,  1 Dec 2023 15:55:51 +0100
Message-Id: <20231201145551.23337-4-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231201145551.23337-1-francesco@dolcini.it>
References: <20231201145551.23337-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joao Paulo Goncalves <joao.goncalves@toradex.com>

Add Toradex Verdin AM62 Mallow carrier board support. Mallow is a
low-cost carrier board in the Verdin family with a small form factor and
build for volume production making it ideal for industrial and embedded
applications.

https://www.toradex.com/products/carrier-board/mallow-carrier-board

Signed-off-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
v2: fixed temperature sensor compatible (s/tmp75c/tmp1075)
---
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am62-verdin-mallow.dtsi    | 198 ++++++++++++++++++
 .../dts/ti/k3-am625-verdin-nonwifi-mallow.dts |  22 ++
 .../dts/ti/k3-am625-verdin-wifi-mallow.dts    |  22 ++
 4 files changed, 244 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62-verdin-mallow.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 77a347f9f47d..92ebf001a217 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -16,9 +16,11 @@ dtb-$(CONFIG_ARCH_K3) += k3-am625-phyboard-lyra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-dev.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-mallow.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-dev.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-mallow.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-yavia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-sk-hdmi-audio.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-mallow.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-mallow.dtsi
new file mode 100644
index 000000000000..77b1beb638ad
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-mallow.dtsi
@@ -0,0 +1,198 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ *
+ * Common dtsi for Verdin AM62 SoM on Mallow carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/ti-am62
+ * https://www.toradex.com/products/carrier-board/mallow-carrier-board
+ */
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_qspi1_clk_gpio>,
+			    <&pinctrl_qspi1_cs_gpio>,
+			    <&pinctrl_qspi1_io0_gpio>,
+			    <&pinctrl_qspi1_io1_gpio>;
+
+		/* SODIMM 52 - USER_LED_1_RED */
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&main_gpio0 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 54 - USER_LED_1_GREEN */
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&main_gpio0 11 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 56 - USER_LED_2_RED */
+		led-2 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&main_gpio0 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* SODIMM 58 - USER_LED_2_GREEN */
+		led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&main_gpio0 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+/* Verdin ETH */
+&cpsw3g {
+	status = "okay";
+};
+
+/* Verdin MDIO */
+&cpsw3g_mdio {
+	status = "okay";
+};
+
+/* Verdin ETH_1*/
+&cpsw_port1 {
+	status = "okay";
+};
+
+/* Verdin PWM_1 and PWM_2*/
+&epwm0 {
+	status = "okay";
+};
+
+/* Verdin PWM_3 DSI */
+&epwm1 {
+	status = "okay";
+};
+
+&main_gpio0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ctrl_sleep_moci>,
+		    <&pinctrl_gpio_1>,
+		    <&pinctrl_gpio_2>,
+		    <&pinctrl_gpio_3>,
+		    <&pinctrl_gpio_4>;
+};
+
+/* Verdin I2C_1 */
+&main_i2c1 {
+	status = "okay";
+
+	/* Temperature sensor */
+	sensor@4f {
+		compatible = "ti,tmp1075";
+		reg = <0x4f>;
+	};
+
+	/* EEPROM */
+	eeprom@57 {
+		compatible = "st,24c02", "atmel,24c02";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+/* Verdin I2C_2 DSI */
+&main_i2c2 {
+	status = "okay";
+};
+
+/* Verdin I2C_4 CSI */
+&main_i2c3 {
+	status = "okay";
+};
+
+/* Verdin CAN_1 */
+&main_mcan0 {
+	status = "okay";
+};
+
+/* Verdin SPI_1 */
+&main_spi1 {
+	pinctrl-0 = <&pinctrl_spi1>,
+		    <&pinctrl_spi1_cs0>,
+		    <&pinctrl_qspi1_cs2_gpio>;
+	cs-gpios = <0>, <&main_gpio0 12 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	tpm@1 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_qspi1_dqs_gpio>;
+		interrupt-parent = <&main_gpio1>;
+		interrupts = <18 IRQ_TYPE_EDGE_FALLING>;
+		spi-max-frequency = <18500000>;
+	};
+};
+
+/* Verdin UART_3 */
+&main_uart0 {
+	status = "okay";
+};
+
+/* Verdin UART_1 */
+&main_uart1 {
+	status = "okay";
+};
+
+/* Verdin I2C_3_HDMI */
+&mcu_i2c0 {
+	status = "okay";
+};
+
+/* Verdin CAN_2 */
+&mcu_mcan0 {
+	status = "okay";
+};
+
+/* Verdin UART_4 */
+&mcu_uart0 {
+	status = "okay";
+};
+
+/* Verdin SD_1 */
+&sdhci1 {
+	status = "okay";
+};
+
+/* Verdin USB_1 */
+&usbss0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
+
+/* Verdin USB_2 */
+&usbss1 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
+
+/* Verdin CTRL_WAKE1_MICO# */
+&verdin_gpio_keys {
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&wkup_uart0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dts b/arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dts
new file mode 100644
index 000000000000..9cae12106e0e
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-mallow.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/ti-am62
+ * https://www.toradex.com/products/carrier-board/mallow-carrier-board
+ */
+
+/dts-v1/;
+
+#include "k3-am625.dtsi"
+#include "k3-am62-verdin.dtsi"
+#include "k3-am62-verdin-nonwifi.dtsi"
+#include "k3-am62-verdin-mallow.dtsi"
+
+/ {
+	model = "Toradex Verdin AM62 on Mallow Board";
+	compatible = "toradex,verdin-am62-nonwifi-mallow",
+		     "toradex,verdin-am62-nonwifi",
+		     "toradex,verdin-am62",
+		     "ti,am625";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dts b/arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dts
new file mode 100644
index 000000000000..81d834b22649
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-mallow.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2023 Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/ti-am62
+ * https://www.toradex.com/products/carrier-board/mallow-carrier-board
+ */
+
+/dts-v1/;
+
+#include "k3-am625.dtsi"
+#include "k3-am62-verdin.dtsi"
+#include "k3-am62-verdin-wifi.dtsi"
+#include "k3-am62-verdin-mallow.dtsi"
+
+/ {
+	model = "Toradex Verdin AM62 WB on Mallow Board";
+	compatible = "toradex,verdin-am62-wifi-mallow",
+		     "toradex,verdin-am62-wifi",
+		     "toradex,verdin-am62",
+		     "ti,am625";
+};
-- 
2.25.1


