Return-Path: <devicetree+bounces-63117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63698B3C4F
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD982B27F11
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812D114B09E;
	Fri, 26 Apr 2024 16:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="h6q28Q0I"
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B978F148FE6
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147292; cv=none; b=uwze5uNlV8GXHP8ej0hb42kdBoabw8aT8Tzi5K5z2l+T6KK45WEPMDE/PkfRk/sXLcMCPk09+V5SomQ0f9WpbFADZbXGLwQELg+/AaGSIFxErTRXMPHiyvivyMyZVJa1SgvFwpR6PKNkcfD7Fk8IBks1iC6fDgTiV1vrwl5K5Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147292; c=relaxed/simple;
	bh=zLV+tzd63aprwriLMJR/m+3hC3mQGFjjYlhARJgKwH8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=la6BdpnbFK3GoMP0TwXNg4rPSgbZIVD54J5ZINuByTmPX8XPvQq1FSYBjkwZrYfTRBbnlbNbPLYbd07zDIkMGynbQ+J22KdHbHO/8fj/iL/FfuTjWlZxMy5DMcNYXvjSgnAFoSKWwWWuwAb5Cki/1hsn76aB7ebKR1PYqM1Yfg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=h6q28Q0I; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0137B4000A;
	Fri, 26 Apr 2024 16:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1714147281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jGAYTrF9PeV11woLuWXWEtsmjNv/+HmvXLGuWJGSei4=;
	b=h6q28Q0IU1HbasoIYl1HOB5LAw17MwEfESPRg/PB1SZVZR6nige5l/syys66cPpJ+sn7ZR
	QpeH8GrAJnOG+JZwtdfpFXIx+GzIxtbJVL2yC0RvIIOj+V9LHafwc6z3i1QlJHu9B2aQvw
	ILab5k1+soOXPzs3o/IapePP1SRliB4Yt/FGIoLHFJeJoBVu5Dxlbglj4tbnkcJq0sVG6s
	sC31UxC4pgk2HQac2fzN85fxXEQ5ueMx/NRx92bsJmj+AoMhvy3w5GSblXj4RKYVF4XZpr
	8PvSSPHaWS8OwFgtPQcfGz51kIN2Z8LsLQLs1ZheVM/JNcTXq6qW3ntG06LY1w==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Arnd Bergmann
 <arnd@arndb.de>,
 soc@kernel.org, arm@kernel.org, Andy Shevchenko <andy@kernel.org>, Hans de
 Goede <hdegoede@redhat.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>
Cc: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v7 8/9] ARM: dts: turris-omnia: Add MCU
 system-controller node
In-Reply-To: <20240424173809.7214-9-kabel@kernel.org>
References: <20240424173809.7214-1-kabel@kernel.org>
 <20240424173809.7214-9-kabel@kernel.org>
Date: Fri, 26 Apr 2024 18:01:20 +0200
Message-ID: <87bk5w5d0v.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Hello Marek,

> Turris Omnia's MCU provides various features that can be configured over
> I2C at address 0x2a. Add device-tree node.
>
> Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")

Is it really a fix ?

It seems that the node you add depends on the firmware support that was
not yet added.

Gregory

> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
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
> 2.43.2

