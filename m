Return-Path: <devicetree+bounces-12698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC877DAEC9
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 23:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B51FA2813F7
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 22:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083D011189;
	Sun, 29 Oct 2023 22:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtujfLmN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB162C8D2
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 22:21:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99D90C433C8;
	Sun, 29 Oct 2023 22:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698618119;
	bh=h7fGRE4ylItJyqCL+d2BVbDEQQipYTRYy5yg1ZEmHto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LtujfLmN3jw1pdT8IJGdVwUona80KKnrobMT4DGZuMrU2IFU3FB5hHK/mYXfayizr
	 bK2/DKXTZAWYqwqJPv4CZ3aZ23mea2Uv0aXtl/B5yFR7gb4XQZgWEFp904bWGDqV1V
	 C2Bqcm19nqDp88QIa2BAa0IwT1RRnP0yJ/MWPsIp1pqngiKDuIZE3uhLs/AzsnNTXT
	 cGpCVnR5WjGOvgTs8o7LOdGxYYsg9PCWMRjw2lrWgTU4Ff4Q0XdvWe8ZpoL3atGyZl
	 rJ5TNyZzpjHPlvG74QRNlgSup6L7hNv2jB4IauyaME9vLKYrEJgO/dvNcsuk46WsR5
	 sGC0VutseVdtA==
Date: Sun, 29 Oct 2023 22:21:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com,
	palmer@dabbelt.com, devicetree@vger.kernel.org,
	ajones@ventanamicro.com, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
Message-ID: <20231029-sappy-ought-98fecff551fc@spud>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
 <20231029-kitten-provider-1602fa805c35@spud>
 <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fU/IsFht+W+H21s6"
Content-Disposition: inline
In-Reply-To: <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>


--fU/IsFht+W+H21s6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 29, 2023 at 04:49:30PM -0300, Daniel Henrique Barboza wrote:
>=20
>=20
> On 10/29/23 11:53, Conor Dooley wrote:
> > Yo,
> >=20
> > On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
> > > Following the examples of cbom-block-size and cboz-block-size,
> > > cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
> > > The most common case is to have all cache block sizes to be the same
> > > size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
> > > cache operations), but there's no specification requirement for that,
> > > and an implementation can have different cache sizes for each operati=
on.
> > >=20
> > > Cc: Rob Herring <robh@kernel.org>
> > > Cc: Conor Dooley <conor.dooley@microchip.com>
> > > Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
> >=20
> > Firstly, odd CC list. Please CC the output of get_maintainer.pl in the
> > future.
>=20
> Ops, my bad
>=20
> >=20
> > IIRC, I mentioned defining this to Drew when he was add zicboz, but he
> > didn't want to add it - although he seems to have asked you to document
> > this. Drew, change of heart or am I not remembering correctly?
> > I think he cited some interpretation of the spec from Andrei W that
> > implied the Zicbop size would be the same as one of the other ones, but
> > I cannot find that on lore atm.
>=20
> The reason why I'm here is because I want to add Zicbop in QEMU riscv,isa.
> I'm pushing a rva22u64 profile implementation there and Zicbop is mandato=
ry
> for it. In the process I added a riscv,cbop-block-size DT because, well,
> if both Zicboz and Zicbom have their respective block-size DTs, then it's
> expected that Zicbop also has one. Or so I thought.
>=20
> Drew then replied in the QEMU ML [1] that riscv,cbop-block-size isn't
> documented and we can't add it as it is. So here we are.

Yeah, I did read that.

> If riscv,cbop-block-size isn't needed because Zicbop will use the cache
> block size of Zicboz or Zicbom, that works for me too - I'll add a note
> in QEMU explaining why there's no riscv,cbop-block-size and everything
> is fine.

I just wanted to remind Drew why we didn't add this in the first place,
given I had seen that he suggested that you add it in the QEMU thread.
And in the hopes that he would be able to dig the link back up to
Andrei's comments, given I wasn't able to find it/couldnt remember
recall where it had come from.

> What we can't do is add stuff in the QEMU DT that's neither
> documented nor acked in the DT bindings.

That's a welcome change.

Cheers,
Conor.

--fU/IsFht+W+H21s6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZT7bAwAKCRB4tDGHoIJi
0lKdAP9KKI4XrSAwBDe3UD5phuekzXWb3sF7mQBjqttuecYl3QD9EjzHpIuTKva6
Dz6daHDzKym7oXhSO0D+EIPBCERYGQc=
=A7NF
-----END PGP SIGNATURE-----

--fU/IsFht+W+H21s6--

