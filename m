Return-Path: <devicetree+bounces-139931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF9DA1790E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 252DB1884BEB
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6998D1B2191;
	Tue, 21 Jan 2025 08:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAPnB6Vh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C879145A18;
	Tue, 21 Jan 2025 08:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737447046; cv=none; b=NTXG5IFot9Vdkh2JroyvBlKz0JKiNi0AV76yIsibkhm9W6EAPrfe+7nJckNTowXBr1qJOJ4xy7Wsqc1v73uSeSG5KhIEcjYCPW8k0Oy0322GWLkrTwDXqL9fqfJmec6ouJ7BRCu5/6BZv23OfbUBrLJD34qZa6mOeoe53EkzuPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737447046; c=relaxed/simple;
	bh=4E7ESDSaf4+a9ETUc/ps41hfuefD5kFw+WeQW47jS/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nkV08EW31MDzUwka11ewusii0jq14he1r10giqIdneuk+Zn4e0pm0zSzelS/8oOeciwpX5/7XOfa2VXIOIQ+ehHMEtdbS5GQ3PU/9rjz+xs3t2XYN36AqxqeEsYbVDxAEGJ8rGEb4wNc5JrzqhRGTjOszvgQPot2eC1mH+47Ftk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAPnB6Vh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12DDFC4CEDF;
	Tue, 21 Jan 2025 08:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737447045;
	bh=4E7ESDSaf4+a9ETUc/ps41hfuefD5kFw+WeQW47jS/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XAPnB6Vhwla9Scsq5i5MuiaGhM3QVdz960fI6LZ/OI7koDCehme0oy9Rp1caBgxva
	 NZXRBTpVwhPlxlSm1hHI/Npl0Hge7XGmv1hirB71Bt7hH8k74bE5GBrtwvmV/pFaM7
	 5flnvBN+atF8z4a+oVz8GANOFhdGXcgiqYneXjGrgN0GbUG7LhdzgTythBzrq9tmuc
	 JnX2eIlcPaJ+HoJHE7tCrCL6JGa1+mGH6dCvmtOEcupihZ67hydxdiDizuDOcGjt6L
	 m+flK7O7RDyt7rFpwT15n9gKZ2+00ZtClZXdH9Fw38jUa17cxvixE7/Iuputf3ywmn
	 fn9oTH1iDRA1Q==
Date: Tue, 21 Jan 2025 09:10:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	kernel@pengutronix.de, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Leonard =?utf-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>
Subject: Re: [PATCH stm32-next v2 2/2] ARM: dts: stm32: lxa-fairytux2: add
 Linux Automation GmbH FairyTux 2
Message-ID: <20250121-sparkling-screeching-bison-eadce1@krzk-bin>
References: <20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de>
 <20250120-lxa-fairytux-v2-2-95f4a0eaa44d@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250120-lxa-fairytux-v2-2-95f4a0eaa44d@pengutronix.de>

On Mon, Jan 20, 2025 at 05:33:48PM +0100, Marc Kleine-Budde wrote:
> +&i2c1 {
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&i2c1_pins_b>;
> +	pinctrl-1 =3D <&i2c1_sleep_pins_b>;
> +	status =3D "okay";
> +
> +	io_board_gpio: gpio6408@20 {

Not much improved here. I gave even link with examples and there is no
example there called "gpio48548796573467346574" or whatever number there
would be.

So again: node names should be generic. gpio@

> +		compatible =3D "ti,tca6408";
> +		reg =3D <0x20>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		vcc-supply =3D <&v3v3_hdmi>;
> +		gpio-line-names =3D "LED1_GA_YK", "LED2_GA_YK", "LED1_GK_YA", "LED2_GK=
_YA",
> +				  "RS485_EN", "RS485_120R", "", "CAN_120R";
> +	};
> +};
> +
> +&led_controller_io {
> +	/*
> +	 * led-2 and led-3 are internally connected antiparallel to one
> +	 * another inside the ethernet jack like this:
> +	 * GPIO1 ---+---|led-2|>--+--- GPIO3
> +	 *          +--<|led-3|---+
> +	 * E.g. only one of the LEDs can be illuminated at a time while
> +	 * the other output must be driven low.
> +	 * This should likely be implemented using a multi color LED
> +	 * driver for antiparallel LEDs.
> +	 */
> +	led-2 {
> +		label =3D "green:act";

I don't see improvements here either. Where is color property? Where is
function?

Again, drop label.

> +		gpios =3D <&io_board_gpio 1 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	led-3 {
> +		label =3D "orange:act";
> +		gpios =3D <&io_board_gpio 3 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&usart3 {
> +	/*
> +	 * On Gen 1 FairyTux 2 only RTS can be used and not CTS as well,
> +	 * Because pins PD11 (CTS) and PI11 (USER_BTN1) share the same
> +	 * interrupt and only one of them can be used at a time.
> +	 */
> +	rts-gpios =3D <&gpiod 12 GPIO_ACTIVE_LOW>;
> +};
> +
> +&usbotg_hs {
> +	dr_mode =3D "peripheral";
> +};
> diff --git a/arch/arm/boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts b/ar=
ch/arm/boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts
> new file mode 100644
> index 0000000000000000000000000000000000000000..f263e30e6bcee751b5d550e00=
a202d2100c5f9fc
> --- /dev/null
> +++ b/arch/arm/boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts
> @@ -0,0 +1,146 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2024 Leonard G=C3=B6hrs, Pengutronix
> + */
> +
> +/dts-v1/;
> +
> +#include "stm32mp153c-lxa-fairytux2.dtsi"
> +
> +/ {
> +	model =3D "Linux Automation GmbH FairyTux 2 Gen 2";
> +	compatible =3D "lxa,stm32mp153c-fairytux2-gen2", "oct,stm32mp153x-osd32=
", "st,stm32mp153";
> +
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		button-left {
> +			label =3D "USER_BTN1";
> +			linux,code =3D <KEY_ESC>;
> +			gpios =3D <&gpioi 10 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +		};
> +
> +		button-right {
> +			label =3D "USER_BTN2";
> +			linux,code =3D <KEY_HOME>;
> +			gpios =3D <&gpioe 9 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +		};
> +	};
> +};
> +
> +&gpiof {
> +	gpio-line-names =3D "", "", "", "", "",				/*  0 */
> +			  "", "", "", "", "",				/*  5 */
> +			  "", "", "", "", "",				/* 10 */
> +			  "";						/* 15 */
> +};
> +
> +&gpioh {
> +	gpio-line-names =3D "", "", "", "", "LCD_RESET",			/*  0 */
> +			  "", "", "", "", "",				/*  5 */
> +			  "", "", "GPIO1", "GPIO_INT", "",		/* 10 */
> +			  "";						/* 15 */
> +};
> +
> +&gpioi {
> +	gpio-line-names =3D "GPIO2", "", "", "", "",			/*  0 */
> +			  "", "", "", "ETH_", "",			/*  5 */
> +			  "", "USER_BTN1";				/* 10 */
> +};
> +
> +&i2c1 {
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&i2c1_pins_b>;
> +	pinctrl-1 =3D <&i2c1_sleep_pins_b>;
> +	status =3D "okay";
> +
> +	io_board_gpio: gpio6408@20 {

Same problem

> +		compatible =3D "ti,tca6408";
> +		reg =3D <0x20>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		interrupt-parent =3D <&gpioh>;
> +		interrupts =3D <13 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-controller;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&board_tca6408_pins>;
> +		#interrupt-cells =3D <2>;
> +		vcc-supply =3D <&v3v3_hdmi>;
> +		gpio-line-names =3D "LED1_GA_YK", "LED2_GA_YK", "LED1_GK_YA", "USB_CC_=
ALERT",
> +				  "RS485_EN", "RS485_120R", "USB_CC_RESET", "CAN_120R";
> +	};
> +
> +	usb_c: tcpc@28 {

If this is typec, then typec@

> +		compatible =3D "st,stusb1600";
> +		reg =3D <0x28>;
> +		interrupt-parent =3D <&io_board_gpio>;
> +		interrupts =3D <3 IRQ_TYPE_EDGE_FALLING>;
> +		vdd-supply =3D <&reg_5v>;
> +		vsys-supply =3D <&v3v3_hdmi>;
> +
> +		connector {
> +			compatible =3D "usb-c-connector";
> +			label =3D "USB-C";
> +			power-role =3D "dual";
> +			typec-power-opmode =3D "default";
> +
> +			port {
> +				con_usbotg_hs_ep: endpoint {
> +					remote-endpoint =3D <&usbotg_hs_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	io_board_eeprom: eeprom@56 {
> +		compatible =3D "atmel,24c04";
> +		reg =3D <0x56>;
> +		vcc-supply =3D <&v3v3_hdmi>;
> +	};
> +
> +	temperature-sensor@48 {

BTW, keep order of nodes. Preferred is by unit address.

Best regards,
Krzysztof


