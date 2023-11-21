Return-Path: <devicetree+bounces-17551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F47F2D10
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF2C8B2121C
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D5CB4A999;
	Tue, 21 Nov 2023 12:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 79980197
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 04:24:59 -0800 (PST)
Received: from hillo.muru.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTP id 2811780CC;
	Tue, 21 Nov 2023 12:24:57 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am625-sk: Add support for WL1837 module onboard
Date: Tue, 21 Nov 2023 14:24:41 +0200
Message-ID: <20231121122441.64385-1-tony@atomide.com>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vignesh Raghavendra <vigneshr@ti.com>

WL1837 WLAN card is present on the original AM625 SK board. It
communicates with the SoC using 4 bit SDIO through the second instance of
MMCSD.

Starting with SK-AM62B, there is a M.2 WLAN device connector instead of
the integrated WL1837 WLAN. The M.2 connector should be handled separately
in the k3-am62a.dtsi and k3-am62b.dtsi files as needed.

Note that WLAN currently needs fw_devlink=permissive set on the command
line. Not sure what is missing here but that seems like a separate change.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
[tony@atomide.com: updated for pinctrl, improved comments]
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am625-sk.dts | 79 ++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -103,6 +103,32 @@ vcc_1v8: regulator-5 {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	wlan_lten: regulator-6 {
+		bootph-all;
+		compatible = "regulator-fixed";
+		regulator-name = "wlan_lten";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&vcc_3v3_sys>;
+		gpios = <&exp1 11 GPIO_ACTIVE_LOW>;
+	};
+
+	wlan_en: regulator-7 {
+		/* OUTPUT of SN74AVC2T244DQMR */
+		bootph-all;
+		compatible = "regulator-fixed";
+		regulator-name = "wlan_en";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		regulator-always-on;
+		vin-supply = <&wlan_lten>;
+		gpios = <&main_gpio0 71 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wlan_en_default_pins>;
+	};
 };
 
 &main_pmx0 {
@@ -154,6 +180,33 @@ main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-default-pins {
 			AM62X_IOPAD(0x01d4, PIN_INPUT, 7) /* (B15) UART0_RTSn.GPIO1_23 */
 		>;
 	};
+
+	wlan_en_default_pins: wlan-en-default-pins {
+		bootph-all;
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x124, PIN_OUTPUT, 7) /* (A23) MMC2_SDCD.GPIO0_71 */
+		>;
+	};
+
+	main_mmc2_default_pins: main-mmc2-default-pins {
+		bootph-all;
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x120, PIN_INPUT, 0) /* (C24) MMC2_CMD */
+			AM62X_IOPAD(0x118, PIN_INPUT, 0) /* (D25) MMC2_CLK */
+			AM62X_IOPAD(0x114, PIN_INPUT, 0) /* (B24) MMC2_DAT0 */
+			AM62X_IOPAD(0x110, PIN_INPUT, 0) /* (C25) MMC2_DAT1 */
+			AM62X_IOPAD(0x10c, PIN_INPUT, 0) /* (E23) MMC2_DAT2 */
+			AM62X_IOPAD(0x108, PIN_INPUT, 0) /* (D24) MMC2_DAT3 */
+			AM62X_IOPAD(0x11c, PIN_INPUT, 0) /* (#N/A) MMC2_CLKB */
+		>;
+	};
+
+	main_wlirq_default_pins: main-wlirq-default-pins {
+		bootph-all;
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x128, PIN_INPUT, 7) /* (B23) MMC2_SDWP.GPIO0_72 */
+		>;
+	};
 };
 
 &main_gpio0 {
@@ -200,6 +253,32 @@ &sdhci1 {
 	vqmmc-supply = <&vdd_sd_dv>;
 };
 
+&sdhci2 {
+	status = "okay";
+	vmmc-supply = <&wlan_en>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mmc2_default_pins>;
+	bus-width = <4>;
+	non-removable;
+	ti,fails-without-test-cd;
+	cap-power-off-card;
+	keep-power-in-suspend;
+	ti,driver-strength-ohm = <50>;
+	assigned-clocks = <&k3_clks 157 158>;
+	assigned-clock-parents = <&k3_clks 157 160>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	wlcore: wlcore@2 {
+		compatible = "ti,wl1837";
+		reg = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&main_wlirq_default_pins>;
+		interrupt-parent = <&main_gpio0>;
+		interrupts = <72 IRQ_TYPE_EDGE_FALLING>;
+	};
+};
+
 &cpsw3g {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_rgmii1_pins_default>, <&main_rgmii2_pins_default>;
-- 
2.42.1

