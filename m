Return-Path: <devicetree+bounces-109802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD1199803A
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD127B24D73
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C233B1C3317;
	Thu, 10 Oct 2024 08:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OtNlcLZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DF91C1ACF
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 08:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728548227; cv=none; b=EHIB7UlwRa6hjc4oTFp0ES3o2UX6GiGvjKimp+BgqF1DzaclULq5PaYOf5GfKPbcnZf3X2e/6ZabiRz6e9uPFp8pciFQGu40slAnyWK6R9zTs0p35tuDpZv631msFWpaq41Hm5erpn+nkq9qq7p7eHr3ubtm8K0BJUbLDxaK5I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728548227; c=relaxed/simple;
	bh=TcJ5+2LaQQs9+ImR2/sH4Y2jPimbS3tuvApgYbaH/no=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=XqzBfdbFQHCMi+foPOlVmghRzKsvqe9CDvio2NjxJxb0FoskYoLMie2rvUX8/V5RHTJ9KSQud9ytuPCZgSgTvmjVbdo1Jxq93bfV65CfBumBqvlf4J0m6KEVfvHToF4qh1KLCKTYqLbwaDURJ5e4q+lIYLEtM6cS/mF9U2H1ocI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OtNlcLZG; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53993c115cfso812069e87.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 01:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728548224; x=1729153024; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wZzMUO86Zz4fUOgYhmVPC3Kj9INqhNmxL/uh1WoR0Is=;
        b=OtNlcLZGVLSC3g7grfCqC3q8hgtT5J0rrBNUOGe5ckLM92vRXyZcsGiH2SiTf9jhyY
         de/U/L5qA4NjU8JCh2MRuJr3cDVcepEzmw+7626EQAHrQzdPLKC6BnIRTEKDlFmlb61Z
         dDP+7fuCMxV97FnGZdNBzU31kdpgHAy4uVmrQKEVWSuZfbIOMdtFcZL9r2wnUEY8bVhw
         GhaOQB3+hWDCr2XZGGNH8cEYDm8zxWiVO3DGJM0F4rnxvvo6R0f1f8qqsbH0NRxQeNx6
         Hbe0eTCFBSI1vlfMePNAO7RFJ6az13/YOl08u7k6edpa3EazGu9iEgiN3eV+9TtxYvIZ
         1WYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728548224; x=1729153024;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wZzMUO86Zz4fUOgYhmVPC3Kj9INqhNmxL/uh1WoR0Is=;
        b=WgNLqHAs0sANJwjH88Bcnho9CRbbMfhC6iV9RJXOeo8KNE6ZTQb+htGt5wPsa1IH8g
         G+Qyr9OpaOm0wQ8Z5HAn7eKBxRyXIMMfB8USLo1awDdsLBxyGayb5KVHLfJ/1wYR09hH
         qNKzYRctU3q2AQVC+l5DURZOAidIF7+wcBZVzJ7bZAqhi9O+dVXeK7xq9haS5Y5czhYN
         qUeZdzXv3J6oUCu91mudbpjX3ZMlRy1CGzcrCHtlGPxuPdaqgbrZEAjv3hRzJXJV41Bs
         b0cwZgz9ft7+GyQ734y6xbRz+POTjD1NCOVwqwHG/SAAkyEYeAZCV/F5yfXaCZkNBoZV
         CZnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDYkjwhVrfE7UCjd7CQ2y0UNQhrBYyt+BEoBC8wuMCCnWhWj/Z7JLF08gb+kyYRefqx1Q6cQ/t3KiY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+oHNLpgPQPlcKMF4lc2oBAzyOelVpvRmeBKXcpujPS9s+Ci/m
	D/7UCh4cZ768ANZQ1XqLrmeB/GYd4dBQLX53zSzmkk3JBuoxyqT1GRm+KcPaSPjDpisbHpVb3Y3
	ou44=
X-Google-Smtp-Source: AGHT+IGXdHfmbOwGrStXoJgSkAMDQ50vDCsNy5fzTXsxYb5fCw/hrr+pMzPE0BvRi8UgjlYLEFSfkA==
X-Received: by 2002:a5d:5e12:0:b0:37d:4527:ba1c with SMTP id ffacd0b85a97d-37d4527bbd6mr1876589f8f.49.1728547903108;
        Thu, 10 Oct 2024 01:11:43 -0700 (PDT)
Received: from [192.168.7.189] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b79fd90sm791241f8f.79.2024.10.10.01.11.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 01:11:42 -0700 (PDT)
Message-ID: <9e36fd62-0511-4d3f-9f18-9c8188b52e07@linaro.org>
Date: Thu, 10 Oct 2024 10:11:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v7 1/3] drm/mipi-dsi: add mipi_dsi_compression_mode_multi
To: Dzmitry Sankouski <dsankouski@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241009-starqltechn_integration_upstream-v7-0-9967bd15c7c5@gmail.com>
 <20241009-starqltechn_integration_upstream-v7-1-9967bd15c7c5@gmail.com>
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
In-Reply-To: <20241009-starqltechn_integration_upstream-v7-1-9967bd15c7c5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 09/10/2024 17:09, Dzmitry Sankouski wrote:
> mipi_dsi_compression_mode_multi can help with
> error handling.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
> Changes in v7:
> - fix kernel doc

The v6 patch was already merged to drm-misc-next, like the following ones,
cold you send a fixup patch to only fix the kernel doc ?

Thanks,
Neil

> ---
>   drivers/gpu/drm/drm_mipi_dsi.c | 16 ++++++++++++++++
>   include/drm/drm_mipi_dsi.h     |  2 ++
>   2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
> index 2bc3973d35a1..5e5c5f84daac 100644
> --- a/drivers/gpu/drm/drm_mipi_dsi.c
> +++ b/drivers/gpu/drm/drm_mipi_dsi.c
> @@ -1520,6 +1520,22 @@ void mipi_dsi_compression_mode_ext_multi(struct mipi_dsi_multi_context *ctx,
>   }
>   EXPORT_SYMBOL(mipi_dsi_compression_mode_ext_multi);
>   
> +/**
> + * mipi_dsi_compression_mode_multi() - enable/disable DSC on the peripheral
> + * @ctx: Context for multiple DSI transactions
> + * @enable: Whether to enable or disable the DSC
> + *
> + * Enable or disable Display Stream Compression on the peripheral using the
> + * default Picture Parameter Set and VESA DSC 1.1 algorithm.
> + */
> +void mipi_dsi_compression_mode_multi(struct mipi_dsi_multi_context *ctx,
> +				     bool enable)
> +{
> +	return mipi_dsi_compression_mode_ext_multi(ctx, enable,
> +						   MIPI_DSI_COMPRESSION_DSC, 0);
> +}
> +EXPORT_SYMBOL(mipi_dsi_compression_mode_multi);
> +
>   /**
>    * mipi_dsi_dcs_nop_multi() - send DCS NOP packet
>    * @ctx: Context for multiple DSI transactions
> diff --git a/include/drm/drm_mipi_dsi.h b/include/drm/drm_mipi_dsi.h
> index f725f8654611..94400a78031f 100644
> --- a/include/drm/drm_mipi_dsi.h
> +++ b/include/drm/drm_mipi_dsi.h
> @@ -280,6 +280,8 @@ void mipi_dsi_compression_mode_ext_multi(struct mipi_dsi_multi_context *ctx,
>   					 bool enable,
>   					 enum mipi_dsi_compression_algo algo,
>   					 unsigned int pps_selector);
> +void mipi_dsi_compression_mode_multi(struct mipi_dsi_multi_context *ctx,
> +				     bool enable);
>   void mipi_dsi_picture_parameter_set_multi(struct mipi_dsi_multi_context *ctx,
>   					  const struct drm_dsc_picture_parameter_set *pps);
>   
> 


