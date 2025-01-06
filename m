Return-Path: <devicetree+bounces-135940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5D4A03126
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FCB018862D0
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5DA1DFE3F;
	Mon,  6 Jan 2025 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZAmycN7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501491DFE34;
	Mon,  6 Jan 2025 20:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736194096; cv=none; b=S3FzOGx/EP3ViS72T6vto6CrLPsgROn5H6qhS1gSASKL73Y/GZk3BkY9Dujvkn4ehbG9X3satxJffmVOzBInFQrOCuUhxJ19aeGngyd6UQ9xwitWiVEj1j09mKQRYZj7r87SqJZzRfyQU5Kyzytracoqnpi4kQBfHqZX9kgf6kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736194096; c=relaxed/simple;
	bh=NRvcTToc1p4yengV/ghwPWZPCAkf/SQCKLQ2gGwbYKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QzJt1VLa3efCt1On31KavXEZTCI2ZoaoQXFWpYvMbSl+jSFlmBhJn+Kcql0PlmyOlaWiK4zb26itRQKAjtqCm0hpZNfnhM/a6XTTTzPkalWz2XPBtuVTnOnRF8Xd3PN1Q7QPtEfqUk1AV/hRagf9k4kc8uVxJQY1RyJRuoWctiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZAmycN7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F0D3C4CED6;
	Mon,  6 Jan 2025 20:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736194095;
	bh=NRvcTToc1p4yengV/ghwPWZPCAkf/SQCKLQ2gGwbYKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qZAmycN72/Iq0R0hlYUh1WnNiRyMtPLZYkTdeYf0YJ5vAknT/fQ6apnZLHyeodlu/
	 MLv2X15tTYa0Ow94CWJfPHuuVfUs+AnoLkY4JhGoPaj0/ybU+jgnR3Qkg7Ehxcz1TN
	 rycAFm40zOxettK79oCNZzY9PUa9HONV6acEHkLeO2ewffFHMjlRMfzEfP5O0IvOVF
	 8gMY9b3TIaib7mcNkiXb8wWnVBq9dpeiOFGP/GeXMy/QkwPbrfyCf5PJbgqPXL5dxe
	 Khd14AAZrK0mHG3qVgQ2qXVnzkOhW3dlPzOtEY4RPBUc+If0B0UJ85VkvisqVxdg7S
	 QroQR67nQ7udA==
Date: Mon, 6 Jan 2025 20:08:11 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	Minda Chen <minda.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>
Subject: Re: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
Message-ID: <20250106-suggest-waltz-47d7f7760069@spud>
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-2-e@freeshell.de>
 <20250104-mutilated-unpaved-008eebdb200a@spud>
 <56c372c3-bb8b-4150-9b34-a6cca906d740@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/Nn58aHnpboDlL35"
Content-Disposition: inline
In-Reply-To: <56c372c3-bb8b-4150-9b34-a6cca906d740@freeshell.de>


--/Nn58aHnpboDlL35
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 04, 2025 at 01:04:30PM -0800, E Shattow wrote:
> Hi, Conor  (added CC: Minda Chen, Hal Feng)
>=20
> On 1/4/25 10:33, Conor Dooley wrote:
> > On Thu, Jan 02, 2025 at 11:45:07AM -0800, E Shattow wrote:
> > > Replace syscrg assignments of clocks, clock parents, and rates, for
> > > compatibility with downstream boot loader SPL secondary program
> > > loader.
> > >=20
> > > Signed-off-by: E Shattow <e@freeshell.de>
> > > ---
> > >   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++---
> > >   1 file changed, 9 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/r=
iscv/boot/dts/starfive/jh7110-common.dtsi
> > > index 48fb5091b817..55c6743100a7 100644
> > > --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > @@ -359,9 +359,15 @@ spi_dev0: spi@0 {
> > >   };
> > >   &syscrg {
> > > -	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_CORE>,
> > > -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> > > -	assigned-clock-rates =3D <500000000>, <1500000000>;
> > > +	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> > > +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> > > +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> > > +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
> > > +	assigned-clock-parents =3D <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> > > +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> > > +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> > > +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
> > > +	assigned-clock-rates =3D <0>, <0>, <0>, <0>;
> >=20
> > Why is assigned rates here 0s, rather than the property just removed?
> >=20
> > >   };
> > >   &sysgpio {
> > > --=20
> > > 2.45.2
> > >=20
>=20
> Assigned rates all zeroes is how it is in U-Boot. Removing the
> assigned-clock-rates property as suggested does work in U-Boot and Linux
> both.
>=20
> For context, U-Boot fails when replacing assigned-clocks to
> JH7110_SYSCLK_CPU_CORE (500MHz) and JH7110_PLLCLK_PLL0_OUT (1500MHz) from
> Linux. So I tried to merge all properties together and in testing then
> U-Boot failed (or I did it wrong). However replacing the Linux properties
> with the U-Boot configuration (above) on Linux does work for both.
>=20
> I do not know if this is correct but I can test any suggestions and report
> if they are working.
>=20
> Do these changes make sense? Are there other variations I should test?

I'd like the commit message to at least explain why these clocks need to
be set to zero (I assume that means disabled?). Maybe the StarFive folks
know why it is required?

--/Nn58aHnpboDlL35
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ3w4KgAKCRB4tDGHoIJi
0q6ZAQCjyh1rshl3u2uUsHiXi6RIJflNxe8iLN0VR1ebRmfi7gEAnxi30CSpTzYt
T3mTDWwJQaewB8Jn+NOtieX6BCBa8gg=
=x1MF
-----END PGP SIGNATURE-----

--/Nn58aHnpboDlL35--

