Return-Path: <devicetree+bounces-113207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A29A4E8E
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C51428629A
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 14:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFCC47A60;
	Sat, 19 Oct 2024 14:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cPm96Gq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC7839ADD
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 14:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729347267; cv=none; b=YdYa9DdJ6Ml4qEW2Co2ML+JjUm4rR29tOM1HjAanT8N0xz8iJOxxishpxn6iwWJVmN+FwIiwCsjIXzCh6F4yyXT5OHyHtrOvYXC5iQQBOu3/J/VENLelXfGOaSmAkClshlwb2/dNOkbldVZ3CrFhZnVJO9z9hTsk9XWbynAF+Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729347267; c=relaxed/simple;
	bh=K/FugdwtDsOBQVpWzEqCm4CMqjmDrl2cnTsdg6+InVs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B1MVbaxdEAsHlhPFlNcu+dfzpveoToVa4dUehtl9OwijhhGY/5rsS/1kzyS/P1dGDRceulMln9XacfuCgTbkIYX2qnv+cSIGlEv2uAwoSUyBGiUjtbrt0pjIfx3xhcYzH87jndS6EPRnNiLs5IKu4xdiqZFYiyF96KR1ezs0Rvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cPm96Gq/; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb559b0b00so27406461fa.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 07:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729347264; x=1729952064; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sZQKGhids4Q82uDym0yxnTsBolQaUr1BmnikbSV6eUY=;
        b=cPm96Gq/re5yw4iGDGOZ7Yy5htAPiSGbZ9IjgATfBE1ZtFMJKq56IBC/OhwZYDSw5T
         1WmcWznp4Kr9/nt7HqoLWjnQNj0euTKHZZyANFbMfCJ6buxaPRmVNeJFA/H38OIPEpQX
         N5IXueSNjV3OsbUTjqN0KtMvs4nkt3W9YkevMXNL7SnpmM8adCTn/kMkaV0yJGiezsBX
         isANDQ81cf/Srs4dN9Ss2D53khbd0g14afqHBsBXdQTOk4MymEASvjEuC/f2ddLpFTA9
         vr24RLj0DlM2Mi0ViojIcOCmH5kj+xBYm7J9BKr6GJeBRuFOvpJKfV83ZiEKl09mGw6P
         8V2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729347264; x=1729952064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZQKGhids4Q82uDym0yxnTsBolQaUr1BmnikbSV6eUY=;
        b=cEwfB8tiC9dqGBLfNilSxSM010GrgazjvXU68W/21S13IDGjXponAAwyaboPTQlBWE
         1ESdyEEA7yUKnPLvpOSguuEqCoSA1clEgmVC0J5cZHb8Dhq5UfE2zH4VZ5pTb18peupP
         wt8vrDW78vMyTHEGNrk2NccbKaf62UuB4qDQX02m9QLdSVTljMMlD5nviNOWkyy5N63N
         EAjBoxZgjuTM6OmkqGEQt8JoFiJ2SYJQP8sZGy/j2NgMRCOcZZLwVGBeAVvh7zdOVf51
         pumI9mdraeX02bvkpVh3MFnPX0sgc2c0tg9FON0JuirD69Yj7GDGrP3SnrSzeMCg6aRB
         3m5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW69L7/m+rezBFDqYJEfoOkBycU8q8zvWxbBlEHfDpTjpL8X0JWZpcLFgV+NmbMMpZeX7TLMG3RsYKj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1UMKYF0tkvNkAkYvLcRKzcwjIlhaIlgqNhqcvfqw/33vPlf5n
	ibM+ZM6NNO52uxJxa4tHRVqdUaSBJO1eGLrSh4W1Fr6pM8OFemni/LFyMj+jZik=
X-Google-Smtp-Source: AGHT+IGzHb1rffWyHrZTm2xiGlwmytyCfNCauniR0HmfW31srODVd8fWJi7jNSl4XxdH6Wu9L+Un6g==
X-Received: by 2002:a2e:1309:0:b0:2fb:8df3:2291 with SMTP id 38308e7fff4ca-2fb8df322ddmr11397241fa.16.1729347263486;
        Sat, 19 Oct 2024 07:14:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb80a082b8sm5061001fa.101.2024.10.19.07.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 07:14:23 -0700 (PDT)
Date: Sat, 19 Oct 2024 17:14:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ryan Walklin <ryan@testtoast.com>
Cc: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andre Przywara <andre.przywara@arm.com>, 
	Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v5 08/26] drm: sun4i: de3: add YUV support to the DE3
 mixer
Message-ID: <4cumvwkhmbi7fecjeq6r7elon63u3ytootqcvavjg5vfnargy3@wrjpy6pnphmb>
References: <20240929091107.838023-1-ryan@testtoast.com>
 <20240929091107.838023-9-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240929091107.838023-9-ryan@testtoast.com>

On Sun, Sep 29, 2024 at 10:04:40PM +1300, Ryan Walklin wrote:
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> The mixer in the DE3 display engine supports YUV 8 and 10 bit
> formats in addition to 8-bit RGB. Add the required register
> configuration and format enumeration callback functions to the mixer,
> and store the in-use output format (defaulting to RGB) and color
> encoding in engine variables.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> 
> ---
> Changelog v4..v5:
> - Remove trailing whitespace
> ---
>  drivers/gpu/drm/sun4i/sun8i_mixer.c  | 53 ++++++++++++++++++++++++++--
>  drivers/gpu/drm/sun4i/sunxi_engine.h |  5 +++
>  2 files changed, 55 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> index 252827715de1d..a50c583852edf 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> @@ -23,7 +23,10 @@
>  #include <drm/drm_gem_dma_helper.h>
>  #include <drm/drm_probe_helper.h>
>  
> +#include <uapi/linux/media-bus-format.h>
> +
>  #include "sun4i_drv.h"
> +#include "sun50i_fmt.h"
>  #include "sun8i_mixer.h"
>  #include "sun8i_ui_layer.h"
>  #include "sun8i_vi_layer.h"
> @@ -390,12 +393,52 @@ static void sun8i_mixer_mode_set(struct sunxi_engine *engine,
>  
>  	DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
>  			 interlaced ? "on" : "off");
> +
> +	if (engine->format == MEDIA_BUS_FMT_RGB888_1X24)
> +		val = SUN8I_MIXER_BLEND_COLOR_BLACK;
> +	else
> +		val = 0xff108080;
> +
> +	regmap_write(mixer->engine.regs,
> +		     SUN8I_MIXER_BLEND_BKCOLOR(bld_base), val);
> +	regmap_write(mixer->engine.regs,
> +		     SUN8I_MIXER_BLEND_ATTR_FCOLOR(bld_base, 0), val);
> +
> +	if (mixer->cfg->has_formatter)
> +		sun50i_fmt_setup(mixer, mode->hdisplay,
> +				 mode->vdisplay, mixer->engine.format);
> +}
> +
> +static u32 *sun8i_mixer_get_supported_fmts(struct sunxi_engine *engine, u32 *num)
> +{
> +	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
> +	u32 *formats, count;
> +
> +	count = 0;
> +
> +	formats = kcalloc(5, sizeof(*formats), GFP_KERNEL);
> +	if (!formats)
> +		return NULL;
> +
> +	if (mixer->cfg->has_formatter) {
> +		formats[count++] = MEDIA_BUS_FMT_UYYVYY10_0_5X30;
> +		formats[count++] = MEDIA_BUS_FMT_YUV8_1X24;
> +		formats[count++] = MEDIA_BUS_FMT_UYVY8_1X16;
> +		formats[count++] = MEDIA_BUS_FMT_UYYVYY8_0_5X24;
> +	}
> +
> +	formats[count++] = MEDIA_BUS_FMT_RGB888_1X24;
> +
> +	*num = count;
> +
> +	return formats;
>  }
>  
>  static const struct sunxi_engine_ops sun8i_engine_ops = {
> -	.commit		= sun8i_mixer_commit,
> -	.layers_init	= sun8i_layers_init,
> -	.mode_set	= sun8i_mixer_mode_set,
> +	.commit			= sun8i_mixer_commit,
> +	.layers_init		= sun8i_layers_init,
> +	.mode_set		= sun8i_mixer_mode_set,
> +	.get_supported_fmts	= sun8i_mixer_get_supported_fmts,
>  };
>  
>  static const struct regmap_config sun8i_mixer_regmap_config = {
> @@ -456,6 +499,10 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
>  	dev_set_drvdata(dev, mixer);
>  	mixer->engine.ops = &sun8i_engine_ops;
>  	mixer->engine.node = dev->of_node;
> +	/* default output format, supported by all mixers */
> +	mixer->engine.format = MEDIA_BUS_FMT_RGB888_1X24;
> +	/* default color encoding, ignored with RGB I/O */
> +	mixer->engine.encoding = DRM_COLOR_YCBCR_BT601;
>  
>  	if (of_property_present(dev->of_node, "iommus")) {
>  		/*
> diff --git a/drivers/gpu/drm/sun4i/sunxi_engine.h b/drivers/gpu/drm/sun4i/sunxi_engine.h
> index c48cbc1aceb80..ffafc29b3a0c3 100644
> --- a/drivers/gpu/drm/sun4i/sunxi_engine.h
> +++ b/drivers/gpu/drm/sun4i/sunxi_engine.h
> @@ -6,6 +6,8 @@
>  #ifndef _SUNXI_ENGINE_H_
>  #define _SUNXI_ENGINE_H_
>  
> +#include <drm/drm_color_mgmt.h>
> +
>  struct drm_plane;
>  struct drm_crtc;
>  struct drm_device;
> @@ -151,6 +153,9 @@ struct sunxi_engine {
>  
>  	int id;
>  
> +	u32				format;
> +	enum drm_color_encoding		encoding;

Should these be a part of the state instead of being a part of the
sunxi_engine?

> +
>  	/* Engine list management */
>  	struct list_head		list;
>  };
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

