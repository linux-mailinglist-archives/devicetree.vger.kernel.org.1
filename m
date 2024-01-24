Return-Path: <devicetree+bounces-34637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECEA83A645
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 711491C232BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9538182CC;
	Wed, 24 Jan 2024 10:01:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D3F1AAC4
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706090509; cv=none; b=Q/i0AFfeJiNn+3JvBhIsiIazDst0s4Wsz7m/qRNbqaN55HJXij67vhG6vBBawRSKfjJIaqv1h+3EYupiE6r3nay/mkuOA0gbik2/9dBpRa5rygbfFGZYCa+NENdlUpmrF0vEmSEbajAJxfeJIUDBAsJB9kQ4c+pSKrRFk+Cy/ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706090509; c=relaxed/simple;
	bh=TBG/Fik5tdCQjDd8JEdUXF6T27+dtYJLFbSDI1eLI10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tF4RpNvYH3cBXwE5ZkKPobTPWrSXv+241BqyOmTaGNe+tGOD9lFI3BWS6nc/uv32FmwQaB+YN8k270U9FNCYBNX6EqjSuRrJyotbiIE+iRJ+3NRbGyZwxVl8EYclIMoCW6qqtLtAYWFJNjBYJRt2DHCjGaRqMCXZyFuYCY8hym0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSa4i-0005l5-Mm; Wed, 24 Jan 2024 11:01:40 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSa4h-0021mi-Jk; Wed, 24 Jan 2024 11:01:39 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSa4h-0072vx-1f;
	Wed, 24 Jan 2024 11:01:39 +0100
Date: Wed, 24 Jan 2024 11:01:39 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org, 
	Leonard =?utf-8?B?R8O2aHJz?= <l.goehrs@pengutronix.de>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: stm32: lxa-tac: drive powerboard lines as
 open-drain
Message-ID: <j3i24md6kz2t7tw2teqbhhab2iywj6xkeg4qxw7do6jawm7jxw@ew64jmeef5zl>
References: <20231018203154.1681457-2-u.kleine-koenig@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zdtjwwg5pvmfurm6"
Content-Disposition: inline
In-Reply-To: <20231018203154.1681457-2-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--zdtjwwg5pvmfurm6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Oct 18, 2023 at 10:31:55PM +0200, Uwe Kleine-K=F6nig wrote:
> From: Leonard G=F6hrs <l.goehrs@pengutronix.de>
>=20
> This results in a slight improvement in EMI performance due to the lines
> no longer being driven by the somewhat noisy VDD_IO supply of the SoM.
>=20
> Signed-off-by: Leonard G=F6hrs <l.goehrs@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts | 2 +-
>  arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts b/arch/arm=
/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
> index 8a34d15e9005..4cc177031661 100644
> --- a/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
> +++ b/arch/arm/boot/dts/st/stm32mp157c-lxa-tac-gen2.dts
> @@ -148,7 +148,7 @@ adc@0 {
>  		compatible =3D "ti,lmp92064";
>  		reg =3D <0>;
> =20
> -		reset-gpios =3D <&gpioa 4 GPIO_ACTIVE_HIGH>;
> +		reset-gpios =3D <&gpioa 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  		shunt-resistor-micro-ohms =3D <15000>;
>  		spi-max-frequency =3D <5000000>;
>  		vdd-supply =3D <&reg_pb_3v3>;
> diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boo=
t/dts/st/stm32mp15xc-lxa-tac.dtsi
> index f09b7c384bd9..188c9cfc7102 100644
> --- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
> @@ -409,7 +409,7 @@ &sdmmc2 {
>  &spi2 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&spi2_pins_c>;
> -	cs-gpios =3D <&gpiof 12 GPIO_ACTIVE_LOW>;
> +	cs-gpios =3D <&gpiof 12 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>  	status =3D "okay";
>  };
> =20
>=20
> base-commit: 4d5ab2376ec576af173e5eac3887ed0b51bd8566

Gentle ping. Given this patch is two months old now I assume it fell
through the cracks?

Best regards
UWe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zdtjwwg5pvmfurm6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWw4AIACgkQj4D7WH0S
/k5z/Qf/cLoIQVdsF5ePfBcAIdvac1PdJcvU05lZuhnL7RY5zcx1GyuLucE8/ODi
xixNy7J3JTyyJRJVyc8GeLQwEQtcbtwR5zSJ71ZCyLAOBbx1nKaQ/BGDeymAIlSI
QBJouj59IeLkXQVT9B4ZfFIbzKfmR2zW9GQR8JlFhh1Q9X42Z+xvTakMAwd205W+
sf21ACalUqNcPxjWRxgCOIUz7yVuS9ohRXF1iyh75TzXHYtRxwY1+HUCtIZkjBWq
4Pvfk84QSwXyPGXmfnv18BqGUxK4ZgR+YHUyx3HY7VHNn05qfe1k4l3FxN3JwPpG
/zdWSfVNpBfWeT59oyJq2DL81yBGoA==
=nDYh
-----END PGP SIGNATURE-----

--zdtjwwg5pvmfurm6--

