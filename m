Return-Path: <devicetree+bounces-140546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E402A1A2E7
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D00F87A3286
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4591120E30C;
	Thu, 23 Jan 2025 11:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LA7G9ne4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E220CCF7
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631616; cv=none; b=Yhqy/7/w+VNz4CaaCYZc95Gx8QhYrWaRFQQyMy+C5WTYgqID0EshCumsCk8L+vKbPn9zAioHfWwPjgKKSNr90mc5X/Kw+AxbQYQ7g1rP3V0hlukpQipfhgWmRtC0CenUfi8BlkPeVhWVgnNVni3pi3kzM3c7KdoEaOZtU569jyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631616; c=relaxed/simple;
	bh=fenscYS70aLv4nJN9Weyop5mdKGVpXIcWj3Ok7eWbiw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mxnJFDlfOIn1RMWxCUbhJVFY6hCz0zq0Cn9wJcXX6XN/ufspNZS9lHENjh73MIqzmjg3ugHZ8i0OpmvhHC5XVE55owbXCQtE2qucj+ihvZmdi30abe2sI2c/hU+kiTAKMVkcvuI7S4HMMioWEZmICkFK74OEyqo8C1Wk3DT7u/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LA7G9ne4; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5401e6efffcso892799e87.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631612; x=1738236412; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DFfpTSbOh8RvHyE6RIKYPSmJaoOLiJCGJd9BE4mSXsw=;
        b=LA7G9ne4TqDDH+Yahlhl+n8tsIzetArn6ksJ4uT+BcQpFOPrUNzfoOiX37APnnVjNY
         PGOVcqpSLejxZu4hCIQdD2bF+2iAE9xbeJYnxtPB2B9tQt6l1950I4bBmsehZsIvqQdJ
         w2Id5cFJ6dIAq2xlqoPaP9/M5Ho5Eo5yrfG5BDTePyX1Qrijwtfs/E7qslYlmPgy41t3
         Yc8EbhuOVJ//rG5z6i6Kyvrf8t26D4iFot6sf9jvZk+HUjKQBHtxcqu8fdQVAOsr9ZBf
         n+qyeO/88IEn8/oGb+MQozQ0xGr5W37HBwd6Osw5KyNgzJonEwtcLpugRVUGUxzKDlkk
         /qrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631612; x=1738236412;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFfpTSbOh8RvHyE6RIKYPSmJaoOLiJCGJd9BE4mSXsw=;
        b=XWuiTYDI50TU8gaOEq651w6C4Xb2FnB1QRHruQ7S/inEhjL0q72YHo7wJjTpd48P5s
         qLuM32a4yOGgFC5jfkFo6xzU8B7b35sYf5PYfU8UYAVd/j0fvWQno8yeiCg7uyZzUef4
         Zm9G31rMqw1s/jXUZBbWQIuSC9zNxSh+brco5K6yP7aSd9JosBHKR1fASMD+OM+4Sf9g
         k0Xa7pTmTmPZVkwG4WX9L4HdU+T5G8QaYXCEFiGM7hFvXh8r/NCv1rv/DHgBDsSE93dA
         86H6KcKv/g81b4BsE+qPjWstO1wg7APJ6kk/22sUhuqjn06lUvyXk0nzhu2q9SuN0bUj
         2b6A==
X-Forwarded-Encrypted: i=1; AJvYcCWl7QwH0qO0pvx+dx/Lno5gPBjWrw0piB6OkgcxX0CEXoPzl4En8l6P5p7qq9T2BGk4kgcrVyS1oK/C@vger.kernel.org
X-Gm-Message-State: AOJu0YwLvEcvN2nJU21p6QxJ+DrsW8Ige4/g7NZOj7njGTeFRsk5K/s2
	fAFvKr99DMrC3iPxuGtIUTV6t4bxpp5Ci4UldvM3w9+XaTbHsgu5o5lh2fcOaMm2GQDehmp9pu9
	aQho=
X-Gm-Gg: ASbGncuj3po1bEbl0GF/qsmn15pXz1mVLIJThFzpx89/zyb8oWOtUavgVAu1NXEU8Uj
	pAZS34ynPssWIVNqlcH/e5OdJNKmSSw45IkJu8hRZhYCQpmskoK1p8QJLipWyXQw7Pbt0+ED5GO
	GSsQui/kCa9A60JpYB2CxyUjuHBAutllnlSY29af6pyK/Jp9IXs0tiSsVyTGLqFodQHm57mZ6Je
	tBYL4YlDmyW6XJzYDPku263yrcboREWVK8XOR6jjjdqy6d8i/1QQRMjrpzlJ++wNnFIOP8J4npB
	jA727k75iA/Z3bo5zltX0j7hQeHddgKgvPB+fPR0WLsy/VKwmh8kjI3Lp23t
X-Google-Smtp-Source: AGHT+IGNOaD089OMXfqr3Dnm2V/eB8MHKGKnVwiIKkPGlQzS9RJucZ1gI7lV8A7Yejq/M0G2xCRCQQ==
X-Received: by 2002:a05:6512:2346:b0:53e:335e:7756 with SMTP id 2adb3069b0e04-5439c287bf9mr8252435e87.46.1737631612246;
        Thu, 23 Jan 2025 03:26:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543a24d2237sm2273345e87.9.2025.01.23.03.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:26:51 -0800 (PST)
Date: Thu, 23 Jan 2025 13:26:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 08/14] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <jhl5ae6wzydxmauvwlw7g6kqqdcanwfi6sgeenhczsbwzdzlym@n5pbe4jk6ult>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-9-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-9-damon.ding@rock-chips.com>

On Thu, Jan 23, 2025 at 06:07:41PM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
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
> - Use the functions exported by the Analogix side to get the pointers of
>   struct analogix_dp_plat_data and struct drm_dp_aux.
> - Use dev_err() instead of drm_err() in rockchip_dp_poweron().
> 
> Changes in v6:
> - Keep drm_err() in rockchip_dp_poweron()
> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 37 ++++++++++++++-----
>  1 file changed, 28 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 13f32aeea7ca..004b1b68d1cf 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -393,11 +393,27 @@ static const struct component_ops rockchip_dp_component_ops = {
>  	.unbind = rockchip_dp_unbind,
>  };
>  
> +static int rockchip_dp_link_panel(struct drm_dp_aux *aux)
> +{
> +	struct analogix_dp_plat_data *plat_data = analogix_dp_aux_to_plat_data(aux);
> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
> +	int ret;
> +
> +	ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0, &plat_data->panel, NULL);
> +	if (ret)
> +		return ret;
> +
> +	ret = component_add(dp->dev, &rockchip_dp_component_ops);
> +	if (ret)
> +		return ret;
> +
> +	return ret;
> +}
> +
>  static int rockchip_dp_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	const struct rockchip_dp_chip_data *dp_data;
> -	struct drm_panel *panel = NULL;
>  	struct rockchip_dp_device *dp;
>  	struct resource *res;
>  	int i;
> @@ -407,10 +423,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	if (!dp_data)
>  		return -ENODEV;
>  
> -	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
> -	if (ret < 0 && ret != -ENODEV)
> -		return ret;
> -
>  	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>  	if (!dp)
>  		return -ENOMEM;
> @@ -434,7 +446,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  
>  	dp->dev = dev;
>  	dp->adp = ERR_PTR(-ENODEV);
> -	dp->plat_data.panel = panel;
>  	dp->plat_data.dev_type = dp->data->chip_type;
>  	dp->plat_data.power_on = rockchip_dp_poweron;
>  	dp->plat_data.power_off = rockchip_dp_powerdown;
> @@ -450,9 +461,17 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	if (IS_ERR(dp->adp))
>  		return PTR_ERR(dp->adp);
>  
> -	ret = component_add(dev, &rockchip_dp_component_ops);
> -	if (ret)
> -		return ret;
> +	ret = devm_of_dp_aux_populate_bus(analogix_dp_get_aux(dp->adp), rockchip_dp_link_panel);
> +	if (ret) {
> +		if (ret != -ENODEV) {
> +			drm_err(dp, "failed to populate aux bus : %d\n", ret);
> +			return ret;

return dev_err_probe().

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +		}
> +
> +		ret = rockchip_dp_link_panel(analogix_dp_get_aux(dp->adp));
> +		if (ret)
> +			return ret;
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

