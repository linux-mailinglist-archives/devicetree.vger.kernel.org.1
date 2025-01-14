Return-Path: <devicetree+bounces-138359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE66A10176
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4EF5168483
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1071A24633B;
	Tue, 14 Jan 2025 07:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqvR9/uV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BDE24632A;
	Tue, 14 Jan 2025 07:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840454; cv=none; b=ujthI/hFMB+GnUKL5UPeT0hQ12+eiDdK8rmyBq/g7/V38ViTNXav30i23dlI7o3lYCZkDSsFAGVV2dCS/X9JrjXjHIk2TW1BmeVv7Wuxfoj46M/xhzljrcmNq61mNU7o8B/cUHMtllbmxEnWWNZiRyjxQQbdfQ3CaxgcbLsIXoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840454; c=relaxed/simple;
	bh=LLPKuTCDCaG430j7asYA01mq24xq0uPjsDMTeUeRKLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=baoO7W6fRood+c/hpSExXwf4tdZ97g5sB5cs8H0uS5Xv65PhwxutaJhQr0MgKCZrd4X0iIrz54O9J01uI2JPUQ0OI3Kj19fncmisNNEwVC5nt0hXASEw4wqEa+bEsFtV9tr766a1lG+qSCAyoAgKW+299yDOP2YsaFR+pX/5tws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqvR9/uV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF7B3C4CEDD;
	Tue, 14 Jan 2025 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736840454;
	bh=LLPKuTCDCaG430j7asYA01mq24xq0uPjsDMTeUeRKLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TqvR9/uV6knMuWuQjaPiH4XlPj+2OwDOBA6mYku8GJNR6oSCB2DU8pZO5f3gqz5AU
	 IM3TaJxVNo4zjMO3Xte9Jy6GkyEu06ciC8cIqlQrlxrKHQAefm6HCYJLJLol7y2k5y
	 2/xxbKajQ745pxkjxIgEn6lKCJZ27e8GS6d+YaJNOtusgTfRXbtHStc+DHm1KHLsXH
	 /cnnkWyb9tnbFRKZpZ495O13msVXfTKMOTWJkD0h8EECwkcnEnQzUfF6gzG+wXO6eo
	 kjEalhcD6Ijj4RLAVZ3o585Pr+E3ZJSLqZsC5jZiQoD47mzcyAQWjhX4BkamXFp25K
	 TitI+y2GKMfqA==
Date: Tue, 14 Jan 2025 08:40:51 +0100
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
Message-ID: <20250114-juicy-authentic-mushroom-cfcdfb@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-4-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="cgjmmrxqn5gcqlso"
Content-Disposition: inline
In-Reply-To: <20250108101907.410456-4-herve.codina@bootlin.com>


--cgjmmrxqn5gcqlso
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

On Wed, Jan 08, 2025 at 11:19:02AM +0100, Herve Codina wrote:
> In some cases observed during ESD tests, the TI SN65DSI83 cannot recover
> from errors by itself. A full restart of the bridge is needed in those
> cases to have the bridge output LVDS signals again.
>=20
> Also, during tests, cases were observed where reading the status of the
> bridge was not even possible. Indeed, in those cases, the bridge stops
> to acknowledge I2C transactions. Only a full reset of the bridge (power
> off/on) brings back the bridge to a functional state.
>=20
> The TI SN65DSI83 has some error detection capabilities. Introduce an
> error recovery mechanism based on this detection.
>=20
> The errors detected are signaled through an interrupt. On system where
> this interrupt is not available, the driver uses a polling monitoring
> fallback to check for errors. When an error is present or when reading
> the bridge status leads to an I2C failure, the recovery process is
> launched.
>=20
> Restarting the bridge needs to redo the initialization sequence. This
> initialization sequence has to be done with the DSI data lanes driven in
> LP11 state. In order to do that, the recovery process resets the whole
> output path (i.e the path from the encoder to the connector) where the
> bridge is located.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 147 ++++++++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/brid=
ge/ti-sn65dsi83.c
> index e6264514bb3f..74bc05647436 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -35,9 +35,12 @@
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/timer.h>
> +#include <linux/workqueue.h>
> =20
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_drv_u=
ses_atomic_modeset() */
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
> @@ -147,6 +150,9 @@ struct sn65dsi83 {
>  	struct regulator		*vcc;
>  	bool				lvds_dual_link;
>  	bool				lvds_dual_link_even_odd_swap;
> +	bool				use_irq;
> +	struct delayed_work		monitor_work;
> +	struct work_struct		reset_work;
>  };
> =20
>  static const struct regmap_range sn65dsi83_readable_ranges[] =3D {
> @@ -328,6 +334,111 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi83 *c=
tx)
>  	return dsi_div - 1;
>  }
> =20
> +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> +{
> +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> +	struct drm_connector_state *connector_state;
> +	struct drm_modeset_acquire_ctx ctx;
> +	struct drm_connector *connector;
> +	int err;
> +
> +	/*
> +	 * Reset active outputs of the related CRTC.
> +	 *
> +	 * This way, drm core will reconfigure each components in the CRTC
> +	 * outputs path. In our case, this will force the previous component to
> +	 * go back in LP11 mode and so allow the reconfiguration of SN64DSI83
> +	 * bridge.
> +	 *
> +	 * Keep the lock during the whole operation to be atomic.
> +	 */
> +
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> +
> +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> +	if (IS_ERR(state)) {
> +		err =3D PTR_ERR(state);
> +		goto unlock;
> +	}

No, you must not allocate a new state for this, you need to reuse the
existing state. You'll find it in bridge->base.state->state.

> +	state->acquire_ctx =3D &ctx;
> +
> +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> +							     sn65dsi83->bridge.encoder);
> +	if (!connector) {
> +		err =3D -EINVAL;
> +		goto unlock;
> +	}
> +
> +	connector_state =3D drm_atomic_get_connector_state(state, connector);
> +	if (IS_ERR(connector_state)) {
> +		err =3D PTR_ERR(connector_state);
> +		goto unlock;
> +	}
> +
> +	err =3D drm_atomic_helper_reset_pipe(connector_state->crtc, &ctx);
> +	if (err < 0)
> +		goto unlock;

And you'll find the crtc in bridge->encoder->crtc.

Maxime

--cgjmmrxqn5gcqlso
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ4YVAwAKCRAnX84Zoj2+
dqZtAX4stkTt+dNU6Shttzc8LVHzacF/Zdo4teBm72pLMzNyoRKn6k8zSWCKawm8
4323flwBgL4L3vafnWgk+ciHNql8ON6KEEDbqdKhoHHpu1UEPVN2hCkEkNOwj6Qq
kvADthGUhg==
=Wkle
-----END PGP SIGNATURE-----

--cgjmmrxqn5gcqlso--

