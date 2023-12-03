Return-Path: <devicetree+bounces-21061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D947C8022F0
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4475280EC0
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 11:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF339465;
	Sun,  3 Dec 2023 11:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNOd/yjx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A19E555
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 11:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AE2CC433C9;
	Sun,  3 Dec 2023 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701602815;
	bh=4v8ZRwT+lzUcVB1vmrVnhhMyxt4ufRUD0/bRFWzgiD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNOd/yjxS57o9lnIHHXjC0xFEdq9nOW9z7wtCs9i/VfEtPv8FCW9XlTpHDbGZ82p7
	 MGem1KhdkA/nENDGmwfGxzckfcT+ifrALkStACWDy480XeGcLOgdQXjEeGgf5XN0yZ
	 Rbdo8qfFWwXgoDsUM/LuJpdA9YLWzDpwF+kS7xZR7Nxhef3gQRjYwBCF7qm0aR0GL1
	 qkIHbuSF9ZFUwb8VUCLsLjZUbnLCmz4TpOhoPv9U7ECQuwi2i7oOUkK8h/In57Buzp
	 4XejgHXmJtfhF9YD9ZelucpD4iNjpIqDw0NRfjs8KiO3hfKsvL4DTGdN8ANDYQvWBA
	 X7elFvEf+WIuQ==
Date: Sun, 3 Dec 2023 11:26:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems
 Jaguar SBC
Message-ID: <20231203-landlady-capped-2d2b0f6c26b8@spud>
References: <20231201191103.343097-1-heiko@sntech.de>
 <20231201191103.343097-2-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r6/yndUbqCbeVuIg"
Content-Disposition: inline
In-Reply-To: <20231201191103.343097-2-heiko@sntech.de>


--r6/yndUbqCbeVuIg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 08:11:02PM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> Add the binding for the Jaguar board from Theobroma-Systems.
>=20

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

GL chief :)
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 5f7c6c4aad8f..44181a36c5d5 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -875,6 +875,11 @@ properties:
>            - const: tsd,rk3399-puma-haikou
>            - const: rockchip,rk3399
> =20
> +      - description: Theobroma Systems RK3588-SBC Jaguar
> +        items:
> +          - const: tsd,rk3588-jaguar
> +          - const: rockchip,rk3588
> +
>        - description: Tronsmart Orion R68 Meta
>          items:
>            - const: tronsmart,orion-r68-meta
> --=20
> 2.39.2
>=20

--r6/yndUbqCbeVuIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWxl+gAKCRB4tDGHoIJi
0gRnAQCv+UlVzTntpykJfSQfbxDLQSWZsGnzJQxt6WXfMtzvCwEA1hWDzOsSNRiC
4hW0Ue3qQE6BA4TrgynQR/+kQRxNhAM=
=bpH3
-----END PGP SIGNATURE-----

--r6/yndUbqCbeVuIg--

