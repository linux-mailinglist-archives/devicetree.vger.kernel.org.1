Return-Path: <devicetree+bounces-16916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 897487F0670
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 351B21F21B84
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A0EC8F3;
	Sun, 19 Nov 2023 13:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oz9FhMOb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75AA1079C
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:34:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9934FC433C8;
	Sun, 19 Nov 2023 13:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700400880;
	bh=gRy63m5oP/eWC/wD8dCNRHAQkB1ST3bcQJr/HYdhsh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oz9FhMObmBmJL//1ggZ/WYka61XnaOKnxASiIecv4k2Ck/fiaD+P/ymRKE8ICOeOW
	 FGsejM8suwiVXBkj5t+hY1GLgTzaEF5AZC12Yu53VeXjNZjsI9Tg2UZMO4EbZ+RUKn
	 1V5prOlZxOsG6GI6TZJWbmAMZd8NzJRI0Ja3EDS9eXTzx2Js4AI5FpJ31x373wiBAo
	 ofneWTeA+1rxC2YhaA123MP6BefDoLYozE5MbdYHq7EhKgDyid+Z34wvb3HexQLa/k
	 UbEn+23GI+ZcR9mb4LoBMX3QBJ+G9Zbtmbes+WbhQ8DSgYGyVPrebkreEc2H2yAQZp
	 6KPTouC5iSZSg==
Date: Sun, 19 Nov 2023 13:34:35 +0000
From: Conor Dooley <conor@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, andrew@lunn.ch, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v5 2/3] dt-bindings: arm64: add Marvell COM Express boards
Message-ID: <20231119-avatar-implicate-75cd2f12dff5@spud>
References: <20231119102638.1041978-1-enachman@marvell.com>
 <20231119102638.1041978-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bpE9nlwIO/xMULOZ"
Content-Disposition: inline
In-Reply-To: <20231119102638.1041978-3-enachman@marvell.com>


--bpE9nlwIO/xMULOZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 19, 2023 at 12:26:37PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
>=20
> Add dt bindings for:
> CN9130 COM Express CPU module

Did you forget this one? There's only the CN9191 system here.

> CN9131 COM Express CPU module
> AC5X RD COM Express Type 7 carrier board.
> AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.
>=20
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml           | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.y=
aml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> index 52d78521e412..6b19f23bcf63 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> @@ -60,4 +60,16 @@ properties:
>            - const: marvell,armada-ap807-quad
>            - const: marvell,armada-ap807
> =20
> +      - description:
> +            Alleycat5X (98DX35xx) Reference Design as COM Express Carrie=
r plus
> +            Armada CN9131 COM Express CPU module
> +        items:
> +          - enum:
> +              - marvell,ac5x-car-with-cn9131

Why not just marvell,cn9131-ac5x-carrier or similar? The "with" isn't
particularly helpful.

Cheers,
Conor.

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

--bpE9nlwIO/xMULOZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVoO6wAKCRB4tDGHoIJi
0kxzAQDIfFI+4D2QNGfT6wBPbYpCaJ1MkWDRfkjLXjPko/hmegEAjvIIcJgfVeUr
PLVO2PiimvxVQH4b9rJT75dpFQOHYwM=
=7ZHL
-----END PGP SIGNATURE-----

--bpE9nlwIO/xMULOZ--

