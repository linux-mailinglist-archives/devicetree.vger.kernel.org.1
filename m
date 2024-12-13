Return-Path: <devicetree+bounces-130585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 560F19F07CD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12564280D69
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC9E199956;
	Fri, 13 Dec 2024 09:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RVgsyTNW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51D1AF0CE
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734081866; cv=none; b=MJC+5sGC26dMvClADjtOD2I0/lHrFmF1yn+9So1wzGUGtbN3BAT7dnoTzf8TJ/PMXCtgMn8kRljnFVLWvDYRwDAKGDA3BZssbP4BOKpVXma/F+STYMXbIrI+TlFX1UzBi2qPJ62EGEOXlaHQXMiF3whrEhcvsaprczhTo/16Ukk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734081866; c=relaxed/simple;
	bh=4uwh0qIgCkz4F8lQR7aTEqM56Ndy+JGkKu7i53h9NsQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=uoYol6lT3Nk/FNo7+ureByMk1XdlADCukEyxaU3zsdCxG/eYF5nWtbvFtNvvjDw4o/FhoUQ6VxhZxD+zqIZaDYBGE5fsaUlnX1sz65LowrAYBEVHVUEqwhGAhuxeQ4PFn1LQtxntGDcpBGIukPpDwDTi7nCzUWRTZVL2P/Ab2+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RVgsyTNW; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434a736518eso18118695e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734081862; x=1734686662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FVIBsh6H75ToUJ73kg1JpoXbdNPaR6D/0c0Kg16Vrrw=;
        b=RVgsyTNWVjAInzCB9xdDGhSPJ2m7x6UfX/3BT7E92KaiP13PmHXysJ96ZTCWV4Ba9B
         fNlFZ2yzN2CfndlRHGAhOsGoCldLoI9+Wl1MIlpLlV8yAXSi4P+RvxvdcFXRodwpk9n8
         wvvhc7VleJG7ClBqYJKkHKfqMvQanu1lQDEufDdnyLVYMeZCSP9CQDb0xBrhMKYWx3DB
         HsFktKcVUa5MNKXpk5Omg69BcS5w4S0qhv6Q/LX0V9KkaWEVIqlqIthP2F/kHrX5FTJd
         7m1hzUJmUSr7d5M4rikbOxBL+J0d6Oe28SKnQkZP+1smR+7nplB5UKeR6lQ6dy+khe3Z
         IXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734081862; x=1734686662;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FVIBsh6H75ToUJ73kg1JpoXbdNPaR6D/0c0Kg16Vrrw=;
        b=eO4GgOHqVjdmFFaMyL65OI+nk2gollWmnVx+53L61Y6znPkmgsErVD8YnqTKRR4Vjk
         cCQZ3BN/e2MlyfVMAHCn/RYUX4rMHVbdDLuvx40XML9WCX+lWEFMf71FIqmn3fpVLs/n
         zGDE/IXRXuTaogMljdo93uVjMzeEPobjuXL6hG79jK0zOV/Gs+6lojINMdeA28qoNRBy
         6hO8HQJoPxhExVMR48nkHO+AW2auSkZW/w8z6Ayo9d0FrUsAb5ZrcmUXn9mfI0Q5lnid
         16ZpBCg/gk9oqAJT9V/fxyRYSGJuBD7Os3TgSBz3JwyNpP715gkDoWSuwdOPkC9ARkBx
         4Arw==
X-Forwarded-Encrypted: i=1; AJvYcCU26EFVMDBZssUs4PUHuMQbutk21Q2CfnXGKQHjy8I9fHCHEUeVozAy3ClZB/tgN1t21h0g0yG9BZ78@vger.kernel.org
X-Gm-Message-State: AOJu0YyH413LZY4nBoMEwFr87zxN50r09CPXWGU1ShGBzDxUE2L7udqM
	8r+K7DOcKPLMzSXRo1tiJ0+eUH1kVhg0PV5Bl+PIwqy6f4pEjqMpoOlbiN3xRR8=
X-Gm-Gg: ASbGncsvmPuwRtKRQneILG7eQB/HP008p2TdNFdbJe3Td0Vmi7S6z+dpVSajkAfSg6n
	PD6cebA1I5+dUx0Vdm3CF2qUVYknFN7u4WvQ4uiRKtM70GylKKrlQf5ybK9XjC7XdgRQYJ2gDYI
	phu0/3igmHDQHh4oAmiPkavbRWBrMa0SZbH9Zip6ok0j/1WwDO9SBwH+lq6kHF2ns45bt0SuUoJ
	2/crKSgn2oX3pcEcT2IgAhmcPL91X5ADgRbS8/cIFqeF5GruH4aIuEF9xz7d3YwHpHk1P7AZ4xK
	IV1bMc5FHdWROr8JlVZ4B59xxYApZkD2WQ==
X-Google-Smtp-Source: AGHT+IGtHG7SvnWfkT/G7TBxknquXkATTnM0UDhdExdrI8MydS7jmmNVB5tziogoHHcYzT4JAyeTEg==
X-Received: by 2002:a05:600c:6549:b0:434:f0df:9fd with SMTP id 5b1f17b1804b1-4362aa1b061mr16155975e9.2.1734081862604;
        Fri, 13 Dec 2024 01:24:22 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4795:2d16:2587:ed70? ([2a01:e0a:982:cbb0:4795:2d16:2587:ed70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362557c357sm42712765e9.10.2024.12.13.01.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 01:24:21 -0800 (PST)
Message-ID: <8d17e493-df49-4c9e-9093-b49b227851bb@linaro.org>
Date: Fri, 13 Dec 2024 10:24:20 +0100
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
 MI0700A2T-30
To: Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Simona Vetter <simona@ffwll.ch>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org
References: <20241125013413.160725-1-marex@denx.de>
 <20241125013413.160725-2-marex@denx.de>
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
In-Reply-To: <20241125013413.160725-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/11/2024 02:33, Marek Vasut wrote:
> Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel support.
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
> index 06381c6282097..4e2582e1a2bd1 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3222,6 +3222,33 @@ static const struct panel_desc mitsubishi_aa084xe01 = {
>   	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
>   };
>   
> +static const struct display_timing multi_inno_mi0700a2t_30_timing = {
> +	.pixelclock = { 26400000, 33000000, 46800000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 16, 204, 354 },
> +	.hback_porch = { 46, 46, 46 },
> +	.hsync_len = { 1, 6, 40 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 7, 22, 147 },
> +	.vback_porch = { 23, 23, 23 },
> +	.vsync_len = { 1, 3, 20 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc multi_inno_mi0700a2t_30 = {
> +	.timings = &multi_inno_mi0700a2t_30_timing,
> +	.num_timings = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 153,
> +		.height = 92,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing multi_inno_mi0700s4t_6_timing = {
>   	.pixelclock = { 29000000, 33000000, 38000000 },
>   	.hactive = { 800, 800, 800 },
> @@ -4905,6 +4932,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "mitsubishi,aa084xe01",
>   		.data = &mitsubishi_aa084xe01,
> +	}, {
> +		.compatible = "multi-inno,mi0700a2t-30",
> +		.data = &multi_inno_mi0700a2t_30,
>   	}, {
>   		.compatible = "multi-inno,mi0700s4t-6",
>   		.data = &multi_inno_mi0700s4t_6,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

