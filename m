Return-Path: <devicetree+bounces-69136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE038CEFC8
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 17:22:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E85F1C2089F
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 15:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04463D0D9;
	Sat, 25 May 2024 15:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZeTM+9z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7651429E
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 15:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716650535; cv=none; b=QjgE2c/bkJ6Uh21MoNkDz0alVGaHr3xN8cMbFID/wQRWPA4l+uj6aSK5CI2AbTf3oTRhVstCRjp7XwW6xEtcBin7HSdmRqr3IAN1MXtkwmhpo6CDTodVjJqWCpGdGr/lJpruKbg7dGhMNjIawr1ttyTstbNvcLe66SycWZf6gGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716650535; c=relaxed/simple;
	bh=3tbcRNxeNzL8TcNwxdvGvDZ9O4pCgSBfeWFvCWSk6yQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ilGS/6xCWVthWhS0BZnnQ4atE635itEQ2eqs4wSzm/aQnrxr8ZAzdkGhUG+fQEIk8B/wqo9//gei/2PsfiHiwmxWnYSIfuR6XEWYYuU/G/BPnB8Wb2kxfSADvjBBe7IvlqKd+fpHE8U0d8msE6NReBjRnEqf3rR6efxfWqZDw+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZeTM+9z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E2D4C2BD11;
	Sat, 25 May 2024 15:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716650535;
	bh=3tbcRNxeNzL8TcNwxdvGvDZ9O4pCgSBfeWFvCWSk6yQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hZeTM+9zlWR9siOzeSHwoQa1iLcxr0TtyU4cAdodleN8jDl6Rb2ciAdF8xJiORxHP
	 1qcitlDEX9AeC7ii90ub4GotgIl/Vph5rL6VPlNfXlLUeI/FewH5RkhauC8IUJSpVi
	 en6+CAV+PgCzk/50+0yUZa/TJrbyBqqIZ6erC3F8IarXNoQzFxSYMiTqHRXM5glPQf
	 SivaYikabYFoRQp6enuCNKZcI3kv2udIhwbf6Cf7AHm1P+Q+uMOFgM/K2BlAOZ2xSg
	 aLh8mxDde6dnj07PXcMvJB3zId+ktHHrqQsFMNdjpL1QzUp7XnNZPflDwUpoE8M830
	 KOmBj5+CK9AEg==
Date: Sat, 25 May 2024 16:22:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
Message-ID: <20240525-velvet-citable-a45dd06847a7@spud>
References: <20240524103506.187277-1-ryan@testtoast.com>
 <20240524103506.187277-2-ryan@testtoast.com>
 <20240524-purveyor-outlying-5201f700a56e@spud>
 <a7363cd2-4e2e-4894-8a16-f1913927e332@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9hL0IbwgYO6baJb1"
Content-Disposition: inline
In-Reply-To: <a7363cd2-4e2e-4894-8a16-f1913927e332@app.fastmail.com>


--9hL0IbwgYO6baJb1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2024 at 09:26:48AM +1200, Ryan Walklin wrote:
> On Sat, 25 May 2024, at 7:10 AM, Conor Dooley wrote:
>=20
> Thanks for the review!
>=20
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: wl-355608-a8
> >
> > You're missing a vendor prefix here. And when you add it, update the
> > filename to match.
>=20
> Thanks, I don't actually know the vendor, would it be acceptable to just =
use "wl"?

You mean, "wl,355608-a8"? I did a wee bit of googling of the thing, and
yeah, there's nothing that a surface level search turns up for it -
other than they appeared to have a logo with a W in a circle...
I think if we genuinely do not know what the vendor is then we just
don't have a prefix.

> >> +            compatible =3D "wl_355608_a8";
> >
> > This doesn't match what you documented, be sure to run dt_binding_check.
>=20
> Thanks, changed underscore to dash mid-patch and neglected to fix all
> the examples (and the subsequent code patch it seems. Will correct.
> Is there a preference one way or another?=20

Not _s :)

--9hL0IbwgYO6baJb1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZlICIgAKCRB4tDGHoIJi
0iagAP4+6uJlXfivXe4GQy7XinPInLQ7G7t86u+LVeDXy5cYWQD+L5mrwGAnA8RF
A0Ek4kwuI7vNh7txGvgWjCKX1H4LiA0=
=U4zk
-----END PGP SIGNATURE-----

--9hL0IbwgYO6baJb1--

