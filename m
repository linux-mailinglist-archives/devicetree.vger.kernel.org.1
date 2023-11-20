Return-Path: <devicetree+bounces-16998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5C7F0D85
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C8E11F21FD5
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D880BE57C;
	Mon, 20 Nov 2023 08:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pvTkfhkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D2BEF0
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:27:48 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c8879a1570so82701fa.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 00:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700468866; x=1701073666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3zUGH0c4GY6lD98Q6lqE8V3ux67qaNFVeyeN6TZqzhM=;
        b=pvTkfhkRIe6IGoueGgn1c+GH1ywYThIZ1yDt8r+/UiBd3FRoh41iTPvtnXJIJCVlXi
         dhQ01jfX6LaEuLcbA8yU4R+LS4AEEHwjF6iqnDFUP2Jr6JbY7gHcKTgbXh2sSY697CVN
         kGDzMCIxs82dx8yjegUMBHO5bzayUhjJyniQ+X2D6vVpms90Y3oA6ws5n3Wawe3x65Nw
         Jm3Mr9RnLVRKFblec9I6xxI1d4SGhZBEfXBrUd/dE0TWJRUWqrKB+F7ZTq4L3BS1DxIX
         jYEkf19E7XRyQUh2YHoCuq7iSyclgkO/GgY27SLtNheHHmVgR6qLjgOzJEO12+B+UbZj
         G4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700468866; x=1701073666;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3zUGH0c4GY6lD98Q6lqE8V3ux67qaNFVeyeN6TZqzhM=;
        b=r/32+bj1z78siJgO1XkG9FrN9ViMxwbkxw312sJq5x9h9O1UjRRaxBcgb/dUeRgu2t
         cdeg7ppFiDA7JHjCjsgFKY+8vo9YB5388fRZBZWbXAH52yYE4zDQbCjh4JsBbTWYJZsn
         3b/aLhTTGv/WHNZg816yuiqNfOQ7GR3ovRMk7Se8OOBoALc897XszopWljQNYP9p1Tnt
         3O3pfI9LnaQ7Qf1jERo6F3k1hG++9KYUYa0QqejXtpt8W1dK2X7RBwk4Gqx3u72EVyJ7
         RHrwz2/xUk7NWXMbTYsoPSLAaUsiFz7H5txXVeorC08YhrFJGq4YA9zNATC8WbMNLcuh
         nOuw==
X-Gm-Message-State: AOJu0YzccfwE/b9StX5F+Fcm14SRYvnk3JJqljNFsMcrvT9aOtPXKJKD
	bANZrDBXt7VEwxMDGbC0LJxlCuph4175f+5aH7gFs3ba
X-Google-Smtp-Source: AGHT+IEyiy5b3nZjrxUqCLi8UtuOkrr6suPn1vwp5RodoSz2UKg8GWMKoGwtKyNFwtH6O+JddbUpwQ==
X-Received: by 2002:a2e:86d5:0:b0:2c5:183d:42bf with SMTP id n21-20020a2e86d5000000b002c5183d42bfmr3998771ljj.45.1700468866186;
        Mon, 20 Nov 2023 00:27:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:f04:f84b:d87d:1d06? ([2a01:e0a:982:cbb0:f04:f84b:d87d:1d06])
        by smtp.gmail.com with ESMTPSA id je12-20020a05600c1f8c00b0040839fcb217sm12641000wmb.8.2023.11.20.00.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 00:27:45 -0800 (PST)
Message-ID: <4608012c-059f-4d6a-914b-e85ad0c32ff0@linaro.org>
Date: Mon, 20 Nov 2023 09:27:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/6] dt-bindings: pwm: amlogic: add new compatible for
 meson8 pwm type
Content-Language: en-US, fr
To: Rob Herring <robh@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>
Cc: JunYi Zhao <junyi.zhao@amlogic.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20231117125919.1696980-1-jbrunet@baylibre.com>
 <20231117125919.1696980-3-jbrunet@baylibre.com>
 <170040994064.269288.960284011884896046.robh@kernel.org>
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
In-Reply-To: <170040994064.269288.960284011884896046.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Rob,

On 19/11/2023 17:05, Rob Herring wrote:
> 
> On Fri, 17 Nov 2023 13:59:12 +0100, Jerome Brunet wrote:
>> Add a new compatible for the pwm found in the meson8 to sm1 Amlogic SoCs.
>>
>> The previous clock bindings for these SoCs described the driver and not the
>> HW itself. The clock provided was used to set the parent of the input clock
>> mux among the possible parents hard-coded in the driver.
>>
>> The new bindings allows to describe the actual clock inputs of the PWM in
>> DT, like most bindings do, instead of relying of hard-coded data.
>>
>> The new bindings make the old one deprecated.
>>
>> There is enough experience on this HW to know that the PWM is exactly the
>> same all the supported SoCs. There is no need for a per-SoC compatible.
>>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>   .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 36 +++++++++++++++++--
>>   1 file changed, 34 insertions(+), 2 deletions(-)
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 

I'm puzzled, isn't it recommended to have a per-soc compatible now ?

I thought something like:
- items:
     - enum:
         - amlogic,gxbb-pwm
         - amlogic,axg-pwm
         - amlogic,g12a-pwm
     - const: amlogic,pwm-v1

should be preferred instead of a single amlogic,meson8-pwm-v2 ?

Neil

