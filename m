Return-Path: <devicetree+bounces-132901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA419F88E3
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EA4E160474
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF81259492;
	Fri, 20 Dec 2024 00:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iLdtc1JS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A47A50
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653877; cv=none; b=ucjzUXaYQz6pLn9HUG6v8Z7bopoKK3RtYrfMAp4RoQIpQZfaN0ffV+GcQlVEbuWendg7bhKpEaMVPulCU3az2lKl/Qv8aiR5U4BqBeJjQ4KYfuddpiEBYhXXFNOIo3a/iaNd7beBTDGZAzd7J++hunA9Ev71qJpv3Eq7UJO6P7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653877; c=relaxed/simple;
	bh=berKPKRf3Z2C0Pjru7pWhG2Wk7w3Y0DRV/6WRdRDZuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MgD1U9uP5zf2snEj+zyNZslDB8S3O14Lay1KRBKKQytwVfA1aSQleOATW9SrLHIQ4AL5LkuZCKVGHGm9do9a8zSyHz6rsA3ld1iN9p37Zy8bbKCc0Ju0or0YilOie4DPu0TSnBk4ygGcmqIX55e41Q1v7GdPAW4Bpj0xHr7j7fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iLdtc1JS; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30227c56b11so14618221fa.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653874; x=1735258674; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=iLdtc1JSl9pTDwL6ZMDT2LfhuMfaIbH+xe7NgyQUFyyBhgydfUMrdTA3YdDKxcawID
         MDV/JCCzr8GORp+RoEvR/vW/axp3wyhbYJM/4MITw9sKGEiGsT9NpGbxNa/qJkyPBO5K
         3FcrOdkdX7VBg9S0qGiEI+MgPMiqMWmR762PXGHGo7Y4TnUS1SxITxGYSWfA4nwcrmqK
         3umY9fPuIzrARnfx+dchOX2IsHhh3MkExs1IFL0i75oRmfdicugioG5KZFAIUXqgZn+h
         fZGMESCzK3hLGTjveQqoP/8cEgnV2GZ83ziN1jxdWYqNOkwWi3Oa4f62zlqLClzeCqa4
         /tkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653874; x=1735258674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=RtsTMaF+haPOtcqQetI222nZ4oYmv8cmpkBT9egocg0AwDBhk54tjkF4o0d/kL/Jjx
         c/qW9DwYLdjwGU5+cCiCkyEVor8nE/00k4OJfaba/sCkyJOoa7+05q0VsTjOQRafaujK
         zr+zwzxDfqhoC9X52GEvwoz7n/QTI4YlKQuQgbpvEogVt7V79GDPHoLO3LOpXg3iewQD
         d9xzaliDYcpCg6dZHAQX9YTv1t7EGLBvbuOINxVuXTsRkEawtE5rkoHpKXWNFXgPgamF
         q3TkJ1UAgfnVAz/oaU0d7UrCCx7U3oSb8FIOc8jslHzuvmndPNkLUW7cVS6mtz0ieCWb
         rHZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWvpj13R/p/gyRM2yTYY/3FVKML6EV+XIaqD8ykH7kCGprcXSiAOPQ5VZR/h14mRML+uGWWtZbl4/t@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2P9hIWmgtlr19ulnSgRezn6asDqBHtSc6n39tpHpP5a7e5Irz
	TjZJJwJHOqwg9LM8p6DtoSZkMHAOLYJ9stvRuPJqx0vP8RATxZQ8uIIy+HeEuKw=
X-Gm-Gg: ASbGncvYE4KbK3IPQKoKNk2KAUW0iK5MY0WjtoL9Z8TlPT4ot1VuSw2jv7K7EMeeDgy
	9wvxoFl+Aq4PlOd2mdtlTkp28gSTvLz9Y38kbODr473sUJWKrk1mOMgSOnsbQoLRUwsYMZE8vus
	HN8AFahcgSTXB+lA4+t9QrQHxUFb7GZwpSwcjlz+QQpcaIkyhGyBDgwC+tOxSg+1d+h+pwFUdZx
	Q3djZARp3SQvsb1wJQo1OTbMTRlNRXT8PEIZ5WjVOncy2FRd3afbrGFBGy2/p3fVkV/BZWOyZUJ
	wp7Xnj75DttFLPWPSJ/a/t1yK7Bd3O8VcbeT
X-Google-Smtp-Source: AGHT+IFB2i5vKnWXGFFd2MWZqu6ISfQEn6gsPEZ+iz0AquMdjU/HdGNzEaZYfYTM6DlCEi0nsU27SA==
X-Received: by 2002:a05:651c:4ca:b0:302:4130:e19c with SMTP id 38308e7fff4ca-30468571039mr2038491fa.19.1734653874050;
        Thu, 19 Dec 2024 16:17:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cb8asm3815281fa.18.2024.12.19.16.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:17:52 -0800 (PST)
Date: Fri, 20 Dec 2024 02:17:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <irh3rei7to7gevrr5dqwa3qr3nl2lunenyvvvlqnpiyplbk2vj@ooedydnvl4df>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-10-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-10-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:58PM +0800, Damon Ding wrote:
> If the panel can not be found in the beginning of rockchip_dp_probe()
> using the platform bus, we can still try to find it in analogix_dp_bind()
> through the DP AUX bus after the &analogix_dp_device.aux has been
> initialized.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 9429c50cc1bc..eae02819e3bb 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -19,12 +19,14 @@
>  #include <linux/platform_device.h>
>  
>  #include <drm/bridge/analogix_dp.h>
> +#include <drm/display/drm_dp_aux_bus.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> @@ -1733,6 +1735,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  		goto err_disable_pm_runtime;
>  	}
>  
> +	if (!dp->plat_data->panel) {
> +		/*
> +		 * If the edp-panel module has not yet been initialized, the
> +		 * devm_of_dp_aux_populate_bus() function will return 0 and
> +		 * the done_probing() callback will not be called either.
> +		 * Consequently, the panel will never be found.
> +		 *
> +		 * This is the reason why we do not use the done_probing()
> +		 * callback and do not check the reture value here.

NAK. It is there for exactly this reason, to account for the panel
driver being not present yet. Please make a use of the done_probing()
callback.

> +		 */
> +		devm_of_dp_aux_populate_bus(&dp->aux, NULL);
> +		ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0,
> +						  &dp->plat_data->panel, NULL);
> +		if (ret)
> +			goto err_unregister_aux;
> +	}
> +
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
>  	if (ret) {
>  		DRM_ERROR("failed to create bridge (%d)\n", ret);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

