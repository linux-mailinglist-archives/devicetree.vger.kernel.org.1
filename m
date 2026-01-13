Return-Path: <devicetree+bounces-254367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BDCD17904
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 889E93082D16
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A777389475;
	Tue, 13 Jan 2026 09:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dVrc+Rsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76934389DE4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768295695; cv=none; b=iYSWBopF+dctZPp2rmTEsnf2l4+KEUxCEWY2gy/oJSz3j98QiPWZaOij8IWCuaugVWHOw+J1VSwXmwjELQeTtEjkX+nWYFQHAtitM5FH+cUb7FfOoIKAjPNTNHyI58y7YbcjzJ6CJT33a+G2eG4v+n2nFL/mYQMDIsmzZRWX/IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768295695; c=relaxed/simple;
	bh=aJZmPl5AgPqLgiF3qd8YsAsL22rFKXMOHqLQuJhG3KY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=IZAlmfsl1uf5KHzz733XTl7n+7G7pj6MnaxCZnNhPJlssktJTc8UVJKGoZMTdRFrLB0W8M3QfVwDCgBdW1xW14lEDzKkJOlhhl/q9Irsm+LpKQQrOKLiMHWyt63hSdMoAED0wN1w4qyu6YZmY652mrzRN/SQ++WRyu3TML6wdvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dVrc+Rsr; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a0bb2f093aso50413335ad.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768295682; x=1768900482; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gIKHQA9Koa5dAWUwBAWIQNMUXdy4WVVSFWlJdkhck6g=;
        b=dVrc+Rsr+4tg3l4Rhlia2S2tdS0EUHvNCXqJWvVbZwaidnCgLL6Y5rXokxOgfTlK2n
         37EU+3lPjtflMk6iHUFHw7RgM88r/sOm6UR/XouhAeAu6cVuLf0UMU+gx0d7HgOPrDif
         gTSxxapcYvXGmYvCP0d50Cu7ocZmptTVmpQu7aRwKuC4PguAxmQtID5GKD4k9yEe3noU
         QwAOwehhnIByvUwDeowdmouvdHgViQW/AAEFJ1wWDnacArqdkiHJZXG95pVpUu5zTJos
         e6x040rS8f0OQUKCpUuxcnuWDBSe5F0EsGKv6siQ07hA3+dOhG04VcFAxQ3hiWoaon7Z
         VHDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768295682; x=1768900482;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gIKHQA9Koa5dAWUwBAWIQNMUXdy4WVVSFWlJdkhck6g=;
        b=hjdNjk0tmNmaj5rzC2jSXSaAtmBZoMcehcAwjXxP6G4Cg2UUt9pj0AqrovDYP/lWCS
         xtFw80Q8bm38GAGVAguiOPCjDTDySepTyYED52fALwiU9VibhfLCVmJ7daT7wktYtS2x
         zXPtTEI9mBrCix8NK0YyJMOCm0xlN0mxfw+qaxvpd80YCsAVW3JJu5hYb1SSQq02efOq
         cjDYlgmJv9up6roQtVNWmZpJLyfR3b8Pa3z+3eiv5uPk3nrxV+WY+/LiH533h7oTufVp
         2xiMZ4kzu2nBCHPvLfkob3/qgheqFpDqSodJ4UZKhWfCfUvtf4owXfDvpWn4FOUrYivF
         PPFA==
X-Forwarded-Encrypted: i=1; AJvYcCUIwNBMfzHTWY03UHj6kLaSNbRDnZ26HyPNhSwSOfa7sgTzmOxiVIPAK95yofaFPKmP8EIM4qby8B3F@vger.kernel.org
X-Gm-Message-State: AOJu0YyNQqvCEDFG4/2Go/FH/bJ7VG9JwLLlSFJBEl8EjlUeq4w8jmMJ
	rq0EN8vrMsX8bV/uAibuvWaT9Nlvx6gwuoo+MsMkE0fsr0Fbj5icZfYG
X-Gm-Gg: AY/fxX76BLr6HzufmPFhiOwvzs6qx6noWP6zf8vYO7b1qCgBgaPvhLPJh2syhvdZX6n
	F1RAWkMioDWeD784wL8Hdjqer7SyJi8jZsxgMfgzKBBO6SSYLp7TDsf+C8rt4JKOy9Boq92DHDh
	HWvgIuBJ9n+pKBCs65Z7e6QpKp1vaoSbYr6T5xSU928yh6LcGS29cN0JGqgsjwydtIOsuXQ8hfK
	46MRKOXNRhoiG+M5Safy5Wrsi2oRixQrYnFisTowIgR6DeeaVnwx7LP5RjEJLcMxaF3D8nOaCpS
	MhcXnCd+ZIcQYTie7xKSofgPbSxuBL2Eu2IxGiCoEmqIZfRsBlCyuwdboD7leXJHRYToT27YS4n
	CWlEslhJfZmIrEbjjDIYMtmJc1zyiRmINaROiLxL8nZvO1eTP6D7zrGrE5VH8PLutUpKtMyGlj7
	6rbfX2rTs=
X-Google-Smtp-Source: AGHT+IHpabFlSVaMvIjeDmekiCt4f6v2Xl95ZHSz3fxaipc1z6UfyXOAZumovWpEHXCAcpcvCKPXig==
X-Received: by 2002:a17:903:1a6f:b0:2a3:ee53:d201 with SMTP id d9443c01a7336-2a3ee53d218mr208331835ad.12.1768295682052;
        Tue, 13 Jan 2026 01:14:42 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c0bsm15293915ad.31.2026.01.13.01.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:14:41 -0800 (PST)
From: Nick Xie <xieqinick@gmail.com>
X-Google-Original-From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: xianwei.zhao@amlogic.com,
	christianshewitt@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	nick@khadas.com
Subject: [PATCH v1 2/2] arm64: dts: add initial device-tree for Khadas VIM1S
Date: Tue, 13 Jan 2026 17:09:51 +0800
Message-Id: <20260113090951.35928-3-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260113090951.35928-1-nick@khadas.com>
References: <20260113090951.35928-1-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Khadas VIM1S uses the Amlogic S905Y4 SoC, based on the
Amlogic S4 SoC family, on a board with the same form factor as the
VIM/VIM2/VIM3/VIM4 models. Serial debug console, ethernet, SD card
work with this initial device-tree.

It features:
 - 2GB LPDDR4 RAM
 - 16GB eMMC 5.1 storage
 - 32MB SPI flash
 - 100 Base-T Ethernet
 - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
 - HDMI 2.1 video
 - 2x USB 2.0 ports
 - 1x USB-C (power) with USB 2.0 OTG
 - 2x LED's (1x red, 1x white)
 - 3x buttons (power, function, reset)
 - IR receiver
 - 40pin GPIO Header
 - 1x micro SD card slot

Signed-off-by: Nick Xie <nick@khadas.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 191 ++++++++++++++++++
 2 files changed, 192 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 219fb088c704d..15f9c817e5023 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -85,6 +85,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-ugoos-am3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-wetek-core2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-s4-s805x2-aq222.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-s4-s905y4-khadas-vim1s.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air-gbit.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-sm1-bananapi-m2-pro.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
new file mode 100644
index 0000000000000..0cd5f9b674830
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2026 Khadas Technology Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "meson-s4.dtsi"
+
+/ {
+	model = "Khadas VIM1S";
+	compatible = "khadas,vim1s", "amlogic,s4";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		mmc0 = &emmc; /* eMMC */
+		mmc1 = &sd; /* SD card */
+		mmc2 = &sdio; /* SDIO */
+		serial0 = &uart_b;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* 52 MiB reserved for ARM Trusted Firmware */
+		secmon_reserved: secmon@5000000 {
+			reg = <0x0 0x05000000 0x0 0x3400000>;
+			no-map;
+		};
+	};
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
+	main_5v: regulator-main-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	sdcard_power: regulator-sdcard {
+		compatible = "regulator-fixed";
+		regulator-name = "SDCARD_POWER";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio GPIOD_4 GPIO_ACTIVE_LOW>;
+		enable-active-low;
+		regulator-always-on;
+	};
+
+	vddio_card: gpio-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "VDDIO_CARD";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio GPIOD_9 GPIO_ACTIVE_HIGH>;
+		gpios-states = <1>;
+		states = <1800000 1
+				3300000 0>;
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
+		vin-supply = <&main_5v>;
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
+	};
+};
+
+&ethmac {
+	status = "okay";
+	phy-handle = <&internal_ephy>;
+	phy-mode = "rmii";
+};
+
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_pins>;
+	pinctrl-names = "default";
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
+};
+
+&sd {
+	status = "okay";
+	pinctrl-0 = <&sdcard_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <200000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&sdcard_power>;
+	vqmmc-supply = <&vddio_card>;
+};
+
+&spicc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spicc0_pins_x>;
+	cs-gpios = <&gpio GPIOX_10 GPIO_ACTIVE_LOW>;
+};
+
+&uart_b {
+	status = "okay";
+};
-- 
2.34.1


