Return-Path: <devicetree+bounces-140541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79808A1A2CC
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5253169403
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D744A20E02E;
	Thu, 23 Jan 2025 11:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S0wktD6z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6648145A16
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631201; cv=none; b=AlEf9qhDjH3oWq/9AtFw/fUpw5jiro8OILtyoWoPmAe9QMLi//f7hTCeOfG9nZMS6cUyk2cEiePImczWUAxj6wpSeG29G7HAewcBQFKDoa5rlUykhAJaHnwINgFBxjRq30NKCYDjjCnLh4MsLg6qDzgUJzZPzc8sRdryDZS5SIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631201; c=relaxed/simple;
	bh=1l20iob+kOh3pE0fiAdG7zL5ptUwPqyM3q8y32dM0bs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ORM37d1k2H4I7guLaJ8/dOYRv6Zb67h3OIv1hQE5510kJSm2VvLFq6Zzr1HTnjQ9ur5GXuVJaM9TqUpKnWV0ZViwRiTax9uEpZd3x7NrMGtDEs9z2cEce3ke0gccM+WWkFDjnW6nQXwC8/f8G0wW4+wUPnvfGhiKkMMEKcNyaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S0wktD6z; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54298ec925bso964992e87.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631198; x=1738235998; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1bsSCY5UtFIH4J3YGmp49wNWDSra2kfjxxhdqkpeB0c=;
        b=S0wktD6zTImtmmRJAGCdjVHstbJad+3CqSyHr+DKOsyRZc7h7P3nnyu5gm8inuVWRG
         BiYM5P+iMyLpaHberwYaNBfkD0rkD5dZgFx2ptI0qCuOIb/M9EiW1re6aDHFi42EVke4
         jdcteC3UWoQxAjCgnwoq9/f6+mpBaVrL7USRelPxX/mt6m73fd/rDnOt3dN7bhI/PU5i
         619fTi8YJ6+A/96vDF4Vwl2qQoOw6RQbFnTR/IxUG2g69s+RkZ02eXMvjxIVNx9XV4z6
         0Uh4NObGNNSI1hGtjFItaXD3bp+if8QgQPwva090s3+nODd5VZddGD4KF3Op7BMowZEp
         5svg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631198; x=1738235998;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bsSCY5UtFIH4J3YGmp49wNWDSra2kfjxxhdqkpeB0c=;
        b=XGOvsZ1/FrU9qZ6cGSntXxbd02CbCPUu13f7LBDpo7XGzzmf6AF++8zHZ9ZwuYF6D+
         683JR/m4YdywdAq+NE9v9y5BABuXJtQdc/q2dcGuy+aK3IJrMHsykE0DM04mEtw07TCc
         Bq3CXZPAX7Af7PImJDBWKsO3Oo0jZF9e0LzLCCHmCd/a88OT+p7RlmJCHxc38F/d7i3H
         s8ulCG5oLcMaZhKN9lLu8xGIqRUS3bdA92ra8SI9k6CU8luniMd45b8SACypNIa4fM//
         QQykocs4RPZa/QQbQGzbAFG8cKD1KBmu9SO8NwTOeFbhKXkgG/wceC9KeQZPboe43nqF
         Iw0w==
X-Forwarded-Encrypted: i=1; AJvYcCU5oOJQ0zRPFKAJp18/g9GdoPkZFtbuzwAlJIzLJyddOWnsiThbHHvJRkcgbN3RQEWXxtVIQqmUejSa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3X3nyMHaZ25bpOaf4wzhnogwf3mVLTKfbzYPDqoOTPVfjB1Nx
	+TUqnFCxHdFsnLGX3aSt9YosYmPkWxB4avlo4JDQjYLJ8oseyxQQ8elqngV2pio=
X-Gm-Gg: ASbGncv8j8OD0Jo4KrtGjyJIR69d0VVDyzQdX1UvP9ErhzsFCv9QB8GZVWfiE6YRSpU
	DTnXJUf0pBohPSEHEIGy7A1MTLcRJ2cuSYavg8mGBFX2bQFJX0HfKxN/ArRfWs19F1rwAhk8U/L
	yBJjwqr3BLHPN6UV6PNaMgHTsk6HI7g8REg5XNS9MR5lmM31srgXVkms5SD7uHgWlhiSYuopCDg
	WwA+mkhZ9OGBaVrl0el4q2bsZAfxkjDJZP0Q5WPvACajkASY8/Wvn/acszLamc9KxXi3tyrT+Bo
	KpYYW61+0DWBFsYNulZ1TBbPL4xXL5azycRfEbceIVKSmquxM1d5ifH34XFz
X-Google-Smtp-Source: AGHT+IFJoD1ZpSDXSEK4+7GESjrAS6LXVt6ZkzdoNAPzcbKpEHkPVqYdSxIGbzeDq/Vi6d+KuKKiiA==
X-Received: by 2002:a05:6512:10c8:b0:540:353a:df8e with SMTP id 2adb3069b0e04-5439c282caemr9883136e87.39.1737631197914;
        Thu, 23 Jan 2025 03:19:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60a20sm2652478e87.137.2025.01.23.03.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:19:56 -0800 (PST)
Date: Thu, 23 Jan 2025 13:19:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 06/14] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <y4yzgkvcmvmphviuoroijaaotd2zdworbs5tfhdxh74kchirk6@dgoqwoksckiz>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-7-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-7-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:39PM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 ++++++++++++++
>  include/drm/bridge/analogix_dp.h                   |  4 ++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index b05f5b9f5258..8251adfce2f9 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1794,6 +1794,20 @@ int analogix_dp_stop_crc(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_stop_crc);
>  
> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux)
> +{
> +	struct analogix_dp_device *dp = to_dp(aux);
> +
> +	return dp->plat_data;
> +}
> +EXPORT_SYMBOL_GPL(analogix_dp_aux_to_plat_data);
> +
> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp)
> +{
> +	return &dp->aux;
> +}
> +EXPORT_SYMBOL_GPL(analogix_dp_get_aux);
> +
>  MODULE_AUTHOR("Jingoo Han <jg1.han@samsung.com>");
>  MODULE_DESCRIPTION("Analogix DP Core Driver");
>  MODULE_LICENSE("GPL v2");
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 6002c5666031..1b119b547988 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -7,6 +7,7 @@
>  #ifndef _ANALOGIX_DP_H_
>  #define _ANALOGIX_DP_H_
>  
> +#include <drm/display/drm_dp_aux_bus.h>

Nit: it should be enough to just forward-declare struct drm_dp_aux
instead.

>  #include <drm/drm_crtc.h>
>  
>  struct analogix_dp_device;
> @@ -48,4 +49,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp);
>  int analogix_dp_start_crc(struct drm_connector *connector);
>  int analogix_dp_stop_crc(struct drm_connector *connector);
>  
> +struct analogix_dp_plat_data *analogix_dp_aux_to_plat_data(struct drm_dp_aux *aux);
> +struct drm_dp_aux *analogix_dp_get_aux(struct analogix_dp_device *dp);
> +
>  #endif /* _ANALOGIX_DP_H_ */
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

