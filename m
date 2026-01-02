Return-Path: <devicetree+bounces-251122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A42CEEF6F
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 17:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 112E83001C11
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 16:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB9F284686;
	Fri,  2 Jan 2026 16:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxf32h8s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4092D258CCC;
	Fri,  2 Jan 2026 16:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767371175; cv=none; b=Elv0OsZu2OTe5O1ZhZ0FGQlFNf+zdnbQOf0NkjoEhLPakZ2y9WOnNiA1d8/BGZybTGMm/O1Ohbf3b9PDbBpZh4MWbueKv5Ms1lVsZ9auApPl2a0ddVo8lCtSK8TLf6Tpq8giHO1533ChXzW8yywYRYwE70pbiom5icg73Dtj0n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767371175; c=relaxed/simple;
	bh=QmE7C9Ev7qw3gJEcYgMeggxbujSmuWjYN3Qi6b/R+S0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2sfYFM2dFUVXqTWByZ9AV3hm97lysN40j5wl69teLC+tKroh+uhHjEy7LkwLX4UJb26YU/1jVB0wZGf63+UL5iensrBEDwJOdw4HGPVHC6PkkA0kF9Jt7eyPFskImxcKzkQjxfrIyrP7uusklJemQ8Mqn7QC40G4EIZptfzE5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxf32h8s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4B38C116B1;
	Fri,  2 Jan 2026 16:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767371174;
	bh=QmE7C9Ev7qw3gJEcYgMeggxbujSmuWjYN3Qi6b/R+S0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jxf32h8sWzKv4gG8pIEVlW0PSwStvuLLyw7CtLCi0a2osanFys48Bvr2LAe9xNr8b
	 m/nwrcmizqKP+KPXpIARqTNmYgU2blLYcjIoBuHYPPeXEwn/zJCl2D+kR4XRrhQMSS
	 5fdzWOriAjiawl3kPt+i7ET/oHX44zSN+oxU1oOVKyElRBqxWwnbwioOGcXQ9SGMHv
	 HAVlvkoy93LoZlqMLFYU1bKODDIMVIpAhUyyxhOoNYd4N2SCpHp+1JDSx3nra95mAI
	 005ufzZ4yfojrlNzjZgNTqd48DGkEKFjY4rDmyZiZWg1/lT91DPYJ8GsC+lWk3L8kc
	 8atRk/uyZAtfA==
Date: Fri, 2 Jan 2026 16:26:10 +0000
From: Conor Dooley <conor@kernel.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 3/5] dt-bindings: timer: microchip,sam9x60-pit64b:
 convert to yaml
Message-ID: <20260102-everyone-deflector-8a1fc23f80e0@spud>
References: <20230525125602.640855-1-claudiu.beznea@microchip.com>
 <20230525125602.640855-4-claudiu.beznea@microchip.com>
 <20230525-straw-fidgeting-4c1099aa16fe@spud>
 <5edf3d3b-6f59-0af3-6414-940a278962bf@microchip.com>
 <20230526-knickers-aim-e01220e6a7cd@wendy>
 <5a5d25a2-e6b5-fd69-f615-cd3d6ed33b9f@microchip.com>
 <20230526-unsubtle-chowtime-ce329d7e5627@wendy>
 <20230608201707.GA3359628-robh@kernel.org>
 <276e53d3-46ae-46c6-ba64-f3337bb963d9@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YyCv3gdU8evr5pa4"
Content-Disposition: inline
In-Reply-To: <276e53d3-46ae-46c6-ba64-f3337bb963d9@microchip.com>


--YyCv3gdU8evr5pa4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 02, 2026 at 05:03:24PM +0100, Nicolas Ferre wrote:
> Hi,
>=20
> On 08/06/2023 at 22:17, Rob Herring wrote:
> > On Fri, May 26, 2023 at 08:55:39AM +0100, Conor Dooley wrote:
> > > On Fri, May 26, 2023 at 06:41:39AM +0000, Claudiu.Beznea@microchip.co=
m wrote:
> > > > On 26.05.2023 09:23, Conor Dooley wrote:
> > > > > On Fri, May 26, 2023 at 04:47:28AM +0000, Claudiu.Beznea@microchi=
p.com wrote:
> > > > > > On 25.05.2023 20:14, Conor Dooley wrote:
> > > > > > > > Convert Microchip PIT64B to YAML. Along with it clock-names=
 binding has
> > > > > > > > been added as the driver needs it to get PIT64B clocks.
> > > > > > > I don't think both of these PIT things need to have different=
 binding
> > > > > > > files. 90% of it is the same, just the clock-names/number - s=
o you can
> > > > > >=20
> > > > > > But these are different hardware blocks with different function=
alities and
> > > > > > different drivers.
> > > > >=20
> > > > > Having different drivers doesn't preclude having them in the same
> > > > > binding provided the function/description etc are more or less
> > > > > identical. I was confused by:
> > > > >=20
> > > > > +description:
> > > > > +  The 64-bit periodic interval timer provides the operating syst=
em scheduler
> > > > > +  interrupt. It is designed to offer maximum accuracy and effici=
ent management,
> > > > > +  even for systems with long response times.
> > > > >=20
> > > > > +description:
> > > > > +  Atmel periodic interval timer provides the operating system=E2=
=80=99s scheduler
> > > > > +  interrupt. It is designed to offer maximum accuracy and effici=
ent management,
> > > > > +  even for systems with long response time.
> > > > >=20
> > > > > Those seemed like they do the same thing to me!
> > > >=20
> > > > They do the same thing, they are timers... But the way they do it (=
=66rom
> > > > hardware perspective) is totally different. With this would you sti=
ll
> > > > prefer to have them merged?
> > >=20
> > > Yeah, one binding would be my preference.
> >=20
> > I'd probably just leave them separate if they're pretty much unrelated.
> >=20
> > Rob
>=20
> I'd love to see this (old) thread revived and I'm ready to help.
> In particular this pit64b or WDT pending conversion to yaml which generate
> some errors while running dtbs_check on recent Microchip board .dts.
>=20
> I tend to think like Claudiu and Rob here, hardware are so different from=
 so
> different era, that... well... I would keep them separated for the sake of
> simplicity and future proof.

Yeah, that's fine by me.

>=20
> Claudiu, tell me if I need to help with this?
>=20
> Regards,
>   Nicolas

--YyCv3gdU8evr5pa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaVfxngAKCRB4tDGHoIJi
0ndKAP4/wtFzbE0yznKqwHGj6Cwzw0DbUmBx+Y7iiR4uJX3HnAEAk7LExkbAyCoZ
kUKCljgY9lEcrBhUu0xOGUnhVaAtQgQ=
=ZaKT
-----END PGP SIGNATURE-----

--YyCv3gdU8evr5pa4--

