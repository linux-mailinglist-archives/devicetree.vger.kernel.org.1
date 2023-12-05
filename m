Return-Path: <devicetree+bounces-21631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C652804BF7
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4367A1C206FD
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932643B2A6;
	Tue,  5 Dec 2023 08:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aNU9fxHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44275127
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 00:12:21 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40bd5ea84d6so16921205e9.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 00:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701763940; x=1702368740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7wAe2ibWDH0ZhCqoAhv1gBwvTcQnhf4kZzhDxO4W/w=;
        b=aNU9fxHBmxOm5XFv9coBBJYXkTl9agZNFpx2eEuJdCdI+oUim/N6rpIrFlRnhuo3mI
         uvUMy/6+0aytRVULeO093OPFPmcQKj8xVl02znhkmwH6IV3rwWWpJV6fAymN8uurSrt/
         lahwoURkkA/gw0c2ejSg+P3Y7hkahLCWWLIVLa3Qh6WXYYOuk43XpYsQW0LtaWvAg+p9
         Z9BtPkbqm8JPE++Fk8jTcbaWcVjhUbGO786mNggz6maXjNVt94Pta8T2ZBGyKhfvZucx
         2c9GN9mVfpUNJvwiZtSIkOhqsWhwim7loBVWRHbGdnqQCTGRAyJ2IxC4d9+McjxauqoI
         DDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701763940; x=1702368740;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z7wAe2ibWDH0ZhCqoAhv1gBwvTcQnhf4kZzhDxO4W/w=;
        b=snAushEzkzZQIKYPGYU1tsNdFtFtZYK9DPDrt5NHkbRcp5fLzpQj1Q6t6Gj9L0/dxK
         47cR2LIvzeTeyX7DzO0E6CC1y5Pp/aN/XS0twQ1WEy1Dh1MJ5RpzthbpMlO2/FZbmKbj
         ofXJivrMwecKJ37aWZOWddCiispr2C+Rtc6cMhnlzioD+sit+n8/fFYTcX7t6ZbXu9Z9
         lUsCELpjkn084HSgj+UcB0gnx1dAr/kGawgAiIDyvC2lZwVbU31dA7/DWYwtAfZyGLeK
         QP5pzPhAVhbOrQYMqWfvxnn+F9hOFz4A8SCQ/gwhEVzGYhEs8G3QQhFKhZbxyHBEKOGf
         kZSw==
X-Gm-Message-State: AOJu0YxcGIbOfvA7OH4ttRNEbEUQx97/O20vUf3QHL5qqyPvgn7p1a+i
	biHDWvwym6GFJ45GXBTsUZIpSA==
X-Google-Smtp-Source: AGHT+IFe2kyFBdh9LJfMewJk83EMmWzbSVtlpJx9UcEIqgDMY7WHSlKj51Du/R3U6/QdQg9U1g7wZQ==
X-Received: by 2002:a05:600c:4f4f:b0:40b:47d0:cff with SMTP id m15-20020a05600c4f4f00b0040b47d00cffmr284027wmq.10.1701763939719;
        Tue, 05 Dec 2023 00:12:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b004063cd8105csm21461190wmo.22.2023.12.05.00.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 00:12:19 -0800 (PST)
Message-ID: <bc46f8da-8076-4586-a31e-84ab08feadfe@linaro.org>
Date: Tue, 5 Dec 2023 09:12:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: simple: Add BOE BP101WX1-100 panel
Content-Language: en-US, fr
To: Tony Lindgren <tony@atomide.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
 Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
 Sebastian Reichel <sre@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
References: <20231127051547.15023-1-tony@atomide.com>
 <20231127051547.15023-2-tony@atomide.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231127051547.15023-2-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/11/2023 06:15, Tony Lindgren wrote:
> This panel is found on Motorola mapphone tablets from mz615 to mz617.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1324,6 +1324,35 @@ static const struct panel_desc bananapi_s070wv20_ct16 = {
>   	},
>   };
>   
> +static const struct drm_display_mode boe_bp101wx1_100_mode = {
> +	.clock = 78945,
> +	.hdisplay = 1280,
> +	.hsync_start = 1280 + 0,
> +	.hsync_end = 1280 + 0 + 2,
> +	.htotal = 1280 + 62 + 0 + 2,
> +	.vdisplay = 800,
> +	.vsync_start = 800 + 8,
> +	.vsync_end = 800 + 8 + 2,
> +	.vtotal = 800 + 6 + 8 + 2,
> +};
> +
> +static const struct panel_desc boe_bp101wx1_100 = {
> +	.modes = &boe_bp101wx1_100_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 217,
> +		.height = 136,
> +	},
> +	.delay = {
> +		.enable = 50,
> +		.disable = 50,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing boe_ev121wxm_n10_1850_timing = {
>   	.pixelclock = { 69922000, 71000000, 72293000 },
>   	.hactive = { 1280, 1280, 1280 },
> @@ -4252,6 +4281,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "bananapi,s070wv20-ct16",
>   		.data = &bananapi_s070wv20_ct16,
> +	}, {
> +		.compatible = "boe,bp101wx1-100",
> +		.data = &boe_bp101wx1_100,
>   	}, {
>   		.compatible = "boe,ev121wxm-n10-1850",
>   		.data = &boe_ev121wxm_n10_1850,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

