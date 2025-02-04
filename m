Return-Path: <devicetree+bounces-142992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B6DA2780E
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 18:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03ACC3A140A
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 17:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F6C12153E3;
	Tue,  4 Feb 2025 17:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hu44rliW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E52144DC;
	Tue,  4 Feb 2025 17:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738689064; cv=none; b=rYOMZVcoP0kbNM5O3IlkIFYVlVOJsnwMjbVbBQPuHlLLBa5LoVyoHWfpXEmvHUjtPMfJIrLcwima/3yQviKuqavBiDoXtCLmh2ebsmu2ZEzQa93Q/rWN7gADn4CxgAFZAAcjwOFXb/r1zn7Rw8q7Ubj2BFlaookpYuzwoTehbuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738689064; c=relaxed/simple;
	bh=j8nBnBK0YzkTPxOef8vbqJrD7jMe/NJ3VIVEj3v4b8U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WvsxQnTyO2gnZTxqcdJvEbWrWWdsJ0WwnCU4s6Tt279eqc7vTWcDA9zHordefUE3/k5H00nkbE9XjYWVliDWwdKSG8dt8Q36Ne/J5UA7cOY0lTba7TJqcW3k7CoEv7qQTuflX0JhY1k73KL9dKOOXX534gtA3hE3ab0jqFiZb6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hu44rliW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4386EC4CEDF;
	Tue,  4 Feb 2025 17:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738689063;
	bh=j8nBnBK0YzkTPxOef8vbqJrD7jMe/NJ3VIVEj3v4b8U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hu44rliWuJH5FbirzaMmHDxAeJALj9fTEVYUjjaJtUyIdNssqVpPKHVmfNL6y+pRs
	 QLsQEpVKSsXy05ZidoKtcW9DA6Rj3e0ynuNobIft6yOk7bu1FrHg9nIzt6wyrYfYMh
	 7shV1GyHhw7ihtxemy8FaDrGZw64qI6kh2OmTZ1UKKD6lKiuWKOVG3pSiGy7aHbk3y
	 l+PnaP76I6sRLWoXdv6m1TXk+eOEFc3MmMdyiyReT34AAFe+9ILLBGX/RxZowOC58c
	 N5gc2dHJSyMzg55jml+17yoogn1lWY9LtF6WpYZmBXYeat4FFZ6WcyeVtCb/MInVzr
	 tr9+KrTVtRQqQ==
Date: Tue, 4 Feb 2025 18:11:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20250204-crouching-alligator-of-success-ab52f8@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-4-herve.codina@bootlin.com>
 <20250114-juicy-authentic-mushroom-cfcdfb@houat>
 <20250114135456.5366eb2a@bootlin.com>
 <20250116-archetypal-bulldog-of-expression-fcc937@houat>
 <20250117091213.647bf0e6@bootlin.com>
 <20250204-chocolate-lionfish-of-luck-10ebb8@houat>
 <20250204163404.0a6b6526@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="47yeuap5jfflsyvy"
Content-Disposition: inline
In-Reply-To: <20250204163404.0a6b6526@bootlin.com>


--47yeuap5jfflsyvy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

On Tue, Feb 04, 2025 at 04:34:04PM +0100, Herve Codina wrote:
> On Tue, 4 Feb 2025 16:17:10 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > Hi,
> >=20
> > On Fri, Jan 17, 2025 at 09:12:13AM +0100, Herve Codina wrote:
> > > Hi Maxime,
> > >=20
> > > On Thu, 16 Jan 2025 09:38:45 +0100
> > > Maxime Ripard <mripard@kernel.org> wrote:
> > >  =20
> > > > On Tue, Jan 14, 2025 at 01:54:56PM +0100, Herve Codina wrote: =20
> > > > > Hi Maxime,
> > > > >=20
> > > > > On Tue, 14 Jan 2025 08:40:51 +0100
> > > > > Maxime Ripard <mripard@kernel.org> wrote:
> > > > >=20
> > > > > ...
> > > > >    =20
> > > > > > > =20
> > > > > > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> > > > > > > +{
> > > > > > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > > > > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > > > > > +	struct drm_connector_state *connector_state;
> > > > > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > > > > +	struct drm_connector *connector;
> > > > > > > +	int err;
> > > > > > > +
> > > > > > > +	/*
> > > > > > > +	 * Reset active outputs of the related CRTC.
> > > > > > > +	 *
> > > > > > > +	 * This way, drm core will reconfigure each components in t=
he CRTC
> > > > > > > +	 * outputs path. In our case, this will force the previous =
component to
> > > > > > > +	 * go back in LP11 mode and so allow the reconfiguration of=
 SN64DSI83
> > > > > > > +	 * bridge.
> > > > > > > +	 *
> > > > > > > +	 * Keep the lock during the whole operation to be atomic.
> > > > > > > +	 */
> > > > > > > +
> > > > > > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > > > > > +
> > > > > > > +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> > > > > > > +	if (IS_ERR(state)) {
> > > > > > > +		err =3D PTR_ERR(state);
> > > > > > > +		goto unlock;
> > > > > > > +	}     =20
> > > > > >=20
> > > > > > No, you must not allocate a new state for this, you need to reu=
se the
> > > > > > existing state. You'll find it in bridge->base.state->state.   =
=20
> > > > >=20
> > > > > Thanks for pointing that. I didn't know about bridge->base.state-=
>state.
> > > > >=20
> > > > > I will use that if using the state is still relevant (see next co=
mment).
> > > > >    =20
> > > > > >    =20
> > > > > > > +	state->acquire_ctx =3D &ctx;
> > > > > > > +
> > > > > > > +	connector =3D drm_atomic_get_old_connector_for_encoder(stat=
e,
> > > > > > > +							     sn65dsi83->bridge.encoder);
> > > > > > > +	if (!connector) {
> > > > > > > +		err =3D -EINVAL;
> > > > > > > +		goto unlock;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	connector_state =3D drm_atomic_get_connector_state(state, c=
onnector);
> > > > > > > +	if (IS_ERR(connector_state)) {
> > > > > > > +		err =3D PTR_ERR(connector_state);
> > > > > > > +		goto unlock;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	err =3D drm_atomic_helper_reset_pipe(connector_state->crtc,=
 &ctx);
> > > > > > > +	if (err < 0)
> > > > > > > +		goto unlock;     =20
> > > > > >=20
> > > > > > And you'll find the crtc in bridge->encoder->crtc.   =20
> > > > >=20
> > > > > I am a bit confused. I looked at the drm_encoder structure [1] an=
d the crtc
> > > > > field available in this structure should not be used by atomic dr=
ivers. They
> > > > > should rely on &drm_connector_state.crtc.   =20
> > > >=20
> > > > You're right, it's deprecated but used by most bridges anyway.
> > > >=20
> > > > I made a series of changes after reviewing your series to address s=
ome
> > > > issues with the current bridge API, most notably
> > > >=20
> > > > https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-9=
a2fecd886a6@kernel.org/ =20
> > >=20
> > > Thanks for pointing that, indeed, it clarify many things!
> > >  =20
> > > >  =20
> > > > > In my case, I have the feeling that I should get the ctrc from th=
e current
> > > > > state (i.e. bridge->base.state->state) using the sequence provide=
d in this
> > > > > current patch:
> > > > >   Retrieve the connector with drm_atomic_get_old_connector_for_en=
coder()   =20
> > > >=20
> > > > Retrieving the old connector makes no sense though. It's the connec=
tor
> > > > that was formerly associated with your encoder. It might work, it m=
ight
> > > > not, it's not what you're looking for.
> > > >  =20
> > > > >   Retrieve the connector state with drm_atomic_get_connector_stat=
e()   =20
> > > >=20
> > > > drm_atomic_get_connector_state will allocate and pull the connector
> > > > state into the drm_atomic_state, even if it wasn't part of it befor=
e, so
> > > > it's not great. And you don't need it in the first place, you only =
need
> > > > the current active CRTC. =20
> > >=20
> > > Yes, I agree with that, I only need the active CRTC.
> > >=20
> > > I tried to get the current atomic_state from:
> > >   1) bridge->base.state->state
> > >   2) drm_bridge_state->base.state
> > >=20
> > > In both cases, it is NULL. Looking at Sima's reply in your series
> > > explained that:
> > >   https://lore.kernel.org/dri-devel/Z4juJy7kKPbI2BDb@phenom.ffwll.loc=
al/
> > >=20
> > > If I understood correctly those pointers are explicitly cleared.
> > >=20
> > > So, with all of that, either:
> > >   a) I wait for your series to be applied in order to use your the cr=
tc field from
> > >      drm_bridge_state added by:
> > >        https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1=
-25-9a2fecd886a6@kernel.org/#t
> > >   b) I use the old school bridge->encoder->crtc for the moment
> > >=20
> > > Do you mind if I use the bridge->encoder->crtc way for the next itera=
tion of
> > > my series? =20
> >=20
> > Yeah, it makes sense.
>=20
> I already send a wrong v4 (sorry) and a correct v5 with modifications in
> this way :)
>=20
> >=20
> > Still, it would be great if you could test my series on your setup and =
see if it helps :)
>=20
> Of course, I can test updated version of your series.
>=20
> I already try to get the current atomic_state exactly the same way as you=
 do
> in your series and the pointer is NULL in my case.

I sent a second version today, let me know if it works.

Maxime

--47yeuap5jfflsyvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ6JKJAAKCRAnX84Zoj2+
dlduAYDGdElqziyGD1EYwKUBbyUiUwak4pS//61mf1+oH5R5d1/vM2nxCH3Qeq4t
oXh81xIBfi+mPBGMBa70pE9wG5O3JBEnts9Fll49h0ii0CMGPfAx8LNJ/y4yGIK0
LM+uvDmuQQ==
=w+tk
-----END PGP SIGNATURE-----

--47yeuap5jfflsyvy--

