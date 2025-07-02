Return-Path: <devicetree+bounces-191923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E17ABAF0DEA
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:26:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEAE63B8272
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 08:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A58632367AE;
	Wed,  2 Jul 2025 08:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kHtRTVir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0294233723
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 08:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751444777; cv=none; b=aGGGSqsInDw1Se2oNRgveFXl5XXB8q1lYQbMUB9WuQT9nuOE0RRfYKM9o3pTnBWGBQlUKOALcSJbTJ/ItykCAApsyAAOA6oXgwJe8lsk1J0ACfOmfeVqYgGneGy536ZaOvlFl1H3R/4SgaYZGj5rKqGM/OBXoIh9v3mrrBxQlbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751444777; c=relaxed/simple;
	bh=VUkjTB9p+HbqVTMkKTZROLcQzFjbKASZxeNBknQk70A=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=t+Thyg/woFsrHXyyEiwHJLhtytVXZpzYZRCPEJQYkiRK2M02NywSki0uDJc3YfYzcsHLTwZh/1jZqXP+voY4Kz3Brp2w9rQkJKCCy27GwW1jeUaNgstF/0vaLWj+e45jfbIUeJaJjrVsV0cuGTQIFJa3lfL5e/qEday/6Wbz13o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kHtRTVir; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45377776935so48597115e9.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 01:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751444774; x=1752049574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MbM+6D17S4lWaNX9Nj5bx/ZziUeNbW5a29FJLV75guk=;
        b=kHtRTVir22Y/6p/OBuSy5woOSweJd3HLv/Eh5BZH4VzxXNFEpgXRmV0eZpRxGhCMlP
         oSVl4TxWdhkBh0JpXCtONvyDgjoLdd0k88Xr4j6WB4ZGyX2Ad/mxbI41/MktuiH5Kraj
         4UkcDn6irWi6Gk4sm6ruA3P97qlFv80V2VNYKSv33KdaZcFQNe/RKm6OFIh3Qm/gW/Vh
         HtNg09eCRBO0/qADPG0AiQDDEKqAD+EUx7CLGMgIk/yILCrJF8izMeXoCD4z5sNaLikn
         a1jRl1nJRhBKtpFW712KBJVlcsfeLbEQWRwd1pIIncdoeKAjTI7YGsdY8dx+kWv7dZuK
         iw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751444774; x=1752049574;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MbM+6D17S4lWaNX9Nj5bx/ZziUeNbW5a29FJLV75guk=;
        b=kbs7Z2LL5mOtJuBzIN+TMkJC40ksN/vwg+wZi2JzoTCPoyzSw9Dt36aE/fSpXF/fVr
         YiOTMOWiu4EB5Mt9DkByT5Mg6eSj8RyEfoq4O9YD64OnZ4jx2ElurDklALFdWwlD7qe5
         O3Ij03o7AOZcc5Jnb2eYjRUGaSfVLqi+FwFrahNk6GX1Glp4Uszuimb0i4kGAi8vzRQz
         k6KPKJ6H1pMyFW8qPXrev7tNDhx/VR1BlawuL6M0MuEXMbeRlOyJXVJb4u4lUCJBWB2v
         AlXL67UfDEk0Z2fmEtxNfa9A4QT/iaZA/B3E0Q2Ob/SMuNgXD9ybS0WbP62GVK4Bn1zK
         fUPw==
X-Forwarded-Encrypted: i=1; AJvYcCUM1RO4lx63NW+ruRQfSdyozunX9YbmjLkXCPaj6WWxCMi5Sew6wJOZTY2O+6UnflSQY+JtZ/hx2ijV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy6fqItFkqi4U3Tix94ta0w8mT8WwbWqKhO3ZeApy7vxbe+2pF
	MKbgABrBUPH/kYZ8sGwZlbM3ZcDn4xBkhzhir1yIjKPxaSN4JDxV4quPcSkecOc82pg=
X-Gm-Gg: ASbGncvwNAaZhPdrWazmhUKZA6Oo3Lj9Qned7+YCb73JDAeFn4X5aW1DAFPmeVcMxKE
	OVg4O9cO6gCdTWP05DEQVAZ4WbxW/vdK5laR1FEEfygs5SvIh6yU2vhQnoXlk+98mpZy+GF5W+8
	guqPS9Q535cXWSdhU1KQIWi40s8X9fCV9uEmcPIyWDiWLy4e5odxyhhYi+RnM6r7amaF3K0AN8h
	9r6RqTrGij6G+Alcii8EwOoFBFoDb3XsLCsXGfKqxLFGnTsbuoRsaDQKw01NagYKD2E3+62IGdp
	NEwYD1mbciop2OWfxkcuHZOJh+e4KPNHtiU0WHTDhWnhTANgzVzwI5Lwhe0rb9jkeQSYkkeBqDJ
	qZJY6dKLI+tWa41KIVC1hMC9wVzgp+kv+YxAZnmA=
X-Google-Smtp-Source: AGHT+IGsKkO7aO20RFhbU0qabf72Beoj8L/ayRKp5D90Z9aMH5/tYADAONaucmP2V6Q3nUggXxRGvg==
X-Received: by 2002:a05:600c:8710:b0:43c:fe5e:f03b with SMTP id 5b1f17b1804b1-454a372e783mr24709275e9.30.1751444773939;
        Wed, 02 Jul 2025 01:26:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:50c5:f782:9f70:bac0? ([2a01:e0a:3d9:2080:50c5:f782:9f70:bac0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e5f923sm15068000f8f.89.2025.07.02.01.26.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 01:26:13 -0700 (PDT)
Message-ID: <0655dcf9-fce4-406c-b4df-434daf82cce1@linaro.org>
Date: Wed, 2 Jul 2025 10:26:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add Olimex LCD-OLinuXino-5CTS
 support
To: Paul Kocialkowski <paulk@sys-base.io>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
References: <20250702082230.1291953-1-paulk@sys-base.io>
 <20250702082230.1291953-2-paulk@sys-base.io>
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
In-Reply-To: <20250702082230.1291953-2-paulk@sys-base.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2025 10:22, Paul Kocialkowski wrote:
> Add support for the Olimex LCD-OLinuXino-5CTS, a 5-inch TFT LCD panel
> with a mode operating at 33.3 MHz.
> 
> Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 26 ++++++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 0a3b26bb4d73..b3d7a0eeabd5 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3655,6 +3655,29 @@ static const struct panel_desc olimex_lcd_olinuxino_43ts = {
>   	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
>   };
>   
> +static const struct drm_display_mode olimex_lcd_olinuxino_5cts_mode = {
> +	.clock = 33300,
> +	.hdisplay = 800,
> +	.hsync_start = 800 + 210,
> +	.hsync_end = 800 + 210 + 20,
> +	.htotal = 800 + 210 + 20 + 26,
> +	.vdisplay = 480,
> +	.vsync_start = 480 + 22,
> +	.vsync_end = 480 + 22 + 10,
> +	.vtotal = 480 + 22 + 10 + 13,
> +};
> +
> +static const struct panel_desc olimex_lcd_olinuxino_5cts = {
> +	.modes = &olimex_lcd_olinuxino_5cts_mode,
> +	.num_modes = 1,
> +	.size = {
> +		.width = 154,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +};
> +
> +
>   static const struct display_timing ontat_kd50g21_40nt_a1_timing = {
>   	.pixelclock = { 30000000, 30000000, 50000000 },
>   	.hactive = { 800, 800, 800 },
> @@ -5214,6 +5237,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "olimex,lcd-olinuxino-43-ts",
>   		.data = &olimex_lcd_olinuxino_43ts,
> +	}, {
> +		.compatible = "olimex,lcd-olinuxino-5-cts",
> +		.data = &olimex_lcd_olinuxino_5cts,
>   	}, {
>   		.compatible = "ontat,kd50g21-40nt-a1",
>   		.data = &ontat_kd50g21_40nt_a1,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

