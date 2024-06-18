Return-Path: <devicetree+bounces-76876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A6190C6EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B0A2B21B52
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131751A2C01;
	Tue, 18 Jun 2024 08:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOCgbkuF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DE31A073C
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718698546; cv=none; b=FeZ3KBr9pM3YAutNR4sStay1jpatWtTq6mLHjzjJqZr0PGOl7Uq3P9Whdj3M3mgZb/QZ4I9eyVuPYcr/A2HvAxlxHw2fWMR6cpinj2DAWQuiasNtCoruFbZ8w9Sc9FfSMPxYEkGNLcLJ8LADRXOJyMHT364lRqozkH09mNM5AsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718698546; c=relaxed/simple;
	bh=ylpiGg1ul2I32meAJZPYolq2aDtWZK7OmTUHx0fbO3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MtheKAk9zM1UnmE41DptZBZMNZgqcpXgb195o4G5KTyQ4dM0Dw/ngzhxlMQ2YBdue0HT+c/lFPKtMGCuYTogIoLw2oZzZ4FZ1v0L6BcHyPurt/R9UC+zPjTWRHvu6XR0s/1KsE81jxiqlmKi2y0cUrKvShTmJPc3qy68czycnNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOCgbkuF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 077C2C3277B;
	Tue, 18 Jun 2024 08:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718698545;
	bh=ylpiGg1ul2I32meAJZPYolq2aDtWZK7OmTUHx0fbO3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SOCgbkuFLhq60WLK6FtzWOskD9poUUHUFJ3/+KV2HCZaEwzOJT1dLMtIfmZsIyzri
	 OlRx9UG4OmVk28TJHi/JJ+BOK0L4cHFqpAPHDQU16pxqblkutN/bJt54Nl8X/r8bXb
	 j/3rrvlOox//2ABaEWOgvyjGdWdQg4121DzIRPiUJ2e1QCB879zYNLYSbHM2Pi4eaU
	 bLgxKtlevoaB+1B3QZsIJV2XkSoKSUx2R8ntn7vBCFUaNBT61ZESb7Ac9fak4Si4Oc
	 DxENXY9AGMdpa5S/9OHEjJ8BreLd8uUdc376DWQMUn/22QxhRejpm5HSApr4l7yyEq
	 VNrgKlHblkR6Q==
Date: Tue, 18 Jun 2024 10:15:42 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH 1/4] dt-bindings: display: simple-bridge: add ti,tdp158
Message-ID: <20240618-demonic-handsome-quokka-0c556c@houat>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>
 <y37rh2uulewie3mpumlznhmvrk4ileauhk6xkoafv4zt43q5wm@ftnpqit6alth>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ecwdjhoejl3hqyyr"
Content-Disposition: inline
In-Reply-To: <y37rh2uulewie3mpumlznhmvrk4ileauhk6xkoafv4zt43q5wm@ftnpqit6alth>


--ecwdjhoejl3hqyyr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 10:37:18PM GMT, Dmitry Baryshkov wrote:
> On Mon, Jun 17, 2024 at 06:02:59PM GMT, Marc Gonzalez wrote:
> > In default mode, this device works transparently.
> >=20
> > Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> > ---
> >  Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | =
4 ++++
> >  1 file changed, 4 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/bridge/simple-br=
idge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.=
yaml
> > index 43cf4df9811a5..5f0c9687538bf 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.ya=
ml
> > +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.ya=
ml
> > @@ -31,6 +31,7 @@ properties:
> >            - ti,opa362
> >            - ti,ths8134
> >            - ti,ths8135
> > +          - ti,tdp158
> > =20
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> > @@ -52,6 +53,9 @@ properties:
> >      maxItems: 1
> >      description: GPIO controlling bridge enable
> > =20
> > +  vcc-supply:
> > +    description: Power supply for the bridge
> > +
> >    vdd-supply:
> >      description: Power supply for the bridge
>=20
> I'd suggest having a separate _bindings_ file. This way you can point
> out that it's an I2C device sitting on the I2C bus. And once somebody
> has to extend the bindings to support 'smarter' programming of this chip
> they can edit just that file. It's still fine to use the simple-bridge
> driver for the device defined in that bindings file.

Yeah, we want a separate binding for that one, that, just like we
discussed in v1, can be extended to support the other setups this bridge
can be used for.

Maxime

--ecwdjhoejl3hqyyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZnFCLgAKCRDj7w1vZxhR
xXvrAQCSOV8D/KxDOTA/ca3Be29Qs+Kmhmsd+SnjHYTMwCRiHAEA9Nu1zVJ1aWk3
Q2XxMzZDOiBhGTYgYqLU2xfXWHbvhww=
=t+i/
-----END PGP SIGNATURE-----

--ecwdjhoejl3hqyyr--

