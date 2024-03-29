Return-Path: <devicetree+bounces-54508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A806D8915B7
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 10:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F680B229A3
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 09:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36AD940858;
	Fri, 29 Mar 2024 09:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JjrDTE0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2F939FC1
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711704336; cv=none; b=b/rlLlULfRPCXd/1OhOZyUdNxEuCsbc3ETmSM28OcJNq0DXewMUKq8Sp67uUEGZfI5ErwHe4K099Z9jY8MIyxG4rXbVfLtdDiX1QpFqiiYbyaExkKqG9fUfRcGLzZLIEvxAIx5HDzKHMiVr18NpXL8hT0kt72ZtLwcw1O3Te9ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711704336; c=relaxed/simple;
	bh=dZMd+hjwWBu0w3Nr26MjlG54+9irZNQQ5J2LGMlr7cM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EhYT1Q196Obqsj6nujSJ0ByO34LgVMtubQgT4jg707p46+mawR64UPVnMI0jSr1B/trGXcWeud5QHVWq1+i670LAbefjAmDhX1fGwJPaDeQbNQvT+X+ZANSkaj9L3o0DB+5V0ydVl9EcjMwiGbRBcj1+Y2oLZmOLQAkf1Rp7zuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JjrDTE0N; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-512bde3d197so1232663e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 02:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711704332; x=1712309132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEQURDN2hc0rSK6rdl4NmLGBAAhTVwyKdlzTTBj2f1Y=;
        b=JjrDTE0NR2AhgcNG3TQ6PcVgWPCquREOHB0sH9kPmfxyJczSediFIVorSdpBjOEa8C
         O76lYMV03vrZP8zIiiyqriUhaBnUY04ls6ibtIutqpbDscb2z1XXajyVa80aSXkSVlZ8
         HnRLjkLP25B7IIkg7DP8wG9YfKEnycDOcm8qarhjor/o/fnavXpcgZyEb5frLUlMgV+h
         6kzKPLPrRxvVDI/dPGbp/xgZ8JGceGO7TFQqCnfbDHuVF6sCisoVA2LIWrK0oPGU4nUa
         MHXrHOez8yWIxtxgCW15USwj/2fP1yCkBdkQJsOqqz1NrEJeJnFcDY3Lu/b37c34pRYn
         zjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711704332; x=1712309132;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GEQURDN2hc0rSK6rdl4NmLGBAAhTVwyKdlzTTBj2f1Y=;
        b=hPjjurkFBu/QLIfkaWqPy6TTnM1LS02ez3opGiwykx5s1zayxdHHzANCYiH8aAid7t
         bUoYOwi2hWkFO5sS9r/fNiTMJMhxVNdHK+xzMzHWzNf8v5EXbkaJpwkHIa23tJYY6eMc
         DMywdpavH7TwKct/0eU20WPiS5bXW/20uxrDyDJ8kpBd3HWPJvmxtuTvpcYXhyY0lnuR
         l3vizblkRAwJzNaVS2shPxXidw2ULKVVBo1GN9Z2TpoeT4agDbRB4GrXwSeH/FnXWzfr
         JlHc7QOpjuOEoDlDHPMTWdRGhY7+TjUdsg5a3afXZHGi7HvA6syBV8Kmb1Cq94hsDaHc
         GVJQ==
X-Gm-Message-State: AOJu0YxlVKF5FjYYyuhywRLMxyblMFou+bql0rKEKLXGTiPnj92em84H
	oUufiUi5iLEHF42g0n3M0UauLzvPqqgd1qhLPmGZGWdb/0EE3o/UGAyoLcB88nk=
X-Google-Smtp-Source: AGHT+IHj6Ku1SlLeycX3BBrqFVuNDojRtoSuuN3VaZC2NvqJlEZFkyTdAgLhvZ+kMwOUKwvGrTDGLA==
X-Received: by 2002:a19:f802:0:b0:513:e27c:78f0 with SMTP id a2-20020a19f802000000b00513e27c78f0mr1463695lff.46.1711704332376;
        Fri, 29 Mar 2024 02:25:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3cd8:c97b:1468:c232? ([2a01:e0a:982:cbb0:3cd8:c97b:1468:c232])
        by smtp.gmail.com with ESMTPSA id n3-20020a5d67c3000000b00341ddb65b07sm3742703wrw.63.2024.03.29.02.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Mar 2024 02:25:31 -0700 (PDT)
Message-ID: <c79bd6a3-fd5a-4b88-9e98-880248d77c44@linaro.org>
Date: Fri, 29 Mar 2024 10:25:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] reset: reset-meson: add support for Amlogic T7 SoC
 Reset Controller
To: kelvin.zhang@amlogic.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>
References: <20240329-t7-reset-v1-0-4c6e2e68359e@amlogic.com>
 <20240329-t7-reset-v1-2-4c6e2e68359e@amlogic.com>
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
In-Reply-To: <20240329-t7-reset-v1-2-4c6e2e68359e@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/03/2024 10:17, Kelvin Zhang via B4 Relay wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> There are 7 sets of Reset Source in Amlogic T7 SoC Reset Controller,
> and the offset between base and level registers is 0x40.
> Add a new compatible string and struct meson_reset_param to support
> the reset controller on T7 SoC.
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>   drivers/reset/reset-meson.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/reset/reset-meson.c b/drivers/reset/reset-meson.c
> index f78be97898bc..1e9fca3e30e8 100644
> --- a/drivers/reset/reset-meson.c
> +++ b/drivers/reset/reset-meson.c
> @@ -102,6 +102,11 @@ static const struct meson_reset_param meson_s4_param = {
>   	.level_offset	= 0x40,
>   };
>   
> +static const struct meson_reset_param t7_param = {
> +	.reg_count      = 7,
> +	.level_offset   = 0x40,
> +};
> +
>   static const struct of_device_id meson_reset_dt_ids[] = {
>   	 { .compatible = "amlogic,meson8b-reset",    .data = &meson8b_param},
>   	 { .compatible = "amlogic,meson-gxbb-reset", .data = &meson8b_param},
> @@ -109,6 +114,7 @@ static const struct of_device_id meson_reset_dt_ids[] = {
>   	 { .compatible = "amlogic,meson-a1-reset",   .data = &meson_a1_param},
>   	 { .compatible = "amlogic,meson-s4-reset",   .data = &meson_s4_param},
>   	 { .compatible = "amlogic,c3-reset",   .data = &meson_s4_param},
> +	 { .compatible = "amlogic,t7-reset",   .data = &t7_param},
>   	 { /* sentinel */ },
>   };
>   MODULE_DEVICE_TABLE(of, meson_reset_dt_ids);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

