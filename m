Return-Path: <devicetree+bounces-14205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B077E2AC5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D07D2814C8
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0413B2941E;
	Mon,  6 Nov 2023 17:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfBt/3if"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0B029CE1
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BCBCC433C7;
	Mon,  6 Nov 2023 17:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699290820;
	bh=RH8aQ6Z1i9EfK9n1klLE7C93NNkM5so1vcNS443yUpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hfBt/3iflon/viupAp7T+oB0xxkAoQLfUHsXbL0DDvV5I1HqseSp2D6RMY1xbrKz8
	 tHkJr3kdzo75kslwVbZXKm0Q7hteIqLcdtHx4nq8p3fBWA8qHT1p6IM2wBHTtQ1Epv
	 e7FqeyLR3tpFiZveJecEhvoPQ1pGdULP/Hc7JIcAFPA09kT8NUSUnz0goOsUao8iVT
	 q/pczvTY05/dyqUgzaE5U8zEcM+m2hAFpQbme2UdhLoWC5BH5Y/azgzVkHxcL9/5Wz
	 wxbWalMH3OLcL8c67hIYXnmDgMl2CGAr53zhCzZGoubykyI5VLye1rKEgKiv2iKSZ7
	 l5rA8yxTkz5ZA==
Date: Mon, 6 Nov 2023 17:13:35 +0000
From: Conor Dooley <conor@kernel.org>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-clk@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clk: rs9: Add 9FGV0841
Message-ID: <20231106-deafening-multitude-7d08c8400915@spud>
References: <20231105200812.62849-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hlbvNfl+ZbMiI2kB"
Content-Disposition: inline
In-Reply-To: <20231105200812.62849-1-marek.vasut+renesas@mailbox.org>


--hlbvNfl+ZbMiI2kB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 05, 2023 at 09:07:58PM +0100, Marek Vasut wrote:
> This is an 8-channel variant of 9FGV series.
>=20
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>  .../devicetree/bindings/clock/renesas,9series.yaml     | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/renesas,9series.yaml=
 b/Documentation/devicetree/bindings/clock/renesas,9series.yaml
> index 3afdebdb52ad..af6319697b1c 100644
> --- a/Documentation/devicetree/bindings/clock/renesas,9series.yaml
> +++ b/Documentation/devicetree/bindings/clock/renesas,9series.yaml
> @@ -21,6 +21,15 @@ description: |
>      1 -- DIF1
>      2 -- DIF2
>      3 -- DIF3
> +  - 9FGV0841:
> +    0 -- DIF0
> +    1 -- DIF1
> +    2 -- DIF2
> +    3 -- DIF3
> +    4 -- DIF4
> +    5 -- DIF5
> +    6 -- DIF6
> +    7 -- DIF7
> =20
>  maintainers:
>    - Marek Vasut <marex@denx.de>
> @@ -30,6 +39,7 @@ properties:
>      enum:
>        - renesas,9fgv0241
>        - renesas,9fgv0441
> +      - renesas,9fgv0841
> =20
>    reg:
>      description: I2C device address
> --=20
> 2.42.0
>=20

--hlbvNfl+ZbMiI2kB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUkevwAKCRB4tDGHoIJi
0n1zAP4xwoLWdi1lpSe+pYZHYEJckK8LBPbOQNWNqREJ1yHmLAEAn0Sh6HKnp+9p
H369wX4qgAHu51TjPz3x4bL4XQQVmQ0=
=rIgl
-----END PGP SIGNATURE-----

--hlbvNfl+ZbMiI2kB--

