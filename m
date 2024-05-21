Return-Path: <devicetree+bounces-68235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EC08CB50D
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 23:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DBF3B20A11
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 21:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18921494CD;
	Tue, 21 May 2024 21:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WqxKTFZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571950276
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 21:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716325573; cv=none; b=o7ef6lvz91Ms+2NtIwO0vg7h250WaQxVbf7snfvSNxpoBEs20MShwFnbL+TL9UsHhxRIZVsL389PD1PU4UxaxF7Oz4Eg04/Rj4rCECvBBttsuNwTi9fsG41z0YoBU62YtNYR9Ya/RUlwD/I/ikm8lw4Im+4Keohrg5D9xhj5jSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716325573; c=relaxed/simple;
	bh=/hmUFcTzK1yiBUBe/COWyl3AyQgXW2rJeD0Lg/EjCyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ohKAal8wcC+z80/A8WJSDNccwxLe4bbvZLksIn8PXfAfKFcZcKpIXcojAaxl7KzSXwH0xEvVOG5gRvj0nfxqiAggKAIc3wfMSm+L+qedrBGBRwKlsRrmQVCSlIhPI0vX5T4powyUGXBUagm57ba/2fwsCuX0SbbSSv1o8vaHML4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WqxKTFZX; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2e34e85ebf4so50379951fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 14:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716325569; x=1716930369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qPK03jlReQclNNAvffiFj78SrRlM/+sI3gzh9csucJ8=;
        b=WqxKTFZXbnpjBfX0rq7Jl+8Gk4Im1rhaMRXiEuQLzBOyRVwyxcFbt32iAw8AEx4dWR
         y84x4SF3aEjY7251tZZerfA8t3e7LAwkjZeLT9SWOrrqcJswLfzmGmCkdkWiYhA7oaXl
         H2IyVIYqwLGj585jFWhrxSO8Yzu+XQC5+66rR8zvOy0Seh3Nb+1rsE7SgxWW5cabRJ84
         zEpNG9fiCVh8wEFt4x1q0yQnHUE5Xuzk0Cq65McOoMdUQmQ33Hm/OEwDzPui54iWiii/
         iPFrQ9uJJzW0Nx6Amm+y+sBUfZGhYED3h9TzIkH1mgAdq1/hHNzuApOQz2KxNGlsI+Qd
         4rUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716325569; x=1716930369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPK03jlReQclNNAvffiFj78SrRlM/+sI3gzh9csucJ8=;
        b=PSWK9LnxsUSFMvvVRqCnTw7g2g2H09R/qWAWij2qnOswBYd7QbpfMzDX6oD4PnL9Ex
         Lf5X1KCgoWKQxMmTCruBiED3ksIWiSc2psY41NffqmZMEbovRiPY6orngKy68qRHq5LS
         eu3dbOXYfYr2OSVdrM8oGD3AGydmLXqg3h6lYML1xd5zxFY/fiFFnYEnKtxlcgp47T2U
         IYCEAOQgMtNudjeMEQsjV9CmRXRiUbt+Fvr8LuJ65pI9uAp2IL5S5x5AhmucXH9k9MCx
         Mc+P6IQk8svQ9DLPgX1msfQcFl+psgDZD9XSLSH5n8At4mKK32hQ+1fqDaYM2Ban4QC9
         jgIg==
X-Forwarded-Encrypted: i=1; AJvYcCXdHodK+EhPxH8PnDJtpW6i+N3Vb8SxEeiq0TcEE8PmbooxVPhit7u1PvBtC7vhXJib5hEuiPHSWOJ8I2ByO2pe972qE5tzx/naHA==
X-Gm-Message-State: AOJu0YyyZy6rcG7a8l8RPlxqqNBs3FV7Mcw5dY+vL9S0jwVzrFeU1bNY
	A7sgmigmAxsAsz/22DnU567VM+CXrW2vOCg4M6ulO+b5aatp3jdJH+DyTL7wboI=
X-Google-Smtp-Source: AGHT+IGnVvWtJTGTU/HGT0c7ccNkcGTMRmrWrH0PEAiB5kZyvY5kPxMlL76swEnzZwZVBc5d2+ur2A==
X-Received: by 2002:a2e:809:0:b0:2e1:ec20:9ae5 with SMTP id 38308e7fff4ca-2e6abda266bmr155696521fa.31.1716325569179;
        Tue, 21 May 2024 14:06:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d0ef09ffsm37909631fa.59.2024.05.21.14.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 14:06:08 -0700 (PDT)
Date: Wed, 22 May 2024 00:06:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: keith <keith.zhao@starfivetech.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	daniel@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	xingyu.wu@starfivetech.com, p.zabel@pengutronix.de, jack.zhu@starfivetech.com, 
	shengyang.chen@starfivetech.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 06/10] drm/vs: add vs plane api
Message-ID: <gcwvgco3ixpwaalnaq5qzwcp3sq44dgphps7vlqm6zdozu6ci2@vfq4ovpxk25n>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-7-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240521105817.3301-7-keith.zhao@starfivetech.com>

On Tue, May 21, 2024 at 06:58:13PM +0800, keith wrote:
> add plane funs and helper funs
> add vs drm common struct and funs
> 
> Signed-off-by: keith <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/verisilicon/Makefile   |   3 +-
>  drivers/gpu/drm/verisilicon/vs_drv.h   |  93 +++++
>  drivers/gpu/drm/verisilicon/vs_plane.c | 487 +++++++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_plane.h |  26 ++
>  4 files changed, 608 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
> 
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 536091f37378..1c593b943261 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
>  vs_drm-objs := vs_dc_hw.o \
> -		vs_modeset.o
> +		vs_modeset.o \
> +		vs_plane.o
>  
>  obj-$(CONFIG_DRM_VERISILICON_DC8200) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.h b/drivers/gpu/drm/verisilicon/vs_drv.h
> new file mode 100644
> index 000000000000..d9f6efa7c8f9
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.h
> @@ -0,0 +1,93 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_DRV_H__
> +#define __VS_DRV_H__
> +
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/clk.h>
> +#include <linux/reset.h>
> +
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_managed.h>
> +
> +#include "vs_dc_hw.h"
> +
> +/*@pitch_alignment: buffer pitch alignment required by sub-devices.*/

Is that all the docs you want to add?

> +struct vs_drm_device {
> +	struct drm_device base;
> +	unsigned int pitch_alignment;
> +	/* clocks */
> +	unsigned int clk_count;
> +	struct clk_bulk_data	*clks;
> +	struct reset_control	*rsts;
> +	struct vs_dc dc;
> +	int irq;

As usual, please drop unused fields and add them when required.

> +};
> +
> +static inline struct vs_drm_device *
> +to_vs_drm_private(const struct drm_device *dev)
> +{
> +	return container_of(dev, struct vs_drm_device, base);
> +}
> +
> +struct vs_crtc_state {
> +	struct drm_crtc_state base;
> +
> +	u32 output_fmt;
> +	u8 encoder_type;
> +	u8 bpp;
> +};

Not used here, drop.

> +
> +struct vs_crtc {
> +	struct drm_crtc base;
> +	struct device *dev;
> +};


> +
> +static inline u8 to_vs_display_id(struct vs_dc *dc, struct drm_crtc *crtc)
> +{
> +	u8 panel_num = dc->hw.info->panel_num;
> +	u32 index = drm_crtc_index(crtc);
> +	int i;
> +
> +	for (i = 0; i < panel_num; i++) {
> +		if (index == dc->crtc[i]->base.index)
> +			return i;
> +	}
> +
> +	return 0;
> +}
> +
> +static inline struct vs_crtc_state *
> +to_vs_crtc_state(struct drm_crtc_state *state)
> +{
> +	return container_of(state, struct vs_crtc_state, base);
> +}
> +
> +struct vs_plane_state {
> +	struct drm_plane_state base;
> +	dma_addr_t dma_addr[DRM_FORMAT_MAX_PLANES];
> +};
> +
> +struct vs_plane {
> +	struct drm_plane base;
> +	u8 id;
> +};
> +
> +static inline struct vs_plane *to_vs_plane(struct drm_plane *plane)
> +{
> +	return container_of(plane, struct vs_plane, base);
> +}
> +
> +static inline struct vs_plane_state *
> +to_vs_plane_state(struct drm_plane_state *state)
> +{
> +	return container_of(state, struct vs_plane_state, base);
> +}
> +
> +#endif /* __VS_DRV_H__ */
> diff --git a/drivers/gpu/drm/verisilicon/vs_plane.c b/drivers/gpu/drm/verisilicon/vs_plane.c
> new file mode 100644
> index 000000000000..653f0ce72ed6
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_plane.c
> @@ -0,0 +1,487 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_blend.h>
> +#include <drm/drm_gem_dma_helper.h>
> +#include <drm/drm_fb_dma_helper.h>
> +#include <drm/drm_framebuffer.h>
> +#include <drm/drm_plane.h>
> +#include <drm/drm_plane_helper.h>
> +
> +#include "vs_plane.h"
> +
> +static void vs_plane_atomic_destroy_state(struct drm_plane *plane,
> +					  struct drm_plane_state *state)
> +{
> +	struct vs_plane_state *vs_plane_state = to_vs_plane_state(state);
> +
> +	__drm_atomic_helper_plane_destroy_state(state);
> +	kfree(vs_plane_state);
> +}
> +
> +static void vs_plane_reset(struct drm_plane *plane)
> +{
> +	struct vs_plane_state *state;
> +	struct vs_plane *vs_plane = to_vs_plane(plane);
> +
> +	if (plane->state)
> +		vs_plane_atomic_destroy_state(plane, plane->state);
> +
> +	state = kzalloc(sizeof(*state), GFP_KERNEL);
> +	if (!state)
> +		return;
> +
> +	state->base.zpos = vs_plane->id;
> +	__drm_atomic_helper_plane_reset(plane, &state->base);
> +}
> +
> +static struct drm_plane_state *
> +vs_plane_atomic_duplicate_state(struct drm_plane *plane)
> +{
> +	struct vs_plane_state *state;
> +
> +	if (WARN_ON(!plane->state))
> +		return NULL;
> +
> +	state = kzalloc(sizeof(*state), GFP_KERNEL);
> +	if (!state)
> +		return NULL;
> +
> +	__drm_atomic_helper_plane_duplicate_state(plane, &state->base);
> +
> +	return &state->base;
> +}
> +
> +static bool vs_format_mod_supported(struct drm_plane *plane,
> +				    u32 format,
> +				    u64 modifier)
> +{
> +	int i;
> +
> +	/* We always have to allow these modifiers:
> +	 * 1. Core DRM checks for LINEAR support if userspace does not provide modifiers.
> +	 * 2. Not passing any modifiers is the same as explicitly passing INVALID.
> +	 */
> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
> +		return true;
> +
> +	/* Check that the modifier is on the list of the plane's supported modifiers. */
> +	for (i = 0; i < plane->modifier_count; i++) {
> +		if (modifier == plane->modifiers[i])
> +			break;
> +	}
> +
> +	if (i == plane->modifier_count)
> +		return false;
> +
> +	return true;
> +}
> +
> +const struct drm_plane_funcs vs_plane_funcs = {
> +	.update_plane		= drm_atomic_helper_update_plane,
> +	.disable_plane		= drm_atomic_helper_disable_plane,
> +	.reset			= vs_plane_reset,
> +	.atomic_duplicate_state = vs_plane_atomic_duplicate_state,
> +	.atomic_destroy_state	= vs_plane_atomic_destroy_state,
> +	.format_mod_supported	= vs_format_mod_supported,
> +};
> +
> +static unsigned char vs_get_plane_number(struct drm_framebuffer *fb)
> +{
> +	const struct drm_format_info *info;
> +
> +	if (!fb)
> +		return 0;
> +
> +	info = drm_format_info(fb->format->format);
> +	if (!info || info->num_planes > DRM_FORMAT_MAX_PLANES)
> +		return 0;
> +
> +	return info->num_planes;
> +}
> +
> +static bool vs_dc_mod_supported(const u64 *info_modifiers, u64 modifier)
> +{
> +	const u64 *mods;
> +
> +	if (!info_modifiers)
> +		return false;
> +
> +	for (mods = info_modifiers; *mods != DRM_FORMAT_MOD_INVALID; mods++) {
> +		if (*mods == modifier)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +static int vs_primary_plane_atomic_check(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state, plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +	struct drm_framebuffer *fb = new_state->fb;
> +	const struct vs_plane_primary_info *primary_info;
> +	struct drm_crtc_state *crtc_state;
> +	int i;
> +
> +	if (!new_state->crtc || !new_state->fb)
> +		return 0;
> +	for (i = 0; i < dc->hw.info->primary_num; i++) {
> +		primary_info = (struct vs_plane_primary_info *)&dc->hw.info->primary[i];
> +		if (primary_info->id == to_vs_plane(plane)->id)
> +			break;
> +	}
> +
> +	primary_info = &dc->hw.info->primary[i];
> +
> +	if (fb->width < primary_info->min_width ||
> +	    fb->width > primary_info->max_width ||
> +	    fb->height < primary_info->min_height ||
> +	    fb->height > primary_info->max_height)
> +		drm_err_once(plane->dev, "buffer size may not support on plane%d.\n",
> +			     to_vs_plane(plane)->id);
> +
> +	if (!vs_dc_mod_supported(primary_info->modifiers, fb->modifier)) {
> +		drm_err(plane->dev, "unsupported modifier on plane%d.\n", to_vs_plane(plane)->id);
> +		return -EINVAL;
> +	}
> +
> +	crtc_state = drm_atomic_get_existing_crtc_state(new_state->state, new_state->crtc);
> +	return drm_atomic_helper_check_plane_state(new_state, crtc_state,
> +						   primary_info->min_scale,
> +						   primary_info->max_scale,
> +						   true, true);
> +}
> +
> +static int vs_overlay_plane_atomic_check(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state, plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +	struct drm_framebuffer *fb = new_state->fb;
> +	const struct vs_plane_overlay_info *overlay_info;
> +	struct drm_crtc_state *crtc_state;
> +	int i;
> +
> +	if (!new_state->crtc || !new_state->fb)
> +		return 0;
> +
> +	for (i = 0; i < dc->hw.info->overlay_num; i++) {
> +		overlay_info = (struct vs_plane_overlay_info *)&dc->hw.info->overlay[i];
> +		if (overlay_info->id == to_vs_plane(plane)->id)
> +			break;
> +	}
> +
> +	overlay_info = &dc->hw.info->overlay[i];
> +
> +	if (fb->width < overlay_info->min_width ||
> +	    fb->width > overlay_info->max_width ||
> +	    fb->height < overlay_info->min_height ||
> +	    fb->height > overlay_info->max_height)
> +		drm_err_once(plane->dev, "buffer size may not support on plane%d.\n",
> +			     to_vs_plane(plane)->id);
> +
> +	if (!vs_dc_mod_supported(overlay_info->modifiers, fb->modifier)) {
> +		drm_err(plane->dev, "unsupported modifier on plane%d.\n", to_vs_plane(plane)->id);
> +		return -EINVAL;
> +}
> +
> +	crtc_state = drm_atomic_get_existing_crtc_state(new_state->state, new_state->crtc);
> +	return drm_atomic_helper_check_plane_state(new_state, crtc_state,
> +						   overlay_info->min_scale,
> +						   overlay_info->max_scale,
> +						   true, true);
> +}
> +
> +static int vs_cursor_plane_atomic_check(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state, plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +	struct drm_framebuffer *fb = new_state->fb;
> +	const struct vs_plane_cursor_info *cursor_info;
> +	struct drm_crtc_state *crtc_state;
> +	int i;
> +
> +	if (!new_state->crtc || !new_state->fb)
> +		return 0;
> +
> +	for (i = 0; i < dc->hw.info->cursor_num; i++) {
> +		cursor_info = (struct vs_plane_cursor_info *)&dc->hw.info->cursor[i];
> +		if (cursor_info->id == to_vs_plane(plane)->id)
> +			break;
> +	}
> +
> +	cursor_info = &dc->hw.info->cursor[i];
> +
> +	if (fb->width < cursor_info->min_width ||
> +	    fb->width > cursor_info->max_width ||
> +	    fb->height < cursor_info->min_height ||
> +	    fb->height > cursor_info->max_height)
> +		drm_err_once(plane->dev, "buffer size may not support on plane%d.\n",
> +			     to_vs_plane(plane)->id);
> +
> +	crtc_state = drm_atomic_get_existing_crtc_state(new_state->state, new_state->crtc);
> +	return drm_atomic_helper_check_plane_state(new_state, crtc_state,
> +						   DRM_PLANE_NO_SCALING,
> +						   DRM_PLANE_NO_SCALING,
> +						   true, true);

Looking at these three functions:
- Define a common struct for plane info;
- Define a single function handling common case;
- Extend it as necessary for primary / overlay cases (or just skip the
  corresponding check for cursor plane type).

> +}
> +
> +static void vs_plane_atomic_update(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state, plane);
> +	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state, plane);
> +
> +	unsigned char i, num_planes, display_id, id;
> +	u32 format;
> +	bool is_yuv;
> +	struct vs_plane *vs_plane = to_vs_plane(plane);
> +	struct vs_plane_state *plane_state = to_vs_plane_state(new_state);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +
> +	if (!new_state->fb || !new_state->crtc)
> +		return;
> +
> +	drm_fb_dma_sync_non_coherent(plane->dev, old_state, new_state);
> +
> +	num_planes = vs_get_plane_number(new_state->fb);
> +
> +	for (i = 0; i < num_planes; i++) {
> +		dma_addr_t dma_addr;
> +
> +		dma_addr = drm_fb_dma_get_gem_addr(new_state->fb, new_state, i);
> +		plane_state->dma_addr[i] = dma_addr;
> +	}
> +
> +	display_id = to_vs_display_id(dc, new_state->crtc);
> +	format = new_state->fb->format->format;
> +	is_yuv = new_state->fb->format->is_yuv;
> +	id = vs_plane->id;
> +
> +	plane_hw_update_format_colorspace(dc, format, new_state->color_encoding, id, is_yuv);
> +	if (new_state->visible)
> +		plane_hw_update_address(dc, id, format, plane_state->dma_addr,
> +					new_state->fb, &new_state->src);
> +	plane_hw_update_format(dc, format, new_state->color_encoding, new_state->rotation,
> +			       new_state->visible, new_state->zpos, id, display_id);
> +	plane_hw_update_scale(dc, &new_state->src, &new_state->dst, id,
> +			      display_id, new_state->rotation);
> +	plane_hw_update_blend(dc, new_state->alpha, new_state->pixel_blend_mode,
> +			      id, display_id);
> +}
> +
> +static void vs_cursor_plane_atomic_update(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
> +									   plane);
> +	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
> +									   plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +	unsigned char display_id;
> +	u32 crtc_w, crtc_x, crtc_y;
> +	s32 hotspot_x, hotspot_y;
> +	dma_addr_t dma_addr;
> +
> +	display_id = to_vs_display_id(dc, new_state->crtc);
> +
> +	if (!new_state->fb || !new_state->crtc)
> +		return;
> +
> +	drm_fb_dma_sync_non_coherent(new_state->fb->dev, old_state, new_state);
> +	dma_addr = drm_fb_dma_get_gem_addr(new_state->fb, new_state, 0);
> +	crtc_w = new_state->crtc_w;
> +
> +	if (new_state->crtc_x > 0) {
> +		crtc_x = new_state->crtc_x;
> +		hotspot_x = 0;
> +	} else {
> +		hotspot_x = -new_state->crtc_x;
> +		crtc_x = 0;
> +	}
> +	if (new_state->crtc_y > 0) {
> +		crtc_y = new_state->crtc_y;
> +		hotspot_y = 0;
> +	} else {
> +		hotspot_y = -new_state->crtc_y;
> +		crtc_y = 0;
> +	}
> +	dc_hw_update_cursor(&dc->hw, display_id, dma_addr, crtc_w, crtc_x,
> +			    crtc_y, hotspot_x, hotspot_y);
> +}
> +
> +static void vs_plane_atomic_disable(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct vs_plane *vs_plane = to_vs_plane(plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +
> +	dc_hw_disable_plane(dc, vs_plane->id);
> +}
> +
> +static void vs_cursor_plane_atomic_disable(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state, plane);
> +	struct vs_drm_device *priv = to_vs_drm_private(plane->dev);
> +	struct vs_dc *dc = &priv->dc;
> +	unsigned char display_id;
> +
> +	display_id = to_vs_display_id(dc, old_state->crtc);
> +	dc_hw_disable_cursor(&dc->hw, display_id);
> +}
> +
> +const struct drm_plane_helper_funcs primary_plane_helpers = {
> +	.atomic_check	= vs_primary_plane_atomic_check,
> +	.atomic_update	= vs_plane_atomic_update,
> +	.atomic_disable = vs_plane_atomic_disable,
> +};
> +
> +const struct drm_plane_helper_funcs overlay_plane_helpers = {
> +	.atomic_check	= vs_overlay_plane_atomic_check,
> +	.atomic_update	= vs_plane_atomic_update,
> +	.atomic_disable = vs_plane_atomic_disable,
> +};
> +
> +const struct drm_plane_helper_funcs cursor_plane_helpers = {
> +	.atomic_check	= vs_cursor_plane_atomic_check,
> +	.atomic_update	= vs_cursor_plane_atomic_update,
> +	.atomic_disable = vs_cursor_plane_atomic_disable,
> +};
> +
> +struct vs_plane *vs_plane_primary_create(struct drm_device *drm_dev,
> +					 struct vs_plane_primary_info *info,
> +					 unsigned int layer_num,
> +					 unsigned int possible_crtcs)
> +{
> +	struct vs_plane *plane;
> +	int ret;
> +
> +	if (!info)
> +		return NULL;
> +
> +	plane = drmm_universal_plane_alloc(drm_dev, struct vs_plane, base,
> +					   possible_crtcs,
> +					   &vs_plane_funcs,
> +					   info->formats, info->num_formats,
> +					   info->modifiers, DRM_PLANE_TYPE_PRIMARY,
> +					   NULL);
> +	if (IS_ERR(plane))
> +		return ERR_CAST(plane);
> +
> +	drm_plane_helper_add(&plane->base, &primary_plane_helpers);
> +
> +	drm_plane_create_alpha_property(&plane->base);
> +	drm_plane_create_blend_mode_property(&plane->base,
> +					     BIT(DRM_MODE_BLEND_PIXEL_NONE) |
> +					     BIT(DRM_MODE_BLEND_PREMULTI) |
> +					     BIT(DRM_MODE_BLEND_COVERAGE));
> +
> +	if (info->color_encoding) {
> +		ret = drm_plane_create_color_properties(&plane->base, info->color_encoding,
> +							BIT(DRM_COLOR_YCBCR_LIMITED_RANGE),
> +							DRM_COLOR_YCBCR_BT709,
> +							DRM_COLOR_YCBCR_LIMITED_RANGE);
> +		if (ret)
> +			return NULL;
> +	}
> +
> +	if (info->rotation) {
> +		ret = drm_plane_create_rotation_property(&plane->base,
> +							 DRM_MODE_ROTATE_0,
> +							 info->rotation);
> +		if (ret)
> +			return NULL;
> +	}
> +
> +	ret = drm_plane_create_zpos_property(&plane->base, info->zpos, 0, layer_num - 1);
> +	if (ret)
> +		return NULL;
> +
> +	return plane;
> +}
> +
> +struct vs_plane *vs_plane_overlay_create(struct drm_device *drm_dev,
> +					 struct vs_plane_overlay_info *info,
> +					 unsigned int layer_num,
> +					 unsigned int possible_crtcs)

This looks almost like a previous function. Consider merging them.

> +{
> +	struct vs_plane *plane;
> +	int ret;
> +
> +	if (!info)
> +		return NULL;
> +
> +	plane = drmm_universal_plane_alloc(drm_dev, struct vs_plane, base,
> +					   possible_crtcs,
> +					   &vs_plane_funcs,
> +					   info->formats, info->num_formats,
> +					   info->modifiers, DRM_PLANE_TYPE_OVERLAY,
> +					   NULL);
> +	if (IS_ERR(plane))
> +		return ERR_CAST(plane);
> +
> +	drm_plane_helper_add(&plane->base, &overlay_plane_helpers);
> +
> +	drm_plane_create_alpha_property(&plane->base);
> +	drm_plane_create_blend_mode_property(&plane->base,
> +					     BIT(DRM_MODE_BLEND_PIXEL_NONE) |
> +					     BIT(DRM_MODE_BLEND_PREMULTI) |
> +					     BIT(DRM_MODE_BLEND_COVERAGE));
> +
> +	if (info->color_encoding) {
> +		ret = drm_plane_create_color_properties(&plane->base, info->color_encoding,
> +							BIT(DRM_COLOR_YCBCR_LIMITED_RANGE),
> +							DRM_COLOR_YCBCR_BT709,
> +							DRM_COLOR_YCBCR_LIMITED_RANGE);
> +		if (ret)
> +			return NULL;
> +	}
> +
> +	if (info->rotation) {
> +		ret = drm_plane_create_rotation_property(&plane->base,
> +							 DRM_MODE_ROTATE_0,
> +							 info->rotation);
> +		if (ret)
> +			return NULL;
> +	}
> +
> +	ret = drm_plane_create_zpos_property(&plane->base, info->zpos, 0, layer_num - 1);
> +	if (ret)
> +		return NULL;
> +
> +	return plane;
> +}
> +
> +struct vs_plane *vs_plane_cursor_create(struct drm_device *drm_dev,
> +					struct vs_plane_cursor_info *info,
> +					unsigned int possible_crtcs)
> +{
> +	struct vs_plane *plane;
> +	int ret;
> +
> +	if (!info)
> +		return NULL;
> +
> +	plane = drmm_universal_plane_alloc(drm_dev, struct vs_plane, base,
> +					   possible_crtcs,
> +					   &vs_plane_funcs,
> +					   info->formats, info->num_formats,
> +					   NULL, DRM_PLANE_TYPE_CURSOR,
> +					   NULL);
> +	if (IS_ERR(plane))
> +		return ERR_CAST(plane);
> +
> +	drm_plane_helper_add(&plane->base, &cursor_plane_helpers);
> +
> +	ret = drm_plane_create_zpos_immutable_property(&plane->base, info->zpos);
> +	if (ret)
> +		return NULL;
> +
> +	return plane;
> +}
> diff --git a/drivers/gpu/drm/verisilicon/vs_plane.h b/drivers/gpu/drm/verisilicon/vs_plane.h
> new file mode 100644
> index 000000000000..0416146226a8
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_plane.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_PLANE_H__
> +#define __VS_PLANE_H__
> +
> +#include <drm/drm_plane_helper.h>
> +
> +#include "vs_drv.h"
> +
> +struct vs_plane *vs_plane_primary_create(struct drm_device *drm_dev,
> +					 struct vs_plane_primary_info *info,
> +					 unsigned int layer_num,
> +					 unsigned int possible_crtcs);
> +
> +struct vs_plane *vs_plane_overlay_create(struct drm_device *drm_dev,
> +					 struct vs_plane_overlay_info *info,
> +					 unsigned int layer_num,
> +					 unsigned int possible_crtcs);
> +
> +struct vs_plane *vs_plane_cursor_create(struct drm_device *drm_dev,
> +					struct vs_plane_cursor_info *info,
> +					unsigned int possible_crtcs);
> +#endif /* __VS_PLANE_H__ */
> -- 
> 2.27.0
> 

-- 
With best wishes
Dmitry

