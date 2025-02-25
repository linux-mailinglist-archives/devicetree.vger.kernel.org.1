Return-Path: <devicetree+bounces-150845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D159A43B25
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CE4D165362
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F68C263C9E;
	Tue, 25 Feb 2025 10:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VFXVRp8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8511266570
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740478386; cv=none; b=o1RTiymoSKpi9k27CUci3ZAWjihJc3qHEUuYwuZi72L0FE+OVqB4LN1iqVZkCC1LQv5taL6O37aTfWWwn2/iVh23WAgyiCF7H21RnY2POIEQt+A/M7GO5+L3PnB9LreoSUBlgqsXJSc4Qzl0cp8zzSNAIDVxiu+FRMN8qiQRacU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740478386; c=relaxed/simple;
	bh=oBN48rQNwcgEEQQHRVpwovfkhEWcWl05Sk8OBJd2mEI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IjnOe0lCuSL2oeTa7yAZOOVNnI3mPb823luBOMvuEFo6+bhIQRzWljK29dTyFRo89VnsoV7iR5vlCSbIY00h6bYWRcJBVwzO/SeCFDn8ltVtjvLN6LRykTVrmIyuQwHfPSNQnTD/MORxh2U7Q+nsMe9qntWIicKqRUr9K7t4jd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VFXVRp8E; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38f265c6cb0so2634626f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740478383; x=1741083183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/CdZ+U93yCfAHM20K4VCGZK5tana82Sk9q6rPMpkaE=;
        b=VFXVRp8E6KQBAE/QrJEvqbfnxaFghlCCJeWBqjPK8YMcrAImP/dqy22wHqhJFxYbLw
         H+i7zifo/+DhfxTwGxvchi3afv49OgjRFz88HW63fHyKFBnBjhGXv1yYGh2JVL4Emg2l
         TwxTSIwavbfWgYYz7vQ6Syqk+S1p0Dl+n1X2GSb1OLPNTbFzEVgkDJHrC9Enkk2QYQ+F
         msSc/Yyn4vIAOXeJ+23xiuLDolQSeOlenT7tek6Sx7hSoPKygBj7Qa9pvDRVoV2kXngU
         P158D9hK4NpiD9q5PAwwWhVBm0XKAPm+fSka68VSP/gGYe/g7JXSOUUj3MDvRhaG8H5l
         fkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740478383; x=1741083183;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j/CdZ+U93yCfAHM20K4VCGZK5tana82Sk9q6rPMpkaE=;
        b=LlguIh2YAIEsCiNWvfGPCDgNhTSJuLCRHBLL315VkWd/65eSc0eM41LF3YYj+VyFS3
         z1QlEvM/kxKGI0FdQ71nKvpxTL2KtcMQrThZX0kTJjZO8qt9Mw77Ypf9E/TnXjxSc780
         GX6aI2p2kqTUfMwyH8ZvWqTa1g1sGIUUIiK2wA5WAvv3OcZXf1kDnDXD1JMrpRYVMveU
         CDauyAK2Og1cHwwLflHyQEQ2VERl5WRtAo1df6XAhS9S9gSKZ98mvbnSUv4vSuqYLJ/t
         5NDpFrF9VYVJe2oHW9CXkezt+b4AftIOWUVwyCR3CfLdw5DSa+4JKrhVINUGKBFQ4u1O
         lneg==
X-Forwarded-Encrypted: i=1; AJvYcCXGpvqcVuXouFpPsvn34pxkKjOQSeTrtYQx8gBfu6vIlMex+PEaGU8M9XwwangurxsPViby/UJsmAF/@vger.kernel.org
X-Gm-Message-State: AOJu0YwNRe3AWPl/ecUwhW9DurHmhhYum/CoAQxmMGnD72Ml73ZY7+Kn
	iN+lf144rnJcm50abseGm1mMQF+dAbFbYLv8pFC5tg2dcdhaakZNZvj9m8+cnOw=
X-Gm-Gg: ASbGncvpawI05Uu3MeRZdKU1XVq1imk6ZoB8kQRogU/klrQqmq7Hk/akhqQkzhx1Sy4
	hXWzSkxv6H3hBrHWi1tkYoaB3UOtm+u6EvoXxjECop/RxSOD4yJIL5RPWZPLzF/0rXH5KNp7e8H
	aWjBAbdZ+vX0M4KtzejP4uPILfpSEm8OX09NjkRb46F3qZwuwTAKgQYvQQjU4POCEnMWpAcHDZ2
	MbxoAIDNmMppCvt/y7bL++uQYXVWqar9lxVa6UNc9tmVAqevxfxsjiTpgZUv6/cLafc6070GIap
	dlSCA9dcv8U/hJHlE1HBjgSTYgvOdke6kVdL
X-Google-Smtp-Source: AGHT+IFG+1rFiHyvGAdLQom1xamSgtQXx5X9EhBwiiiWXiH5ajISwOfGmcfQGL3L3N7dQSd1xz/2Pg==
X-Received: by 2002:a05:6000:1fa3:b0:38d:d603:ff46 with SMTP id ffacd0b85a97d-38f7d1ffbfemr10982478f8f.14.1740478382825;
        Tue, 25 Feb 2025 02:13:02 -0800 (PST)
Received: from [192.168.1.100] ([37.167.173.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43a9d921c9csm93910385e9.11.2025.02.25.02.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 02:13:02 -0800 (PST)
Message-ID: <d08ce3dd-a639-4829-a9ca-c4f897336228@linaro.org>
Date: Tue, 25 Feb 2025 11:13:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 07/14] drm/panel: simple: add BOE AV101HDT-A10 panel
To: maudspierings@gocontroll.com, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Liu Ying <victor.liu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
References: <20250224-initial_display-v1-0-5ccbbf613543@gocontroll.com>
 <20250224-initial_display-v1-7-5ccbbf613543@gocontroll.com>
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
In-Reply-To: <20250224-initial_display-v1-7-5ccbbf613543@gocontroll.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/02/2025 14:50, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> add support for the BOE AV101HDT-A10 10.1" LVDS panel
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 9b2f128fd3094bfb6731fc348b91cc101f495a86..a52977ab73dc2edab0d1954c702fd797d6a5b969 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1374,6 +1374,35 @@ static const struct panel_desc bananapi_s070wv20_ct16 = {
>   	},
>   };
>   
> +static const struct display_timing boe_av101hdt_a10_timing = {
> +	.pixelclock = { 74210000, 75330000, 76780000, },
> +	.hactive = { 1280, 1280, 1280, },
> +	.hfront_porch = { 10, 42, 33, },
> +	.hback_porch = { 10, 18, 33, },
> +	.hsync_len = { 30, 10, 30, },
> +	.vactive = { 720, 720, 720, },
> +	.vfront_porch = { 200, 183, 200, },
> +	.vback_porch = { 8, 8, 8, },
> +	.vsync_len = { 2, 19, 2, },
> +	.flags = DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW,
> +};
> +
> +static const struct panel_desc boe_av101hdt_a10 = {
> +	.timings = &boe_av101hdt_a10_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 224,
> +		.height = 126,
> +	},
> +	.delay = {
> +		.enable = 50,
> +		.disable = 50,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct drm_display_mode boe_bp101wx1_100_mode = {
>   	.clock = 78945,
>   	.hdisplay = 1280,
> @@ -4813,6 +4842,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "bananapi,s070wv20-ct16",
>   		.data = &bananapi_s070wv20_ct16,
> +	}, {
> +		.compatible = "boe,av101hdt-a10",
> +		.data = &boe_av101hdt_a10,
>   	}, {
>   		.compatible = "boe,bp082wx1-100",
>   		.data = &boe_bp082wx1_100,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

