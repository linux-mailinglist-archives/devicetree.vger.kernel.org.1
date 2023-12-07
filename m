Return-Path: <devicetree+bounces-22825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A803C808E48
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 18:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52EE71F210A3
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 17:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDE1481DB;
	Thu,  7 Dec 2023 17:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIvadOdH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7210244C9E
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 17:13:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D25CC433C7;
	Thu,  7 Dec 2023 17:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701969182;
	bh=CWq54dj8Wontm3jMWlBjKGW8W5yeehl6dhE489SUR0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SIvadOdHqMIfBJnkKTHoWVdlW8stNFjOoGAqwWatdV0l62gCGKrkk3vEGRrcJNNQU
	 CVfXX1kdAwdCkc1H2SpMyvF/yshcbXXRM+Efstw6ONK+jSMbsH1Nbf7ewZ/jDaQOjb
	 o/WQ8wUapc/gl4abDD233akB8mpK5dbASCt1LCu1scD38vczeh0/U0mJEvJv6UA7DF
	 VXklf2x97dLHxLnyILc4UEWw/RODCKbh65qnUvomFD5eGlieWgTy3DHrDfEP0HSA3M
	 NHUAHRCT2S1rgK7gIA+Kt0dII0WpCmAAlhGsEewGzwQoLZPrd6tHUhvlc5Drcf0Lfq
	 v0Yu2s0WNPzCA==
Date: Thu, 7 Dec 2023 17:12:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, andrew@lunn.ch, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v7 2/3] dt-bindings: arm64: add Marvell COM Express boards
Message-ID: <20231207-dallying-tablet-c5f32f91373c@spud>
References: <20231207143248.2439926-1-enachman@marvell.com>
 <20231207143248.2439926-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d2AP0+yTHV6MnsnX"
Content-Disposition: inline
In-Reply-To: <20231207143248.2439926-3-enachman@marvell.com>


--d2AP0+yTHV6MnsnX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 07, 2023 at 04:32:47PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
>=20
> Add dt bindings for:
> CN9130 COM Express CPU module
> CN9131 COM Express CPU module
> AC5X RD COM Express Type 7 carrier board.
> AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.
>=20
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.y=
aml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> index 52d78521e412..d00866aeaa8d 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> @@ -60,4 +60,28 @@ properties:
>            - const: marvell,armada-ap807-quad
>            - const: marvell,armada-ap807
> =20
> +      - description:
> +          Alleycat5X (98DX35xx) Reference Design as COM Express Carrier =
plus
> +          Armada CN9130 COM Express CPU module
> +        items:
> +          - enum:
> +              - marvell,cn9130-ac5x-carrier

There's so many compatibles here that it is a bit hard for me to follow,
but I am wondering why you have the "enum" here.
The description seems to define this as being for one specific carrier
and you have two entries here for carriers compatible with the rd-ac5x.
It looks like you should either a) combine both of these or b) swap the
enum for const.

Thanks,
Conor.

> +          - const: marvell,rd-ac5x-carrier
> +          - const: marvell,cn9130-cpu-module
> +          - const: marvell,cn9130
> +          - const: marvell,armada-ap807-quad
> +          - const: marvell,armada-ap807
> +
> +      - description:
> +          Alleycat5X (98DX35xx) Reference Design as COM Express Carrier =
plus
> +          Armada CN9131 COM Express CPU module
> +        items:
> +          - enum:
> +              - marvell,cn9131-ac5x-carrier
> +          - const: marvell,rd-ac5x-carrier
> +          - const: marvell,cn9131-cpu-module
> +          - const: marvell,cn9131
> +          - const: marvell,armada-ap807-quad
> +          - const: marvell,armada-ap807
> +
>  additionalProperties: true
> --=20
> 2.25.1
>=20

--d2AP0+yTHV6MnsnX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXH9GQAKCRB4tDGHoIJi
0nN2AQCqThk3YPq4l91eYo/Ek1s5Bu2ydkEspqikzp/UG0MxhAD+JGcDJ2d91XJp
b/Zp56LDXRG9MZ7NMtXQKC69ErA4+go=
=7TZ9
-----END PGP SIGNATURE-----

--d2AP0+yTHV6MnsnX--

