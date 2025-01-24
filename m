Return-Path: <devicetree+bounces-140847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA58A1BABF
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 17:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 069723A0FA6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30EF41946CD;
	Fri, 24 Jan 2025 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyQIF9yo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0780C155303;
	Fri, 24 Jan 2025 16:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737736846; cv=none; b=EYkdC+yGSJQ/jOvwHSie+ou/XP9xUTwoVBIAa/Cco27HX81quqIN/UA8BGXigKbu/gQyPkgfzizJGcTUsKOFEyvqm6SMsBOo5Q7UJK9LYpair3h5pCrq+imSvKcSf3AX4j2ZV34/ia3ZaYJfArwFPlXdetThX1wzPD24ZYPTf2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737736846; c=relaxed/simple;
	bh=ZCIDAYKnmNGR7uBbI0PwRs38xGHHKQrBRx0w7qn9NCs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dABbByRva3LlMKLsGdKUg/4llXXJCyJ8NEbS9P88BHrmY/CD47MRNCpwcnG7zcDPoXmpGfd/+RZB483Ip8i3WmxWr5Bv8pJkKKlwlt5A5IKgLvBc33p+wnTGgG95S4hcaV5EuN417YMqwnW8pF8e+QOF0v6PEzajfO7i1YRX9dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyQIF9yo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75EC8C4CEDD;
	Fri, 24 Jan 2025 16:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737736844;
	bh=ZCIDAYKnmNGR7uBbI0PwRs38xGHHKQrBRx0w7qn9NCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GyQIF9yo0Yiv7h+piO/BjINkoso2SNDfeK0K5vkOJ9jkjRJIFnLz7b398ueGS6rTi
	 Nv5hA/F273B47kssLNJdbuwIQLVVmVNAYInObP7g2klvZ76YelTmF2FTwXWqBlAbRw
	 Mj8hBwDoZsDFP1JxVjl7gnhKF1cowXbEcwCPHs+wiwByCsncLIZ5ESXAjrPHr3821F
	 kueCb6y2kIaMxO8Wi4kl7aFM2defoNN3NEIcmjkqrbtPkh9bgHIFyjydCFVFLPm3iz
	 w11v/9crnUxdPmVpzkTQ74ClK4xueXUwMNUUlMA60gTQaPYhVfaRvvxLFwnHYa/50f
	 o++vv08g27hKA==
Date: Fri, 24 Jan 2025 16:40:40 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/3] riscv: dts: starfive: jh7110: add timer node
Message-ID: <20250124-unweave-stainable-debbb0e75cd4@spud>
References: <20250102204137.423081-1-e@freeshell.de>
 <20250102204137.423081-2-e@freeshell.de>
 <20250113-monotone-maybe-97ae1d171710@spud>
 <b62cfcc1-5d10-43a1-80ae-f09a53c739de@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="emhvCFUstfqV4EwB"
Content-Disposition: inline
In-Reply-To: <b62cfcc1-5d10-43a1-80ae-f09a53c739de@freeshell.de>


--emhvCFUstfqV4EwB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 24, 2025 at 03:19:33AM -0800, E Shattow wrote:
>=20
> On 1/13/25 10:39, Conor Dooley wrote:
> > On Thu, Jan 02, 2025 at 12:41:21PM -0800, E Shattow wrote:
> > > no idea if this does anything useful; not needed for boot
> > >=20
> > > Signed-off-by: E Shattow <e@freeshell.de>
> > > ---
> > >   arch/riscv/boot/dts/starfive/jh7110.dtsi | 9 +++++++++
> > >   1 file changed, 9 insertions(+)
> > >=20
> > > diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/bo=
ot/dts/starfive/jh7110.dtsi
> > > index 0d8339357bad..0bc922b3ae8a 100644
> > > --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > > @@ -344,6 +344,15 @@ tdm_ext: tdm-ext-clock {
> > >   		#clock-cells =3D <0>;
> > >   	};
> > > +	timer {
> > > +		compatible =3D "riscv, timer";
> >=20
> > compatible has an extra space, so won't do anything!
> >=20
> > > +		interrupts-extended =3D <&cpu0_intc 5>,
> > > +				      <&cpu1_intc 5>,
> > > +				      <&cpu2_intc 5>,
> > > +				      <&cpu3_intc 5>,
> > > +				      <&cpu4_intc 5>;
> > > +	};
> > > +
> > >   	soc {
> > >   		compatible =3D "simple-bus";
> > >   		interrupt-parent =3D <&plic>;
> > > --=20
> > > 2.45.2
> > >=20
>=20
> That extra space is my error and does not exist in U-Boot. Good catch! So,
> when corrected it appears to boot either way with or without and not any
> change in functionality that I can discern. My priority then for this ser=
ies
> is to drop this patch as something unnecessary.

I don't mind having it, if it makes the hw description more complete,
even if not used.

--emhvCFUstfqV4EwB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ5PCiAAKCRB4tDGHoIJi
0mZGAQCKTX5vFdz0jcBot/jS9u2rLS53alcBk3UoQWyxovrMLwEA24f0rXaG2StP
dpCyn2UvBPNN/2eE8X/wBvNUZRP+sQ4=
=6vR5
-----END PGP SIGNATURE-----

--emhvCFUstfqV4EwB--

