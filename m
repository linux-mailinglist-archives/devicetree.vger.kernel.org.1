Return-Path: <devicetree+bounces-148429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DA7A3C057
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 186F717B65A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F25D1E3790;
	Wed, 19 Feb 2025 13:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="lOqoTwCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C0B1D5175
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739972515; cv=none; b=cyX7dlqTWpoViI/t7dtkrBCIN9dIvEidLnZaRz3iIcu6rZOS9MDXs46fI8GS8cfVlnBYld/DFnevIb9vat5grqxsWiN5/R/MO85mNVHiUgLDW5eAzP6aNOnjGt5SKVH9evmzKyX5KW+m9l4GVWinygJdNh24xYwvJIhdpjUJo/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739972515; c=relaxed/simple;
	bh=MSbo5OyVwpx0ccYvcjvrWMHWauQADeNmshAHT3OzVbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xd/urwcEWAbw7RIfOM5WI8UYiJ3qIYGIcbnbupIwljvdo6qo7PPEVWjnCX3iNnHjbRQ6oi82ufcCxkOR5s8wavoikSNGUivIrczL1uajq8+Stnv9TkUZ9d5wNedCuQsgqErpc+Eroqgnn4fQEB0fAOLcM8PFelhkm0FaDQcmzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=lOqoTwCJ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43995b907cfso11943625e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 05:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1739972512; x=1740577312; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YhEsWoeyFhMZ+H0YbRGARkl/BdUesonQu+oufx1Ijlo=;
        b=lOqoTwCJEGXEtQKjj3/sVEyB7DN/AlPyo4iCEwin2HXxKZdRTyGCDUrFV81/G9kQyj
         wEa6qdaQVbah3EIng4teYj0IffTE/koDURkId7Up3XNouicYilxGUg6p58eCzOV1g3l1
         +a1orOZWVjhE0ilPHaMqhDpirQyt9GsqL8qBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739972512; x=1740577312;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YhEsWoeyFhMZ+H0YbRGARkl/BdUesonQu+oufx1Ijlo=;
        b=GgkOEZXiqfwRQDwKJLiW4601XP1oPBRzbGCZaI39WfsfRpHQhy0jcDsUh1mWC0bvoj
         DCVJNIwF/A2vCGmVObRZDuOerLd99UvCGP8GgVa4RyoGBGwYbPyFgfNA6Bt/EM0eD2Y2
         Mu6y+y3WAex84t8z5l45pLbS2BlHRwa6o8wRlKapdBPYocfmhBzyxy0P+aSYsIct1zYT
         On5Pzy7fTzpXTTU28z+PyJCrNz10Jrg495dYp5YNqIcr82R8taDzcKeydYirGUL9Wood
         xj5tOlaLQnq/axBX6FtMQjevkN2aLtEeHeqeDxiArhF36MHVbYZ8AMOzBO5e7gowFq+4
         Wm6w==
X-Forwarded-Encrypted: i=1; AJvYcCWBNrPPCXs79yVdXw4NElmR9rZtFz5pC38PUqGW3fql3mebzbUICAkjgsApsr4c/V0FJDK7mUaiub4P@vger.kernel.org
X-Gm-Message-State: AOJu0YyK11YEHOwzEpiQb7ys9J3M1fjE1bpj15Q6Kx1UiOxxvhwH6hFw
	xzZYvOhN3X5rHCNYb5W9RhV0OVk7NFGec/lRw8TsXrQaDK9xTc0DGvKuoQ1d2xY=
X-Gm-Gg: ASbGnctBupIQiesiawsyPVvATThYjWf0fJhRnCu4iWnZwMhxHl7Y3qLN/u0cY3BK1x4
	RlL7wwCR7Dt3R7M4Os28O8zUK7JnlGopm6LDaj33ihew8p5AZxXNbqOBhlF7Fdr6lujjpR7Tn/V
	e0DMDXi/PdMT7ctMmIC3Npzy9PLVQwQhSvHPHOeTh4nDXulpW4DiZw8Fs3JeicBzZFxB01J03+X
	Jocy+8pjhkGj59XuYcc2ykXrQ/cLLfJmXVVWNxOpnXgr0WVo6ieiE/mOfX1LFT7TbpkYe1MT66I
	9z0gvNZOmg/iusvM+bUK9YpMDRs=
X-Google-Smtp-Source: AGHT+IH5SPDJC9pS46sc9lnXQknme1kBqPSFPC97vyzoPEWE/sFG6YIJSWi/4TZyqRhIbFPVeJg7KA==
X-Received: by 2002:a05:600c:1c12:b0:439:9a5a:d3c4 with SMTP id 5b1f17b1804b1-4399a5ad56amr28220925e9.2.1739972511749;
        Wed, 19 Feb 2025 05:41:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b4491sm17570552f8f.7.2025.02.19.05.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 05:41:51 -0800 (PST)
Date: Wed, 19 Feb 2025 14:41:48 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 2/4] drm/atomic-helper: Introduce
 drm_atomic_helper_reset_crtc()
Message-ID: <Z7XfnPGDYspwG42y@phenom.ffwll.local>
Mail-Followup-To: Herve Codina <herve.codina@bootlin.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	=?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250203145824.155869-1-herve.codina@bootlin.com>
 <20250203145824.155869-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203145824.155869-3-herve.codina@bootlin.com>
X-Operating-System: Linux phenom 6.12.11-amd64 

On Mon, Feb 03, 2025 at 03:58:21PM +0100, Herve Codina wrote:
> drm_atomic_helper_reset_crtc() allows to reset the CRTC active outputs.
> 
> This resets all active components available between the CRTC and
> connectors.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 41 +++++++++++++++++++++++++++++
>  include/drm/drm_atomic_helper.h     |  2 ++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index 8ed186ddaeaf..cac807df8a86 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -3363,6 +3363,47 @@ int drm_atomic_helper_disable_all(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_disable_all);
>  
> +/**
> + * drm_atomic_helper_reset_crtc - reset the active outputs of a CRTC
> + * @crtc: DRM CRTC
> + * @ctx: lock acquisition context
> + *
> + * Reset the active outputs by indicating that connectors have changed.
> + * This implies a reset of all active components available between the CRTC and
> + * connectors.

I think you definitely want a

	Note: This relies on resetting &drm_crtc_state.connectors_changed.
	For drivers which optimize out unnecessary modesets this will
	result in a no-op commit, achieving nothing.

> + *
> + * Returns:
> + * 0 on success or a negative error code on failure.
> + */
> +int drm_atomic_helper_reset_crtc(struct drm_crtc *crtc,
> +				 struct drm_modeset_acquire_ctx *ctx)

So this is pretty close to DP drivers doing link-retraining when
reconnecting a cable. Would be really nice if that could also be rolled
out there where it fits, and maybe augment the documentation accordingly
so that dp helpers point at this?

Either way would be good to extend the kerneldoc a bit to explain what
this is good for. Either way.

Acked-by: Simona Vetter <simona.vetter@ffwll.ch>

Cheers, Sima
> +{
> +	struct drm_atomic_state *state;
> +	struct drm_crtc_state *crtc_state;
> +	int ret;
> +
> +	state = drm_atomic_state_alloc(crtc->dev);
> +	if (!state)
> +		return -ENOMEM;
> +
> +	state->acquire_ctx = ctx;
> +
> +	crtc_state = drm_atomic_get_crtc_state(state, crtc);
> +	if (IS_ERR(crtc_state)) {
> +		ret = PTR_ERR(crtc_state);
> +		goto out;
> +	}
> +
> +	crtc_state->connectors_changed = true;
> +
> +	ret = drm_atomic_commit(state);
> +out:
> +	drm_atomic_state_put(state);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_reset_crtc);
> +
>  /**
>   * drm_atomic_helper_shutdown - shutdown all CRTC
>   * @dev: DRM device
> diff --git a/include/drm/drm_atomic_helper.h b/include/drm/drm_atomic_helper.h
> index 9aa0a05aa072..53382fe93537 100644
> --- a/include/drm/drm_atomic_helper.h
> +++ b/include/drm/drm_atomic_helper.h
> @@ -139,6 +139,8 @@ int drm_atomic_helper_set_config(struct drm_mode_set *set,
>  
>  int drm_atomic_helper_disable_all(struct drm_device *dev,
>  				  struct drm_modeset_acquire_ctx *ctx);
> +int drm_atomic_helper_reset_crtc(struct drm_crtc *crtc,
> +				 struct drm_modeset_acquire_ctx *ctx);
>  void drm_atomic_helper_shutdown(struct drm_device *dev);
>  struct drm_atomic_state *
>  drm_atomic_helper_duplicate_state(struct drm_device *dev,
> -- 
> 2.47.1
> 

-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

