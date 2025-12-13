Return-Path: <devicetree+bounces-246274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A21CBB4B3
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53E9330204B1
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 23:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC472FE05D;
	Sat, 13 Dec 2025 23:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jb9c+eNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575202F5A00
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 23:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765667378; cv=none; b=aerf5ZqCcnqb+12kuv2VTFKZlk2p10Vz3JveqJAw66rUajDjigHKkq3QQO8F2tj1dJM6AdVpL2A2MUC3g1Yyosw07aS1I5/nZ6NHuLEUWB0ApIGmnkLwBACDHaW3t5flySHePKzQH2fUJutTEJyLrcTE9FQ3Ty94pWSROGVttfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765667378; c=relaxed/simple;
	bh=U2v18UmYXyxRxgSLu2UXhhvB7Fp9+l3tnd1CGMr8Mmc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YFv6v/z9SodTKjLQ2yAZ3QscTmgxfyTZXQNE0J3GzSMns0wc8w6n1n0miDTpHcNeWGk45dZKw6N4R6sLre+MGENSoQdRmxNBJG5bMNeRf/j5hiRmP2aJiGmqtzdJeN0OYkpxgLmxyMxKCcI7bFHhgqn3GdYwk+Y9VRvP0sbqs6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jb9c+eNp; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so29336415e9.1
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 15:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765667373; x=1766272173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLiAHdwLrrTtAb7WXEO2B+WkLRD0WKuXCR00+TEvVdI=;
        b=Jb9c+eNpFmropeHN0wpBSaZHipd8CJ8aUpuqHxvkbGmqHf1rDeF7ds8z+JwHRelcmO
         zibRCO+WJjL37rJof9eDf84COZjELiCWC8qJc0OwqyZn/U33Ro7r7fk2snFRO1FbQoV8
         xPJRlCJPQTpF0d131xyFn6Nik7O2DrRzdYl9iT8unxwClpkcEtU+2CdbTem0a8NTLKvf
         Q/93+ar/LBJP1Eb5FcLV2c7d26y66jtM3tashzSDprCNuxvagQGMfEh/UG5QH5O3Vh42
         YWQyDiawleKLEwWlaYf7S+dYfIHSDoIKyIZUPiQR1xkjRfybbKmoA36VEQ3UrO4FqhYM
         Y0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765667373; x=1766272173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iLiAHdwLrrTtAb7WXEO2B+WkLRD0WKuXCR00+TEvVdI=;
        b=EQdCJrui3xsVzSRcYRjGtkCzTm2ylG2Jfe9IyqfeVsr7Um0JShCoOVcJjLA2lFIOo7
         WdJov1eFKxvgPLWd9Xbt5pFZMcKkC7A7KcjCnDDUYblELzy9yrnYmmeBqxHqjPzqB2iW
         LAMeYKxnb4V5s0Z0gt/2npZE7/WA+SQARLVQqdIG1k5eQ/HbHDsj+yOS3MB7IYmO/3NG
         MT9HqiptlCdBHqITM0ZtXOzvcS3eNTPsld336VoJkOav3aC2f+glqeNH5k65ktZxIDl4
         hUK1Q0uIFW8tgWJvbCAKh6JhkAeBO0XhS2aSSQrTih/DkLQ12mUgwXIEzaU/voSWkCwt
         1BYA==
X-Gm-Message-State: AOJu0Yw6asmSvrd0ukFX3SPzYCdb0ygSY+BWJp1PIX4HXahcN+ji8wMo
	xq6+knEodPnRESIuu1oORM+jpmRtUOdPa5Kv7ThGY7TwzKoGEHe30KrVeorHjpho
X-Gm-Gg: AY/fxX4Cl5zNQmPgYH9OCxmYL2hr6cUMguOHBmV4z7NlcCKG6u/KfYU9byfA7e7v7aG
	bE6h1S7a/zi1Dk5NByTLhzHq/4gxcYOiyk+Vi50zRAVORvLklu/ncDg2l5T9r7l0s9ybHYPnwxv
	Z3Oz0mtGUTN2V8NfmjFlzq7a2Nw0btb+UWMsbGwbnu/H9S3RDo6Jd27HNvNyBApadmp0eoo3vE3
	+mV8rhU0SoqpulsrXHFO0iQdMVlFxPI7JsCY2Qo/Ubzm7NBiZ6VYvFV3dfgMvGzsRtaelzTRsNm
	Lzvj6vRopA/ijoszSVMfJkgyZp6IBx+kSFaxjHyhY4cyPt5AvIW9tYNuievHZETrXT+s4BfDnqv
	jIVpWC6nqJoZkHXRarGckTa5qrDYB3a0L0sO6OsXUXa5zppOt2ncDm2Ev5AomqBovwbSUcxr4tZ
	VfAD5JPUn1MizfGAk763d4kaYu26lr/O3/hBMHniUcAY2FnhFLf7/jEhLOvZ7G3/bliSYDPiXb8
	bNfNIuGruO8CS8=
X-Google-Smtp-Source: AGHT+IH6niwXjGSgeBp3K1O2l+qN5cvu2ukCARvoS/8//WHx6xKUmx0WGHddFj4pGChWigbfy7f/Wg==
X-Received: by 2002:a05:600d:7:b0:475:dd7f:f6cd with SMTP id 5b1f17b1804b1-47a932e5731mr43201845e9.35.1765667373091;
        Sat, 13 Dec 2025 15:09:33 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-5.cust.vodafonedsl.it. [5.94.28.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4f4150sm106040995e9.11.2025.12.13.15.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 15:09:32 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/6] arm64: dts: imx8mp-var-som: Add WiFi and Bluetooth support
Date: Sun, 14 Dec 2025 00:09:04 +0100
Message-ID: <20251213230909.16810-5-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251213230909.16810-1-stefano.r@variscite.com>
References: <20251213230909.16810-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree nodes for the WiFi and Bluetooth module mounted on the
VAR-SOM-MX8MP. The module can be based on either the NXP IW612 or IW611
chipset, depending on the configuration chosen by the customer.

Regardless of the chipset used, WiFi communicates over SDIO and Bluetooth
over UART.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../boot/dts/freescale/imx8mp-var-som.dtsi    | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
index 5bba91dcef17..e7f5ec10cbac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som.dtsi
@@ -21,6 +21,15 @@ memory@40000000 {
 		      <0x1 0x00000000 0 0xc0000000>;
 	};
 
+	iw61x_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <10000>;
+		reset-gpios = <&gpio2 8 GPIO_ACTIVE_LOW>, /* WIFI_RESET */
+			      <&gpio2 19 GPIO_ACTIVE_LOW>; /* WIFI_PWR_EN */
+		status = "okay";
+	};
+
 	reg_phy_supply: regulator-phy-supply {
 		compatible = "regulator-fixed";
 		regulator-name = "phy-supply";
@@ -202,6 +211,33 @@ ldo5: LDO5 {
 	};
 };
 
+/* BT */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>, <&pinctrl_bluetooth>;
+	assigned-clocks = <&clk IMX8MP_CLK_UART3>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
+};
+
+/* WIFI */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_wifi>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_wifi>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_wifi>;
+	bus-width = <4>;
+	non-removable;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&iw61x_pwrseq>;
+	status = "okay";
+};
+
 /* eMMC */
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
@@ -222,6 +258,14 @@ &wdog1 {
 
 &iomuxc {
 
+	pinctrl_bluetooth: bluetoothgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09                              0xc0
+			MX8MP_IOMUXC_GPIO1_IO04__GPIO1_IO04                             0xc0
+			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10                            0xc0
+		>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
@@ -256,6 +300,48 @@ MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04				0x1c0
 		>;
 	};
 
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_ECSPI1_SCLK__UART3_DCE_RX                          0x140
+			MX8MP_IOMUXC_ECSPI1_MOSI__UART3_DCE_TX                          0x140
+			MX8MP_IOMUXC_ECSPI1_MISO__UART3_DCE_CTS                         0x140
+			MX8MP_IOMUXC_ECSPI1_SS0__UART3_DCE_RTS                          0x140
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x190
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d0
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d0
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x194
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d4
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d4
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d4
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK                                0x196
+			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD                                0x1d6
+			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2                            0x1d6
+			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3                            0x1d6
+		>;
+	};
+
 	pinctrl_usdhc3: usdhc3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
@@ -309,4 +395,11 @@ pinctrl_wdog: wdoggrp {
 			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B				0xc6
 		>;
 	};
+
+	pinctrl_wifi: wifigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD1_DATA6__GPIO2_IO08                              0xc0
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19                            0xc0
+		>;
+	};
 };
-- 
2.47.3


