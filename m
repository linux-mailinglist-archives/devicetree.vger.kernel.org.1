Return-Path: <devicetree+bounces-23981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9175C80D1B4
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08F2CB20E41
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6122F4CB45;
	Mon, 11 Dec 2023 16:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iUxX309n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0257FB3;
	Mon, 11 Dec 2023 08:29:06 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1d075392ff6so36017035ad.1;
        Mon, 11 Dec 2023 08:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702312145; x=1702916945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hxWUlJ/fsih7z8KLCsAaevRdaOr0kJuQhRdw0mzKA4=;
        b=iUxX309nwnYAYbeb8IXzGQpTKLPzS2SO9oZ/8BFVzmsuMiEKlorNxjrCsamr3e0HMc
         GaxjcmAARmAOEfWrx9XftQViZ0FJ9WHJFr9g8gaPDjZLYTlBKYh8RQDspmi9XVpcTFys
         Kfnlq/xI22SrR7gp2Slz1N1X/bexwONBe84XetxXyQDPRfWZ8QShOuqehJYSXW9krozn
         pda2v3a3HkxWkD3T80ZBZuwt/0EnpUJtv3AGCC78QXrU8JHdym6U8vTrDDU9jkXt0wAb
         Dc/pwCTMnUd8CkpvWx2yoxP96ooflszMPcW/rx+Ec+RnnDDLZj9q+cbMLRFplifJh0TM
         AKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702312145; x=1702916945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2hxWUlJ/fsih7z8KLCsAaevRdaOr0kJuQhRdw0mzKA4=;
        b=nW5u3S48UozX6RaDCA2aG8N2Prk3dgDVg2Mmz27b2dEaPptvELrdDf1Y4P+rjiJw1k
         f612q+c3jkYcrGZyhCNXEvtWs76Yw0MLXASSflPjADuOUTMN+UQUQZ7E4z3/xnLuVC5z
         tlLncPdy/EqhMSVw+iUe9BFN4+luZJcDD7f4tJMezlgmE1fX7UXqB2j4zpG4olZ6riHA
         R/fp5OXJVP83iLfrdkauKRXpNhGKWKoh6lNw53EzbWkhOOAab3hJdA5My1yXW/yi+qxw
         uQdaEbxEaCgC0iEIspOYd2oYhM2+3QIo8eXQE8uJ+ES2yVyyr+AvFkTs889zJGQrmdLW
         JU9A==
X-Gm-Message-State: AOJu0Ywm4YLyJzWs6n+jmjJCIcgZ01iCw2aRiLsfD1jfc4840OBqLX2W
	rIjYlO39J8TEJdI+BHyXZKw=
X-Google-Smtp-Source: AGHT+IFwkI0LljnblpGkYub+O9CdpaZ6aQri/WzkJKTXKwszigvzyfF25Ra74gT4v8aflutDlSO+tw==
X-Received: by 2002:a17:902:6546:b0:1d0:891f:986d with SMTP id d6-20020a170902654600b001d0891f986dmr4489527pln.3.1702312145332;
        Mon, 11 Dec 2023 08:29:05 -0800 (PST)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id ja1-20020a170902efc100b001d04c097d1esm6867888plb.271.2023.12.11.08.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:29:05 -0800 (PST)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/2] ARM: dts: aspeed: Harma: Add Meta Harma (AST2600) BMC
Date: Tue, 12 Dec 2023 00:26:55 +0800
Message-Id: <20231211162656.2564267-3-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211162656.2564267-1-peteryin.openbmc@gmail.com>
References: <20231211162656.2564267-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add linux device tree entry related to
the Meta(Facebook) computer-node system use an AT2600 BMC.
This node is named "Harma".

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 585 ++++++++++++++++++
 2 files changed, 586 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 23cbc7203a8e..92ba3208d2a2 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -19,6 +19,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-facebook-fuji.dtb \
 	aspeed-bmc-facebook-galaxy100.dtb \
 	aspeed-bmc-facebook-greatlakes.dtb \
+	aspeed-bmc-facebook-harma.dtb \
 	aspeed-bmc-facebook-minipack.dtb \
 	aspeed-bmc-facebook-tiogapass.dtb \
 	aspeed-bmc-facebook-wedge40.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
new file mode 100644
index 000000000000..7db3f9eb0016
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -0,0 +1,585 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2023 Facebook Inc.
+
+/dts-v1/;
+#include "aspeed-g6.dtsi"
+#include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/i2c/i2c.h>
+
+/ {
+	model = "Facebook Harma";
+	compatible = "facebook,harma-bmc", "aspeed,ast2600";
+
+	aliases {
+		serial0 = &uart1;
+		serial1 = &uart6;
+		serial2 = &uart2;
+		serial4 = &uart5;
+
+		i2c20 = &imux20;
+		i2c21 = &imux21;
+		i2c22 = &imux22;
+		i2c23 = &imux23;
+		i2c24 = &imux24;
+		i2c25 = &imux25;
+		i2c26 = &imux26;
+		i2c27 = &imux27;
+		i2c28 = &imux28;
+		i2c29 = &imux29;
+		i2c30 = &imux30;
+		i2c31 = &imux31;
+	};
+
+	chosen {
+		stdout-path = &uart5;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x80000000>;
+	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 0>, <&adc0 1>, <&adc0 2>, <&adc0 3>,
+			      <&adc0 4>, <&adc0 5>, <&adc0 6>, <&adc0 7>,
+			      <&adc1 2>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "bmc_heartbeat_amber";
+			gpios = <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-1 {
+			label = "fp_id_amber";
+			default-state = "off";
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			label = "power_blue";
+			default-state = "off";
+			gpios = <&gpio0 124 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+// HOST BIOS Debug
+&uart1 {
+	status = "okay";
+};
+
+// SOL Host Console
+&uart2 {
+	status = "okay";
+	pinctrl-0 = <>;
+};
+
+// SOL BMC Console
+&uart4 {
+	status = "okay";
+	pinctrl-0 = <>;
+};
+
+// BMC Debug Console
+&uart5 {
+	status = "okay";
+};
+
+// MTIA
+&uart6 {
+	status = "okay";
+};
+
+&uart_routing {
+	status = "okay";
+};
+
+&vuart1 {
+	status = "okay";
+};
+
+&wdt1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdtrst1_default>;
+	aspeed,reset-type = "soc";
+	aspeed,external-signal;
+	aspeed,ext-push-pull;
+	aspeed,ext-active-high;
+	aspeed,ext-pulse-duration = <256>;
+};
+
+&mac3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rmii4_default>;
+	use-ncsi;
+	mlx,multi-host;
+};
+
+&rtc {
+	status = "okay";
+};
+
+&fmc {
+	status = "okay";
+
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-max-frequency = <50000000>;
+#include "openbmc-flash-layout-128.dtsi"
+	};
+
+	flash@1 {
+		status = "okay";
+		m25p,fast-read;
+		label = "alt-bmc";
+		spi-max-frequency = <50000000>;
+	};
+};
+
+// BIOS Flash
+&spi2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spi2_default>;
+
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "pnor";
+		spi-max-frequency = <12000000>;
+		spi-tx-bus-width = <2>;
+		spi-rx-bus-width = <2>;
+	};
+};
+
+&kcs2 {
+	status = "okay";
+	aspeed,lpc-io-reg = <0xca8>;
+};
+
+&kcs3 {
+	status = "okay";
+	aspeed,lpc-io-reg = <0xca2>;
+};
+
+&i2c0 {
+	status = "okay";
+
+	max31790@30{
+		compatible = "max31790";
+		reg = <0x30>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	tmp75@4b {
+		compatible = "ti,tmp75";
+		reg = <0x4b>;
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	max31790@30{
+		compatible = "max31790";
+		reg = <0x30>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&i2c3 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9543";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		imux20: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+			//Retimer Flash
+			eeprom@50 {
+				compatible = "atmel,24c2048";
+				reg = <0x50>;
+				pagesize = <128>;
+			};
+		};
+		imux21: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+	};
+};
+
+&i2c4 {
+	status = "okay";
+	// PDB FRU
+	eeprom@52 {
+		compatible = "atmel,24c64";
+		reg = <0x52>;
+	};
+
+	delta_brick@69 {
+		compatible = "pmbus";
+		reg = <0x69>;
+	};
+};
+
+&i2c5 {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9543";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		imux22: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+		imux23: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+	};
+};
+
+&i2c7 {
+	status = "okay";
+};
+
+&i2c8 {
+	status = "okay";
+};
+
+&i2c9 {
+	status = "okay";
+
+	gpio@30 {
+		compatible = "nxp,pca9555";
+		reg = <0x30>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+	gpio@31 {
+		compatible = "nxp,pca9555";
+		reg = <0x31>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	i2c-mux@71 {
+		compatible = "nxp,pca9546";
+		reg = <0x71>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		imux24: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+		imux25: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+		imux26: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+		imux27: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+	};
+	// PTTV FRU
+	eeprom@52 {
+		compatible = "atmel,24c64";
+		reg = <0x52>;
+	};
+};
+
+&i2c11 {
+	status = "okay";
+};
+
+&i2c12 {
+	status = "okay";
+};
+
+&i2c13 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9545";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		imux28: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+		imux29: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+			//MB FRU
+			eeprom@54 {
+				compatible = "atmel,24c64";
+				reg = <0x54>;
+			};
+		};
+		imux30: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+		imux31: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+	};
+};
+
+// To Debug card
+&i2c14 {
+	status = "okay";
+	multi-master;
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
+};
+
+&i2c15 {
+	status = "okay";
+
+	// SCM FRU
+	eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+	};
+
+	// BSM FRU
+	eeprom@56 {
+		compatible = "atmel,24c64";
+		reg = <0x56>;
+	};
+};
+
+&adc0 {
+	aspeed,int-vref-microvolt = <2500000>;
+	status = "okay";
+	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
+		&pinctrl_adc2_default &pinctrl_adc3_default
+		&pinctrl_adc4_default &pinctrl_adc5_default
+		&pinctrl_adc6_default &pinctrl_adc7_default>;
+};
+
+&adc1 {
+	aspeed,int-vref-microvolt = <2500000>;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc10_default>;
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&gpio0 {
+	pinctrl-names = "default";
+	gpio-line-names =
+	/*A0-A7*/	"","","","","","","","",
+	/*B0-B7*/	"","","","",
+			"bmc-spi-mux-select-0","led-identify","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"","","sol-uart-select","","","","","",
+	/*E0-E7*/	"","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","","","","","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"led-postcode-0","led-postcode-1",
+			"led-postcode-2","led-postcode-3",
+			"led-postcode-4","led-postcode-5",
+			"led-postcode-6","led-postcode-7",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"power-button","power-host-control",
+			"reset-button","","led-power","","","",
+	/*Q0-Q7*/	"","","","","","","","",
+	/*R0-R7*/	"","","","","","","","",
+	/*S0-S7*/	"","","","","","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","led-identify-gate","",
+	/*V0-V7*/	"","","","",
+			"rtc-battery-voltage-read-enable","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","";
+};
+
+&sgpiom0 {
+	status = "okay";
+	max-ngpios = <128>;
+	ngpios = <128>;
+	bus-frequency = <2000000>;
+	gpio-line-names =
+	/*in - out - in - out */
+	/*A0-A3 line 0-7*/
+	"presence-scm-cable","power-config-disable-e1s-0",
+	"","",
+	"","power-config-disable-e1s-1",
+	"","",
+	/*A4-A7 line 8-15*/
+	"","power-config-asic-module-enable",
+	"","power-config-asic-power-good",
+	"","power-config-pdb-power-good",
+	"presence-cpu","smi-control-n",
+	/*B0-B3 line 16-23*/
+	"","nmi-control-n",
+	"","nmi-control-sync-flood-n",
+	"","",
+	"","",
+	/*B4-B7 line 24-31*/
+	"","FM_CPU_SP5R1",
+	"reset-cause-rsmrst","FM_CPU_SP5R2",
+	"","FM_CPU_SP5R3",
+	"","FM_CPU_SP5R4",
+	/*C0-C3 line 32-39*/
+	"","FM_CPU0_SA0",
+	"","FM_CPU0_SA1",
+	"","rt-cpu0-p0-enable",
+	"","rt-cpu0-p1-enable",
+	/*C4-C7 line 40-47*/
+	"","smb-rt-rom-p0-select",
+	"","smb-rt-rom-p1-select",
+	"","i3c-cpu-mux0-oe-n",
+	"","i3c-cpu-mux0-select",
+	/*D0-D3 line 48-55*/
+	"","i3c-cpu-mux1-oe-n",
+	"","i3c-cpu-mux1-select",
+	"","reset-control-bmc",
+	"","reset-control-cpu0-p0-mux",
+	/*D4-D7 line 56-63*/
+	"","reset-control-cpu0-p1-mux",
+	"","reset-control-e1s-mux",
+	"power-host-good","reset-control-mb-mux",
+	"","reset-control-smb-e1s",
+	/*E0-E3 line 64-71*/
+	"","reset-control-smb-e1s",
+	"host-ready-n","reset-control-srst",
+	"presence-e1s-0","reset-control-usb-hub",
+	"","reset-control",
+	/*E4-E7 line 72-79*/
+	"presence-e1s-1","reset-control-cpu-kbrst",
+	"","reset-control-platrst",
+	"","bmc-jtag-mux-select-0",
+	"","bmc-jtag-mux-select-1",
+	/*F0-F3 line 80-87*/
+	"","bmc-jtag-select",
+	"","bmc-ready-n",
+	"","bmc-ready-sgpio",
+	"","rt-cpu0-p0-force-enable",
+	/*F4-F7 line 88-95*/
+	"presence-asic-modules-0","rt-cpu0-p1-force-enable",
+	"presence-asic-modules-1","bios-debug-msg-disable",
+	"","uart-control-buffer-select",
+	"","ac-control-n",
+	/*G0-G3 line 96-103*/
+	"FM_CPU_CORETYPE2","",
+	"FM_CPU_CORETYPE1","",
+	"FM_CPU_CORETYPE0","",
+	"FM_BOARD_REV_ID5","",
+	/*G4-G7 line 104-111*/
+	"FM_BOARD_REV_ID4","",
+	"FM_BOARD_REV_ID3","",
+	"FM_BOARD_REV_ID2","",
+	"FM_BOARD_REV_ID1","",
+	/*H0-H3 line 112-119*/
+	"FM_BOARD_REV_ID0","",
+	"","","","","","",
+	/*H4-H7 line 120-127*/
+	"","",
+	"reset-control-pcie-expansion-3","",
+	"reset-control-pcie-expansion-2","",
+	"reset-control-pcie-expansion-1","",
+	/*I0-I3 line 128-135*/
+	"reset-control-pcie-expansion-0","",
+	"FM_EXP_SLOT_ID1","",
+	"FM_EXP_SLOT_ID0","",
+	"","",
+	/*I4-I7 line 136-143*/
+	"","","","","","","","",
+	/*J0-J3 line 144-151*/
+	"","","","","","","","",
+	/*J4-J7 line 152-159*/
+	"SLOT_ID_BCB_0","",
+	"SLOT_ID_BCB_1","",
+	"SLOT_ID_BCB_2","",
+	"SLOT_ID_BCB_3","",
+	/*K0-K3 line 160-167*/
+	"","","","","","","","",
+	/*K4-K7 line 168-175*/
+	"","","","","","","","",
+	/*L0-L3 line 176-183*/
+	"","","","","","","","",
+	/*L4-L7 line 184-191*/
+	"","","","","","","","",
+	/*M0-M3 line 192-199*/
+	"","","","","","","","",
+	/*M4-M7 line 200-207*/
+	"","","","","","","","",
+	/*N0-N3 line 208-215*/
+	"","","","","","","","",
+	/*N4-N7 line 216-223*/
+	"","","","","","","","",
+	/*O0-O3 line 224-231*/
+	"","","","","","","","",
+	/*O4-O7 line 232-239*/
+	"","","","","","","","",
+	/*P0-P3 line 240-247*/
+	"","","","","","","","",
+	/*P4-P7 line 248-255*/
+	"","","","","","","","";
+};
-- 
2.25.1


