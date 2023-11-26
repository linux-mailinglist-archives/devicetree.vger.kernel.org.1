Return-Path: <devicetree+bounces-18945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C0F7F9281
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 12:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F3B6B20C25
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 11:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59816FB1;
	Sun, 26 Nov 2023 11:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjrmWqk1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF05EC2
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 11:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF45C433C7;
	Sun, 26 Nov 2023 11:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700998589;
	bh=P2P43SYXv6u+aOpsTU/RQ6/+rVreClZ6o7li0KxB/6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JjrmWqk1+DbOryXclrK/r7SZdXk3DcsNeTRgHuGdTKdF3l0JVVjN1uOZhuOVwYkcS
	 +a+GVTrx+nGWEd5hLUoG39sYZ6vb6tegM1zNPhkuiNasLtvwbo6GqbUkiEjJJ2y0tl
	 qWySar4H2sguCPv+IDwdPeNPEbqwtyhIe3Al4YF9vHTZ2bgmyYCsZ9a8hFgnuiIsDM
	 zZ9QrD3BDbxiRXKDuzD/6J6eThmgezkopACfr29woOfkXX6jKwlyc8e0Y4rsdQVyBk
	 idLuBpoDOEwkW2K5RnBYWAZvd3//Zi9WOsfThc3N0Um/XX6j3mcDqL6QRNkupsGa0F
	 7XfwrU9fm3UJw==
Date: Sun, 26 Nov 2023 11:36:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: starfive: add Milkv Mars board device tree
Message-ID: <20231126-attractor-swampland-b1b95bd1322b@spud>
References: <20231126100055.1595-1-jszhang@kernel.org>
 <ef4eda2a-4be5-4992-a315-d02e1a36b656@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gYJgPLPFWEYyFUMA"
Content-Disposition: inline
In-Reply-To: <ef4eda2a-4be5-4992-a315-d02e1a36b656@linaro.org>


--gYJgPLPFWEYyFUMA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 26, 2023 at 11:27:20AM +0100, Krzysztof Kozlowski wrote:
> On 26/11/2023 11:00, Jisheng Zhang wrote:
> > +	cpus {
>=20
> Board should not bring new CPU nodes. Override by label instead.
>=20
>=20
> > +		timebase-frequency =3D <4000000>;
> > +	};

This particular one is widespread, but I am not sure why it is being set
on the board level in any of the individual cases. On the platforms
where I do know where the frequency for this comes from it is set by the
SoC, not the board and so should really be fixed by moving this into
$soc.dtsi. I suspect the same is true for the jh7110 and
timebase-frequency is not a board-level setting and probably needs the
same treatment. Those with more insight into how the clocks on the
jh7110 are routed can hopefully advise us here.

--gYJgPLPFWEYyFUMA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWMttwAKCRB4tDGHoIJi
0pICAPoCeTCnmr5Ffb8M9OFyuV+MeSGUq3QE+0enkLN9i+3KygEAqJ0V62Uifzg9
9r6wcYvE7wwFGV7sgZr3x+gCUKUyPgc=
=a9J5
-----END PGP SIGNATURE-----

--gYJgPLPFWEYyFUMA--

