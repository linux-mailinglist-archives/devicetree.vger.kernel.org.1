Return-Path: <devicetree+bounces-9966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8EF7CF337
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:51:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 363591C20982
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB07715AEA;
	Thu, 19 Oct 2023 08:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNTjurAs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854EA14F7D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1437C433C8;
	Thu, 19 Oct 2023 08:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697705504;
	bh=u+m3NN1Guv7J5JwAM18DK03sPbj3O3Xgocab5WPj9c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uNTjurAsrIcUqdKGKKf2Z6YGJEyDj0xxj47pE8S+DaQ3InYjXUb4B8LeuxgJ4L1z5
	 WpyTfSm8NGLAa5fWPB9SS/NhLygYCORPaz8p0s5CoIl1Y9JCIC1TdZbYG7jULIUIBn
	 AhmG9cZXDtsj8WHFvL+aunGHXA+2eJDeX/dfQ7ZIHhsUdfKeqkLT5I7OMUjt4yv/cS
	 Tf6zPESWns+V5lFGWu9EAjlXzbmemUCYOix51ufNji1ZxmKJMfy4jKYMYU+mjDufr5
	 zqealchXVKCNiH8fxrbZEIsAbPDQdC6BvZjhnAuIx2je/nu2tY89UYWX8avKs+opKU
	 Itr7t8xC+Vu7Q==
Date: Thu, 19 Oct 2023 09:51:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matt Ranostay <matt.ranostay@konsulko.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Message-ID: <20231019-rematch-ethically-9d482ca4607e@spud>
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l/TF/AHtsvcqOc97"
Content-Disposition: inline
In-Reply-To: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>


--l/TF/AHtsvcqOc97
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 06:34:37PM +1030, Subhajit Ghosh wrote:
> Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
> file and removing the other.

> Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@li=
naro.org/

"Yes, they look similar. I will combine them all in a single yaml file in
the next revision. Thank you Krzysztof."

Yet this is a follow-up patch, not a version 2. The original patches
seem to not have been applied, so I am not sure why you didn't send a
v2?

Cheers,
Conor.

> ---
>  .../bindings/iio/light/avago,apds9300.yaml    | 35 ++++++++++++---
>  .../bindings/iio/light/avago,apds9960.yaml    | 44 -------------------
>  2 files changed, 29 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apd=
s9960.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.y=
aml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> index 206af44f2c43..7826a1749fcd 100644
> --- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> @@ -4,17 +4,26 @@
>  $id: http://devicetree.org/schemas/iio/light/avago,apds9300.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> =20
> -title: Avago APDS9300 ambient light sensor
> +title: Avago Gesture, RGB, ALS and Proximity sensors
> =20
>  maintainers:
>    - Jonathan Cameron <jic23@kernel.org>
> +  - Matt Ranostay <matt.ranostay@konsulko.com>
> =20
>  description: |
> -  Datasheet at https://www.avagotech.com/docs/AV02-1077EN
> +  Avago (Broadcom) optical and proximity sensors with I2C interfaces.
> +  Datasheet at https://docs.broadcom.com/doc/AV02-1077EN
> +  Datasheet at https://docs.broadcom.com/doc/AV02-4191EN
> =20
>  properties:
>    compatible:
> -    const: avago,apds9300
> +    oneOf:
> +      - items:
> +          - const: avago,apds9300
> +          - const: avago,apds9960
> +      - enum:
> +          - avago,apds9300
> +          - avago,apds9960
> =20
>    reg:
>      maxItems: 1
> @@ -22,14 +31,28 @@ properties:
>    interrupts:
>      maxItems: 1
> =20
> -additionalProperties: false
> -
>  required:
>    - compatible
>    - reg
> =20
> +allOf:
> +  - $ref: ../common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - avago,apds9960
> +    then:
> +      required:
> +        - interrupts
> +
> +additionalProperties: false
> +
>  examples:
>    - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
>      i2c {
>          #address-cells =3D <1>;
>          #size-cells =3D <0>;
> @@ -38,7 +61,7 @@ examples:
>              compatible =3D "avago,apds9300";
>              reg =3D <0x39>;
>              interrupt-parent =3D <&gpio2>;
> -            interrupts =3D <29 8>;
> +            interrupts =3D <29 IRQ_TYPE_LEVEL_LOW>;
>          };
>      };
>  ...
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9960.y=
aml b/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
> deleted file mode 100644
> index f06e0fda5629..000000000000
> --- a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/iio/light/avago,apds9960.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: Avago APDS9960 gesture/RGB/ALS/proximity sensor
> -
> -maintainers:
> -  - Matt Ranostay <matt.ranostay@konsulko.com>
> -
> -description: |
> -  Datasheet at https://www.avagotech.com/docs/AV02-4191EN
> -
> -properties:
> -  compatible:
> -    const: avago,apds9960
> -
> -  reg:
> -    maxItems: 1
> -
> -  interrupts:
> -    maxItems: 1
> -
> -additionalProperties: false
> -
> -required:
> -  - compatible
> -  - reg
> -
> -examples:
> -  - |
> -    i2c {
> -        #address-cells =3D <1>;
> -        #size-cells =3D <0>;
> -
> -        light-sensor@39 {
> -            compatible =3D "avago,apds9960";
> -            reg =3D <0x39>;
> -            interrupt-parent =3D <&gpio1>;
> -            interrupts =3D <16 1>;
> -        };
> -    };
> -...
> --=20
> 2.34.1
>=20

--l/TF/AHtsvcqOc97
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTDuGwAKCRB4tDGHoIJi
0sY0AP46/QdAKAw3UmzI5yu2BejYkHZi//fE27QyY54i1SPzyQEA08OIHWW+rQ3b
NwLNwXSqISxUYbVQOmVFGuN3/BYsNgg=
=Z4/s
-----END PGP SIGNATURE-----

--l/TF/AHtsvcqOc97--

