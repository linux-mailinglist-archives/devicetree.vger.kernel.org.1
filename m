Return-Path: <devicetree+bounces-76901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F9A90C792
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4D66B235CD
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9FA1BD013;
	Tue, 18 Jun 2024 09:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxacwh8c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577081BD010
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718701452; cv=none; b=rcqmDQ/G6JNNTC6MfonD5EOirGRZggtozSpxV309y6Dr8JkZCtvDAps9PxzH5pRMoFdaF+EDErOTxGCwMq1QWaEJi7sXnFiFGxZHEXnrUCDR60xwhwjSTpF5F3MG0TEH/FJYyKZE2+zt3CHDiJtY3+UCQmvu0aOxJZ6wLPRKu94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718701452; c=relaxed/simple;
	bh=2Lu5aSmINCBVk6WqvBkdisoVRAKEwJjOlaRIvMyOS3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ofyKu1wZ/zqKyG04MKfK+SpX3761p3YCZAK39qEEcounQJHVPy1deF0jesXwbIwD+6aOpGcU3XrP0Eriqu5+GUtaq4FLodSYQnKqN5fdKo4KEi1mbYwhHlc9qB64abcOA29PkP+w/FzoKKfkrtxJgOtOK34cvHCf0sFzZFESjuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxacwh8c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69735C4AF1A;
	Tue, 18 Jun 2024 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718701451;
	bh=2Lu5aSmINCBVk6WqvBkdisoVRAKEwJjOlaRIvMyOS3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mxacwh8cdFIVC8BQFcEwgwWaIUE2riQls7fpXtIZ6cqCqBgjkoag0TZUP4Ho9VjtO
	 z+xVYWFGKn9/3k6992ant9SOHTpBs+ppZr0iD0tWwmeCkleLAnhloxCGdBTuaI+650
	 wzbP1e0UU/vN11VVu5Wr0/26YqqTIa9+nHDaqiMmRhF4YNbGnM0Nv2t7NIZ+XlU9cH
	 FKWB5aChFdjO+4l38drp9o456ihzuv3znrsiQ3/BMTKSTnV14mhSiVWPk/lr6LqQQt
	 9jXV8nS9ZFV8eKf35pCcIoieAXc+dDLc2mruUOFbrQuFXe5On4hiLhZS5diPCFvJpa
	 n4wCfyO15t6Uw==
Date: Tue, 18 Jun 2024 11:04:09 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Chris Morgan <macroalpha82@gmail.com>, Andre Przywara <andre.przywara@arm.com>, 
	John Watts <contact@jookia.org>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240618-silky-holistic-oyster-bf59fe@houat>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
 <20240606-authentic-mongoose-9485904a91a1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p7klevgvv277nvt2"
Content-Disposition: inline
In-Reply-To: <20240606-authentic-mongoose-9485904a91a1@spud>


--p7klevgvv277nvt2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Conor,

Sorry, I missed the news of you becoming a DT maintainer, so most of my
previous points are obviously bogus. And congrats :)

On Thu, Jun 06, 2024 at 12:51:33PM GMT, Conor Dooley wrote:
> On Thu, Jun 06, 2024 at 01:23:03PM +0200, Maxime Ripard wrote:
> > On Thu, Jun 06, 2024 at 11:37:31AM GMT, Neil Armstrong wrote:
> > > On 06/06/2024 11:32, Maxime Ripard wrote:
> > > > On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
> > > > > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
> > > > > number of handheld gaming devices made by Anbernic. By consensus a
> > > > > vendor prefix is not provided as the panel OEM is unknown.
> > > >=20
> > > > Where has this consensus been found?
> > > >=20
> > > > I had a look at the previous discussions, and I can't find any cons=
ensus
> > > > being reached there. And for that kind of thing, having the ack or
> > > > review of any of the DT maintainers would have been great.
> > >=20
> > > There was a consensus with Conor, this is why he acked v2, see
> > > https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a7@spud/
> >=20
> > It's probably a matter of semantics here, but if it's with only one
> > person, it's not a consensus but an agreement.
> >=20
> > > ```
> > > I think if we genuinely do not know what the vendor is then we just
> > > don't have a prefix.
> > > ```
> >=20
> > And even then, I don't interpret Conor's statement as a formal agreement
> > but rather an acknowledgment of the issue.
>=20
> I mean, I specifically left an r-b below that line in v2:
> https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spud/
>=20
> I'm not a displays guy, so my sources were limited to what I could find
> from search engines, but I spent some time looking for an actual vendor
> of the panel and could not. All I found was various listings on places
> like AliExpress that did not mention an manufacturer. I'd rather not
> invent a vendor because we could not find the actual vendor of the
> panel & it seemed rather unreasonable to block support for the device
> on the basis of not being able to figure out the vendor. If you, as
> someone knowledgeable on displays, can figure the vendor out, then
> yeah we should definitely add it.

It's still a bit surprising to me. We've merged[1][2][3][4], and are still
merging[5], panels from this particular vendor that have no clearly
identified OEMs. Just like any other panel, really. We almost *never*
have the actual OEM, we just go with whatever is the easiest to identify
it.

Plus, if there ever is another WL-355608-A8 part from a completely
unrelated vendor, then you'll have a naming clash with no clear
indication about which is which.

Maxime

1: https://lore.kernel.org/all/20230426143213.4178586-1-macroalpha82@gmail.=
com/
2: https://lore.kernel.org/all/20231003163355.143704-1-macroalpha82@gmail.c=
om/
3: https://lore.kernel.org/all/20231117202536.1387815-1-macroalpha82@gmail.=
com/
4: https://lore.kernel.org/all/20231208154847.130615-1-macroalpha82@gmail.c=
om/
5: https://lore.kernel.org/dri-devel/20240618081515.1215552-1-kikuchan98@gm=
ail.com/

--p7klevgvv277nvt2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnFNiAAKCRDj7w1vZxhR
xTjLAQCbSznFNSaTDELJw2cyFvcFo6WuegJ22APcuEASspXmYgEA230nYNw/QP+8
VEfFU7rJtXOOsGPo+twnK3G1aV30agQ=
=5pkb
-----END PGP SIGNATURE-----

--p7klevgvv277nvt2--

