Return-Path: <devicetree+bounces-7794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E73627C584C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 17:42:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 242CD1C20A1A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5287F208C9;
	Wed, 11 Oct 2023 15:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnhwP+vb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CD62031D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:42:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8B1C433C7;
	Wed, 11 Oct 2023 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697038953;
	bh=nvcF1xUkfhK8P491meu7s2teoOIDuS/eQSeHkHt9sj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BnhwP+vb5Q5xuK6oW5z3OfdMbii6lmtoWvjdSYAgxdB0o+GgsCkuyhC6cIwZnT1GO
	 XS+k3rUXBzyRo9rcavlwH8I7r3nbKUinklbFuViBOJ4ftgQ/VmFxekZKdOSds13MOp
	 y+S5HILqX629NmkibXaBdIwR4ngnxuwo6af1XZ5NHiiXeT+SaP+CHZrAXcT2tAZSgn
	 VZNTUbDGkDI1EevgfZbx3Rpx2FLFiUKfZsKGFfLRPVMg36MyFfsRLNCvbRdK09kogR
	 6zLhmlQMc5lDlS3kIdpx3VOi89JPD0vjXHEEMt5ImGR6919MyAdD6cbYcVHieoSHFY
	 gvg9cSUmLr6JA==
Date: Wed, 11 Oct 2023 16:42:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shawnguo@kernel.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Message-ID: <20231011-skyward-possible-7936e07a5841@spud>
References: <20231010171442.3693843-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7bnkBvM+NIQAyHKR"
Content-Disposition: inline
In-Reply-To: <20231010171442.3693843-1-festevam@gmail.com>


--7bnkBvM+NIQAyHKR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 02:14:42PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> Both imx23.dtsi and imx28.dtsi describe the OCOTP nodes in
> the format:
>=20
> compatible =3D "fsl,imx28-ocotp", "fsl,ocotp";
>=20
> Document the "fsl,ocotp" entry to fix the following schema
> warning:
>=20
> efuse@8002c000: compatible: ['fsl,imx23-ocotp', 'fsl,ocotp'] is too long
> from schema $id: http://devicetree.org/schemas/nvmem/mxs-ocotp.yaml#
>=20
> Fixes: 2c504460f502 ("dt-bindings: nvmem: Convert MXS OCOTP to json-schem=
a")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Changes since v1:
> - Added Fixes tag. (Conor)
>=20
>  Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml b/Doc=
umentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
> index f43186f98607..d9287be89877 100644
> --- a/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/mxs-ocotp.yaml
> @@ -15,9 +15,11 @@ allOf:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx23-ocotp
> -      - fsl,imx28-ocotp
> +    items:
> +      - enum:
> +          - fsl,imx23-ocotp
> +          - fsl,imx28-ocotp
> +      - const: fsl,ocotp
> =20
>    reg:
>      maxItems: 1
> @@ -35,7 +37,7 @@ unevaluatedProperties: false
>  examples:
>    - |
>      ocotp: efuse@8002c000 {
> -        compatible =3D "fsl,imx28-ocotp";
> +        compatible =3D "fsl,imx28-ocotp", "fsl,ocotp";
>          #address-cells =3D <1>;
>          #size-cells =3D <1>;
>          reg =3D <0x8002c000 0x2000>;
> --=20
> 2.34.1
>=20

--7bnkBvM+NIQAyHKR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSbCZQAKCRB4tDGHoIJi
0tFIAQCDDKQHcsmF2BW2LbrydczSBOkadcVQGtPUJ3uVh0WFyQEAzkBtONayWtrQ
370dxpctYUn+LMjmmZ2GUNviy71oZQY=
=JRsy
-----END PGP SIGNATURE-----

--7bnkBvM+NIQAyHKR--

