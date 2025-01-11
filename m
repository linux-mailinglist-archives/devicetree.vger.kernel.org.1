Return-Path: <devicetree+bounces-137611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 964B2A0A100
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 06:26:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8468F3A2D2A
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 05:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94AA1547FB;
	Sat, 11 Jan 2025 05:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b="PiLAYKJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BBE1547C8;
	Sat, 11 Jan 2025 05:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736573190; cv=none; b=J3jrN9VKJwJWATGncN+ig5f6rLheRUaXW1NYaMGe41GPa5WKgD8fMxDAJcPZaazELMQkiq3hBeqhUp+9Yc8P/2GIv1xPpOITQu9Q5nyHnkY3FQk8buRBYN2bzxjv5N3muUKAzRosaQjd1SsMnyBdkvsgOt7c2t4JpySLe/7ARk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736573190; c=relaxed/simple;
	bh=ZZ9yXjmed8pK65xGqHyvnPVSw/s2I4SPUgLouqxc9ug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NALV3fmj6NpT8sqgBGN4Z+Yho8qWKEZivTSiyxdqGSB2Zq0N673JNo6dnMkU6d2k0N4Oj8i21aYAuTIki6/GZ6xfvLk+B/pqczre7Jn9xH1DrjKn9a0UL1kabCcKVk6e5+b039wfb0nr5fq7rJ3zkMDG8wzud4rfyQhfV0ndRCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=PiLAYKJ3; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202412; t=1736573177;
	bh=idLoF2XW7xP5JAegxPTkM6KD6aTbevFQ/3cj4p/7AVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PiLAYKJ3JecU/R3Br/FYM102K+OkH/i4lR0+O47wmm5+Ec/K7Uxialj8vnqi+iWdn
	 WuNtVW4zXJlZ+VIZi/7nDAGfjWYu+2mEGySQW4k4b0TmMnD9bUEVUvSQnYx9lciHdQ
	 zCu7CRegeLHIrSomlFwwsa2hCJq5rwOKqjNYW9Ug/PxI7j69/RXIcgEbkFk/gmgrb0
	 Ym885eIRgfyzEa5U4faM7o3nClzKn9US2f+hDX0T+MIlgiPN53/UjIMVeIdYFwl1os
	 ZgdxbHLgY8zf+KiCxsaidfK3jghD8XOIkbwEJ0oCIgQ2mKWpQnmu1g05RPEDpd8Nsi
	 vTOh66QhwRPTQ==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4YVRp116rpz4wxh; Sat, 11 Jan 2025 16:26:17 +1100 (AEDT)
Date: Sat, 11 Jan 2025 14:17:18 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Ayush Singh <ayush@beagleboard.org>
Cc: Herve Codina <herve.codina@bootlin.com>, Andrew Davis <afd@ti.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
Message-ID: <Z4HivicesQnDdyFn@zatzit>
References: <33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
 <20241210104141.39acffb1@bootlin.com>
 <bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
 <20241210115515.1886f73f@bootlin.com>
 <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
 <20250108090750.45685a50@bootlin.com>
 <d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
 <20250108104719.0412ad94@bootlin.com>
 <Z4Chb_nEDTHms_ZN@zatzit>
 <b7f5b521-cb0e-43d8-87ce-c1e536b98e4e@beagleboard.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DE4M2lvkQUFmj7G4"
Content-Disposition: inline
In-Reply-To: <b7f5b521-cb0e-43d8-87ce-c1e536b98e4e@beagleboard.org>


--DE4M2lvkQUFmj7G4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 01:25:43PM +0530, Ayush Singh wrote:
>=20
>=20
> On 10/01/25 09:56, David Gibson wrote:
> > On Wed, Jan 08, 2025 at 10:47:19AM +0100, Herve Codina wrote:
> > > Hi Ayush,
> > >=20
> > > On Wed, 8 Jan 2025 13:58:04 +0530
> > > Ayush Singh <ayush@beagleboard.org> wrote:
> > >=20
> > > ...
> > > >=20
> > > > I will experiment with adding support to dtc and see how things loo=
k.
> > > > Hopefully, 2025 is the year of addon board support.
> > > >=20
> > >=20
> > > Also one point different between fdtoverlay an runtime loading is
> > > that runtime loading allows to set the target node of the overlay
> > > at runtime.
> >=20
> > I'm not really sure what you mean by "runtime loading".  Do you mean
> > the kernel's implementation of loading dtbo overlays?
> >=20
> > While that is a different implementation from the one in fdtoverlay
> > (AIUI), they're both working from the same dtb format.  As we
> > discovered attempting Ayush's proposal, it turns out that the dtbo
> > simply doesn't have the information we need to correctly path
> > substitutions; and it's not at all easy to add it.
>=20
> Ahh, I think there is a misunderstanding. `export-symbols` only seems to
> support phandles, not paths. So no resizing involved.

Oh, sorry, I was mixing this up with a different feature Ayush was
working on.

> It's closer to the phandle support in `__symbols__`, just local in scope.
>=20
> >=20
> > So, the problem of the encoding format needs to be solved regardless
> > of which implementation is actually processing the overlays.
> >=20
>=20
> So there is no problem with the encoding format.
>=20
> The questions I have are more regarding weather `export-symbols` or
> something close to it can be made part of spec instead of the custom linux
> thing.
>=20
>=20
> Ayush Singh
>=20

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--DE4M2lvkQUFmj7G4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmeB4rkACgkQzQJF27ox
2Gc7ahAAhIwla7QjtBr8bUydgyTbx8IawYayTt9ZDFtg58QHK5nhGB98i1B7GTSY
ZW0wbYXfDvaqmuNOHxppYgjyJhB+BV0CZAdfGzx9aoKCP/uuoPdTexLi1aQHXhT8
5FHzuTExW4TUttlPGXNKpUmmcrmDQaTHE5gjxFAZ91KAgU4jmyq0083eRBDRuCw6
C0vmb0O3ZkV5dyPKUz7hdj5cIqrFYqc4kmuO+MER3glO2L6c47tBMZW9qQOwkiWv
M/ZoM6h56zXqii+gpxojyq8BxXU1feDoIBh8GBvmD1HXZjG6ZarQuflCUjKR+LK6
/17P3TcLCK++hK/TonzY8Pyo0fp2jxPpco3/W0pROdGdACJY8Cmp15YUw5+8s8uS
RjffEDuChwj8IjtS9+7FaRgg1hq4kZ+bwTunRGYf/I87kVqw14X7dMZc2EdpBUWU
If6YW5tX0OplV+SgRK2t8uCuujozmVOql6hdsLvVH++HINGPyWyejA22RKMw5b81
jwJ1MVAUWpeCxY7gfe/jX9foFiuYo6K2cdh3LJFW6WfGkmy3lpwoae5yT9s2JV9q
8Hm/+uZ7ou77aae9/JWGevVV3KNmY55ZsB9XuAK8V9jTsFs6XLFdnCdMyw0yE/UM
Jvuv2zVSkfFYFKxg6Ya/4VTw0lpnHsWeSdZoXILB+j6jp6qUA+M=
=nrC6
-----END PGP SIGNATURE-----

--DE4M2lvkQUFmj7G4--

