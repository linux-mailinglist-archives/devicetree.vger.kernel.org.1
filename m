Return-Path: <devicetree+bounces-240768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 764BDC75360
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id C022C32C72
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF94366DAD;
	Thu, 20 Nov 2025 15:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="JpmeDy8L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FC135A94D
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654324; cv=none; b=nMDheqJQYacqN3W0C4+GVodeT2zzfQ097+1BkhZKCOQhQG/pHv/WMKzpvPoGAQKyAZuXIKX7ew694zZpj3Z5f0t4ShuWzmF+GN93+K+sGjLgGdtrK3gesDE2GAS45Q1ciPkNmCQcJQCs3fL1vrxPY6daTMLjcByaVfTCbIIuPmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654324; c=relaxed/simple;
	bh=e37W0GvYJ2JSdfKglS0sgjR1Z/tIQ6PtBxe9cunKd+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pEfDK/ibUu3BJeh4NWVnk0cFC/G7LvaTSdvLd2cvvkrAFiQ8Yp4v6ilQiAjOBsCw4A9cC4g/1tCFfzWBXMYWwZ48XhcuUqM4Ef2TP5IVUBdf2xRwBVHaqSkc0eri327AKtY1r1WkkOhkSQLIXihf7ewHj8v7yiAvab6EI6OaC/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=JpmeDy8L; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47118259fd8so9073895e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763654316; x=1764259116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OE1VYq1f6ku0kAfPi4BnGYc3NuOKoRDa2Xf+9EsKkhA=;
        b=JpmeDy8LXYPefy8fxA5LFktgit9rXDtlt75MlfK5s5zu56XMd+PXRPpMac3sFWfYdQ
         L9p26+dDLujYRfjkbFvdyHp4NIeYnNKaS92xSJ+nBxB9gR897Xms+sJNeid1HnG+k2Wv
         TJIU6wNR9okpjRx+bzWqlVdCzH+mYSpoy6Ctc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654316; x=1764259116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OE1VYq1f6ku0kAfPi4BnGYc3NuOKoRDa2Xf+9EsKkhA=;
        b=cPTJ2Vo6nWJPwfo9HkMQRs8QdjYdH16f5vmEe+87H9m4pXC25r1ci9/kUb7i3jFNpX
         1v1zxk2rG7eoy9Ok4lwRh07VDDlBxXKhNWyumdGRqLaIKdkJbI+Ntk8UNJF/QpU6tXdk
         ltKHyuo9vRmHb4WjOzBTDHX7nrF58kz0/7tpWz/ScLNLjyE6cY1GUYZa7j6hVrWblZVv
         PSSGkVe3mKV2tQMlk15/iaDtzWFWkT4yHi9U/lWUgTSMH+4BKYyWocx5sDzP5ZV28dds
         0cRjXW9zzfPpTCi1anqqTGVqp6+bZhWBlgwLutvm96P/BcAhD+/gbEKKNuB6m1c85YzK
         f8ew==
X-Forwarded-Encrypted: i=1; AJvYcCULqeujO9T7ASHATs2cUA2h3NpqxMBmYfKxcRQDqWf4fSbnJXxUd+TiRzQ+GypQG4JixFnbfj29FUN/@vger.kernel.org
X-Gm-Message-State: AOJu0YzNLl5iALZ6ao4rVbj4LfngXTW05chXqQaQmTSCjARvIX77Vmb6
	RZ2XociVKREKFX2W64mQwG50ekClh261SNaMBzYAm8uxFh9OEOu2K4fP3y/mIG7M+Ts=
X-Gm-Gg: ASbGncuo1W5Gttkd4GGs0I+A4O1VIVZwxnBh/CU4wSeUCGIpYIGoS0gzu3vL4Rw4MNF
	ZEJ1TPV/AOimlakIELyBcDNWP9ScsvbS5FZW59m2iOsUPPL0PW4zNsXYKtGbPmO/0V7hayTbJCC
	W8H/5/E9+y181XmeAyCvJ6bKfs+FQEKcqeILMDkdwwaeayMc1/ow962E8013StnONaSiUg7Q5wh
	fBDK8zoOuyD+K4/nhf5Rggx8akB1iwmgZ2UFU15MWKF/r/6ZlIKgNvQJag1iiEXRRqarG4ax9oP
	MOjShig8gyA4qLWhSC5bYnB1s7hjO0bzk2T7b1o3KvZbWGwQBx1TVQ7Nmo4zMbV4zVDO0jAKp54
	dZQtB30fghMtwDMw8HGXiN45hRcbiBsQ2rUWhCfwFYhW3EqDh03xRlJ5e2uoYpc3866VpYevzgd
	G4Zhd9KeaixV5Yy38ESxsgCmKA6gER5heNb56H50LNAUAS
X-Google-Smtp-Source: AGHT+IGebOEGnvD5uDug6KZar+cpASg9HLUCpZ4irLCEVqh167SmBH/Vk7T3ITjZS4ZWWoIlPMvO5g==
X-Received: by 2002:a05:600c:4f4c:b0:477:7479:f081 with SMTP id 5b1f17b1804b1-477b895aff7mr47932915e9.12.1763654316323;
        Thu, 20 Nov 2025 07:58:36 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm55552185e9.8.2025.11.20.07.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:58:36 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino unoq
Date: Thu, 20 Nov 2025 16:58:25 +0100
Message-ID: <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu@arduino.cc>

Arduino UnoQ is a single-board computer combining Qualcomm
Dragonwing™ QRB2210 microprocessor with STMicroelectronics STM32U585
microcontroller.
Support to a simply boot to shell environment includes:
- UART, I2C, SPI
- onboard LEDS
- eMMC
- WLAN and BT

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 459 ++++++++++++++++++
 2 files changed, 460 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..9f98a7f2cbb4 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -143,6 +143,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-arduino-imola.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
new file mode 100644
index 000000000000..197ab6eb1666
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
@@ -0,0 +1,459 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) 2025, Arduino SRL
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include "agatti.dtsi"
+#include "pm4125.dtsi"
+
+/delete-node/ &cont_splash_memory;
+
+/ {
+	model = "Arduino UnoQ";
+	compatible = "arduino,imola", "qcom,qrb2210", "qcom,qcm2290";
+	chassis-type = "embedded";
+
+	aliases {
+		serial0 = &uart4;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		sdhc1 = &sdhc_1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		label = "gpio-keys";
+		pinctrl-0 = <&key_volp_n>, <&key_vold_n>;
+		pinctrl-names = "default";
+
+		key-volume-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+
+		key-volume-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			gpios = <&tlmm 36 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+			linux,can-disable;
+			wakeup-source;
+		};
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led-bt {
+			label = "unoq:bt-blue2";
+			function = LED_FUNCTION_BLUETOOTH;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&tlmm 47 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "bluetooth-power";
+			default-state = "off";
+		};
+
+		led-panic {
+			label = "unoq:panic-red2";
+			function = LED_FUNCTION_INDICATOR;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&tlmm 39 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "none";
+			default-state = "off";
+			panic-indicator;
+		};
+
+		led-wlan {
+			label = "unoq:wlan-green2";
+			function = LED_FUNCTION_WLAN;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&tlmm 40 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tx";
+			default-state = "off";
+		};
+
+		ledb: led-user-blue {
+			label = "unoq:user-blue1";
+			gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+
+		ledg: led-user-green {
+			label = "unoq:user-green1";
+			gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		ledr: led-user-red {
+			label = "unoq:user-red1";
+			gpios = <&tlmm 41 GPIO_ACTIVE_HIGH>;
+			color = <LED_COLOR_ID_RED>;
+		};
+	};
+
+	multi-led {
+		compatible = "leds-group-multicolor";
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_INDICATOR;
+		leds = <&ledr>, <&ledg>, <&ledb>;
+	};
+
+	/* PM4125 charger out, supplied by VBAT */
+	vph_pwr: regulator-vph-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcm2290/a702_zap.mbn";
+};
+
+&i2c0 {
+	clock-frequency = <100000>;
+
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+
+	status = "okay";
+};
+
+&pm4125_vbus {
+	regulator-min-microamp = <500000>;
+	regulator-max-microamp = <500000>;
+
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&remoteproc_adsp {
+	firmware-name = "qcom/qcm2290/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_mpss {
+	firmware-name = "qcom/qcm2290/modem.mbn";
+
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators {
+		compatible = "qcom,rpm-pm2250-regulators";
+		vdd_s3-supply = <&vph_pwr>;
+		vdd_s4-supply = <&vph_pwr>;
+		vdd_l1_l2_l3_l5_l6_l7_l8_l9_l10_l11_l12-supply = <&pm4125_s3>;
+		vdd_l4_l17_l18_l19_l20_l21_l22-supply = <&vph_pwr>;
+		vdd_l13_l14_l15_l16-supply = <&pm4125_s4>;
+
+		pm4125_s3: s3 {
+			/* 0.4V-1.6625V -> 1.3V (Power tree requirements) */
+			regulator-min-microvolt = <1352000>;
+			regulator-max-microvolt = <1352000>;
+			regulator-boot-on;
+		};
+
+		pm4125_s4: s4 {
+			/* 1.2V-2.35V -> 2.05V (Power tree requirements) */
+			regulator-min-microvolt = <2072000>;
+			regulator-max-microvolt = <2072000>;
+			regulator-boot-on;
+		};
+
+		pm4125_l2: l2 {
+			/* LPDDR4X VDD2 */
+			regulator-min-microvolt = <1136000>;
+			regulator-max-microvolt = <1136000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		pm4125_l3: l3 {
+			/* LPDDR4X VDDQ */
+			regulator-min-microvolt = <616000>;
+			regulator-max-microvolt = <616000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		pm4125_l4: l4 {
+			/* max = 3.05V -> max = 2.7 to disable 3V signaling (SDHCI2) */
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2700000>;
+			regulator-allow-set-load;
+		};
+
+		pm4125_l5: l5 {
+			/* CSI/DSI */
+			regulator-min-microvolt = <1232000>;
+			regulator-max-microvolt = <1232000>;
+			regulator-allow-set-load;
+			regulator-boot-on;
+		};
+
+		pm4125_l6: l6 {
+			/* DRAM PLL */
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <928000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		pm4125_l7: l7 {
+			/* Wi-Fi CX */
+			regulator-min-microvolt = <664000>;
+			regulator-max-microvolt = <664000>;
+		};
+
+		pm4125_l10: l10 {
+			/* Wi-Fi RFA */
+			regulator-min-microvolt = <1304000>;
+			regulator-max-microvolt = <1304000>;
+		};
+
+		pm4125_l11: l11 {
+			/* ANX7625 DVDD1P0V/AVDD1P0V */
+			regulator-min-microvolt = <1000000>;
+			regulator-max-microvolt = <1000000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+
+		pm4125_l12: l12 {
+			/* USB PHYs */
+			regulator-min-microvolt = <928000>;
+			regulator-max-microvolt = <928000>;
+			regulator-allow-set-load;
+			regulator-boot-on;
+		};
+
+		pm4125_l13: l13 {
+			/* USB/QFPROM/PLLs */
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-allow-set-load;
+			regulator-boot-on;
+		};
+
+		pm4125_l14: l14 {
+			/* SDHCI1 EMMC VCCQ */
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-allow-set-load;
+			/* Broken hardware, never turn it off! */
+			regulator-always-on;
+		};
+
+		pm4125_l15: l15 {
+			/* VDDIO */
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-allow-set-load;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		pm4125_l20: l20 {
+			/* SDHCI1 EMMC */
+			regulator-min-microvolt = <2400000>;
+			regulator-max-microvolt = <3600000>;
+			regulator-allow-set-load;
+		};
+
+		pm4125_l21: l21 {
+			/* USB HS */
+			regulator-min-microvolt = <2960000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-allow-set-load;
+			regulator-boot-on;
+		};
+
+		pm4125_l22: l22 {
+			/* Wi-Fi VDD */
+			regulator-min-microvolt = <3312000>;
+			regulator-max-microvolt = <3312000>;
+		};
+	};
+};
+
+&sdhc_1 {
+	vmmc-supply = <&pm4125_l20>;
+	vqmmc-supply = <&pm4125_l14>;
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+	pinctrl-names = "default", "sleep";
+	mmc-hs400-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	supports-cqe;
+	no-sdio;
+	no-sd;
+
+	status = "okay";
+};
+
+&spi5 {
+	status = "okay";
+
+	spidev@0 {
+		reg = <0>;
+		compatible = "arduino,unoq-mcu";
+		pinctrl-0 = <&spidev_cs>;
+		pinctrl-names = "default";
+	};
+};
+
+&tlmm {
+	spidev_cs: spidev-cs-state {
+		pins = "gpio17";
+		function = "gpio";
+		drive-strength = <16>;
+	};
+
+	jmisc_gpio18: jmisc-gpio18-state {
+		pins = "gpio18";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	jmisc_gpio28: jmisc-gpio28-state {
+		pins = "gpio28";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	key_vold_n: key-vold-n-state {
+		pins = "gpio36";
+		function = "gpio";
+		bias-pull-up;
+		output-disable;
+	};
+
+	key_volp_n: key-volp-n-state {
+		pins = "gpio96";
+		function = "gpio";
+		bias-pull-up;
+		output-disable;
+	};
+
+	jmisc_gpio98: jmisc-gpio98-state {
+		pins = "gpio98";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	jmisc_gpio99: jmisc-gpio99-state {
+		pins = "gpio99";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	jmisc_gpio100: jmisc-gpio100-state {
+		pins = "gpio100";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	jmisc_gpio101: jmisc-gpio101-state {
+		pins = "gpio101";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+/* UART connected to Bluetooth */
+&uart3 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn3988-bt";
+
+		vddio-supply = <&pm4125_l15>;
+		vddxo-supply = <&pm4125_l13>;
+		vddrf-supply = <&pm4125_l10>;
+		vddch0-supply = <&pm4125_l22>;
+		enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
+		max-speed = <3000000>;
+	};
+};
+
+/* UART exposed in JCTL */
+&uart4 {
+	compatible = "qcom,geni-debug-uart";
+
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb_hsphy {
+	vdd-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+	vdda-phy-dpdm-supply = <&pm4125_l21>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&pm4125_l12>;
+	vdda-pll-supply = <&pm4125_l13>;
+
+	status = "okay";
+};
+
+&wifi {
+	vdd-0.8-cx-mx-supply = <&pm4125_l7>;
+	vdd-1.8-xo-supply = <&pm4125_l13>;
+	vdd-1.3-rfa-supply = <&pm4125_l10>;
+	vdd-3.3-ch0-supply = <&pm4125_l22>;
+	qcom,ath10k-calibration-variant = "ArduinoImola";
+	firmware-name = "qcm2290";
+
+	status = "okay";
+};
+
+&xo_board {
+	clock-frequency = <38400000>;
+};
-- 
2.52.0


