Return-Path: <devicetree+bounces-13110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA27DC940
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E4B82815D1
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7A212B99;
	Tue, 31 Oct 2023 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ucw.cz header.i=@ucw.cz header.b="VV9lesz2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602B6A44
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:16:40 +0000 (UTC)
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BBD89F;
	Tue, 31 Oct 2023 02:16:38 -0700 (PDT)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 5CBFA1C006B; Tue, 31 Oct 2023 10:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1698743796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Jn+Evfzcr75myizwywLoe/KMO2gJIGhQeoCHBpAkFXk=;
	b=VV9lesz2cKbKq5VdigAlQcC45nA8q2Ij4Wf2JscnIKd0xePTYcbgEzu1SPZsHaT0fpVm68
	+b8cxI2wl2rAv0Lav3nm+67AN3JmSWJHD8h+i+50e5R+O5eEPA7dvtifaBbUOwx89bFfpU
	C40xSsaMcsEoz1iIWvajYfmeqo8kvpE=
Date: Tue, 31 Oct 2023 10:16:35 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: bcousson@baylibre.com, tony@atomide.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap4: embt2ws: add LED
Message-ID: <ZUDF8zuKdYp/k0ox@duo.ucw.cz>
References: <20230819143109.471615-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="F0bfpAw7xJvIBZth"
Content-Disposition: inline
In-Reply-To: <20230819143109.471615-1-andreas@kemnade.info>


--F0bfpAw7xJvIBZth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Add LED since the driver is now available.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Is it one LED or three LEDs?

If it is one, we should use multicolor...

BR,
										Pavel
									=09
> @@ -206,7 +207,31 @@ &i2c3 {
> =20
>  	clock-frequency =3D <100000>;
> =20
> -	/* TODO: BD2606MVV at 0x66 */
> +	led-controller@66 {
> +		compatible =3D "rohm,bd2606mvv";
> +		reg =3D <0x66>;
> +
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		led@0 {
> +			reg =3D <0>;
> +			color =3D <LED_COLOR_ID_GREEN>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +
> +		led@2 {
> +			reg =3D <2>;
> +			color =3D <LED_COLOR_ID_BLUE>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +
> +		led@4 {
> +			reg =3D <4>;
> +			color =3D <LED_COLOR_ID_RED>;
> +			function =3D LED_FUNCTION_STATUS;
> +		};
> +	};
>  };
> =20
>  &i2c4 {

--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--F0bfpAw7xJvIBZth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCZUDF8wAKCRAw5/Bqldv6
8mWnAKCiBU5Ff0xWIgBXzcW1R+AgdHju8gCgkai3U4j4/etK2ZP+ugVFix21tec=
=yOLR
-----END PGP SIGNATURE-----

--F0bfpAw7xJvIBZth--

