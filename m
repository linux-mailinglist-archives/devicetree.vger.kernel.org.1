Return-Path: <devicetree+bounces-73258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4CC8FE5C4
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80C721F246EE
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DB1194C80;
	Thu,  6 Jun 2024 11:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpZZH2IS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D80E194AF8
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 11:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717674700; cv=none; b=YAiU9WHxDJrYJa79AxFjetMgLkcEVoHHAn7ABoJ8GuawdkKRpeh5cs/0a3ndc6oVplvUjAEE/PYSLMfWMKafdONBaYBhfiYFYMvP8BzY1sRd7cXLB1Li3lfAymKeSBr8TyriwygODwMq2w9FwUR6szIJQyP0ar3fEUCX2rLLUx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717674700; c=relaxed/simple;
	bh=WrKr6/yeqX5AZnZi1jeXYMb45lWnUi2IZopET+TwnyM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=koVVUh5WXBQkmSoTcqIG9jiXWL4oPK6Q+2qoVForQU9yY+cwL+v4TvmfiMTc3WmvigI9A8feCSwpYPWORL0hpp9CtSppEEe4g693cYtHr6e7FNICrmB8wYenjG+NP8HHq6Yalrl799rz8NwOj2dQzmiYGE13YAPavI+pyTiIAl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpZZH2IS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29505C2BD10;
	Thu,  6 Jun 2024 11:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717674699;
	bh=WrKr6/yeqX5AZnZi1jeXYMb45lWnUi2IZopET+TwnyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TpZZH2ISKKX6C39LCuP/Om+lTpYEocG3uKY4HSIKxFN9yrFI/dCMp9kRtWfYVNGhY
	 ejE0XcAaIy87jX5MFp5taWR3ecK9olNy3Ns2Q1hKwSBjSKd6P8GSx8N88P/1hPECeJ
	 NiJnSDekn0MA6ZVgXrP7USfOmHiOawbFzrC+l7zM2SKPvbJ3be99b+WXJijyOTTP7S
	 JiA6H2tw6J+rzhM8CgcTqbLAEt2ACffnCUEJGobcH7BJc57Tcovnmh0M9x4uJejbCr
	 qWpnUmmmCM4g1c/MUCjs1TJBKY3QaHiGopFWy31gNfZ+K/KHHiK5BSGNCNb8rR4x7F
	 99duAtCI6GnNg==
Date: Thu, 6 Jun 2024 12:51:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Andre Przywara <andre.przywara@arm.com>,
	John Watts <contact@jookia.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240606-authentic-mongoose-9485904a91a1@spud>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7T14RzoLsQlYusAZ"
Content-Disposition: inline
In-Reply-To: <20240606-refreshing-cinnamon-ibex-a0fe73@houat>


--7T14RzoLsQlYusAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 06, 2024 at 01:23:03PM +0200, Maxime Ripard wrote:
> On Thu, Jun 06, 2024 at 11:37:31AM GMT, Neil Armstrong wrote:
> > On 06/06/2024 11:32, Maxime Ripard wrote:
> > > On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
> > > > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
> > > > number of handheld gaming devices made by Anbernic. By consensus a
> > > > vendor prefix is not provided as the panel OEM is unknown.
> > >=20
> > > Where has this consensus been found?
> > >=20
> > > I had a look at the previous discussions, and I can't find any consen=
sus
> > > being reached there. And for that kind of thing, having the ack or
> > > review of any of the DT maintainers would have been great.
> >=20
> > There was a consensus with Conor, this is why he acked v2, see
> > https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a7@spud/
>=20
> It's probably a matter of semantics here, but if it's with only one
> person, it's not a consensus but an agreement.
>=20
> > ```
> > I think if we genuinely do not know what the vendor is then we just
> > don't have a prefix.
> > ```
>=20
> And even then, I don't interpret Conor's statement as a formal agreement
> but rather an acknowledgment of the issue.

I mean, I specifically left an r-b below that line in v2:
https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spud/

I'm not a displays guy, so my sources were limited to what I could find
=66rom search engines, but I spent some time looking for an actual vendor
of the panel and could not. All I found was various listings on places
like AliExpress that did not mention an manufacturer. I'd rather not
invent a vendor because we could not find the actual vendor of the
panel & it seemed rather unreasonable to block support for the device
on the basis of not being able to figure out the vendor. If you, as
someone knowledgeable on displays, can figure the vendor out, then
yeah we should definitely add it.

> > I agree with Conor so I applied the patchset after Connor reviewed it a=
nd the comment was fixed in v3:
> > https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spu=
d/
>=20
> Yeah, I know. Still, it's a major deviation to what we've always been
> doing, getting the DT maintainers voice on that would have been a good
> idea.

Is it a consensus of DT maintainers you're looking for?

Cheers,
Conor.

--7T14RzoLsQlYusAZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmGixQAKCRB4tDGHoIJi
0kGRAQDTdQpSL5yVbv/CO+lPJV28uEnE9+goRFPlQIK42X8q9wD9GZgwwlfeQL/r
DixUbXYNKdvuE3COu38UncJ25jF/aQ0=
=biq6
-----END PGP SIGNATURE-----

--7T14RzoLsQlYusAZ--

