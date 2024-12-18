Return-Path: <devicetree+bounces-132340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFB79F6A81
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1907316A25C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B54E1E9B09;
	Wed, 18 Dec 2024 15:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXo1f2iq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39BC1A00FE;
	Wed, 18 Dec 2024 15:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734537246; cv=none; b=CgWvx3dn42mjoCvr6icMsEy9DfhyoToV4DnS/qKjGYLZe6JBwwFv5A2AlxuAtV+AdBc8ddu0lTQ8K1cf1KTfu/FKUJBREvjixhvU1gqSC0lfKXGdtRo68qIRs+3yatCGeRSrfBZXP82OIjlyd2CENgCTyMsqs7A66q1Qxy6UKho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734537246; c=relaxed/simple;
	bh=5YRPEVxJS9U0s0oj9OnvQkHR6NXHdFm12ULjyIeWuJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5Ao+Q+qfi82fYgxj6ex5H8oTSMENale81BTDIYqFiZ+xVCN9mexHz+Ic857ZWTdFIMpDiW7WWMdhp4Y2zbPGE2erUDrUpG5DzdGfRunj6kCDWnXUvva/r63ttHDUIlUe+88Z5wTVPp/8Oxq2ieRxJG7bJ2o0h4JHkGWbyuvP9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXo1f2iq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED23C4CECD;
	Wed, 18 Dec 2024 15:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734537245;
	bh=5YRPEVxJS9U0s0oj9OnvQkHR6NXHdFm12ULjyIeWuJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DXo1f2iqYj9c+pwT0dnF6EvIhaNXfwhZbPwWQVvhr4Kqp58jwwQlMeo0yyg4cg1j+
	 zl9R6Ow2FtH/GrG9UeIFVpvC0K934D0VbkHMNSL7GIc8/DAXshm8MhhOvaMGUJ3izL
	 +jZRSoKfXYIfrJE4seEUX4lZrWl5E6GgFQ/WnunQQbmcaB8YhEC+DgEGcGx13qQpra
	 Ptyee5LGCmRh53HQyxRmsqOnsY90hcge/BUKSQtsp7p6V84pbgvqh3DuNRQV5meOsm
	 C+HMDMWa2lOV7nKFx2EYm9JWraveioPzYf/950Jnnvm1jQoO5UX7+Qwn8pe8opoPvN
	 0XNLhvT2HD62w==
Date: Wed, 18 Dec 2024 16:54:02 +0100
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
Message-ID: <20241218-armored-fearless-dugong-ccd72d@houat>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
 <20241217143216.658461-4-herve.codina@bootlin.com>
 <20241217-tangible-nostalgic-salamander-27edaa@houat>
 <20241218092407.559a204e@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="6gbi6thti7bolne2"
Content-Disposition: inline
In-Reply-To: <20241218092407.559a204e@bootlin.com>


--6gbi6thti7bolne2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

On Wed, Dec 18, 2024 at 09:24:07AM +0100, Herve Codina wrote:
> Hi Maxime,
>=20
> On Tue, 17 Dec 2024 18:30:52 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > On Tue, Dec 17, 2024 at 03:32:15PM +0100, Herve Codina wrote:
> > > In some cases observed during ESD tests, the TI SN65DSI83 cannot reco=
ver
> > > from errors by itself. A full restart of the bridge is needed in those
> > > cases to have the bridge output LVDS signals again.
> > >=20
> > > Also, during tests, cases were observed where reading the status of t=
he
> > > bridge was not even possible. Indeed, in those cases, the bridge stops
> > > to acknowledge I2C transactions. Only a full reset of the bridge (pow=
er
> > > off/on) brings back the bridge to a functional state.
> > >=20
> > > The TI SN65DSI83 has some error detection capabilities. Introduce an
> > > error recovery mechanism based on this detection.
> > >=20
> > > The errors detected are signaled through an interrupt. On system where
> > > this interrupt is not available, the driver uses a polling monitoring
> > > fallback to check for errors. When an error is present or when reading
> > > the bridge status leads to an I2C failure, the recovery process is
> > > launched.
> > >=20
> > > Restarting the bridge needs to redo the initialization sequence. This
> > > initialization sequence has to be done with the DSI data lanes driven=
 in
> > > LP11 state. In order to do that, the recovery process resets the whole
> > > output path (i.e the path from the encoder to the connector) where the
> > > bridge is located.
> > >=20
> > > Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> > > ---
> > >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 142 ++++++++++++++++++++++++=
++
> > >  1 file changed, 142 insertions(+)
> > >=20
> > > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/=
bridge/ti-sn65dsi83.c
> > > index e6264514bb3f..f3d66d17f28c 100644
> > > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > @@ -35,9 +35,12 @@
> > >  #include <linux/of_graph.h>
> > >  #include <linux/regmap.h>
> > >  #include <linux/regulator/consumer.h>
> > > +#include <linux/timer.h>
> > > +#include <linux/workqueue.h>
> > > =20
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_bridge.h>
> > > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() need drm_dr=
v_uses_atomic_modeset() */
> > >  #include <drm/drm_mipi_dsi.h>
> > >  #include <drm/drm_of.h>
> > >  #include <drm/drm_panel.h>
> > > @@ -147,6 +150,9 @@ struct sn65dsi83 {
> > >  	struct regulator		*vcc;
> > >  	bool				lvds_dual_link;
> > >  	bool				lvds_dual_link_even_odd_swap;
> > > +	bool				use_irq;
> > > +	struct delayed_work		monitor_work;
> > > +	struct work_struct		reset_work;
> > >  };
> > > =20
> > >  static const struct regmap_range sn65dsi83_readable_ranges[] =3D {
> > > @@ -328,6 +334,106 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi8=
3 *ctx)
> > >  	return dsi_div - 1;
> > >  }
> > > =20
> > > +static int sn65dsi83_reset_drm_output(struct sn65dsi83 *sn65dsi83)
> > > +{
> > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > +	struct drm_modeset_acquire_ctx ctx;
> > > +	struct drm_connector *connector;
> > > +	int err;
> > > +
> > > +	/*
> > > +	 * Reset components available from the encoder to the connector.
> > > +	 * To do that, we disable then re-enable the connector linked to the
> > > +	 * encoder.
> > > +	 *
> > > +	 * This way, drm core will reconfigure each components. In our case,
> > > +	 * this will force the previous component to go back in LP11 mode a=
nd
> > > +	 * so allow the reconfiguration of SN64DSI83 bridge.
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
> > > +	}
> > > +
> > > +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> > > +							     sn65dsi83->bridge.encoder);
> > > +	if (!connector) {
> > > +		err =3D -EINVAL;
> > > +		goto unlock;
> > > +	}
> > > +
> > > +	err =3D drm_atomic_helper_disable_connector(connector, &ctx);
> > > +	if (err < 0)
> > > +		goto unlock;
> > > +
> > > +	/* Restore original state to re-enable the connector */
> > > +	err =3D drm_atomic_helper_commit_duplicated_state(state, &ctx);
> > > +
> > > +unlock:
> > > +	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
> > > +	if (!IS_ERR(state))
> > > +		drm_atomic_state_put(state);
> > > +	return err;
> > > +} =20
> >=20
> > In the previous version, we advised to create a generic helper similar
> > to vc4 and i915 reset_pipe() and and intel_modeset_commit_pipes().
> >=20
> > It looks like you chose a different path. Can you expand why?
> >=20
>=20
> I didn't choose a different path.
> I created the drm_atomic_helper_disable_connector(). Maybe it is not enou=
gh.

It's not that it's not enough, it's that you're not doing the same
thing, see below.

> I can move (copy/paste) sn65dsi83_reset_drm_output() to a new helper:
>   int drm_atomic_helper_disable_output(struct drm_encoder *encoder)
>=20
> Is it what you expect?
>=20
> Also, are operations done in current sn65dsi83_reset_drm_output() correct
> in order to reset the output? It works on my system but what is your
> feedback on operations performed.

You don't need any of that. Both the reset_pipe() and
intel_modeset_commit_pipes() functions will flag the connectors as
updated in the commit, and the core will consider that it needs to
disable / enable the encoders and bridges below that CRTC.

See
https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_atomic_=
helper.c#L1155
https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_atomic_=
helper.c#L1476

So you really only need to convert any of these two functions into a
helper, and it does exactly what you need.

Maxime

--6gbi6thti7bolne2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ2LwFQAKCRAnX84Zoj2+
dhH0AYDvzfnqNjFm2FE+Lf0+hucUtzhK763cWw2kAwNaPMg4lSAVbx5uC5gugesL
vvkyN1MBf08yZhHsNGSc8lLneEOk6UODatcto3VCe6NCkt3LiW8uDZ0ggfRJs0N1
MvTAD2hJrg==
=OIii
-----END PGP SIGNATURE-----

--6gbi6thti7bolne2--

