Return-Path: <devicetree+bounces-27021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0025818E3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 18:34:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74E17281B62
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 17:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCAA22EF2;
	Tue, 19 Dec 2023 17:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ResSC+TM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB72C37D02
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 17:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-54c5d041c23so5899905a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 09:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703007282; x=1703612082; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N6WLhGSjx7bRA67CVF6P562rvuRWypoBbMTsAPenkX0=;
        b=ResSC+TM2NgDiXXVaIKqvfKlTs0kXgvAxtbC+36RK+tiwZxmetWoGscPv1HLg4l8Bp
         Fz4wsG10xCJPINatrBcblSeGI6fPn7SFoph/4AU5k3ZQF5zTZFq/rh6e7IV4Kh4Q7+S4
         P293TDE1dVwvZyG5V2nq3m70YAG2rM7CDdZOGWU8Su1zS2uVSeJQmnXNvznIFIq3U+AW
         wp2dfzFEXRD6YvghV506DGEmPepGYIIV0r3YUpkoJEUpwOIEj8R3iDnqCRhUow/cQiTt
         TsWAQJBGlzdeWLOwfyxhylc10rLOsw93BSZ95qLfbALJiHEwaas3AqmWfLjkioUpwmAA
         bh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703007282; x=1703612082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N6WLhGSjx7bRA67CVF6P562rvuRWypoBbMTsAPenkX0=;
        b=BCbdcZhY7YtSXLD4Mz9i3den2sgbYLaNtCNetYK2ehGqsXyFJjZVPsmfeKEDryBJde
         4K0bXsv3AsfCli6BdJsDTH3RGy0I3uPyELL/1urL5pYjRE6JB1eiYkt/sTQbxtM2mXOL
         RooNI3CWZk3MJ8Efch0DwYCBq4Itk6seQFteq6bN0PVO82/iToY1k0hdOMS3g2cwT63u
         hQMar3J7rekDv3cIwOYq7vw3ru1mQqJ/0SV9QpAxN1STe6eEVetlgMsMt6f+TFRLpKG0
         x+s+Oo8WkpjLAOPDZEsEp+BxMDkRfU5sz50t0pj02FYF2E2LrLHFuRRrvMFNBJG401cG
         Ubvg==
X-Gm-Message-State: AOJu0Yw5PoK/chL5g0W/tC2Wj3dfPAvwGFcpHT9v2LtguIuixD/vJ5x/
	P1auNf1Y1j3j+FBZD9vxxyyJ8D2SSFaruQ==
X-Google-Smtp-Source: AGHT+IFE/mY2gg3CFfejfEPU3x+xUKnu2fVVFwm9QKxx/lJO9atPTbVArQcNZrMktQWv/eXcRLai2Q==
X-Received: by 2002:a17:906:4bd6:b0:a23:65ae:1d4f with SMTP id x22-20020a1709064bd600b00a2365ae1d4fmr745601ejv.182.1703007281861;
        Tue, 19 Dec 2023 09:34:41 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id oz39-20020a170906cd2700b00a235f3b8259sm2293445ejb.186.2023.12.19.09.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:34:41 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH 2/2] arm64: dts: allwinner: h618: add BananaPi M4 Berry board
Date: Tue, 19 Dec 2023 18:34:40 +0100
Message-ID: <3197387.5fSG56mABF@jernej-laptop>
In-Reply-To: <20231217232405.302-3-andre.przywara@arm.com>
References:
 <20231217232405.302-1-andre.przywara@arm.com>
 <20231217232405.302-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andre!

Dne ponedeljek, 18. december 2023 ob 00:24:05 CET je Andre Przywara napisal(a):
> The BananaPi M4 Berry is a development board using the Allwinner H618
> SoC. It comes with the following specs:
> 	- Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache)
> 	- 2 GiB LPDDR4 DRAM
> 	- 8 GiB eMMC flash
> 	- AXP313a PMIC
> 	- Gigabit Ethernet, using RTL8211 PHY
> 	- RTL8821CU USB WiFi chip
> 	- HDMI port
> 	- 4 * USB 2.0 ports, via an on-board hub chip
> 	- microSD card slot
> 	- 3.5mm A/V port
> 	- power supply and USB-OTG via USB-C connector
> 
> Add a devicetree file describing the components that we already have
> bindings for, that excludes audio and video at the moment.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-bananapi-m4-berry.dts         | 229 ++++++++++++++++++
>  2 files changed, 230 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index 91d505b385de5..ed016688bb56f 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -42,5 +42,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-cb1-manta.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-bigtreetech-pi.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-orangepi-zero2.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h616-x96-mate.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-bananapi-m4-berry.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> new file mode 100644
> index 0000000000000..11d893a767d4e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4-berry.dts
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Arm Ltd.
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
> +	model = "BananaPi M4 Berry";
> +	compatible = "sinovoip,bananapi-m4-berry", "allwinner,sun50i-h618";
> +
> +	aliases {
> +		ethernet0 = &emac0;
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
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 2 12 GPIO_ACTIVE_LOW>; /* PC12 */
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		key-sw4 {

"key-sw3"

> +			label = "sw3";
> +			linux,code = <BTN_0>;
> +			gpios = <&pio 2 7 GPIO_ACTIVE_LOW>;	/* PC7 */
> +		};
> +	};
> +
> +	reg_vcc5v: vcc5v {
> +		/* board wide 5V supply directly from the USB-C socket */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_vbus: regulator-usb-vbus {
> +		/* separate discrete regulator for the USB ports */
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&reg_vcc5v>;
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		/* separate discrete regulator for WiFi and Ethernet PHY */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&reg_vcc5v>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +/* Connected to an on-board RTL8821CU USB WiFi chip. */
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +/* on unpopulated pins */
> +&ehci2 {
> +	status = "disabled";
> +};

Just drop above node. I get that it's for documenting purposes, but user need
to use DT overlay in any case.

> +
> +/* Connected to an on-board FE1.1s USB hub chip, supplying 4 USB-A ports. */
> +&ehci3 {
> +	status = "okay";
> +};
> +
> +&emac0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ext_rgmii_pins>;
> +	phy-mode = "rgmii";
> +	phy-handle = <&ext_rgmii_phy>;
> +	phy-supply = <&reg_3v3>;
> +	allwinner,rx-delay-ps = <3100>;
> +	allwinner,tx-delay-ps = <700>;
> +	status = "okay";
> +};
> +
> +&ir {
> +	status = "okay";
> +};
> +
> +&mdio0 {
> +	ext_rgmii_phy: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +		reset-gpios = <&pio 8 16 GPIO_ACTIVE_LOW>;	/* PI16 */
> +	};
> +};
> +
> +&mmc0 {
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;	/* PF6 */
> +	vmmc-supply = <&reg_dldo1>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&mmc2 {
> +	vmmc-supply = <&reg_dldo1>;
> +	vqmmc-supply = <&reg_aldo1>;
> +	bus-width = <8>;
> +	non-removable;
> +	cap-mmc-hw-reset;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	status = "okay";
> +};
> +
> +/* USB ports 1 and 3 connect to onboard devices that are high-speed only. */
> +
> +/* on unpopulated pins */
> +&ohci2 {
> +	status = "disabled";
> +};

Ditto.

Best regards,
Jernej

> +
> +&pio {
> +	vcc-pc-supply = <&reg_aldo1>;
> +	vcc-pf-supply = <&reg_dldo1>;
> +	vcc-pg-supply = <&reg_dldo1>;
> +	vcc-ph-supply = <&reg_dldo1>;
> +	vcc-pi-supply = <&reg_dldo1>;
> +};
> +
> +&r_i2c {
> +	status = "okay";
> +
> +	axp313: pmic@36 {
> +		compatible = "x-powers,axp313a";
> +		reg = <0x36>;
> +		#interrupt-cells = <1>;
> +		interrupt-controller;
> +		interrupt-parent = <&pio>;
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc-1v8-pll";
> +			};
> +
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc-3v3-io";
> +			};
> +
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <810000>;
> +				regulator-max-microvolt = <990000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <810000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-name = "vdd-dram";
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
> +&usbotg {
> +	/*
> +	 * PHY0 pins are connected to a USB-C socket, but a role switch is not
> +	 * implemented: both CC pins are pulled to GND via a 5.1K resistor.
> +	 * The VBUS pins power the device, so a fixed peripheral mode
> +	 * is the best choice.
> +	 * The board can be powered via GPIOs, in this case port0 *can*
> +	 * act as a host (with a cable/adapter ignoring CC), as VBUS is
> +	 * then provided by the GPIOs. Any user of this setup would
> +	 * need to adjust the DT accordingly: dr_mode set to "host",
> +	 * enabling OHCI0 and EHCI0.
> +	 */
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb3_vbus-supply = <&reg_usb_vbus>;
> +	status = "okay";
> +};
> 





