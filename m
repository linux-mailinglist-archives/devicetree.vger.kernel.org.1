Return-Path: <devicetree+bounces-132900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4049F88DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9A4547A27A3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A4917C2;
	Fri, 20 Dec 2024 00:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sNJLhHsU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7BFECC
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653808; cv=none; b=jaOh9YryZSPs0cSfFcuB0FvczB0+kKanqyT0RF5YW7i6Vpv168twqBlSxaafnpGOY5B1KFXCUMZiMxIS3wPYuqEt4kCroHkJcMq2zVeK+qM4C4z5rTgOwuLHzLwBfGnSNPHMtBysWTNRDralpLu4xcFlbCWGamfq3Fp6MmSW1C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653808; c=relaxed/simple;
	bh=P7s4KmVLW0+C7ZYEc1uTeOf0LqyDt9rul5r0dextP7o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rlu5yDPOmKxU0zuW/lBK5/EbUNn5tsmJcQARhpYHqjQNwUvA1hCWIgAxldW/PciKZ/sEo9k/N23MKcmKFIgy2hiH4O6aEVtDTa1rKDIIJBZhPwJTYP4bGguM22r6Urfmr9GGOprB3kjrMRwd1iK9Op+m/kFReG3K1BVtIvvBm3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sNJLhHsU; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-3003e203acaso14147501fa.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653804; x=1735258604; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OvJSw2Y9AN4Bj+vC236l/3ETv8TjOwlc4v68lk/FkAI=;
        b=sNJLhHsU/5TVWlqc9PBlDlSNJy+ziHg30uReAG9dRLEU5CjA31qXJsk3zGIm0e77EZ
         GxVcrMUtRjiDO0sudGUtK24i9N/4vkGHR5SIP8d3BKBzyrQKYRSFEfvkMlG+8l8A/eL/
         ESHwNBWRhZtCZ0yrukH/zHFARU9wmA8swfAJzEbB0d3vY5xBoeZQCPqieMQJYkOd/UwC
         0GwkbBpdECOMl1Grrs/5l9dAKZzm2CUH4Nh36LbCGYXPIcc0Csh9nIbrfoH77yg0VpZA
         cjbIbcYyyb7Fm+eYZujXtB4yi7v93lM9lShgF5VR8XIywkOpn76SmWpox67voKQVoSGI
         agjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653804; x=1735258604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OvJSw2Y9AN4Bj+vC236l/3ETv8TjOwlc4v68lk/FkAI=;
        b=LCLj4ZQL+p9OtcFVLLIpO5jC2GxI+px+js2o29+iC32F2RVnHodN0ThWWL6SJzftlA
         RLr07M3et7paFTwSjtZWxBOQ0vJ/DKtjAD/Wrz45zSiDul0Sb3P3f8O1Zx0J6RdoMyTZ
         PJSB4NEDMztFw0fQ4zLn+VH2oHJYHJCKOTiePv02U3k7SFMJ0srM7/7P3L1HlvN+jWIh
         wHaZ2+eM3CAATwKn568Gdj4sZ42+2dv8qTokAOLYpxrW6zNmAuvLMfWs9Vn7A19cInYE
         F4bfxFIZt0NQG/NR8W/wwXvZpjrYXvfvtDx6GUHcQH8iMOFVVAWnFw5vfOrda7JtnA1/
         j9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWIhwRf+cglFB1u0mQF2ACofEaNLs6e5umrjy/Y550I/VlAhJWNK+98SXpj7/gIvD0HIeSOra4XEhHH@vger.kernel.org
X-Gm-Message-State: AOJu0YxfGv7NI0YZdpDuEhEkeGVnhyKE3fro6jI/moZZ4vQ6fi3MR1Gs
	F5czo7vO7VUSM+4uGx6Zpt2Hv5tLehhZNryL6V6JxpbXEP8JGxjks4QOMER8jBE=
X-Gm-Gg: ASbGnct8BEnB55bSuXRBZpb/wKf1k1NP5xGonOiETcfdkldQQZrs7JZiMg2omhMF3Kw
	IAEYxLxUoyhOJ6P2YQs3NsGqaZ520TbjZIIPvpS3msziV+062Z0+iw+I0YUz87WL8m6uZSAi3/X
	kKDP2bOCwqvgWJRQQRHpIfyhIVfcexk7ErBruRhkJkxj22M4vLZCWE1R6rSPPkiVMtFwhZ+JeGA
	VOeDNMt6zCJt8W7R3fmbYFOOWovmiUbL5OswWmfyYrpGN1opMt5fFd5lGCK8tHpiam1WtlIPoE5
	QBvBWq4QJsMJQI9w8hdhsr+MSz0GNkDA3vhe
X-Google-Smtp-Source: AGHT+IFzvivVhPXKl3I4o3iSV3ve0+PcDzlRsGs5VisyomFwo0ktK1fC6BvzsZrAH0qVPPj4EFPZsg==
X-Received: by 2002:a05:651c:543:b0:302:17e7:e17e with SMTP id 38308e7fff4ca-3046831fbc7mr2884171fa.0.1734653804472;
        Thu, 19 Dec 2024 16:16:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b06a200sm3596771fa.79.2024.12.19.16.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:16:43 -0800 (PST)
Date: Fri, 20 Dec 2024 02:16:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 08/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <aiggslcdbdmnc2amlvmzycyxmu3f5zp6kt4ifgzq5gkuugmnem@oqnwf4o7hbss>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-9-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-9-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:57PM +0800, Damon Ding wrote:
> The rockchip_dp_of_panel_on_aux_bus() helps to check whether the DT
> configurations related to the DP AUX bus are correct or not.
> 
> If failed to get the panel from the platform bus, it is good to try
> the DP AUX bus. Then, the probing process will continue until it enters
> the analogix_dp_bind(), where devm_of_dp_aux_populate_bus() is called
> after &analogix_dp_device.aux has been initialized.

No. devm_of_dp_aux_populate_bus() should be called before bind(). And
bind should only be called from the done_probing() callback. The reason
is very simple: the panel driver might be built as a module and might be
not available when the analogix driver is being probed.

Also, please invert the logic of the commit message (and the driver).
The platform bus should be a fallback if there is no AUX bus panel, not
other way around.

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 24 +++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index ba5263f85ee2..60c902abf40b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -317,6 +317,24 @@ static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs =
>  	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
>  };
>  
> +static bool rockchip_dp_of_panel_on_aux_bus(const struct device_node *np)
> +{
> +	struct device_node *bus_node, *panel_node;
> +
> +	bus_node = of_get_child_by_name(np, "aux-bus");
> +	if (!bus_node)
> +		return false;
> +
> +	panel_node = of_get_child_by_name(bus_node, "panel");
> +	of_node_put(bus_node);
> +	if (!panel_node)
> +		return false;
> +
> +	of_node_put(panel_node);
> +
> +	return true;
> +}
> +
>  static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
>  {
>  	struct device *dev = dp->dev;
> @@ -435,8 +453,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  
>  	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
> -	if (ret < 0)
> -		return ret;
> +	if (ret < 0) {
> +		if (!rockchip_dp_of_panel_on_aux_bus(dev->of_node))
> +			return ret;
> +	}
>  
>  	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>  	if (!dp)
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

