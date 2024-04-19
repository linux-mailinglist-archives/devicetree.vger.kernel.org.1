Return-Path: <devicetree+bounces-60921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D28C8AAFBF
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 558C0281F79
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6644F1292F2;
	Fri, 19 Apr 2024 13:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI39Gi31"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400EEA59
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534740; cv=none; b=D8wmMcExUAst2HQF5hrXnyM2wxbPU7yT1fnlVMzP2Y154XRoUbo0g9lHI0eZ6Fhb9IrUBM0ge5kIwD5Gp6Ca7fk5f1PIWAz9FH6bg1ALpqqbH5YJBXgEa1vs7BqC04tp0sXVGMJQsyLFaPL/25+F7nkw243r3+es4jTORq+PsYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534740; c=relaxed/simple;
	bh=fY+0iOG7auw+u/WWt7hwcicZp9xCy4zlB4ouADBllh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MPxLzn8nwG+5etrBTvym9l96fp+qcjMvl4WAnzFfAy+Bv7Hjua7FwQWMSmWug+H/JUs8Mk1OpWpOsXYz3XV/5dGn8i5s5r/NiHBU+lyYDN7n8eddJFDO5F25JuskowZr1dDwzqW6HczPyP5uAWIF3fdjoxdhF03EwCb8lEAyX/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI39Gi31; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6949C072AA;
	Fri, 19 Apr 2024 13:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713534739;
	bh=fY+0iOG7auw+u/WWt7hwcicZp9xCy4zlB4ouADBllh4=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=dI39Gi312O8FHE4uHaVJyldTfTUvAR1lB/AnLBsKmi8EceO6pBuKbP6sALopQoGCi
	 MlwDhIna0Tq0nBexYuye/Zo2FA/oUS8D50tjJ2EKLjZnX99/mBV9oQXZCxGMsl6i2V
	 a6iOg0Qe40uJxqHWheUNLQKQKiNzer385TJ4j3BmxzzrgJFmXEabb04tHGobQu/CrK
	 O8KnfNwrlwfJn/zfPj5RYJWZO1d+/Bs4D6uK7gy0ejskPEKZQzoy1H+Cff7a2xH/qL
	 q4qPf97ogEX7vCM/fMGp5ZFCaH7EfZDt1iPBIKbdeu5T5umgNjTzi1A0S7cYR9ikaF
	 /h7XkyskxO9vQ==
Date: Fri, 19 Apr 2024 14:52:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>, soc@kernel.org, arm@kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 01/11] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
Message-ID: <20240419-magnolia-entourage-dd8a690ee288@spud>
References: <20240418121116.22184-1-kabel@kernel.org>
 <20240418121116.22184-2-kabel@kernel.org>
 <20240418-grain-ethics-8a3ee62ac9a1@spud>
 <20240419082337.646a54a5jam7x3x6@kandell>
 <20240419111445.wirqqjza4hbsekyp@kandell>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LmHCYhuoA18M2vxz"
Content-Disposition: inline
In-Reply-To: <20240419111445.wirqqjza4hbsekyp@kandell>


--LmHCYhuoA18M2vxz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 01:14:45PM +0200, Marek Beh=FAn wrote:
> On Fri, Apr 19, 2024 at 10:23:37AM +0200, Marek Beh=FAn wrote:
> > On Thu, Apr 18, 2024 at 04:43:54PM +0100, Conor Dooley wrote:
> > > On Thu, Apr 18, 2024 at 02:11:06PM +0200, Marek Beh=FAn wrote:
> > > > Add binding for cznic,turris-omnia-mcu, the device-tree node
> > > > representing the system-controller features provided by the MCU on =
the
> > > > Turris Omnia router.
> > > >=20
> > > > Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> > > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > ---
> > > >  .../bindings/arm/cznic,turris-omnia-mcu.yaml  | 86 +++++++++++++++=
++++
> > >=20
> > > Why's this in bindings/arm btw? Seems like it is some remote firmware=
 if
> > > it is running off-SoC on an MCU, so either remoteproc or firmware wou=
ld
> > > make more sense? Tying it to arm at least needs an explanation IMO.
> >=20
> > This was discussed with Krzysztof in v1, you can look it up at
> >   https://lore.kernel.org/soc/20230824131736.067c40e2@dellmb/
> >=20
> > Basically the SoC is an ARM board, and the MCU is also always ARM.
>=20
> What I wrote does not make sense. I wanted to say is that the driver
> drives the peripherals implemented by the Turris Omnia MCU firmware, and
> the Turris Omnia router is based on an ARM SoC, and that the MCU is also
> an ARM-based MCU.

Yeah, it didn't really make sense, but I read between the lines.
FWIW, I still don't really think that bindings/arm is the right place
for it.

>=20
> >=20
> > I'm guessing firmware would also make sense...
> >=20

--LmHCYhuoA18M2vxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiJ3AwAKCRB4tDGHoIJi
0kWJAQCzBaYHntWrc8f1wqbnivc/ITMcI1zyPd3QBi4hrxJICQD/alRGLCh44/j1
rmYojSioUDIXW05OouVo73EN/9viuws=
=DXoZ
-----END PGP SIGNATURE-----

--LmHCYhuoA18M2vxz--

