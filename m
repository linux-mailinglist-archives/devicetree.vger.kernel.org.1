Return-Path: <devicetree+bounces-135704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77854A01C22
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 23:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AC821883950
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F35E1D54D1;
	Sun,  5 Jan 2025 22:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k6kwwUAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF171D5179
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 22:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736116015; cv=none; b=fuBnbqmyqkEsmxgX+U33ezJoplsciuiA33ZLsuUnm2AmFz5y8qq4v3zVGy3kO+Gvu2Peb4d/n0fNXEEQ+A3XeDveIbkkl5otnN5L1irx3/84YUFeH8EA/9j1/0umUS6lnXFZUBjcyg9nVv6HcDJ7kve18v1fMZU5nltev6BBkI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736116015; c=relaxed/simple;
	bh=3oHM8NpBpcXd8l+fhJnicGFWRtMbT1mjKxEuKW5ousU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ADiG43gnkERv+gAEBcnVZUU1w9LYqIPKHHsyq1nw4uRL0jTQ8kDo4MjbfKhzJN3TKqf3BJjF+qk3FM0B+Zh58u1hjbLJzaPMiSkbtjz1o5D7g0LghCe7ZTIhUa1cpRRZwlTFUFV19pcGUWw6nZp9LuvyA1VjK2XND2+WQ/Iztko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k6kwwUAA; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71e181fb288so8470592a34.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 14:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736116013; x=1736720813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfSbHyT1R6raOhTJ7V8XARiXNUedGBDtTDTJSvxiO2Y=;
        b=k6kwwUAA2vKi136EJRfD82SqsRtzXDTGKkXPv2ZQ8wn7sr0FCt9DpBQgNLCSFVlb7/
         rgWy6TMNC7TSLjLvduTIF9ri2LiOqgOY102KLceeyD7nIkZaDwtiK8B3/PsGMRIDknGF
         u6YGswf2JKClf1JUUBsh1tSfSrcxbPyY5osxOFHNFGZSLrpTv57y5qFffOaRL0fvXhFT
         hGUxJxyMPGIx29NabZoQq92yz+VIlSL+yjNqVjZqHKFaaF9S/7hArIfaSYH7ScoGXMUn
         UqiAyFxphJA3jrd9+LLeuqwzbrZZLPgkSenOtBR9BVGmqQYkzcJ6DQ16plieOPmNTD6l
         AmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736116013; x=1736720813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FfSbHyT1R6raOhTJ7V8XARiXNUedGBDtTDTJSvxiO2Y=;
        b=EoZjmpdGLk6Vzf+Ts3hZjgAdiOSKmyj46P3D4vOQBqeHjLegXABMZ54Bcf8diK2M4G
         T2BlyTz8Y+kktHukWW5N3h1zFhqIxglBdyTJyqIhrlTHNZt430hl5tUMnj+NrcjsdAja
         g2pufAyHXSOJqvyrww8ciIUwnH0Z4oyoZMEdCrxStRT6ryRevLhtr4qq5wxlaHO6Ulb/
         xUsJ2wR20LJ61ay9Eieb3gEEAAJZb+TGfkH3qwV7GMhlmh7j5rYBXfeIQcrLK3e8MCmb
         jCseJcEUJd3yn3C6HwAISh5nRIPQdKZesLpIJYxo30Cbp3h7migeM3JG7bP8gYZs6XiN
         U0yQ==
X-Forwarded-Encrypted: i=1; AJvYcCUI168B5ee3xQRlsGezH7YUljYSFKPTcPltt81q6A+XZABrO6bYugn5GIIwXaYS63fB6BnOHqlIzQ3N@vger.kernel.org
X-Gm-Message-State: AOJu0YwMupYOkssz/VA+1PsZ5iWPVAROSKIM4T3y6Db1VgHVyeCQ72Sr
	ppO+4lJzhTnuApwrkkEaarUlMbmzrjaI9lnxtsWjjwHI5R5U47/z
X-Gm-Gg: ASbGncvbtOVHk1nDg2eyeJeS+7R/BQuIGb+lxEFjfW4dIEH9sp/BxIbQXRt/Rx3368j
	ifeAxeUiVm8/VY/aE5beRhEXKCZiZyHhYR7upgagCajWLFsZfq4rncH2BUSma0Yj79yVtOQmsRq
	4ptfin6uiamdEc/icfWqc/Kk8Kh+x3mB00XyAFYYWcdd3ge6W4JdZ1wkT8PZ5kMRlO+bkKZHxx7
	2vhU6pvx3ZGsuyqpH0oR0pH8C+hi6kCkCOEhq+w2ysgQT8plN2chqXBZ4ChslTTwA==
X-Google-Smtp-Source: AGHT+IGrZqK6CfF7TIMzjZudseuCis7T+qaireIqn0thes0b4qTk7dBNKWCCI/z1rtPJniDJGJ2o3w==
X-Received: by 2002:a05:6830:3883:b0:71d:eee3:fd22 with SMTP id 46e09a7af769-720ff692341mr34767400a34.5.1736116012783;
        Sun, 05 Jan 2025 14:26:52 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b377:72ce:54b5:bddf])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc980a9e8sm9555227a34.43.2025.01.05.14.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 14:26:52 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 3/4] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Sun,  5 Jan 2025 16:26:12 -0600
Message-ID: <20250105222614.2359-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250105222614.2359-1-honyuenkwun@gmail.com>
References: <20250105222614.2359-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RK3588 Single Board Computer includes
- eMMC
- microSD
- UART
- 2 PWM LEDs
- RTC
- RTL8125 network controller on PCIe 2.0x1.
- M.2 M-key connector routed to PCIe 3.0x4
- PWM controlled heat sink fan.
- 2 USB2 ports
- lower USB3 port
- upper USB3 port with OTG capability
- Mali GPU
- SPI NOR flash
- Mask Rom button
- Analog audio using es8388 codec via the headset jack and onboard mic
- HDMI0
- HDMI1

the vcc5v0_usb30 regulator shares the same enable gpio pin as the
vcc5v0_usb20 regulator.

The Orange Pi 5 Max and Orange Pi 5 Ultra are both credit-card sized
boards with similar layout, so these boards will share a common dtsi.
The 5 Max has an extra HDMI0 while the 5 Ultra has a HDMI IN instead.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++++++++++++++++
 .../dts/rockchip/rk3588-orangepi-5-max.dts    |  60 +++++++
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  |   8 +
 4 files changed, 220 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255..83ad11650f0b 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -142,6 +142,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-max.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
new file mode 100644
index 000000000000..87090cb98020
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588-orangepi-5.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Max";
+	compatible = "xunlong,orangepi-5-max", "rockchip,rk3588";
+
+	vcc5v0_usb30_otg: vcc5v0-usb30-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		/* USB_OTG_PWREN */
+		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg_pwren>;
+		regulator-name = "vcc5v0_usb30_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&headphone_amp {
+	/* PHONE_CTL */
+	enable-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+};
+
+&analog_sound {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hp_detect>;
+	simple-audio-card,aux-devs = <&headphone_amp>;
+	simple-audio-card,hp-det-gpios = <&gpio3 RK_PD2 GPIO_ACTIVE_HIGH>;
+
+	simple-audio-card,routing =
+		"Headphones", "LOUT1",
+		"Headphones", "ROUT1",
+		"LINPUT1", "Microphone Jack",
+		"RINPUT1", "Microphone Jack",
+		"LINPUT2", "Onboard Microphone",
+		"RINPUT2", "Onboard Microphone";
+	simple-audio-card,widgets =
+		"Microphone", "Microphone Jack",
+		"Microphone", "Onboard Microphone",
+		"Headphone", "Headphones";
+};
+
+&fan {
+	/* FAN_CTL_H */
+	pwms = <&pwm9 0 50000 0>;
+};
+
+&hym8563 {
+	interrupt-parent = <&gpio0>;
+	interrupts = <RK_PC4 IRQ_TYPE_LEVEL_LOW>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_int_l>;
+};
+
+&led_blue_pwm {
+	/* PWM_LED1 */
+	pwms = <&pwm4 0 25000 0>;
+	status = "okay";
+};
+
+&led_green_pwm {
+	/* PWM_LED2 */
+	pwms = <&pwm5 0 25000 0>;
+};
+
+/* phy2 */
+&pcie2x1l1 {
+	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie_eth>;
+	status = "okay";
+};
+
+&pinctrl {
+	hym8563 {
+		rtc_int_l: hym8563-int {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <3 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_pwren: usb-host-pwren {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm4m0_pins>;
+	status = "okay";
+};
+
+&pwm5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm5m1_pins>;
+	status = "okay";
+};
+
+&pwm9 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm9m2_pins>;
+	status = "okay";
+};
+
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim2_pins>;
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_usb30_otg>;
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_usb20>;
+};
+
+&usb_host0_xhci {
+	dr_mode = "host";
+};
+
+/* pcie eth. not a real regulator. 33VAUX */
+&vcc3v3_pcie_eth {
+	/* Ethernet_power_en */
+	gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
+};
+
+/*
+ * Represents the vcc5v0_usb20 and vcc5v0_usb30 in the schematic,
+ * both regulators share the same enable gpio
+ */
+&vcc5v0_usb20 {
+	/* USB_HOST_PWREN */
+	gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb_host_pwren>;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
new file mode 100644
index 000000000000..ce44549babf4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3588-orangepi-5-compact.dtsi"
+
+/ {
+	model = "Xunlong Orange Pi 5 Max";
+	compatible = "xunlong,orangepi-5-max", "rockchip,rk3588";
+
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
+&pinctrl {
+
+	usb {
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
index 083d7f78b19a..a98e804a0949 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
@@ -83,6 +83,14 @@ fan: pwm-fan {
 	pwm-leds {
 		compatible = "pwm-leds";
 
+		led_blue_pwm: led-1 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			status = "disabled";
+		};
+
 		led_green_pwm: led-2 {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_INDICATOR;
-- 
2.47.1


