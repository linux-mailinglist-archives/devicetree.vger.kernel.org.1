Return-Path: <devicetree+bounces-137060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 766DDA07662
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F326D188A81D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F53218AAC;
	Thu,  9 Jan 2025 12:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xLUdy86t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4206218AA8
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 12:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427488; cv=none; b=mUVX8AyVPfrUaZV3Bdvr3Yd1aVh1Bobu2vru4baUjFfzkSLXFADHoGk/ETbSBJPkKkEQyq/ZoL1+c06kHAsbor/dfouKsiea1MCQRw0zV2jzbCth0zJMP1yKzN5QDbzyVZqWeAluEO0BrMSwZR8hE4uewzevtaOO4uT118c8pqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427488; c=relaxed/simple;
	bh=291qZ4IQ814Bta5f5SEh1RnOeH4iHMl7x8A2Kk1jRqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BlUZ6qbUPtcSvswrB+oS9hM1Vt/m/CRdZTt2bThogVw4F5uxFel0Ojpt1q8wVtyiLi3/F/gJMDwR88LyCfm4IcAnkOiHADxCIPyV+ZCTMU9V8KnFT6MmdIDu+CZszp4cy2gESr1USYf2LmSV+3FpYi1vxhekDql5yqY1oMAXZOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xLUdy86t; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso892245e87.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 04:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736427485; x=1737032285; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PluEJNm6A4jMqOqyB0FTg4D45gj8yEkPQ1baSXUmCTM=;
        b=xLUdy86twG+3RREPtFZ/228XUGiIh1KfFlA6QLZfu8BKgQ3yObuCvrGxBxv9GplEbB
         O+ePTP8MJvzud5oR2lvf58pprferTAd2WJTywSaURzppk+aq2g98027MbPV2kARiIZu6
         s/nh2IXQoZnNlhWcflVSp7xUJaoSLWVuhtlDO5MBczfuoLfI5F2vsp7ywx44F59EJeKa
         olnTj8DWTtlriCBGiYxkHbvKhS0AzqX1tjx/+5iO37aldxb7u8J+6k2VrVa2FaKSc0RI
         8AyKSbn2+79lMnmqpZpHoe/PIEADYnZD5PD4jt3SkW03jeOsSlHDaeXbp4VrV8BZAZgd
         PcVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736427485; x=1737032285;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PluEJNm6A4jMqOqyB0FTg4D45gj8yEkPQ1baSXUmCTM=;
        b=DJwPgnlooSgyJQUR/gVd1t201ZdUF/IejqSozEDAs6lT9aSzH1iQJ5vGNp/24m0IEy
         VZfyOarDBJS3rRqfrgrG5axs7imjIollZq64ha49dui46CspIxV/m/lt/OEVQSD6ZBsa
         jRyqFaqam2SMJ8aSMaZCLBxVyx2D28fdNlJLhDHjh5k+SZ51S/gwiTYUekeSCCU68tJ/
         VNG7pRA+A+bOB9KqGbcm/n2MP7YOsmV59fsAFb3uMgTF/iAn2EE/sH0EugE/FMhlaFHb
         eb99iqlT3L5aXOHNauZNIITqrRQqpgAJaP6J1KcQ4tJO6/uwe6+Vy91TCJNT6kJsc5BJ
         lJQg==
X-Forwarded-Encrypted: i=1; AJvYcCXjxWUra+os2sdvc8wxNLGjRUEoffPoe81pw5m3CTHEP+cpKXCFCotG5Y6VvPlG0/T+pUzdy7tmgBZC@vger.kernel.org
X-Gm-Message-State: AOJu0YyBfXKmD8a2GLOS2716KTNUUnH/40E0h76wgX7kK02UigFzLYgT
	yEgd2hTgYUUBvq2Xr7mGny/yRI7QjEoxIxnQZM1HLbUKPSq96tt+r5GhmAtvpvM=
X-Gm-Gg: ASbGnctbunwGBMnRa7C/vuijGrdpseD5BNuZYDvtLt1iuN8rl0YPZFqmC/fKg7dO92b
	RQ6w9G3jDBJppq6jBpmlVEOSNACDD4nFodsTD5mDwR6v7wb9XYb9WKdVD1tj3vZK71FkMPGkUyo
	NohC81vquOOAepw3csg8fABD4sVmrLCCtVk26nD+cKPiRJWtP4+6vzsbGPMjafNDCcCMeJ4W9Vu
	sCgzmKBSVDMg1pK07++Ztlh3rkWY8S9wqByiehDAA+EVLIJx/1f32LFkeHS5SwiMV24Wg234YrY
	d0LLjVP7niNvswMFAjLEYtNA1HIs6LiYCfdD
X-Google-Smtp-Source: AGHT+IEvGTGt6x25ztvT/50kVctTk1CY/fLXQXxYXUd2ctSdHixShfg0M2M1+bWWr8+u7Ko3bFZHyg==
X-Received: by 2002:a05:6512:3082:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-54284507047mr1803562e87.11.1736427485004;
        Thu, 09 Jan 2025 04:58:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bde9633sm197114e87.0.2025.01.09.04.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:58:04 -0800 (PST)
Date: Thu, 9 Jan 2025 14:58:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 10/20] drm/bridge: analogix_dp: support to get
 &analogix_dp_device.plat_data and &analogix_dp_device.aux
Message-ID: <uqsmsoumny6ovf7n56tbcjmdzbzikk2iijk62bvefh5tjtgrvu@a7ogvep5e4yt>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-11-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-11-damon.ding@rock-chips.com>

On Thu, Jan 09, 2025 at 11:27:15AM +0800, Damon Ding wrote:
> Add two new functions: one to find &analogix_dp_device.plat_data via
> &drm_dp_aux, and the other to get &analogix_dp_device.aux. Both of them
> serve for the function of getting panel from DP AUX bus, which is why
> they are included in a single commit.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
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

Nit: it should be enough to fordward-declare struct drm_dp_aux here.

Nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


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

