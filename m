Return-Path: <devicetree+bounces-97323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 535C596202E
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F10EC1F23C58
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 07:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD92414C5BF;
	Wed, 28 Aug 2024 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esYHkB6H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8910314A0B9
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724828514; cv=none; b=WODW7YRfzpMLCJSvvxfgDAB64Y+1Qw1uiTbKE666N+oQl8IzyuoSLALn6sQbyCnX31Z8bH7rhFVjKoP43aOSDEVxqO8xQCHvGiNqC+acBzUZ9WwqLZPZT8lrdGnshdNSIlT/AdriWCyEyAl3FFcG+YT8JWNyYKOJ88xsu2wetLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724828514; c=relaxed/simple;
	bh=lQiulJwvsvCv4CFlRZOv9pbsAf4sVqJlM4BbsK7REJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jO2ajM5iKJ7/9O241eqQ8YgOPfjHdyOO7SK+iFY5vJ/9ugB3EoX+6nyATHf8C2tRnEY5L2Ey9j7jpKdprsH249yqLUK22WcR6y2FXNcmWjmnokzFySyHJbVfZjxfsWkzPRQf2thUiti79cI57sWhTRhaDDq1b2F7YBKr9rEt15E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esYHkB6H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B47BC4DDE1;
	Wed, 28 Aug 2024 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724828514;
	bh=lQiulJwvsvCv4CFlRZOv9pbsAf4sVqJlM4BbsK7REJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=esYHkB6H2mrguuEoEHqpuqrTSuoPK/dLWLJDkS66I61CJ6+3NFLp2TwEBqTRKmk0C
	 4PikCxfzC/Wbj/9N0IhMa/WwK6zhzhdMegbwVIIADvabeXk5q0mKli5tYAGHUR1qFY
	 Oz+H63QFpsKVVoxjAbCrU2Xz9jjXNp8eL44QmriNSuWd6wx2zaXlB5VSn+58RknP2J
	 /4wDtHsvLhDlVLoPSmXzIaVAIG3R2QaFXyEzeyD0+LbVoACK8auKItxM+VSZuu/1iY
	 7utcGaarhlEmNsHWdTqDco5eM+K7lTHHbrzhKwi4hppHYJAJRY8hMtiju05YCdCxyJ
	 6fNYdQFFs3yHw==
Date: Wed, 28 Aug 2024 09:01:50 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Ryan Walklin <ryan@testtoast.com>, Conor Dooley <conor@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
Message-ID: <20240828-aboriginal-vivid-goldfish-3ee4fc@houat>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
 <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
 <20240626-loyal-squirrel-of-charisma-4e784f@houat>
 <20240626-procreate-goldmine-800179f909e9@spud>
 <20240627-muskox-of-nonconcrete-art-e4bcfd@houat>
 <8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com>
 <d9686280-5514-49ab-91b8-0737141178ce@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3lhi2rphdmmo7pit"
Content-Disposition: inline
In-Reply-To: <d9686280-5514-49ab-91b8-0737141178ce@linaro.org>


--3lhi2rphdmmo7pit
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2024 at 06:28:21PM GMT, Neil Armstrong wrote:
> On 30/06/2024 10:16, Ryan Walklin wrote:
> > On Fri, 28 Jun 2024, at 5:59 AM, Maxime Ripard wrote:
> > > On Wed, Jun 26, 2024 at 04:34:11PM GMT, Conor Dooley wrote:
> > > > On Wed, Jun 26, 2024 at 05:04:19PM +0200, Maxime Ripard wrote:
> > > > > On Wed, Jun 26, 2024 at 02:25:54PM GMT, Neil Armstrong wrote:
> > > > > > Can it be more specific ? because there's a lot of rg35xx defin=
ed in bindings:
> > > > > >   anbernic,rg351m
> > > > > >   anbernic,rg351v
> > > > > >   anbernic,rg353p
> > > > > >   anbernic,rg353ps
> > > > > >   anbernic,rg353v
> > > > > >   anbernic,rg353vs
> > > > > >   anbernic,rg35xx-2024
> > > > > >   anbernic,rg35xx-plus
> > > > > >   anbernic,rg35xx-h
> >=20
> > Just to note only the three rg35xx-* devices use this particular panel.
> >=20
> > > > >=20
> > > > > Yeah, if we have an identified model name, we should probably use=
 that,
> > > > > with a comment that we couldn't figure out what the vendor was an=
d thus
> > > > > went for anbernic.
> > > >=20
> > > > What's wrong with using the wl name that already exists as the mode=
l?
> > > > Using rg<whatever>-panel is total invention on our part, especially
> > > > seeing as the commit message says that multiple models can use it.
> > >=20
> > > Yeah, that makes sense, sorry for the noise
> > >=20
> > Thanks both for the further feedback, agreed logical to use the
> > device vendor and panel serial number, ie "anbernic,wl-355608-a8".
> > Will post a V2 with a comment to that effect.
>=20
> Well in this case we can keep "wl-355608-a8", because the panel vendor
> _is not_ anbernic.

And it's not a generic or ubiquitous device either. We've been over
this already, anbernic is the best we have.

Maxime

--3lhi2rphdmmo7pit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZs7LWQAKCRAnX84Zoj2+
dunxAXsHn0+ylT8fGwRjCkwWHKwJrjM+1y4RnvfxB4kaXvhLuIvX4wln2mHf/Lyp
KnWB4JMBfjttoc2w0VPVwj180Hz2ytPvzPLxXtWIQ4+42ASGCmQ4TmZGbcNaYjYm
Sg77K/NRPg==
=m3YX
-----END PGP SIGNATURE-----

--3lhi2rphdmmo7pit--

