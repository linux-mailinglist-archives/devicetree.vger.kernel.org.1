Return-Path: <devicetree+bounces-195814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EA4B0321D
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 18:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8710917B66D
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 16:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2B01DD88F;
	Sun, 13 Jul 2025 16:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FwEH66Fz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B1517A2EC
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 16:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424464; cv=none; b=nXgDh6IL921z7F47Bl2Oa16axRVFIiwIUi4uF5UTV9fQ11nIDTjJmsyV/y5wVZp/uz3uKO2iuGOcIie/IvrJb00A/jAkcsgOqaY4t8KUQVxP2v8nwySUIdiLw+Fe/F9f9AcFG0batil2mNbG24vLmVwo07bZZoJRbBwQZl00QqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424464; c=relaxed/simple;
	bh=FV7oh8sFK+H7vu4/+DaZbnwkdgWm9FBoJfN5pAnx3U0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tfzf1DboOS8hGoHbNINaiQDnGmb/Wekt6irF/+oJoD21QPWmd6Zg1R3Z5rNHdGbNxYvAZM65JRcbWdvuZr9hJNX6ACI6B4J4PjYs6z19bxR6BFGnPrhoesoYml5el/zVfhzssZdxdT+maVkz+gcSiEaiBaK+SqgGa5c0lowTDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FwEH66Fz; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-23526264386so31912965ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752424462; x=1753029262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7rsbYu2SV+pczTkzZ01Mx7M47S1CBAFTs46F+MKJUY8=;
        b=FwEH66FzxTlUO8msea6gV4XCiBcYSsd8l3ehFJcPuzHnYkWtKp9mR1l3R58U9qVRY3
         5YhElbA+/lvwIpHmim5j3P7yeC4Gm1VDmFQ/IZ1BXhoAhJr+PFPwQaHabCp7+mrTNF62
         hewN+xmlQWy6JUGYt9nZrqlFMz441f7ML9QTPiVL8qIaiYzn+F5xzhTINL7bD+u+Q6Dz
         TsltEIKogzN7ovxxWnIYDAzqUH65yXwnwS9qjyjYADILraGx2oLjIcuW9sNO9fnC4mTE
         sxQoxpwOWEEBR2T01PZL9hWfoaL05LrW+6i/XV9k7prjJLa3BdQLNIUVy0tSLO2MAW5C
         YolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752424462; x=1753029262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7rsbYu2SV+pczTkzZ01Mx7M47S1CBAFTs46F+MKJUY8=;
        b=vu7I2QNmgIGUMGo5ygIIk6xqoVisWKhgznX2HW95PxkA7CpOEtWWZG8M6LD1dB0zla
         tjp5WJhrPAepqHPnPF07FgSvv8jiOjDSSEibmIySw7+f33vukMIH3ds6bd0op0YErl/7
         Drz0JR7ne0jdi7T9TXd9gRrU2KNA/GWTkalQ3VujawtUg7G/lsUgaVFPNnLJtaSmbqxF
         AEwfn/+W0ckTBDMIs+GUDHrru8Ja0H0GEGfZ0wVFa7bkbNdr7UIcWmCOu5CqKWhtAXrb
         Sr2NV0pptpiOnevIStBlbr8O7Po0o7DevXKRxBy1rSj1m790KAmpvlFA0L5u+Wt57uCD
         kbyw==
X-Gm-Message-State: AOJu0Yzg5uIGXYkFfJRaZaOfszj3CHSJcarHCLheAo+Fbg7yCa1ZDmDe
	6Oh1Xt9bv1t1jjGVSIXs3I5/f/3R2wAuBBVSU2HbbK2TyyATpaYJd1qX
X-Gm-Gg: ASbGnctRO1mP3yl+xVdPZwv822LE/4hDihjhBnSxQi1HSig0Fl/rTf+yntuIFFhBp+G
	dtmROlrhRXGZZfX03X7hRzhSMmo2eS6Xo/dC7lHulR0YR78/bd9PlJWPJkBW/saJFJGuSwObqX5
	TINrpru/nYVdQ+wKFGq5o4jzkGtreGtPZZFLAWqXz2J75P1oTnRHbr50lAF64Ho8EvbSVl54ZAk
	rkg6K/WY7SrEFWJchYapS1PU/raiR/FrYc6AUof2QS2Za1PzsHCDeplNI9OmFOSBkBaKgyCzlkc
	LtSwbqhMMqjWHhl2Spg5PdrD7XM+fbdRCSi/qfEzMJdDvOdd0n85MyV+im79djlSg5MzwELYpxc
	uiwCGTmoLgELHivXJ3uCllt+WkWWPdkviPI/f7H/30Wrbvw==
X-Google-Smtp-Source: AGHT+IGunyGjn1OtZc1b3/ATWYGmmh9dgbcVfeoJKZ5S0tk036d9F7Te3z2YIRjCS8Soz4e7jhVaaw==
X-Received: by 2002:a17:902:cecd:b0:235:1b91:9079 with SMTP id d9443c01a7336-23dee238341mr204312085ad.32.1752424462248;
        Sun, 13 Jul 2025 09:34:22 -0700 (PDT)
Received: from arch.localdomain ([155.117.228.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4285ecbsm80809655ad.48.2025.07.13.09.33.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 09:34:22 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	naoki@radxa.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add OneThing Cloud OEC turbo
Date: Mon, 14 Jul 2025 00:32:55 +0800
Message-ID: <20250713163255.163669-4-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250713163255.163669-1-jerrysteve1101@gmail.com>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The OneThing Cloud OEC turbo features the RK3566 SoC, 4GB of RAM and 8GB of
eMMC storage, and supports one SATA interface and USB 3.0.

  Specification:
    - Rockchip RK3566
    - DDR4 4GB
    - eMMC 8GB
    - Gigabit ethernet
    - USB 3.0 x 1
    - USB-C 2.0 x 1
    - 12V DC Power supply
    - SATA 3.0 connector x 1

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rk3566-onething-cloud-oec-turbo.dts       | 313 ++++++++++++++++++
 2 files changed, 314 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 4bf84622db47..39db4bba4f8a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -97,6 +97,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-cloud-oec-turbo.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts
new file mode 100644
index 000000000000..ed8ebade54cd
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-cloud-oec-turbo.dts
@@ -0,0 +1,313 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566.dtsi"
+
+/ {
+	model = "OneThing Cloud OEC turbo";
+	compatible = "onething,cloud-oec-turbo", "rockchip,rk3566";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	/* No hardware video output port */
+	/delete-node/ display-subsystem;
+
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		rgb_led_r: rgb-led-r {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_LOW>;
+		};
+
+		rgb_led_g: rgb-led-g {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
+		};
+
+		rgb_led_b: rgb-led-b {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	vcc12v0_dcin: regulator-vcc12v0-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v0_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v0_dcin>;
+	};
+
+	vcc3v3_sys: regulator-vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v0_dcin>;
+	};
+
+	vcc_3v3: regulator-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_1v8: regulator-vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_fixed: regulator-vdd-fixed {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_fixed";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_cpu: regulator-vdd-cpu {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_cpu";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_logic: regulator-vdd-logic {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 1>;
+		regulator-name = "vdd_logic";
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1100000>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-settling-time-up-us = <250>;
+		pwm-supply = <&vcc5v0_sys>;
+	};
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&combphy2 {
+	status = "okay";
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
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	phy-mode = "rgmii";
+	clock_in_out = "input";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		    &gmac1m1_tx_bus2
+		    &gmac1m1_rx_bus2
+		    &gmac1m1_rgmii_clk
+		    &gmac1m1_rgmii_bus
+		    &gmac1m1_clkinout>;
+	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	/* Reset time is 20ms, 100ms for rtl8211f */
+	snps,reset-delays-us = <0 20000 100000>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x2d>;
+	phy-handle = <&rgmii_phy1>;
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+	};
+};
+
+&pinctrl {
+	usb {
+		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc_3v3>;
+	pmuio2-supply = <&vcc_3v3>;
+	vccio1-supply = <&vcc_1v8>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sata2 {
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	mmc-hs200-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&tsadc {
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host1_xhci  {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
-- 
2.50.1


