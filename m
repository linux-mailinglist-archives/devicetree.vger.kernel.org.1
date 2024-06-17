Return-Path: <devicetree+bounces-76764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CC890BD88
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAEB0B2299E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 22:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F1E19922D;
	Mon, 17 Jun 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vgjS8Ldr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490B1187575
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 22:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718663296; cv=none; b=OtKxPNchdGHIouNkg+DXYT9o6tOWP7BvGFVa/ye4BHtxd9li52gcYBXyGNbq7elgrgH0yqRMdNnvC+vHs6A/BVfR7ntX/V8mVmSbGRiZVNbYiXyZXe9mm326zx9rvtB/VaoDhipD+Nc6RvNSBX8Mo5M4axGBrNT6DbSupQo++cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718663296; c=relaxed/simple;
	bh=y7YZWdeQfo5TzLQd7i197bpQ3oe1W8yJVm/HzCLyuZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NzakaDEQwKiMcWb66NzzPxcQQFWmj458XAQOCizmVugT1yMxNyg3NCTmP9+rbfaTsIC8VzrlCsWIxOF9sBT8Hx0Lz88PGwqH8jPJhBBZsqud5ZmIJNQVKEXvlCbyk+2xOzOCfVYG6bScEdTN8lMa+mN+mBsXSP3j7dVQvmlKL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vgjS8Ldr; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso4757614e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718663292; x=1719268092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J0iER+AoYp/pYl5IC7iX81NqnRqAb0NqRg5uJ+M7o3M=;
        b=vgjS8LdrzaEmrfQ9frJYUU3KQ57B2rf66vXkC2YMUn9IPrF3wl+tx6vB/jvnc7NVk9
         6xNtxz61YbDBQ34Gmo8a5Dme3K1jk7MCVSpEGDBZgAYkWgfb60M9f/7m7jP1A0X9Y5JO
         GFyTxCFsjnSVa1Vfk3UhUwwCWP3x/xZdQTH0Yh162i7y56y1OYvbWdIN93qoIiyW+jP1
         JKzup98IJrR0VOUdtxaQsRQqThnfXF0EoinCUFr1tZT6kBs7tBQxvnOgPW4iHNnE/j7Z
         kIkvIfeHlGSvQSvy1xGr08B0tTzutaytW+eHn3FyyXDN3DPPNWLmDh9bW05VNQqM15Zk
         dWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718663292; x=1719268092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0iER+AoYp/pYl5IC7iX81NqnRqAb0NqRg5uJ+M7o3M=;
        b=k9XxI+cIjmxDkzCKo9Z6GUDndggJO/ucfawG3WoJZmHDc7juHhqYR6DoEg9+21hWqG
         EkLowabdgH2NpuXc+JcrvRdgEOMVNKI8OthmgWdUVVJbId1rPZlN6T0aVqi/Ttos7Fj8
         kpugqRDahoIsFAYe3nxoMGSITQMhZcoWScc7cgwrWHT2ncYjHqyR+tX8gf+NVpmapBQU
         vedOciK9vEIu+C8zS8l/N1aLAaGdKSn2TG3TlKRSroIhbJvjC+kMdLRrNgxpSp1lkUM8
         vV/MlRYK+ONh8h1atssueWgeTKKMbKgbkTB30Lmb1evLM7cuf1G91+28N7d3JZgLOdjz
         utAw==
X-Forwarded-Encrypted: i=1; AJvYcCXjtwwNu6ZKWuZ7UCSSKWc6WJJPg2/zo2K4u4vVLeBBZMaDJfKK4uw8PZCzWREDaWnMIRuqq3oB8EgOAl2DK8HJbSHoCTcMbSawGA==
X-Gm-Message-State: AOJu0YxuQsuA0vA59yd0FxA8nfCKoQxT33KmoFOKE096OGMo9UsVpfQV
	LMpgRLt9hDf5r2DmWi7E5Bav11oYtXhOiigySo9LPl10L3kYIfwikyAJ9/L2qQE=
X-Google-Smtp-Source: AGHT+IExoeqK+FXtO8sD+xh9qR9LnDH2/EwcCxojSWh3ywjle5iOXhHXGJHAM0pgnstW0qMzXBZhIA==
X-Received: by 2002:a19:6a02:0:b0:52c:81fc:eba2 with SMTP id 2adb3069b0e04-52ca6e91456mr6586273e87.44.1718663292293;
        Mon, 17 Jun 2024 15:28:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2884064sm1402377e87.242.2024.06.17.15.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 15:28:11 -0700 (PDT)
Date: Tue, 18 Jun 2024 01:28:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH 3/4] drm: bridge: simple-bridge: use only devm* in probe
Message-ID: <deirqqoap7ta3iwmmvg6uxzalfe22yirjp6et2a74ffh5ybi64@vekr6l7sl22c>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-3-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617-tdp158-v1-3-df98ef7dec6d@freebox.fr>

On Mon, Jun 17, 2024 at 06:03:01PM GMT, Marc Gonzalez wrote:
> Once probe uses only devm functions, remove() becomes unnecessary.

Breves vibrantesque sententiae

With the hope of getting an expanded commit message:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> index d672e34970e18..f1e458a15882f 100644
> --- a/drivers/gpu/drm/bridge/simple-bridge.c
> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> @@ -214,16 +214,7 @@ static int simple_bridge_probe(struct platform_device *pdev)
>  	sbridge->bridge.of_node = dev->of_node;
>  	sbridge->bridge.timings = sbridge->info->timings;
>  
> -	drm_bridge_add(&sbridge->bridge);
> -
> -	return 0;
> -}
> -
> -static void simple_bridge_remove(struct platform_device *pdev)
> -{
> -	struct simple_bridge *sbridge = platform_get_drvdata(pdev);
> -
> -	drm_bridge_remove(&sbridge->bridge);
> +	return devm_drm_bridge_add(dev, &sbridge->bridge);
>  }
>  
>  /*
> @@ -300,7 +291,6 @@ MODULE_DEVICE_TABLE(of, simple_bridge_match);
>  
>  static struct platform_driver simple_bridge_driver = {
>  	.probe	= simple_bridge_probe,
> -	.remove_new = simple_bridge_remove,
>  	.driver		= {
>  		.name		= "simple-bridge",
>  		.of_match_table	= simple_bridge_match,
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

