Return-Path: <devicetree+bounces-133532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD9C9FADBA
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:32:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5DB61883AF7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D9C1940B1;
	Mon, 23 Dec 2024 11:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="degpXOUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD907DA8C
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734953537; cv=none; b=mVPCml9ZTsY4m1x6GbUBFyW3O9J6tROb9iWZiKx9eQxwjxIbSX4H4CKe8OpTqcbqdtOUz92JyoV9F92r/gaBmjfpZwDKhdNwBwR1ChlT2zfx8GqrUVhzEYp2Nc5BAVViVUiDehg+Lcq+ZRXKVmWfaFNWn7lgjW0tVyvnbHuxoJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734953537; c=relaxed/simple;
	bh=dwgXZ7OjRV0NuQeTGYq8Bqun8q13W8uT0PDCRiPFdCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RCr8wA+SZa8UT9DxywJduu6EXwIYnB7EV23A51kJ5eg/A91g9wP4Wq6G7mS5N0iaJz6xOwCNMP1gpkldwyJjggqhb4ZZdEN9Amf2GfHdSCzh1m1NDute813cw6TdiyZha9tpCUz0crlElOc+UXQK7R6i79lyC4dJ8UXFpsTs/QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=degpXOUh; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so5428111e87.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734953534; x=1735558334; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Io0aFnNNwQiWHsIlYK7BZZBTMpe4hxTbSGJahPhqnd0=;
        b=degpXOUhTVgMxBO7onRSpHmhQqHRnzl5eyM6t2m7NL93bpeUO0iVYeO0FAglcfCn/y
         37C9UEgovpKpb+QWuQfpotDl+6FnuFfJ54i50eDf3pXK9nlU+58wXaN7ff437m/l8yFl
         ajHTvL35e217sDhPQYx34TtSmMgHT+vK4NRyxEG6lefxqgDVZBlfL1CjSuMqswLNovCN
         4k8HF6n3moT4yIwnYK0DWkmKZfGamQK8yLogOaoY1QMu+q4zK6EvI13T4O2A7/ZFOEiW
         20ma+jjmuv+hw6tozhDGVMOdXoSXwPBZ+hdUMsT1edQrQ4v6EJtU5JGRRLVv8A200AsF
         ao5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734953534; x=1735558334;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Io0aFnNNwQiWHsIlYK7BZZBTMpe4hxTbSGJahPhqnd0=;
        b=Q/0N5D3s+66Iqv0JPEZ9fn4UqHr4qotWO32ME5pW5H8S4DlkMO6yJ6FLdYOSprxCIV
         YuRveFpN7qmo66zj0gFqwIpIbhBP8UGNtYZNMKFa4oNLHE0TzuhXJnnUZV6phJpD5F9Y
         9srgrb0baDHm6Ta84qQDiveMMeuazNdNnF5TaX5jGB5m+r5EkB/uJ2UvWSoPFwE3ypRO
         7FRgBDGhxK24zHyQLusH8yAxtheFtZjqHQ46NZoBk7x62GzpGJOKleREGBNkGXGNuDdz
         f6VwW8X1MbTfcHLUNcPjlJ/S1IzSHu0hfqZOr/BM/DJV5lK+SKaXnfjYU3rhGBK1ty94
         4uFg==
X-Forwarded-Encrypted: i=1; AJvYcCV5Irl4VtMduwoVRrxykSwMlIDglcmRVaEF0RnfGP8ojhgyi9Fms/ymMo2SwM443sSpiwEt7qYYfbeL@vger.kernel.org
X-Gm-Message-State: AOJu0YzVf72/9dZFDJUly/Q5CHh8VN7Ki4BkLBd8pnyaSvzSumP8VCDV
	8IQTp4adVDbq1S0cmiM3kbhPLg+bf763Xgit199GtEcS5gEmU/LB9RAQ6v89wiw=
X-Gm-Gg: ASbGncsygMR8V8Bi9y8PYx0VUY9DQ3BnPdzV1YJ9fUMnny1L3HloNk3Ha0Dy44ifd01
	BWbF6RqCqdGA6F4Dzdz1eS2o/r7CQ35oa1k133TygQwyfXOoEMRdZhnlg0RGbVrhvQh83EpMGGX
	tYyPJ5c330uru6iK0gI/lxNISwpjQMF6J+G+PFfYGH3z70lsjN9G/k4MdIQWSufoOu2YHFKrh+W
	CSj/JNGkm38uRvgVgy8Ycum7VH8cIFzX8aV9EfhzIUmrqL5szCQrP8B7rZKl7tyRjOrlgtMHxtD
	u7EAbBYGBdkgNsvuONI3VxE1EwyKdAODi10m
X-Google-Smtp-Source: AGHT+IFQAVVka8tfhQQLypKSuFFeZTfbXIdbwFKArHWMlABaOq9wX6sZw2Zp8LWAHfr0uv4tXZ5d1Q==
X-Received: by 2002:a05:6512:23a2:b0:542:1bdb:9a61 with SMTP id 2adb3069b0e04-5422946f053mr3666830e87.19.1734953533962;
        Mon, 23 Dec 2024 03:32:13 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223831fdesm1270675e87.241.2024.12.23.03.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:32:12 -0800 (PST)
Date: Mon, 23 Dec 2024 13:32:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 12/19] drm/imx: Add i.MX8qxp Display Controller KMS
Message-ID: <wpxxedxabgo2kxf5wuosu76i5ud3ce2tywm2imhvad4nyy5u2d@qgfhev2hndba>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-13-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-13-victor.liu@nxp.com>

On Mon, Dec 23, 2024 at 02:41:40PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller(DC) is comprised of three main components that
> include a blit engine for 2D graphics accelerations, display controller for
> display output processing, as well as a command sequencer.  Add kernel
> mode setting support for the display controller part with two CRTCs and
> two primary planes(backed by FetchLayer and FetchWarp respectively).  The
> registers of the display controller are accessed without command sequencer
> involved, instead just by using CPU.  The command sequencer is supposed to
> be used by the blit engine.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Drop using typeof in macros and explicitly define variable types. (Dmitry)
> * Add a comment for disable_irq_nosync() to explain why _nosync. (Dmitry)
> * Inline dc_crtc_check_clock(). (Dmitry)
> * Use global drm_dc->pe. (Dmitry)
> * Drop dc_crtc_disable_at_unbind(). (Dmitry)
> * Add kernel doc for struct dc_{crtc,drm_device,plane}. (Dmitry)
> * Define common IRQ handlers separately for each IRQs. (Dmitry)
> * Rebase this patch upon next-20241220, so drop date entry from drm_driver
>   and correctly include drm/clients/drm_client_setup.h.
> * Collect Maxime's R-b tag.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-drv.c. (Uwe)
> 
> v4:
> * Move dc_fg_displaymode(), dc_fg_panic_displaymode() and dc_lb_blendcontrol()
>   function calls from KMS routine to initialization stage. (Dmitry)
> * Drop dc-crtc.h and dc-plane.h header files and move relevant defines to
>   appropriate .h header files or .c source files. (Dmitry)
> * Drop futile "else" clause from dc_crtc_common_irq_handler(). (Dmitry)
> * Drop dc_drm->pe_rpm_count. (Dmitry)
> * Drop DC_{CRTCS,ENCODERS,PRIMARYS} macros and only use DC_DISPLAYS. (Dmitry)
> * Drop drmm_kcalloc() function call to allocate an array for storing IRQs.
>   Instead, put it in struct dc_crtc.  (Dmitry)
> * Call devm_request_irq() to request IRQs, instead of using drmm action.
>   (Dmitry)
> * Call devm_drm_of_get_bridge() to find the next bridge. (Dmitry)
> * Select DRM_CLIENT_SELECTION due to rebase.
> * Select the missing DRM_DISPLAY_HELPER and DRM_BRIDGE_CONNECTOR.
> * Use DRM_FBDEV_DMA_DRIVER_OPS due to rebase.
> * Replace drm_fbdev_dma_setup() with drm_client_setup_with_fourcc() due to
>   rebase.
> * Replace drmm_add_action_or_reset() with devm_add_action_or_reset() to
>   register dc_drm_component_unbind_all() action.
> * Request interrupts in dc_crtc_post_init() after encoder initialization to
>   make sure next bridge is found first.
> 
> v3:
> * No change.
> 
> v2:
> * Find next bridge from TCon's port.
> * Drop drm/drm_module.h include from dc-drv.c.
> 
>  drivers/gpu/drm/imx/dc/Kconfig    |   5 +
>  drivers/gpu/drm/imx/dc/Makefile   |   5 +-
>  drivers/gpu/drm/imx/dc/dc-crtc.c  | 556 ++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h    |   3 +
>  drivers/gpu/drm/imx/dc/dc-drv.c   | 238 +++++++++++++
>  drivers/gpu/drm/imx/dc/dc-drv.h   |  22 ++
>  drivers/gpu/drm/imx/dc/dc-kms.c   | 143 ++++++++
>  drivers/gpu/drm/imx/dc/dc-kms.h   | 131 +++++++
>  drivers/gpu/drm/imx/dc/dc-plane.c | 241 +++++++++++++
>  9 files changed, 1342 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-crtc.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-plane.c
> 


> +
> +static int dc_plane_check_no_off_screen(struct drm_plane_state *state,
> +					struct drm_crtc_state *crtc_state)
> +{
> +	if (state->dst.x1 < 0 || state->dst.y1 < 0 ||
> +	    state->dst.x2 > crtc_state->adjusted_mode.hdisplay ||
> +	    state->dst.y2 > crtc_state->adjusted_mode.vdisplay) {
> +		dc_plane_dbg(state->plane, "no off screen\n");
> +		return -EINVAL;
> +	}

Nit: doesn't drm_atomic_helper_check_plane_state() ensure in this already?

With that in mind

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +
> +	return 0;
> +}
> +
-- 
With best wishes
Dmitry

