Return-Path: <devicetree+bounces-1940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1519C7A92FB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 11:14:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B2911C20843
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 09:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38808F64;
	Thu, 21 Sep 2023 09:14:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48488F55
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 09:14:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 351ECC32775;
	Thu, 21 Sep 2023 09:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695287693;
	bh=V/cgN3RT7XkFMIs1Ymp5jlRW/nHPyxxJMaOW3fL0f0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qKYBetaKVrim8OhS0EPi4ZuEUv4Sfjh+u/lyZ0eJdLVOs5zcq/jTJ5vjJQjg6xlCP
	 IVNJIMlCs0TF1oW8JmUDMrPTFuLRMO7pmm1RI5XnuVuwcwUYg9L4skG+17+F8Zg587
	 YHfk3fPOduYIyea9LJqhmZqcGGH984kZH7OV3Jpmirg3O0zPjUh6JQi2wUjcggKagT
	 Xpo8kr+iwRIFJp+Vz8CNprz6WIvp2gVQunDjc6HuCyxG3gqSZix8j/MzabD/pPRN7x
	 QhsAmffAnDvQGPsJoB58HQUOoG/rsAgNpnaPYRjJXjjsoIyU2Zpkig/hFElEmWKZdY
	 DrDfFRyDsPWyw==
Date: Thu, 21 Sep 2023 10:14:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: serial: mxs: Fix compatible list
Message-ID: <20230921-75ba68806e21c96531ea2d70@fedora>
References: <20230921005258.184705-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y+pvPdlgTf4xkWu3"
Content-Disposition: inline
In-Reply-To: <20230921005258.184705-1-festevam@gmail.com>


--Y+pvPdlgTf4xkWu3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Wed, Sep 20, 2023 at 09:52:58PM -0300, Fabio Estevam wrote:
> imx28.dtsi uses the following description:
>=20
> compatible =3D "fsl,imx28-auart", "fsl,imx23-auart";
>=20
> Make it valid so that the following schema warning could be avoided:

Dumb question maybe, but it is not mentioned here - they are actually
compatible devices, right? I see that they have some different match
data in the driver (relating to some DMA erratum on the 23 seemingly),
so it's not immediately obvious to me.

Thanks,
Conor.

>=20
> imx28-apx4devkit.dtb: serial@8006a000: compatible: ['fsl,imx28-auart', 'f=
sl,imx23-auart'] is too long
> 	from schema $id: http://devicetree.org/schemas/serial/fsl-mxs-auart.yaml#
>=20
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  .../devicetree/bindings/serial/fsl-mxs-auart.yaml   | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/fsl-mxs-auart.yaml =
b/Documentation/devicetree/bindings/serial/fsl-mxs-auart.yaml
> index 6a400a5e6fc7..da032effffe6 100644
> --- a/Documentation/devicetree/bindings/serial/fsl-mxs-auart.yaml
> +++ b/Documentation/devicetree/bindings/serial/fsl-mxs-auart.yaml
> @@ -14,10 +14,13 @@ allOf:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx23-auart
> -      - fsl,imx28-auart
> -      - alphascale,asm9260-auart
> +    oneOf:
> +      - const: fsl,imx23-auart
> +      - const: alphascale,asm9260-auart
> +      - items:
> +          - enum:
> +              - fsl,imx28-auart
> +          - const: fsl,imx23-auart
> =20
>    reg:
>      maxItems: 1
> @@ -82,7 +85,7 @@ examples:
>      };
> =20
>      auart0: serial@8006a000 {
> -        compatible =3D "fsl,imx28-auart";
> +        compatible =3D "fsl,imx28-auart", "fsl,imx23-auart";
>          reg =3D <0x8006a000 0x2000>;
>          interrupts =3D <112>;
>          dmas =3D <&dma_apbx 8>, <&dma_apbx 9>;
> --=20
> 2.34.1
>=20

--Y+pvPdlgTf4xkWu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQwJgQAKCRB4tDGHoIJi
0qZUAQC7Brocu9TpVVd2JRe0wEe8C1p//0FVrMLbGA8l2KKCiAD/QafzhWc7oS82
H4+WOu2tbpQsJlOpTbkK9HN/oEx+9gs=
=9C3G
-----END PGP SIGNATURE-----

--Y+pvPdlgTf4xkWu3--

