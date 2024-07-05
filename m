Return-Path: <devicetree+bounces-83333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A736928173
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:39:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DB4C1F23E96
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 05:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137D913A412;
	Fri,  5 Jul 2024 05:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW64z9J4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD7927452;
	Fri,  5 Jul 2024 05:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720157959; cv=none; b=CiPqtAisa/khzCf6sqYKpDM+Ga+NVNuRx2Qxa+voCrFJoh9rqyUPjicelZtCCY9NQtLn1IGGpsNvJEh+7Dcm8L8+q6QbfkdlAdOZgh4w4SBilczpwoWghKsJTD9RFIw5IUGZEgCV+d6mmVsJrK/iMpcgiJ2m64xuTeKgTyhxMbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720157959; c=relaxed/simple;
	bh=uWZCkCjV+hnk1B6n5lQV/kXhkjKQELbDfh6oD26HfVk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=nEAQbOHS19/TOt5K5hwgyKUYLZ6Xb9m+iSrTlL5W8Ej9H7yv4LyPpRHdSvuQhuRxrwJ2q3aSeOD89P/gROIKA90u5pmIhKJMDkDjAUC1KdlVpVCaNU1rEk1fE4VVCjJ175eMTdded0DWob1y1acSKJEqs3NPSVSkumzp+TpQwwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW64z9J4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 482DDC116B1;
	Fri,  5 Jul 2024 05:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720157958;
	bh=uWZCkCjV+hnk1B6n5lQV/kXhkjKQELbDfh6oD26HfVk=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=RW64z9J4X28IQEA7rlzB5UPGUrlt3b4Kta0WQVwzXJP61zJTdyF18hTDJxsUxds93
	 sRsxmHZPaLnLHcbCpX8mezCAVf6korY7xqv6n76nIKD9177hcR6Ax8RHx0CHNhsXxP
	 LfKpXdnWkODFJ7kQJ2Ip7XZe+jmbW7a2wM7juSfFL8YfLcss7ressmGjxUSstdosEs
	 1jsa07MEs/MH8ZO4MrMehof9hIKKqFFF3j6KYpF4dk5m1aYHLd8W4WC1+9mH/YexDr
	 VO1ENqkrs8NH9gbw25RjRkwTq7TeDztjwezP97m+DamgOalW3r26bYbbNpjEJqC2if
	 44dFavc4gZOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32236C30658;
	Fri,  5 Jul 2024 05:39:18 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Fri, 05 Jul 2024 13:39:16 +0800
Subject: [PATCH] arm64: dts: amlogic: enable some device nodes for S4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-s4_node-v1-1-646ca7ac4f09@amlogic.com>
X-B4-Tracking: v=1; b=H4sIAASHh2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDcwNT3WKT+Lz8lFRdC0NDg1RjIwuzZINkJaDqgqLUtMwKsEnRsbW1AFr
 upDBZAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720157957; l=8347;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=oOXiLAS6NgZVltA8CaP7tgFApq2iE/PP2b1hmtBEKsc=;
 b=ojBitIhspXSh/e49vFYC2RuSwK0zX/2weeZJP/9U/z9YgcT14mWW8A4uUqywE6nueYWq613rr
 zAdaIyEmOXDAt5YEu9EU52I19omzh7g4tsHL+wYFxNPTfsLFB5V4Qa2
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Enable some device nodes for AQ222 base S4, including
SD, regulator and ethnernet node.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     | 146 +++++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi          | 128 ++++++++++++++++++
 2 files changed, 274 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
index 983caddc409c..2ab685d9bd1d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
@@ -34,6 +34,112 @@ secmon_reserved: secmon@5000000 {
 			no-map;
 		};
 	};
+
+	sdio_32k: sdio-32k {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+		clocks = <&sdio_32k>;
+		clock-names = "ext_clock";
+	};
+
+	main_12v: regulator-main-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "12V";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+	};
+
+	vddao_3v3: regulator-vddao-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDAO_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&main_12v>;
+		regulator-always-on;
+	};
+
+	vddio_ao1v8: regulator-vddio-ao1v8 {
+	       compatible = "regulator-fixed";
+	       regulator-name = "VDDIO_AO1V8";
+	       regulator-min-microvolt = <1800000>;
+	       regulator-max-microvolt = <1800000>;
+	       vin-supply = <&vddao_3v3>;
+	       regulator-always-on;
+	};
+
+	/* SY8120B1ABC DC/DC Regulator. */
+	vddcpu: regulator-vddcpu {
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDCPU";
+		regulator-min-microvolt = <689000>;
+		regulator-max-microvolt = <1049000>;
+
+		vin-supply = <&main_12v>;
+
+		pwms = <&pwm_ij 1 1500 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+		/* Voltage Duty-Cycle */
+		voltage-table = <1049000 0>,
+				<1039000 3>,
+				<1029000 6>,
+				<1019000 9>,
+				<1009000 12>,
+				<999000 14>,
+				<989000 17>,
+				<979000 20>,
+				<969000 23>,
+				<959000 26>,
+				<949000 29>,
+				<939000 31>,
+				<929000 34>,
+				<919000 37>,
+				<909000 40>,
+				<899000 43>,
+				<889000 45>,
+				<879000 48>,
+				<869000 51>,
+				<859000 54>,
+				<849000 56>,
+				<839000 59>,
+				<829000 62>,
+				<819000 65>,
+				<809000 68>,
+				<799000 70>,
+				<789000 73>,
+				<779000 76>,
+				<769000 79>,
+				<759000 81>,
+				<749000 84>,
+				<739000 87>,
+				<729000 89>,
+				<719000 92>,
+				<709000 95>,
+				<699000 98>,
+				<689000 100>;
+		status = "okay";
+	};
+};
+
+&pwm_ef {
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins1>;
+	pinctrl-names = "default";
+};
+
+&pwm_ij {
+	status = "okay";
 };
 
 &uart_b {
@@ -46,6 +152,40 @@ &ir {
 	pinctrl-names = "default";
 };
 
+&sdio {
+	pinctrl-0 = <&sdio_pins>;
+	pinctrl-1 = <&sdio_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <200000000>;
+	non-removable;
+	disable-wp;
+	no-sd;
+	no-mmc;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddio_ao1v8>;
+};
+
+&sd {
+	status = "okay";
+	pinctrl-0 = <&sdcard_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <200000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_3v3>;
+};
+
 &nand {
 	status = "okay";
 	#address-cells = <1>;
@@ -90,3 +230,9 @@ &spicc0 {
 	pinctrl-0 = <&spicc0_pins_x>;
 	cs-gpios = <&gpio GPIOX_10 GPIO_ACTIVE_LOW>;
 };
+
+&ethmac {
+	status = "okay";
+	phy-handle = <&internal_ephy>;
+	phy-mode = "rmii";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index b686eacb9662..c11c947fa18c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/clock/amlogic,s4-pll-clkc.h>
 #include <dt-bindings/clock/amlogic,s4-peripherals-clkc.h>
 #include <dt-bindings/power/meson-s4-power.h>
+#include <dt-bindings/reset/amlogic,meson-s4-reset.h>
 
 / {
 	cpus {
@@ -466,6 +467,93 @@ mux {
 					};
 				};
 
+				sdcard_pins: sdcard-pins {
+					mux {
+						groups = "sdcard_d0_c",
+							 "sdcard_d1_c",
+							 "sdcard_d2_c",
+							 "sdcard_d3_c",
+							 "sdcard_clk_c",
+							 "sdcard_cmd_c";
+						function = "sdcard";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				sdcard_clk_gate_pins: sdcard-clk-gate-pins {
+					mux {
+						groups = "GPIOC_4";
+						function = "gpio_periphs";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_pins: emmc-pins {
+					mux-0 {
+						groups = "emmc_nand_d0",
+							 "emmc_nand_d1",
+							 "emmc_nand_d2",
+							 "emmc_nand_d3",
+							 "emmc_nand_d4",
+							 "emmc_nand_d5",
+							 "emmc_nand_d6",
+							 "emmc_nand_d7",
+							 "emmc_cmd";
+						function = "emmc";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+					mux-1 {
+						groups = "emmc_clk";
+						function = "emmc";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_ds_pins: emmc-ds-pins {
+					mux {
+						groups = "emmc_nand_ds";
+						function = "emmc";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				emmc_clk_gate_pins: emmc-clk-gate-pins {
+					mux {
+						groups = "GPIOB_8";
+						function = "gpio_periphs";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				sdio_pins: sdio-pins {
+					mux {
+						groups = "sdio_d0",
+							 "sdio_d1",
+							 "sdio_d2",
+							 "sdio_d3",
+							 "sdio_clk",
+							 "sdio_cmd";
+						function = "sdio";
+						bias-pull-up;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
+				sdio_clk_gate_pins: sdio-clk-gate-pins {
+					mux {
+						groups = "GPIOX_4";
+						function = "gpio_periphs";
+						bias-pull-down;
+						drive-strength-microamp = <4000>;
+					};
+				};
+
 				spicc0_pins_x: spicc0-pins_x {
 					mux {
 						groups = "spi_a_mosi_x",
@@ -712,5 +800,45 @@ mdio0: mdio {
 				compatible = "snps,dwmac-mdio";
 			};
 		};
+
+		sdio: mmc@fe088000 {
+			compatible = "amlogic,meson-axg-mmc";
+			reg = <0x0 0xfe088000 0x0 0x800>;
+			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clkc_periphs CLKID_SDEMMC_A>,
+				 <&xtal>,
+				 <&clkc_pll CLKID_FCLK_DIV2>;
+			clock-names = "core", "clkin0", "clkin1";
+			resets = <&reset RESET_SD_EMMC_A>;
+			cap-sdio-irq;
+			keep-power-in-suspend;
+			status = "disabled";
+		};
+
+		sd: mmc@fe08a000 {
+			compatible = "amlogic,meson-axg-mmc";
+			reg = <0x0 0xfe08a000 0x0 0x800>;
+			interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_periphs CLKID_SDEMMC_B>,
+				 <&clkc_periphs CLKID_SD_EMMC_B>,
+				 <&clkc_pll CLKID_FCLK_DIV2>;
+			clock-names = "core", "clkin0", "clkin1";
+			resets = <&reset RESET_SD_EMMC_B>;
+			status = "disabled";
+		};
+
+		emmc: mmc@fe08c000 {
+			compatible = "amlogic,meson-axg-mmc";
+			reg = <0x0 0xfe08c000 0x0 0x800>;
+			interrupts = <GIC_SPI 178 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc_periphs CLKID_NAND>,
+				 <&xtal>,
+				 <&clkc_pll CLKID_FCLK_DIV2>;
+			clock-names = "core", "clkin0", "clkin1";
+			resets = <&reset RESET_NAND_EMMC>;
+			no-sdio;
+			no-sd;
+			status = "disabled";
+		};
 	};
 };

---
base-commit: 338c92a5d1956f1841f84b86923087676d1d0cea
change-id: 20240705-s4_node-8110e3286c0c

Best regards,
-- 
Xianwei Zhao <xianwei.zhao@amlogic.com>



