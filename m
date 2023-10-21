Return-Path: <devicetree+bounces-10511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA097D1B4F
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 08:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B08628254B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 06:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D39EBC;
	Sat, 21 Oct 2023 06:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEizau+6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66DE17F1
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 06:22:30 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5D1106
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 23:22:28 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5079f3f3d7aso2348638e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 23:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697869347; x=1698474147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FntaMjejU2gWLtGj930Sn2rHR1aIlW/u+KSwKSv5jBk=;
        b=BEizau+6qQor96UCzsZ+gV3FUAWOn40aYA7E+tIG6jM021bUbRllDYTSY1lIjYtbru
         Mav4ClNemlKgdvxtSUVh3Lp+MP47dNB1jFlRNqrd66pJn5apfKvx0+c++i7e9HPZRe78
         INewOiplWHZuL5X6UCHhn0OHfv+4W02Y2g1mJgEdwX76hmpw3eTUcft0bYKK4YYIG+MC
         TQuzLSnrIngj9lZJYpA2Ai73FXCxMUQ4eGg4YsTv506lBzpBOL/ADCfxLWJP2s/8iLoz
         uSQbTB3MiXyabXcbP8k3lIfTKnOpPvYqQGN+Qx3xAyJKSRSnW8VjsibLDsgwLEVlgKhS
         IfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697869347; x=1698474147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FntaMjejU2gWLtGj930Sn2rHR1aIlW/u+KSwKSv5jBk=;
        b=lnqYmDxrtjflYA07fHyIf0rncpszS53c4XFGgo8V3zSoLaXpGUphsSqrbAxvpvmS4u
         WsO7jvjzOAAiwNuyO47zN80xEqVn+cJhmzkXXS4Xlz9Jj4cBZixYrhsLZjjSa+lGzJZA
         pGBCu2T34zQZ2ph0hfYrRBN5YFLUWjqCmmH1CDRK4LahN0hZENv/25UjSR7MhlikDOBI
         zDdQOLcpQuKnabePD2DjB1oitaQn+hRE+4Na/bjoiMdSxByaCbChfA9X0n3564t2DQYw
         qjaLSYzu/O4KoVN3Bzt0zJZvXEw8MMUGNjCcMrSVi4FF53wnljDar/2Gn6AbVporAag4
         nmEg==
X-Gm-Message-State: AOJu0YySYLSnlYX425f0pFPXapPTq5HenJXgZtkuKAEHa3L8FzFUAH97
	wFAt3iccbDuBMQh40m+DTNM=
X-Google-Smtp-Source: AGHT+IFwwgx+syyl+INCM/H6kE9LSAfqzllwehbz0yaDBzrpmgHWO634CFjbGGijLLq3UK+kIjHYxQ==
X-Received: by 2002:ac2:4c0b:0:b0:506:8d2a:565a with SMTP id t11-20020ac24c0b000000b005068d2a565amr2574496lfq.69.1697869346720;
        Fri, 20 Oct 2023 23:22:26 -0700 (PDT)
Received: from archlinux.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b0032d2f09d991sm3064840wrn.33.2023.10.20.23.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 23:22:26 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Marc Zyngier <maz@kernel.org>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH 2/2] arm64: dts: allwinner: h616: add Orange Pi Zero 2W support
Date: Sat, 21 Oct 2023 08:22:24 +0200
Message-ID: <7582185.EvYhyI6sBW@archlinux>
In-Reply-To: <20231020145706.705420-3-andre.przywara@arm.com>
References:
 <20231020145706.705420-1-andre.przywara@arm.com>
 <20231020145706.705420-3-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, October 20, 2023 4:57:06 PM CEST Andre Przywara wrote:
> The Orange Pi Zero 2W is a board based on the Allwinner H618 SoC.
> It uses the RaspberryPi Zero form factor, with an optional expansion
> board, connected via an FPC connector, to provide more connectors.
> 
> The base board features:
> 	- Allwinner H618 SoC (quad Cortex-A53 cores, with 1MB L2 cache)
> 	- 1, 2 or 4GB of LPDDR4 DRAM
> 	- SD card socket
> 	- two USB-C sockets, one UFP, one DFP
> 	- HDMI connector
> 	- (yet unsupported) WiFi module
> 	- 16 MiB SPI flash
> 	- power supply via the UFP USB-C port
> 
> The FPC connector provides access to two more USB host ports, Fast
> Ethernet, some GPIOs, Audio Line out and the IR receiver pin.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

I compared it to the schematic and all values looks good. Sadly, it missed 
merge window.

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  .../allwinner/sun50i-h618-orangepi-zero2w.dts | 176 ++++++++++++++++++
>  1 file changed, 176 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts
> b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts new file
> mode 100644
> index 0000000000000..21ca1977055d9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts
> @@ -0,0 +1,176 @@
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
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "OrangePi Zero 2W";
> +	compatible = "xunlong,orangepi-zero2w", "allwinner,sun50i-h618";
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
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 2 13 GPIO_ACTIVE_HIGH>; /* PC13 
*/
> +		};
> +	};
> +
> +	reg_vcc5v: vcc5v {
> +		/* board wide 5V supply directly from the USB-C socket 
*/
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-5v";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_vcc3v3: vcc3v3 {
> +		/* SY8089 DC/DC converter */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&reg_vcc5v>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +/* USB 2 & 3 are on the FPC connector (or the exansion board) */
> +
> +&mmc0 {
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;	/* PF6 */
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_vcc3v3>;
> +	status = "okay";
> +};
> +
> +&ohci1 {
> +	status = "okay";
> +};
> +
> +&pio {
> +	vcc-pc-supply = <&reg_dldo1>;
> +	vcc-pf-supply = <&reg_dldo1>;	/* internally via VCC-IO */
> +	vcc-pg-supply = <&reg_aldo1>;
> +	vcc-ph-supply = <&reg_dldo1>;	/* internally via VCC-IO */
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
> +		interrupts = <2 9 IRQ_TYPE_LEVEL_LOW>;	/* PC9 */
> +
> +		vin1-supply = <&reg_vcc5v>;
> +		vin2-supply = <&reg_vcc5v>;
> +		vin3-supply = <&reg_vcc5v>;
> +
> +		regulators {
> +			/* Supplies VCC-PLL and DRAM */
> +			reg_aldo1: aldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<1800000>;
> +				regulator-max-microvolt = 
<1800000>;
> +				regulator-name = "vcc1v8";
> +			};
> +
> +			/* Supplies VCC-IO, so needs to be always on. 
*/
> +			reg_dldo1: dldo1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<3300000>;
> +				regulator-max-microvolt = 
<3300000>;
> +				regulator-name = "vcc3v3";
> +			};
> +
> +			reg_dcdc1: dcdc1 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<810000>;
> +				regulator-max-microvolt = 
<990000>;
> +				regulator-name = "vdd-gpu-sys";
> +			};
> +
> +			reg_dcdc2: dcdc2 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<810000>;
> +				regulator-max-microvolt = 
<1100000>;
> +				regulator-name = "vdd-cpu";
> +			};
> +
> +			reg_dcdc3: dcdc3 {
> +				regulator-always-on;
> +				regulator-min-microvolt = 
<1100000>;
> +				regulator-max-microvolt = 
<1100000>;
> +				regulator-name = "vdd-dram";
> +			};
> +		};
> +	};
> +};
> +
> +&spi0  {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi0_pins>, <&spi0_cs0_pin>;
> +
> +	flash@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <40000000>;
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
> +	 * PHY0 pins are connected to a USB-C socket, but a role switch
> +	 * is not implemented: both CC pins are pulled to GND.
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
> +	usb1_vbus-supply = <&reg_vcc5v>;
> +	status = "okay";
> +};





