Return-Path: <devicetree+bounces-235242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DD7C36043
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 15:19:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18863427CAB
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 14:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02F5531326B;
	Wed,  5 Nov 2025 14:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="HytKgoDh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay23-hz1.antispameurope.com (mx-relay23-hz1.antispameurope.com [94.100.132.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06CE21CFF6
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 14:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.223
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762352347; cv=pass; b=LdnAGL9m85OaTW86b9vOvsvPrzRqF6NLlbPVu2fEw6DzWz9tIAiOfb9rzwHcXD7G5EqS5Ftbvu5EOidSDfwGLTaMy1b1f9NEV6JEiqk+lKvhef+kgGKDjC8YBvlwtOaiCC/DORZ5yAKiD1WWnzOUCXJEskChZ1s3lnBqS0WXeCo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762352347; c=relaxed/simple;
	bh=YL4tVyJJgfwJUm4j9HF2PWlan25FgOm1rWzgdlw0Cqg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=LRjPyugk8YLmXEH3w9xUMLWF8U4Yhf6IB07TZ9pPtlSMw1ZfYDU3s33NojLO3QX44v21y7BO3od3B9EFXUa3jNNm1itAn34d71Q1uFERwhZ5n/tpcunJFi6WatB8ABUFX29QIxuiBLu3AL7LMBFfl3lyDYEVJLHYbPO+mQFOFqA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=HytKgoDh; arc=pass smtp.client-ip=94.100.132.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate23-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=17in0dPu1cEXsBpoGpIQO8NBNGwqAQlLqZX3FuIiHHg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762352269;
 b=HcUMEQ6m27YJ0xVHf5h6gJqM+ArUvNEsuXrnhHK5g9hV8yGJjwW4P5UmTsQp1yjCf15d88Cf
 1ZerM3r/edIN4rcsuwPeefBvlZrR/vRP4A4WxVk6og00ZMvMqkG88+45JdoziXLiGs9v7YNZpXl
 TD7F45SExLX3sVT4Qa7kTNgn/Jenp9MD1+C6IInkHLrgclBmowrDdJKrboALpsJUS7/NuIUAa3d
 B7AL/jx1dYTWzORwFCplqykHcu2EqIaN9FLN/XaIzFh1UoOERyl2gSiPVm3IuJVFw12jdT4Jgbw
 THMlw+wMHkgO/jHw+U4dMhjuj+wKLnGY76fPlZg8+3JDQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762352269;
 b=TlsqGMl/ynE+Vd+l+rn58YjPhKm7KlbdrpAwZK2WTeAGW/PzawjJaDEG/C1XcynnyLFM5mal
 ds7q693LO8E2XsrVqVLzKfG8hlMsgKHij5FA2ENz9p06Mk6S6xf7Qf7+IABU03bXka1G25WHba2
 WT9TE0Wb+wierpNb0oIaxucxHeP+jN1IgJjgOzD/EqBScsnfW/9LSNwNqlQvmPmZPXHysuwe77i
 T4qaPS1N8rmxFXWm68IBD8IWu2l4vvx5Y5UCv6PPWaelXonqe0JbPiP7C6ZMTfgJ+kKyKtvwmhs
 CdHu3IrZCVeFj6EGgtL6+q8MrQRAyGmlLgeHH42UQzzOA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay23-hz1.antispameurope.com;
 Wed, 05 Nov 2025 15:17:49 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4B688220D4A;
	Wed,  5 Nov 2025 15:17:43 +0100 (CET)
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
Subject: [PATCH v2] arm64: dts: ti: k3-am642-tqma64xxl: add boot phase tags
Date: Wed,  5 Nov 2025 15:17:26 +0100
Message-ID: <20251105141726.39579-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.2
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay23-hz1.antispameurope.com with 4d1nTg6CRtz4NP6l
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:baa9b331185fd744344aa7d6361c3463
X-cloud-security:scantime:1.822
DKIM-Signature: a=rsa-sha256;
 bh=17in0dPu1cEXsBpoGpIQO8NBNGwqAQlLqZX3FuIiHHg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762352268; v=1;
 b=HytKgoDhZTdgCY9bowpD0H07IeHmv1LHuVDMdDVzQ1x6iwX+6vMlTm8GUfNN2ztm4o3DvtSq
 CoPvcL8n0yPXpMw3zjfjcuVF/L2dsMEIh8tAKWOZPq3RzCjDVHTlHBcyc6O+fZcWtGqcbPfO5Z9
 LA2y1UxWnTLK972dYOz/KSBkGB4YKTfwdqIjjRUejSmMHW1NTuqoboUJi9n8e0UCrjIY87C7vtU
 KjxifJ1scYj5jkvvO6c2dzWDPurGXIxdKUppFJ9FZkU4JRAHPrDnnVdbIS86Ucs6wZ4Izxpz2p5
 4mLmmWpAQ7bs9lKBnX3aCx66F0yvajVyterzwuwuSk3CQ==

Similar to other AM64x-based boards, add boot phase tags to make the
Device Trees usable for firmware/bootloaders without modification.

Supported boot devices are eMMC/SD card, SPI-NOR and USB (both mass
storage and DFU). The I2C EEPROM is included to allow the firmware to
select the correct RAM configuration for different TQMa64xxL variants.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---

v2: order boot phase tags after other standard properties

 .../dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts     | 18 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi | 15 +++++++++++++--
 2 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index 8f64d6272b1ba..7a69e729eae84 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -175,6 +175,7 @@ reg_sd: regulator-sd {
 		regulator-max-microvolt = <3300000>;
 		gpio = <&main_gpio1 43 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		bootph-all;
 	};
 };
 
@@ -260,6 +261,7 @@ &main_gpio0 {
 		"", "", "STATUS_OUT_3", "EN_DIG_OUT_4", /* 32-35 */
 		"", "", "STATUS_OUT_4", "DIG_IN_1", /* 36-39 */
 		"DIG_IN_2", "DIG_IN_3", "DIG_IN_4"; /* 40- */
+	bootph-all;
 };
 
 &main_gpio1 {
@@ -285,6 +287,7 @@ &main_gpio1 {
 		"", "", "", "", /* 60-63 */
 		"", "", "", "ADC_INT#", /* 64-67 */
 		"BG95_PWRKEY", "BG95_RESET"; /* 68- */
+	bootph-all;
 
 	line50-hog {
 		/* See also usb0 */
@@ -334,6 +337,7 @@ &main_spi0 {
 &main_uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_uart0_pins>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -493,6 +497,11 @@ &mcu_uart1 {
 
 &serdes_ln_ctrl {
 	idle-states = <AM64_SERDES0_LANE0_USB>;
+	bootph-all;
+};
+
+&serdes_refclk {
+	bootph-all;
 };
 
 &serdes0 {
@@ -500,6 +509,7 @@ serdes0_usb_link: phy@0 {
 		reg = <0>;
 		#phy-cells = <0>;
 		resets = <&serdes_wiz0 1>;
+		bootph-all;
 		cdns,num-lanes = <1>;
 		cdns,phy-type = <PHY_TYPE_USB3>;
 	};
@@ -512,6 +522,7 @@ &sdhci1 {
 	cd-gpios = <&main_gpio1 77 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-mmc;
+	bootph-all;
 	ti,fails-without-test-cd;
 	/* Enabled by overlay */
 };
@@ -535,9 +546,11 @@ &usb0 {
 	maximum-speed = "super-speed";
 	phys = <&serdes0_usb_link>;
 	phy-names = "cdns3,usb3-phy";
+	bootph-all;
 };
 
 &usbss0 {
+	bootph-all;
 	ti,vbus-divider;
 };
 
@@ -625,6 +638,7 @@ main_gpio0_hog_pins: main-gpio0-hog-pins {
 			/* (P19) GPMC0_CSn2.GPIO0_43 - MMC1_CTRL */
 			AM64X_IOPAD(0x00b0, PIN_OUTPUT, 7)
 		>;
+		bootph-all;
 	};
 
 	main_gpio1_hog_pins: main-gpio1-hog-pins {
@@ -748,6 +762,7 @@ AM64X_IOPAD(0x0298, PIN_INPUT, 7)
 			/* (#N/A) MMC1_CLKLB */
 			AM64X_IOPAD(0x0290, PIN_INPUT, 0)
 		>;
+		bootph-all;
 	};
 
 	main_mmc1_reg_pins: main-mmc1-reg-pins {
@@ -755,6 +770,7 @@ main_mmc1_reg_pins: main-mmc1-reg-pins {
 			/* (C13) SPI0_CS1.GPIO1_43 - MMC1_SD_EN */
 			AM64X_IOPAD(0x020c, PIN_OUTPUT, 7)
 		>;
+		bootph-all;
 	};
 
 	main_mmc1_wifi_pwrseq_pins: main-mmc1-wifi-pwrseq-pins {
@@ -797,6 +813,7 @@ AM64X_IOPAD(0x0230, PIN_INPUT, 0)
 			/* (C16) UART0_TXD */
 			AM64X_IOPAD(0x0234, PIN_OUTPUT, 0)
 		>;
+		bootph-pre-ram;
 	};
 
 	main_uart1_pins: main-uart1-pins {
@@ -865,6 +882,7 @@ main_usb0_pins: main-usb0-pins {
 			/* (E19) USB0_DRVVBUS */
 			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0)
 		>;
+		bootph-all;
 	};
 
 	pru_icssg1_mdio_pins: pru-icssg1-mdio-pins {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
index ff3b2e0b8dd45..dde19d0784e31 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
@@ -17,7 +17,7 @@ memory@80000000 {
 		device_type = "memory";
 		/* 1G RAM - default variant */
 		reg = <0x00000000 0x80000000 0x00000000 0x40000000>;
-
+		bootph-pre-ram;
 	};
 
 	reserved_memory: reserved-memory {
@@ -54,10 +54,15 @@ reg_1v8: regulator-1v8 {
 	};
 };
 
+&fss {
+	bootph-all;
+};
+
 &main_i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c0_pins>;
 	clock-frequency = <400000>;
+	bootph-pre-ram;
 	status = "okay";
 
 	tmp1075: temperature-sensor@4a {
@@ -72,6 +77,7 @@ eeprom0: eeprom@50 {
 		vcc-supply = <&reg_1v8>;
 		pagesize = <16>;
 		read-only;
+		bootph-pre-ram;
 	};
 
 	pcf85063: rtc@51 {
@@ -89,9 +95,10 @@ eeprom1: eeprom@54 {
 };
 
 &ospi0 {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ospi0_pins>;
+	bootph-all;
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -99,6 +106,7 @@ flash@0 {
 		spi-tx-bus-width = <8>;
 		spi-rx-bus-width = <8>;
 		spi-max-frequency = <84000000>;
+		bootph-all;
 		cdns,tshsl-ns = <60>;
 		cdns,tsd2d-ns = <60>;
 		cdns,tchsh-ns = <60>;
@@ -121,6 +129,7 @@ &sdhci0 {
 	disable-wp;
 	no-sdio;
 	no-sd;
+	bootph-all;
 	ti,driver-strength-ohm = <50>;
 };
 
@@ -132,6 +141,7 @@ AM64X_IOPAD(0x0260, PIN_INPUT_PULLUP, 0)
 			/* (B18) I2C0_SDA */
 			AM64X_IOPAD(0x0264, PIN_INPUT_PULLUP, 0)
 		>;
+		bootph-pre-ram;
 	};
 
 	ospi0_pins: ospi0-pins {
@@ -159,6 +169,7 @@ AM64X_IOPAD(0x0028, PIN_INPUT, 0)
 			/* (N19) OSPI0_DQS */
 			AM64X_IOPAD(0x0008, PIN_INPUT, 0)
 		>;
+		bootph-all;
 	};
 };
 
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


