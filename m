Return-Path: <devicetree+bounces-138725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD85AA11E29
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:36:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C606A188D9EE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 09:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164121E7C3E;
	Wed, 15 Jan 2025 09:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRvxXnwG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28AB35966;
	Wed, 15 Jan 2025 09:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736933735; cv=none; b=LK0i8gg2DtlEgabd4kZy8SnJp2KXgmSXEZplSG1MeTPriAylPQz1My4MtqoUIsLHzBFQQarVKuoR0s0g+TyJPytxjuq4krP7sT11EspY3ljZGCvIztDOACO7vB/kdqI4DPqEw7BClZGcWRHrCFwxvtPAyjbECIaEgko7UsuGyyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736933735; c=relaxed/simple;
	bh=p+hqniwq/VG9dhOh6Hnhr7/N5Yo4JFKM4KBxZNiPOn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Srndsp0W3gWz96g2VXrE5PoJPQNBIzSfCh47TEYeaB2Ww7iCu6ccIhgE369sTuMSZewgks++Dn6dP5/Ii3UKoEGI24eqJF0Pqm6PRPDjBIHwWAhNLKtWYP8x3v6rbaa5GqGeHgzmwyyLMC0QsRwBqbykR8EdAxwuXpvTkly78Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRvxXnwG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A2B3C4CEDF;
	Wed, 15 Jan 2025 09:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736933734;
	bh=p+hqniwq/VG9dhOh6Hnhr7/N5Yo4JFKM4KBxZNiPOn0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qRvxXnwGSIpQXwIDT7QucTsJ76w30NW8G0Oc2INCOreyRafL45Q1Bnkt+ZjQRc1Q7
	 rtNO3RX+QlHH0BYPWStorAMVLu8ehU9j4ApR4WRSjvb3hNxzM3ZLFvE0yb7Dq8XSTu
	 kz3NBv4jVdlwN1IDLbdh4xnsQKfDA2paX5dJsWbZKTsjvOIaisPU8zzRaZ1aLdFmJb
	 2bkXXmerrlPDPLCXzA/Avdnkab38LIjev2u6Ub0sm260nsXMOUYtrR+ct9/Bowrmsl
	 U5F+FVxu/TbaabYZ82YrcRO5oHcSBm0bDhDhL9IwbRVQqhryvH/qebYRLt06DYE4bP
	 LXnKlPEqaTWAg==
Date: Wed, 15 Jan 2025 09:35:29 +0000
From: Conor Dooley <conor@kernel.org>
To: Hal Feng <hal.feng@starfivetech.com>
Cc: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Minda Chen <minda.chen@starfivetech.com>
Subject: Re: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
Message-ID: <20250115-bunkmate-reluctant-a9bad52d8a04@spud>
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-2-e@freeshell.de>
 <20250104-mutilated-unpaved-008eebdb200a@spud>
 <56c372c3-bb8b-4150-9b34-a6cca906d740@freeshell.de>
 <20250106-suggest-waltz-47d7f7760069@spud>
 <ZQ2PR01MB1307A9E106AE06E144875D6EE619A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aIHZ/aPXKB+pnUdS"
Content-Disposition: inline
In-Reply-To: <ZQ2PR01MB1307A9E106AE06E144875D6EE619A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>


--aIHZ/aPXKB+pnUdS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2025 at 06:33:08AM +0000, Hal Feng wrote:
> > On 07.01.25 04:08, Conor Dooley wrote:=20
> > On Sat, Jan 04, 2025 at 01:04:30PM -0800, E Shattow wrote:
> > > Hi, Conor  (added CC: Minda Chen, Hal Feng)
> > >
> > > On 1/4/25 10:33, Conor Dooley wrote:
> > > > On Thu, Jan 02, 2025 at 11:45:07AM -0800, E Shattow wrote:
> > > > > Replace syscrg assignments of clocks, clock parents, and rates,
> > > > > for compatibility with downstream boot loader SPL secondary
> > > > > program loader.
> > > > >
> > > > > Signed-off-by: E Shattow <e@freeshell.de>
> > > > > ---
> > > > >   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++-=
--
> > > > >   1 file changed, 9 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > > > b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > > > index 48fb5091b817..55c6743100a7 100644
> > > > > --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > > > +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> > > > > @@ -359,9 +359,15 @@ spi_dev0: spi@0 {
> > > > >   };
> > > > >   &syscrg {
> > > > > -	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_CORE>,
> > > > > -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> > > > > -	assigned-clock-rates =3D <500000000>, <1500000000>;
> > > > > +	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> > > > > +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> > > > > +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> > > > > +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
> > > > > +	assigned-clock-parents =3D <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> > > > > +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> > > > > +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> > > > > +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
> > > > > +	assigned-clock-rates =3D <0>, <0>, <0>, <0>;
> > > >
> > > > Why is assigned rates here 0s, rather than the property just remove=
d?
> > > >
> > > > >   };
> > > > >   &sysgpio {
> > > > > --
> > > > > 2.45.2
> > > > >
> > >
> > > Assigned rates all zeroes is how it is in U-Boot. Removing the
> > > assigned-clock-rates property as suggested does work in U-Boot and
> > > Linux both.
> > >
> > > For context, U-Boot fails when replacing assigned-clocks to
> > > JH7110_SYSCLK_CPU_CORE (500MHz) and JH7110_PLLCLK_PLL0_OUT
> > (1500MHz)
> > > from Linux. So I tried to merge all properties together and in testing
> > > then U-Boot failed (or I did it wrong). However replacing the Linux
> > > properties with the U-Boot configuration (above) on Linux does work f=
or
> > both.
> > >
> > > I do not know if this is correct but I can test any suggestions and
> > > report if they are working.
> > >
> > > Do these changes make sense? Are there other variations I should test?
> >=20
> > I'd like the commit message to at least explain why these clocks need t=
o be
> > set to zero (I assume that means disabled?). Maybe the StarFive folks k=
now
> > why it is required?
>=20
> Here "assigned-clock-rates =3D <0>, ..." means skipping setting clock rat=
es.
> You can refer to
> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/cl=
ock/clock.yaml/

If you check the wording there, it says:
  To skip setting parent or rate of a clock its corresponding entry should =
be
  set to 0, or can be omitted if it is not followed by any non-zero entry.
Since all clocks are being set to 0 above, we should be in the "can be
omitted" case for the entire property, no? That would...

> Linux here setting JH7110_SYSCLK_CPU_CORE to 500MHz and JH7110_PLLCLK_PLL=
0_OUT
> to 1500MHz are for increasing the CPU frequency to 1500MHz.
>=20
> VF2 u-boot is still running at 1000MHz now. You failed to set JH7110_PLLC=
LK_PLL0_OUT
> to 1500MHz, because CPU power supply voltage needs to be increased before=
 running at
> 1500MHz.
>=20
> I think a better choice now is changing Linux device tree as follows:
>=20
> &syscrg {
> 	assigned-clocks =3D <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> 			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> 			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> 			  <&syscrg JH7110_SYSCLK_QSPI_REF>,
> 			  <&syscrg JH7110_SYSCLK_CPU_CORE>,
> 			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> 	assigned-clock-parents =3D <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> 				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> 				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> 				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
> 	assigned-clock-rates =3D <0>, <0>, <0>, <0>, <500000000>, <1500000000>;
> };

=2E..make this one a reasonable change...

> For u-boot, if there is no requirement to run u-boot at 1500MHz, just keep
> &syscrg {
> 	assigned-clock-rates =3D <0>, <0>, <0>, <0>;
> };

=2E..but not this one.

> in u-boot device tree. If we need running 1500MHz in u-boot, I will send =
a patch
> to implement it and then &syscrg{...} in u-boot device tree can be droppe=
d.
>=20
> Best regards,
> Hal

--aIHZ/aPXKB+pnUdS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4eBYQAKCRB4tDGHoIJi
0vdWAP9O6R65THOidydMf9y6+5AUKdKrXbUDa7LoIf2/uuhMCQEAqdUmvrNeAAX6
6jVcoKymWpEdVb6NkXhE7Stf9bs3HQU=
=1dvY
-----END PGP SIGNATURE-----

--aIHZ/aPXKB+pnUdS--

