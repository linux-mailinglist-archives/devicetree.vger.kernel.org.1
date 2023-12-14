Return-Path: <devicetree+bounces-25334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAF5812ED0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FDFB1C2158D
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10E77405D5;
	Thu, 14 Dec 2023 11:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kggclUZo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82098F62
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 11:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 416CDC433C8;
	Thu, 14 Dec 2023 11:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702554019;
	bh=eeDYqlwBtjHy6r69GLa780JAO3JgPSQv0n4y8NPG8k4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kggclUZoobSrHtX3pZCJgcpzhkzPgkIumB67PLvu0w7b+vQN/Rn4ov0qkm1wuSj5M
	 bwLqRbzEyzxzSoKQzwNk/yhp1YnGggkwSV0v9OaWplNq0cqda1IcUyWphu6hdjANSf
	 +Lyp9ztkvbAqGBvYwGodIK7U27aVQEgKJdgLI2BISWD76bvPBa0TZvU19c+5IzzN1b
	 hgblqst2vIshobJtSYEjPj6OYvveUEB5VRUDdZUq36N8CYXqANRDeVRPVzt0+e/B+B
	 PlwGSK3LHeHHM3v/k9Cq/vsUf53GNkn1wtNNOaQbAPL4g4j4qtb6HQNbn1vdMSTlde
	 RZCP5WTptObrw==
Date: Thu, 14 Dec 2023 12:40:16 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
Message-ID: <k7ry5xsrmc5bi46pwbkphq4wo3jd5uutnezvttue2eh7sabkby@wvimbjamzg32>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-8-knaerzche@gmail.com>
 <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
 <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxvrbsdqrjkzgivk"
Content-Disposition: inline
In-Reply-To: <1b7402b2-ec03-420b-a81b-3e6ea46e402a@gmail.com>


--wxvrbsdqrjkzgivk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 12:17:39PM +0100, Alex Bee wrote:
> Hi Maxime,
>=20
> Am 14.12.23 um 09:05 schrieb Maxime Ripard:
> > Hi,
> >=20
> > On Wed, Dec 13, 2023 at 08:51:21PM +0100, Alex Bee wrote:
> > > As per TRM this controller supports pixelclocks starting from 25 MHz.=
 The
> > > maximum supported pixelclocks are defined by the phy configurations we
> > > have. Also it can't support modes that require doubled clocks.
> > > If there is a phy reference clock we can additionally validate against
> > > VESA DMT's recommendations.
> > > Those checks are added to the mode_valid hook of the connector and
> > > encoder's mode_fixup hook.
> > >=20
> > > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > > ---
> > >   drivers/gpu/drm/rockchip/inno_hdmi.c | 38 +++++++++++++++++++++++++=
+--
> > >   1 file changed, 36 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/r=
ockchip/inno_hdmi.c
> > > index f7f0bec725f9..2f839ff31c1c 100644
> > > --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > @@ -38,6 +38,8 @@ struct inno_hdmi_variant {
> > >   	struct inno_hdmi_phy_config *default_phy_config;
> > >   };
> > > +#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
> > > +
> > >   struct hdmi_data_info {
> > >   	int vic;
> > >   	bool sink_has_audio;
> > > @@ -572,6 +574,34 @@ static int inno_hdmi_setup(struct inno_hdmi *hdm=
i,
> > >   	return 0;
> > >   }
> > > +static enum drm_mode_status inno_hdmi_mode_valid(struct inno_hdmi *h=
dmi,
> > > +						 struct drm_display_mode *mode)
> > > +{
> > So, mode_valid is only called to filter out the modes retrieved by
> > get_modes, but it won't be called when userspace programs a mode. That's
> > atomic_check's job.
> >=20
> > So you probably want to create a shared function between atomic_check
> > and mode_valid, and call it from both places (or call mode_valid from
> > atomic_check).
>
> This actually _is_ a shared function called in
> inno_hdmi_connector_mode_valid and inno_hdmi_encoder_mode_fixup. Yes, I=A0
> probably should use it in atomic_check _also_.

Yeah, I saw that later and forgot to rephrase.

> > > +	/* No support for double-clock modes */
> > > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > +		return MODE_BAD;
> > > +
> > > +	unsigned int mpixelclk =3D mode->clock * 1000;
> > Variables should be declared at the top of the function.
> Oookay ... can move them.
> > > +	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
> > > +		return MODE_CLOCK_LOW;
> > You probably want to check the max TMDS clock too?
>
> Not sure what you mean here. For the currently supported formats of this
> driver (rgb only) tmds clock and pixel clock are always the same.

I mean that your controller has a maximum TMDS rate it supports too
(probably something like 340MHz). You should also filter out the modes
that have a pixel clock higher than the one you can reach.

> > > @@ -602,7 +632,9 @@ static bool inno_hdmi_encoder_mode_fixup(struct d=
rm_encoder *encoder,
> > >   					 const struct drm_display_mode *mode,
> > >   					 struct drm_display_mode *adj_mode)
> > >   {
> > > -	return true;
> > > +	struct inno_hdmi *hdmi =3D encoder_to_inno_hdmi(encoder);
> > > +
> > > +	return inno_hdmi_mode_valid(hdmi, adj_mode) =3D=3D MODE_OK;
> > >   }
> > Why do you call mode_valid in mode_fixup?
>=20
> I'm calling the shared function you asked me to introduce
> (inno_hdmi_connector_mode_valid !=3D inno_mode_valid)

That's the mode_fixup part that I'm focused on :)

mode_fixup is the legacy function to adjust the mode to the controller
capabilities. It's optional, and you're not adjusting anything here,
just testing the same thing mode_valid did.

mode_valid has been superseeded by atomic_check anyway, so just drop
mode_valid and use your function in atomic_check like we discussed.

Maxime

--wxvrbsdqrjkzgivk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXrpoAAKCRDj7w1vZxhR
xZxNAPwKERlFJ+mgmKSaqwFc1EXHo2YbCDrDOrnV9/Dj2O0BVAEAnVL1HPgSyUs2
8k+xVUz27MAtLjLyuaEyMBgVvfYiHg4=
=w8cg
-----END PGP SIGNATURE-----

--wxvrbsdqrjkzgivk--

