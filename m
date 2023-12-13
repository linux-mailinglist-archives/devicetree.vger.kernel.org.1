Return-Path: <devicetree+bounces-24754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BA81113A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFEFE281BF6
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825C928E26;
	Wed, 13 Dec 2023 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkigjsFv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A82F4F2
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 12:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA4DAC433C8;
	Wed, 13 Dec 2023 12:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702471387;
	bh=FjDgTJb3iN+IW1iAF5vDMCIbbGw0B3symE2ANlrDB5w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SkigjsFv2x+gC7EpuxdQxnywJ4suCEtmoH+ePSuVjVkflsKPbVS+huHzufrgTjrjo
	 3RrlcuVx1GTL3bskd5v5WCO092kIZQLlluttUivdP4LB1zQVFR/Kx3U3pm5gogdwRH
	 WEJHJKX5m3E5VGuY5BA4IFLd6bdgvtoPkjxJgN7/OB0Hub1gkir9kVmHmgQbKfovod
	 DJAFm7NAj+00iDIPJS7n95K2Z+6sUYLaLcMy0K7Q8fAN+k+x9NDTWm05zSXAC5KnVb
	 j8wMrORBndfOPcPaHy8wcYtPiAg5Iw63J+1n0yvJ9ppLOJ3xE2L/LSdupZX1DJ5jA6
	 e3b8y6wd5J77w==
Date: Wed, 13 Dec 2023 12:43:01 +0000
From: Conor Dooley <conor@kernel.org>
To: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Cc: kernel@esmil.dk, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	krzk@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	daniel.lezcano@linaro.org, tglx@linutronix.de, anup@brainfault.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	michal.simek@amd.com, michael.zhu@starfivetech.com,
	drew@beagleboard.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	leyfoon.tan@starfivetech.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Message-ID: <20231213-imminent-favorable-a7d25e6555af@spud>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-3-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zXeS7EP6Yj4II9Wy"
Content-Disposition: inline
In-Reply-To: <20231201121410.95298-3-jeeheng.sia@starfivetech.com>


--zXeS7EP6Yj4II9Wy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 08:14:06PM +0800, Sia Jee Heng wrote:
> Add device tree bindings for the StarFive JH8100 RISC-V SoC.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Docu=
mentation/devicetree/bindings/riscv/starfive.yaml
> index cc4d92f0a1bf..12d7844232b8 100644
> --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> @@ -30,6 +30,10 @@ properties:
>                - starfive,visionfive-2-v1.3b
>            - const: starfive,jh7110
> =20
> +      - items:
> +          - enum:
> +              - starfive,jh8100-evb

Hmm, reading some of the other threads it appears that the evaluation
platform that you guys have is actually just an FPGA? Could you please
provide more information as to what this "evb" actually is?

If it is just an FPGA-based evaluation platform I don't think that we
want to merge patches for the platform. I'm fine with patches adding
peripheral support, but the soc/board dts files and things like pinctrl
or clock drivers I am not keen on.
Perhaps Emil also has an opinion on this.

Thanks,
Conor.

> +          - const: starfive,jh8100
>  additionalProperties: true
> =20
>  ...
> --=20
> 2.34.1
>=20
>=20

--zXeS7EP6Yj4II9Wy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXmm1QAKCRB4tDGHoIJi
0q72AQDhgF9fijVdRhbKeMyERN4WLOL/D6o7cI1DU92ChEiNoQEAq6oZD+7p/il+
dgQb7NS+xXKd9Q3hwC949WAUiDm63A8=
=PqAD
-----END PGP SIGNATURE-----

--zXeS7EP6Yj4II9Wy--

