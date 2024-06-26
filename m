Return-Path: <devicetree+bounces-80323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E89185E7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F3CA1C22C7A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FF618C333;
	Wed, 26 Jun 2024 15:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj+y5qCE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02643A92F
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416057; cv=none; b=rR9cQ0JfE6egvRBcVJFlM3xJ6F51046cKEWsMPj4ANCjUaUFmYd+Mmk0bLVmsEEjWZMdten/AJ3dknvR6S4Vf1bMcgJr8jRvC94wjsTn6cllM9jTF9baraWqqth6NJaGtF9WjfZuQGO67U2tg5HhR2a2K33w6wNTkfmZBegrI+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416057; c=relaxed/simple;
	bh=bFmFLS9hSjkAkoM5N1tWapomH1CnBnvNDYN6EO8XE6g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKQqBQynVk8uWvcua7jx2xHiFFD0lwQd48DRHf1n5DANvH8wFwLKXlgZhRrPmeJShwFt3ONZtTkH6UadMIYuihObAwM1+iB9HGiyVv+qPrzTGIEt/8fBKvK7wvic0LgAPHaurppyY4Yyn6UsNNVR6mMpedM7GvB7Z/4RSOpO6MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj+y5qCE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7F7C116B1;
	Wed, 26 Jun 2024 15:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719416056;
	bh=bFmFLS9hSjkAkoM5N1tWapomH1CnBnvNDYN6EO8XE6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uj+y5qCErXpXgzsQ0B5VvyRvyhOE4KaBqTzQSu6vj6Ba3r5U7TLRTnB4vbtNdZ25u
	 l8RP2Bp3JKkLtDRSCTHrXMfk06PR6HfZvfoKcgHFADIiNL8OgtkZl92nQXU7d87qzZ
	 qK5/xvGJKf+5ZjvB8Vw1neaJ/PFwjTk1chM3WmUeOH4hVlSUXAguFVIJUT0m19+aPw
	 NnDBXR45q18HV6NX9TAPTaB6dlAWS51vaNnAx1oqlMvOzEkm4YZrAG8dspLbaz42DX
	 +7GXHu1QyDhPjVOtyi5y4YYAId6mccwTYHnptEEh1hE+4IXFPW0tCuLKRyB9GKq43e
	 ZYbURs4UDUFkw==
Date: Wed, 26 Jun 2024 16:34:11 +0100
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
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
Message-ID: <20240626-procreate-goldmine-800179f909e9@spud>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
 <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
 <20240626-loyal-squirrel-of-charisma-4e784f@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OnHtFo0qjIR5v0q+"
Content-Disposition: inline
In-Reply-To: <20240626-loyal-squirrel-of-charisma-4e784f@houat>


--OnHtFo0qjIR5v0q+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 05:04:19PM +0200, Maxime Ripard wrote:
> On Wed, Jun 26, 2024 at 02:25:54PM GMT, Neil Armstrong wrote:
> > On 26/06/2024 13:17, Ryan Walklin wrote:
> > > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unkno=
wn
> > > OEM used in a number of handheld gaming devices made by Anbernic.
> > > Previously committed using the OEM serial without a vendor prefix,
> > > however the preference is to use the integrating device vendor and na=
me
> > > where the OEM is unknown.
> > >=20
> > > Alter the filename and compatible string to reflect the convention.
> > >=20
> > > Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
> > > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > > ---
> > >   .../{wl-355608-a8.yaml =3D> anbernic,rg35xx-panel.yaml}     | 8 +++=
+----
> > >   1 file changed, 4 insertions(+), 4 deletions(-)
> > >   rename Documentation/devicetree/bindings/display/panel/{wl-355608-a=
8.yaml =3D> anbernic,rg35xx-panel.yaml} (81%)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/display/panel/wl-35560=
8-a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx=
-panel.yaml
> > > similarity index 81%
> > > rename from Documentation/devicetree/bindings/display/panel/wl-355608=
-a8.yaml
> > > rename to Documentation/devicetree/bindings/display/panel/anbernic,rg=
35xx-panel.yaml
> > > index 397c26be9bda5..a7d5ad0f29389 100644
> > > --- a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.ya=
ml
> > > +++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx=
-panel.yaml
> > > @@ -1,10 +1,10 @@
> > >   # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > >   %YAML 1.2
> > >   ---
> > > -$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
> > > +$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-pan=
el.yaml#
> > >   $schema: http://devicetree.org/meta-schemas/core.yaml#
> > > -title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
> > > +title: Anbernic RG35XX (WL-355608-A8) 3.5" 640x480 24-bit IPS LCD pa=
nel
> > >   maintainers:
> > >     - Ryan Walklin <ryan@testtoast.com>
> > > @@ -15,7 +15,7 @@ allOf:
> > >   properties:
> > >     compatible:
> > > -    const: wl-355608-a8
> > > +    const: anbernic,rg35xx-panel
> > >     reg:
> > >       maxItems: 1
> > > @@ -41,7 +41,7 @@ examples:
> > >           #size-cells =3D <0>;
> > >           panel@0 {
> > > -            compatible =3D "wl-355608-a8";
> > > +            compatible =3D "anbernic,rg35xx-panel";
> >=20
> > Can it be more specific ? because there's a lot of rg35xx defined in bi=
ndings:
> >  anbernic,rg351m
> >  anbernic,rg351v
> >  anbernic,rg353p
> >  anbernic,rg353ps
> >  anbernic,rg353v
> >  anbernic,rg353vs
> >  anbernic,rg35xx-2024
> >  anbernic,rg35xx-plus
> >  anbernic,rg35xx-h
>=20
> Yeah, if we have an identified model name, we should probably use that,
> with a comment that we couldn't figure out what the vendor was and thus
> went for anbernic.

What's wrong with using the wl name that already exists as the model?
Using rg<whatever>-panel is total invention on our part, especially
seeing as the commit message says that multiple models can use it.

--OnHtFo0qjIR5v0q+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnw08wAKCRB4tDGHoIJi
0s5NAPsFYH37GqrXanvxchwy5gy0WGCnapQQdLEkFhVj/NWvrgEA8WyHjabGjWlU
KEJI/KCmRTE6NwakoRib+heb/yj4pwk=
=EN99
-----END PGP SIGNATURE-----

--OnHtFo0qjIR5v0q+--

