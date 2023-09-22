Return-Path: <devicetree+bounces-2508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF877AB0CB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:32:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2A4C8B20BA4
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223C61F940;
	Fri, 22 Sep 2023 11:31:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DFB1F93D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:31:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A02BC433C8;
	Fri, 22 Sep 2023 11:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695382318;
	bh=dDlwHF+eiY9+hTkqn2XNMeoXlkZ1Ja1adnUXIXYrsVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jGDkLx6p8bRr/3DfeoGHdwbSJLCHEzTtWl9ylQpGHLQv7/TU8fqPaAKU+T0ca8DWz
	 ZsKzXDvpUquCiRZE5iv8i1+drr1z1tkXUJsfMQdodNYDGgU3XwmOOMfMe3p8bV1NJW
	 7NK5CcSdAk8ZsTR7lwFxj1fzp2Z1wXsYDj2ScRMW1Pu4OwbL7ZA/6I9sWua/EROV2M
	 WlFEsxKalwKXTm45y3KxcMOOFbaaC37HGgQBzFIT00tRoLvwHbgi1GS1u0P4MmcqOs
	 XQWmb5gjH6fd3QPYAsLIcYDy34S9w5GL2kDtJH/DT4WOJdr//NKdR+FiCqWjYgs/pR
	 bgIQSJxtZY4Uw==
Date: Fri, 22 Sep 2023 12:31:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	robh+dt@kernel.org, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/3] dt-bindings: pwm: mxs: Document the clocks property
Message-ID: <20230922-likewise-twiddling-31da746e1920@spud>
References: <20230921184348.290261-1-festevam@gmail.com>
 <20230921184348.290261-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kku3baJfA0pbcSa+"
Content-Disposition: inline
In-Reply-To: <20230921184348.290261-2-festevam@gmail.com>


--Kku3baJfA0pbcSa+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 03:43:47PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The 'clocks' property is mandatory for the PWM to operate.
>=20
> Document it.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documen=
tation/devicetree/bindings/pwm/mxs-pwm.yaml
> index 655f008081d5..8f50e23ca8c9 100644
> --- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
> @@ -25,6 +25,9 @@ properties:
>    reg:
>      maxItems: 1
> =20
> +  clocks:
> +    maxItems: 1
> +
>    "#pwm-cells":
>      const: 3
> =20
> @@ -35,6 +38,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - clocks
>    - fsl,pwm-number
> =20
>  additionalProperties: false
> @@ -44,6 +48,7 @@ examples:
>      pwm@80064000 {
>          compatible =3D "fsl,imx23-pwm";
>          reg =3D <0x80064000 0x2000>;
> +        clocks =3D <&clks 30>;
>          #pwm-cells =3D <3>;
>          fsl,pwm-number =3D <8>;
>      };
> --=20
> 2.34.1
>=20

--Kku3baJfA0pbcSa+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ17KgAKCRB4tDGHoIJi
0nnAAP9aKmv4TvjQRQnrd38ZV4M/TPb47lSdBh4E19+q9epRKgEA2LqRFCTgHtON
gNHVSJoFelrAc+YikAWG23Bg8hDOIA4=
=PCgT
-----END PGP SIGNATURE-----

--Kku3baJfA0pbcSa+--

