Return-Path: <devicetree+bounces-12488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB7C7D9AF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:14:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB7771F23646
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3362F36AE1;
	Fri, 27 Oct 2023 14:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecF+1Ji8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162ED358AA
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 667A1C433C9;
	Fri, 27 Oct 2023 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698416075;
	bh=CbkKydCIGPDLCe+45cMey/d5S+QwoAAmRoHQEvlUMtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ecF+1Ji8+LIiXPTTMg2TTEgHLQikYo4DwWhtqLYOY+dg1Ks1yhSsjdyqwtCW05lFx
	 bI3kg0xCDtfYE648J/YtD8mUqdUjfmWXjwi24yD1SRyGVWDtqJAfKSqXx0ZLFDPfHj
	 fG0lzF8C8WIOV0Ut+lxWhrOVEolZSekD9+iX89XdildENp4i6kKpoctCV5WfNwJKAZ
	 SbOAWvkanZttVglDVm7Pod5lqYoNQUmXm2RknhkWQMJBZKB6tquCCiMjlsou4saRt7
	 GMGkRZCwXSXfGb8uGPu1berWbIRQMCvm9tPE83sF7+ZpsqoFhLZxQKmUaYKCPWcMub
	 ZGs1XpcIR8JiQ==
Date: Fri, 27 Oct 2023 15:14:31 +0100
From: Conor Dooley <conor@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, afd@ti.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: watchdog: davinci-wdt: convert txt to
 yaml
Message-ID: <20231027-antennae-aftermath-b11ede90737f@spud>
References: <20231026195313.76756-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ixTGx6tVsBXIMcLW"
Content-Disposition: inline
In-Reply-To: <20231026195313.76756-1-n2h9z4@gmail.com>


--ixTGx6tVsBXIMcLW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Thu, Oct 26, 2023 at 09:53:13PM +0200, Nik Bune wrote:
> Convert txt file to yaml.
> Add maintainers list.
> Mark clock as required property, by reviewer's suggestion.
> Add power-domains as optional property, by reviewer's suggestion.=20
>=20
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> ---
>=20
> Changes in 3 (according to review comments):
> - Added Andrew Davis <afd@ti.com> into maintainers list.
> - Added power-domains property.
>=20
> v2 patch: https://lore.kernel.org/all/20231024195839.49607-1-n2h9z4@gmail=
=2Ecom/
>=20
>=20
>  .../bindings/watchdog/davinci-wdt.txt         | 24 ---------
>  .../bindings/watchdog/ti,davinci-wdt.yaml     | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/davinci-wd=
t.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/ti,davinci=
-wdt.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt b=
/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
> deleted file mode 100644
> index aa10b8ec36e2..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
> -
> -Required properties:
> -- compatible : Should be "ti,davinci-wdt", "ti,keystone-wdt"
> -- reg : Should contain WDT registers location and length
> -
> -Optional properties:
> -- timeout-sec : Contains the watchdog timeout in seconds
> -- clocks : the clock feeding the watchdog timer.
> -	   Needed if platform uses clocks.
> -	   See clock-bindings.txt
> -
> -Documentation:
> -Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
> -Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a.pdf
> -
> -Examples:
> -
> -wdt: wdt@2320000 {
> -	compatible =3D "ti,davinci-wdt";
> -	reg =3D <0x02320000 0x80>;
> -	timeout-sec =3D <30>;
> -	clocks =3D <&clkwdtimer0>;
> -};
> diff --git a/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.ya=
ml b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
> new file mode 100644
> index 000000000000..17c824f2fc7d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/ti,davinci-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
> +
> +description: |
> +  Documentation:
> +  Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
> +  Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a
> +
> +maintainers:
> +  - Andrew Davis <afd@ti.com>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,davinci-wdt
> +      - ti,keystone-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  power-domains:
> +    description:
> +      A phandle and PM domain specifier as defined by bindings of=20
> +      the power controller specified by phandle.=20
> +      See Documentation/devicetree/bindings/power/power-domain.yaml for =
details.

I think you missed Rob's comment in reply to Andrew, about constraining
and ordering the power-domains:
https://lore.kernel.org/all/20231026203037.GA327324-robh@kernel.org/

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog@2320000 {
> +        compatible =3D "ti,davinci-wdt";
> +        reg =3D <0x02320000 0x80>;
> +        timeout-sec =3D <30>;
> +        clocks =3D <&clkwdtimer0>;
> +    };
> --=20
> 2.34.1
>=20

--ixTGx6tVsBXIMcLW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTvFxgAKCRB4tDGHoIJi
0g/NAQDyI6k3NfH6Gtz3jrfdKhsERSZfTUEuPaRJugULbfqFNwEArZQ+vTqb22CM
WH8KAtU7U7Nr3wFy8r2rpTGo6CGRBQg=
=9UY6
-----END PGP SIGNATURE-----

--ixTGx6tVsBXIMcLW--

