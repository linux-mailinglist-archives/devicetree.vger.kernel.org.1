Return-Path: <devicetree+bounces-80293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC5918530
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85DAD1F271FC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45A2188CB4;
	Wed, 26 Jun 2024 15:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNPnBeeE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA00188CAF
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719414262; cv=none; b=aTDHPO+aqE6Wx0NXg/+bCwpuciW1Ch6bX9w2nxEy/aFG73RmVXj8Zw/w8EyA16CEnXi3Pv1yJf9pZqUhRr4gU4Epv4mj6KslTYQekmI5VWSXeF52XZSMIzjuna5U2Lu/Oh6MJQreoc8OgAdv/XWsvcRDylq4a/mJQfbqPQGNMoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719414262; c=relaxed/simple;
	bh=F+OX7nwgZv+3Cbs88EmNsVb+Kjr0FQe87JnPvA5YTv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g/3meh14RdzcNRSg5RAuDdGXWMRl+nifKhH2w/r8NPhKDgFTqics8txkn18aSUuN/L2oljS78/2BXs5jIq5qmSdYCmUz3t34X8BR+PsYNTjorqKMgJkuEgyPb7lDHNr/LI2qH6hGgFY4Ja+1txQ3ncbynM6l5LUxe179PP/yYvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNPnBeeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91E50C116B1;
	Wed, 26 Jun 2024 15:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719414262;
	bh=F+OX7nwgZv+3Cbs88EmNsVb+Kjr0FQe87JnPvA5YTv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bNPnBeeEv6UawQvlEeAVrQBlj+WgNi1Vm+KfPuLyREROT7eIhUBOttxsvWJAWVh6i
	 2bO2kBo3cujXXCudxpRXSpEgpBB9BzaSYjGVZJd+43D/lct8OLQpHLctrfkOtovajx
	 JaNaLkQuV2JUYsy/zz+YQBN+A8RdAeNNYn+/BoW1BdTYpmqQz3rV4En5zTsLqaalhS
	 giLSrqIDKzvwqlpuTHxJrVxtImp5Dia4J3ivJ8T5yaH8xr6U0eKDTrPGnpfQw+TRHg
	 ZbzQ5qUVlNP/+o2ql/newyDpnQ3XkOCo53Be5pU7a0xPJLZuvs7tQftl84mcSVmGE3
	 zd3gwMtF+JUfw==
Date: Wed, 26 Jun 2024 17:04:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hironori KIKUCHI <kikuchan98@gmail.com>, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
Message-ID: <20240626-loyal-squirrel-of-charisma-4e784f@houat>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
 <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t4mtuqwwn5yvkujw"
Content-Disposition: inline
In-Reply-To: <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>


--t4mtuqwwn5yvkujw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 02:25:54PM GMT, Neil Armstrong wrote:
> On 26/06/2024 13:17, Ryan Walklin wrote:
> > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display from an unknown
> > OEM used in a number of handheld gaming devices made by Anbernic.
> > Previously committed using the OEM serial without a vendor prefix,
> > however the preference is to use the integrating device vendor and name
> > where the OEM is unknown.
> >=20
> > Alter the filename and compatible string to reflect the convention.
> >=20
> > Fixes: f08aac40639c ("drm: panel: nv3052c: Add WL-355608-A8 panel")
> > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > ---
> >   .../{wl-355608-a8.yaml =3D> anbernic,rg35xx-panel.yaml}     | 8 ++++-=
---
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> >   rename Documentation/devicetree/bindings/display/panel/{wl-355608-a8.=
yaml =3D> anbernic,rg35xx-panel.yaml} (81%)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/panel/wl-355608-=
a8.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-p=
anel.yaml
> > similarity index 81%
> > rename from Documentation/devicetree/bindings/display/panel/wl-355608-a=
8.yaml
> > rename to Documentation/devicetree/bindings/display/panel/anbernic,rg35=
xx-panel.yaml
> > index 397c26be9bda5..a7d5ad0f29389 100644
> > --- a/Documentation/devicetree/bindings/display/panel/wl-355608-a8.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/anbernic,rg35xx-p=
anel.yaml
> > @@ -1,10 +1,10 @@
> >   # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >   %YAML 1.2
> >   ---
> > -$id: http://devicetree.org/schemas/display/panel/wl-355608-a8.yaml#
> > +$id: http://devicetree.org/schemas/display/panel/anbernic,rg35xx-panel=
=2Eyaml#
> >   $schema: http://devicetree.org/meta-schemas/core.yaml#
> > -title: WL-355608-A8 3.5" (640x480 pixels) 24-bit IPS LCD panel
> > +title: Anbernic RG35XX (WL-355608-A8) 3.5" 640x480 24-bit IPS LCD panel
> >   maintainers:
> >     - Ryan Walklin <ryan@testtoast.com>
> > @@ -15,7 +15,7 @@ allOf:
> >   properties:
> >     compatible:
> > -    const: wl-355608-a8
> > +    const: anbernic,rg35xx-panel
> >     reg:
> >       maxItems: 1
> > @@ -41,7 +41,7 @@ examples:
> >           #size-cells =3D <0>;
> >           panel@0 {
> > -            compatible =3D "wl-355608-a8";
> > +            compatible =3D "anbernic,rg35xx-panel";
>=20
> Can it be more specific ? because there's a lot of rg35xx defined in bind=
ings:
>  anbernic,rg351m
>  anbernic,rg351v
>  anbernic,rg353p
>  anbernic,rg353ps
>  anbernic,rg353v
>  anbernic,rg353vs
>  anbernic,rg35xx-2024
>  anbernic,rg35xx-plus
>  anbernic,rg35xx-h

Yeah, if we have an identified model name, we should probably use that,
with a comment that we couldn't figure out what the vendor was and thus
went for anbernic.

Maxime

--t4mtuqwwn5yvkujw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnwt8gAKCRDj7w1vZxhR
xRDnAQCMx43OxkqwG3/vkdOb81oKGeBhGroIw3cdcOsszTTWEQD+PMzSpXjljuse
4bnwlOEKGpK3uQFvafaN29bhrcRUoQE=
=1Wid
-----END PGP SIGNATURE-----

--t4mtuqwwn5yvkujw--

