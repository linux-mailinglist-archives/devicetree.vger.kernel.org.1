Return-Path: <devicetree+bounces-97880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 839C2963F84
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 11:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EF702864CB
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 09:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8338418A920;
	Thu, 29 Aug 2024 09:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="LRBHRQD6"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBD316133E
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 09:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724922509; cv=none; b=UKrdD9j/vY+0umfMVDh6drrm/5vEcAtzYAat9zwoUZLJTZZmGYObBzmjWs6jWZw3JJdF84rK7GpF4nYaLeBl7Agv3UaWEXO6T89WF1P7K1z8N2eOvMi30q0pTZ5gpum/dEXvGvIpEi+K0ozijM16lpSXzqccgRGZmGfvskQNSNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724922509; c=relaxed/simple;
	bh=90VFIU4AH/4sYFLGZHSOhk+/IMY74kCnKaj3DguB14I=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a79vOc3KvPp8RjHVRm5Lt5lAshelRRWdWO1lFQSlzkaqGh9goBuADw5xt7vtp8GmcC8Z27f1JhaHePDlJ66xINbm4791Ds9UJk5Ymc1CFZY9k6drHPfc997h7lAhE56oPSgmSbc58h7EJb+MuikFzsCcgZRszwLomPSBpkH/ooE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=LRBHRQD6; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from wsk (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 2782E866EB;
	Thu, 29 Aug 2024 11:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1724922505;
	bh=ET8wjvrqjV39C9fkxvIRJrGj3IcZRwoHrdDLXM+u/SU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=LRBHRQD616T1qp3QhQi+hZo5cObJTJ3AghYeU5RgVbu7ff6NT0+nNT0Sx2exbgpLL
	 jEjQysrnOgVU9AZkwF5/szM4QQ1hjkfv3bIch8/B35XOZ0LaHv1h6jFwEwKY95lLeU
	 pDK+EpB4TFOpQJdx1dWsYLdi4s/OngggKBetyIfHPfAXrqNb6GRjBmH0TKItwwK1DK
	 q08LO6TNgoYfGO5gC8vZSn3GgsP/mGyhKNHxhSKWgr70D0Si8AOV7adJkbgevjCOZT
	 rrA2sBgFbJgsdVvqHQM/Y6vqrfjQ9adg33sGiG/9KoeK8eN8cuIjvjInQrRVuFwmMC
	 vicm+H++RRtpw==
Date: Thu, 29 Aug 2024 11:08:23 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx23/8: Rename apbh and apbx nodes
Message-ID: <20240829110823.4720bd02@wsk>
In-Reply-To: <20240828194919.3192996-1-festevam@gmail.com>
References: <20240828194919.3192996-1-festevam@gmail.com>
Organization: denx.de
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/heNIpFrN3x=kGokuZU34o=d";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/heNIpFrN3x=kGokuZU34o=d
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 28 Aug 2024 16:49:19 -0300
Fabio Estevam <festevam@gmail.com> wrote:

> From: Fabio Estevam <festevam@denx.de>
>=20
> According to simple-bus.yaml, apbh and apbx are not valid bus names.
>=20
> Rename them to apbh-bus and apbx-bus to fix the following dt-schema
> warnings:
>=20
> 'apbh@80000000' does not match
> '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
> 'apbx@80040000' does not match
> '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/nxp/mxs/imx23-evk.dts           | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts     | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts         | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts          | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23.dtsi              | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts      | 2 +-
>  arch/arm/boot/dts/nxp/mxs/imx28.dtsi              | 4 ++--
>  8 files changed, 15 insertions(+), 15 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts
> b/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts index
> 7365fe4581a3..33b36af1656f 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts @@ -52,7 +52,7 @@ panel_in:
> endpoint { };
> =20
>  	apb@80000000 {
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			nand-controller@8000c000 {
>  				pinctrl-names =3D "default";
>  				pinctrl-0 =3D <&gpmi_pins_a
> &gpmi_pins_fixup>; @@ -99,7 +99,7 @@ display_out: endpoint {
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			lradc@80050000 {
>  				status =3D "okay";
>  				fsl,lradc-touchscreen-wires =3D <4>;
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts
> b/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts index
> 229e727b222e..e372e9327a47 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts @@ -19,7 +19,7 @@
> memory@40000000 { };
> =20
>  	apb@80000000 {
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			ssp0: spi@80010000 {
>  				compatible =3D "fsl,imx23-mmc";
>  				pinctrl-names =3D "default";
> @@ -64,7 +64,7 @@ ssp1: spi@80034000 {
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			lradc@80050000 {
>  				status =3D "okay";
>  			};
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
> b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts index
> b23e7ada9c80..cb661bf2d157 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts @@ -55,7 +55,7 @@
> memory@40000000 { };
> =20
>  	apb@80000000 {
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			ssp0: spi@80010000 {
>  				compatible =3D "fsl,imx23-mmc";
>  				pinctrl-names =3D "default";
> @@ -100,7 +100,7 @@ MX23_PAD_PWM3__GPIO_1_29
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			pwm: pwm@80064000 {
>  				pinctrl-names =3D "default";
>  				pinctrl-0 =3D <&pwm2_pins_a>;
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts
> b/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts index
> 69124ba6a666..b2b6f8514999 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts @@ -16,7 +16,7 @@
> memory@40000000 { };
> =20
>  	apb@80000000 {
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			ssp0: spi@80010000 {
>  				compatible =3D "fsl,imx23-mmc";
>  				pinctrl-names =3D "default";
> @@ -44,7 +44,7 @@ MX23_PAD_PWM4__GPIO_1_30
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			auart0: serial@8006c000 {
>  				pinctrl-names =3D "default";
>  				pinctrl-0 =3D <&auart0_pins_a>;
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
> b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts index
> 28341d8315c2..0b088c8ab6b6 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts @@ -54,7 +54,7 @@
> memory@40000000 { };
> =20
>  	apb@80000000 {
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			ssp0: spi@80010000 {
>  				compatible =3D "fsl,imx23-mmc";
>  				pinctrl-names =3D "default";
> @@ -101,7 +101,7 @@ MX23_PAD_ROTARYB__GPIO_2_8
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			i2c: i2c@80058000 {
>  				pinctrl-names =3D "default";
>  				pinctrl-0 =3D <&i2c_pins_a>;
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
> b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi index
> 0309592af1e1..5e21252fb7c9 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi +++
> b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi @@ -45,7 +45,7 @@ apb@80000000
> { reg =3D <0x80000000 0x80000>;
>  		ranges;
> =20
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			compatible =3D "simple-bus";
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;
> @@ -476,7 +476,7 @@ tvenc@80038000 {
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			compatible =3D "simple-bus";
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts
> b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts index
> c72fe2d392f1..9053472ed6b9 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts +++
> b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts @@ -38,7 +38,7 @@
> MX28_PAD_SSP2_SS2__GPIO_2_21 };
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			usbphy1: usbphy@8007e000 {
>  				status =3D "okay";
>  			};
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
> b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi index
> 4817fba2d938..bbea8b77386f 100644 ---
> a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi +++
> b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi @@ -56,7 +56,7 @@ apb@80000000
> { reg =3D <0x80000000 0x80000>;
>  		ranges;
> =20
> -		apbh@80000000 {
> +		apbh-bus@80000000 {
>  			compatible =3D "simple-bus";
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;
> @@ -1092,7 +1092,7 @@ armjtag: armjtag@8003c800 {
>  			};
>  		};
> =20
> -		apbx@80040000 {
> +		apbx-bus@80040000 {
>  			compatible =3D "simple-bus";
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;

Reviewed-by: Lukasz Majewski <lukma@denx.de>


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Erika Unter
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/heNIpFrN3x=kGokuZU34o=d
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmbQOogACgkQAR8vZIA0
zr0guAgAsirGxUnx04iAc0m8Z0vRWjrRIncWkLwpXHWroKMNWSU2y8WnbBvSjoDO
lCOXMbFHfDrQWjaoTkbG0wU6foxFaf6cQiEYAzRgQgbNBDaiIKbBP8nSQKKQbgWM
qFg0NS/D6s7jq2RvVqaBWXGeFETKOVn1Nur1vYcvH/CCX+9c6UfThaphoc5Dzly1
fdGvlrcPwgckPnIJlKOMeen68TVn7kooOpHOMgxSd0uQJ0nifJzZSn/PxKOBDLb/
2FNV4DtUTehKx4eSZq4P0rqWiduL4xmJm8O5gTMVnDOnNycDrmcWI/Sq1R4rbcFa
8xBb7CN9JDw8+66xeOEf+U7CO6uKOQ==
=ojzT
-----END PGP SIGNATURE-----

--Sig_/heNIpFrN3x=kGokuZU34o=d--

