Return-Path: <devicetree+bounces-130586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FF89F07D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:25:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58849188239A
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B4B1B0F00;
	Fri, 13 Dec 2024 09:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FjVpYRP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFE61AF0C5
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734081891; cv=none; b=txjs9OmUuApT7x9dy7WeavgZRrgv4Y9AqfiSbni/7X3BC+EYi6IVSo6XUPzivxaS5kjhoMsv3Fm82b3aXjjQdUxy05k0k+xwqWTqxmWwVG+Z/ITPhsUG+JnSzg8ILbjawyZqle6tZoxpJekFK8m2kPui3lsTNg79RsMK4Ks92Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734081891; c=relaxed/simple;
	bh=7pum8xym9gd2Ru/RBQxbsTuER18afEHVCsxRibA6Y0c=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=UgpjDO9+TUqKUhYD0HzIGWioQXLqGypYwLfwyLtUtgOSZe/I32wEygaYyOdJ2phKkq59ZwVfXGDC15CMpRzI79/f+NcOe4FpiZXeApMLPjOyYHwcbRskY2/TXSVjjk0j41Q4BKICyOCgzUZ9FH5yH9lTZi3Y/0KGlI9TFYUj8Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FjVpYRP0; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso1559415f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734081888; x=1734686688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wutSH20sqxWpg2z4HRMnPTYhGp8Ph9hwGl0McLup9A4=;
        b=FjVpYRP0dL7yAdtA61tUgFsS0B1K3DjDRnI3jo+mzduVCIanypO2Lj228pQnGxFtJk
         0xlvOEVCqe8UyCyVPfZGLWQZveMiUzO+kckAEuoBYHOytfi3G7SbiQe0uBjdxFDQo4BS
         YGf7dWkXy78arkpQaepbJdpsUDFuQE++cM890ZXHwrHN3MfRgx0dZJjStz9KP46t5lwh
         2VUjRdkOI6nEvKuImF3DXxWNKTQok1iwVb4PZam1CaQDZnVq/Dm+Od86c6h9/647jm4O
         BwHNFB1D+C/md4DjVqJIhU+WEPDKhB94EKvx+rGL5OYuwTFkzqewBG4OGLLgfAJ5Dxyi
         F5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734081888; x=1734686688;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wutSH20sqxWpg2z4HRMnPTYhGp8Ph9hwGl0McLup9A4=;
        b=AXz5c6k6oZPQejBfkgXIYfh+Zouwo2efEPM0buEwVqTeCPMUYk+GpmniFLLaCg4woT
         vlE5x/ouqw8QfxfVw/UGtTSdZHrgwhQGCTtyn+pAemc+sUvNZ/XPKY7c/csjF91uwbNA
         5lLhcdTcUxRTXy56FwDtBSXnBvxMI+DNtAPjDiJM2ileQfEJCzcuaWU3RIon9DR3nIqR
         dgIjhrPt/3FROn3wFxnFlr3X1A2g0QG+rGviG8XD3hm82OEmAMNHovRRoTSBWE6FQuVk
         hZtsp6eqgGcD5apz1V0mdT5US9PYNlrtN9iuamMccBf1MuLR6YIpDw/o/P5HK+uw7uvD
         fQ7w==
X-Forwarded-Encrypted: i=1; AJvYcCX8EtF9czy0/roUyioY92xoVGDY+5aG4UKJiYqf6cuPySkalNqrDQkMdGEJenFCgNZKweGN+8GzgTcP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8yfD0JRrCDy7Wv1FFCkwxlSMt2Hu3dJZasxwMjh4o/MoPJdc8
	F/r+kGM+oAypSccV3by58tN1kvp1T6vV+m1QcLqVhwRdbQBcT89g6PZfKZUESQQ=
X-Gm-Gg: ASbGncvx2qGW1fWi6v9+bT2xmJ6zhlIJil9tJVGj4ve1Omi/NXfxIYKjSMt1p1MgCSX
	b84Yxpgj1ryk9aXYB5ZZ47hQUy/k21WMqq4bSifO8d6Shie8rOJnTkGeGwUswvNyAYoEQMEWwCv
	9cghopmMXouOsMKEczvfEXBx8C2NN25spA7wR6mNnq51ZHDxd/nX5YTEQEC0yzg9q7ESSQ+sC9O
	zFbKuOYkoj0OVtlyNF3vcrb8XOccdw+d9va0k5ZQ15V8+6Pj1dlWsiBiQBrXSfDWrGNtiSQqinR
	ERjqBe40xgl3U+g2UsP0GPRmowgvUPqMYQ==
X-Google-Smtp-Source: AGHT+IFI074Lwn8iG2p3aXLmDgxZRpsAda5g2MDoS7aVwb7sB0VGKt4LBItRaVXvt767TAep4zOBoQ==
X-Received: by 2002:a05:6000:1ac9:b0:385:f23a:2fec with SMTP id ffacd0b85a97d-38880ac6078mr1521781f8f.11.1734081887751;
        Fri, 13 Dec 2024 01:24:47 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4795:2d16:2587:ed70? ([2a01:e0a:982:cbb0:4795:2d16:2587:ed70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3878248e633sm6740011f8f.4.2024.12.13.01.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 01:24:47 -0800 (PST)
Message-ID: <08a636e5-5263-47bf-a046-29da9584b673@linaro.org>
Date: Fri, 13 Dec 2024 10:24:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: simple: add Multi-Inno Technology
 MI1010Z1T-1CP11
To: Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
References: <20241212122701.25305-1-marex@denx.de>
 <20241212122701.25305-2-marex@denx.de>
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
In-Reply-To: <20241212122701.25305-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2024 13:26, Marek Vasut wrote:
> Add Multi-Inno Technology MI1010Z1T-1CP11 10.1" 1024x600 LVDS panel support.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index d5bb850df9d20..d68662b7265ae 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3340,6 +3340,33 @@ static const struct panel_desc multi_inno_mi1010ait_1cp = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct display_timing multi_inno_mi1010z1t_1cp11_timing = {
> +	.pixelclock = { 40800000, 51200000, 67200000 },
> +	.hactive = { 1024, 1024, 1024 },
> +	.hfront_porch = { 30, 110, 130 },
> +	.hback_porch = { 30, 110, 130 },
> +	.hsync_len = { 30, 100, 116 },
> +	.vactive = { 600, 600, 600 },
> +	.vfront_porch = { 4, 13, 80 },
> +	.vback_porch = { 4, 13, 80 },
> +	.vsync_len = { 2, 9, 40 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc multi_inno_mi1010z1t_1cp11 = {
> +	.timings = &multi_inno_mi1010z1t_1cp11_timing,
> +	.num_timings = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 260,
> +		.height = 162,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing nec_nl12880bc20_05_timing = {
>   	.pixelclock = { 67000000, 71000000, 75000000 },
>   	.hactive = { 1280, 1280, 1280 },
> @@ -4944,6 +4971,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "multi-inno,mi1010ait-1cp",
>   		.data = &multi_inno_mi1010ait_1cp,
> +	}, {
> +		.compatible = "multi-inno,mi1010z1t-1cp11",
> +		.data = &multi_inno_mi1010z1t_1cp11,
>   	}, {
>   		.compatible = "nec,nl12880bc20-05",
>   		.data = &nec_nl12880bc20_05,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

