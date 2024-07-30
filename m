Return-Path: <devicetree+bounces-89368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E99E9940E5F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 11:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FACF281A8F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 09:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FB319939B;
	Tue, 30 Jul 2024 09:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="BzRsKe/p"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70264199225;
	Tue, 30 Jul 2024 09:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722333272; cv=none; b=nj+vRCs6ZcKtBwolN3OSvs0oWJlpZ4CnWdEtoOSnJ5JT4RUDngm9Ix702xZOuPjxErmscyPs+oVp7bQL3AC19fCprWeFvzGahm/SQLV18ehOAnuaG44/wyU7rrFwaiRVe8Q3MWbZ90twcHGIQSribO3/2ZDTV+R4klo2UAHvgpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722333272; c=relaxed/simple;
	bh=fJUUZy63DNja79BO/QofyCOSdxt0gOQiU3c2Hu4DV3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=p2OS5axv6CaG4xATG+++3gRq/uNdf0Jl+HyzOr2PF7EEhSauUASnBegKzqwprmLSErIsjXfxmM0FDJJBoF/2q+OEv5FNAJdt/pVeY+XqHe2/SNTVGYSlL4xHFtJk0yMrFniRQeSw+cFUhQVeBTYEig8OJfVo9yO730xHBUj2nTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=BzRsKe/p; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46U9sNre006293;
	Tue, 30 Jul 2024 04:54:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1722333263;
	bh=ziikP3lPhDAWibpFuyPIt0s7BPO6Q9yElVmKm2Gtm3o=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=BzRsKe/pDfmf4XXHvZBJveSnjE3qPUWd2Hg9J5bozwPcsn9r7wKwIvF/7UYbMceYI
	 lMrvHmUu35Z6uT2/catMZMqJe3kwp86v+VJ/NcBgty43rrIpmmO/b5ML/2dIb1qHKq
	 i5IRreZ71SwQbvh7U9sGWPVsU2xy36Az+1vWUhD8=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46U9sNi1064105
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 30 Jul 2024 04:54:23 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 30
 Jul 2024 04:54:23 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 30 Jul 2024 04:54:23 -0500
Received: from [127.0.1.1] (uda0497581.dhcp.ti.com [10.24.68.185])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46U9rum1008969;
	Tue, 30 Jul 2024 04:54:19 -0500
From: Manorit Chawdhry <m-chawdhry@ti.com>
Date: Tue, 30 Jul 2024 15:23:55 +0530
Subject: [PATCH v3 5/5] arm64: dts: ti: k3-j7200*: Add bootph-* properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240730-b4-upstream-bootph-all-v3-5-9bc2eccb6952@ti.com>
References: <20240730-b4-upstream-bootph-all-v3-0-9bc2eccb6952@ti.com>
In-Reply-To: <20240730-b4-upstream-bootph-all-v3-0-9bc2eccb6952@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Neha Malcom Francis <n-francis@ti.com>,
        Aniket Limaye <a-limaye@ti.com>, Udit Kumar <u-kumar1@ti.com>,
        Beleswar Padhi
	<b-padhi@ti.com>,
        Siddharth Vadapalli <s-vadapalli@ti.com>,
        Manorit Chawdhry
	<m-chawdhry@ti.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722333236; l=9380;
 i=m-chawdhry@ti.com; s=20231127; h=from:subject:message-id;
 bh=fJUUZy63DNja79BO/QofyCOSdxt0gOQiU3c2Hu4DV3k=;
 b=LVEl++b5VIi15Q/5XwU66x4xqX9Ra0ipFCVNKi9fxTFxT040QgmdkZcpi9v8/vBkSfQ8oYQEj
 DT/mqEra1DlDDt0s7Q+qg1dYbYH0pTcV6EcpW15IPsN6II/gyK5VMk3
X-Developer-Key: i=m-chawdhry@ti.com; a=ed25519;
 pk=fsr6Tm39TvsTgfyfFQLk+nnqIz2sBA1PthfqqfiiYSs=
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Adds bootph-* properties to the leaf nodes to enable U-boot to
utilise them.

Signed-off-by: Manorit Chawdhry <m-chawdhry@ti.com>
---
 .../arm64/boot/dts/ti/k3-j7200-common-proc-board.dts | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi            |  2 ++
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 10 ++++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi          |  7 +++++++
 4 files changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
index 6593c5da82c0..ec522595fc83 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
@@ -129,6 +129,7 @@ J721E_WKUP_IOPAD(0x94, PIN_OUTPUT, 0) /* (E21) MCU_UART0_RTSn */
 			J721E_WKUP_IOPAD(0x8c, PIN_INPUT, 0) /* (D20) MCU_UART0_RXD */
 			J721E_WKUP_IOPAD(0x88, PIN_OUTPUT, 0) /* (D19) MCU_UART0_TXD */
 		>;
+		bootph-all;
 	};
 
 	wkup_uart0_pins_default: wkup-uart0-default-pins {
@@ -136,6 +137,7 @@ wkup_uart0_pins_default: wkup-uart0-default-pins {
 			J721E_WKUP_IOPAD(0x48, PIN_INPUT, 0) /* (B14) WKUP_UART0_RXD */
 			J721E_WKUP_IOPAD(0x4c, PIN_OUTPUT, 0) /* (A14) WKUP_UART0_TXD */
 		>;
+		bootph-all;
 	};
 
 	mcu_cpsw_pins_default: mcu-cpsw-default-pins {
@@ -159,6 +161,7 @@ wkup_gpio_pins_default: wkup-gpio-default-pins {
 		pinctrl-single,pins = <
 			J721E_WKUP_IOPAD(0x70, PIN_INPUT, 7) /* (C14) WKUP_GPIO0_6 */
 		>;
+		bootph-all;
 	};
 
 	mcu_mdio_pins_default: mcu-mdio1-default-pins {
@@ -204,6 +207,7 @@ J721E_IOPAD(0xb4, PIN_OUTPUT, 0) /* (T17) UART0_TXD */
 			J721E_IOPAD(0xc0, PIN_INPUT, 2) /* (W3) SPI0_CS0.UART0_CTSn */
 			J721E_IOPAD(0xc4, PIN_OUTPUT, 2) /* (U5) SPI0_CS1.UART0_RTSn */
 		>;
+		bootph-all;
 	};
 
 	main_uart1_pins_default: main-uart1-default-pins {
@@ -238,6 +242,7 @@ J721E_IOPAD(0xf0, PIN_INPUT, 0) /* (N20) MMC1_DAT2 */
 			J721E_IOPAD(0xec, PIN_INPUT, 0) /* (N19) MMC1_DAT3 */
 			J721E_IOPAD(0xe4, PIN_INPUT, 8) /* (V1) TIMER_IO0.MMC1_SDCD */
 		>;
+		bootph-all;
 	};
 
 	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
@@ -259,6 +264,7 @@ main_usbss0_pins_default: main-usbss0-default-pins {
 		pinctrl-single,pins = <
 			J721E_IOPAD(0x04, PIN_OUTPUT, 0) /* (T4) USB0_DRVVBUS */
 		>;
+		bootph-all;
 	};
 };
 
@@ -267,12 +273,14 @@ &wkup_uart0 {
 	status = "reserved";
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_uart0_pins_default>;
+	bootph-all;
 };
 
 &mcu_uart0 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&mcu_uart0_pins_default>;
+	bootph-all;
 };
 
 &main_uart0 {
@@ -281,6 +289,7 @@ &main_uart0 {
 	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	bootph-all;
 };
 
 &main_uart1 {
@@ -310,6 +319,7 @@ &wkup_gpio0 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&wkup_gpio_pins_default>;
+	bootph-all;
 };
 
 &mcu_cpsw {
@@ -341,6 +351,7 @@ exp1: gpio@20 {
 		reg = <0x20>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		bootph-all;
 	};
 
 	exp2: gpio@22 {
@@ -348,6 +359,7 @@ exp2: gpio@22 {
 		reg = <0x22>;
 		gpio-controller;
 		#gpio-cells = <2>;
+		bootph-all;
 	};
 };
 
@@ -381,6 +393,7 @@ &main_sdhci0 {
 	non-removable;
 	ti,driver-strength-ohm = <50>;
 	disable-wp;
+	bootph-all;
 };
 
 &main_sdhci1 {
@@ -392,15 +405,18 @@ &main_sdhci1 {
 	vqmmc-supply = <&vdd_sd_dv>;
 	ti,driver-strength-ohm = <50>;
 	disable-wp;
+	bootph-all;
 };
 
 &serdes_ln_ctrl {
 	idle-states = <J7200_SERDES0_LANE0_PCIE1_LANE0>, <J7200_SERDES0_LANE1_PCIE1_LANE1>,
 		      <J7200_SERDES0_LANE2_QSGMII_LANE1>, <J7200_SERDES0_LANE3_IP4_UNUSED>;
+	bootph-all;
 };
 
 &usb_serdes_mux {
 	idle-states = <1>; /* USB0 to SERDES lane 3 */
+	bootph-all;
 };
 
 &usbss0 {
@@ -408,11 +424,13 @@ &usbss0 {
 	pinctrl-0 = <&main_usbss0_pins_default>;
 	ti,vbus-divider;
 	ti,usb2-only;
+	bootph-all;
 };
 
 &usb0 {
 	dr_mode = "otg";
 	maximum-speed = "high-speed";
+	bootph-all;
 };
 
 &tscadc0 {
@@ -432,6 +450,7 @@ serdes0_pcie_link: phy@0 {
 		#phy-cells = <0>;
 		cdns,phy-type = <PHY_TYPE_PCIE>;
 		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
+		bootph-all;
 	};
 
 	serdes0_qsgmii_link: phy@1 {
@@ -440,6 +459,7 @@ serdes0_qsgmii_link: phy@1 {
 		#phy-cells = <0>;
 		cdns,phy-type = <PHY_TYPE_QSGMII>;
 		resets = <&serdes_wiz0 3>;
+		bootph-all;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 9386bf3ef9f6..b95656942412 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -136,6 +136,7 @@ secure_proxy_main: mailbox@32c00000 {
 			      <0x00 0x32800000 0x00 0x100000>;
 			interrupt-names = "rx_011";
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			bootph-all;
 		};
 
 		hwspinlock: spinlock@30e00000 {
@@ -1528,5 +1529,6 @@ main_esm: esm@700000 {
 		compatible = "ti,j721e-esm";
 		reg = <0x0 0x700000 0x0 0x1000>;
 		ti,esm-pins = <656>, <657>;
+		bootph-all;
 	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 5097d192c2b2..f8a5ad4737da 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -21,16 +21,19 @@ dmsc: system-controller@44083000 {
 		k3_pds: power-controller {
 			compatible = "ti,sci-pm-domain";
 			#power-domain-cells = <2>;
+			bootph-all;
 		};
 
 		k3_clks: clock-controller {
 			compatible = "ti,k2g-sci-clk";
 			#clock-cells = <2>;
+			bootph-all;
 		};
 
 		k3_reset: reset-controller {
 			compatible = "ti,sci-reset";
 			#reset-cells = <2>;
+			bootph-all;
 		};
 	};
 
@@ -45,6 +48,7 @@ mcu_timer0: timer@40400000 {
 		assigned-clock-parents = <&k3_clks 35 2>;
 		power-domains = <&k3_pds 35 TI_SCI_PD_EXCLUSIVE>;
 		ti,timer-pwm;
+		bootph-pre-ram;
 	};
 
 	mcu_timer1: timer@40410000 {
@@ -191,6 +195,7 @@ wkup_conf: bus@43000000 {
 		chipid: chipid@14 {
 			compatible = "ti,am654-chipid";
 			reg = <0x14 0x4>;
+			bootph-all;
 		};
 	};
 
@@ -349,6 +354,7 @@ mcu_ringacc: ringacc@2b800000 {
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <235>;
 			msi-parent = <&main_udmass_inta>;
+			bootph-all;
 		};
 
 		mcu_udmap: dma-controller@285c0000 {
@@ -373,6 +379,7 @@ mcu_udmap: dma-controller@285c0000 {
 			ti,sci-rm-range-rchan = <0x0a>, /* RX_CHAN */
 						<0x0b>; /* RX_HCHAN */
 			ti,sci-rm-range-rflow = <0x00>; /* GP RFLOW */
+			bootph-all;
 		};
 	};
 
@@ -389,6 +396,7 @@ secure_proxy_mcu: mailbox@2a480000 {
 		 * firmware on non-MPU processors
 		 */
 		status = "disabled";
+		bootph-pre-ram;
 	};
 
 	mcu_cpsw: ethernet@46000000 {
@@ -534,6 +542,7 @@ hbmc_mux: mux-controller@47000004 {
 			reg = <0x00 0x47000004 0x00 0x4>;
 			#mux-control-cells = <1>;
 			mux-reg-masks = <0x0 0x2>; /* HBMC select */
+			bootph-pre-ram;
 		};
 
 		hbmc: hyperbus@47034000 {
@@ -652,6 +661,7 @@ wkup_vtm0: temperature-sensor@42040000 {
 		      <0x00 0x42050000 0x00 0x350>;
 		power-domains = <&k3_pds 154 TI_SCI_PD_EXCLUSIVE>;
 		#thermal-sensor-cells = <1>;
+		bootph-pre-ram;
 	};
 
 	mcu_esm: esm@40800000 {
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 21fe194a5766..d78f86889bf9 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -121,6 +121,7 @@ J721E_WKUP_IOPAD(0x20, PIN_INPUT, 1) /* (B8) MCU_OSPI0_D5.MCU_HYPERBUS0_DQ5 */
 			J721E_WKUP_IOPAD(0x24, PIN_INPUT, 1) /* (A8) MCU_OSPI0_D6.MCU_HYPERBUS0_DQ6 */
 			J721E_WKUP_IOPAD(0x28, PIN_INPUT, 1) /* (A7) MCU_OSPI0_D7.MCU_HYPERBUS0_DQ7 */
 		>;
+		bootph-all;
 	};
 
 	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-default-pins {
@@ -137,6 +138,7 @@ J721E_WKUP_IOPAD(0x0024, PIN_INPUT, 0)  /* MCU_OSPI0_D6 */
 			J721E_WKUP_IOPAD(0x0028, PIN_INPUT, 0)  /* MCU_OSPI0_D7 */
 			J721E_WKUP_IOPAD(0x0008, PIN_INPUT, 0)  /* MCU_OSPI0_DQS */
 		>;
+		bootph-all;
 	};
 };
 
@@ -146,6 +148,7 @@ wkup_i2c0_pins_default: wkup-i2c0-default-pins {
 			J721E_WKUP_IOPAD(0x98, PIN_INPUT_PULLUP, 0) /* (F20) WKUP_I2C0_SCL */
 			J721E_WKUP_IOPAD(0x9c, PIN_INPUT_PULLUP, 0) /* (H21) WKUP_I2C0_SDA */
 		>;
+		bootph-all;
 	};
 };
 
@@ -163,6 +166,7 @@ main_i2c0_pins_default: main-i2c0-default-pins {
 			J721E_IOPAD(0xd4, PIN_INPUT_PULLUP, 0) /* (V3) I2C0_SCL */
 			J721E_IOPAD(0xd8, PIN_INPUT_PULLUP, 0) /* (W2) I2C0_SDA */
 		>;
+		bootph-all;
 	};
 
 	main_mcan0_pins_default: main-mcan0-default-pins {
@@ -186,6 +190,7 @@ &hbmc {
 	flash@0,0 {
 		compatible = "cypress,hyperflash", "cfi-flash";
 		reg = <0x00 0x00 0x4000000>;
+		bootph-all;
 
 		partitions {
 			compatible = "fixed-partitions";
@@ -330,6 +335,7 @@ bucka1: buck1 {
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
 				regulator-always-on;
+				bootph-all;
 			};
 
 			bucka2: buck2 {
@@ -464,6 +470,7 @@ flash@0 {
 		cdns,tchsh-ns = <60>;
 		cdns,tslch-ns = <60>;
 		cdns,read-delay = <4>;
+		bootph-all;
 
 		partitions {
 			compatible = "fixed-partitions";

-- 
2.45.1


