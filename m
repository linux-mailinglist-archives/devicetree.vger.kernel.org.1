Return-Path: <devicetree+bounces-254812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1908D1CAAD
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F002D30191AA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B86B36CDE8;
	Wed, 14 Jan 2026 06:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C/HSGJKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC3334FF79
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768371985; cv=none; b=e/QDlkWEdEDYOWubiLKhEw8V6IXJ74GBB/k2fRWVfbufVDt7CL5EpKzTXgmYN8qZIdpBM/nolxCPy9OeWU0SgGNMTxacrlZAjp38QssBeMwjc1B4Y5v7CGMzes3SqsDjNuDrD3QOO9kd3rNbDScmguHwli/c7xXGHhQzorhh1EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768371985; c=relaxed/simple;
	bh=1O/1xtihqEw90//JWJoqX9A+ZAh9hRYTi9jOFvgpqdA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=khZkvsQ+1yF5z5KgvgZiXICmiuC0GhFAYo4P1wyuNJByfDxMlQMG+Dl8jinyeF23ydF7uccrWQ7pMCGgPPHCdjSNVhY9B7+rXWOJNA7W839LVmA3/LZd/ipRHifoklOwav9pvPba9KC4AkVYD1ROT+iVmlORZ6/z+v7jlkuD6fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C/HSGJKj; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-bc29d64b39dso3067083a12.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 22:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768371973; x=1768976773; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GqboQ4ROVgM/dfJzro4IzHUtcI9B21cZXNDgBmCYmWI=;
        b=C/HSGJKjryiAz0MPxy0E5xe3w3qhym1vRhu0V8ioNtLdisI1PVoe+RVF/G88pwRwKe
         6dAXYyYGhsZ5j9ZI6xvlYqXI79NhLhGL43c94jjhndeLdjFsfK10Y1LD1Zl1paB0s9qd
         SCTnHg9zveL/7pP9MXTtKu9iPyxLnbLSBqr9pSy+xGETLrvEdS3sBDYIJpSgHiWAtVqL
         dsl4kt3vYhc+og41npqTC2olkZ/ku6b+/2Hwj+Dvno79r9+NX/0XdvA6uGYHWusBIbMt
         RGyFc6dDm+CJMR1VMVdEVl7vDRN+8ZpLk0CWWaEyjQn+lV25YfmCM0dVuq5kHI3dXkQc
         rICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768371973; x=1768976773;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GqboQ4ROVgM/dfJzro4IzHUtcI9B21cZXNDgBmCYmWI=;
        b=vIQA/VZedDCPhP3fihCOgqQlTE23Su24L298U7gpe+SdUXSwH5njhyBxaw3QtJ7yAO
         nUyLhN5O+dOmRYJHfoSsKeyRCIDC94/az1NyAbSjiDrJCImMFMcp+63DK5AvxFhF7huJ
         1TRr1zgaOjCHIsWabvnEx2+gWOIx8QCoBuL1j1d2wfxzpMfqt0eCq1R3gBoeMUH7U6LC
         c02zfxxXsAt9TLwT7laB/lWJ4u6n7Wze2fGybANvX3pg/w9NF4YIlmuMR+c7+/auBbGi
         n5g3V/fPGrrJgC4SSuSO/62Q787vpaPNwfGhPOHceskm8CWOehDywMYC3MZADmO8ebQA
         saeA==
X-Forwarded-Encrypted: i=1; AJvYcCWfdZhimYuBjntIS9j/aGoG6cTns9zYXRX4Q/8nTXxanxdLKjhDCs8kZcbzBOWDuK14AJS3evW/YJv1@vger.kernel.org
X-Gm-Message-State: AOJu0Yx09VwbkEddQSm2A6q7ZpMSPsTCStTOK0+RTUVLZCCUzewkzdSP
	8hyvPxoC9+6yCmvKwWIfDXYjNOqp8UCH8mb7FtM87PvClXTxSNlJPwm1
X-Gm-Gg: AY/fxX7RaxvMwYzmMmkH1j9QHAWjESOgyPt/kV3N+B+wC8nfcvtCdP11lBtGI8tAvMt
	mki+bx2uMjj11sDYs706wCuuIzsYM5BxqsWimY4PYo1FkmhFnNwplOa9t8B/KHfk4D6qHjAlkRQ
	9EiwkJW/d2sNuyf2Z+vwGy096JetP5JuKe4lpEYZnW9ym90NWGbgJ8Ame8042zhWn5xJ/n+3ZjE
	TUbBUw3hi8KCAZ9Z/BD0QhJ/9HkpewSGPtwvESYNRHJ4g1oY1lYvIEu5RsfrJb+Dok5MVPPWYfr
	oQLdaonikc9lNb5dEhu/pUODGIIJ6if17xr3AbG4KcfEy51fmcHEXMjze3LZLdK5vj+i/6hp8m3
	BaF9FZ0+0xD8A3BlFR81Knjs1B1OTboL5PuZ/WP1G7GEpQ2EmxTFblVKiJzfQy1MANsJjxGNAN2
	/tLFX2eSU=
X-Received: by 2002:a17:90a:e7cc:b0:340:bb56:79de with SMTP id 98e67ed59e1d1-351091780eemr1590209a91.30.1768371973579;
        Tue, 13 Jan 2026 22:26:13 -0800 (PST)
Received: from localhost.localdomain ([47.82.78.41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109d88f0esm891791a91.5.2026.01.13.22.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 22:26:13 -0800 (PST)
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
Subject: [PATCH v2 2/2] arm64: dts: add initial device-tree for Khadas VIM1S
Date: Wed, 14 Jan 2026 14:25:49 +0800
Message-Id: <20260114062549.68954-3-nick@khadas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260114062549.68954-1-nick@khadas.com>
References: <20260114062549.68954-1-nick@khadas.com>
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
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 190 ++++++++++++++++++
 2 files changed, 191 insertions(+)
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
index 0000000000000..a371ddcdb5e99
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -0,0 +1,190 @@
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
+	sd_3v3: regulator-sd-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "SD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio GPIOD_4 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+	};
+
+	vddio_sd: regulator-vddio-sd {
+		compatible = "regulator-gpio";
+		regulator-name = "VDDIO_SD";
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
+	vmmc-supply = <&sd_3v3>;
+	vqmmc-supply = <&vddio_sd>;
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


