Return-Path: <devicetree+bounces-12665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C6B7DACE1
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 15:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D770428148C
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 14:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9988C7F9;
	Sun, 29 Oct 2023 14:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0T5Ukdi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720CD389
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 14:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37787C433C8;
	Sun, 29 Oct 2023 14:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698591225;
	bh=B77paaWavuJBoV76+uT6kv3JeTujUuxIv7T2SkTKO1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o0T5Ukdin8LJMZ70k7O9IyjSUqDJHhzJ5pTPTYGcwJk0p6dDRLeMRfxtRwkxYWJ0k
	 XtC6NZ4s3vGwbBc1FuTCr80pfBRYZcOgtPpZWSN6AQWJSxQoNrdKvGWbHFvKkOygfH
	 xs3eL+qwd99/qB5b/KaSHUT4tZsk1ZgTQiGsOxCdEEWX0fjM36TT2zswTyvBI6FrgG
	 zbjZ2tjs4kF7hUoql8akr2d949b8YbpTODf7aN1X6CiWiukBUmg8bWg/9RkE2PmkBG
	 YZyN0K1P7EMe3k0Kjr3yH4rBCP6U9OqTgZmHcfam24M2/3AMPDoz3aAHJSEr2iAU4q
	 v3sTeAvOngTuQ==
Date: Sun, 29 Oct 2023 14:53:41 +0000
From: Conor Dooley <conor@kernel.org>
To: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com,
	palmer@dabbelt.com, devicetree@vger.kernel.org,
	ajones@ventanamicro.com, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
Message-ID: <20231029-kitten-provider-1602fa805c35@spud>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tyFSOvf0FmUbRd4a"
Content-Disposition: inline
In-Reply-To: <20231029123500.739409-1-dbarboza@ventanamicro.com>


--tyFSOvf0FmUbRd4a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
> Following the examples of cbom-block-size and cboz-block-size,
> cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
> The most common case is to have all cache block sizes to be the same
> size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
> cache operations), but there's no specification requirement for that,
> and an implementation can have different cache sizes for each operation.
>=20
> Cc: Rob Herring <robh@kernel.org>
> Cc: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>

Firstly, odd CC list. Please CC the output of get_maintainer.pl in the
future.

IIRC, I mentioned defining this to Drew when he was add zicboz, but he
didn't want to add it - although he seems to have asked you to document
this. Drew, change of heart or am I not remembering correctly?
I think he cited some interpretation of the spec from Andrei W that
implied the Zicbop size would be the same as one of the other ones, but
I cannot find that on lore atm.

If Drew's okay with it, then I am too, so a conditional
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 97e8441eda1c..1660b296f7de 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -78,6 +78,11 @@ properties:
>      description:
>        The blocksize in bytes for the Zicbom cache operations.
> =20
> +  riscv,cbop-block-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      The blocksize in bytes for the Zicbop cache operations.
> +
>    riscv,cboz-block-size:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> --=20
> 2.41.0
>=20
>=20

--tyFSOvf0FmUbRd4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZT5x9QAKCRB4tDGHoIJi
0rHgAP9mMGabZ8oZuilD5QVEH/IQImiR4kJXJX509fCK4Q1LMAD/UKI0W9asmhs1
7+asQ3dMCGcWYy4rEQgKHcIWBXGInw4=
=j177
-----END PGP SIGNATURE-----

--tyFSOvf0FmUbRd4a--

