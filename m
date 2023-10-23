Return-Path: <devicetree+bounces-11005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8737D3C25
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CBB7281473
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BEED1CFA4;
	Mon, 23 Oct 2023 16:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqFnzvMf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCA31CA96
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD263C433C7;
	Mon, 23 Oct 2023 16:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698077929;
	bh=xZL+GdU+uaN5JA/L6aMscuhuEXIWBnMgAfLl+k2KDkY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jqFnzvMfzxrCI+mV9NuUEAYRHazKEaROllqG9hjaFJttEiMjalYLmhQjWp3W7h6pw
	 fQ8u8Pf6tyLaPrRw7a4XGKsvQvRrQzZKQ4P1k0wEYoUOMRTducRoYkbm7ik6KMPqot
	 W75sPJUaOcRGx3obFpaUoeDGGKJeftbjZP5F5ied4ZIZsWKxV7oABTRVRuO8WxQScd
	 rBzC/ICI7hCabr6wABfI2LQElt5ZCb469HwXPN1Y0VPWRidNjLkgwOMUn3YqR6ywpY
	 AMSmtUSn6Vc2Umh6DXJ0ZoiHgxo1i2WkG6HmhaYwwok2biGtwGp0gvuRRHgCXwbWsX
	 SFut6dXwXFDhQ==
Date: Mon, 23 Oct 2023 17:18:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Support Opensource <support.opensource@diasemi.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to
 json-schema
Message-ID: <20231023-sulfate-babble-695b239f52b5@spud>
References: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PLCivFZlEfnhRSba"
Content-Disposition: inline
In-Reply-To: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>


--PLCivFZlEfnhRSba
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 11:04:45AM +0200, Geert Uytterhoeven wrote:
> Convert the Dialog Semiconductor DA9210 Multi-Phase 12A DC-DC Buck
> Converter Device Tree binding documentation to json-schema.
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/regulator/da9210.txt  | 29 -----------
>  .../bindings/regulator/dlg,da9210.yaml        | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/da9210.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/dlg,da921=
0.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/regulator/da9210.txt b/Doc=
umentation/devicetree/bindings/regulator/da9210.txt
> deleted file mode 100644
> index 58065ca9e3b46892..0000000000000000
> --- a/Documentation/devicetree/bindings/regulator/da9210.txt
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -* Dialog Semiconductor DA9210 Multi-phase 12A DCDC BUCK Converter
> -
> -Required properties:
> -
> -- compatible:	must be "dlg,da9210"
> -- reg:		the i2c slave address of the regulator. It should be 0x68.
> -
> -Optional properties:
> -
> -- interrupts:	a reference to the DA9210 interrupt, if available.
> -
> -Any standard regulator properties can be used to configure the single da=
9210
> -DCDC.
> -
> -Example:
> -
> -	da9210@68 {
> -		compatible =3D "dlg,da9210";
> -		reg =3D <0x68>;
> -
> -		interrupt-parent =3D <...>;
> -		interrupts =3D <...>;
> -
> -		regulator-min-microvolt =3D <300000>;
> -		regulator-max-microvolt =3D <1570000>;
> -		regulator-min-microamp =3D <1600000>;
> -		regulator-max-microamp =3D <4600000>;
> -		regulator-boot-on;
> -	};
> diff --git a/Documentation/devicetree/bindings/regulator/dlg,da9210.yaml =
b/Documentation/devicetree/bindings/regulator/dlg,da9210.yaml
> new file mode 100644
> index 0000000000000000..81f23de36de4c2f1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/dlg,da9210.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/dlg,da9210.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Dialog Semiconductor DA9210 Multi-Phase 12A DC-DC Buck Converter
> +
> +maintainers:
> +  - Support Opensource <support.opensource@diasemi.com>

This should really be a person... Does your work with Renesas cover you
for dialog stuff too?

Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> +
> +allOf:
> +  - $ref: regulator.yaml#
> +
> +properties:
> +  compatible:
> +    const: dlg,da9210
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        regulator@68 {
> +            compatible =3D "dlg,da9210";
> +            reg =3D <0x68>;
> +
> +            interrupt-parent =3D <&irqc0>;
> +            interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
> +
> +            regulator-min-microvolt =3D <300000>;
> +            regulator-max-microvolt =3D <1570000>;
> +            regulator-min-microamp =3D <1600000>;
> +            regulator-max-microamp =3D <4600000>;
> +            regulator-boot-on;
> +        };
> +    };
> --=20
> 2.34.1
>=20

--PLCivFZlEfnhRSba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTac5QAKCRB4tDGHoIJi
0mggAP99OF8hN1NxoKZp2FHHDD2UzC+aGJa4R1g920IEToyvXQD8CrAebkC5Hgfz
xN6hapjJqayUgWcpFDOnuM1h9RhDBgA=
=yxpp
-----END PGP SIGNATURE-----

--PLCivFZlEfnhRSba--

