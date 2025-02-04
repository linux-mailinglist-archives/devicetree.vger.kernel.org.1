Return-Path: <devicetree+bounces-142946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5857A2758E
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 16:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D5603A6512
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 15:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7EE2144CD;
	Tue,  4 Feb 2025 15:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jrp2BY3T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F729214228;
	Tue,  4 Feb 2025 15:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738682233; cv=none; b=r4+O3Rn6cB5C83pIRWY88JRaGbpmydTPNJvubrEPRVVjqPNcKpUYxyerykfZouAYyfU/e6n3ASmeS0J7sfQxUGQaK5s7QBvDvmb30VoK7SD1D7ephMngSSNKgewRcZxACOZg/dlw5cpdiKeG42uSdLEZdxoC+lc/gQpQ5Vs89Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738682233; c=relaxed/simple;
	bh=8dxSqhdGv1jObMZqZKWAH4y86KPxvtCDFwx+3u4Cv+I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ulCeKIW8KgeKqVkmQ7aUuDwLj9OGLir88g5oKvUP5KhVvjQ8zSIIfzqo9+Rf2Egi+TWr0Su9X9qgXDJPN0OQzL7DHHSUzLIRXZQwYSfcKq5SDk4H3AgsONdTkOhs4EJWlC6YVHrJ6dWjz7LlTPIPsJyIYP040F6NHd/bbyym8sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jrp2BY3T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A249C4CEE4;
	Tue,  4 Feb 2025 15:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738682232;
	bh=8dxSqhdGv1jObMZqZKWAH4y86KPxvtCDFwx+3u4Cv+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jrp2BY3TKgFArcO5hLjXV0PcmsjE9bxD2UUFM45laY+uE2rE7AB0+DNR2Za2xVlZ3
	 rwcuyuQvAGH9/jqGIVG/DuX5D0zLkQriSGV8A7sC0/VkIOBggBayWx/QoDGzqYplqL
	 Vb+Xs9cBgwp0PX00nCz9+sgWQGOAS7Eu/GTbsmVdywEprqfRneN52q/D2aCuUY3RbV
	 umYP+rU1XfrqAyvLA18q7LKsarzv0axEkrT40J0xInoBcyHzTVVYDDSDXXXZ8pDwfS
	 L6reO5OTbdSip/WHYi8UObJZ/n1ChaK+1QGTDvDBJVUt5I+Gq476a8LJppwt13rYwo
	 F0y/v94HTmQWQ==
Date: Tue, 4 Feb 2025 16:17:10 +0100
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
Message-ID: <20250204-chocolate-lionfish-of-luck-10ebb8@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-4-herve.codina@bootlin.com>
 <20250114-juicy-authentic-mushroom-cfcdfb@houat>
 <20250114135456.5366eb2a@bootlin.com>
 <20250116-archetypal-bulldog-of-expression-fcc937@houat>
 <20250117091213.647bf0e6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="5dgjstsqjg35osul"
Content-Disposition: inline
In-Reply-To: <20250117091213.647bf0e6@bootlin.com>


--5dgjstsqjg35osul
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

Hi,

On Fri, Jan 17, 2025 at 09:12:13AM +0100, Herve Codina wrote:
> Hi Maxime,
>=20
> On Thu, 16 Jan 2025 09:38:45 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > On Tue, Jan 14, 2025 at 01:54:56PM +0100, Herve Codina wrote:
> > > Hi Maxime,
> > >=20
> > > On Tue, 14 Jan 2025 08:40:51 +0100
> > > Maxime Ripard <mripard@kernel.org> wrote:
> > >=20
> > > ...
> > >  =20
> > > > > =20
> > > > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> > > > > +{
> > > > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > > > +	struct drm_connector_state *connector_state;
> > > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > > +	struct drm_connector *connector;
> > > > > +	int err;
> > > > > +
> > > > > +	/*
> > > > > +	 * Reset active outputs of the related CRTC.
> > > > > +	 *
> > > > > +	 * This way, drm core will reconfigure each components in the C=
RTC
> > > > > +	 * outputs path. In our case, this will force the previous comp=
onent to
> > > > > +	 * go back in LP11 mode and so allow the reconfiguration of SN6=
4DSI83
> > > > > +	 * bridge.
> > > > > +	 *
> > > > > +	 * Keep the lock during the whole operation to be atomic.
> > > > > +	 */
> > > > > +
> > > > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > > > +
> > > > > +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> > > > > +	if (IS_ERR(state)) {
> > > > > +		err =3D PTR_ERR(state);
> > > > > +		goto unlock;
> > > > > +	}   =20
> > > >=20
> > > > No, you must not allocate a new state for this, you need to reuse t=
he
> > > > existing state. You'll find it in bridge->base.state->state. =20
> > >=20
> > > Thanks for pointing that. I didn't know about bridge->base.state->sta=
te.
> > >=20
> > > I will use that if using the state is still relevant (see next commen=
t).
> > >  =20
> > > >  =20
> > > > > +	state->acquire_ctx =3D &ctx;
> > > > > +
> > > > > +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> > > > > +							     sn65dsi83->bridge.encoder);
> > > > > +	if (!connector) {
> > > > > +		err =3D -EINVAL;
> > > > > +		goto unlock;
> > > > > +	}
> > > > > +
> > > > > +	connector_state =3D drm_atomic_get_connector_state(state, conne=
ctor);
> > > > > +	if (IS_ERR(connector_state)) {
> > > > > +		err =3D PTR_ERR(connector_state);
> > > > > +		goto unlock;
> > > > > +	}
> > > > > +
> > > > > +	err =3D drm_atomic_helper_reset_pipe(connector_state->crtc, &ct=
x);
> > > > > +	if (err < 0)
> > > > > +		goto unlock;   =20
> > > >=20
> > > > And you'll find the crtc in bridge->encoder->crtc. =20
> > >=20
> > > I am a bit confused. I looked at the drm_encoder structure [1] and th=
e crtc
> > > field available in this structure should not be used by atomic driver=
s. They
> > > should rely on &drm_connector_state.crtc. =20
> >=20
> > You're right, it's deprecated but used by most bridges anyway.
> >=20
> > I made a series of changes after reviewing your series to address some
> > issues with the current bridge API, most notably
> >=20
> > https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-9a2fe=
cd886a6@kernel.org/
>=20
> Thanks for pointing that, indeed, it clarify many things!
>=20
> >=20
> > > In my case, I have the feeling that I should get the ctrc from the cu=
rrent
> > > state (i.e. bridge->base.state->state) using the sequence provided in=
 this
> > > current patch:
> > >   Retrieve the connector with drm_atomic_get_old_connector_for_encode=
r() =20
> >=20
> > Retrieving the old connector makes no sense though. It's the connector
> > that was formerly associated with your encoder. It might work, it might
> > not, it's not what you're looking for.
> >=20
> > >   Retrieve the connector state with drm_atomic_get_connector_state() =
=20
> >=20
> > drm_atomic_get_connector_state will allocate and pull the connector
> > state into the drm_atomic_state, even if it wasn't part of it before, so
> > it's not great. And you don't need it in the first place, you only need
> > the current active CRTC.
>=20
> Yes, I agree with that, I only need the active CRTC.
>=20
> I tried to get the current atomic_state from:
>   1) bridge->base.state->state
>   2) drm_bridge_state->base.state
>=20
> In both cases, it is NULL. Looking at Sima's reply in your series
> explained that:
>   https://lore.kernel.org/dri-devel/Z4juJy7kKPbI2BDb@phenom.ffwll.local/
>=20
> If I understood correctly those pointers are explicitly cleared.
>=20
> So, with all of that, either:
>   a) I wait for your series to be applied in order to use your the crtc f=
ield from
>      drm_bridge_state added by:
>        https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-=
9a2fecd886a6@kernel.org/#t
>   b) I use the old school bridge->encoder->crtc for the moment
>=20
> Do you mind if I use the bridge->encoder->crtc way for the next iteration=
 of
> my series?

Yeah, it makes sense.

Still, it would be great if you could test my series on your setup and see =
if it helps :)

Maxime

--5dgjstsqjg35osul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ6IvdQAKCRAnX84Zoj2+
dhSnAX49ruA8shYuYtyWizI8d6OWPbGVqN7EVpywtSHT76p7DCa5TJI8oaIOEcz7
DNxOQPgBf1X+4gfZabxbdrPYmgIM/B74ee9rJtAd55RdX1jITrfwyFpUk5ca88vr
wK9f74O2kw==
=bmdb
-----END PGP SIGNATURE-----

--5dgjstsqjg35osul--

