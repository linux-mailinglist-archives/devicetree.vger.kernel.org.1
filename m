Return-Path: <devicetree+bounces-239664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D98AC683E7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:42:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2C1284E047D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DB0298CC7;
	Tue, 18 Nov 2025 08:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZV1yTEjH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A8F285CB6
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455344; cv=none; b=p6qwo+cpVwozo5oPXnln3D5O/JdckOsA4vqSjbuTqteHAXCw9td5674uAO5H9OA84iJt5CE2dE5H3BL4M5nMxbXboLSo1ALTSaQPuqCVo5a5PSD7R1QmESzCfeSS6eygIVMcUEFHffpnCea35yFquk5hvpWaZSS8/Z08KZgieL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455344; c=relaxed/simple;
	bh=DdUji/HM8nQeo7OEwAU4h/BDePdwYzy9k0SpQCviVRU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JB4zZKIOC+IcWkeT5I/6vtxWqEcDBLueLSSRwjOdj3pZOL4c0CyZBNQv7FNbxepMGfoYIDv0O0XaxPdPzakxGOBG3GzGWhvbYn/5TlJfO9Kf96+Hd+a+55I8UlFLCoVHIEbWPrS5OOePE7YcI12d3SUfq1EY64MW+5STGn3owtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZV1yTEjH; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b736d883ac4so679524466b.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763455341; x=1764060141; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WH5kfDA8Its3YM03fhXy4ZKpO/6JPKnHsTZ2/L3NhrE=;
        b=ZV1yTEjHnKQ1iJWXOdC19ogB64w7H1cN24F2KEylSVF8UvDYWxDqHgQ4KTLg3ohsQW
         4wNA1YihRPGT0rl58LzUEExf/0fsuU3xdVM51viEq9PsuCZvN/+ZwRjyl+kePqKYx+MH
         Qq+gTUUCpp6eJpJQlzf6XdDjLOAJgHsRPvAwlsp9haPkcCMUFoVabRaOca6xgoixSRmJ
         ziG7iFOHPKDLpHYCv0Gri7X2/HKdN8jKznvuyQBZD2hANcGSp6tqOwFktEHZdO4rVSA/
         lZLtrCHXlHf17pdpyRKa+qd54Hut8qfHJT2G1bZFr3XDNB/ipbVhn4NClzoUdkdQKkEh
         aX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763455341; x=1764060141;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WH5kfDA8Its3YM03fhXy4ZKpO/6JPKnHsTZ2/L3NhrE=;
        b=u/Ev/HKTlNJyDh1AlVpIQhCWS3N/KkmQQD0LklEtiKpDLSAN363Y9af+MvcaSZW0J+
         ++cRNdEcq6HgI9k5g2Pw3Ksscs6ogQXdRB382FtVj5pcdO5RXQvumI26hHGjzSoqhzWw
         QKbBjiv7Jy5qHVtFU8DDnty5Zpmmvm5kzQ2zbmUX6173H5WrAoeSXTgJbFA5/5xYt3XH
         GiwHbsBcjns7ybQYYWKI800GET/lffokw/nvpwULo+VPeM+WhI+DtptW+XBPQ02+kb+E
         uzr0w9eW4D2Ze12Ru2vXiG5rCAUPklCCLcHIXpXHgBPaaU4TuNizB3guXuvNpwxsjrY/
         mz2g==
X-Forwarded-Encrypted: i=1; AJvYcCVJGb7+19clz1fBu79Ekm7dBmoLaGq9UC7HtM95si5JpIpATsnxOISP7Krq38MkJI60spi2N2CGhdy5@vger.kernel.org
X-Gm-Message-State: AOJu0YwIs57EPipcaDQef+5VKyouysh+HKtIwsRHk0og6vs4xvq0KNHy
	YJXqjPFPg5elGcw1aKGp0m8/GnaaZmEZFz4qPnc3qD4AByZob5KfgLUn8FmSHTT5TRk=
X-Gm-Gg: ASbGncsufbJaAOSozfLW4GOoQbq1xZYD8JoCFCZQzTKNtWOh9eb57oB0QLsGwRKG9au
	SbL09O6DqW4PbFYBpYRixIsyC54vGaa9hwQNIG/smWx/sWOYysV6a2c7b0lOY17HSGWqyB8YvP2
	2rbf7kEfcpam0MJyMplQgmD0pHL671XaVMUg70kRsPWuQDVvYl/wlJ+Bv6ZEYlaKdVrlEd3a3da
	r3kklGrgbfQkLrQGcocv+UMtDAk84j6aoG/HBuYaSaj5WRY91bCASiYva5GngOb/2FMPYCEqu4K
	gCIDAYnbxNqa5H/9+yLa77py/wwtnRbB1FjbQxH7OKPZ0W1E7hG6ELghwfCRYyXCgqHwqcOuNrU
	f4Ye5rgVahtYT4Wcw1bShR3PETrHwutO0630bkQph3gZQxOaFQ8KtxABK5H/3AX/iAeOVSU/Zhe
	TexUbgt4l9z77Bz0645ObeZ0WgsdXv73lrR8fZ7WeR27LByDnZBL+uT/9gsLyAMlBkAhEO3Pxi+
	g==
X-Google-Smtp-Source: AGHT+IEhaFrOYu4Py+Us8ArflJOXu7G/hF9hQlr+6Ey8vBfY4KTWkqm9lk8u57P3nPnHffpUYL34jw==
X-Received: by 2002:a17:907:1c96:b0:b73:39c3:b4f with SMTP id a640c23a62f3a-b7367be02a8mr1542271266b.50.1763455340651;
        Tue, 18 Nov 2025 00:42:20 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad4487sm1331425866b.22.2025.11.18.00.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 00:42:20 -0800 (PST)
Message-ID: <4bca0397-df09-49b4-aced-3046e09a6861@linaro.org>
Date: Tue, 18 Nov 2025 09:42:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 3/3] drm/panel: simple: Add Raystar RFF500F-AWH-DNN panel
 entry
To: Fabio Estevam <festevam@gmail.com>
Cc: jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20251115025827.3113790-1-festevam@gmail.com>
 <20251115025827.3113790-3-festevam@gmail.com>
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
In-Reply-To: <20251115025827.3113790-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/25 03:58, Fabio Estevam wrote:
> Add support for the Raystar RFF500F-AWH-DNN 5.0" TFT 840x480 LVDS panel.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index da6b71b70a46..57c44b016957 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -4106,6 +4106,30 @@ static const struct panel_desc qishenglong_gopher2b_lcd = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct display_timing raystar_rff500f_awh_dnn_timing = {
> +	.pixelclock = { 23000000, 25000000, 27000000 },
> +	.hactive = { 800, 800, 800 },
> +	.hback_porch = { 4, 8, 48 },
> +	.hfront_porch = { 4, 8, 48 },
> +	.hsync_len = { 2, 4, 8 },
> +	.vactive = { 480, 480, 480 },
> +	.vback_porch = { 4, 8, 12 },
> +	.vfront_porch = { 4, 8, 12 },
> +	.vsync_len = { 2, 4, 8 },
> +};
> +
> +static const struct panel_desc raystar_rff500f_awh_dnn = {
> +	.timings = &raystar_rff500f_awh_dnn_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 108,
> +		.height = 65,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing rocktech_rk043fn48h_timing = {
>   	.pixelclock = { 6000000, 9000000, 12000000 },
>   	.hactive = { 480, 480, 480 },
> @@ -5378,6 +5402,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "qishenglong,gopher2b-lcd",
>   		.data = &qishenglong_gopher2b_lcd,
> +	}, {
> +		.compatible = "raystar,rff500f-awh-dnn",
> +		.data = &raystar_rff500f_awh_dnn,
>   	}, {
>   		.compatible = "rocktech,rk043fn48h",
>   		.data = &rocktech_rk043fn48h,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

