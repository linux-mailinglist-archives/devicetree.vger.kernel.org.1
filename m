Return-Path: <devicetree+bounces-94855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB62C956F2F
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:48:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01DE1C22E55
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6444612EBD6;
	Mon, 19 Aug 2024 15:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JgiWBYzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E8243AB9
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724082477; cv=none; b=Hx+UAHxcCSXAv4cAK58iOEbLk5TSlvih+eB90N+a5RPbRsbNv0TKWSA/8Px7PZJbDbORhyRpUlzg65MPZ6MGbibKEhvt/P0YjhA1Dg/K7rSi6MVnuL/hJhWBhwXMa/cO0Qxe0dkt/5FiIqxIu3U3mNrCVwZjHd+LX+GIWQozT/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724082477; c=relaxed/simple;
	bh=RnB7uC0DrNOkONHOzL3Y/VKrCqYbIEqs+KHDXCKiwds=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=G2+9qumruGplxsVdbOWEKpLvQFcqVAHUTFe3Jo4tLEIve3YlUXYq7E80MPTq23rGrAnle5mI24L9gvJWxDOHNk7yn+7od/hDkhcEV4rmw4rcbxyHdrjvyYXoQcVKeHPh68o6uc1yWZx/mirSlx6jy3e+n4B1VFQ6PYb/fUtDMFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JgiWBYzf; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-429d2d7be1eso23471495e9.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 08:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724082472; x=1724687272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIt2br96mdLhWBp6JP0ipSVmrTaKgcGBYASdKyRKabE=;
        b=JgiWBYzfJwjjjY2oc/h2IwyTd+DO/+Y7m2p5+rgN/z1cA8FbaijDyUeJa2tQ1TR19K
         5VNPwF8+ZZwGMXRHceMCgB/9/GtbArcyDLWJcAqYlMfBUr9rWp4Gpn6SysVFM7qnreot
         rhegwsSHHFBR7GoWNKO/eBxj4TshddfCJa8S6JrHXAhRwftobhXbL8F6D29n18ykzs4o
         R7qaSPp2PimzdIi/pQkg+Uj4riGvxUN0NHGh6xOEpziLrIzU4Glxd8P1sMNeJEUxCFUl
         H2MnbZWHH1aIgq/DKqMDScXBbaKEeO2eBMBDgZjhTKCl42sTrnp5fbKIszuqYhcy78DR
         84QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724082472; x=1724687272;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kIt2br96mdLhWBp6JP0ipSVmrTaKgcGBYASdKyRKabE=;
        b=T9oMXSPs9xEnFnq5snSCXABJ3eEk4qU+bZRiFIHJBo/NFszNOQimBYJtXjTtRvyWIf
         kgXSt8ZQIn+a3iJ/3lz9ADog4y04GZibJjQkAm1l0IRYK7xAKFTG9+nBIvMKfNeh+pgf
         2fR/btSk4GwDWVTNl+Jk5RNW18BjU6PzRpyILQxhomK/9Cj6xp9p76hUbNNMDrthOxws
         duP3x2mHy5UoJLjg+hW+IJ6vWNOBazi4pr16RubY8tF9a6Ds5pBVoSmM+oAbXNmBrQ7m
         /Z5X1u4VBY7zcUNsjmbN/w/T6imqf/mBJxX+gWNAxQs2xmyzPSwcGDvDskS5U5ezSwSB
         db6w==
X-Forwarded-Encrypted: i=1; AJvYcCXkeG1cfQVT5bjtPcAfPPGcy8fzbCFnSkurvvG/eaf6LlqKSn01+uccDcF6E87CFeXijRj8mSc0Wm1zoZlRI4EusvoN2nMOahrRnA==
X-Gm-Message-State: AOJu0YzpiGZrZc89wzoX++jXSc4MXThLL0FpUkpFenqmVl2Sjb+5b9O6
	T5xOsonFRRu5O9uODIN7qux5vlRQPiozuIAHppmAIsl7PWEQe/jrzcfQC3kiBpU=
X-Google-Smtp-Source: AGHT+IHpqK5ydGJiaG8Tsb6JQ3a0Hg0XUq0yQbn0YLAqxKvXRrWxX6h8gI/Czs5mZegJOJge3Dlqnw==
X-Received: by 2002:a05:600c:3b8c:b0:428:9a1:f226 with SMTP id 5b1f17b1804b1-42ab54ca592mr370515e9.1.1724082472005;
        Mon, 19 Aug 2024 08:47:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f54e:4b0a:5175:5727? ([2a01:e0a:982:cbb0:f54e:4b0a:5175:5727])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed650903sm114237705e9.18.2024.08.19.08.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 08:47:51 -0700 (PDT)
Message-ID: <e1b8756c-7b0a-4042-b1ba-24d3bcf1dad3@linaro.org>
Date: Mon, 19 Aug 2024 17:47:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] drm/panel: simple: add Innolux G070ACE-LH3 LVDS
 display support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
References: <20240729-b4-v6-10-topic-innolux-v2-0-27d32c766ce5@pengutronix.de>
 <20240729-b4-v6-10-topic-innolux-v2-2-27d32c766ce5@pengutronix.de>
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
In-Reply-To: <20240729-b4-v6-10-topic-innolux-v2-2-27d32c766ce5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/07/2024 09:02, Steffen Trumtrar wrote:
> The G070ACE-LH3 is a 7" TFT Color LCD module with WLED backlight.
> 
> https://www.data-modul.com/sites/default/files/products/G070ACE-LH3-specification-12058417.pdf
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 35 +++++++++++++++++++++++++++++++++++
>   1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index dcb6d0b6ced06..d3200dd035662 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2509,6 +2509,38 @@ static const struct panel_desc innolux_g070y2_l01 = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct display_timing innolux_g070ace_lh3_timing = {
> +	.pixelclock = { 25200000, 25400000, 35700000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 30, 32, 87 },
> +	.hback_porch = { 29, 31, 86 },
> +	.hsync_len = { 1, 1, 1 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 4, 5, 65 },
> +	.vback_porch = { 3, 4, 65 },
> +	.vsync_len = { 1, 1, 1 },
> +	.flags = DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc innolux_g070ace_lh3 = {
> +	.timings = &innolux_g070ace_lh3_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 152,
> +		.height = 91,
> +	},
> +	.delay = {
> +		.prepare = 10,
> +		.enable = 450,
> +		.disable = 200,
> +		.unprepare = 510,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct drm_display_mode innolux_g070y2_t02_mode = {
>   	.clock = 33333,
>   	.hdisplay = 800,
> @@ -4599,6 +4631,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "innolux,g070ace-l01",
>   		.data = &innolux_g070ace_l01,
> +	}, {
> +		.compatible = "innolux,g070ace-lh3",
> +		.data = &innolux_g070ace_lh3,
>   	}, {
>   		.compatible = "innolux,g070y2-l01",
>   		.data = &innolux_g070y2_l01,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

