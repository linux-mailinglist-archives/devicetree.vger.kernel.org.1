Return-Path: <devicetree+bounces-2550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 262457AB4BA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CF9E4282034
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBAF13F4C6;
	Fri, 22 Sep 2023 15:26:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B811EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:26:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37F0DC433C7;
	Fri, 22 Sep 2023 15:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695396398;
	bh=/e95n957VSSzau8r32TVfXzofHLYFvaJGvqChcjB6MQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bmxG7KYJ8F47icbZRJ3TghPN09WpUGeQrxDNFm/B7DxhYb3/mbJH2kU2HoqHk9XIg
	 j2xO4aaGqf7OjambklLI4AwTwS5vIPMH7ryW+QTiYsYag9UdTWIZFSfUlOtxCba3bf
	 iZYaFPExTSHYTHDb2HhqeyVZ7O9ZFJar7IUseTA93NBZDZxdAoPkYWVc8HC+MAT9O4
	 izdcnpC2witG2zDpm3dfop1Nb+3qA4PFhJ4kw4a53ztGKkXsgbGW9AbmHBrd4CU/Al
	 rYazXAiVFCYIC6UpFaZdWenrEt1sMUhQYiRq2P/52Qs3FInoTaCP6kpTc5ucfKUZaA
	 P0I3BS1bbOpWQ==
Date: Fri, 22 Sep 2023 16:26:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: tfa9879: Convert to dtschema
Message-ID: <20230922-unmindful-anyplace-f1da73ab168c@spud>
References: <20230921183313.54112-1-bragathemanick0908@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZjgFBBOOD+mvPAQu"
Content-Disposition: inline
In-Reply-To: <20230921183313.54112-1-bragathemanick0908@gmail.com>


--ZjgFBBOOD+mvPAQu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 12:03:13AM +0530, Bragatheswaran Manickavel wrote:
> Convert the tfa9879 audio CODEC bindings to DT schema
> No error/warning seen when running make dt_binding_check
>=20
> Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>

> Changes:
> V1 -> V2: Fixed DT syntax errors and doc warning

These should be under the --- line, not above it.
Perhaps Mark will change it on application.
Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/sound/nxp,tfa9879.yaml           | 44 +++++++++++++++++++
>  .../devicetree/bindings/sound/tfa9879.txt     | 23 ----------
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 45 insertions(+), 24 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/nxp,tfa9879.y=
aml
>  delete mode 100644 Documentation/devicetree/bindings/sound/tfa9879.txt
>=20
> diff --git a/Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml b/D=
ocumentation/devicetree/bindings/sound/nxp,tfa9879.yaml
> new file mode 100644
> index 000000000000..df26248573ad
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/nxp,tfa9879.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP TFA9879 class-D audio amplifier
> +
> +maintainers:
> +  - Peter Rosin <peda@axentia.se>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: nxp,tfa9879
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#sound-dai-cells'
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c1 {
> +       #address-cells =3D <1>;
> +       #size-cells =3D <0>;
> +       amplifier@6c {
> +          compatible =3D "nxp,tfa9879";
> +          reg =3D <0x6c>;
> +          pinctrl-names =3D "default";
> +          pinctrl-0 =3D <&pinctrl_i2c1>;
> +          #sound-dai-cells =3D <0>;
> +       };
> +    };
> diff --git a/Documentation/devicetree/bindings/sound/tfa9879.txt b/Docume=
ntation/devicetree/bindings/sound/tfa9879.txt
> deleted file mode 100644
> index 1620e6848436..000000000000
> --- a/Documentation/devicetree/bindings/sound/tfa9879.txt
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -NXP TFA9879 class-D audio amplifier
> -
> -Required properties:
> -
> -- compatible : "nxp,tfa9879"
> -
> -- reg : the I2C address of the device
> -
> -- #sound-dai-cells : must be 0.
> -
> -Example:
> -
> -&i2c1 {
> -	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&pinctrl_i2c1>;
> -
> -	amp: amp@6c {
> -		#sound-dai-cells =3D <0>;
> -		compatible =3D "nxp,tfa9879";
> -		reg =3D <0x6c>;
> -	};
> -};
> -
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a4c30221eb30..569303daf9b4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15476,7 +15476,7 @@ NXP TFA9879 DRIVER
>  M:	Peter Rosin <peda@axentia.se>
>  L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/sound/tfa9879.txt
> +F:	Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
>  F:	sound/soc/codecs/tfa9879*
> =20
>  NXP-NCI NFC DRIVER
> --=20
> 2.34.1
>=20

--ZjgFBBOOD+mvPAQu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ2yKQAKCRB4tDGHoIJi
0j1ZAP9Vz1UUBT+BypwEeJgHHQOonvJy1uzvg5f3z8v4f7eM+QEA9H/4l4gdJhwg
pUispOQJr3UQYzupkB89Zs3GtWW7XQY=
=jxgL
-----END PGP SIGNATURE-----

--ZjgFBBOOD+mvPAQu--

