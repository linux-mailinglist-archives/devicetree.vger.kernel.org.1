Return-Path: <devicetree+bounces-23995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0081080D3C0
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D4528207D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FAF4E1CB;
	Mon, 11 Dec 2023 17:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKWspiEd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374084E1C2
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:27:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DACC0C433C9;
	Mon, 11 Dec 2023 17:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702315679;
	bh=03DzDcvrYJXE1EhpOpvqYBypO62E8IpkzGLBoBCPcFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KKWspiEdBRhRk/qhnwhl6BnDT8J1uptfPz2C6P7948J7DHf+bTfzwFyQcJqEvW85T
	 HRPRgV4BgQMKraO5cEkkd2PAxSmFaPk+TcWbgWuvEszerH3rOBRcbHSxFaXDLDWqag
	 ljacke9jGPjQBaAeTnPOGhTDEYSJkIgZx+KjyZvnotH3rACDm4eLQAAAokkgH69GVp
	 Jd/2FU6yVbLdAKm6zGIP+4cWPAJ/ENVZrYbbR7vRGUgcuT4dOan/rJSVAvOwIuK7u6
	 v6kYf0M4USioKX04QRb026chTRIP8VOKVIkTD+8Se++gA3mG1terPrpRBhudDvkTun
	 QFoTLxrI1lODQ==
Date: Mon, 11 Dec 2023 17:27:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, andrew@lunn.ch, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v8 2/3] dt-bindings: arm64: add Marvell COM Express boards
Message-ID: <20231211-scolding-celestial-db4d71f45674@spud>
References: <20231211171739.4090179-1-enachman@marvell.com>
 <20231211171739.4090179-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sNadLnwBT7jgZrec"
Content-Disposition: inline
In-Reply-To: <20231211171739.4090179-3-enachman@marvell.com>


--sNadLnwBT7jgZrec
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 07:17:38PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
>=20
> Add dt bindings for:
> CN9130 COM Express CPU module
> CN9131 COM Express CPU module
> AC5X RD COM Express Type 7 carrier board.
> AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.
>=20
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.y=
aml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> index 52d78521e412..16d2e132d3d1 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> @@ -60,4 +60,26 @@ properties:
>            - const: marvell,armada-ap807-quad
>            - const: marvell,armada-ap807
> =20
> +      - description:
> +          Alleycat5X (98DX35xx) Reference Design as COM Express Carrier =
plus
> +          Armada CN9130 COM Express CPU module
> +        items:
> +          - const: marvell,cn9130-ac5x-carrier
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
> +          - const: marvell,cn9131-ac5x-carrier
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

--sNadLnwBT7jgZrec
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXdGlwAKCRB4tDGHoIJi
0tqUAPwIyRK3fGUdBflg1TD+VhOZSzmeNaSkz3BnFnFPs0m5eAEApnl1tHrA/m0f
sbmQXRRZplPJippCeYBLqk4lXYOBdAM=
=NJyb
-----END PGP SIGNATURE-----

--sNadLnwBT7jgZrec--

