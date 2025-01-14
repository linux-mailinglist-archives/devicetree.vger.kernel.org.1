Return-Path: <devicetree+bounces-138351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF804A10158
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:34:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED129168168
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BE7243356;
	Tue, 14 Jan 2025 07:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdKpoOF2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F165A1BD9E5;
	Tue, 14 Jan 2025 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840095; cv=none; b=M/k2dKEKJeVLjYebZoRgGodLPKo1iGNUWcS87DnNEREAotDoJVkgBfy6OD3P6obpdoymbwGZ/z3Dh6GS5xdR0PrDLHfEcQNsVhiUweCnQPPsP4V109WPKi4yZiAfKq44+QdCY0VeBLSeYuLx7I2q5UflOvMbhpyvh9pWZTv06yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840095; c=relaxed/simple;
	bh=J4U5XuwN3xa1hSkEqRxjGMRm+pG6ufRy7A4/RZvzav0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VQZBaZJHr+rS809z0xKkKg3Q4yUjw85B0fBcHYQhJ4FGFwAGHWd5nlhNubfUVZMWbxp3vOmtUR1Mzt7Oz4fbAQz+rD9ZjSjW+M/Ey6j62Fi45K18aon7p7+fqZgFFIKmBT64EqT02gIVDcp7eOK8UX09UgKOlVXU9wpuOch3xgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdKpoOF2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 013EAC4CEDD;
	Tue, 14 Jan 2025 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736840094;
	bh=J4U5XuwN3xa1hSkEqRxjGMRm+pG6ufRy7A4/RZvzav0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JdKpoOF2V0anXoeeP0cWwhT1HTlxt/dzkRXpDt01xt0RezPi+kQHyMJwhQUPCjkLA
	 KWOALRnEfLHKAmu0CqUNe6G6PMYN4idC7v/ZUAdDu81Fy+PZFX6GIbjExFNoVMMVFO
	 leHt96gNAZGVIh08ONd5ww7qjskhlsYkQMfxEoYvMfhdrgk1alpn4WiwEtPaWNIpXe
	 fUoc1UCp5r4tS/YLG0KG6ZeMYJYglvRe1yAX8WriaSqxMYU7LrhRBWKiUmqhZfUAp/
	 HwB8fS/3apNhjXGJvPBV0/7+BCwbnlNRSoTpAS9NVX5zFlkAzh62OD6Fx94B3lCJDf
	 weZOBODKuZr9Q==
Date: Tue, 14 Jan 2025 08:34:51 +0100
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
Subject: Re: [PATCH v3 2/3] drm/vc4: Move reset_pipe() to an atomic helper
Message-ID: <20250114-parakeet-of-abstract-karma-038beb@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="u2zldb7wqppaurqv"
Content-Disposition: inline
In-Reply-To: <20250108101907.410456-3-herve.codina@bootlin.com>


--u2zldb7wqppaurqv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/3] drm/vc4: Move reset_pipe() to an atomic helper
MIME-Version: 1.0

Hi,

On Wed, Jan 08, 2025 at 11:19:01AM +0100, Herve Codina wrote:
> reset_pipe() allows to reset the CRTC active outputs.
>=20
> In order to use it from other drivers without code duplication, move it
> to an atomic helper without any functional changes.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 41 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/vc4/vc4_hdmi.c      | 30 +--------------------
>  include/drm/drm_atomic_helper.h     |  2 ++
>  3 files changed, 44 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_at=
omic_helper.c
> index 8ed186ddaeaf..4225b814ea35 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -3363,6 +3363,47 @@ int drm_atomic_helper_disable_all(struct drm_devic=
e *dev,
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_disable_all);
> =20
> +/**
> + * drm_atomic_helper_reset_pipe - reset the active outputs of a CRTC
> + * @crtc: DRM CRTC
> + * @ctx: lock acquisition context
> + *
> + * Reset the active outputs by indicating that connectors have changed.
> + * This implies a reset of all active components available between the C=
RTC and
> + * connectors.
> + *
> + * Returns:
> + * 0 on success or a negative error code on failure.
> + */
> +int drm_atomic_helper_reset_pipe(struct drm_crtc *crtc,
> +				 struct drm_modeset_acquire_ctx *ctx)

We should probably name it reset_crtc to make it more consistent with
the other helpers.

> +{
> +	struct drm_atomic_state *state;
> +	struct drm_crtc_state *crtc_state;
> +	int ret;
> +
> +	state =3D drm_atomic_state_alloc(crtc->dev);
> +	if (!state)
> +		return -ENOMEM;
> +
> +	state->acquire_ctx =3D ctx;
> +
> +	crtc_state =3D drm_atomic_get_crtc_state(state, crtc);
> +	if (IS_ERR(crtc_state)) {
> +		ret =3D PTR_ERR(crtc_state);
> +		goto out;
> +	}
> +
> +	crtc_state->connectors_changed =3D true;
> +
> +	ret =3D drm_atomic_commit(state);
> +out:
> +	drm_atomic_state_put(state);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_reset_pipe);
> +
>  /**
>   * drm_atomic_helper_shutdown - shutdown all CRTC
>   * @dev: DRM device
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdm=
i.c
> index e3818c48c9b8..19f6592a8cc5 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -269,34 +269,6 @@ static void vc4_hdmi_cec_update_clk_div(struct vc4_h=
dmi *vc4_hdmi)
>  static void vc4_hdmi_cec_update_clk_div(struct vc4_hdmi *vc4_hdmi) {}
>  #endif
> =20
> -static int reset_pipe(struct drm_crtc *crtc,
> -			struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct drm_atomic_state *state;
> -	struct drm_crtc_state *crtc_state;
> -	int ret;
> -
> -	state =3D drm_atomic_state_alloc(crtc->dev);
> -	if (!state)
> -		return -ENOMEM;
> -
> -	state->acquire_ctx =3D ctx;
> -
> -	crtc_state =3D drm_atomic_get_crtc_state(state, crtc);
> -	if (IS_ERR(crtc_state)) {
> -		ret =3D PTR_ERR(crtc_state);
> -		goto out;
> -	}
> -
> -	crtc_state->connectors_changed =3D true;
> -
> -	ret =3D drm_atomic_commit(state);
> -out:
> -	drm_atomic_state_put(state);
> -
> -	return ret;
> -}
> -
>  static int vc4_hdmi_reset_link(struct drm_connector *connector,
>  			       struct drm_modeset_acquire_ctx *ctx)
>  {
> @@ -375,7 +347,7 @@ static int vc4_hdmi_reset_link(struct drm_connector *=
connector,
>  	 * would be perfectly happy if were to just reconfigure
>  	 * the SCDC settings on the fly.
>  	 */
> -	return reset_pipe(crtc, ctx);
> +	return drm_atomic_helper_reset_pipe(crtc, ctx);
>  }

And that part should be in another patch

Maxime

--u2zldb7wqppaurqv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ4YTmgAKCRAnX84Zoj2+
dv0RAX48xdz+gOKUTsIX4G9MqPTACnmQsX4HH6KXSPmIu2HllvEuk52yG+hFM2kH
ljMJdZgBfRPVwX9GyHw6jI/AKGequaZ5hFkTfdj4urYFXkwsT6Y50JRk/6WMWog+
nWBI9pejfw==
=a0sB
-----END PGP SIGNATURE-----

--u2zldb7wqppaurqv--

