Return-Path: <devicetree+bounces-246957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E63CC1E1F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 10:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9A543004BA2
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762E733AD94;
	Tue, 16 Dec 2025 09:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtlNrDGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B363358A7
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765879030; cv=none; b=fLLwPyNu17uXkBfbBi8YOEFhFWNR9oNDda7IDHTKGRvVhnV/B3cAiVYzqwoYUsIVS0Ja8DvL7uzY+pctqLSgFXx6N41zQQrSfhM44vf6RkQuDgKNBviB/fpqgFhZwJoCkI4jKHwNm02grb6lRSO17ETsXUUPd4x13y0n33+HRwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765879030; c=relaxed/simple;
	bh=7R8+JrL5CE10gIK6f6jOXXx5KzYrv/vWx9R/IjxZRNM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=sgDhPKJAuO5es2o1kF347+gn5a7YwGAAhQnU2y8/j/QaLn9MtJvq+mhLThCvCRJi9dehUet/c/cr4HUR5C9PV/skt7cM3Wlm6/T/AauQiL6hX+gZWcvEoyHws622LipT0YXBttvry/k1tJNTzrfv/cqULdP3dmaCZeKUhrHroNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TtlNrDGB; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso19295015e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 01:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765879025; x=1766483825; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFYaFpKlCe3rxlgalcml8hPx/Y+kjDAMwf63+7Oo6zY=;
        b=TtlNrDGBqX3Wh2Y7/AChAoRLWIy66qRaOb8SMOg+82DwUG/ObESlP6rO7gWyjk5fi8
         e6nJ3ktX6DCjxA5l689562h0MGhoB38MPpxdx+9DwzGTRhON9mr78gLbyzJsn3T3hHHz
         0f1bsZs8PNfmkay7Hze9hxb5AuPz1XKnX0jLeDgePZGlcKow+BBD0Yb43juIH7+HMwc6
         czisSx0FS4X/4jaN74oMvOXry+BQZcSvvDkWJzch9ncCYFyVog2wG64niC3Lc27is2UG
         Q7y9kVY+p5Cu/wBBhOSFCZVV/k/sxG0Qax2EQka+k1nEUY1YJlAsSG/3dkpRmdkhNC2M
         IASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765879025; x=1766483825;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NFYaFpKlCe3rxlgalcml8hPx/Y+kjDAMwf63+7Oo6zY=;
        b=hrQwzepz+ExVUQWi1hp31a9LOYCuNq0RHkKpC6yMa/uYkP+TijHPPccfldCOTWTs1a
         N4ML1wPT1Sym3yQF53ZEebuwDciZf1cjuaY4O1alSnz1B7bDDmJTTSB/NbRFYkFYoiRd
         aw8Hahes2tkiCinSDdAtidHmM4TGim3ppeDdFHti4lKoWOO4PcrE3NQh8bjjDaP/7FG3
         uAs0PdMcHVRVviyhfnQ/HvTrXElx9duq7w2o9r6z1r7DSKusB9J3mw3aMGThnzqJZk3P
         3bw73F4Zu8Vje2E8SQ4VLP+ihjlST0aVCXX3ImkKO7QBILEJdvuE+R/uWPfSytBHexA0
         cRgw==
X-Forwarded-Encrypted: i=1; AJvYcCXpuo/s5H1xQoKopRnWsW/KGlyghb4oygogzS8qsyNMKKZpNYct9zWnwrvUvgw7hxtn5srp1quOIBnc@vger.kernel.org
X-Gm-Message-State: AOJu0YxOanwbjVJ5vfDaZ0+/e7pPhZPYs+1Kq0ZpoPGpweV1s0WdMoG2
	HiZIMPSnaXYgtacsv19v2HxatEnVHGKqx7/Mdwxwirb14l9iajBiVMIk4BbTFf2o52k=
X-Gm-Gg: AY/fxX6yT6iTLxrUIjs/xls3NdztNK1PwDygLMcVeaORPUC/+qWUeSfbkvBA/oyXuZk
	Zff6lZkrEtkvcSrfpnYrqkwfElOpxnR3qHfPeUGB+FoSLWiGYPbvpe9gLKH2PH7FV/uWuxM5MGl
	iV0rpO3IGwWvOCgFNbMLOITaZ2ocFGdn5sd50Ap+j7UCxZjVUftSNBaU9guF+1C3WhLj2cLDs7L
	VbebCaZBqCkrmdYA41wR49M+g3Xsio+0PoGcwB3whpvkh96dYGHm703FO0B3R6AV72LW+6bh5Ed
	7lRRoW6ANhfhArw1MSBtMvYXJZ7NmTg34pLI7tWp1kqad9FVkkJk442ylLtH48HyQNBjwKRbGXf
	lXzi3ZwDye469yP1CxlMCP85/Mn5/0SOWLzdz4a+vRP8li08urnyFvHZt1/eexhZGazIQNnD/LR
	kfdvMD/l2efurBuH+1mL591wmecJfuIMq9zhNv9oDoDhY2mYZAZre7q9tkVHRFk9s=
X-Google-Smtp-Source: AGHT+IHp/4B919bF0goX8Ptb8Fx0rtJVasiby8l518/I3xdaS9lsIP+maX/ZU6zxMKZ0IGUTBQUjIw==
X-Received: by 2002:a05:600c:3104:b0:477:af07:dd17 with SMTP id 5b1f17b1804b1-47a8f90634fmr135837985e9.24.1765879024755;
        Tue, 16 Dec 2025 01:57:04 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:2913:9c11:b7b9:c6d2? ([2a01:e0a:3d9:2080:2913:9c11:b7b9:c6d2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f9339d86sm15060676f8f.29.2025.12.16.01.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 01:57:03 -0800 (PST)
Message-ID: <68b5d663-de9e-4232-9dfb-6773ad552c36@linaro.org>
Date: Tue, 16 Dec 2025 10:57:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RESEND 2/2] drm/panel: simple: Add HannStar HSD156JUW2
To: Renjun Wang <renjunw0@foxmail.com>, jessica.zhang@oss.qualcomm.com,
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, thierry.reding@gmail.com,
 sam@ravnborg.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <tencent_D449AE627267BDD68BA41AD80EB3DFB5D407@qq.com>
 <tencent_FE5819B397B5ECC989623C67A7D68D246907@qq.com>
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
In-Reply-To: <tencent_FE5819B397B5ECC989623C67A7D68D246907@qq.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/1/25 15:22, Renjun Wang wrote:
> Add Hannstar HSD156JUW2 15.6" FHD (1920x1080) TFT LCD panel support.
> 
> Signed-off-by: Renjun Wang <renjunw0@foxmail.com>
> ---
>   drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 0019de93be1b..057ae6735806 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2509,6 +2509,31 @@ static const struct panel_desc hannstar_hsd101pww2 = {
>   	.connector_type = DRM_MODE_CONNECTOR_LVDS,
>   };
>   
> +static const struct display_timing hannstar_hsd156juw2_timing = {
> +	.pixelclock = { 66000000, 72800000, 80500000 },
> +	.hactive = { 1920, 1920, 1920 },
> +	.hfront_porch = { 20, 30, 30 },
> +	.hback_porch = { 20, 30, 30 },
> +	.hsync_len = { 50, 60, 90 },
> +	.vactive = { 1080, 1080, 1080 },
> +	.vfront_porch = { 1, 2, 4 },
> +	.vback_porch = { 1, 2, 4 },
> +	.vsync_len = { 3, 40, 80 },
> +	.flags = DISPLAY_FLAGS_DE_HIGH,
> +};
> +
> +static const struct panel_desc hannstar_hsd156juw2 = {
> +	.timings = &hannstar_hsd156juw2_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 344,
> +		.height = 194,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
> +	.connector_type = DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>   static const struct drm_display_mode hitachi_tx23d38vm0caa_mode = {
>   	.clock = 33333,
>   	.hdisplay = 800,
> @@ -5166,6 +5191,9 @@ static const struct of_device_id platform_of_match[] = {
>   	}, {
>   		.compatible = "hannstar,hsd101pww2",
>   		.data = &hannstar_hsd101pww2,
> +	}, {
> +		.compatible = "hannstar,hsd156juw2",
> +		.data = &hannstar_hsd156juw2,
>   	}, {
>   		.compatible = "hit,tx23d38vm0caa",
>   		.data = &hitachi_tx23d38vm0caa

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

