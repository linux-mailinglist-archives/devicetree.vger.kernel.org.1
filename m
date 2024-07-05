Return-Path: <devicetree+bounces-83486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F679288EC
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 14:46:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 695D11C218C2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 12:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071FC14D6FB;
	Fri,  5 Jul 2024 12:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="iu3Dyxy9"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AB414BF9B
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 12:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720183567; cv=none; b=kO+MTXE3N8RjUw+/0Z24N8fI0sLdME+t/o47D6XC59JW3/ZiGes6CxwyWyPLgPodz5pjvw/dWGdeuLClCRu+pQT8zXmPDB8X0o6yxmty2+6KZIDbzc2hwy9VhrL8DRy1+zYCc8W6moI4pl2AS2Vc5KJ4jbbt6xobctdO6p4vaxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720183567; c=relaxed/simple;
	bh=maBKQFuOKUHD4QYdq8DY3g8Z/btky+Fhq2zM/6N22yE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=H2WviznU8CiJcHfIWXukNXVVX8jOuwumcsHIPCXs7LHLqBfCy3ulOXbAZrOkcUdHxt4MwXo4lPDY5+UWSYFuayeVn3ibpwh7O3Q1GR3jTZNTzNkMv0syHwaMLOn5MYUIglUjAV+H8Mp9BimXyYPJ0zEH55DK/NF0IeZU46t4ywk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=iu3Dyxy9; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id C7E9424000E;
	Fri,  5 Jul 2024 12:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1720183563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=izDTBgSlWHNazZLvxqb8PfZXFxJ5rIcyB7wf/ExlCl8=;
	b=iu3Dyxy9a9+zRxy28CaeoKV5nPkwtY+e+P1xCapwovheuEyMb1G4Xa2+dG9Z6d938aVozu
	+7RH7yZLZSus0Q6dm8jz2XRR97E0aqeJTBlAQSWPqTvD178Et2UbMVuIsAjObZwgIJ9m2L
	cAQykWl8htxabNDXsFJFhS5q7k8h+/BOC3eQDjWwUW5Nwfx9LbPAVHdsEnqtQQBfIB7RKN
	ADMr0KA1ohorKpCtsBpg8+joW075Bqpy4TYpOaospU3Gl+vFAqgvunuhfUjp+LiUz5y7EV
	iiDO2ttrn3H8E/Shx6SsmZHyAJaRAkZbcp+QYKM9/aWW1BLxuli2inM4T7fMEA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Arnd Bergmann
 <arnd@arndb.de>,
 soc@kernel.org
Cc: arm@kernel.org, Andy Shevchenko <andy@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v13 7/8] ARM: dts: turris-omnia: Add MCU
 system-controller node
In-Reply-To: <20240701113010.16447-8-kabel@kernel.org>
References: <20240701113010.16447-1-kabel@kernel.org>
 <20240701113010.16447-8-kabel@kernel.org>
Date: Fri, 05 Jul 2024 14:46:02 +0200
Message-ID: <87frsoj9bp.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Marek Beh=C3=BAn <kabel@kernel.org> writes:

> Turris Omnia's MCU provides various features that can be configured over
> I2C at address 0x2a. Add device-tree node.
>
> This does not carry a Fixes tag - we do not want this to get backported
> to stable kernels for the following reason: U-Boot since v2022.10
> inserts a phy-reset-gpio property into the WAN ethernet node pointing to
> the MCU node if it finds the MCU node with a cznic,turris-omnia-mcu
> compatible. Thus if this change got backported to a stable kernel, the
> WAN interface driver would defer probe indefinitely (since it would wait
> for the turris-omnia-mcu driver which would not be present).
>
> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  .../dts/marvell/armada-385-turris-omnia.dts   | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch=
/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> index 7b755bb4e4e7..59079d63fe27 100644
> --- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> @@ -218,7 +218,22 @@ i2c@0 {
>  			#size-cells =3D <0>;
>  			reg =3D <0>;
>=20=20
> -			/* STM32F0 command interface at address 0x2a */
> +			mcu: system-controller@2a {
> +				compatible =3D "cznic,turris-omnia-mcu";
> +				reg =3D <0x2a>;
> +
> +				pinctrl-names =3D "default";
> +				pinctrl-0 =3D <&mcu_pins>;
> +
> +				interrupt-parent =3D <&gpio1>;
> +				interrupts =3D <11 IRQ_TYPE_NONE>;
> +
> +				gpio-controller;
> +				#gpio-cells =3D <3>;
> +
> +				interrupt-controller;
> +				#interrupt-cells =3D <2>;
> +			};
>=20=20
>  			led-controller@2b {
>  				compatible =3D "cznic,turris-omnia-leds";
> @@ -501,6 +516,11 @@ fixed-link {
>  };
>=20=20
>  &pinctrl {
> +	mcu_pins: mcu-pins {
> +		marvell,pins =3D "mpp43";
> +		marvell,function =3D "gpio";
> +	};
> +
>  	pcawan_pins: pcawan-pins {
>  		marvell,pins =3D "mpp46";
>  		marvell,function =3D "gpio";
> --=20
> 2.44.2

