Return-Path: <devicetree+bounces-7317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB867C0097
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA12F2818BE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FA527464;
	Tue, 10 Oct 2023 15:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfZ1+xWL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C6727462
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:45:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E34BC433C7;
	Tue, 10 Oct 2023 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696952701;
	bh=Ot164lxFduDgEmV0oqp0Fftqmt8h8EE6Z4D9EQLAVJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WfZ1+xWLZaepMPmKTAv9rXowDRvuV7bI5vwE9VU+hch6706yVc11frBwwrDmQeiyR
	 OyDY0xsmlDWwHth5487cub3ekQv0t1k4ZCe+4dQO+h4cPiyOA5UdVgrqVPCrwTOs1r
	 FDouyjh/BOR6Uw3hv49wGYjPkby2at6VT3xpniBOYPVWXRIF3dVz8T2i12qmGcUEJH
	 +wGoziH38dgp39RYaeRV8CjVmumKcBlCBjfXddFiWSMJ2c3H/dvhWSEZZDpwUqACfE
	 RcsIHh8ivuVHXWMePuvWn6bmRc3skwZfa2X8/J6fPkK0enIkwUtf9LqSfCnabPp6Cy
	 Mq4z4R6e9/MMA==
Date: Tue, 10 Oct 2023 16:44:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shawnguo@kernel.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: nvmem: mxs-ocotp: Document fsl,ocotp
Message-ID: <20231010-spoof-unsuited-175f75168a34@spud>
References: <20231010114034.3660226-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7LWpJcGrhJfQrFV5"
Content-Disposition: inline
In-Reply-To: <20231010114034.3660226-1-festevam@gmail.com>


--7LWpJcGrhJfQrFV5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 08:40:34AM -0300, Fabio Estevam wrote:
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

Seemingly the driver actually relies on "fsl,ocotop" being present. This
patch probably then needs to grow a fixes tag, since it is incorrect?

Cheers,
Conor.

>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
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

--7LWpJcGrhJfQrFV5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSVxeQAKCRB4tDGHoIJi
0mm5AQCupZbD7CE56wql+Y+XkK9Qhrs6y9VhAktlkNqxVOf2vgD+InzKhH5G2NIO
gyXiYni+XygKLIIBz1R/sWDSHdAktQY=
=IuRq
-----END PGP SIGNATURE-----

--7LWpJcGrhJfQrFV5--

