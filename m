Return-Path: <devicetree+bounces-222344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6E5BA8347
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 066064E14C7
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 06:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B392BFC9D;
	Mon, 29 Sep 2025 06:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lGVROkYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8FA92C0263
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129068; cv=none; b=gsuzD6/Ml2o9ZRO7GNMmPTMr8j8to4XlajID7GWTj2AXGzLqCf/Z+ARaoWtGG3Fgc4AdUYKJ/CVdwXMTa2KJqqGD5EyPpjYNmq7dfggWyGDmf0JwVupVfxc7z8xRFHmzQLBKdYyodBuKOnxME1aZhI55+qpov6TzY0RRChwDXx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129068; c=relaxed/simple;
	bh=Igd/5P/kmryXEu8fVNJi9V/EzgicgeBdCpIPXZ772v4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bStzgM93Ih4EOWUlCPS//bQx44PGzQ1QXoe1ZFb3/wuFtSyc+c86WVXoNJQ8MxBFTrk4vJ5TBksTacc9St7Pfrtf9jZ1U7hqKXm3mYb0Z3BkVIYB83pfhy004psV3oM02fDF2SfIhGNSh12KSY/gRGjqDJaIDX6j3/GBTirW1sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lGVROkYc; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-32e715cbad3so5080867a91.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129066; x=1759733866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QVazE73VbRqYor6BfpMCCi39sn3mMzE033vE9K5d72Q=;
        b=lGVROkYc9vkencWAIAzfQNbbhvH5/8yIRxot5Iqt74hkShn6yHMDRzhVBiFRrKPa48
         pskOE55Af77y80AG/FvpixRoHBSbkSgsxTt6sU3JzA2xJcm6GS/ItecqhOG8ROCQ4XJt
         LgI5UVVLITeiZU9e3QvMalIiOVlGjcijcE7HJt8V8AhFNHiDatlo28QH8CfGxpK554IJ
         ndsgYvxgyGNfAirzFWtALUaqG3cGK8m/WZGU9cFpiZQxI01z0G4ZA+/OPzd8xfN+EZp7
         ThCmxTdy+jrVfLfIZ8CUCjuzMSHBIvZt2F2DwcRn3C9R0pubeJjPCvpkhymgnaZrFbAT
         1GEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129066; x=1759733866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QVazE73VbRqYor6BfpMCCi39sn3mMzE033vE9K5d72Q=;
        b=tnQp4RdjorhHqwbWMvZYSjAC1HqH1CNY2G8CHtD85FXateYcF0ExMkWhTzQu6MRZR3
         uDDw5jJrGDHcy36P0ZaVsXcQXoHEBSjZM7w5MyA5nbfytgWk9dQJd7Z82KeKlFhADWHU
         W+1cchhuR0ObTLQ1/BQ/nig8HAnrMavfIO1TU06Lo7wt8gLqf+bA5E2BJQW6vPEWjAPq
         VGNssnTFNyWxkDQLX4WslegOw7Z5zgoiRyuXs1H9GrW8xqsOFqazdDgg2T/3AqnTTH9H
         eVUSbXoknZ3oGSp41GsDJXa5jzbXRcPECmR6H6c4+ppv+YMKSyH0V8qEXbMegGuY29Io
         fG+g==
X-Gm-Message-State: AOJu0YwfvTYnoJF4n/Vg8gbUi2bf9+bmWta9yDABzPXYX8xvE1nw8RmJ
	HoWViOsdu2lH7BRTPWXegB4w30xCQlhLor75vL9roDGJ4pM9q27SIUJI
X-Gm-Gg: ASbGncsP8X2maCPSX7lt8hMtSoiTmBvFaSbxispdYKqA3Uhx2rDw0lQsBtP/r5IKtzE
	DxCp5CELowvOG/zXT8xNq4u777fyuMkdfQ+bF+IzsR6Xatagaqz55Emyp/g4jrPflGeOpAL6DYe
	K2HmobLi4TJeZrlLvCPmNfYIbSjxa9GBKccPYoDMg9KxniL0ofNVV5LGaH4oKs8mf9Tq0R8qZeN
	HpTHXfuPiXaTnd4sr6QolL5OI1vkek3lrxkkae1JwBCv7oXVecdjsXDn07LIhS+f6gxpQ1NJL4H
	NZmo8nJw1Z8j4ylOqyU+OZEHjmaJStO7OYWogqY6NviBw0frL8LibE/0Q62tMuYEj4dhipFqanG
	JNmoW/IpQ5/U2Bw/b5fwGOVDuiFFMTZQjfmn6WRUw5b9bG8S/l7gTIQcK4TT4hLrp6P4KtvLs
X-Google-Smtp-Source: AGHT+IGMAKXh5zT8k9/tWe8tSRBWcHbfaMGE+I+07EnMncBsI8L41y6qMHoLtgQceJ0xDK97NgPK1Q==
X-Received: by 2002:a17:90a:e7cf:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-3342a233d5emr16224814a91.13.1759129065866;
        Sun, 28 Sep 2025 23:57:45 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.41
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:45 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:57:14 +0800
Message-ID: <20250929065714.27741-4-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase EasePi R1 [1] is a high-performance mini router.

Specification:
- Rockchip RK3568
- 2GB/4GB LPDDR4 RAM
- 16GB on-board eMMC
- 1x M.2 key for 2280 NVMe (PCIe 3.0)
- 1x USB 3.0 Type-A
- 1x USB 2.0 Type-C (for USB flashing)
- 2x 1000 Base-T (native, RTL8211F)
- 2x 2500 Base-T (PCIe, RTL8125B)
- 1x HDMI 2.0 Output
- 12v DC Jack
- 1x Power key connected to PMIC
- 2x LEDs (one static power supplied, one GPIO controlled)

[1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
 2 files changed, 693 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 099520962ffb..7646ffd7f309 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -127,6 +127,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-nanopi-r3s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-bigtreetech-cb2-manta.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-bigtreetech-pi2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-easepi-r1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r68s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts b/arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts
new file mode 100644
index 000000000000..2bc8675efa12
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts
@@ -0,0 +1,692 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "LinkEase EasePi R1";
+	compatible = "linkease,easepi-r1", "rockchip,rk3568";
+
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+		mmc2 = &sdmmc2;
+
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <1750>;
+		};
+	};
+
+	dc_12v: regulator-dc-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
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
+		vin-supply = <&dc_12v>;
+	};
+
+	vcc3v3_sys: regulator-vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	pcie30_avdd0v9: regulator-pcie30-avdd0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: regulator-pcie30-avdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	regulator-vdd0v95-25glan {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwr_25g_pin>;
+		enable-active-high;
+		gpio = <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vdd0v95_25glan";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_nvme: regulator-vcc3v3-nvme {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_nvme";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&dc_12v>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_nvme_en>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
+	};
+
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&status_led_pin>;
+
+		status_led: led-status {
+			gpios = <&gpio2 RK_PD7 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			label = "green:status";
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+};
+
+&gmac0 {
+	phy-mode = "rgmii";
+	clock_in_out = "input";
+
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	phy-handle = <&rgmii_phy0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+
+	tx_delay = <0x3c>;
+	rx_delay = <0x2f>;
+
+	status = "okay";
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	clock_in_out = "input";
+
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	phy-handle = <&rgmii_phy1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+
+	tx_delay = <0x4f>;
+	rx_delay = <0x26>;
+
+	status = "okay";
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-names = "default";
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-0 = <&eth_phy1_reset_pin>;
+		pinctrl-names = "default";
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
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
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
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
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>;
+		system-power-controller;
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <950000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+	};
+};
+
+&i2s0_8ch {
+	status = "okay";
+};
+
+/* ETH3 */
+&pcie2x1 {
+	reset-gpios = <&gpio3 RK_PA4 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&pcie30phy {
+	data-lanes = <1 2>;
+	status = "okay";
+};
+
+/* ETH2 */
+&pcie3x1 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+/* M.2 Key for 2280 NVMe */
+&pcie3x2 {
+	num-lanes = <1>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_nvme>;
+	status = "okay";
+};
+
+&pinctrl {
+	gmac0 {
+		eth_phy0_reset_pin: eth-phy0-reset-pin {
+			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+	gmac1 {
+		eth_phy1_reset_pin: eth-phy1-reset-pin {
+			rockchip,pins = <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	gpio-leds {
+		status_led_pin: status-led-pin {
+			rockchip,pins =
+				<2 RK_PD7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic-int {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pcie-nic {
+		pwr_25g_pin: pwr-25g-pin {
+			rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	nvme {
+		vcc3v3_nvme_en: vcc3v3-nvme-en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	status = "okay";
+};
+
+/* Micro SD card slot is not mounted */
+&sdmmc0 {
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "disabled";
+};
+
+/* Wifi module is not mounted */
+&sdmmc2 {
+	max-frequency = <150000000>;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "disabled";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+/* OTG Only USB2.0, Only device mode */
+&usb_host0_xhci {
+	phys = <&usb2phy0_otg>;
+	phy-names = "usb2-phy";
+	extcon = <&usb2phy0>;
+	maximum-speed = "high-speed";
+	dr_mode = "peripheral";
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
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
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
-- 
2.51.0


