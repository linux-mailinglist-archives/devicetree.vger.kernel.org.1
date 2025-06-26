Return-Path: <devicetree+bounces-189968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC8EAEA014
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E648562C4D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2682EAD15;
	Thu, 26 Jun 2025 14:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PsiStBz0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E712EACEF
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947176; cv=none; b=ePCjOX2XNPnxG4IuI1STu/hmM5G8Pg5DO4Dc1utqIVh9j5YpWI2HKL7/K2m8ogK1sfEEp/53Cjm5Jr5k3YWsv4gSon7vTcmzsjk/76Nan/o++z65xmV+pShLIi5Qt7Abu56xFsvAqQ7lia9yoHeGbgF5z8LfxMYWPARoIppE5kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947176; c=relaxed/simple;
	bh=Azki2qxWkto4m41ZbBw3IYV4NxcZjZlLTPXIZs02hBg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=juKAYx1cv8eHD7aIaoy+aK1rKx4h1gyTfDjGGK+54Ars8Be/B61oVZolrWTvDBimoBGuD7i2RroytJFIrovgZZcGtfomxFiVUTPJAKovDbXvY54qulC75IixKNw/cZe4jevSYGrXezMmjAqQWxKZEaI+E9AzP/nCJr5ORe8Dsb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PsiStBz0; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-451e2f0d9c2so7734425e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750947172; x=1751551972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idh10+JsRz1ZHjVnaSYCjG9wWXpOOuIrbzWNYHckzT0=;
        b=PsiStBz0RPdu9ioruCu8/BwBH5P+m3/d1DGlAt77U/LkmIGRPaKCc50VqZYLyOBcw2
         OC6BmQOSiVc1u0nFNABDAtz+wxtFeEHxPHalOnKZswA6mME9AVNGQz++4bnVpGnqfI+K
         nMYCI/dTAxDC9uBR7UprvxEUyxmNd8UeGyiBslFikO8P4y/8OtJu2qtPy1zTMJ6gceKE
         /F3Rstpz6dH9dRr7zxBMWZiM0JH8eZmb8doapanpQDU0ube9yvuPJH+XfdtbJdzat1Bs
         Up8InrXO38T9Co2fYK9k2xzkvfwRl9VJukeLV8DJ+YPKIysRDVZxCxqxE/p7a/ZjcNts
         Mfng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947172; x=1751551972;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=idh10+JsRz1ZHjVnaSYCjG9wWXpOOuIrbzWNYHckzT0=;
        b=OVBH57eNEESncsm1JxwRP/RjDUB7+Oy1S4bbsPSJQ6V+tTKFxJczcncsNDz/UjqUi1
         XtWut8VEY1rFpYYDiQGSkda80kd9eOVPa6N9xeVWI8EZMo863GyvVcVavwKxXRwMaV8k
         4hJhna/tIW3os9d2zIlMqw/3INLMyzv4mGRkdT0eSuh9TDkJfLL7IkodY2F59pmv6kvF
         Rau/QgInny5EjPukn+EwdexXhXTUCyUMt3NQUcUZMTaj9fafyxCOdzFLHvCO3OpdTgcK
         LrQ6I+JIHkAGUXd8U4ybWM3jlGwOFaK4CUGy/dt/v4E5zFvyVtAgGwjK1Ps1Hd40CUPK
         Stkw==
X-Gm-Message-State: AOJu0YzAKSCunUt1h9t6EKpggJdkBO2S2R3b90PZKVSPbbzGYM94sFu/
	UdazP9aX1p+z/dYYA43OBbUdrt2U/cVA8RqDe6jrTP04T641cl/cfOCaUEOsgZgN6N4=
X-Gm-Gg: ASbGncv7dUnOUm/TKFX/lSvySFj+uCq1AS0wR9sfdwFXrHh+ZvwOPwGRrfK5fnTt1IX
	mbb9UrfYLiMt+/LQe8q+PTKniW9NQwWGXSkxgADtC4NMBSvSVAYG7qbVRuNcDyiZzGpxyu+xwT1
	AXM9BOzb7A+4Da9FXubrWe4pT1o2wwhJaAduxUM5JNhazp1phMBTwM+Gi1DjmlCVDnnZkYW4OEu
	ZGB+E1Nkfwc38OzRXpWcQIjgueDo3h0AYkD6T5x9k9DycjpRexU+d7hUZ3Wwr3M9IhMthO5gOrS
	UMs+y14R5RlXulJUoQvtTAefDQUnn7RjECQSLJ0KgbdGdqyg5HnsDqy0q6KwCbbzLfTVo2XLQP6
	K56vDr81VMOG7OJyaEihgf2S599YZ5JY7OI8NR/LZZSKCeBzFfA==
X-Google-Smtp-Source: AGHT+IE7Q7mlKruv8URp7hHM6crDlnNtpi1iYsCn32qtT+RUqOTHjkI20cptaGqB8cXtsnPMosNgUg==
X-Received: by 2002:a05:600c:630f:b0:43c:f509:2bbf with SMTP id 5b1f17b1804b1-45388a14880mr43012765e9.15.1750947171441;
        Thu, 26 Jun 2025 07:12:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823ba553sm50242095e9.31.2025.06.26.07.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:12:51 -0700 (PDT)
Message-ID: <60f437b3-2780-4bd3-95a4-d0453dcb83e7@linaro.org>
Date: Thu, 26 Jun 2025 16:12:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/5] dt-bindings: mfd: khadas-mcu: add cooling-levels
 property
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <f4d27c690b562cc72997c9ae00c6145b3722561a.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <f4d27c690b562cc72997c9ae00c6145b3722561a.1746518265.git.efectn@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Add fan controlling step property which is used by Khadas Edge 2.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> index 084960fd5..f69643aae 100644
> --- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> +++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
> @@ -11,7 +11,7 @@ maintainers:
>   
>   description: |
>     Khadas embeds a microcontroller on their VIM and Edge boards adding some
> -  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
> +  system feature as PWM Fan control (for VIM2 rev14, VIM3, Edge2), User memory
>     storage, IR/Key resume control, system power LED control and more.
>   
>   properties:
> @@ -22,6 +22,13 @@ properties:
>     "#cooling-cells": # Only needed for boards having FAN control feature
>       const: 2
>   
> +  cooling-levels:
> +    description:
> +      Max speed of PWM fan, from 0 to 100. This property is necessary for Khadas Edge 2.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      maximum: 100

The cooling level can be detected dynamically by reading the MCU register, so
just set the max_level to 100 when edge2 is detected, and drop this property.

Neil

> +
>     reg:
>       maxItems: 1
>   


