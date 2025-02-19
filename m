Return-Path: <devicetree+bounces-148277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 187C5A3B805
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77EE53A60F8
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32A11E00BE;
	Wed, 19 Feb 2025 09:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhF21YPo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7902F1DE2B5;
	Wed, 19 Feb 2025 09:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956062; cv=none; b=VVVPTnzt1dNu5BGL/ILEARbyprFouF3JPV9aoo5pk1kHP3e6L2IpfAtDLuysqctkKIFMW/uwNAGO6nM6Jmyt+dUHZCFaGHot4fDddfo4blGrlnj0sbROajN4asMaKQohEMk12WpsonOFM23B6egDD64R7PGLEam8S2NOV3wdIug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956062; c=relaxed/simple;
	bh=cBZrqxSNUkMCKFUcsmdQBKu5y+1MEgPrb6JCnA94Ps4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B3lsJs0FKntzFVGlBOlDHWh5ssywsvjLbubEV+caCe8FRRRRndcH+lGl+v7SLNyu3UTP2C4ibpWui8WhLkKORx/qh64KFdpcmVpVeJjN4mx7J1o2+zAQN1WZPQsruF52Je6rYWREYOx2xHS9ZgRoowVh3c06s106Qu+SBH6n6L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhF21YPo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFFBFC4CED1;
	Wed, 19 Feb 2025 09:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739956062;
	bh=cBZrqxSNUkMCKFUcsmdQBKu5y+1MEgPrb6JCnA94Ps4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AhF21YPorX9fvgIx88CykoP0P7I22Rd9DKV89jiFi+5SmbJkiYjbouSs0vFDGb6vC
	 /GZlZk1LKZnhZsIkQBHIaHWD+Z28puegfDIjFjcBXXdGGErKQ7sP9TfySnjnwuSlQn
	 aCSMy2jGgCwIltyooFSoa/s6mhMcIYNfxgNsLMIBQLXgXRFupllspVOUEOBAkVdXtE
	 Q6XITYP0e1fYJnOdqECdskXnu6i1GMSqzr69K91Q+xOuZpNgMKYglKEttIJbVZYRpv
	 PpZhf+jCWsMBppDzwkiBsgqm4hH3MS8svaZaak18L82yS2DOBi5zoVr3tC63I4WTTL
	 raJJ0P3uW56rQ==
Date: Wed, 19 Feb 2025 10:07:39 +0100
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
Message-ID: <20250219-tall-turkey-of-dew-d9ba9e@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
 <20250108101907.410456-4-herve.codina@bootlin.com>
 <20250114-juicy-authentic-mushroom-cfcdfb@houat>
 <20250114135456.5366eb2a@bootlin.com>
 <20250116-archetypal-bulldog-of-expression-fcc937@houat>
 <20250117091213.647bf0e6@bootlin.com>
 <20250204-chocolate-lionfish-of-luck-10ebb8@houat>
 <20250204163404.0a6b6526@bootlin.com>
 <20250204-crouching-alligator-of-success-ab52f8@houat>
 <20250204195240.005603b7@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="nbvjwlhc4kflqlln"
Content-Disposition: inline
In-Reply-To: <20250204195240.005603b7@bootlin.com>


--nbvjwlhc4kflqlln
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
MIME-Version: 1.0

Hi,

On Tue, Feb 04, 2025 at 07:52:40PM +0100, Herve Codina wrote:
> On Tue, 4 Feb 2025 18:11:01 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > On Tue, Feb 04, 2025 at 04:34:04PM +0100, Herve Codina wrote:
> > > On Tue, 4 Feb 2025 16:17:10 +0100
> > > Maxime Ripard <mripard@kernel.org> wrote:
> > >  =20
> > > > Hi,
> > > >=20
> > > > On Fri, Jan 17, 2025 at 09:12:13AM +0100, Herve Codina wrote: =20
> > > > > Hi Maxime,
> > > > >=20
> > > > > On Thu, 16 Jan 2025 09:38:45 +0100
> > > > > Maxime Ripard <mripard@kernel.org> wrote:
> > > > >    =20
> > > > > > On Tue, Jan 14, 2025 at 01:54:56PM +0100, Herve Codina wrote:  =
 =20
> > > > > > > Hi Maxime,
> > > > > > >=20
> > > > > > > On Tue, 14 Jan 2025 08:40:51 +0100
> > > > > > > Maxime Ripard <mripard@kernel.org> wrote:
> > > > > > >=20
> > > > > > > ...
> > > > > > >      =20
> > > > > > > > > =20
> > > > > > > > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65ds=
i83)
> > > > > > > > > +{
> > > > > > > > > +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> > > > > > > > > +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> > > > > > > > > +	struct drm_connector_state *connector_state;
> > > > > > > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > > > > > > +	struct drm_connector *connector;
> > > > > > > > > +	int err;
> > > > > > > > > +
> > > > > > > > > +	/*
> > > > > > > > > +	 * Reset active outputs of the related CRTC.
> > > > > > > > > +	 *
> > > > > > > > > +	 * This way, drm core will reconfigure each components =
in the CRTC
> > > > > > > > > +	 * outputs path. In our case, this will force the previ=
ous component to
> > > > > > > > > +	 * go back in LP11 mode and so allow the reconfiguratio=
n of SN64DSI83
> > > > > > > > > +	 * bridge.
> > > > > > > > > +	 *
> > > > > > > > > +	 * Keep the lock during the whole operation to be atomi=
c.
> > > > > > > > > +	 */
> > > > > > > > > +
> > > > > > > > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > > > > > > > +
> > > > > > > > > +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> > > > > > > > > +	if (IS_ERR(state)) {
> > > > > > > > > +		err =3D PTR_ERR(state);
> > > > > > > > > +		goto unlock;
> > > > > > > > > +	}       =20
> > > > > > > >=20
> > > > > > > > No, you must not allocate a new state for this, you need to=
 reuse the
> > > > > > > > existing state. You'll find it in bridge->base.state->state=
=2E     =20
> > > > > > >=20
> > > > > > > Thanks for pointing that. I didn't know about bridge->base.st=
ate->state.
> > > > > > >=20
> > > > > > > I will use that if using the state is still relevant (see nex=
t comment).
> > > > > > >      =20
> > > > > > > >      =20
> > > > > > > > > +	state->acquire_ctx =3D &ctx;
> > > > > > > > > +
> > > > > > > > > +	connector =3D drm_atomic_get_old_connector_for_encoder(=
state,
> > > > > > > > > +							     sn65dsi83->bridge.encoder);
> > > > > > > > > +	if (!connector) {
> > > > > > > > > +		err =3D -EINVAL;
> > > > > > > > > +		goto unlock;
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	connector_state =3D drm_atomic_get_connector_state(stat=
e, connector);
> > > > > > > > > +	if (IS_ERR(connector_state)) {
> > > > > > > > > +		err =3D PTR_ERR(connector_state);
> > > > > > > > > +		goto unlock;
> > > > > > > > > +	}
> > > > > > > > > +
> > > > > > > > > +	err =3D drm_atomic_helper_reset_pipe(connector_state->c=
rtc, &ctx);
> > > > > > > > > +	if (err < 0)
> > > > > > > > > +		goto unlock;       =20
> > > > > > > >=20
> > > > > > > > And you'll find the crtc in bridge->encoder->crtc.     =20
> > > > > > >=20
> > > > > > > I am a bit confused. I looked at the drm_encoder structure [1=
] and the crtc
> > > > > > > field available in this structure should not be used by atomi=
c drivers. They
> > > > > > > should rely on &drm_connector_state.crtc.     =20
> > > > > >=20
> > > > > > You're right, it's deprecated but used by most bridges anyway.
> > > > > >=20
> > > > > > I made a series of changes after reviewing your series to addre=
ss some
> > > > > > issues with the current bridge API, most notably
> > > > > >=20
> > > > > > https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-=
25-9a2fecd886a6@kernel.org/   =20
> > > > >=20
> > > > > Thanks for pointing that, indeed, it clarify many things!
> > > > >    =20
> > > > > >    =20
> > > > > > > In my case, I have the feeling that I should get the ctrc fro=
m the current
> > > > > > > state (i.e. bridge->base.state->state) using the sequence pro=
vided in this
> > > > > > > current patch:
> > > > > > >   Retrieve the connector with drm_atomic_get_old_connector_fo=
r_encoder()     =20
> > > > > >=20
> > > > > > Retrieving the old connector makes no sense though. It's the co=
nnector
> > > > > > that was formerly associated with your encoder. It might work, =
it might
> > > > > > not, it's not what you're looking for.
> > > > > >    =20
> > > > > > >   Retrieve the connector state with drm_atomic_get_connector_=
state()     =20
> > > > > >=20
> > > > > > drm_atomic_get_connector_state will allocate and pull the conne=
ctor
> > > > > > state into the drm_atomic_state, even if it wasn't part of it b=
efore, so
> > > > > > it's not great. And you don't need it in the first place, you o=
nly need
> > > > > > the current active CRTC.   =20
> > > > >=20
> > > > > Yes, I agree with that, I only need the active CRTC.
> > > > >=20
> > > > > I tried to get the current atomic_state from:
> > > > >   1) bridge->base.state->state
> > > > >   2) drm_bridge_state->base.state
> > > > >=20
> > > > > In both cases, it is NULL. Looking at Sima's reply in your series
> > > > > explained that:
> > > > >   https://lore.kernel.org/dri-devel/Z4juJy7kKPbI2BDb@phenom.ffwll=
=2Elocal/
> > > > >=20
> > > > > If I understood correctly those pointers are explicitly cleared.
> > > > >=20
> > > > > So, with all of that, either:
> > > > >   a) I wait for your series to be applied in order to use your th=
e crtc field from
> > > > >      drm_bridge_state added by:
> > > > >        https://lore.kernel.org/dri-devel/20250115-bridge-connecto=
r-v1-25-9a2fecd886a6@kernel.org/#t
> > > > >   b) I use the old school bridge->encoder->crtc for the moment
> > > > >=20
> > > > > Do you mind if I use the bridge->encoder->crtc way for the next i=
teration of
> > > > > my series?   =20
> > > >=20
> > > > Yeah, it makes sense. =20
> > >=20
> > > I already send a wrong v4 (sorry) and a correct v5 with modifications=
 in
> > > this way :)
> > >  =20
> > > >=20
> > > > Still, it would be great if you could test my series on your setup =
and see if it helps :) =20
> > >=20
> > > Of course, I can test updated version of your series.
> > >=20
> > > I already try to get the current atomic_state exactly the same way as=
 you do
> > > in your series and the pointer is NULL in my case. =20
> >=20
> > I sent a second version today, let me know if it works.
> >=20
>=20
> Tried your v2 series and...:
>    # modetest -s 39:1920x1080
>    trying to open device 'i915'...failed
>    ...
>    trying to open device 'imx-lcdif'...done
>    [   28.310476] ------------[ cut here ]------------
>    [   28.310494] WARNING: CPU: 3 PID: 449 at drivers/gpu/drm/drm_bridge.=
c:943 drm_atomic_bridge_chain_check+0x24c/0x310 [drm]
> setting mode 1920x1080-60.00Hz on[   28.326058] Modules linked in: fsl_ld=
b imx8mp_interconnect imx_interconnect imx_cpufreq_dt imx8mm_thermal lm75 t=
mp103 rtc_snvs leds_pca963x snvs_pwrkey rtc_rs5c372 pwm_imx27 st_pressure_s=
pi st_sensors_spi regmap_spi gpio_charger st_pressure_i2c st_pressure st_se=
nsors_i2c industrialio_triggered_buffer kfifo_buf st_sensors led_bl panel_s=
imple opt3001 iio_hwmon governor_userspace imx_bus imx8mp_hdmi_tx dw_hdmi d=
wmac_imx stmmac_platform stmmac pcs_xpcs phylink samsung_dsim imx_sdma imx_=
lcdif drm_dma_helper imx8mp_hdmi_pvi fsl_imx8_ddr_perf exc3000 caam ti_sn65=
dsi83 error hotplug_bridge pwm_bl drm_display_helper drm_kms_helper drm drm=
_panel_orientation_quirks backlight gehc_sunh_connector ltc2497 ltc2497_core
>    [   28.391264] CPU: 3 UID: 0 PID: 449 Comm: modetest Not tainted 6.14.=
0-rc1+ #18
>    [   28.398404] Hardware name: GE HealthCare Supernova Patient Hub v1 (=
DT)
>    [   28.404933] pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS B=
TYPE=3D--)
>    [   28.411896] pc : drm_atomic_bridge_chain_check+0x24c/0x310 [drm]
>    [   28.417940] lr : drm_atomic_bridge_chain_check+0x134/0x310 [drm]
>    [   28.423983] sp : ffff8000823eb860
>    [   28.427299] x29: ffff8000823eb860 x28: ffff000000ac1e00 x27: ffff00=
007b27ea18
>    [   28.434445] x26: ffff00007b27ea90 x25: ffff00007b106170 x24: ffff00=
007a5d6ed8
>    [   28.441587] x23: ffff00007bb4b8a0 x22: ffff00007b27e800 x21: ffff00=
007b27ea00
>    [   28.448732] x20: 0000000000000000 x19: ffff00007b106008 x18: 000000=
0000000000
>    [   28.455876] x17: 0000000000000000 x16: 0000000000000000 x15: 000000=
0000000000
>    [   28.463021] x14: 0000000000000000 x13: ffff00007a7c4ec0 x12: ffff00=
0006dcb440
>    [   28.470165] x11: ffff00007a7c4ec0 x10: ffff000079ee5200 x9 : ffff80=
00798e1aec
>    [   28.477311] x8 : ffff00007a63f190 x7 : 0000000000000000 x6 : ffff80=
0079954110
>    [   28.484455] x5 : 0000000000000000 x4 : 0000000000000020 x3 : ffff00=
0079a12d80
>    [   28.491601] x2 : ffff00007b107000 x1 : ffff00007b106008 x0 : 000000=
0000000000
>    [   28.498747] Call trace:
>    [   28.501195]  drm_atomic_bridge_chain_check+0x24c/0x310 [drm] (P)
>    [   28.507241]  drm_atomic_helper_check_modeset+0xa1c/0xca0 [drm_kms_h=
elper]
>    [   28.514046]  drm_atomic_helper_check+0x28/0xb8 [drm_kms_helper]
>    [   28.519980]  drm_atomic_check_only+0x4bc/0x990 [drm]
>    [   28.524982]  drm_atomic_commit+0x50/0xd8 [drm]
>    [   28.529463]  drm_atomic_helper_set_config+0xe4/0x128 [drm_kms_helpe=
r]
>    [   28.535919]  drm_mode_setcrtc+0x1cc/0x7b0 [drm]
>    [   28.540486]  drm_ioctl_kernel+0xc0/0x140 [drm]
>    [   28.544965]  drm_ioctl+0x210/0x4e8 [drm]
>    [   28.548926]  __arm64_sys_ioctl+0xa4/0xe8
>    [   28.552860]  invoke_syscall+0x50/0x120
>    [   28.556619]  el0_svc_common.constprop.0+0x48/0xf8
>    [   28.561330]  do_el0_svc+0x28/0x40
>    [   28.564653]  el0_svc+0x30/0xd0
>    [   28.567713]  el0t_64_sync_handler+0x144/0x168
>    [   28.572075]  el0t_64_sync+0x198/0x1a0
>    [   28.575746] ---[ end trace 0000000000000000 ]---
>     connectors 39, crtc 36
>    failed to set mode: Function not implemented
>=20
>=20
> Without your series applied, modetest -s works correctly.
>=20
> Due to the failure, I couldn't test your drm_bridge_get_current_state() to
> see if I can retrieve the drm_bridge_state from my sn65dsi83_reset_pipe()
> function.
>=20
> Also, I have some local commits related to Luca's work about DRM bridge
> hot-pluggin stuff on my test branch.
>=20
> It will not be easy for me to test your series without them as my TI
> sn65dsi83 bridge is behind a connector and I need some Luca's modification
> to have a functional system. Sorry about that.
>
> Hope that the kernel WARN log provided here will ring you a bell.

Not really. I can't figure out where in drm_atomic_bridge_chain_check we
have that warning.

Does $CROSS_COMPILE-addr2line -e vmlinux
drm_atomic_bridge_chain_check+0x24c/0x310 report anything?

Maxime

--nbvjwlhc4kflqlln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ7WfVgAKCRAnX84Zoj2+
dnejAX0STTc9OidMLqYHNiBPMKOA66K9zd8WAt9kFKmJnbpx3hONXiADxUK3b+rc
XdhBwyABf2Oxtn2P3Ju7rMrAmY6r44cXOD1fEtgZwireWLKit8ULgFo8bLZ+LnBv
MMJR7Pau+Q==
=zQEe
-----END PGP SIGNATURE-----

--nbvjwlhc4kflqlln--

