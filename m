Return-Path: <devicetree+bounces-11867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E03FA7D6DC6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92D89281C36
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D92E928DD3;
	Wed, 25 Oct 2023 13:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahC34Et4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7C028DCA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:57:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F05FC433C7;
	Wed, 25 Oct 2023 13:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698242251;
	bh=mL9aaBJh7T4dWkfq57W9E21rwjuh1Dt0dXBpKyIZtA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ahC34Et4TkfTRirGAN2NqFk+LWAL4dV6tJrge28TGVmvlgK8OHAtr4S/mvlbi810K
	 q3H2Ib4H9hw5mPctEaDZOj2zcNEouX+SApw328WgQ+LlQ1QhU+bZzbmWfNdR/vn9fq
	 J8YpFTwF7mv48aWDbMUjn8mJ29e6Ay5xoGBIL482uPSk/fBsLbbPEc518JsnZZNDBi
	 VW7AOVyLiIFvZjfA2kEIgIxcuiI3Yx0/AA5CjI+Vkpkqi44Pyl4fRCHrxE3OELYQSB
	 WKvItQ/mYZQdJel2dZWuc4dc90EmJUhS7Es8iQl1O/XuIFNTM/CiwcuszdcoCqIuc0
	 NoIhoLFwHK7QA==
Date: Wed, 25 Oct 2023 15:57:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, 
	Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, 
	Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
Subject: Re: [PATCH v2 5/6] drm/vs: Add KMS crtc&plane
Message-ID: <pfjfxkpg4cheozhnjgql67ntfiapssba36ukusqrlo6za4owv3@mwzucmdqboy5>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-6-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gne3qq4wbplxfl5j"
Content-Disposition: inline
In-Reply-To: <20231025103957.3776-6-keith.zhao@starfivetech.com>


--gne3qq4wbplxfl5j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 25, 2023 at 06:39:56PM +0800, Keith Zhao wrote:
> +static struct drm_crtc_state *
> +vs_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
> +{
> +	struct vs_crtc_state *ori_state;
> +	struct vs_crtc_state *state;
> +
> +	if (!crtc->state)
> +		return NULL;
> +
> +	ori_state = to_vs_crtc_state(crtc->state);
> +	state = kzalloc(sizeof(*state), GFP_KERNEL);
> +	if (!state)
> +		return NULL;
> +
> +	__drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);
> +
> +	state->output_fmt = ori_state->output_fmt;

That field is never set in your patch.

> +	state->encoder_type = ori_state->encoder_type;

That isn't either, and it's not clear why you would need the
encoder_type stored in the CRTC?

> +	state->bpp = ori_state->bpp;

You seem to derive that from output_fmt, it doesn't need to be in the
CRTC state.

> +	state->underflow = ori_state->underflow;

Assuming you're setting this from the interrupt handler, it's unsafe,
you shouldn't do that. What are you using it for?

> +static const struct drm_prop_enum_list vs_sync_mode_enum_list[] = {
> +	{ VS_SINGLE_DC,				"single dc mode" },
> +	{ VS_MULTI_DC_PRIMARY,		"primary dc for multi dc mode" },
> +	{ VS_MULTI_DC_SECONDARY,	"secondary dc for multi dc mode" },
> +};

Custom driver properties are a no-go:
https://docs.kernel.org/gpu/drm-kms.html#requirements

And

https://docs.kernel.org/gpu/drm-uapi.html#open-source-userspace-requirements

> +void vs_dc_enable(struct vs_dc *dc, struct drm_crtc *crtc)
> +{
> +	struct vs_crtc_state *crtc_state = to_vs_crtc_state(crtc->state);
> +	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
> +	struct dc_hw_display display;

Why are you rolling your own structure here, if it's exactly equivalent
to what drm_display_mode and the crtc_state provide?

> +void vs_dc_commit(struct vs_dc *dc)
> +{
> +	dc_hw_enable_shadow_register(&dc->hw, false);
> +
> +	dc_hw_commit(&dc->hw);
> +
> +	if (dc->first_frame)
> +		dc->first_frame = false;
> +
> +	dc_hw_enable_shadow_register(&dc->hw, true);
> +}

It's not clear to me what you're trying to do here, does the hardware
have latched registers that are only updated during vblank?

> +static int dc_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct drm_device *drm_dev = data;
> +	struct vs_dc *dc = dev_get_drvdata(dev);
> +	struct device_node *port;
> +	struct vs_crtc *crtc;
> +	struct vs_dc_info *dc_info;
> +	struct vs_plane *plane;
> +	struct vs_plane_info *plane_info;
> +	int i, ret;
> +	u32 ctrc_mask = 0;
> +
> +	if (!drm_dev || !dc) {
> +		dev_err(dev, "devices are not created.\n");
> +		return -ENODEV;
> +	}
> +
> +	ret = dc_init(dev);
> +	if (ret < 0) {
> +		drm_err(drm_dev, "Failed to initialize DC hardware.\n");
> +		return ret;
> +	}
> +
> +	port = of_get_child_by_name(dev->of_node, "port");
> +	if (!port) {
> +		drm_err(drm_dev, "no port node found\n");
> +		return -ENODEV;
> +	}
> +	of_node_put(port);
> +
> +	dc_info = dc->hw.info;
> +
> +	for (i = 0; i < dc_info->panel_num; i++) {
> +		crtc = vs_crtc_create(drm_dev, dc_info);
> +		if (!crtc) {
> +			drm_err(drm_dev, "Failed to create CRTC.\n");
> +			ret = -ENOMEM;
> +			return ret;
> +		}
> +
> +		crtc->base.port = port;
> +		crtc->dev = dev;
> +		dc->crtc[i] = crtc;
> +		ctrc_mask |= drm_crtc_mask(&crtc->base);
> +	}
> +
> +	for (i = 0; i < dc_info->plane_num; i++) {
> +		plane_info = (struct vs_plane_info *)&dc_info->planes[i];
> +
> +		if (!strcmp(plane_info->name, "Primary") || !strcmp(plane_info->name, "Cursor")) {
> +			plane = vs_plane_create(drm_dev, plane_info, dc_info->layer_num,
> +						drm_crtc_mask(&dc->crtc[0]->base));
> +		} else if (!strcmp(plane_info->name, "Primary_1") ||
> +				   !strcmp(plane_info->name, "Cursor_1")) {

Please use an enum and an id there.

> +static int vs_plane_atomic_set_property(struct drm_plane *plane,
> +					struct drm_plane_state *state,
> +					struct drm_property *property,
> +					uint64_t val)
> +{
> +	struct drm_device *dev = plane->dev;
> +	struct vs_plane *vs_plane = to_vs_plane(plane);
> +	struct vs_plane_state *vs_plane_state = to_vs_plane_state(state);
> +	int ret = 0;
> +
> +	if (property == vs_plane->degamma_mode) {
> +		if (vs_plane_state->degamma != val) {
> +			vs_plane_state->degamma = val;
> +			vs_plane_state->degamma_changed = true;
> +		} else {
> +			vs_plane_state->degamma_changed = false;
> +		}
> +	} else if (property == vs_plane->watermark_prop) {
> +		ret = _vs_plane_set_property_blob_from_id(dev,
> +							  &vs_plane_state->watermark,
> +							  val,
> +							  sizeof(struct drm_vs_watermark));
> +		return ret;
> +	} else if (property == vs_plane->color_mgmt_prop) {
> +		ret = _vs_plane_set_property_blob_from_id(dev,
> +							  &vs_plane_state->color_mgmt,
> +							  val,
> +							  sizeof(struct drm_vs_color_mgmt));
> +		return ret;
> +	} else if (property == vs_plane->roi_prop) {
> +		ret = _vs_plane_set_property_blob_from_id(dev,
> +							  &vs_plane_state->roi,
> +							  val,
> +							  sizeof(struct drm_vs_roi));
> +		return ret;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}

Same story than above for properties


Honestly, that driver is pretty massive, and you should be simplifying
it a lot of you want the initial contribution to be as smooth as
possible.

Things like all the tiling formats, the underflowing handling, all those
properties, etc can (and should) be added in a second step once the
foundations are in.

Maxime

--gne3qq4wbplxfl5j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZTkexwAKCRDj7w1vZxhR
xVc2AQDt1GUu/XJrbLjzUqX2QBMsMrPFuT0gkDUTQBP87bT4TQD/fxbMJ+PO/Guy
dWrnZFx2MNMwz2yBjRVOwStrbI0sWQo=
=dDhB
-----END PGP SIGNATURE-----

--gne3qq4wbplxfl5j--

