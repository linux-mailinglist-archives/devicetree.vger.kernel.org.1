Return-Path: <devicetree+bounces-54244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DBE890143
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 15:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D015F1F25259
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 14:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25EFB83A14;
	Thu, 28 Mar 2024 14:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PedZMalN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EEC82880
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 14:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711634909; cv=none; b=K1t5i4S233Q5SfEXNFMGHEFdBGZevkQ/BTQ3tB08qQDowwo/3hloaFwvRrNli4YVTkC4ARM/yZ+uv0rzR99v2vBhXiky7Lqb78FdQAOHGR7no/ZGhc2yfJQeQuRt9c6DqPpkYz/de9aIg7jI9Cu8txJwX67eLVurww7rwei5ARc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711634909; c=relaxed/simple;
	bh=iIk+LivIXLBnAMRG08/c+OxE8ONUviqrsw9EWVPDFJE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=PPro90ClTvDWp+y9i95ZXBWA036/8Gk93acRuK8SS6vakgVBwk+NbK4IORY/Lh99MOZnIVvhzIU0YHCtGX7t0Um+9YgK9uhqx178yB6w1T5arYQLhEMM/pTbUBprwzxyObq6la8leQO/J3YHy8iwWm9EP/vs8Llqpk86HMORGPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PedZMalN; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d6fd3cfaa6so13794121fa.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 07:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711634905; x=1712239705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KldVMMTU4wvemf1droJVFNbQxm8DF8GfwQOLOEUBIRI=;
        b=PedZMalNsSOcEFDP3JYaOVBA+tOQqexDVmrI3LFG0z0q1EBXjMUo5dxaZ2zaEaQwUo
         8ij4iLQcZGjkpjgw5Z3VI49ZPzZ+le6rUkh+Vbj+sfdpzv3URfQYdze6L090MS+ldtST
         PQyx1bKUbIPA5MhWNA08KXos45knTZpcLsXd5Vy+m2NBL63PWsH3WtGaPWw4JCyJUio6
         9TL8++5GMOObUNgn8pj3T2yFn0GbyXwqYwjW8H8JsODUy2G61yhngK8eEu0fOsRSEmI4
         ntQacs+/a5RiSvw2ODwnz/4Mo1G0T8NXbeubPeTvYI3ECxpyYUx24ThaUVS2rESUSfX3
         ning==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711634905; x=1712239705;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KldVMMTU4wvemf1droJVFNbQxm8DF8GfwQOLOEUBIRI=;
        b=mrgtQBvOw08GvY+R0Qw8/MsydO5AqxGajMOfWrGzx8JpVyAQOhlSjmw0Kn6LjHWmrS
         07m6aJThUjrs8epX2ZFxbVnGrCY8teAnWrJly4chtCmuEWosFjRET4G58lc5eyFN9Cvf
         ajiw+GVTOk21EIGtM3LGFBqdc4UX8S1uyhA5Wov5Nb7lNgxNWM5toe+9MTuM4aMc5Cg8
         ID46UUU5ddyGYFK6wlWVh+uT6weS1f6raz5wO5Gd1uvFNiYuXeuC9JSIYLJ8PrlcDOAE
         Qa8QMr6ENEfjJhQNJFiDIBMWCjCWhMa9L4FeMiko9+T0qhfipYdb93LUYu2nxr6zQ98W
         mizQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbCYtv/MkLI/+AzBdz/VSnZkgdET0ROIFYbmMzAgBVeaS8Dq4sqSN/t+D9BKsxFJm/hSwMXV3FhVNYM9XvcfAf+qxrt6UScD/O4w==
X-Gm-Message-State: AOJu0YyJ4VeZEU0TbipWOkTZVtPsJ9KKHWvjv10X6xkydr1xBMXhqUW4
	tzF7AQnkOkHfZ4CyzDpZH98jvZNy4fkEd4W7B4pdb0voca9Y9VCwHOECvK74zW4=
X-Google-Smtp-Source: AGHT+IFzi5IGT2Or39luIJGiqxag++Cnfv2uvw0ITZd6e/aW+yO5N1QhpGpdl7mOdWQlSPUri5HLMw==
X-Received: by 2002:a05:651c:324:b0:2d3:2ecf:c26a with SMTP id b4-20020a05651c032400b002d32ecfc26amr1523605ljp.13.1711634905209;
        Thu, 28 Mar 2024 07:08:25 -0700 (PDT)
Received: from [192.168.7.190] (82-64-249-211.subs.proxad.net. [82.64.249.211])
        by smtp.gmail.com with ESMTPSA id g8-20020a05600c310800b0041488cfd0fesm5549851wmo.28.2024.03.28.07.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 07:08:24 -0700 (PDT)
Message-ID: <39ae48ba-02a0-4f68-b0a2-e03272fd50a0@linaro.org>
Date: Thu, 28 Mar 2024 15:08:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 2/2] thermal: amlogic: support A1 SoC family Thermal
 Sensor controller
To: Dmitry Rokosov <ddrokosov@salutedevices.com>, jbrunet@baylibre.com,
 mturquette@baylibre.com, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, glaroque@baylibre.com,
 rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
 lukasz.luba@arm.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: kernel@salutedevices.com, rockosov@gmail.com,
 linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240328133802.15651-1-ddrokosov@salutedevices.com>
 <20240328133802.15651-3-ddrokosov@salutedevices.com>
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
In-Reply-To: <20240328133802.15651-3-ddrokosov@salutedevices.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/03/2024 14:37, Dmitry Rokosov wrote:
> In comparison to other Amlogic chips, there is one key difference.
> The offset for the sec_ao base, also known as u_efuse_off, is special,
> while other aspects remain the same.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>   drivers/thermal/amlogic_thermal.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/thermal/amlogic_thermal.c b/drivers/thermal/amlogic_thermal.c
> index 5877cde25b79..1d23afd32013 100644
> --- a/drivers/thermal/amlogic_thermal.c
> +++ b/drivers/thermal/amlogic_thermal.c
> @@ -222,6 +222,12 @@ static const struct amlogic_thermal_data amlogic_thermal_g12a_ddr_param = {
>   	.regmap_config = &amlogic_thermal_regmap_config_g12a,
>   };
>   
> +static const struct amlogic_thermal_data amlogic_thermal_a1_cpu_param = {
> +	.u_efuse_off = 0x114,
> +	.calibration_parameters = &amlogic_thermal_g12a,
> +	.regmap_config = &amlogic_thermal_regmap_config_g12a,
> +};
> +
>   static const struct of_device_id of_amlogic_thermal_match[] = {
>   	{
>   		.compatible = "amlogic,g12a-ddr-thermal",
> @@ -231,6 +237,10 @@ static const struct of_device_id of_amlogic_thermal_match[] = {
>   		.compatible = "amlogic,g12a-cpu-thermal",
>   		.data = &amlogic_thermal_g12a_cpu_param,
>   	},
> +	{
> +		.compatible = "amlogic,a1-cpu-thermal",
> +		.data = &amlogic_thermal_a1_cpu_param,
> +	},
>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, of_amlogic_thermal_match);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Keep it even it you change the compatible,

Thanks,
Neil

