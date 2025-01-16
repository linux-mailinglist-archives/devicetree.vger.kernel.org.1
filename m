Return-Path: <devicetree+bounces-138949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C22A1358F
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29A3C3A53AF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 08:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321CD1D89F0;
	Thu, 16 Jan 2025 08:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuC6wbCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080AB1D88D7;
	Thu, 16 Jan 2025 08:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737016729; cv=none; b=JE56h/MIVPXtSWj7lE2ZFrgWQowNJtZV5jEuAzfcWG0f++7A71gRwC1NLbUS949aSjGd9aAhg8oqQSGBxl+WFMQdM4SMhViXYQOo1V7/ZrSFWnba4kiTEWqz9WVnNAAriEljdU0TA0oMzERRSXLnf1RB4pzcMBLaIwFKIvYcmtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737016729; c=relaxed/simple;
	bh=1BPT9f+lHZ0y0qnRrOLKHUEKCM0mtfelK2dM9lB4Isg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GE6+LvB4lxhJYupLhmYBVKPNithJjWkVW/k2nYPtfDcoNYXKuMOEtgQ5JUDVQLPQ8sp4rVqp2x/Fr+kpOv8PGXpobIjVv7e5CY1MsTP1kXRNqGeP1mgbnEcyAv/7XOrMBeh9e8uBD98BQZ75pbtEEIPwX2RZ2OHnA58CwRjVXOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuC6wbCJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5FB3C4CEDF;
	Thu, 16 Jan 2025 08:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737016728;
	bh=1BPT9f+lHZ0y0qnRrOLKHUEKCM0mtfelK2dM9lB4Isg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NuC6wbCJueZiFs27OlsG7T4SLfZwK3Jo/SkmeMVR8/AJTMshTXtWx3fcw5HR7ZSu1
	 Lmi9crqFXpP5qeXnjjscXX9+QnYUsP4gMKp6zFeDfCrP0LKhyqqumZ4GXbkWArvwuk
	 TRNlW9Pynj7HoW+NPe6gk2tJt0nh/dUfs/bBj2Mt1dQKJub/9QIyZ08/u8JwUCQhZQ
	 Ma8lL3S+AQTFTyt7qQcYkMTyg5szKm2KCVRB71UrgeZX3L1M8J8y658cxmO6TxUdF+
	 YrOEn70Lv22WTWhGKOPoYVwXYzEBZHPiB4k2NfdRdOU5IDYJ5yfuVadNfdPD3Jjj7w
	 laH0LXoESKPxQ==
Date: Thu, 16 Jan 2025 09:38:45 +0100
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
Message-ID: <20250116-archetypal-bulldog-of-expression-fcc937@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-4-herve.codina@bootlin.com>
 <20250114-juicy-authentic-mushroom-cfcdfb@houat>
 <20250114135456.5366eb2a@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="suovhgdrswmkdr5r"
Content-Disposition: inline
In-Reply-To: <20250114135456.5366eb2a@bootlin.com>


--suovhgdrswmkdr5r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

On Tue, Jan 14, 2025 at 01:54:56PM +0100, Herve Codina wrote:
> Hi Maxime,
>=20
> On Tue, 14 Jan 2025 08:40:51 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> ...
>=20
> > > =20
> > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> > > +{
> > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > +	struct drm_connector_state *connector_state;
> > > +	struct drm_modeset_acquire_ctx ctx;
> > > +	struct drm_connector *connector;
> > > +	int err;
> > > +
> > > +	/*
> > > +	 * Reset active outputs of the related CRTC.
> > > +	 *
> > > +	 * This way, drm core will reconfigure each components in the CRTC
> > > +	 * outputs path. In our case, this will force the previous componen=
t to
> > > +	 * go back in LP11 mode and so allow the reconfiguration of SN64DSI=
83
> > > +	 * bridge.
> > > +	 *
> > > +	 * Keep the lock during the whole operation to be atomic.
> > > +	 */
> > > +
> > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > +
> > > +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> > > +	if (IS_ERR(state)) {
> > > +		err =3D PTR_ERR(state);
> > > +		goto unlock;
> > > +	} =20
> >=20
> > No, you must not allocate a new state for this, you need to reuse the
> > existing state. You'll find it in bridge->base.state->state.
>=20
> Thanks for pointing that. I didn't know about bridge->base.state->state.
>=20
> I will use that if using the state is still relevant (see next comment).
>=20
> >=20
> > > +	state->acquire_ctx =3D &ctx;
> > > +
> > > +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> > > +							     sn65dsi83->bridge.encoder);
> > > +	if (!connector) {
> > > +		err =3D -EINVAL;
> > > +		goto unlock;
> > > +	}
> > > +
> > > +	connector_state =3D drm_atomic_get_connector_state(state, connector=
);
> > > +	if (IS_ERR(connector_state)) {
> > > +		err =3D PTR_ERR(connector_state);
> > > +		goto unlock;
> > > +	}
> > > +
> > > +	err =3D drm_atomic_helper_reset_pipe(connector_state->crtc, &ctx);
> > > +	if (err < 0)
> > > +		goto unlock; =20
> >=20
> > And you'll find the crtc in bridge->encoder->crtc.
>=20
> I am a bit confused. I looked at the drm_encoder structure [1] and the cr=
tc
> field available in this structure should not be used by atomic drivers. T=
hey
> should rely on &drm_connector_state.crtc.

You're right, it's deprecated but used by most bridges anyway.

I made a series of changes after reviewing your series to address some
issues with the current bridge API, most notably

https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-9a2fecd88=
6a6@kernel.org/

> In my case, I have the feeling that I should get the ctrc from the current
> state (i.e. bridge->base.state->state) using the sequence provided in this
> current patch:
>   Retrieve the connector with drm_atomic_get_old_connector_for_encoder()

Retrieving the old connector makes no sense though. It's the connector
that was formerly associated with your encoder. It might work, it might
not, it's not what you're looking for.

>   Retrieve the connector state with drm_atomic_get_connector_state()

drm_atomic_get_connector_state will allocate and pull the connector
state into the drm_atomic_state, even if it wasn't part of it before, so
it's not great. And you don't need it in the first place, you only need
the current active CRTC.

> but you pointed out the bridge->encoder->crtc field.
>
> Should I use this field or use the &drm_connector_state.crtc with the drm
> connector state retrieved from bridge->base.state->state using the propos=
ed
> sequence?

Having access to the connector isn't really easy either. Hopefully that
patch above should help there.

Maxime

--suovhgdrswmkdr5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ4jFlQAKCRAnX84Zoj2+
dh+FAX9hbjNlbBSgS+VtZs4BfPZE4ye7VgdH95pfSb6gLEriHG3ZDbvVKltuE8fb
2OeAxYABgIF5aRoqURKqKSvqdh1w6EuGgHjJLbtSnK+8FJnL5ohV55MDiivKz+BT
wAceAYXIdw==
=ELH7
-----END PGP SIGNATURE-----

--suovhgdrswmkdr5r--

