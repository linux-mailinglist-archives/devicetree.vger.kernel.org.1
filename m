Return-Path: <devicetree+bounces-83877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C14A392A2F7
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 14:39:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F29201C21348
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 12:39:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B54C80624;
	Mon,  8 Jul 2024 12:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E6R8O/mS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600A37E58C
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 12:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720442372; cv=none; b=dl4mJZDYnO0rTb/+1wbwje8+yCG3D9fiwsUlV6XCCsRGDLIiRPD7b4K7XV9d8G5mkd38UBfmQqxxxK1pwBO8lHnIMWwg+88rRva+w8mn2Ik2TC7wmAu4UYOazJbLa0YuoaUMQNQWwY5sLVVTv5U9HhqQsyc0Yjp2w464YVMJ4yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720442372; c=relaxed/simple;
	bh=Nws7U/x/qLfmVWw/mVS7Fim8+94vuM3ZzT8wjPEbUR0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=Qntqe0aajgCqkbD9kloDrz52bK40hyENKdCPcaKAeCGBVZwa3UOvgCukXWKQ/qvPP/vinLDkEa+E90bCNJW31BG5XZCaVniEaM0iVSyEKuJcHk9rOZoEsF1PT9o2v2NBEYfEtBvA0xD0GLoja1mt1eqfhcJ/t2869yJ/rGxzKuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E6R8O/mS; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so42258751fa.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 05:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720442368; x=1721047168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7DP3B5JCp9g16byzw5sfW+lU3wXnm8lYUI0ZjUS3To=;
        b=E6R8O/mSAV9SdmZXgZuzg4Ge2IeIw1LaYSr+pwjTK264mcTIv8LdTQsPa6xis1ZbHe
         aPfRjKoWKT2uorgpttPW+EjZT2HSYLUg6BjbMk3sy1hGnIXyS8aci26HqoHhoM55UNVZ
         ySWui3wuV/gERrmqUBy/7CnUfXyQ/w0ORVeuBvpJqmIGm7v8um3kc8Em2G0vf9DshVCJ
         2vnSSsoe8NKwkIV6uR61wSKsvlcFELaA1NXwAs5MrSJqnU4sG9piU5TErhNtP6W66ID7
         d/HmQ6laEZMj9Ur40uSZ7NNnVhYEk4nIStri5iBmAUtKpW8kEEKrUJwZcoJHCwZiwQVN
         W/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720442368; x=1721047168;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W7DP3B5JCp9g16byzw5sfW+lU3wXnm8lYUI0ZjUS3To=;
        b=tpXaib/jD1Enl8MKhI5raZAwYj01z9t/j1SQQKMhplG26Dh/rc4r3sq4OyJXdFVxSW
         e0u76uetZod02kKR5iaIvQVopImQTz9nbCQeeIer8+oQ3LXSGDsnglZLndbcCo3mjTaS
         iIaEdTrVB7HCkXqBDwNyFMxmYDh5XZ+MG8I5q4PHnRLXFgWsbAQbeRxQvzusbFsEugea
         VdyxeiFxKtHct8dksGEW0PawaEPtsM0Lfe1rLRoaRMQWiu/j2lanVSIVhD3i2HWhJBLm
         ANd09xF87T2UdYh6LZaylA2zaCnvZLlMlUgEybegkByEdovQkVhq02EHPVo7sJyUGYBJ
         Z8pg==
X-Forwarded-Encrypted: i=1; AJvYcCWo2sPameVvWUIPxXN0OXSBZ6wpZwMXS37anab+EAmVdKtuRupqIiZxrY6pL7E1r8aIGILfOrMZEkTDgXNMoeMGRgg9NqmCLtcrkg==
X-Gm-Message-State: AOJu0YzVEIuuG8ruTs6JbEjjoDgdqVXYO4DAMMAUwtFKVb6WYZK0tgnS
	fDYG5ztGKMcg4Fvcg2fX4bYej65pjIUnU0rYsfkXIuqQasToRFSpSlnZioxlbFw=
X-Google-Smtp-Source: AGHT+IEdrW9FoC/1zN+vWWOe7JF/qxC3DrqGqoBp1+DhNKzcWT6wtDi055Adp5bcaUJWtZI9liT4dw==
X-Received: by 2002:a05:651c:30b:b0:2ec:165a:2254 with SMTP id 38308e7fff4ca-2ee8edd7859mr75969161fa.44.1720442368231;
        Mon, 08 Jul 2024 05:39:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:f482:8fc6:e8d0:6d7c? ([2a01:e0a:cad:2140:f482:8fc6:e8d0:6d7c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d6d22sm163122115e9.20.2024.07.08.05.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 05:39:27 -0700 (PDT)
Message-ID: <41d3bf66-620d-4a6a-9cd2-0358fffae2ca@linaro.org>
Date: Mon, 8 Jul 2024 14:39:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/3] drm/panel: himax-hx8394: switch to
 devm_gpiod_get_optional() for reset_gpio
To: Manikandan Muralidharan <manikandan.m@microchip.com>, megi@xff.cz,
 javierm@redhat.com, quic_jesszhan@quicinc.com, sam@ravnborg.org,
 airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240701085837.50855-1-manikandan.m@microchip.com>
 <20240701085837.50855-3-manikandan.m@microchip.com>
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
In-Reply-To: <20240701085837.50855-3-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2024 10:58, Manikandan Muralidharan wrote:
> Switch the driver to use devm_gpiod_get_optional() on reset_gpio to avoid
> driver probe issues when reset line is not specified.
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index ff0dc08b9829..d0e44f1f85d9 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -487,7 +487,7 @@ static int hx8394_probe(struct mipi_dsi_device *dsi)
>   	if (!ctx)
>   		return -ENOMEM;
>   
> -	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
>   	if (IS_ERR(ctx->reset_gpio))
>   		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
>   				     "Failed to get reset gpio\n");

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

