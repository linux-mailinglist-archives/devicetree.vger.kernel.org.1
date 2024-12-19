Return-Path: <devicetree+bounces-132695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5D79F7CBA
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 272F41883FA0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2178C2236E4;
	Thu, 19 Dec 2024 14:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCfcxvSc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE7922075;
	Thu, 19 Dec 2024 14:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734616903; cv=none; b=PCoW5sSmuYS9XTyCJsBEzbQlKCQOhYH03dp+ZCMiNRZ60HfcAJjhqSup57aVCj44zh/xbc8JY18AJ0vUo0Jtx9j1wOzmofOcWyaIbfAsnvlFKkrjU7LNOPM9QcQ/Ge9T0PiinVjWfiRwljnFb73S3tEhz3kwyLV1DlCMvCnboEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734616903; c=relaxed/simple;
	bh=Nrq02CAbbdBsL8TUHwb86wYaSnEy6WOUWiSRoJhk7F4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rGAGh3qO9emoYLYOkcprQBbcEzycNUt60nS4wNxjZZy+WD1eAWHvtqfJgP5daG6n/Ft1bH/ayiEfhXlkxpH1MnvfFrquqPfC+K3Rn7h0rUYOukkhAz2/TEWzIxYj3xS2Xvb4wFvONrDQSi/IMhEmdvejF/zNrYO8NeFAQVnNY20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCfcxvSc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06E8CC4CECE;
	Thu, 19 Dec 2024 14:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734616902;
	bh=Nrq02CAbbdBsL8TUHwb86wYaSnEy6WOUWiSRoJhk7F4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LCfcxvScirIwG1+LGAYH/edwedVjWvDw5ZI2R9rFbsClfvfAYAc5q/Cz4tvOMQeQj
	 xZFHBWTFfcOt20mASaZbmDr4DiczpsX4FMw91TZhhPAmORgWVF2yrTeveziZKveYLR
	 4YcobpYw1BAwlXgyX9Z58h10l2ByC0KsxY+XyVfExlXT8fRjif95otYQvIq4ueEmmH
	 ZXHjHRdfqGUGyYOKEjSMN/+qtYNW9M5jpuFo2yCY9pR4aL9IzW5jHQvE8Oxwy4fRC1
	 uoVb5Be7i8ZKQxj8Ng2MABucyvwk+tDysKXX72GE/1sVfamLgG4EMZ2Y5QpvNK9rta
	 PO9H6vGOeBAcQ==
Date: Thu, 19 Dec 2024 15:01:39 +0100
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
Subject: Re: [PATCH v2 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20241219-unnatural-terrestrial-aardwark-d1da17@houat>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
 <20241217143216.658461-4-herve.codina@bootlin.com>
 <20241217-tangible-nostalgic-salamander-27edaa@houat>
 <20241218092407.559a204e@bootlin.com>
 <20241218-armored-fearless-dugong-ccd72d@houat>
 <20241218173728.5a7690fe@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="wqbfserzziogdngv"
Content-Disposition: inline
In-Reply-To: <20241218173728.5a7690fe@bootlin.com>


--wqbfserzziogdngv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

On Wed, Dec 18, 2024 at 05:37:28PM +0100, Herve Codina wrote:
> Hi Maxime,
>=20
> On Wed, 18 Dec 2024 16:54:02 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > > > > +static int sn65dsi83_reset_drm_output(struct sn65dsi83 *sn65dsi8=
3)
> > > > > +{
> > > > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > > +	struct drm_connector *connector;
> > > > > +	int err;
> > > > > +
> > > > > +	/*
> > > > > +	 * Reset components available from the encoder to the connector.
> > > > > +	 * To do that, we disable then re-enable the connector linked t=
o the
> > > > > +	 * encoder.
> > > > > +	 *
> > > > > +	 * This way, drm core will reconfigure each components. In our =
case,
> > > > > +	 * this will force the previous component to go back in LP11 mo=
de and
> > > > > +	 * so allow the reconfiguration of SN64DSI83 bridge.
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
> > > > > +	}
> > > > > +
> > > > > +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> > > > > +							     sn65dsi83->bridge.encoder);
> > > > > +	if (!connector) {
> > > > > +		err =3D -EINVAL;
> > > > > +		goto unlock;
> > > > > +	}
> > > > > +
> > > > > +	err =3D drm_atomic_helper_disable_connector(connector, &ctx);
> > > > > +	if (err < 0)
> > > > > +		goto unlock;
> > > > > +
> > > > > +	/* Restore original state to re-enable the connector */
> > > > > +	err =3D drm_atomic_helper_commit_duplicated_state(state, &ctx);
> > > > > +
> > > > > +unlock:
> > > > > +	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
> > > > > +	if (!IS_ERR(state))
> > > > > +		drm_atomic_state_put(state);
> > > > > +	return err;
> > > > > +}   =20
> > > >=20
> > > > In the previous version, we advised to create a generic helper simi=
lar
> > > > to vc4 and i915 reset_pipe() and and intel_modeset_commit_pipes().
> > > >=20
> > > > It looks like you chose a different path. Can you expand why?
> > > >  =20
> > >=20
> > > I didn't choose a different path.
> > > I created the drm_atomic_helper_disable_connector(). Maybe it is not =
enough. =20
> >=20
> > It's not that it's not enough, it's that you're not doing the same
> > thing, see below.
> >=20
> > > I can move (copy/paste) sn65dsi83_reset_drm_output() to a new helper:
> > >   int drm_atomic_helper_disable_output(struct drm_encoder *encoder)
> > >=20
> > > Is it what you expect?
> > >=20
> > > Also, are operations done in current sn65dsi83_reset_drm_output() cor=
rect
> > > in order to reset the output? It works on my system but what is your
> > > feedback on operations performed. =20
> >=20
> > You don't need any of that. Both the reset_pipe() and
> > intel_modeset_commit_pipes() functions will flag the connectors as
> > updated in the commit, and the core will consider that it needs to
> > disable / enable the encoders and bridges below that CRTC.
> >=20
> > See
> > https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_ato=
mic_helper.c#L1155
> > https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_ato=
mic_helper.c#L1476
> >=20
> > So you really only need to convert any of these two functions into a
> > helper, and it does exactly what you need.
> >=20
>=20
> I see but if I set crtc_state->connectors_changed =3D true; as it is done=
 in
> reset_pipe(), in my understanding, all outputs will be reset.

Not all outputs, all active outputs connected to that CRTC. If you have
only one encoder connected to that CRTC, which is pretty typical on ARM
platforms, it's equivalent to what you're asking for.

And we should probably shut down the CRTC (and thus all active outputs)
anyway. Some encoders and bridges have internal FIFOs/state machines
that need to be enabled disabled at specific points during the
initialization, and the CRTC is a part of that.

Maxime

--wqbfserzziogdngv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ2QnPwAKCRAnX84Zoj2+
dhQRAX96rJE3Z+88ZnNThKCvbh7HriizVVkNpZUs4Jh3ybblvbtzP3mHXLUb3e5t
ZGzoy34BgIcUCv0mef4ILYuKLpIJgWuzZplWCQ4b7ik6rZpLGWCUNqwyDP9CGTx7
W162C2cedQ==
=jBMP
-----END PGP SIGNATURE-----

--wqbfserzziogdngv--

