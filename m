Return-Path: <devicetree+bounces-20446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0297FF422
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28433B20E76
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D83F653818;
	Thu, 30 Nov 2023 15:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JEXhsXeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3E810D1;
	Thu, 30 Nov 2023 07:56:43 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6d857f6f1c0so649314a34.0;
        Thu, 30 Nov 2023 07:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359802; x=1701964602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkyQQoqwciwc89cTgVzvYcWsm/XXt8NLDBZf0ngO1/c=;
        b=JEXhsXeZyOBBftXqYqropYv+gEbEU1KKxUFD+LOEwp5KMFwItwiPevuXMW+hL5VFJY
         RPYNwLqnR77HaJy50eiJGp1bVC1U/PYPIjBNiK/m5FgPH829+uF7d0nIs89LIEbx0CeF
         7/Pp1FfKzkL7wkQEKOpsb4u7igvteC0X+fXBOkpj4/m9bTj5oLLfj1DyojPpJKAL6MFT
         /hUiGaNAlrYgm48+OBoi+UZ6hUhQybNTfcK9FUp9U5IRjG2kbTeJ7KeA8t7Rv/cAfsIt
         KHHCD+pI0u7x0Fzy3KfByUzLYUqb/BAuXermYjSj2b1dTACOuxJ/IiYHIuwBeYOKQlOS
         x3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359802; x=1701964602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GkyQQoqwciwc89cTgVzvYcWsm/XXt8NLDBZf0ngO1/c=;
        b=V7ySTrdFVdjeiksH98P62xwZgyNoUaYPIosJPfDjpBZR/CaZQenAFYTcytUOKIlXgn
         fK9hXpbiRH4FxMVIIYyL53Uf4VaTdjBo7wxtt0V4bc1o//jn1DJAtLn0/jhi5WXiOb2q
         HGUttWkXeWaxWgVRHKhKXznhkSA3OXRFhII41QWeRC8QuM5p7CMXY/BGWKoMeu2I6gE+
         bEafsR1S8zQAc1LBvgvV+CsS3OmOJ6GjO5/+YFpXXSdYn3Aa7mnaOchnBCrRbRDACiK3
         uG9ikfAULrvWyz0BqPsg51N0CbebOXQGqnUQgfYM4g8bE5VhX1s57vZ23wfzi7QwTHfY
         Ra0w==
X-Gm-Message-State: AOJu0Yw1YSa2b+pIwAqvNUHIDBNhzdY1dc2DzRwx2POXs0saizgH6FFF
	5dztXP/eG+sWoALO1+dxokEjQ+79WR8=
X-Google-Smtp-Source: AGHT+IFRMKQm8uvD+svlp/Kbl1s2qhZVAUArzxeWx/mwE1QsImsN5pvqtlj3m655O+1ySzNKQTk50Q==
X-Received: by 2002:a05:6830:270a:b0:6d8:3ffb:330e with SMTP id j10-20020a056830270a00b006d83ffb330emr11748424otu.24.1701359802341;
        Thu, 30 Nov 2023 07:56:42 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 9/9] arm64: dts: rockchip: Add Powkiddy X55
Date: Thu, 30 Nov 2023 09:56:24 -0600
Message-Id: <20231130155624.405575-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy X55. The Powkiddy RK2023 is a handheld
gaming device with a 720p 5.5 inch screen powered by the Rockchip
RK3566 SoC. It includes a Realtek 8821cs WiFi/BT module, 2 ADC
joysticks powered by 4 dedicated ADC channels, and several GPIO
face buttons. There are 2 SDMMC slots (sdmmc1 and sdmmc3), and an
8GB internal eMMC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts | 926 ++++++++++++++++++
 2 files changed, 927 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 9dcb65f76342..a1a06e33a299 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -82,6 +82,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-x55.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
new file mode 100644
index 000000000000..4cf1962c1b0c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
@@ -0,0 +1,926 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3566.dtsi"
+
+/ {
+	model = "Powkiddy x55";
+	compatible = "powkiddy,x55", "rockchip,rk3566";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
+		mmc2 = &sdmmc2;
+		mmc3 = &sdmmc1;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc_joystick: adc-joystick {
+		compatible = "adc-joystick";
+		io-channels = <&saradc 0>, <&saradc 1>,
+			      <&saradc 2>, <&saradc 3>;
+		poll-interval = <60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <30>;
+			abs-fuzz = <20>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <30>;
+			abs-fuzz = <20>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@2 {
+			reg = <2>;
+			abs-flat = <30>;
+			abs-fuzz = <20>;
+			abs-range = <15 1023>;
+			linux,code = <ABS_RX>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <30>;
+			abs-fuzz = <20>;
+			abs-range = <1023 15>;
+			linux,code = <ABS_RY>;
+		};
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		power-supply = <&vcc_sys>;
+		pwms = <&pwm4 0 25000 0>;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <4000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4300000>;
+		factory-internal-resistance-micro-ohms = <91000>;
+		voltage-max-design-microvolt = <4138000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4138000 100>, <4083000 95>, <4059000 90>, <4044000 85>,
+					<4030000 80>, <4020000 75>, <4006000 70>, <3972000 65>,
+					<3934000 60>, <3904000 55>, <3878000 50>, <3857000 45>,
+					<3843000 40>, <3826000 35>, <3801000 30>, <3768000 25>,
+					<3735000 20>, <3688000 15>, <3621000 10>, <3553000 5>,
+					<3400000 0>;
+	};
+
+	gpio_keys_control: gpio-keys-control {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&btn_pins_ctrl>;
+		pinctrl-names = "default";
+
+		button-a {
+			gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>;
+			label = "EAST";
+			linux,code = <BTN_EAST>;
+		};
+
+		button-b {
+			gpios = <&gpio3 RK_PD2 GPIO_ACTIVE_LOW>;
+			label = "SOUTH";
+			linux,code = <BTN_SOUTH>;
+		};
+
+		button-down {
+			gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-l1 {
+			gpios = <&gpio3 RK_PD0 GPIO_ACTIVE_LOW>;
+			label = "TL";
+			linux,code = <BTN_TL>;
+		};
+
+		button-l2 {
+			gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_LOW>;
+			label = "TL2";
+			linux,code = <BTN_TL2>;
+		};
+
+		button-left {
+			gpios = <&gpio3 RK_PD6 GPIO_ACTIVE_LOW>;
+			label = "DPAD-LEFT";
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+
+		button-right {
+			gpios = <&gpio3 RK_PD7 GPIO_ACTIVE_LOW>;
+			label = "DPAD-RIGHT";
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+
+		button-select {
+			gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_LOW>;
+			label = "SELECT";
+			linux,code = <BTN_SELECT>;
+		};
+
+		button-start {
+			gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
+			label = "START";
+			linux,code = <BTN_START>;
+		};
+
+		button-thumbl {
+			gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_LOW>;
+			label = "THUMBL";
+			linux,code = <BTN_THUMBL>;
+		};
+
+		button-thumbr {
+			gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
+			label = "THUMBR";
+			linux,code = <BTN_THUMBR>;
+		};
+
+		button-r1 {
+			gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+			label = "TR";
+			linux,code = <BTN_TR>;
+		};
+
+		button-r2 {
+			gpios = <&gpio3 RK_PC7 GPIO_ACTIVE_LOW>;
+			label = "TR2";
+			linux,code = <BTN_TR2>;
+		};
+
+		button-up {
+			gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-x {
+			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
+			label = "NORTH";
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-y {
+			gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+			label = "WEST";
+			linux,code = <BTN_WEST>;
+		};
+	};
+
+	gpio_keys_vol: gpio-keys-vol {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-0 = <&btn_pins_vol>;
+		pinctrl-names = "default";
+
+		button-voldown {
+			gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_LOW>;
+			label = "VOLUMEDOWN";
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		button-volup {
+			gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "VOLUMEUP";
+			linux,code = <KEY_VOLUMEUP>;
+		};
+	};
+
+	gpio_leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins>;
+
+		red_led: led-0 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+		};
+
+		green_led: led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_POWER;
+		};
+
+		amber_led: led-2 {
+			color = <LED_COLOR_ID_AMBER>;
+			gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_CHARGING;
+		};
+
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		ddc-i2c-bus = <&i2c5>;
+		type = "c";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
+	};
+
+	/* Channels reversed for both headphones and speakers. */
+	sound {
+		compatible = "simple-audio-card";
+		pinctrl-0 = <&hp_det>;
+		pinctrl-names = "default";
+		simple-audio-card,name = "rk817_ext";
+		simple-audio-card,aux-devs = <&spk_amp>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Internal Speakers";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Internal Speakers", "Speaker Amp OUTL",
+			"Internal Speakers", "Speaker Amp OUTR",
+			"Speaker Amp INL", "HPOL",
+			"Speaker Amp INR", "HPOR";
+		simple-audio-card,pin-switches = "Internal Speakers";
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+	};
+
+	spk_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&spk_amp_enable_h>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amp";
+	};
+
+	vcc5v0_host: regulator-vcc5v0-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vcc5v0_host_en>;
+		pinctrl-names = "default";
+		regulator-name = "vcc5v0_host";
+		vin-supply = <&dcdc_boost>;
+	};
+
+	vcc_lcd: regulator-vcc-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vcc_lcd_en>;
+		pinctrl-names = "default";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc_lcd";
+	};
+
+	vcc_sys: regulator-vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		regulator-name = "vcc_sys";
+	};
+
+	vcc_wifi: regulator-vcc-wifi {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&vcc_wifi_h>;
+		pinctrl-names = "default";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc_wifi";
+	};
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			       <200000000>, <297000000>;
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		compatible = "powkiddy,x55-panel", "himax,hx8394";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc_lcd>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_LOW>;
+		rotation = <270>;
+		vcc-supply = <&vcc_lcd>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	ddc-i2c-bus = <&i2c5>;
+	pinctrl-0 = <&hdmitxm0_cec>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		clock-names = "mclk";
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
+		wakeup-source;
+		#clock-cells = <1>;
+		#sound-dai-cells = <0>;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_sys>;
+		vcc6-supply = <&vcc_sys>;
+		vcc7-supply = <&vcc_sys>;
+		vcc8-supply = <&vcc_sys>;
+		vcc9-supply = <&dcdc_boost>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_gpu";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_ddr";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vcc_3v3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcca1v8_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda_0v9";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdda0v9_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_acodec";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8_dvp: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8_dvp";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc2v8_dvp: LDO_REG9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc2v8_dvp";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			dcdc_boost: BOOST {
+				regulator-min-microvolt = <4700000>;
+				regulator-max-microvolt = <5400000>;
+				regulator-name = "boost";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			otg_switch: OTG_SWITCH {
+				regulator-name = "otg_switch";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+		rk817_charger: charger {
+			monitored-battery = <&battery>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <150000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
+	};
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c5 {
+	pinctrl-0 = <&i2c5m1_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+&i2s1_8ch {
+	pinctrl-0 = <&i2s1m0_sclktx>, <&i2s1m0_lrcktx>, <&i2s1m0_sdi0>,
+		    <&i2s1m0_sdo0>;
+	pinctrl-names = "default";
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&pinctrl {
+	audio-amplifier {
+		spk_amp_enable_h: spk-amp-enable-h {
+			rockchip,pins =
+				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gpio-control {
+		btn_pins_ctrl: btn-pins-ctrl {
+			rockchip,pins =
+				<3 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PD7 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		btn_pins_vol: btn-pins-vol {
+			rockchip,pins =
+				<4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	gpio-leds {
+		led_pins: led-pins {
+			rockchip,pins =
+				<4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hp-detect {
+		hp_det: hp-det {
+			rockchip,pins =
+				<4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins =
+				<4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vcc5v0_otg_en: vcc5v0-otg-en {
+			rockchip,pins =
+				<4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	vcc-lcd {
+		vcc_lcd_en: vcc-lcd-en {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	vcc-wifi {
+		vcc_wifi_h: vcc-wifi-h {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcca1v8_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcca1v8_pmu>;
+	vccio5-supply = <&vcc2v8_dvp>;
+	vccio6-supply = <&vcc1v8_dvp>;
+	vccio7-supply = <&vcc_3v3>;
+};
+
+&pwm4 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>,
+		    <&emmc_datastrobe>, <&emmc_rstnout>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-0 = <&sdmmc0_bus4>, <&sdmmc0_clk>, <&sdmmc0_cmd>,
+		    <&sdmmc0_det>;
+	pinctrl-names = "default";
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-0 = <&sdmmc1_bus4>, <&sdmmc1_cmd>, <&sdmmc1_clk>;
+	pinctrl-names = "default";
+	vmmc-supply = <&vcc_wifi>;
+	status = "okay";
+};
+
+&sdmmc2 {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-0 = <&sdmmc2m1_bus4>, <&sdmmc2m1_cmd>, <&sdmmc2m1_clk>,
+		    <&sdmmc2m1_det>;
+	pinctrl-names = "default";
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vcc2v8_dvp>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-0 = <&uart1m0_xfer>, <&uart1m0_ctsn>, <&uart1m0_rtsn>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wake-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb_host1_xhci {
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
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1


