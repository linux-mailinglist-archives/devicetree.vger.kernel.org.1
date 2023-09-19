Return-Path: <devicetree+bounces-1307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D34667A5D2D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:59:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87898281847
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6033A3D383;
	Tue, 19 Sep 2023 08:59:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABC338F94
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E31EC433C8;
	Tue, 19 Sep 2023 08:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695113948;
	bh=CWGhlnNpdYZK6/95n57OPZujb9EhyX4Y2HoGi6MU12k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iUIGPWASuF+/zoYXOOLaO7vRbum4t/lMpglspQyw7ZzyJnwgitjwpqy1gwHtAnDqN
	 lHfsXMGuYhd1eKKkradXZwya0PjSzvznLGrpMTv65AuXdDsoCRE5ll49c9txlLwD7M
	 pBz0PXkuS4++Gg4y3nna6JMYxc7FR6IUJWoBhUcsQTtyy5wbhnY755lP+UZbWhcwNZ
	 jDR6rjBvU/Xy7FvZTERwdee6s8+GOLhoLnZn3t1LSghbsBWDT9i4Izp43Y0DyRKN1R
	 MK/WQBUAPv3pQbqNWlCQlQENpnu45TSGbsGo0CbCumgqUd336XePqIBMzdVZlnBNNI
	 fsnl9GlWS+0Rw==
Date: Tue, 19 Sep 2023 09:59:02 +0100
From: Conor Dooley <conor@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: gpio: vf610: correct i.MX8ULP and
 i.MX93
Message-ID: <20230919-b3c77666394588fc74a06d9e@fedora>
References: <20230918-vf610-gpio-v3-0-ada82a17adc5@nxp.com>
 <20230918-vf610-gpio-v3-2-ada82a17adc5@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UtNA5wcQdBM6/BQZ"
Content-Disposition: inline
In-Reply-To: <20230918-vf610-gpio-v3-2-ada82a17adc5@nxp.com>


--UtNA5wcQdBM6/BQZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 04:16:06PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> i.MX8ULP and i.MX93 actually has two interrupts for each gpio
> controller, one for Trustzone non-secure world, one for secure world.
>=20
> And they has one register based, not two as i.MX7ULP or VF610.
>=20
> Although the Linux Kernel driver gpio-vf610.c could work with
> fsl,imx7ulp-gpio compatible, it is based on some tricks did in
> device tree with some offset added to base address.
>=20
> So actually i.MX8ULP/i.MX93 is not compatible with i.MX7ULP.
>=20
> Last, i.MX93 is directly derived from i.MX8ULP, so make i.MX93 GPIO
> compatible with i.MX8ULP
>=20
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/gpio/gpio-vf610.yaml       | 36 ++++++++++++++++=
+++---
>  1 file changed, 31 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Doc=
umentation/devicetree/bindings/gpio/gpio-vf610.yaml
> index 59427d97adf5..5243b4cf1235 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> @@ -20,6 +20,7 @@ description: |
>  properties:
>    compatible:
>      oneOf:
> +      - const: fsl,imx8ulp-gpio
>        - const: fsl,vf610-gpio
>        - items:
>            - const: fsl,imx7ulp-gpio
> @@ -27,16 +28,17 @@ properties:
>        - items:
>            - enum:
>                - fsl,imx93-gpio
> -              - fsl,imx8ulp-gpio
> -          - const: fsl,imx7ulp-gpio
> +          - const: fsl,imx8ulp-gpio
> =20
>    reg:
> -    description: The first reg tuple represents the PORT module, the sec=
ond tuple
> -      represents the GPIO module.
> +    minItems: 1
>      maxItems: 2
> =20
>    interrupts:
> -    maxItems: 1
> +    items:
> +      - description: GPIO Trustzone non-secure interrupt number
> +      - description: GPIO Trustzone secure interrupt number
> +    minItems: 1
> =20
>    interrupt-controller: true
> =20
> @@ -78,6 +80,30 @@ required:
>    - "#gpio-cells"
>    - gpio-controller
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,vf610-gpio
> +              - fsl,imx7ulp-gpio
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +        reg:
> +          items:
> +            - description: PORT register base address
> +            - description: GPIO register base address
> +    else:
> +      properties:
> +        interrupts:
> +          maxItems: 2

Doesn't this default to 2 because there are 2 items in your list of
interrupts as things stand?
Otherwise, this seems fine to me, provided the existing platforms are
going to be broken as you implement the software side of this change.

Thanks,
Conor.

> +        reg:
> +          items:
> +            - description: GPIO register base address
> +
>  additionalProperties: false
> =20
>  examples:
>=20
> --=20
> 2.37.1
>=20

--UtNA5wcQdBM6/BQZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQli0wAKCRB4tDGHoIJi
0n25AP0X1Ro3o7NvsfSguBocF0urTGZQ/th60KzYYgyt0gdjqAD+O2FJOD7jpJZB
QH+DYO6MWEHJ9m5ef43Wir7WWb05KQ0=
=4or1
-----END PGP SIGNATURE-----

--UtNA5wcQdBM6/BQZ--

