Return-Path: <devicetree+bounces-241151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0416AC7A555
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id EDDCB2E13D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A052D0600;
	Fri, 21 Nov 2025 14:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fGDREBdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8F52C0262
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763736864; cv=none; b=GIRgZ6naNK7qHETnBiYbCMf5bthWyA5bk1j3nHD/wtj8xZXUDxOV2WGq+e6j5TPfv8t4Q4lzOgxNFZQss3B79o7kf9JJRpCMEnD5KHIBblT0zsYZYw7hD+/zfODbG+AlbMEcdsRRTjPGy5Waf8ii/d4RpT/8GzCwRVW65pjAkwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763736864; c=relaxed/simple;
	bh=AnQKGJnYk4Teekj1tXX+rjwLt+v1iwpKAUDCKgZG7e8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ibt6DkM3jAj0Czz9dJrot0/S/DKKMdLaDwmMvpLA8q0z0x1Pb2RHZN5dH14cS0GdKgOWfLmtWdoT8w23s1NW3DNKYnZIZ0lICmG+ccUmCmREItMUbyulGMs3wIHFSzcZ/j5k5uxh5ChsvV10YtuPsBvGnqmvUQ0IChhl4qvLM74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fGDREBdW; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477b5e0323bso17372315e9.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763736860; x=1764341660; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=fGDREBdWIjZ1DZrCzRbYnV1uRES1nzAkKaTsn5tAlzphE/fsfzH9Vq45eutFtNXRlL
         upF9giWDbxGIen86mOPMEgenb++90fp18qTZ5UtZE4PwcUhn2bue/JRQcBL/uADsJUJE
         71EroFIxLBtysSu/OIHGYsdKE451Ua24+qIXdWKJkrneqXnHDecBOVGsBzxR7Rwbl9ok
         f+4GzsuqIuLmhui17UB83T6Ijx16NltVcjY6Kl0SMV7hhW1VevNEFHkiLfQqLK1X11+f
         LGXPPLQjTHNOE2OO2Pcg/dYgBSJrqXuMR6ldinlj+9u7ct5+rAnjpezwJtuwSx+WD9tm
         AHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763736860; x=1764341660;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETN4gl1iZbhJeLn6OCDI+9u79qwxOMAaoq4ImqB9HJI=;
        b=oG5wrVOrvO+nDQ+pBYpEx1HOTdDDjJVwKerTmnPVqARDyZRxYfVaW3tqxKhkZIc8qe
         zf1qlaR7T4Z74JeWtTl6e6YAUnXT55Zc9nULEuWO/mWlV3g2yr7Ou7FQ5EfNDzbfF7aE
         37jM0xbPfDPWvRtQbUSQqqhiV8A7H6U/xRWSBgEKV5KLq7IwnT5AK+bj4FxKmtDCPfK3
         wgXOVjNCbvuCsU7eyCTXEnDL1O2KOHeG/ABX7ewXB4kOv9KrJoEcXt/vRowLMIigNw5P
         CkbPtfxnLQ/KYGFBUyNnyCIsMYk6ujRZg6j6VT7XAtVI4nSIO/HFlJMagH3w0ycrQzdC
         Ypjw==
X-Forwarded-Encrypted: i=1; AJvYcCWMe8pq53uKJNAS6ddE3D9WrJyuasRp8BAOxZaWcxBKJ69RnxBNJBLvUgd5ZGYzPpZtWqF8Zd9yvv5z@vger.kernel.org
X-Gm-Message-State: AOJu0YyjZ45Va/vvVedDqSsRrwlRQCFb8Cdi5Xz4oP7uqryTHVbiR70+
	44e5Bpn7D1waKJiqplBe+SpoxDQYKrJnjRf9KKGK7y0U2ggwcdp21Fk4JZENfBRO1xs=
X-Gm-Gg: ASbGncspKawVMaK8kNchnKq4gWp/FfVh9Z8aXDINocWUETEic601hHg7PHtJrZcNqPZ
	8R6pfyBihILl3jq61fQ6lX46jYeK359XQpWoEHVf13xK5A4AHhAZrl3a90DHxypc/AjzHtFtF6L
	cdOI0E9R5o8+JY8FZ5AA53zVSJgqJX+/HtPSbtZx/T/6g3xg+bk1Zw/9tUeLvP6GACRm29vgfFc
	XdRFhWkqwQ4G+aPfEf44f9QvDwfEsvUAnfSN9+jXH2AhyjswiI/iv0sT2TCTH4si9CFdT8MBCpN
	dqB1QJDJaDA6VTTA0kGOOI7mPERqTehSjJUQxVLKtRwU1yE8VdOtMxsp8sZLULep2wMc9BpALbA
	qrW0JOwGU1GoWwEnLVK2ChYOE57HTNBLSTzqvS4vPAWaVOMbncERABMiegCEy60yqfm4FdwG6q5
	zGKDhA57ljMMgTjqwKQupp2ndMJpUHsuk0f7MElOZIqCPQOEEKkD3tyHNcQ1TlHtA=
X-Google-Smtp-Source: AGHT+IEGzoj+G1XJyD7HRZUpDf/Nmo3R0LQETO+OA2bCF/axjJi8k5L8RSAIauSreqKt4GiwYJQXaA==
X-Received: by 2002:a05:600c:1d14:b0:477:9d88:2da6 with SMTP id 5b1f17b1804b1-477c026ed62mr28503395e9.0.1763736859683;
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:159f:1839:bb92:1eca? ([2a01:e0a:3d9:2080:159f:1839:bb92:1eca])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7f3635bsm11604067f8f.17.2025.11.21.06.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:54:19 -0800 (PST)
Message-ID: <cd200f33-dd6f-4eb3-b2d9-8f41d0dde992@linaro.org>
Date: Fri, 21 Nov 2025 15:54:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v10 04/11] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-5-kernel@airkyi.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20251120022343.250-5-kernel@airkyi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/20/25 03:23, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The drm_aux_bridge_register() uses the device->of_node as the
> bridge->of_node.
> 
> This patch adds drm_aux_bridge_register_from_node() to allow
> specifying the of_node corresponding to the bridge.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>   drivers/gpu/drm/bridge/aux-bridge.c | 24 ++++++++++++++++++++++--
>   include/drm/bridge/aux-bridge.h     |  6 ++++++
>   2 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
> index b3e4cdff61d6..52dff4601c2d 100644
> --- a/drivers/gpu/drm/bridge/aux-bridge.c
> +++ b/drivers/gpu/drm/bridge/aux-bridge.c
> @@ -35,6 +35,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>   /**
>    * drm_aux_bridge_register - Create a simple bridge device to link the chain
>    * @parent: device instance providing this bridge
> + * @np: device node pointer corresponding to this bridge instance
>    *
>    * Creates a simple DRM bridge that doesn't implement any drm_bridge
>    * operations. Such bridges merely fill a place in the bridge chain linking
> @@ -42,7 +43,7 @@ static void drm_aux_bridge_unregister_adev(void *_adev)
>    *
>    * Return: zero on success, negative error code on failure
>    */
> -int drm_aux_bridge_register(struct device *parent)
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
>   {
>   	struct auxiliary_device *adev;
>   	int ret;
> @@ -62,7 +63,10 @@ int drm_aux_bridge_register(struct device *parent)
>   	adev->dev.parent = parent;
>   	adev->dev.release = drm_aux_bridge_release;
>   
> -	device_set_of_node_from_dev(&adev->dev, parent);
> +	if (np)
> +		device_set_node(&adev->dev, of_fwnode_handle(np));
> +	else
> +		device_set_of_node_from_dev(&adev->dev, parent);
>   
>   	ret = auxiliary_device_init(adev);
>   	if (ret) {
> @@ -80,6 +84,22 @@ int drm_aux_bridge_register(struct device *parent)
>   
>   	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
>   }
> +EXPORT_SYMBOL_GPL(drm_aux_bridge_register_from_node);
> +
> +/**
> + * drm_aux_bridge_register - Create a simple bridge device to link the chain
> + * @parent: device instance providing this bridge
> + *
> + * Creates a simple DRM bridge that doesn't implement any drm_bridge
> + * operations. Such bridges merely fill a place in the bridge chain linking
> + * surrounding DRM bridges.
> + *
> + * Return: zero on success, negative error code on failure
> + */
> +int drm_aux_bridge_register(struct device *parent)
> +{
> +	return drm_aux_bridge_register_from_node(parent, NULL);
> +}
>   EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
>   
>   struct drm_aux_bridge_data {
> diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
> index c2f5a855512f..7dd1f17a1354 100644
> --- a/include/drm/bridge/aux-bridge.h
> +++ b/include/drm/bridge/aux-bridge.h
> @@ -13,11 +13,17 @@ struct auxiliary_device;
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
>   int drm_aux_bridge_register(struct device *parent);
> +int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np);
>   #else
>   static inline int drm_aux_bridge_register(struct device *parent)
>   {
>   	return 0;
>   }
> +
> +static inline int drm_aux_bridge_register_from_node(struct device *parent, struct device_node *np)
> +{
> +	return 0;
> +}
>   #endif
>   
>   #if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)

Looks fine:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

