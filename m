Return-Path: <devicetree+bounces-50320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5290987AFFF
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 843D81C25F0F
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 18:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0990285275;
	Wed, 13 Mar 2024 17:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NpHmzg+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2DC63502
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 17:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710351056; cv=none; b=r+hn/d4uE/2psZLe4FTkCDDUlxKGWhAGhYlQ00iN4RCE2WLTd33hvnj2fj4gACyFUtPitU7hoewcQ31gzJnt7hzIMXoKcqhWvPpKfWbrPYunGymnYEKFgfj+TI+O1bNqPw6CX15HXix/HE30to7rvnt/yzxAKE6rZAdQtUXZC68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710351056; c=relaxed/simple;
	bh=nWQimufB7QxLE0zvx0a0J1BIOGZtKvCDLCS4/1vS8PQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=h6M4bwIJBA4QxnMDSIzZsh0a6FsOHYRnLySJb1jQcX10tCqZ5WiZWRwHrinS8rFLxwzFkJvJyUgJ39zOJYFUvEtNl95mD/fTTLUeXBNI1Au89AAXwYOTfolaf9sr9Y7V2L24E3T4ElZykrM1E+B6PVnfkWkjn8y9+U/ZcnQvw/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NpHmzg+a; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33e1878e357so9170f8f.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710351053; x=1710955853; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AoJBLvGLSO1Au71tnmkkcC/uvFLxr7hz04I6Ua/2Z9M=;
        b=NpHmzg+auK50FAWD6o3qFz60e1vehQ6LhRQwsXYS4lEJo1DIOlyU1xN02cWBwIbbsJ
         s8nRSgsBktMTSWZn6ZlbmTQ2PO6p/EEc9iff3zY0N5CtJPXfSuZ0l9FlDBiOYPjdsNwO
         /0kUNYgVqV6U4XK5INRkox0IIu+Ak7Vy9nrRBu9KOkSSJrqLPwHfnkL7N84/rw/+Y7TA
         D5HFDVslUm+Ve9QNFNilzvs0irwnaOChmqnXzjQiOiZ4ddhlD+48DaAfDFR6Q96sa1UO
         zkaVDtzQyThOJZhVo2HDdat9/a6v9moUpYM1g6Tbgn1NWofwNGWkcv1brirkgN+cbWvV
         AJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710351053; x=1710955853;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AoJBLvGLSO1Au71tnmkkcC/uvFLxr7hz04I6Ua/2Z9M=;
        b=XEkFILwN1Mqe78ODVMqaw3fISrmnSf67l/2two9HKEXTe85oEF0hqLTOIBrU2K85n8
         HyLmGo9cpUnVDFnBSDovg554pWjgPVyyfsvW9iTB7E870OhhF266PC9xxFCobqPLi53D
         Y1VAHt5Zf6Vnv6tvIjAuB+U9GoSsMMur6OzZsOItq/NS5hMebvagpvJdvBoVSydPsw+P
         SFCMNtifmbebBxtLld6rHhAzunw7Gvnq8I7GZyZgYY0fqy+pX97shArZk02Ab/ardtJI
         605smvlmQUQSE1KV/Is/gNF0u7FDFfQZr0HGFY0KnrOUFLy2usCLbuKTussw0jyUIJSs
         rnEw==
X-Forwarded-Encrypted: i=1; AJvYcCXW4K58VoVeCIvrmwGIFK6RG9HWgZNX7myeC0+6i2rLWc6Am52YppH7btnN9z09ZN+dM7kqpMcWvyC7YS2ZGoIj+b4zM0FfzrDleQ==
X-Gm-Message-State: AOJu0YxOFQFEZG4GLT3xqhRdOjMKZ355+yJI6i3qtvAk617QV04/NPam
	cAo/Pqe2n5FfFhjpUn8r76HUaCb2WEQHAEgSIKg+vJ2+imBzpFyOGO3+x8NZirQ=
X-Google-Smtp-Source: AGHT+IFpt3nKpb6yZp4WeSJe1NcrqDMP7HGMmEVeZpWD8HEqgofCrKHYpfbd5ftktIToiD8wlHn5zA==
X-Received: by 2002:adf:e482:0:b0:33e:9113:a228 with SMTP id i2-20020adfe482000000b0033e9113a228mr2042063wrm.35.1710351053336;
        Wed, 13 Mar 2024 10:30:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c945:fed:36d6:130? ([2a01:e0a:982:cbb0:c945:fed:36d6:130])
        by smtp.gmail.com with ESMTPSA id ba1-20020a0560001c0100b0033e712b1d9bsm1934600wrb.77.2024.03.13.10.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 10:30:52 -0700 (PDT)
Message-ID: <571aceaf-fe32-4bce-ba79-8a5718f1aeac@linaro.org>
Date: Wed, 13 Mar 2024 18:30:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 3/3] drm/panel: simple: add CMT430B19N00 LCD panel
 support
To: =?UTF-8?B?SsOpcsOpbWllIERhdXRoZXJpYmVz?=
 <jeremie.dautheribes@bootlin.com>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Yen-Mei Goh <yen-mei.goh@keysight.com>
References: <20240313172016.387277-1-jeremie.dautheribes@bootlin.com>
 <20240313172016.387277-4-jeremie.dautheribes@bootlin.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20240313172016.387277-4-jeremie.dautheribes@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/03/2024 18:20, Jérémie Dautheribes wrote:
> Add support for Crystal Clear Technology CMT430B19N00 4.3" 480x272
> TFT-LCD panel.
> 
> Suggested-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Jérémie Dautheribes <jeremie.dautheribes@bootlin.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 20e3df1c59d4..d13c42d0f57b 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1457,6 +1457,32 @@ static const struct panel_desc boe_hv070wsa = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct display_timing cct_cmt430b19n00_timing = {
> +	.pixelclock = { 8000000, 9000000, 12000000 },
> +	.hactive = { 480, 480, 480 },
> +	.hfront_porch = { 2, 8, 75 },
> +	.hback_porch = { 3, 43, 43 },
> +	.hsync_len = { 2, 4, 75 },
> +	.vactive = { 272, 272, 272 },
> +	.vfront_porch = { 2, 8, 37 },
> +	.vback_porch = { 2, 12, 12 },
> +	.vsync_len = { 2, 4, 37 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW
> +};
> +
> +static const struct panel_desc cct_cmt430b19n00 = {
> +	.timings = &cct_cmt430b19n00_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 95,
> +		.height = 53,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>   static const struct drm_display_mode cdtech_s043wq26h_ct7_mode = {
>   	.clock = 9000,
>   	.hdisplay = 480,
> @@ -4402,6 +4428,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "boe,hv070wsa-100",
>   		.data = &boe_hv070wsa
> +	}, {
> +		.compatible = "cct,cmt430b19n00",
> +		.data = &cct_cmt430b19n00,
>   	}, {
>   		.compatible = "cdtech,s043wq26h-ct7",
>   		.data = &cdtech_s043wq26h_ct7,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

