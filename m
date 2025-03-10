Return-Path: <devicetree+bounces-156054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7CA59014
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4186C165AEC
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B450922689D;
	Mon, 10 Mar 2025 09:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng1yhFrL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF18225A48;
	Mon, 10 Mar 2025 09:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741599867; cv=none; b=qLG6OTTcQLuAb7OA1/hvzU5ZPqp9Spb3w3oTM7hG4YMo16UKf5eQrKHD/uQkyzn4aOYzLA8l0m60J8sbLYq86S0OJu0dYg93jifJITlaKW+3D//lSEFZfZDb54a3jzVeJthgi8A1t8Y/iQX4eljgXYo7nKpcdRCgQiCqxnKQgxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741599867; c=relaxed/simple;
	bh=bW6fcLN+wmFlWQcC1rUSzsTxORCMjUYUnkpkmtftfM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iSP5pkaIFV9f5sGE35uRJrKvcheJPTANS0XBOUevvBpbuEpA/Rz3XlKttWuveVJGyXBXMFEfM+nS9giqhe4NEc91J10RukGTmEucXSq3y+RVYnImisTIUneWvbvbQNJwgQYdRpUBk7QbJ9VMrmMOM2io5VfP8GgM8s/49Tp17lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng1yhFrL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72DD7C4CEE5;
	Mon, 10 Mar 2025 09:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741599867;
	bh=bW6fcLN+wmFlWQcC1rUSzsTxORCMjUYUnkpkmtftfM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ng1yhFrLzNv1KXqIoXM4i61bYSCURRakkB8PUpYHGZnQi5zI8rEScWOSnUTle3DQ3
	 AHfFjAZasso2IJwH0dbbKC8HnUf68QDtEGZTlol5HUbFXFWipdrN5H6jUGjTzs/FX+
	 J50mioRB8fAX+PI4nwCToiDKkCtXI1kyA/GMu622Z+TkfBu9zz1r2AmKVKUyMge+XM
	 ZChdbP8u7aFTlHt6XPAWbcSFzxDIlzT+JiqQgGe40mr1TZJKD5v9IHfTOdw8nLVB0s
	 GkYn7WilkT2QPwOBDTHorK2qFOzPzGA2ElA0pq16o7mZI8fgolxVMCv3ITwIw1w4Wk
	 yJ/767ui+MHpw==
Date: Mon, 10 Mar 2025 10:44:24 +0100
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
Message-ID: <20250310-hopeful-helpful-quoll-e0dee8@houat>
References: <20250304101530.969920-1-victor.liu@nxp.com>
 <20250304101530.969920-4-victor.liu@nxp.com>
 <20250304152320.GA2630063-robh@kernel.org>
 <1891036.atdPhlSkOF@steina-w>
 <20250305163805.GA2071011-robh@kernel.org>
 <7d98163d-10c8-457d-92e7-6a1d6e379beb@nxp.com>
 <20250306-kangaroo-of-pastoral-typhoon-8aefb2@houat>
 <0e82c4d6-8b93-4dd0-ae34-155e537ab344@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="swpyuuee57g33z2r"
Content-Disposition: inline
In-Reply-To: <0e82c4d6-8b93-4dd0-ae34-155e537ab344@nxp.com>


--swpyuuee57g33z2r
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/5] dt-bindings: display: simple-bridge: Document DPI
 color encoder
MIME-Version: 1.0

On Fri, Mar 07, 2025 at 11:10:00AM +0800, Liu Ying wrote:
> On 03/06/2025, Maxime Ripard wrote:
> > On Thu, Mar 06, 2025 at 03:02:41PM +0800, Liu Ying wrote:
> >> On 03/06/2025, Rob Herring wrote:
> >>> On Wed, Mar 05, 2025 at 10:35:26AM +0100, Alexander Stein wrote:
> >>>> Hi,
> >>>>
> >>>> Am Dienstag, 4. M=E4rz 2025, 16:23:20 CET schrieb Rob Herring:
> >>>>> On Tue, Mar 04, 2025 at 06:15:28PM +0800, Liu Ying wrote:
> >>>>>> A DPI color encoder, as a simple display bridge, converts input DP=
I color
> >>>>>> coding to output DPI color coding, like Adafruit Kippah DPI hat[1]=
 which
> >>>>>> converts input 18-bit pixel data to 24-bit pixel data(with 2 low p=
adding
> >>>>>> bits in every color component though). Document the DPI color enco=
der.
> >>>>>
> >>>>> Why do we need a node for this? Isn't this just wired how it is wir=
ed=20
> >>>>> and there's nothing for s/w to see or do? I suppose if you are tryi=
ng to=20
> >>>>> resolve the mode with 24-bit on one end and 18-bit on the other end=
, you=20
> >>>>> need to allow that and not require an exact match. You still might =
need=20
> >>>>> to figure out which pins the 18-bit data comes out on, but you have=
 that=20
> >>>>> problem with an 18-bit panel too. IOW, how is this any different if=
 you=20
> >>>>> have an 18-bit panel versus 24-bit panel?
> >>>>
> >>>> Especially panel-simple.c has a fixed configuration for each display=
, such as:
> >>>>> .bus_format =3D MEDIA_BUS_FMT_RGB666_1X18
> >>>>
> >>>> How would you allow or even know it should be addressed as
> >>>> MEDIA_BUS_FMT_RGB888_1X24 instead? I see different ways:
> >>>> 1. Create a new display setting/compatible
> >>>> 2. Add an overwrite property to the displays
> >>>> 3. Use a (transparent) bridge (this series)
> >>>>
> >>>> Number 1 is IMHO out of question.=20
> >>>
> >>> Agreed.
> >>>
> >>>> I personally don't like number 2 as this
> >>>> feels like adding quirks to displays, which they don't have.
> >>>
> >>> This is what I would do except apply it to the controller side. We kn=
ow=20
> >>> the panel side already. This is a board variation, so a property make=
s=20
> >>> sense. I don't think you need any more than knowing what's on each en=
d.=20
> >>
> >> With option 2, no matter putting a property in source side or sink sid=
e,
> >> impacted display drivers and DT bindings need to be changed, once a bo=
ard
> >> manipulates the DPI color coding.  This adds burdens and introduces new
> >> versions of those DT bindings.  Is this what we want?
> >=20
> > There's an option 4: make it a property of the OF graph endpoints. In
> > essence, it's similar to properties that are already there like
> > lane-mapping, and it wouldn't affect the panel drivers, or create an
> > intermediate bridge.
>=20
> I don't see lane-mapping anywhere. Do you mean data-mapping instead?
> data-mapping is not defined in dtschema. Only lvds-codec.yaml defines
> data-mapping in endpoint.

I meant as a general concept. The properties are data-lanes and
clock-lanes in
Documentation/devicetree/bindings/media/video-interfaces.yaml

> With option 4, I guess you meant display sink drivers, i.e., panel and
> bridge drivers, wouldn't be affected. Then, display source drivers, i.e.,
> display controller and bridge drivers, would be affected. This adds
> burdens for driver developers/maintainers(though almost no effort from
> DT's PoV), doesn't it?

Not necessarily, panels have a phandle to the parent endpoint too so
they can do that walk and configure their format if it's any easier.

> Moreover, why it has to be the display sink drivers which are not affecte=
d?
> DT writers might choose to set the format at the sink endpoint, e.g., set=
ting
> RGB666 at the sink endpoint of a RGB888 DPI panel or bridge.

Why wouldn't you run the panel at the highest bpc possible?

Maxime

--swpyuuee57g33z2r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ860dwAKCRDj7w1vZxhR
xfIvAQCfpg7xTuK6h3dnIje1go/hDo9eR5Ul9+nTMUMqopojgAEA7AZ0UdH61pOY
N6RyLXAAU+VWWkZ17jWwRC9ikLsWUAk=
=Pd5P
-----END PGP SIGNATURE-----

--swpyuuee57g33z2r--

