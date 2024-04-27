Return-Path: <devicetree+bounces-63319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC188B463F
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:50:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17C7B1F25A27
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340934C626;
	Sat, 27 Apr 2024 11:50:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89F3A481A6
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714218604; cv=none; b=U4BhxD45N0rkTrK1hdjZwZonS3iy5yQoj48Z2r2RXG9TtJMJUuv0fn3OqLEAqlaS6SuEiIH2KOZMl9WQR0N0OMuNTVdznTP7dqP56lY7mUqanKRZ9F3Lhh8zh2jjKlKSJqRkLXSH1aXgVi29fjCwM46Q2O4jBOtDEnwE4g7VYCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714218604; c=relaxed/simple;
	bh=5OoGWjjbxIswOPYT/dEX1L8HLyQ8Bjhjh/GzifR/EtI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d6X57wu0GCInJyUg+G2nyV6O2h2tn0B06wqQQ7FXGaJMSLkG4Ah5qEH5oi8i0AT6MOmZTjr3dRMqwQqnCBmCNlIUL9gstjvqfZL+hs8IXp8WIE1HndqG52JFgszOB6iU82VdPWixbJsmL8IdZjReq+2twdS9crdMRabM7lmLVRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E2782F4;
	Sat, 27 Apr 2024 04:50:23 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4F613F64C;
	Sat, 27 Apr 2024 04:49:53 -0700 (PDT)
Date: Sat, 27 Apr 2024 12:49:33 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Chris Morgan <macromorgan@hotmail.com>,
 devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v6 2/4] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Message-ID: <20240427124933.749a4b70@minigeek.lan>
In-Reply-To: <20240427110225.727472-6-ryan@testtoast.com>
References: <20240427110225.727472-2-ryan@testtoast.com>
	<20240427110225.727472-6-ryan@testtoast.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 27 Apr 2024 23:02:26 +1200
Ryan Walklin <ryan@testtoast.com> wrote:

Hi,

thanks for the changes, looks good now!

> The base model RG35XX (2024) is a handheld gaming device based on an
> Allwinner H700 chip.
> 
> The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31
> GPU) which exposes RGB LCD and NMI pins.
> 
> Device features:
> - Allwinner H700 @ 1.5GHz
> - 1GB LPDDR4 DRAM
> - X-Powers AXP717 PMIC
> - 3.5" 640x480 RGB LCD
> - Two microSD slots
> - Mini-HDMI out
> - GPIO keypad
> - 3.5mm headphone jack
> - USB-C charging port
> 
> Enabled in this DTS:
> - AXP717 PMIC with RSB serial interface, regulators and NMI interrupt
>   controller
> - Power LED (charge LED on device controlled directly by PMIC)
> - Serial UART (accessible from headers on the board)
> - First SD slot (SD2 appears to have a GPIO-switched regulator for 1.8v
>   low-voltage signalling, this is not yet modeled. Enablement with a
>   switched regulator will be confirmed and posted in a follow-up patch).
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Add cpufreq support
> - Remove MMC aliases
> - Fix GPIO button and regulator node names
> - Note unused AXP717 regulators
> - Update regulators for SD slots
> - Remove unused I2C3 device
> - Update NMI interrupt controller for AXP717, requires H616 support patch in dt-next [1]
> - Add chassis-type
> - Address USB EHCI/OHCI0 correctly and add usb vbus supply
> - Add PIO vcc-pg-supply
> - Correct boost regulator voltage and name
> 
> Changelog v2..v3:
> - Remove cpufreq support (patch still pending for 6.10, will followup with enablement patch once opp table merged)
> - Add dtb to Makefile
> - Remove unnecessary duplicated PLL regulator
> - Remove unimplemented/not-present drive-vbus feature from AXP717
> - Rename CLDO3 to "vcc-io", inferring function from board testing by Chris Morgan
> - Correct MMC1 vmmc-supply to CLDO3 and MMC2 to CLDO4
> - Reduce DCDC1 "vdd-cpu" supply voltage range to 0.9v-1.1v to match lowest OPP voltage
> - Identify DCDC2 as GPU supply - rename to "vdd-gpu-sys", remove always-on and use fixed 0.94v voltage
> - Fix indentation
> - Correct boot/always-on states and voltages for various regulators from vendor BSP
> - Change USB-OTG mode to "peripheral" and correct comment
> - Correct and add remaining PIO supplies
> - Move volume key GPIOs to separate block to allow key repeat
> - Alphabetically orrder gamepad GPIOs
> - Move changelog and links below fold-line
> - Remove USB 3.3v VCC-USB and VCC-SD2 regulators pending further hardware investigation (to be submitted as subsequent patch)
> - Constrain boost regulator voltage to 5.0v to 5.2v to capture default voltage of 5.126v
> 
> Changelog v3..v4:
> - Cluster USB nodes
> - Do not define voltage range for currently unused CLDO1 (connected to audio codec according to vendor BSP - driver not yet implemented) and ALDO3 (1.8v).
> - Note voltages set for currently unused regulators from vendor BSP in comments to aid identification
> - Remove regulator-boot-on from several regulators where it was not required
> - Fix indentation
> - Add "disable-wp" for SD2 as for SD1 (doesn't make sense for micro-SD)
> - Restore fixed 3.3v regulator for SD2 (vcc_3v3_sd2), which is required for SD2 to function. ALDO1 appears to be the 1.8v supply required for low-voltage UHS-I signalling, however a GPIO pin to switch between the supplies is not yet confirmed (likely PE4) and will be implemented in a subsequent patch.
> 
> Changelog v4..v5:
> - Remove comment referencing vendor BSP node
> - Reorder nodes alphabetically and remove empty lines
> - Add note to commit message about SD2 regulators, rename vcc_3v3_sd2
> 
> Changelog v5..v6:
> - Remove SD2 slot and regulator definitions until confirmation of regulator/GPIO states required for LV signalling switching
> - Re-sort nodes
> 
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=d47bca77bf3ab475c33b3929c33c80aeb49df35c
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 327 ++++++++++++++++++
>  2 files changed, 328 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 21149b346a60..6f997157968e 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -47,3 +47,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-longanpi-3h.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> new file mode 100644
> index 000000000000..ee30584b6ad7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> @@ -0,0 +1,327 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-h616.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "Anbernic RG35XX 2024";
> +	chassis-type = "handset";
> +	compatible = "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio_keys_gamepad: gpio-keys-gamepad {
> +		compatible = "gpio-keys";
> +
> +		button-a {
> +			label = "Action-Pad A";
> +			gpios = <&pio 0 0 GPIO_ACTIVE_LOW>; /* PA0 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_EAST>;
> +		};
> +
> +		button-b {
> +			label = "Action-Pad B";
> +			gpios = <&pio 0 1 GPIO_ACTIVE_LOW>; /* PA1 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_SOUTH>;
> +		};
> +
> +		button-down {
> +			label = "D-Pad Down";
> +			gpios = <&pio 4 0 GPIO_ACTIVE_LOW>; /* PE0 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_DOWN>;
> +		};
> +
> +		button-l1 {
> +			label = "Key L1";
> +			gpios = <&pio 0 10 GPIO_ACTIVE_LOW>; /* PA10 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_TL>;
> +		};
> +
> +		button-l2 {
> +			label = "Key L2";
> +			gpios = <&pio 0 11 GPIO_ACTIVE_LOW>; /* PA11 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_TL2>;
> +		};
> +
> +		button-left {
> +			label = "D-Pad left";
> +			gpios = <&pio 0 8 GPIO_ACTIVE_LOW>; /* PA8 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_LEFT>;
> +		};
> +
> +		button-menu {
> +			label = "Key Menu";
> +			gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_MODE>;
> +		};
> +
> +		button-r1 {
> +			label = "Key R1";
> +			gpios = <&pio 0 12 GPIO_ACTIVE_LOW>; /* PA12 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_TR>;
> +		};
> +
> +		button-r2 {
> +			label = "Key R2";
> +			gpios = <&pio 0 7 GPIO_ACTIVE_LOW>; /* PA7 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_TR2>;
> +		};
> +
> +		button-right {
> +			label = "D-Pad Right";
> +			gpios = <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_RIGHT>;
> +		};
> +
> +		button-select {
> +			label = "Key Select";
> +			gpios = <&pio 0 5 GPIO_ACTIVE_LOW>; /* PA5 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_SELECT>;
> +		};
> +		button-start {
> +			label = "Key Start";
> +			gpios = <&pio 0 4 GPIO_ACTIVE_LOW>; /* PA4 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_START>;
> +		};
> +
> +		button-up {
> +			label = "D-Pad Up";
> +			gpios = <&pio 0 6 GPIO_ACTIVE_LOW>; /* PA6 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_UP>;
> +		};
> +
> +		button-x {
> +			label = "Action-Pad X";
> +			gpios = <&pio 0 3 GPIO_ACTIVE_LOW>; /* PA3 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_NORTH>;
> +		};
> +
> +		button-y {
> +			label = "Action Pad Y";
> +			gpios = <&pio 0 2 GPIO_ACTIVE_LOW>; /* PA2 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_WEST>;
> +		};
> +	};
> +
> +	gpio-keys-volume {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		button-vol-up {
> +			label = "Key Volume Up";
> +			gpios = <&pio 4 1 GPIO_ACTIVE_LOW>; /* PE1 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +
> +		button-vol-down {
> +			label = "Key Volume Down";
> +			gpios = <&pio 4 2 GPIO_ACTIVE_LOW>; /* PE2 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <KEY_VOLUMEDOWN>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			function = LED_FUNCTION_POWER;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 8 12 GPIO_ACTIVE_HIGH>; /* PI12 */
> +			default-state = "on";
> +		};
> +	};
> +
> +	reg_vcc5v: regulator-vcc5v { /* USB-C power input */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc1>;
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	vmmc-supply = <&reg_cldo3>;
> +	disable-wp;
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&pio {
> +	vcc-pa-supply = <&reg_cldo3>;
> +	vcc-pc-supply = <&reg_cldo3>;
> +	vcc-pe-supply = <&reg_cldo3>;
> +	vcc-pf-supply = <&reg_cldo3>;
> +	vcc-pg-supply = <&reg_aldo4>;
> +	vcc-ph-supply = <&reg_cldo3>;
> +	vcc-pi-supply = <&reg_cldo3>;
> +};
> +
> +&r_rsb {
> +	status = "okay";
> +
> +	axp717: pmic@3a3 {
> +		compatible = "x-powers,axp717";
> +		reg = <0x3a3>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		interrupt-parent = <&nmi_intc>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +		vin4-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <940000>;
> +				regulator-max-microvolt = <940000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-dram";
> +			};
> +
> +			reg_aldo1: aldo1 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_aldo2: aldo2 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_aldo3: aldo3 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_aldo4: aldo4 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-pg";
> +			};
> +
> +			reg_bldo1: bldo1 {
> +				/* 1.8v - unused */
> +			};
> +
> +			reg_bldo2: bldo2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-pll";
> +			};
> +
> +			reg_bldo3: bldo3 {
> +				/* 2.8v - unused */
> +			};
> +
> +			reg_bldo4: bldo4 {
> +				/* 1.2v - unused */
> +			};
> +
> +			reg_cldo1: cldo1 {
> +				/* 3.3v - audio codec - not yet implemented */
> +			};
> +
> +			reg_cldo2: cldo2 {
> +				/* 3.3v - unused */
> +			};
> +
> +			reg_cldo3: cldo3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-io";
> +			};
> +
> +			reg_cldo4: cldo4 {
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-wifi";
> +			};
> +
> +			reg_boost: boost {
> +				regulator-min-microvolt = <5000000>;
> +				regulator-max-microvolt = <5200000>;
> +				regulator-name = "boost";
> +			};
> +
> +			reg_cpusldo: cpusldo {
> +				/* unused */
> +			};
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_ph_pins>;
> +	status = "okay";
> +};
> +
> +/* the AXP717 has USB type-C role switch functionality, not yet described by the binding */
> +&usbotg {
> +	dr_mode = "peripheral";   /* USB type-C receptable */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};


