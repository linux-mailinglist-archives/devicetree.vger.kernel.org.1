Return-Path: <devicetree+bounces-61230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 398BC8AC125
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 22:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A10FB20B42
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 20:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3093FB88;
	Sun, 21 Apr 2024 20:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V9rUkEoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113AD111AD
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 20:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713729710; cv=none; b=XFny5oVWGRMuYF57H7h1GG7VUxH+870xXHwkLUjC5o72ZcF8yE6n2vTEm6fzmgRPG41f3jkKCttDOuuhNvN19mlklL7RYkYqeMH19V8s+jgE327/DY8xLrC0/k+sJ8n0RCG/3rZuBm4CgwCubfGr9e5oelBQR3IvrkfQn2qVdtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713729710; c=relaxed/simple;
	bh=5mr3mDiUapURp5ZlZeO5TM7gAIYMfeZYYikfPa9APps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pHR3h83c6ILaM5WoDEMVmGGTDaM1pxZs3vpnzX1IJm6ouuOpGmsxXnjjF7150bNBlfUEVx1UnEyXOmBW2ucXv71rA4HsAELToNLxjesu8xc/8220TfvfBA9vxECNbCjVxgulckTH3V6W2EE7iYee5dDVmsXAA04BRuum+kSwjB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V9rUkEoo; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-343f62d8124so3023208f8f.2
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 13:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713729707; x=1714334507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UsZCV56/IjJrOgFIOSpt1NW6GA8AP/khSutbPt8oc/g=;
        b=V9rUkEoos6GlwV60hd71eZrfBG++2P35WvlM7lP+7xuPBtj5iAzUZ2MmYGLBpK9Gm5
         tPUNEkXzG/xQa53b1nx8a+SBrWgflw6fAc5PMCGfNLLIwt+jo4mf5Ie8FrQ0sPhaFETW
         +qWXOQz3SwRPwiO8ol6RKtuKxcK2+gYNg+xLFTtJXkOtWROviohznXv5fprsCG9VkX99
         Uen1tCnO0LRigG12wolyky0UiGjd1wK8GwDOyOZuf3H59ASNUGSST2dXCKDhIbthLE2k
         wuVwfLVhns0ffptiTs3gHXtqzmdLVLjNibQlAVXWEVEPVVPFuhR3XpYfEePtcWliqTSp
         R3kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713729707; x=1714334507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UsZCV56/IjJrOgFIOSpt1NW6GA8AP/khSutbPt8oc/g=;
        b=tpvXikXe1RDlDioD3NaqSGXYy7iENfQ/0DDri62pXKX6P4S8hIQOuyJdENsMGCxa8A
         3C3d7KLFp1CQ/BWfAgWZukR6K+clAsGw6zvk5Qp//GrqVnvgSnY8j2LavR5NCIXOMDhU
         CmpwZVMTKsPCQtZ23D6YS6/ohLWGyQ6HUAwhDzomeguU3onVHi+jICgC/+i6fOgIWt7s
         EzB7nL6QA2M5OwzQdt21yj69HK+9Er/gyVL225VCeICMtTC0Apkle5cmqNDrtrYHuLtf
         /mJqycNXTme9S0uYJl3hYrAaRGnn5gzjSYqwMZ/zHt6vyrlMXP6HXmvjBSP/d9ao1LgC
         11MQ==
X-Gm-Message-State: AOJu0Yz1haH3n17dh1tRp2vVoJw2xuPh19Wwa5G7JwoZxWROxXYVjFHb
	iHfOFNu8kIHvliwE3UIQsD+BvddU7m/pUN0eDMmb/+5BePBY82mj
X-Google-Smtp-Source: AGHT+IHmB4Jllo1LG9ncIEE/xr5i1Nm7XnvHwlANH8xBkTArsH66euDRjzswiVlPFkKA8qVRtKFE2A==
X-Received: by 2002:adf:e4ce:0:b0:349:cbaa:3bfd with SMTP id v14-20020adfe4ce000000b00349cbaa3bfdmr5174882wrm.14.1713729706870;
        Sun, 21 Apr 2024 13:01:46 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id j10-20020adfff8a000000b0034335f13570sm10005272wrr.116.2024.04.21.13.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 13:01:46 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
 Ryan Walklin <ryan@testtoast.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Date: Sun, 21 Apr 2024 22:01:45 +0200
Message-ID: <2320236.ElGaqSPkdT@jernej-laptop>
In-Reply-To: <20240420104354.334947-8-ryan@testtoast.com>
References:
 <20240420104354.334947-5-ryan@testtoast.com>
 <20240420104354.334947-8-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Dne sobota, 20. april 2024 ob 12:43:56 GMT +2 je Ryan Walklin napisal(a):
> The base model RG35XX (2024) is a handheld gaming device based on an Allwinner H700 chip.
> 
> The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31 GPU) which exposes RGB LCD and NMI pins.
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
> 
> Enabled in this DTS:
> - AXP717 PMIC with regulators (interrupt controller TBC/TBD)
> - Power LED (charge LED on device controlled directly by PMIC)
> - Serial UART (accessible from PIN headers on the board)
> - MMC slots
> 
> Changelog v1..v2:
> - Update copyright
> - Spaces -> Tabs
> - Add cpufreq support [1]
> - Remove MMC aliases
> - Fix GPIO button and regulator node names
> - Note unused AXP717 regulators
> - Update regulator for SD slots
> - Remove unused I2C3 device
> - Update NMI interrupt controller for AXP717 [2]
> - Add chassis-type
> - Address USB EHCI/OHCI0 correctly and add usb vbus supply
> - Add PIO vcc-pg-supply
> - Correct boost regulator voltage and name
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> 
> [1]: https://lore.kernel.org/linux-sunxi/20240419071450.7aiheeoyq35yjoo7@vireshk-i7/T/#t
> [2]: https://lore.kernel.org/linux-sunxi/20240418181615.1370179-1-macroalpha82@gmail.com/T/#t

Put changelog and links in this case below --- line, so it won't be part
of the commit.

Best regards,
Jernej

> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  .../sun50i-h700-anbernic-rg35xx-2024.dts      | 375 ++++++++++++++++++
>  1 file changed, 375 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> new file mode 100644
> index 000000000000..d8081273677d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
> @@ -0,0 +1,375 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-h616.dtsi"
> +#include "sun50i-h616-cpu-opp.dtsi"
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
> +	gpio-keys {
> +	   compatible = "gpio-keys";
> +
> +	   button-up {
> +		   label = "D-Pad Up";
> +		   gpios = <&pio 0 6 GPIO_ACTIVE_LOW>; /* PA6 */
> +		   linux,input-type = <EV_KEY>;
> +		   linux,code = <BTN_DPAD_UP>;
> +		};
> +
> +		button-down {
> +			label = "D-Pad Down";
> +			gpios = <&pio 4 0 GPIO_ACTIVE_LOW>; /* PE0 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_DOWN>;
> +		};
> +
> +		button-left {
> +			label = "D-Pad left";
> +			gpios = <&pio 0 8 GPIO_ACTIVE_LOW>; /* PA8 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_LEFT>;
> +		};
> +
> +		button-right {
> +			label = "D-Pad Right";
> +			gpios = <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_DPAD_RIGHT>;
> +		};
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
> +
> +		button-start {
> +			label = "Key Start";
> +			gpios = <&pio 0 4 GPIO_ACTIVE_LOW>; /* PA4 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_START>;
> +		};
> +
> +		button-select {
> +			label = "Key Select";
> +			gpios = <&pio 0 5 GPIO_ACTIVE_LOW>; /* PA5 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_SELECT>;
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
> +		button-menu {
> +			label = "Key Menu";
> +			gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
> +			linux,input-type = <EV_KEY>;
> +			linux,code = <BTN_MODE>;
> +		};
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
> +	reg_vcc_sd2: regulator-vcc3v3 {
> +		compatible = "regulator-fixed";
> +		gpio = <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
> +		regulator-name = "vcc_3v3_sd2";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	reg_vcc_usb: regulator-vcc-5v0-usb {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&pio 8 7 GPIO_ACTIVE_HIGH>; /* PI7 */
> +		regulator-name = "vcc_5v0_usb";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc_3v3_usb>;
> +	};
> +
> +	vcc_3v3_usb: vcc-3v3-usb {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&pio 4 5 GPIO_ACTIVE_HIGH>; /* PE5 */
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "vcc_3v3_usb";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +	};
> +
> +	reg_vcc5v: regulator-vcc5v { /* USB-C power input */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	reg_pll_dcx0: regulator-pll-dcx0 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-name = "vcc-pll";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc1>;
> +};
> +
> +&mmc0 {
> +	vmmc-supply = <&reg_vcc_sd2>;
> +	disable-wp;
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&mmc2 {
> +	vmmc-supply = <&reg_vcc_sd2>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	cd-gpios = <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&r_rsb {
> +   status = "okay";
> +
> +   axp717: pmic@3a3 {
> +		compatible = "x-powers,axp717";
> +		reg = <0x3a3>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +		interrupt-parent = <&nmi_intc>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +		x-powers,drive-vbus-en;
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +		vin4-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <810000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <940000>;
> +				regulator-max-microvolt = <940000>;
> +				regulator-name = "vdd-sys";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-dram";
> +			};
> +
> +			reg_aldo1: aldo1 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-sd2";
> +			};
> +
> +			reg_aldo2: aldo2 {
> +				/* unused */
> +			};
> +
> +			reg_aldo3: aldo3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3500000>;
> +				regulator-name = "axp717-aldo3";
> +			};
> +
> +			reg_aldo4: aldo4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3500000>;
> +				regulator-name = "axp717-aldo4";
> +			};
> +
> +			reg_bldo1: bldo1 {
> +				/* unused */
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
> +				/* unused */
> +			};
> +
> +			reg_bldo4: bldo4 {
> +				/* unused */
> +			};
> +
> +			reg_cldo1: cldo1 {
> +				/* unused */
> +			};
> +
> +			reg_cldo2: cldo2 {
> +				/* unused */
> +			};
> +
> +			reg_cldo3: cldo3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3500000>;
> +				regulator-name = "axp717-cldo3";
> +			};
> +
> +			reg_cldo4: cldo4 {
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-wifi";
> +			};
> +
> +			reg_boost: boost {
> +				regulator-min-microvolt = <5126000>;
> +				regulator-max-microvolt = <5126000>;
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
> +&pio {
> +	vcc-pg-supply = <&reg_pll_dcx0>;
> +};
> +
> +/* the AXP717 has USB type-C role switch functionality, to be implemented */
> +&usbotg {
> +	dr_mode = "host";   /* USB type-C receptable */
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb0_vbus-supply = <&reg_vcc_usb>;
> +	status = "okay";
> +};
> 





