Return-Path: <devicetree+bounces-140545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E21BA1A2E2
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:25:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E8597A03DC
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAAF320E308;
	Thu, 23 Jan 2025 11:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yI+ivfPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DDB20E02F
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631540; cv=none; b=gLsyz39XkkLxf79rHg8TxX24hX9+GDkGmZnCaq38Dk3tZA7kNmzaSrVQDZ/qxi2tjPpd197Vp/6bFCsuS4N2ose8+/t2vA1iKwSLKdkyCPEEUR42V50pi4jOjR4oij8hZPg1HRX4V8U+ceAcx5H8nfB7dWtk8QzOwoncl/1lG1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631540; c=relaxed/simple;
	bh=VJ6XLJAUaCiOv1LKAgWnNncLhIynNZ7QkYOvlBAzFM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FfUa4vtQK4cq7L1HT03qqZmhz5SH1PvRRlNgKw0HaHSKyiPFOEEykFJNEg9iwXPBvMgDVFuJgsZiRbBFfQwhaQ9Uod8Ao5yH1BvFIsYzuqo6zmu5yrppNeUJcZz0iunC6rIo5Hq0rbiJ1E40xOdBcjkG+BluBCuBYfwz6Txr8nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yI+ivfPA; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54026562221so777666e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631537; x=1738236337; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bNbAEqQ3dzAhzmo5DcpNruuevQ1QRA6TJaugf1zsVsY=;
        b=yI+ivfPA8/W9yKGRRK5ohAhr6ZUjr9Jow3PKBx7/SSzCgF/DUzQYSgMx0mMneA8jKR
         vYNAkcypFJofPGzYANwB4Ur6xY3q0xcJVXvICc0nWwqneQFwUB6pljSzYX6ocoJ5YLV0
         MBtAyFX+s7jiySXLTrWA4o96AvHgC17YCCs2Goi+5MUxWXN+BOiAK03YfRdNWAK4r04t
         A+v663ArtWSYl+VyflC2Ra8w3TJtrwEEBYzhOVd+A63uOduFDTaFzPttPUDlwWJl+vrG
         Q5Q6h9MT23WJcvdRhL8oqTK2ElS+jt0GTllaHaparaymdq+yUpY2+ALMS2kqGZ9ceATk
         fixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631537; x=1738236337;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bNbAEqQ3dzAhzmo5DcpNruuevQ1QRA6TJaugf1zsVsY=;
        b=a3Is6GqBHmBK1MMpgy/Ey1fJ7Jg5bH5KxdDSirJt26lZZYucnXbg0O3ft2MsALEvXm
         pOQez2SnRNbNe8WW2ImZckbfdXL/BrNGLnC5F+lZfRgBuxSjH3mUD7A0zvizrDTdLmE1
         aa7+FKSFE5kUUPp6N9lgRTTcyP3H55Gpp6rPOOi9NPtPiNJ0EuQ3NR0cZF9DOaN7LCAF
         n005Ad9wtaMU2By6snWuyKLVZqhoU+luPZnpz9Z1V4MEKjT7nX8fSvJtzJRFW0ma39mE
         PYlM7QyoX25oBv/DW9CC34ns4BqWD9Uy8F1czcQ1NcXZvWBvpHRZUuB7tgK2H3OeyrjS
         et1g==
X-Forwarded-Encrypted: i=1; AJvYcCUpveQ9IKcDx2TJuTCiQalIF2gVw42P4zO03vJnTP7WxVmd7yFbn/6gdEI52kvn0EyHtCAjw/TZLOAQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzHzeU40xQ4sqc6qKb0Y2re9slRtOHAXEdLDAOM6R2xOjSZ5ugk
	9ueflkgnNDckyQ2gT3E8Agp3uVFyOyTHcSu/HihGzpctqr/tNYiqbSuQO6kBjQs=
X-Gm-Gg: ASbGnctV4MjR7JgbAROU3UnVb3wQXjK/Hgjycxt0hqIgq8cm2XCrpBjNMVA5tHnX1fj
	u2oOFS/joGs/xfdxfcZ6n8Fh1vwX5WF5rZ+ROVlm0zEuBLV54UObaVjIKaBnTrG1GgrqcQVYdex
	tz2y5OtcNmfsMqK2AcLlmKvABPZ3s2sVcUJjM/ugPgLxWV84i0hwiBKlmP9RfQ3F+9Rj/Yqwmt3
	tsmgEw73XHi1QYovERdT7B+GbypPXINf/XcBud4NUcubLyuu5Hzu+dlM65Im4PFRdeggWOwA8hB
	oMm2a/h5Bf+yCBWeVAuKk6hWiXgo58A1GAmEyjFIZDXyE57AXL8Ev1XNwxft
X-Google-Smtp-Source: AGHT+IE6ibA+SRqqESfpmIp0xn+MDgVnaMtNtXwPAf6a4XrGleP9tXnk5wy5cdgtpp2cytg3OJlqNw==
X-Received: by 2002:a05:6512:e83:b0:542:2a81:a759 with SMTP id 2adb3069b0e04-5439c21f23dmr7041361e87.2.1737631536605;
        Thu, 23 Jan 2025 03:25:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af78955sm2603438e87.234.2025.01.23.03.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:25:36 -0800 (PST)
Date: Thu, 23 Jan 2025 13:25:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>, 
	Douglas Anderson <dianders@chromium.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 07/14] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <fw74xd2hgwc7iodhh5wb3ovd26tzlsomgypx4hqlqrxl4k2mdf@pycb5ugojyhr>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-8-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-8-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:40PM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operaions to
> ensure that eDP controller and phy are prepared for AUX transmission.

This doesn't sound right. Per the documentation of
drm_dp_aux::transfer(), the device should power itself up if transfer()
is called when it is powered off. The caller must only ensure that the
panel is on.

Doug, what's your opinion?

> 
> In addtion, add a new function analogix_dp_remove() to ensure symmetry
> for PM operations.
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
> 
> Changes in v6:
> - Use devm_pm_runtime_enable() instead of devm_add_action_or_reset()
> - Add a new function analogix_dp_remove() to ensure symmetry for PM
>   operations
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 57 ++++++++++---------
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  4 ++
>  include/drm/bridge/analogix_dp.h              |  1 +
>  3 files changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8251adfce2f9..30da8a14361e 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1658,14 +1658,42 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
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
> +		ret = devm_pm_runtime_enable(dp->dev);
> +		if (ret)
> +			goto err_disable_pm_runtime;
> +	} else {
> +		ret = analogix_dp_resume(dp);
> +		if (ret)
> +			goto err_disable_clk;
> +	}
> +
>  	return dp;
>  
> +err_disable_pm_runtime:
> +	pm_runtime_dont_use_autosuspend(dp->dev);
>  err_disable_clk:
>  	clk_disable_unprepare(dp->clock);
>  	return ERR_PTR(ret);
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_probe);
>  
> +void analogix_dp_remove(struct analogix_dp_device *dp)
> +{
> +	if (IS_ENABLED(CONFIG_PM))
> +		pm_runtime_dont_use_autosuspend(dp->dev);
> +	else
> +		analogix_dp_suspend(dp);
> +}
> +EXPORT_SYMBOL_GPL(analogix_dp_remove);
> +
>  int analogix_dp_suspend(struct analogix_dp_device *dp)
>  {
>  	phy_power_off(dp->phy);
> @@ -1708,25 +1736,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
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
> @@ -1739,13 +1754,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
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
> @@ -1762,13 +1770,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
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
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index a63c2c867059..13f32aeea7ca 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -459,6 +459,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  
>  static void rockchip_dp_remove(struct platform_device *pdev)
>  {
> +	struct rockchip_dp_device *dp = dev_get_drvdata(&pdev->dev);
> +
> +	analogix_dp_remove(dp->adp);
> +
>  	component_del(&pdev->dev, &rockchip_dp_component_ops);
>  }
>  
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 1b119b547988..d9b721fd7201 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -43,6 +43,7 @@ int analogix_dp_suspend(struct analogix_dp_device *dp);
>  
>  struct analogix_dp_device *
>  analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data);
> +void analogix_dp_remove(struct analogix_dp_device *dp);
>  int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev);
>  void analogix_dp_unbind(struct analogix_dp_device *dp);
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

