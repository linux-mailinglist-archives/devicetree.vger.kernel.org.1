Return-Path: <devicetree+bounces-238356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD04FC5A5BE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E1C064F2AF9
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD5B31BC8F;
	Thu, 13 Nov 2025 22:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="pdaf5v2k"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8682E03FE;
	Thu, 13 Nov 2025 22:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763073377; cv=none; b=F75jd72wWxL4JHNZ1rA99H80HfgClKX741P3+awzvLwPipO0NTx4/NevrTa6tO6eSWRoxW6KFD59fpruOOxTP6xl3Y2aUJCGrPdNJFt5O6swelRYTCn/IFDvrZgEy0tQQ8ytCjpl8KXgANlOS9YLgz18p//6J+V0z92hTVh6/lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763073377; c=relaxed/simple;
	bh=6xOuc9OuR5SyBNHngmpgW0egzWTHw3MpsMjVZiVPkng=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uKPZrZX3hnmXCo31eJOyoP7VexMN0866EVhep+D8Qpp2IwW4XW4ApiOd08O9qM5NgVqvsepXgVqoWtFFi+t8IruIooQWIjoucKjIKBhdgqWHpvU+q+q0LHtJZxxd4qi5iBRtRwjHDZZA+Tkp43HoLAf5RUxHJpZ1ujo6JXnEuf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=pdaf5v2k; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N8U24sO6e6httf2hxXjc6YUvS3goaUUaOyj8qFfupFU=; b=pdaf5v2kpjdd3L8m7MpTD/k7FZ
	tEeUMmQgNYvULW6OFSQyWsUYSGIP0x1cZqDXwkXZhL6AkIHEO3EPf+qurca7bn5gErEAu1AgnwKXM
	oWKsss3Jam9eKIbsrDCPPU0M0usEhuzkeuMy7OP04rtsORGZ8X44U2LfAmd5Vn4/ptx1hHY9TJ/Tw
	aRYkw3qRlQpZot7Qwn7JOK5PqVeCCJOqaeyrepB94GjfioEXAtEJoWOTbY389yMdGJoZB0aY2BOXl
	mx2n1kCqVGU6fyLYV92LkVGfgKwcEUAZCw0W6UOukop8G6NmYZkkEfc9B5Fmn/LyICMVLBWhcazyw
	Ki/XwKuw==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJfv4-0005Rc-Hp; Thu, 13 Nov 2025 23:35:58 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, michael.opdenacker@rootcommit.com
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: add Tinkerboard 3 and 3S device tree
Date: Thu, 13 Nov 2025 23:35:57 +0100
Message-ID: <3310785.5fSG56mABF@diego>
In-Reply-To: <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
References:
 <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Michael,

Am Dienstag, 11. November 2025, 18:20:23 Mitteleurop=C3=A4ische Normalzeit =
schrieb michael.opdenacker@rootcommit.com:
> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
>=20
> Add initial device tree support for Asus Tinkerboard 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
>=20
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch (to mask the eMMC and enter "Mask ROM"
> mode for recovery) to the "3" version.
>=20
> This adds support for:
> - Debug UART (/dev/ttyS2)
> - SD card (/dev/mmcblk1)
> - eMMC (/dev/mmcblk0, only on Tinkerboard 3S)
> - I2C:
>   - i2c0 (internal bus with a PMIC and regulators)
>   - i2c2 (internal bus with an at24 eeprom and an RTC device)
> - USB 2.0 ports
> - 2 GPIO LEDS
>=20
> Link: https://tinker-board.asus.com/series/tinker-board-3.html [1]
> Link: https://tinker-board.asus.com/series/tinker-board-3s.html [2]
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---

please follow the DTS coding style
https://docs.kernel.org/devicetree/bindings/dts-coding-style.html


> +/ {
> +	aliases {
> +		serial2 =3D &uart2;
> +		mmc1 =3D &sdmmc0;
> +		i2c0 =3D &i2c0;
> +		i2c2 =3D &i2c2;

alphabetical property order


> +	};
> +
> +	chosen {
> +		stdout-path =3D "serial2:1500000n8";
> +	};
> +
> +	vcc3v3_sys: regulator-3v3-vcc-sys {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		vin-supply =3D <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_sys: regulator-5v0-vcc-sys {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +	};
> +
> +	vcc5v0_usb_host: regulator-5v0-vcc-usb-host {
> +		compatible =3D "regulator-fixed";
> +		enable-active-high;
> +		gpios =3D <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&usb_host_pwren_h>;
> +		regulator-name =3D "vcc5v0_usb_host";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		vin-supply =3D <&vcc5v0_sys>;
> +	};
> +
> +	gpio_leds: gpio-leds {

gpio-foo before regulator-bar

> +		compatible =3D "gpio-leds";
> +
> +		act-led {
> +			gpios =3D <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger=3D"mmc1";
> +};

missing indentation

> +
> +		rsv-led {
> +			gpios =3D <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger=3D"none";
> +		};
> +	};
> +};
> +
> +&uart2 {

alphabetical ordering of phandles please (uart2 definitly somewhere after i=
2c0)

> +	status =3D "okay";
> +};
> +
> +&i2c0 {
> +	status =3D "okay";
> +
> +	rk809: pmic@20 {
> +		compatible =3D "rockchip,rk809";
> +		reg =3D <0x20>;
> +		assigned-clocks =3D <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents =3D <&cru CLK_I2S1_8CH_TX>;
> +		#clock-cells =3D <1>;
> +		clocks =3D <&cru I2S1_MCLKOUT_TX>;
> +		clock-names =3D "mclk";
> +		clock-output-names =3D "rk809-clkout1", "rk809-clkout2";
> +		interrupt-parent =3D <&gpio0>;
> +		interrupts =3D <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pmic_int_l>, <&i2s1m0_mclk>;
> +		#sound-dai-cells =3D <0>;
> +		system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply =3D <&vcc3v3_sys>;
> +		vcc2-supply =3D <&vcc3v3_sys>;
> +		vcc3-supply =3D <&vcc3v3_sys>;
> +		vcc4-supply =3D <&vcc3v3_sys>;
> +		vcc5-supply =3D <&vcc3v3_sys>;
> +		vcc6-supply =3D <&vcc3v3_sys>;
> +		vcc7-supply =3D <&vcc3v3_sys>;
> +		vcc8-supply =3D <&vcc3v3_sys>;
> +		vcc9-supply =3D <&vcc3v3_sys>;
> +
> +		regulators {
> +			vcc_1v8: DCDC_REG5 {
> +				regulator-name =3D "vcc_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: SWITCH_REG2 {
> +				regulator-name =3D "vcc3v3_sd";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-name =3D "vccio_sd";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: SWITCH_REG1 {
> +				regulator-name =3D "vcc_3v3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu: regulator@40 {

you probably need &cpu0 phandles to set this regulator-supply?

> +		compatible =3D "silergy,syr827";
> +		reg =3D <0x40>;
> +		fcs,suspend-voltage-selector =3D <1>;
> +		regulator-name =3D "vdd_cpu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <830000>;
> +		regulator-max-microvolt =3D <1200000>;
> +		regulator-ramp-delay =3D <2300>;
> +		vin-supply =3D <&vcc3v3_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	status =3D "okay";
> +
> +	m24c08@50 {

I guess eeprom@50 ?

Heiko



