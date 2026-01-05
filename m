Return-Path: <devicetree+bounces-251590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9FDCF458C
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 16:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33F00308D7A0
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 15:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939A73093B8;
	Mon,  5 Jan 2026 15:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DUhKWy8F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C16A3093C3
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 15:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767625879; cv=none; b=L18L6mLlvSBlzZCNfL7MsKAdac/N36yB4ml+YtpR7c9IouvoYqW2o2fWXgg6enfDFbv+3IURU9UxwJ85VF4dk7nOl1rCKrx/Chdz8mLqwaffV04aq49agr3ixjqJ5LNeeyxK6neajT9aty+NO9qMev1iG6CPVU1biefdwBe7c+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767625879; c=relaxed/simple;
	bh=SX+n3PiAeQ4rWXFR3267OtHnuD2CdbecQeFv5sBTA4w=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Qt7JPFvNgzIqpAilk06Fv3OULFF/XjyCIsyhZv6Jh3DgcXMU+JV7nJiNSFFU52lE8lIrpVV4fAXdCT0CObVyr6Rv3xt6izIr0R2/QwvExFlgxPh0IiERJNelu47u/b8UgCtVi84oSH2k+vZz+1UUG/QhtPiNZuJ6RAn9wCzPa6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DUhKWy8F; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so159635e9.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 07:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767625875; x=1768230675; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fIpW6cQc9IrIDvqtHuiJ6nwu+gkAkXOSeW3JkpE2jgw=;
        b=DUhKWy8FjlcqEfnx6iBo6Yt7/hm6HPt6AtJkbcOFad1Ewe2TnamSV34UZ8Ojs5ZsP+
         56irLGqIKq+rtkgBrj7Y4c0KAco04fPcMAGGFA8HxjTHJfcbZePpMIGtp0M6BxoQhdb9
         9R9VzDbgWDHnp5rKaYR38/lXhSz6oXakty6lQcHVHVZpoBLduRgpEfyNwtNekbL7w9rn
         YsL3ut6XOSfTUAGJJuLVaDYEWv9o6823WMHZTRpsFy02oJW9KKtLwSisU0ZtuSaAW4QS
         YCpH7y0vRh43aeHVRMTLeZBF+Lq3oRyugzCB82phVCba0Uh2F8Ut2YRMYGycnp/YwYNR
         ea0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767625875; x=1768230675;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIpW6cQc9IrIDvqtHuiJ6nwu+gkAkXOSeW3JkpE2jgw=;
        b=GmCEtAMJrDZxgNq62OyQ5DhymN12jzI+9zA1zqKrqahlQgQNmueMt2UvZZl5fF4J95
         /yvwRdQFy6vVQXApbV2IsRnximfzWSpOK22aAedopQk6Hk1rypogEFnUwKLwNOG0jdSf
         2bB+Wjf+RiNmnO1teGtCxLNXzMzFirPJk9WzDY6deuf82WSUFQUYGq2oOYuiJuWUqK7t
         WzokPBZKpOhWHF+fotiJUC8a/Ot5ymSThdQx9EXjTscaFy7u/YQsl4lE43btYUmJFf+P
         u/+sTeBtbBt/aT1Yjhc1ElQTqRcU3d4iUQORKHeGqDrwHBYJZ1apdsiC6V2g6cGAfNNJ
         NxnA==
X-Forwarded-Encrypted: i=1; AJvYcCXJUqjapBzH2bwvyqMV4rzUxNzgQTMmkAOv1E9nQyM62L/eoRHcuv1dNr7r+DLTatrXeSn1gGveHWbM@vger.kernel.org
X-Gm-Message-State: AOJu0YwAA5TLrw0St+MNg26vIivTmv2zRyz4iJB7q8Pc/aQ3bbnwC/7r
	VnPpz6s+mzD2U14nGKxSkHs0XZYC1aJu2AbxyYbONVvKIf2yNdahTAToZHL7K6+artM=
X-Gm-Gg: AY/fxX4+y3p1qs3tsbrn5W6fnKc4qFYpFnyU+yocuFdpMlmQ8MUmFjUHzn3YZnxu2q7
	XDk7EvPCy7NDU0jRW9ly72Wau0h/XfKjpu4mE71x16IvGgDSYGEFrLMdPYoPYjpxqqbqnM0ewVR
	TCMdycRrrAPM7DViVDUtRpLwgLzmnGEAw5eGnIOv0vceos5H0+HyE7NPUhbbNwveBbnhzAb2ps6
	3wCtOZV2RvewwQqNUh2SNqng0ABkn5grXSEMWltuOOxTExriVG5nKFWCFIMcd8YaNQtDNHdU4sW
	sNVP39XTVMutUVOh6wTWkwTEs59GDx2HR40H3q6PRIdhn/doc0xrYxLSZO/CwAcOWP1UbhBaUT9
	4jLJOfF1RoBsDnEFODpq94/TJJ/Ur2LwbAJHIN/eareHEIclDQpHnnuKWHBqNL9uekV/jcoi2Nx
	bFh8zpCERpk+7j/EjLwWEkVDAN9FVssQgohYDOYncDTJxmLLkQh2X9bBUMfV6IAgU=
X-Google-Smtp-Source: AGHT+IGUHUHeBKegaOYx59FFoOUtzcp8vHYfP0LVvdnYaJI+3e/IojOUAlwYde9llSXTl/krlM8cpw==
X-Received: by 2002:a05:600c:4ed2:b0:475:e067:f23d with SMTP id 5b1f17b1804b1-47d1959eaaemr657588355e9.25.1767625875140;
        Mon, 05 Jan 2026 07:11:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d4c1:5589:eadb:1033? ([2a01:e0a:3d9:2080:d4c1:5589:eadb:1033])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d73066fdbsm107246285e9.15.2026.01.05.07.11.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 07:11:14 -0800 (PST)
Message-ID: <91d3e10d-1f8e-4c1a-9919-fafb949e935d@linaro.org>
Date: Mon, 5 Jan 2026 16:11:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] drm/panel: simple: Add Innolux G150XGE-L05 panel
 entry
To: Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>
References: <20260102141706.36842-1-festevam@gmail.com>
 <20260102141706.36842-2-festevam@gmail.com>
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
In-Reply-To: <20260102141706.36842-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/2/26 15:17, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add support for the Innolux G150XGE-L05 15.0" TFT 1024x768 LVDS panel.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - None.
> 
>   drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
>   1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 3acc9f3dac16..c606e5932ca7 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2836,6 +2836,32 @@ static const struct panel_desc innolux_g121xce_l01 = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct display_timing innolux_g150xge_l05_timing = {
> +	.pixelclock   = { 53350000, 65000000, 80000000 },
> +	.hactive      = { 1024, 1024, 1024 },
> +	.hfront_porch = { 58, 160, 288 },
> +	.hback_porch  = { 58, 160, 288 },
> +	.hsync_len    = { 1, 1, 1 },
> +	.vactive      = { 768, 768, 768 },
> +	.vfront_porch = { 6, 19, 216 },
> +	.vback_porch  = { 6, 19, 216 },
> +	.vsync_len    = { 1, 1, 1 },
> +	.flags        = DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc innolux_g150xge_l05 = {
> +	.timings = &innolux_g150xge_l05_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width  = 304,
> +		.height = 228,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct display_timing innolux_g156hce_l01_timings = {
>   	.pixelclock = { 120000000, 141860000, 150000000 },
>   	.hactive = { 1920, 1920, 1920 },
> @@ -5314,6 +5340,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "innolux,g121xce-l01",
>   		.data = &innolux_g121xce_l01,
> +	}, {
> +		.compatible = "innolux,g150xge-l05",
> +		.data = &innolux_g150xge_l05,
>   	}, {
>   		.compatible = "innolux,g156hce-l01",
>   		.data = &innolux_g156hce_l01,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

