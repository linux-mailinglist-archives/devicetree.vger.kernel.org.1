Return-Path: <devicetree+bounces-98183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B21FA9650EB
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 22:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDB32B20D3E
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 20:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02BBD18950B;
	Thu, 29 Aug 2024 20:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cUGt67jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FA018B461
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 20:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724964465; cv=none; b=Bw4WiQqahc78HSLFbwNWwHyl3Yrl+ya7iXLuoYl+3C2wHFGZmOpBSJUPZUAccUDvVtB1bB2yWc2hHApYgIX96EbUCXyfnAngDo6uLoO338cvo4anRrt+18qRXLIgKbwtzTkXjWi/rBPJAVgfsRbwtVgndXeuwPPbOG1DLJAXhf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724964465; c=relaxed/simple;
	bh=ig3fMkdOGh6jBRBE4pcioWimvJwkJS05lOpHd9Ye1zY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OaMb6EMSvYMiDtS4bnZ5V+Djvod+joNkBJ3nIsInNIH/6J1vB2bGoH8pGKBKbbeQN4m7NY8L+srLpMUPjm0gX7w+Xe8tSf/ZsKAxyp2hhIJMmdMYwRSLLmO9micIfXk7zzMcs05socvaLRuhe/8d8orQkbvjXK/Jbf1spenoV7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cUGt67jk; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2689e7a941fso697364fac.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964462; x=1725569262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oy30HbR5KrDH/SXivUaSD4xAHyGRchxF78S3F8Xt6BE=;
        b=cUGt67jkrwuQF+y4SB5gB75iegVPQwHBURfsqsr2YzJ14iBYWrgyjShTsjbBt7tAHh
         TcDtp++z3jMdXHgVfGhxRscuilpUHR3VttZt1mND+MJvlfZslWvXja1XjvVq9Bh5bVf8
         4a+Y3fVZG7EtIGKEwjeMwm1UStTwDxGPVOvW2N6rs5haPfCVBD3kauBMlzIzMElj9DhW
         DFOoBGAYZSJNDJ4qwpVizXHVKON0Yt7pT0xmJpCZjC2BanDApl1ivb+PYPQsRhsXpB0c
         WrsyXGWW68twA+5heVll/BLeq60XPcCixTHnAk+Z2UdCJR95lKWpttNZUmi+CbfpiZ09
         m43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964462; x=1725569262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oy30HbR5KrDH/SXivUaSD4xAHyGRchxF78S3F8Xt6BE=;
        b=wRwOIQhvyd0akooS/KMoMJhKl/a8rLqQQ8iPhIrPHI/xIw35oncxgGQV7wt1B/DB27
         xgwNsldKxWMqF1NL1W48Bn8cro28sQX5f7vLcDJHgDUjic/AQb0e50GiNyUAyl4HyiZc
         Sw1Uh1wWiAbGm2Yorc0t6/Hu5Rib4mTvqwPHnlLVXr4UBK8SXO45tBELWNPpCUVug267
         xsD1/5ufz0tJYyGnQgWThPo6Ww2QybWECmO2HYEXjAAlK3T3hqKnVdGbtQo7HVE8GNqK
         G/Q/FfoyjPl5rTAfswF5wcHs3Xqg3dSUJGZX8WKLWWtY2BQiWQR1I6mGL0xoNFVMX/em
         dQcw==
X-Gm-Message-State: AOJu0Yx4zV8XWo1DVZMniob9SvSIblIYruzYktYoGvMZNbzfgcHqFdIk
	rcA9bYpPd42olgnlUuhs1l4hvZJ0l+R7vmmyzlz6Kd5lum8PFxDa
X-Google-Smtp-Source: AGHT+IEUHMrY5usLgzrwyAyV6Je+nzdZ6POgYsRCPKXMtyytcRvOiCgc1Sby/UkWSN0n1uTIajjbqw==
X-Received: by 2002:a05:6871:781c:b0:260:e36f:ef4f with SMTP id 586e51a60fabf-27790080de1mr4738869fac.3.1724964462259;
        Thu, 29 Aug 2024 13:47:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Add GameForce Ace
Date: Thu, 29 Aug 2024 15:45:17 -0500
Message-Id: <20240829204517.398669-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The GameForce Ace is a portable gaming device based on the Rockchip
RK3588s SoC.

The device contains the following hardware that is tested/working:
 - 128GB eMMC
 - SDMMC card slot
 - Ampak SDIO WiFi 5/BT
 - NVME 2242 socket
 - 8 or 12GB of RAM
 - Goodix based touchscreen
 - Stereo speakers, internal microphone, and TRRS headphone jack.
 - Dual GPIO vibrators (implemented as gpio-pwm because they are
   quite strong)
 - Multiple face buttons, dual analog joysticks, and dual analog
   triggers
 - PWM fan with tach pin.

The device also contains the following hardware that is partially or
currently not working:
 - 1920x1080 DSI display
 - HDMI port
 - USB-C port with DP alt-mode
 - TI bq25703 charger controller

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
 2 files changed, 1238 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index fda1b980eb4b..62c3e53d24b4 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -139,6 +139,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-coolpi-4b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-gameforce-ace.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
new file mode 100644
index 000000000000..91efb9dafc89
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -0,0 +1,1237 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/usb/pd.h>
+#include "rk3588s.dtsi"
+
+/ {
+	model = "Gameforce Ace";
+	chassis-type = "handset";
+	compatible = "gameforce,ace", "rockchip,rk3588s";
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc_keys: adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <60>;
+
+		button-vol-up {
+			label = "VOLUMEUP";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+
+		button-vol-down {
+			label = "VOLUMEDOWN";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <417000>;
+		};
+	};
+
+	/* Joystick range values based on hardware observation. */
+	adc_joystick: adc-joystick {
+		compatible = "adc-joystick";
+		#address-cells = <1>;
+		io-channels = <&saradc 2>, <&saradc 3>,
+			      <&saradc 4>, <&saradc 5>;
+		poll-interval = <60>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <40>;
+			abs-fuzz = <30>;
+			abs-range = <0 4095>;
+			linux,code = <ABS_RX>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <40>;
+			abs-fuzz = <30>;
+			abs-range = <0 4095>;
+			linux,code = <ABS_RY>;
+		};
+
+		axis@2 {
+			reg = <2>;
+			abs-flat = <40>;
+			abs-fuzz = <30>;
+			abs-range = <0 4095>;
+			linux,code = <ABS_Y>;
+		};
+
+		axis@3 {
+			reg = <3>;
+			abs-flat = <40>;
+			abs-fuzz = <30>;
+			abs-range = <0 4095>;
+			linux,code = <ABS_X>;
+		};
+	};
+
+	/* Trigger range values based on hardware observation. */
+	adc_triggers: adc-trigger {
+		compatible = "adc-joystick";
+		#address-cells = <1>;
+		io-channels = <&ti_adc 6>,
+			      <&ti_adc 7>;
+		poll-interval = <60>;
+		#size-cells = <0>;
+
+		axis@0 {
+			reg = <0>;
+			abs-flat = <15>;
+			abs-fuzz = <15>;
+			abs-range = <890 1530>;
+			linux,code = <ABS_HAT2X>;
+		};
+
+		axis@1 {
+			reg = <1>;
+			abs-flat = <15>;
+			abs-fuzz = <15>;
+			abs-range = <1010 1550>;
+			linux,code = <ABS_HAT2Y>;
+		};
+	};
+
+	amp_headphone: headphone-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&headphone_amplifier_en>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Headphones Amplifier";
+	};
+
+	amp_speaker: speaker-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&speaker_amplifier_en>;
+		pinctrl-names = "default";
+		sound-name-prefix = "Speaker Amplifier";
+		VCC-supply = <&vcc5v0_spk>;
+	};
+
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-0 = <&hp_detect>;
+		pinctrl-names = "default";
+		simple-audio-card,aux-devs = <&amp_headphone>, <&amp_speaker>;
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpio = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "rockchip,es8388-codec";
+		simple-audio-card,pin-switches = "Headphones", "Speaker";
+		simple-audio-card,routing =
+			"Speaker Amplifier INL", "LOUT2",
+			"Speaker Amplifier INR", "ROUT2",
+			"Speaker", "Speaker Amplifier OUTL",
+			"Speaker", "Speaker Amplifier OUTR",
+			"Headphones Amplifier INL", "LOUT1",
+			"Headphones Amplifier INR", "ROUT1",
+			"Headphones", "Headphones Amplifier OUTL",
+			"Headphones", "Headphones Amplifier OUTR",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		enable-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&lcd_bl_en>;
+		pinctrl-names = "default";
+		pwms = <&pwm13 0 25000 PWM_POLARITY_INVERTED>;
+	};
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3700000>;
+		constant-charge-current-max-microamp = <2500000>;
+		constant-charge-voltage-max-microvolt = <8750000>;
+		voltage-min-design-microvolt = <7400000>;
+	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&btn_pins_ctrl>;
+		pinctrl-names = "default";
+
+		button-a {
+			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+			label = "EAST";
+			linux,code = <BTN_EAST>;
+		};
+
+		button-b {
+			gpios = <&gpio1 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "SOUTH";
+			linux,code = <BTN_SOUTH>;
+		};
+
+		button-down {
+			gpios = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
+			label = "DPAD-DOWN";
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-home {
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "FUNCTION";
+			linux,code = <BTN_MODE>;
+		};
+
+		button-l1 {
+			gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;
+			label = "L1";
+			linux,code = <BTN_TL>;
+		};
+
+		button-left {
+			gpios = <&gpio1 RK_PD7 GPIO_ACTIVE_LOW>;
+			label = "DPAD-LEFT";
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+
+		button-menu {
+			gpios = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
+			label = "HOME";
+			linux,code = <KEY_HOME>;
+		};
+
+		button-r1 {
+			gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_LOW>;
+			label = "R1";
+			linux,code = <BTN_TR>;
+		};
+
+		button-right {
+			gpios = <&gpio1 RK_PB7 GPIO_ACTIVE_LOW>;
+			label = "DPAD-RIGHT";
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+
+		button-select {
+			gpios = <&gpio1 RK_PA3 GPIO_ACTIVE_LOW>;
+			label = "SELECT";
+			linux,code = <BTN_SELECT>;
+		};
+
+		button-start {
+			gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_LOW>;
+			label = "START";
+			linux,code = <BTN_START>;
+		};
+
+		button-thumbl {
+			gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_LOW>;
+			label = "THUMBL";
+			linux,code = <BTN_THUMBL>;
+		};
+
+		button-thumbr {
+			gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+			label = "THUMBR";
+			linux,code = <BTN_THUMBR>;
+		};
+
+		button-up {
+			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_LOW>;
+			label = "DPAD-UP";
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-x {
+			gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_LOW>;
+			label = "NORTH";
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-y {
+			gpios = <&gpio1 RK_PB3 GPIO_ACTIVE_LOW>;
+			label = "WEST";
+			linux,code = <BTN_WEST>;
+		};
+	};
+
+	gpio_leds: gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins>;
+
+		green_led: led-0 {
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+		};
+
+		red_led: led-1 {
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_CHARGING;
+		};
+	};
+
+	pwm_fan: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 120 150 180 210 240 255>;
+		fan-supply = <&vcc5v0_sys>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB2 IRQ_TYPE_EDGE_RISING>;
+		pulses-per-revolution = <4>;
+		pwms = <&pwm12 0 50000 PWM_POLARITY_INVERTED>;
+	};
+
+	pwm_gpio33: pwm-33 {
+		compatible = "pwm-gpio";
+		gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vib_right_h>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+	};
+
+	pwm_gpio132: pwm-132 {
+		compatible = "pwm-gpio";
+		gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vib_left_h>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clock-names = "ext_clock";
+		clocks = <&rtc_hym8563>;
+		pinctrl-0 = <&wifi_enable_h>;
+		pinctrl-names = "default";
+		post-power-on-delay-ms = <200>;
+		power-off-delay-us = <5000000>;
+		reset-gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <1100000>;
+		regulator-min-microvolt = <1100000>;
+		regulator-name = "vcc_1v1_nldo_s3";
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_lcd0_n: vcc3v3-lcd0-n-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vcc_lcd_h>;
+		pinctrl-names = "default";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_lcd0_n";
+		vin-supply = <&vcc_3v3_s3>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vcc_3v3_sd_s0: vcc-3v3-sd-s0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&sd_s0_pwr>;
+		pinctrl-names = "default";
+		regulator-max-microvolt = <3000000>;
+		regulator-min-microvolt = <3000000>;
+		regulator-name = "vcc_3v3_sd_s0";
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc5v0_spk: vcc5v0-spk-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&vcc5v0_spk_pwr>;
+		pinctrl-names = "default";
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_spk";
+		vin-supply = <&vcc5v0_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";
+	};
+
+	vibrator_l: vibrator-l {
+		compatible = "pwm-vibrator";
+		pwm-names = "enable";
+		pwms = <&pwm_gpio132 0 20000000 0>;
+	};
+
+	vibrator_r: vibrator-r {
+		compatible = "pwm-vibrator";
+		pwm-names = "enable";
+		pwms = <&pwm_gpio33 0 20000000 0>;
+	};
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-0 = <&i2c0m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		regulator-max-microvolt = <1050000>;
+		regulator-min-microvolt = <550000>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		regulator-max-microvolt = <1050000>;
+		regulator-min-microvolt = <550000>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	vdd_npu_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		regulator-max-microvolt = <950000>;
+		regulator-min-microvolt = <550000>;
+		regulator-name = "vdd_npu_s0";
+		regulator-ramp-delay = <2300>;
+		fcs,suspend-voltage-selector = <1>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c3 {
+	status = "okay";
+
+	touchscreen@14 {
+		compatible = "goodix,gt911";
+		reg = <0x14>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
+		irq-gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&touch_int>, <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
+		touchscreen-inverted-x;
+		touchscreen-size-x = <1080>;
+		touchscreen-size-y = <1920>;
+		touchscreen-swapped-x-y;
+	};
+};
+
+&i2c4 {
+	pinctrl-0 = <&i2c4m2_xfer>;
+	status = "okay";
+
+	ti_adc: adc@48 {
+		compatible = "ti,ads1015";
+		reg = <0x48>;
+		#address-cells = <1>;
+		#io-channel-cells = <1>;
+		#size-cells = <0>;
+
+		channel@4 {
+			reg = <4>;
+		};
+
+		channel@5 {
+			reg = <5>;
+		};
+
+		channel@6 {
+			reg = <6>;
+		};
+
+		channel@7 {
+			reg = <7>;
+		};
+	};
+
+	imu@68 {
+		compatible = "invensense,mpu6880";
+		reg = <0x68>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_EDGE_RISING>;
+	};
+};
+
+&i2c6 {
+	pinctrl-0 = <&i2c6m3_xfer>;
+	status = "okay";
+
+	rtc_hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&hym8563_int>, <&clk32k_in>;
+		pinctrl-names = "default";
+		wakeup-source;
+	};
+
+	/* Battery profile from BSP device tree. */
+	cw2015@62 {
+		compatible = "cellwise,cw2015";
+		reg = <0x62>;
+
+		cellwise,battery-profile = /bits/ 8
+			<0x18 0x0A 0x76 0x6A 0x6A 0x6A 0x68 0x66
+			 0x62 0x5E 0x5A 0x58 0x5F 0x59 0x46 0x3D
+			 0x35 0x2D 0x28 0x21 0x29 0x38 0x44 0x50
+			 0x1A 0x85 0x07 0xAE 0x14 0x28 0x48 0x56
+			 0x66 0x66 0x66 0x6A 0x3E 0x1A 0x6C 0x3D
+			 0x09 0x38 0x1A 0x49 0x7B 0x96 0xA2 0x15
+			 0x3B 0x77 0x9A 0xB1 0x80 0x87 0xB0 0xCB
+			 0x2F 0x00 0x64 0xA5 0xB5 0x1C 0xF0 0x49>;
+		cellwise,monitor-interval-ms = <5000>;
+		monitored-battery = <&battery>;
+		status = "okay";
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	es8388: audio-codec@11 {
+		compatible = "everest,es8388";
+		reg = <0x11>;
+		assigned-clock-rates = <12288000>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		AVDD-supply = <&vcc_3v3_s3>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		DVDD-supply = <&vcc_1v8_s3>;
+		HPVDD-supply = <&vcc_3v3_s3>;
+		PVDD-supply = <&vcc_1v8_s3>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+};
+
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&package_fan0>;
+			cooling-device = <&pwm_fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map2 {
+			trip = <&package_fan1>;
+			cooling-device = <&pwm_fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
+/*
+ * Attempts to use an M.2 SATA in this slot worked intermittently
+ * with the correct nodes enabled in device-tree, but eventually
+ * resulted in a destroyed board. Advise caution.
+ */
+&pcie2x1l1 {
+	pinctrl-0 = <&pcie_rst>;
+	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&pinctrl {
+	audio-amplifier {
+		hp_detect: headphone-detect {
+			rockchip,pins =
+				<3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		headphone_amplifier_en: headphone-amplifier-en {
+			rockchip,pins =
+				<0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		speaker_amplifier_en: speaker-amplifier-en {
+			rockchip,pins =
+				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	bt {
+		bt_enable_h: bt-enable-h {
+			rockchip,pins =
+				<3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins =
+				<3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins =
+				<3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	charger {
+		charger_int_h: charger-int-h {
+			rockchip,pins =
+				<0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+		boost_enable_h: boost-enable-h {
+			rockchip,pins =
+				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins =
+				<0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-btns {
+		btn_pins_ctrl: btn-pins-ctrl {
+			rockchip,pins =
+				<1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>,
+				<1 RK_PD7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-leds {
+		led_pins: led-pins {
+			rockchip,pins =
+				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>,
+				<3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	lcd_bl_en {
+		lcd_bl_en: lcd-bl-en {
+			rockchip,pins =
+				<3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie-pins {
+		pcie_rst: pcie-rst {
+			rockchip,pins =
+				<3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sd-pwr {
+		sd_s0_pwr: sd-s0-pwr {
+			rockchip,pins =
+				<4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	spk-pwr {
+		vcc5v0_spk_pwr: vcc5v0-spk-pwr {
+			rockchip,pins =
+				<4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	touch {
+		touch_int: touch-int {
+			rockchip,pins =
+				<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		touch_rst: touch-rst {
+			rockchip,pins =
+				<1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb-typec {
+		usbc0_int: usbc0-int {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	vcc3v3-lcd {
+		vcc_lcd_h: vcc-lcd-h {
+			rockchip,pins =
+				<4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	vibrator {
+		vib_left_h: vib-left-h {
+			rockchip,pins =
+				<4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		vib_right_h: vib-right-h {
+			rockchip,pins =
+				<1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&pwm12 {
+	pinctrl-0 = <&pwm12m1_pins>;
+	status = "okay";
+};
+
+&pwm13 {
+	pinctrl-0 = <&pwm13m1_pins>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8_s0>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	keep-power-in-suspend;
+	max-frequency = <150000000>;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
+	sd-uhs-sdr104;
+	#size-cells = <0>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+		pinctrl-names = "default";
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_sd_s0>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&spi2 {
+	#address-cells = <1>;
+	assigned-clocks = <&cru CLK_SPI2>;
+	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
+	pinctrl-0 = <&spi2m2_pins>, <&spi2m2_cs0>;
+	pinctrl-names = "default";
+	#size-cells = <0>;
+	status = "okay";
+
+	pmic@0 {
+		compatible = "rockchip,rk806";
+		reg = <0x0>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		pinctrl-names = "default";
+		spi-max-frequency = <1000000>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc5v0_sys>;
+		vcc6-supply = <&vcc5v0_sys>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc5v0_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+		vcc10-supply = <&vcc5v0_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc5v0_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc5v0_sys>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		regulators {
+			vdd_gpu_s0: dcdc-reg1 {
+				regulator-boot-on;
+				regulator-enable-ramp-delay = <400>;
+				regulator-max-microvolt = <950000>;
+				regulator-min-microvolt = <550000>;
+				regulator-name = "vdd_gpu_s0";
+				regulator-ramp-delay = <12500>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: dcdc-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <950000>;
+				regulator-min-microvolt = <550000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_lit_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_logic_s0: dcdc-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <750000>;
+				regulator-min-microvolt = <675000>;
+				regulator-name = "vdd_logic_s0";
+				regulator-ramp-delay = <12500>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_vdenc_s0: dcdc-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <950000>;
+				regulator-min-microvolt = <550000>;
+				regulator-name = "vdd_vdenc_s0";
+				regulator-ramp-delay = <12500>;
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_ddr_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vdd2_ddr_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <2000000>;
+				regulator-min-microvolt = <2000000>;
+				regulator-name = "vdd_2v0_pldo_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2000000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vddq_ddr_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			avcc_1v8_s0: pldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "avcc_1v8_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s0: pldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			avdd_1v2_s0: pldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1200000>;
+				regulator-min-microvolt = <1200000>;
+				regulator-name = "avdd_1v2_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3_s0: pldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vccio_sd_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3_pldo6: pldo-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3_pldo6";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <750000>;
+				regulator-min-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s3";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_ddr_pll_s0: nldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <850000>;
+				regulator-min-microvolt = <850000>;
+				regulator-name = "vdd_ddr_pll_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			avdd_0v75_s0: nldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <837500>;
+				regulator-min-microvolt = <837500>;
+				regulator-name = "avdd_0v75_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_0v85_s0: nldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "vdd_0v85_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_0v75_s0: nldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s0";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&tsadc {
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
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&uart9 {
+	pinctrl-0 = <&uart9m2_xfer>, <&uart9m2_ctsn>, <&uart9m2_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rtc_hym8563>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PB0 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_l>;
+		pinctrl-names = "default";
+		shutdown-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.34.1


