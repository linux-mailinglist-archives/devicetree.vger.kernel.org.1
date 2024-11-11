Return-Path: <devicetree+bounces-120651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EEE9C37A4
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 05:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 899B01F216BB
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 04:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026E2132117;
	Mon, 11 Nov 2024 04:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kbLcPb+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5484236B
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731300924; cv=none; b=oTmDVKMuiQIILWAjlEan7n51z8ZsOP/7h07BZ6JK5HD00KcAqd09++52dvhMIr0EOESls64ZQyNjF119kZmZwxF7FWH+GyHuhef/ZGmydkg6DT8j3OZ10g6cIk1i6HIMQM/hUnB5y2j0wZPiCvYi0/3yW9tYb4voPccO19LLJdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731300924; c=relaxed/simple;
	bh=bBe107LVzBQqsMV/sldSvfZR70uxjDymg65MRCJ9q+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IdTUfF9MV+MsNBO0i7i7eBl61qh3AezdeZ+n5eU96tlJvYgxOlON/O2oq6yauLfJJVpVGoySa06R46Zno+2G9D1eForiUMhgEgQgvYMZ4fc2v3FqdoKDUrbNs8a9nSLGVu9lg8ouOe14RCxoBtvfzlakaDKxgwTFrzFNoiD9qT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kbLcPb+7; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7187e0041d5so2427972a34.2
        for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 20:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731300922; x=1731905722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ELI81nSGmtRLCIfnNl6b+pJ5Dyc0maExjkBvXW5ljQ=;
        b=kbLcPb+70kBDLwuT789Hb0mFzl2sgwK1KoLFi2CS3tj8TFi6nQpooy4s5DNcK8ILqE
         EhxgyK6xkJEAKll3lNPD+dWcS58nfmv6WJp1j38ez8JQwSlwiYl2XGChHbuTfmnOlUGe
         CPi+bAdHqKQTRoOe+DXKOFUQChqNb8S4JgQZJhrXfTvkFxawkAwCqGOwaxeZ8PPgfAZ+
         RiMSSQ0Ro4DRuXdfM/t4C178kWZOL7vjzpXbsq5RiRVNOBadVO7MMuPvZyHS8+QWjPPS
         2qbbsbTHUTHBP2OwgQJ5+F4dBLe8V6Y8XQ9geFCeTly0fbYZJR59duWBqygCRQmWcJJy
         YfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731300922; x=1731905722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ELI81nSGmtRLCIfnNl6b+pJ5Dyc0maExjkBvXW5ljQ=;
        b=bzLI269K/ByvNoM5I/rX9qBIx1snxpR9ggVRp8eqgRVGg2Sp/ccOidqk0xiH+NFmD0
         H1FEXqc5ydiOVpBMoQLwP5g5qoAyB8grl4nF+LM/Qfs6wE/RVBjK3bv0dpQ3CR+WMgHN
         3hYB3EsVSTMCHw9UtXu1K4I5cRk7cjUUVCOfZyo5GRUlRnqp039a3zsUqozaeuYV5IuB
         1AWghR9FvYH8X25hhv3SqLW+j+E1jj2sJtTGqH3reXkZpRJdJokfZwJzZ77Ix/Xb4Jhq
         nmOBmA3PkTXuvnzSq3Ggnx5fXvlRay7igS0nD2VTsam/WtpA7zIrsMhCEdIRh8t1Fy/Z
         OicA==
X-Forwarded-Encrypted: i=1; AJvYcCWg2AhMKhkCPjmhOtm7d3NLa8wKM9vsKEa/aLHL4nsVyjMfLk1gUgyM3SlRU393x3MqNpp24G+C5RfL@vger.kernel.org
X-Gm-Message-State: AOJu0YzVFuDlKoTxbEJr9yOCI96iQ6x22JcKWpZ72/uaTxMJKb6RdLVK
	aLxdTX2ECTMu4zP9s/8ojeClDRLacth5+/5pyFQbxlQZl/ZC/7WG
X-Google-Smtp-Source: AGHT+IEoQpKpY9CfdhJVGdmAhAWMOaFZK5Ypm9JbIg7lvsz/1vwYwFGpiuV6UUwqTVqpZHWsOwVJuA==
X-Received: by 2002:a05:6830:2aa0:b0:718:12b5:1ed3 with SMTP id 46e09a7af769-71a1c28abeemr8669794a34.23.1731300922481;
        Sun, 10 Nov 2024 20:55:22 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:9ab7:85ff:fe20:5865])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a107ebd11sm2089439a34.10.2024.11.10.20.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Nov 2024 20:55:22 -0800 (PST)
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
Subject: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
Date: Sun, 10 Nov 2024 22:53:27 -0600
Message-ID: <20241111045408.1922-7-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111045408.1922-1-honyuenkwun@gmail.com>
References: <20241111045408.1922-1-honyuenkwun@gmail.com>
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

the vcc5v0_usb30 regulator shares the same enable gpio pin as the
vcc5v0_usb20 regulator.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 130 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  |   8 ++
 3 files changed, 139 insertions(+)
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
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
new file mode 100644
index 000000000000..c9f17bb31710
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -0,0 +1,130 @@
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
+
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
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
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
index 3c6e1321f13f..6459a277f973 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
@@ -95,6 +95,14 @@ fan: pwm-fan {
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
2.47.0


