Return-Path: <devicetree+bounces-137052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA844A075FA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2560B3A1385
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6742421660C;
	Thu,  9 Jan 2025 12:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="abEftvuJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70253201036
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736426738; cv=none; b=Na9JNYrd3CtahvB25ZJoAkZXspSgYpfkdpdLV6NrzzayIaCL9Cea+kF4tVITIn9rMI1cHZrKlzlSiJc5p18lD5PUnSrcoplSI14moMS6Wzo7yUfGABsVHmMWKdVtbk8GkBCkw7V31rsqyzN+AMjqAqzQ2y42tUsZ86JnE5NZdfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736426738; c=relaxed/simple;
	bh=5PPwz3VkKzGEpX2aNq+UQg7iDH6hid4EKXhJy2PcjHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUFW+wP1Vb8RLpBcX75nzVI1+Ip/xWLjnCfwXvSxk4B09vdV6nRxUNWRFaRLlloA6VqnxAYih8rEA7Tz87z+eYTUkF55oJ9V9VVqFlzNjogxZHhibWgJpSwHuBqvIHQvUH6rY1UZsjA74IY3XbOJSFfQeZn94pHkgMrOkCEvRHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=abEftvuJ; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-304d760f12aso6628161fa.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426734; x=1737031534; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=abEftvuJwAPsqOodWe0VLwpr/pVdGd03+a1T65Tq+Ie6va+q+9Slhbnw70T6hAIe+V
         ej8SWNfy8baFODtAgHa0AOwzwRVPff9qz6PNZgeRIJsgDE+Y//UP7fI+BsczZfnoWxTW
         QKUykouKnqXvzHidsRmQShtml1WNULPrrGkfR1Qslee/69jrq6xq6o3a3Kr47o7M+18r
         4JpGB/1CG32k0v5uLZyUYOhIWcf+XoqA3i7aCZlfp1Q57gFn5iTQt7Dg90ndpcNn2ota
         nRLz38luejyoj1kAcMMijqFljLo4+cERQ9zBAb+7oGKE6pHdUY+GuK1yUl6FYDogRfsl
         yiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426734; x=1737031534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=wUyIe6ypPTSxIoZM9EbNY72QkU3eA7OZgyPaKR2pHdN5R/OGr4U+Qzf/M7lkK9u2o1
         KydZc46bWLCAtPOPeveSssST4BPIjqLol4UrfG542fv1Fi+OBrDslmKC/FrphkLbVcXO
         C/B0GeBuYNGvk8qPHYqhJIz2nxktNrWrpSMype68I+956PgTgnVeDWvzIVVPO/WzBE6s
         WbeiW+ywJ2JVgP1XWAwxqhU8GJgLm3vhCkywAtSbzqq1JWYV57YCCsmINce4wF67VqUj
         K+Lp9Dbcv9LN3wBopWwv4FmMxrF1beMtavjGQGvr0ihKAIf/gQvqquWUR07f/FL9JSwi
         0q0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSLXuChOq9ZN2KxJUzgQpa7E1oTWdv8Nuby0dsURDWfhNDuKlc+0SK/ss7B/pmYzEhCKP7s+QWgEW3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4C+ap3n78NX1ILsC0B221h931XIsBFbhXXOSDzAVeNnwsZeQW
	leZhbPfvgYY/f7YVILon0NGR7UsgGOYZchNIaRRYvwnE6vPqlzAxOuD1wD3fBCc=
X-Gm-Gg: ASbGncs+W/EEi31Kg25wEVYHO3C10ZIEs4Eiusn4r8LkxuaddZtNQsmZyrzgIWO6k8/
	YykbgljglgNW7ABTIi5n7FfLx0XX5daeXW1eHweAWWfx44BPxLdtNeBlUsp7oz6A6Y6n7PuHTWf
	Cuh8jbRaX1tKYr/nXZ5AexTr6GKVVF6fS1UMmNqlwLwV9O9eeY9mEpEs9AKHHjUq4cmkNQn/YO4
	ZJ99ufSXQd92kb+InhDUxB3hPQmJqT+EH4LL7gljbGYFFL9AcRXIAX4uPYNBlBeU92w+xvlmXlM
	Nv9clO/49VE65+qDnFdIdYBlx2jPYIyexa8P
X-Google-Smtp-Source: AGHT+IElPQjul5XrLoFmXQxy4bhtqUX4GjET6+7h8yvFk+lQX7gbeGOus+f4biXivZj6ML5v9KKwQQ==
X-Received: by 2002:a05:651c:f11:b0:301:2d8d:a3ba with SMTP id 38308e7fff4ca-305f45a06d8mr18524331fa.23.1736426734459;
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0cfc32sm1877911fa.45.2025.01.09.04.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Date: Thu, 9 Jan 2025 14:45:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <v3is3v3fpx42i2eh2qrfkx3qx3z7iema3honi544qoc4j2whdo@h6ajv5h53gry>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-12-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-12-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:16AM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operaions to
> ensure that eDP controller and phy are prepared for AUX transmission.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
> 
> Changes in v5:
> - Advance PM operations to make eDP AUX work well
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
>  1 file changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8251adfce2f9..78e78fb474d3 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  	return ret;
>  }
>  
> +static void analogix_dp_runtime_disable(void *data)
> +{
> +	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_dont_use_autosuspend(dp->dev);
> +		pm_runtime_disable(dp->dev);
> +	} else {
> +		analogix_dp_suspend(dp);
> +	}
> +}
> +
>  struct analogix_dp_device *
>  analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  {
> @@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  	}
>  	disable_irq(dp->irq);
>  
> +	dp->aux.name = "DP-AUX";
> +	dp->aux.transfer = analogix_dpaux_transfer;
> +	dp->aux.dev = dp->dev;
> +	drm_dp_aux_init(&dp->aux);
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_use_autosuspend(dp->dev);
> +		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> +		pm_runtime_enable(dp->dev);
> +	} else {
> +		ret = analogix_dp_resume(dp);
> +		if (ret)
> +			goto err_disable_clk;
> +	}
> +
> +	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);

This looks like a local version of devm_pm_runtime_enable()

> +	if (ret)
> +		goto err_disable_pm_runtime;
> +
>  	return dp;
>  
> +err_disable_pm_runtime:
> +	analogix_dp_runtime_disable((void *)dp);
>  err_disable_clk:
>  	clk_disable_unprepare(dp->clock);
>  	return ERR_PTR(ret);
> @@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  	dp->drm_dev = drm_dev;
>  	dp->encoder = dp->plat_data->encoder;
>  
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_use_autosuspend(dp->dev);
> -		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> -		pm_runtime_enable(dp->dev);
> -	} else {
> -		ret = analogix_dp_resume(dp);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	dp->aux.name = "DP-AUX";
> -	dp->aux.transfer = analogix_dpaux_transfer;
> -	dp->aux.dev = dp->dev;
>  	dp->aux.drm_dev = drm_dev;
>  
>  	ret = drm_dp_aux_register(&dp->aux);
>  	if (ret) {
>  		DRM_ERROR("failed to register AUX (%d)\n", ret);
> -		goto err_disable_pm_runtime;
> +		return ret;
>  	}
>  
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
> @@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  
>  err_unregister_aux:
>  	drm_dp_aux_unregister(&dp->aux);
> -err_disable_pm_runtime:
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  
>  	return ret;
>  }
> @@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
>  	}
>  
>  	drm_dp_aux_unregister(&dp->aux);
> -
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_unbind);
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

