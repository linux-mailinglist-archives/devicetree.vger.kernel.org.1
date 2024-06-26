Return-Path: <devicetree+bounces-80043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDED9917B7A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E18701C21CE6
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED01F168483;
	Wed, 26 Jun 2024 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htEMSn13"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C883F160796
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719392194; cv=none; b=WieyDz4D8OidEbpxqioeFV+zwrHHQngfmmaNw4fuYZIaZHuT4R874GyOjSGIdzNqzJuVv1Y8w5etEhoCDaNJ1OxaIKouWhjQzxr3k8f9d299Wvt7BbPL86gHslkxmmTzfjTz1tEIc6l9qqFEw/lG6gGx5LMOclb9sxgPsAmI4fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719392194; c=relaxed/simple;
	bh=U8LIQwcNm2fwvClBrN9NogAlE3vWVpMxV7qUqLWW3M4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aUTwTNahxsw+gNy8qAUEArFym5v5UUQlh0soZtY/cYg4SEAdb3XJ4HfkXsWFfP05q3gesUnvS5E0PNF4j/gNeySrxwsZwXx9ui+MCLxyJPMh6/zJWPDuJB8aadXZmCJ8fmmuc40VXXI8JoNBkzmajTTKinbB+eVdmtUNKjZfTwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htEMSn13; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7509C2BD10;
	Wed, 26 Jun 2024 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719392194;
	bh=U8LIQwcNm2fwvClBrN9NogAlE3vWVpMxV7qUqLWW3M4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=htEMSn133OP/V72aFnCF/6fgz9ocd4/tu2ZAD6a7O2t+j+5+9tdPv+3vNHCIOkgF1
	 1PfcpcFTwc0Y1gJG79m7rm4fJ2yD30IB5Z53/KiBr/JcuRhRyo49TXWUY94pukhMmZ
	 KR68Yk1RRvpbWgzZ12oMsdYCdz3dZKs/3A+f+k0tK8lyqgoi2DPui5HGP1cHqW7/3r
	 fQbtZHad8ACJo5WomiyXSt/O/w6Qxp+4w40XeXfItBFi2Ie/nbNf0blFAYWjZAbPfc
	 lLVsrnl3XNqpgOuJFTsjNKkevk4Ylho86SGT+KB+hL4jEzk2S1u3f0FuWxVvOokA9m
	 t42uHybFCxxJg==
Date: Wed, 26 Jun 2024 10:56:31 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
	Conor Dooley <conor@kernel.org>, Ryan Walklin <ryan@testtoast.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Chris Morgan <macroalpha82@gmail.com>, Andre Przywara <andre.przywara@arm.com>, 
	John Watts <contact@jookia.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240626-agate-ibex-of-effort-c72ebc@houat>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
 <20240606-authentic-mongoose-9485904a91a1@spud>
 <20240618-silky-holistic-oyster-bf59fe@houat>
 <20240618-reverse-kinship-7f8df8c8e111@wendy>
 <eb50b8d3-b56d-42b2-a277-02a255b2d6c0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qcrnq5glny2xahue"
Content-Disposition: inline
In-Reply-To: <eb50b8d3-b56d-42b2-a277-02a255b2d6c0@linaro.org>


--qcrnq5glny2xahue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 02:05:50PM GMT, Neil Armstrong wrote:
> On 18/06/2024 13:13, Conor Dooley wrote:
> > On Tue, Jun 18, 2024 at 11:04:09AM +0200, Maxime Ripard wrote:
> > > Hi Conor,
> > >=20
> > > Sorry, I missed the news of you becoming a DT maintainer, so most of =
my
> > > previous points are obviously bogus. And congrats :)
> >=20
> > I've been doing it for over a year, so news travels to some corners slo=
wly
> > I guess. I'm not just being a pest in dozens of subsystems for fun!
> >=20
> > > On Thu, Jun 06, 2024 at 12:51:33PM GMT, Conor Dooley wrote:
> > > > On Thu, Jun 06, 2024 at 01:23:03PM +0200, Maxime Ripard wrote:
> > > > > On Thu, Jun 06, 2024 at 11:37:31AM GMT, Neil Armstrong wrote:
> > > > > > On 06/06/2024 11:32, Maxime Ripard wrote:
> > > > > > > On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
> > > > > > > > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display use=
d in a
> > > > > > > > number of handheld gaming devices made by Anbernic. By cons=
ensus a
> > > > > > > > vendor prefix is not provided as the panel OEM is unknown.
> > > > > > >=20
> > > > > > > Where has this consensus been found?
> > > > > > >=20
> > > > > > > I had a look at the previous discussions, and I can't find an=
y consensus
> > > > > > > being reached there. And for that kind of thing, having the a=
ck or
> > > > > > > review of any of the DT maintainers would have been great.
> > > > > >=20
> > > > > > There was a consensus with Conor, this is why he acked v2, see
> > > > > > https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a=
7@spud/
> > > > >=20
> > > > > It's probably a matter of semantics here, but if it's with only o=
ne
> > > > > person, it's not a consensus but an agreement.
> > > > >=20
> > > > > > ```
> > > > > > I think if we genuinely do not know what the vendor is then we =
just
> > > > > > don't have a prefix.
> > > > > > ```
> > > > >=20
> > > > > And even then, I don't interpret Conor's statement as a formal ag=
reement
> > > > > but rather an acknowledgment of the issue.
> > > >=20
> > > > I mean, I specifically left an r-b below that line in v2:
> > > > https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9=
@spud/
> > > >=20
> > > > I'm not a displays guy, so my sources were limited to what I could =
find
> > > > from search engines, but I spent some time looking for an actual ve=
ndor
> > > > of the panel and could not. All I found was various listings on pla=
ces
> > > > like AliExpress that did not mention an manufacturer. I'd rather not
> > > > invent a vendor because we could not find the actual vendor of the
> > > > panel & it seemed rather unreasonable to block support for the devi=
ce
> > > > on the basis of not being able to figure out the vendor. If you, as
> > > > someone knowledgeable on displays, can figure the vendor out, then
> > > > yeah we should definitely add it.
> > >=20
> > > It's still a bit surprising to me. We've merged[1][2][3][4], and are =
still
> > > merging[5], panels from this particular vendor that have no clearly
> > > identified OEMs. Just like any other panel, really. We almost *never*
> > > have the actual OEM, we just go with whatever is the easiest to ident=
ify
> > > it.
> >=20
> > It wasn't (isn't?) clear to me that Abernic is even the vendor of the
> > panel, just that it works for their devices. If there's an established
> > policy here of making up vendors for these panels, then sure, override
> > me and use them as the prefix.
> >=20
> > > Plus, if there ever is another WL-355608-A8 part from a completely
> > > unrelated vendor, then you'll have a naming clash with no clear
> > > indication about which is which.
>=20
> Not sure we can say there's an established policy ongoing here, we try to
> use the marking we find on the panel when possible and when not possible
> we use the vendor + name of the device in last ressort.

So pretty much what I was asking for?

We're getting fairly late into the release cycle and I'd like to get it
fixed before the release. Can you send a patch to address it please?

Maxime

--qcrnq5glny2xahue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnvXvgAKCRDj7w1vZxhR
xfrAAPwMhIlIjAdfeb3S2lQfourH8zDvQoEZ9kkQF526Yhfk0gEA+1Jdsre0Xhf+
MwG01ZUwa+NI/nKbAmWz7n2Ed4D56Ao=
=61en
-----END PGP SIGNATURE-----

--qcrnq5glny2xahue--

