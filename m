Return-Path: <devicetree+bounces-254862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 695F3D1D4D6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 348783078978
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9D53815DB;
	Wed, 14 Jan 2026 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TDHZkHz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2733803EA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380727; cv=none; b=UrXD7dj1RO0NXwjbG5aXsoZ2a49FajaodWqE5Q0Ad16h4bA+JeaBqffpxOGYDY4KJb1IXVBCWaCO2KOO7lUYLHk8iYUsvMK46AOaR2IUsG+IwWMJ7KKOLv++ruMDMF0Jti+TUVJzPFyRGUVBNobWaVbfJLXKCBKWLXWRN3+9TlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380727; c=relaxed/simple;
	bh=M7IarCcSAdtAAX+9XNK4rfk7LbF21ncE+Togd7lC2Rc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Fh9w47hnuFxvkSCAlcE3BTKTkCLcDzIV/8z8IkLpbeqMAgwRxevnajEefWhl+o94/MpLGUE43TRBMzrfkh/orW6RuwbniIOJMUmxCogd5ILjPv/lYNJM2Bfx9UVisFt1UzoahNTaH5EpLBWuLA0eUDmEB2i+oVRJvzvd3UeZP1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TDHZkHz6; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso77243385e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768380720; x=1768985520; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=czF6PTDIQWWTPWMDuy3R+oHXMU3U5aJaxuYuzJaZsqw=;
        b=TDHZkHz6qxjSUwXrhE/OBjMeG5kIPfE8hGHpJjo0zUXAKn4KzArTNniBNYd4q5r6K8
         nFgRJkzIXu71HB0SwxLwDMAIM9Nez0BSPeWOUSmzA/FEh4/SvSlguBYsn5coIcqPh2z0
         fsZC8vWi+X8Q7IyoHqLrr0jrnkn8HvYmuP5DekptxR6k4st8uZHY6DcnoWtyDbF+IvI2
         LWlsI5Kk1dU5/oGMElFWeryGi9v17vWTzYYj8meirFspEEJ/Ns8lsnE0hjeDB3/D3uO7
         kL+fnBMjV/T0uT9BN03N1CD/2IlWlfLr7nkfnUhTjZbkzBy7GhgVV6tg8/x4xNrZ0TAW
         FhsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768380720; x=1768985520;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=czF6PTDIQWWTPWMDuy3R+oHXMU3U5aJaxuYuzJaZsqw=;
        b=s2ZcwS+C4A77pCJa2lNm1jxgEHv+4B6H6d0wcAE7MN2FFhiFnhxewv+vu8UWqIpn7x
         jQDuZHsi4+5gylns6NtbwOU/6l8LGrMlRXNUROA/5FxWTgT9BHQiirpnR2t0hruvW5C0
         IgWTmszfLxmveavywarWZlqLw9oI413m/vViFNcGL0uD2Un7NdxT6o1Ke0o9KaPI5a30
         oP+j/2yxM8uJyjmde5A9ygSX7VcqZlCGYXqFBNfuS2Hqam06NBx3TkPQwialsXExmJ3r
         ZlTX4MPl1dkRPioYUnO4lYgD3TO6GUlkZ24gtFCAvEDo77PcX6o2u3Q/HugEWN6SQ+rg
         p5mA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ0GDoy0QINlk7ai1UrY+KuShzdNYGv9LFh7n1K4zRvcO4cfMIs/EgvNvrZGHDy3zUr+OZzOG2ZzXm@vger.kernel.org
X-Gm-Message-State: AOJu0YwqxpgD59Gs1MrqoivbllZVOzfLjFOKpQleUK25S8VtkuJgT3Ic
	Q2DEYeSwC45V8RZ+f6vo5hhQQGhXXf3awX5y29ynvdpjCnE503JVr4nKoUd8LuaJ+L0=
X-Gm-Gg: AY/fxX7UA44z9BRQOVIa5Gc/wlyXPXZ0H0Ui3BrJ/bzQ+sZoszHRXXLa7PhtNUkSBK3
	9yjq5IrIx8dGhCq6a5A5EuK6dNqNloBmXUV131mjsQH4pt5XgCdVV7InNNOelzePDl4XwINC49Y
	U3qNYOXCYbQGLvYqBQo/rlv/LkMTDgQgS/ZvQykYfRCJDM4W0ahxf3jhMXArRNoMeLbVF1AQ0pF
	xU34Zo9P9pyGWopHAXiDMgucH5VP3TYl0kZHlKfSYCAZGZ/x2SCC4F8/TIo0tb7P0etIIF0i+GJ
	QuoV5gkTx65i5E0K/rjTQ0517eRpmwj/AGwaThHlFkJ6+eGe/Nn4GosVG6/+yFX7/8Bushs0T+y
	h1Mcm3FWUMx6amdh0wno0x/GNjH2DpWS8pGf4NiGN/nXfYs+v5yDqgLbVEeW64b7iZuXNodtG0N
	YiALgezDyhzTMX/FcnoLtYbwb+iIcXF4JH28NXH+sCdtBwC7oll3MqqsF5cqsa/8A=
X-Received: by 2002:a5d:5d0a:0:b0:432:84ef:841f with SMTP id ffacd0b85a97d-4342c548710mr1806889f8f.38.1768380720110;
        Wed, 14 Jan 2026 00:52:00 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm51750726f8f.24.2026.01.14.00.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:51:59 -0800 (PST)
Message-ID: <d5cc7760-95b4-4d46-91fa-d7266b0645d5@linaro.org>
Date: Wed, 14 Jan 2026 09:51:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] drm/panel: simple: add EDT ET057023UDBA panel
To: Marco Felsch <m.felsch@pengutronix.de>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
References: <20260113-v6-18-topic-panel-simple-et057023udba-v1-0-54ad218ee52b@pengutronix.de>
 <20260113-v6-18-topic-panel-simple-et057023udba-v1-2-54ad218ee52b@pengutronix.de>
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
In-Reply-To: <20260113-v6-18-topic-panel-simple-et057023udba-v1-2-54ad218ee52b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/13/26 13:18, Marco Felsch wrote:
> Add support for the EDT ET057023UDBA 5.7" 24-bit 640x480 DPI panel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 0019de93be1b663f55b04160606363cd043ab38b..0f135eb35aa4302e9a33d91f29d1ad5c9959ced0 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2096,6 +2096,35 @@ static const struct panel_desc edt_et057090dhu = {
>   	.connector_type = DRM_MODE_CONNECTOR_DPI,
>   };
>   
> +static const struct display_timing edt_et057023udba_timing = {
> +	.pixelclock = { 23200000, 24190000, 39640000 },
> +	.hactive = { 640, 640, 640 },
> +	.hfront_porch = { 20, 40, 200 },
> +	.hback_porch = { 87, 40, 1 },
> +	.hsync_len = { 1, 48, 87 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 5, 13, 200 },
> +	.vback_porch = { 31, 31, 29 },
> +	.vsync_len = { 1, 1, 3 },
> +	.flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc edt_et057023udba = {
> +	.timings = &edt_et057023udba_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 115,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE |
> +		     DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>   static const struct drm_display_mode edt_etm0700g0dh6_mode = {
>   	.clock = 33260,
>   	.hdisplay = 800,
> @@ -5112,6 +5141,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "edt,et057090dhu",
>   		.data = &edt_et057090dhu,
> +	}, {
> +		.compatible = "edt,et057023udba",
> +		.data = &edt_et057023udba,
>   	}, {
>   		.compatible = "edt,et070080dh6",
>   		.data = &edt_etm0700g0dh6,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

