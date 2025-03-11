Return-Path: <devicetree+bounces-156411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EE5A5BA1C
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 08:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86D4218902E3
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 07:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9F3222173C;
	Tue, 11 Mar 2025 07:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9kZY4+3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04EB1E7C06;
	Tue, 11 Mar 2025 07:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741679072; cv=none; b=NfQpWTr6s1xa8+1pDmEPejtFAoyrdFOV/Roh8SeMsnbMYFZ2Og7WeraEmJSFa2DaMsjI6tqyPRqG37nMZPr4vYnohOqhwWcqlRlJ+1wu6MTV1ollfi1H2XED/DZBY3RwoTQ/keQMNXjufGwhiyOoDjecnjt95tJ+1gdDSemPsIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741679072; c=relaxed/simple;
	bh=2eIaNlwJa4dzv5id5JOusE6+2FtezRKb/pqzF4d5egQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lS0Th+IJIHGg4bG7cFm37vHjRm0dqOOv4OLYlIRQRyJci3EzD26DnrfgzcYyIhFmsrSLCVCpGCJD4+XVTvWlpLCBgY1NlPInlmarPSbc3i+XQnKRMAhXE7nLsuspchxlsdI13P/NnpUzVARTgJa3A3QaNk2AKSdmeo1x6eUmB1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9kZY4+3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A766DC4CEE9;
	Tue, 11 Mar 2025 07:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741679071;
	bh=2eIaNlwJa4dzv5id5JOusE6+2FtezRKb/pqzF4d5egQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R9kZY4+3EjEOh8Obpcsb1AzEJSSjlYsRlaBq/MiXkRP2T+AfnVqVtTHZV2PM2eBKc
	 E1IvHxv1/b6J5IG3UBLj7AaA9AF+pCBQBBMVbmhLhyxEA7GQI6clX3vmFDfLE3oJdv
	 OMGcWh8d2Qht3FRcKqFMDMLe5oI5eI1mNVDrc10X1IhW8+LwYQIWCzfJMK7PrH0R/P
	 Z6cooRdwxLrJ4VmHi+53n2XuBXpevvBy28WttFVaY00qTfMtUUmV7cacS9jlkYGcoc
	 sM5gPA0LvdgzYQp9wZJLZfDSEetjqDtFuys8MEaxwGwj4e3rWZawXGHKnCD1BwJ8IS
	 zA0RE+Dd32zAw==
Date: Tue, 11 Mar 2025 08:44:28 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch
Subject: Re: [PATCH 3/5] dt-bindings: display: simple-bridge: Document DPI
 color encoder
Message-ID: <20250311-logical-spirited-mustang-e62afd@houat>
References: <20250304101530.969920-4-victor.liu@nxp.com>
 <20250304152320.GA2630063-robh@kernel.org>
 <1891036.atdPhlSkOF@steina-w>
 <20250305163805.GA2071011-robh@kernel.org>
 <7d98163d-10c8-457d-92e7-6a1d6e379beb@nxp.com>
 <20250306-kangaroo-of-pastoral-typhoon-8aefb2@houat>
 <20250306203444.GA570402-robh@kernel.org>
 <3836a4d2-ef4e-427e-a820-39dd4823458b@nxp.com>
 <20250310-orthodox-unyielding-kagu-decaf9@houat>
 <8148d63e-a6ef-403b-b730-f64c572113af@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pno4qowwcglhp5do"
Content-Disposition: inline
In-Reply-To: <8148d63e-a6ef-403b-b730-f64c572113af@nxp.com>


--pno4qowwcglhp5do
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/5] dt-bindings: display: simple-bridge: Document DPI
 color encoder
MIME-Version: 1.0

Hi,

On Tue, Mar 11, 2025 at 10:29:28AM +0800, Liu Ying wrote:
> On 03/10/2025, Maxime Ripard wrote:
> > On Fri, Mar 07, 2025 at 11:25:40AM +0800, Liu Ying wrote:
> >> On 03/07/2025, Rob Herring wrote:
> >>> On Thu, Mar 06, 2025 at 12:35:49PM +0100, Maxime Ripard wrote:
> >>>> On Thu, Mar 06, 2025 at 03:02:41PM +0800, Liu Ying wrote:
> >>>>> On 03/06/2025, Rob Herring wrote:
> >>>>>> On Wed, Mar 05, 2025 at 10:35:26AM +0100, Alexander Stein wrote:
> >>>>>>> Hi,
> >>>>>>>
> >>>>>>> Am Dienstag, 4. M=E4rz 2025, 16:23:20 CET schrieb Rob Herring:
> >>>>>>>> On Tue, Mar 04, 2025 at 06:15:28PM +0800, Liu Ying wrote:
> >>>>>>>>> A DPI color encoder, as a simple display bridge, converts input=
 DPI color
> >>>>>>>>> coding to output DPI color coding, like Adafruit Kippah DPI hat=
[1] which
> >>>>>>>>> converts input 18-bit pixel data to 24-bit pixel data(with 2 lo=
w padding
> >>>>>>>>> bits in every color component though). Document the DPI color e=
ncoder.
> >>>>>>>>
> >>>>>>>> Why do we need a node for this? Isn't this just wired how it is =
wired=20
> >>>>>>>> and there's nothing for s/w to see or do? I suppose if you are t=
rying to=20
> >>>>>>>> resolve the mode with 24-bit on one end and 18-bit on the other =
end, you=20
> >>>>>>>> need to allow that and not require an exact match. You still mig=
ht need=20
> >>>>>>>> to figure out which pins the 18-bit data comes out on, but you h=
ave that=20
> >>>>>>>> problem with an 18-bit panel too. IOW, how is this any different=
 if you=20
> >>>>>>>> have an 18-bit panel versus 24-bit panel?
> >>>>>>>
> >>>>>>> Especially panel-simple.c has a fixed configuration for each disp=
lay, such as:
> >>>>>>>> .bus_format =3D MEDIA_BUS_FMT_RGB666_1X18
> >>>>>>>
> >>>>>>> How would you allow or even know it should be addressed as
> >>>>>>> MEDIA_BUS_FMT_RGB888_1X24 instead? I see different ways:
> >>>>>>> 1. Create a new display setting/compatible
> >>>>>>> 2. Add an overwrite property to the displays
> >>>>>>> 3. Use a (transparent) bridge (this series)
> >>>>>>>
> >>>>>>> Number 1 is IMHO out of question.=20
> >>>>>>
> >>>>>> Agreed.
> >>>>>>
> >>>>>>> I personally don't like number 2 as this
> >>>>>>> feels like adding quirks to displays, which they don't have.
> >>>>>>
> >>>>>> This is what I would do except apply it to the controller side. We=
 know=20
> >>>>>> the panel side already. This is a board variation, so a property m=
akes=20
> >>>>>> sense. I don't think you need any more than knowing what's on each=
 end.=20
> >>>>>
> >>>>> With option 2, no matter putting a property in source side or sink =
side,
> >>>>> impacted display drivers and DT bindings need to be changed, once a=
 board
> >>>>> manipulates the DPI color coding.  This adds burdens and introduces=
 new
> >>>>> versions of those DT bindings.  Is this what we want?
> >>>>
> >>>> There's an option 4: make it a property of the OF graph endpoints. In
> >>>> essence, it's similar to properties that are already there like
> >>>> lane-mapping, and it wouldn't affect the panel drivers, or create an
> >>>> intermediate bridge.
> >>>
> >>> Yes, that's actually where I meant to put the property(ies).
> >>
> >> Put optional dpi-color-coding or something else in endpoint-base?
> >=20
> > I'm not sure what you mean by endpoint base, but it would be just like
>=20
> I meant the endpoint-base definition in graph.yaml.
>=20
> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/gr=
aph.yaml#L37

I don't think it should be put in the graph binding document, but either
in video-interfaces, or, since it's mostly used by v4l2, in a similar
but separate document for DRM.

> If optional dpi-color-coding property or something else is put there, then
> any existing DT binding doc which references it starts to contain the
> additional property automatically, which means those existing DT binding =
docs
> don't need any change.  I'm not saying that this is ok to do(due to burde=
ns
> added by driver modification and maintainence) - I still think option 3 i=
s the
> right thing to do.

If the property is generic, and the support for it done well enough,
it's probably going to be a single function call in drivers. I wouldn't
call that a burden.

> > data-lanes, on the endpoint itself, right next to remote-endpoint. Given
> > the nomenclature we have, something like "color-format" or
> > "color-encoding", and taking the media format bus as value.
>=20
> This requires to change drivers and maintain the change, which adds burde=
ns.
>=20
> >=20
> >> Assuming it's optional, then it implies that it will overwrite OS's
> >> setting, which sounds kinda awkward, because it is supposed to be
> >> required to describe the actual color coding.
> >=20
> > I'm sorry, I don't understand what you mean here. Your bridge would have
>=20
> I meant an optional new property is not that welcomed

Not that welcomed by whom?

> and it is supposed to be required.

Not supposed to be required by whom?

> > been optional as well, right?
>=20
> No, if _no_ additional property is added to endpoint-base in graph.yaml or
> to video-interfaces.yaml, then my bridge would be required, not optional,
> because that would be the only way to support DPI color encoding.

I mean, you can turn that any way you like, but we've supported the
setups your bridge needs to cover fine so far. Your work would
definitely improve the situation, but it's definitely not going to be
mandatory. Just like the color encoding property wouldn't be.

> > Worst case scenario, your driver could make that property mandatory on
> > its endpoints. Plenty of drivers are doing it.
>=20
> This adds a new property to existing DT binding docs(yet another new vers=
ion
> of DT binding doc) and requires modifications on existing drivers, which =
again
> adds burdens.  It's also a burden for developers to support that property=
 in
> new DT binding docs and new drivers.  For existing DT binding docs and dr=
ivers
> which are using that property, that's fine and good to them.

Both Rob and I are maintainers of the affected code, let us worry about
the maintenance burden.

Maxime

--pno4qowwcglhp5do
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ8/p2wAKCRDj7w1vZxhR
xXlzAPsGF9+77AXR6dApIVQpZ5rZw1fme2nfCNLRrk2Dj1Dx6AD7BO5GhER4PzgQ
Pi5bdRu4bOGNzag++sVBx3pDA2ou+Ag=
=lPnL
-----END PGP SIGNATURE-----

--pno4qowwcglhp5do--

