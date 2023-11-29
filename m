Return-Path: <devicetree+bounces-20063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 548737FDA35
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EFDA282323
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC23A24A1E;
	Wed, 29 Nov 2023 14:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVmbiXHD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEC620308
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12FC2C433C8;
	Wed, 29 Nov 2023 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701269165;
	bh=AS/6F864rQJoy0jd7IJxC8rKYScfP+Im0dnqLTD1LM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GVmbiXHDls+kb7E3ub5RkxLvadV56N5O0c1DYZDUZTi0X9wkuf01JJEqBzB7z5vw8
	 Thk2jMhtqrmx316XEnWyrM2+AE2WG1kH4L6yL7Eb+jTiGzzSQDd4wCY4jFqx5OWMqo
	 Evnsujym0A8r3+XeqbcH+4TXsWqLKfi9Da2mEbIn4909GFQY4GtSvEGPySJyqOCeAE
	 Y+w0TJ2NRj/m9mXpXU4MieehhRcOAC7AGnVTN5mEoOcyXwodB7Zwk2OF9+wJzINgAw
	 HB/wTA+fuW/bMcvEmW1vy622+k+ct2I6dBtT5JMTS0hl+G7Sljl+U0v7mivzsclcLm
	 F/qu4qnrHIZBw==
Date: Wed, 29 Nov 2023 14:45:58 +0000
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
	leyfoon.tan@starfivetech.com
Subject: Re: [PATCH v2 1/6] dt-bindings: riscv: Add StarFive Dubhe compatibles
Message-ID: <20231129-revisit-prefix-5327168e91f3@spud>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
 <20231129060043.368874-2-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EUvI/cSgkBgk0Ae7"
Content-Disposition: inline
In-Reply-To: <20231129060043.368874-2-jeeheng.sia@starfivetech.com>


--EUvI/cSgkBgk0Ae7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 02:00:38PM +0800, Sia Jee Heng wrote:
> Add new compatible strings for Dubhe-80 and Dubhe-90. These are
> RISC-V cpu core from StarFive Technology and are used in StarFive
> JH8100 SoC.
>=20
> Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index f392e367d673..493972b29a22 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -48,6 +48,8 @@ properties:
>                - thead,c906
>                - thead,c910
>                - thead,c920
> +              - starfive,dubhe-80
> +              - starfive,dubhe-90

s goes before t.

Cheers,
Conor.

>            - const: riscv
>        - items:
>            - enum:
> --=20
> 2.34.1
>=20

--EUvI/cSgkBgk0Ae7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdOpgAKCRB4tDGHoIJi
0uVEAP9+aU09s/wTZvSkheUPpKm6rd4yxNAHRKZCriICz4oaigD+PFVwtVTPyqlP
ZIoMEWCwYXrtM7SkFYto5vwuPsLNiwk=
=RbUh
-----END PGP SIGNATURE-----

--EUvI/cSgkBgk0Ae7--

