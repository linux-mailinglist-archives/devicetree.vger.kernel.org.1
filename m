Return-Path: <devicetree+bounces-223788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 121CCBBD81B
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFF103B6E89
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC4B2101AE;
	Mon,  6 Oct 2025 09:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="UkdsGKcs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay95-hz2.antispameurope.com (mx-relay95-hz2.antispameurope.com [94.100.136.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3E20B80B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759744327; cv=pass; b=JRkH0/k/pXnZCodc+Hy1PrShgSMhJ2vtyfZTOMCq2kovXaPTD62gZfVU8u0oKYV1I3a3dDgN4vsM/7yNWFeX/+dwEdnv3PSUl6KjZr5JuFr0Dna01SGe8rtEYyxoHZORT1QSEkskxmENCdPJO1w0E0Lp7t3hjlAm/ha7EBXZtp8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759744327; c=relaxed/simple;
	bh=j3WCsairq1WgCQgA3EtS8OrUwtY6E+K5lC9wJPKVWtE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Y8E9duBVEodN+SDG9aOMPuYlz2ffLz47bXPiCnMnJL+JE24WhBsPZ3KJGWp6uiq/GZ2tNeukoOOXYiCKcGc39o/RTyw+QXfejps6wKZEY1nCnF5aG44Szumy+pHzp/x5S0AU3HQ/aWqc6AKUxCD2BwMkQMaWeg6u0GyQdA+QEsY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=UkdsGKcs; arc=pass smtp.client-ip=94.100.136.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate95-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=ZrFYIzPuk9rtzNXWXOQAERqhNp/BdwtufnfrutqIGq8=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1759744263;
 b=oCODfywvY01m/OTJuxJqFm3VBzvn8VpkYidhKiRMxvjKShInykC2puR66ETa1RtbnY3prefC
 T/2SzGW14bcs4HGm+UyWdwdPXtto0KnSSoGHQQCxUOBPXVyFpIWDTvZmgRIYXpZG7HNdTWZT4e3
 hzoq+73Wr/utwLyhcy7rwcpSfem6jRUMc/eBsP4a7mvFaxBOEG3ISAGF/WqOTGpww4lGi//3Yun
 vUk3wO+8bG64Z1yjT8pqPNVzz2NIObWisj9JWrq3qBuMFrBjPqNUczJcMxdosN6I22QgV5QQDl+
 llD+1wywbZhxo1XrfFg3/dOPlU0CQ5I2SFtX8nBmDDHoA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1759744263;
 b=NVzcyLVXJWgo3GAbZHl0RVgeQSZpkCjRWl1nUEVvO5WJ3k5Id6/8Mm42SCZTXfUPLEUr8jMM
 DBtOjG7LUC4ENOlWBbaHQbnwTcTn5DjlXr/jHdQfIK8IhWnuc1reRRSevZZJiLjXV8djR3kr5ZS
 ByWvPvbpVeD78pLFGOlzwp2oOTe2w44Fr0maMKZj+kR+CWd71JwN32lKW0WmlQOWAUzwuip+3iD
 tJOZEk/tKylj4Cr61ZUyvVOe5YCItKljNWq77MU9vL7Kg1DWMtIdAIyy+94dxiMO6R/mPm7Iu9c
 hjuJdi+WQF1Bstanofg9SiVGRsaPU65R6cWlsXadtQ5hw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay95-hz2.antispameurope.com;
 Mon, 06 Oct 2025 11:51:02 +0200
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 279CFA4070E;
	Mon,  6 Oct 2025 11:50:57 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH] arm64: dts: ti: k3-am642-tqma64xxl: add boot phase tags
Date: Mon,  6 Oct 2025 11:50:36 +0200
Message-ID: <20251006095036.16367-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay95-hz2.antispameurope.com with 4cgDzj62dxz2Dj9k
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:a80b39d10b8b7722f74fa46e8949e3b1
X-cloud-security:scantime:1.793
DKIM-Signature: a=rsa-sha256;
 bh=ZrFYIzPuk9rtzNXWXOQAERqhNp/BdwtufnfrutqIGq8=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1759744262; v=1;
 b=UkdsGKcsLpL318NYfDgqlLvGICF7YQMu0uF7WAO2AGiXnkZAaEJrorPIKOJEBJ1LymMBXNZW
 Ddrrvoc3uIPhlHw9s9AhjGGCbq7h/Ky5UfPdhZe7mUdlcoL8zFFNc9UgwDwQYKA9yi8qrMZniTG
 Yk1mTXbRvrY06yDzgKOFOYdgP25eaykAIc6GKh40tRfmJS2RQqbP5o/FmL+ipha7o5+T+D2oyB+
 vLy3V25nuxme9TGiorGgn1beRgCtp7PZ8mcqgJbEV4E2NYEbPFs6IABEOhXjdZ7EOPTcKA/BIuh
 sBZDVD+MTTRIPxHvC6yYf0SM8qMORJy6O1L+13+2lFWjQ==

Similar to other AM64x-based boards, add boot phase tags to make the
Device Trees usable for firmware/bootloaders without modification.

Supported boot devices are eMMC/SD card, SPI-NOR and USB (both mass
storage and DFU). The I2C EEPROM is included to allow the firmware to
select the correct RAM configuration for different TQMa64xxL variants.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 .../dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts     | 18 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi | 12 ++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index 8f64d6272b1ba..81e9e047281fd 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -167,6 +167,7 @@ reg_pwm_fan: regulator-pwm-fan {
 	};
 
 	reg_sd: regulator-sd {
+		bootph-all;
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
 		pinctrl-0 = <&main_mmc1_reg_pins>;
@@ -245,6 +246,7 @@ icssg1_phy0c: ethernet-phy@c {
 
 
 &main_gpio0 {
+	bootph-all;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_gpio0_digital_pins>,
 		    <&main_gpio0_hog_pins>;
@@ -263,6 +265,7 @@ &main_gpio0 {
 };
 
 &main_gpio1 {
+	bootph-all;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_gpio1_hog_pins>,
 		    <&main_gpio1_pru_pins>;
@@ -332,6 +335,7 @@ &main_spi0 {
 
 /* UART/USB adapter port 1 */
 &main_uart0 {
+	bootph-pre-ram;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_uart0_pins>;
 	status = "okay";
@@ -492,11 +496,17 @@ &mcu_uart1 {
 };
 
 &serdes_ln_ctrl {
+	bootph-all;
 	idle-states = <AM64_SERDES0_LANE0_USB>;
 };
 
+&serdes_refclk {
+	bootph-all;
+};
+
 &serdes0 {
 	serdes0_usb_link: phy@0 {
+		bootph-all;
 		reg = <0>;
 		#phy-cells = <0>;
 		resets = <&serdes_wiz0 1>;
@@ -506,6 +516,7 @@ serdes0_usb_link: phy@0 {
 };
 
 &sdhci1 {
+	bootph-all;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins>;
 	bus-width = <4>;
@@ -524,6 +535,7 @@ adc {
 };
 
 &usb0 {
+	bootph-all;
 	/*
 	 * The CDNS USB driver currently doesn't support overcurrent GPIOs,
 	 * so there is no overcurrent detection. The OC pin is configured
@@ -538,6 +550,7 @@ &usb0 {
 };
 
 &usbss0 {
+	bootph-all;
 	ti,vbus-divider;
 };
 
@@ -621,6 +634,7 @@ AM64X_IOPAD(0x00ac, PIN_INPUT, 7)
 	};
 
 	main_gpio0_hog_pins: main-gpio0-hog-pins {
+		bootph-all;
 		pinctrl-single,pins = <
 			/* (P19) GPMC0_CSn2.GPIO0_43 - MMC1_CTRL */
 			AM64X_IOPAD(0x00b0, PIN_OUTPUT, 7)
@@ -730,6 +744,7 @@ AM64X_IOPAD(0x0258, PIN_OUTPUT, 0)
 	};
 
 	main_mmc1_pins: main-mmc1-pins {
+		bootph-all;
 		pinctrl-single,pins = <
 			/* (J19) MMC1_CMD */
 			AM64X_IOPAD(0x0294, PIN_INPUT, 0)
@@ -751,6 +766,7 @@ AM64X_IOPAD(0x0290, PIN_INPUT, 0)
 	};
 
 	main_mmc1_reg_pins: main-mmc1-reg-pins {
+		bootph-all;
 		pinctrl-single,pins = <
 			/* (C13) SPI0_CS1.GPIO1_43 - MMC1_SD_EN */
 			AM64X_IOPAD(0x020c, PIN_OUTPUT, 7)
@@ -791,6 +807,7 @@ AM64X_IOPAD(0x026c, PIN_INPUT, 7)
 	};
 
 	main_uart0_pins: main-uart0-pins {
+		bootph-pre-ram;
 		pinctrl-single,pins = <
 			/* (D15) UART0_RXD */
 			AM64X_IOPAD(0x0230, PIN_INPUT, 0)
@@ -861,6 +878,7 @@ AM64X_IOPAD(0x0088, PIN_OUTPUT, 2)
 	};
 
 	main_usb0_pins: main-usb0-pins {
+		bootph-all;
 		pinctrl-single,pins = <
 			/* (E19) USB0_DRVVBUS */
 			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0)
diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
index ff3b2e0b8dd45..a78297b9fa57e 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
@@ -14,6 +14,7 @@ aliases {
 	};
 
 	memory@80000000 {
+		bootph-pre-ram;
 		device_type = "memory";
 		/* 1G RAM - default variant */
 		reg = <0x00000000 0x80000000 0x00000000 0x40000000>;
@@ -54,7 +55,12 @@ reg_1v8: regulator-1v8 {
 	};
 };
 
+&fss {
+	bootph-all;
+};
+
 &main_i2c0 {
+	bootph-pre-ram;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c0_pins>;
 	clock-frequency = <400000>;
@@ -67,6 +73,7 @@ tmp1075: temperature-sensor@4a {
 	};
 
 	eeprom0: eeprom@50 {
+		bootph-pre-ram;
 		compatible = "st,24c02", "atmel,24c02";
 		reg = <0x50>;
 		vcc-supply = <&reg_1v8>;
@@ -89,11 +96,13 @@ eeprom1: eeprom@54 {
 };
 
 &ospi0 {
+	bootph-all;
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ospi0_pins>;
 
 	flash@0 {
+		bootph-all;
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-tx-bus-width = <8>;
@@ -116,6 +125,7 @@ partitions {
 };
 
 &sdhci0 {
+	bootph-all;
 	status = "okay";
 	non-removable;
 	disable-wp;
@@ -126,6 +136,7 @@ &sdhci0 {
 
 &main_pmx0 {
 	main_i2c0_pins: main-i2c0-pins {
+		bootph-pre-ram;
 		pinctrl-single,pins = <
 			/* (A18) I2C0_SCL */
 			AM64X_IOPAD(0x0260, PIN_INPUT_PULLUP, 0)
@@ -135,6 +146,7 @@ AM64X_IOPAD(0x0264, PIN_INPUT_PULLUP, 0)
 	};
 
 	ospi0_pins: ospi0-pins {
+		bootph-all;
 		pinctrl-single,pins = <
 			/* (N20) OSPI0_CLK */
 			AM64X_IOPAD(0x0000, PIN_OUTPUT, 0)
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


