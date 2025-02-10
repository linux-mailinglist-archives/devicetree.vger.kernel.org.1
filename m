Return-Path: <devicetree+bounces-144577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 412E7A2E838
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DD0C3A459D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564A11C4A02;
	Mon, 10 Feb 2025 09:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sWjVN4TL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5622B1C3C0F
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739181109; cv=none; b=luZjK0J2TB28X4LfMRlQRRk4QSix154+mXNAdLqdS42VDclpX1asydIQUIv9c86YuSsFHk7LAkUu5s+MPeCMMqRtF4GepVpFzHlyGdURwvv+Oon9NGhYoRZeUhw1NapPyITRWOFgLg8R2+4ocdL6iQG0y7MrnH3qUw3BeB7Yyao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739181109; c=relaxed/simple;
	bh=OTbzl0pPIRsh7XzBft5GDjqFlKsKgb7fO1CIYcnyWyI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SG+YFPZI6unatE+K4ZdK37MTL6gfWqwb5is67L16Nb6NxiwuEwZwGOkpmNNRQ0daLcEls8CgOp0m72jqcDMZZ5Zfakdj29UF8h1eydwyAGRUBuehID0pwEzQOcpfySUjIeXZhdFyW+2u0/s1BjcM27+CaZms2PLy5HiHRim6/SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sWjVN4TL; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4368a293339so46324755e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739181105; x=1739785905; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OyOzPnDD5nV6TA3iG57NOHGaY6BlLamnSYD7hNHtszo=;
        b=sWjVN4TLgvQlVNYp23aqLpYqUxoQXta+pQtbNC017jsZdOXM9z49Bb21itAW76S1zU
         pxFratJpZ4CwY3STznyVKaue71CA3WIqO/pBiIXr/zfB+GownFUUKcQ44jWwMJdsAGFU
         4mnmNgNZGdrrA7slIPBhMxmb9XvctT+pyDOdDLF8Zxj3OGVCAe3ftHzGz6FGGY4vWa3x
         xwNDYt/Bn1yfaBT4dczOkKL+1gaoBQGPAqaSlWfbBf7/32M3JLf8RofIb4rvjNV5VQin
         13CrZV06BXV/KEN96HyTisBqqNsiLVewGrzPulmTwKiBEuzo6Yy/nHhobi/PbCSh4eYr
         XKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739181105; x=1739785905;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OyOzPnDD5nV6TA3iG57NOHGaY6BlLamnSYD7hNHtszo=;
        b=JLHAOKLJzwiCLRge0l9XKmDw/U4e+pw3TAWjKQSnTlnL97H+vVHGcNN4yjEZvGph+c
         KiIyt2vfNPWRFlOymKb/dK+cOrjyRGXsNNlkOd3eDtcmAGOakhbLb70orqmG/kCqK/eW
         cIDyfoIA/xB1eAZL+eA0FHqt8W/1eGAKywmAiL2mUfnDTDtlOeIOCAORIyfL1bpnzmjV
         DJYlND0Q0aCp63Zv3J3+11JRDs/10l+j7KnpYBI6ZTAce+OZ5RCBa5rkwTT7DiY5RDul
         9rJVNMsx4CW2gdvo6HnSAON9z9xYB1F9RxzK7HsXq2NZIqlLc0zOSd10Vy+v2rn2F5A+
         Tp2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWO9VA0i6X9KAjxxr1w5Hqfkc/1JXlr7VAgwWCxt9a5cRpSSEXNQ9hiKxKsZH2DwHZSOybeRNzAHc/c@vger.kernel.org
X-Gm-Message-State: AOJu0YwVzNP//gdyolkN/BVL329FvDLF4y66I+fGCvDIj4L6cdHKKvKV
	C6aD127VKrUkB7duCIcvR2XOGoUrZI+Rl/Fivu2tTPQGxadVmKrGNH7mJhZdnME=
X-Gm-Gg: ASbGncuWaJjLO9AzK26+FG6JshpcWv9aQe6yczFQx0lnoB8TzDfjFCGnbQPOMCjg+W1
	BDgLCkk/PIomCG5GQU+jIALQKxf/wuX+18FP4l6C3ZXXo+QgMfgOLeW835ObGqgqH3EqPVK68Hr
	Zwj8GQ1H1HQtOsTEtV0QE/TkLjPrFaiANTGoj0g7jrKt6FjDYu65DfqH8lfUO7FPtundJK1krqZ
	OisKCPtn9szk7V9dkh0rWcRa62orFxrcnQ1RDy9w3XYofZ54jKU+AljKM7gBKFHV2+IEQyH+0Vf
	yPPwsmMwyzVV0WVTH45TeanKnZd2NFVUJ+26ZpYnjX8dIFXeOEkQTX+9tLtQXYgIWFwH
X-Google-Smtp-Source: AGHT+IG2G+0jkkCrFzcyOswfbkjejbMcC59iHCIyTbbyZg24kwvnpZM5H9uQkhpiqY1F6e5Q+1GToQ==
X-Received: by 2002:a05:600c:511f:b0:434:e9ee:c3d with SMTP id 5b1f17b1804b1-439249a82dcmr96610705e9.20.1739181105553;
        Mon, 10 Feb 2025 01:51:45 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5? ([2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4394127afcbsm37731515e9.23.2025.02.10.01.51.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 01:51:45 -0800 (PST)
Message-ID: <c0f9424a-664b-4d77-b8e9-1938e49746fc@linaro.org>
Date: Mon, 10 Feb 2025 10:51:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC v2] dt-bindings: mmc: mmc-slot: make compatible
 property optional
To: Dharma.B@microchip.com, ulf.hansson@linaro.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250205-mmc-slot-v2-1-da3c5f30e2d9@microchip.com>
 <f6d7ffa0-6c08-45fb-9153-5e4aad1ca86a@linaro.org>
 <003ffa44-c88a-4234-a54a-50cd1140982a@microchip.com>
 <7180babd-302a-4f86-8770-bdd9f5c773cf@linaro.org>
 <7de20917-3176-4e80-8ccd-9c01c037cc9a@microchip.com>
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
In-Reply-To: <7de20917-3176-4e80-8ccd-9c01c037cc9a@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/02/2025 06:28, Dharma.B@microchip.com wrote:
> On 07/02/25 2:47 pm, neil.armstrong@linaro.org wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>> the content is safe
>>
>> On 07/02/2025 10:02, Dharma.B@microchip.com wrote:
>>> On 07/02/25 2:25 pm, Neil Armstrong wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>>>> the content is safe
>>>>
>>>> On 05/02/2025 04:48, Dharma Balasubiramani wrote:
>>>>> Remove the compatible property from the list of required properties and
>>>>> mark it as optional.
>>>>>
>>>>> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
>>>>> ---
>>>>> Changes in v2:
>>>>> - Instead of moving the compatible string to the other binding, just
>>>>> make it
>>>>>      optional (remove from required list).
>>>>> - Link to v1: https://lore.kernel.org/r/20241219-mmc-slot-v1-1-
>>>>> dfc747a3d3fb@microchip.com
>>>>> ---
>>>>>     Documentation/devicetree/bindings/mmc/mmc-slot.yaml | 1 -
>>>>>     1 file changed, 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml b/
>>>>> Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>>>> index 1f0667828063..ca3d0114bfc6 100644
>>>>> --- a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>>>> +++ b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
>>>>> @@ -29,7 +29,6 @@ properties:
>>>>>         maxItems: 1
>>>>>
>>>>>     required:
>>>>> -  - compatible
>>>>>       - reg
>>>>
>>>> If you remove it from here then it's still required in Documentation/
>>>> devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
>>>> so please add it.
>>>
>>> If moving the compatible to its specific binding isn't appropriate (as
>>> per Conor),
>>> and if removing it from the required list here doesn’t seem reasonable
>>> to you,
>>> then adding an unnecessary compatible string in our DTS files doesn’t
>>> make sense to me.
>>>
>>> What could be the solution then?
>>
>> The solution is right but you modify the meson-mx-sdio bindings, so
>> simply add compatible in a required list for the slot node.
> 
> Okay, we declare compatible as optional in the generic mmc-slot binding
> but make it required in the meson-mx-sdio binding, which inherits from it.
> 
> So why not define the property directly in the meson-mx-sdio binding
> instead?
> 
> It feels like the mmc-slot binding itself serves no real purpose.

It's designed to be reused, the goal was to facilitate migration of
other mmc controllers bindings.

Neil

> 
>>
>> Something like:
>> ========================================================================
>> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-
>> sdio.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-
>> sdio.yaml
>> index 022682a977c6..0d4d9ca6a8d9 100644
>> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdio.yaml
>> @@ -60,6 +60,9 @@ patternProperties:
>>          bus-width:
>>            enum: [1, 4]
>>
>> +    required:
>> +      - compatible
>> +
>>        unevaluatedProperties: false
>>
>> ========================================================================
>>
>> Conor, Is it right ?
>>
>> Neil
>>
>>>>
>>>> Thanks,
>>>> Neil
>>>>
>>>>>
>>>>>     unevaluatedProperties: false
>>>>>
>>>>> ---
>>>>> base-commit: 40b8e93e17bff4a4e0cc129e04f9fdf5daa5397e
>>>>> change-id: 20241219-mmc-slot-0574889daea3
>>>>>
>>>>> Best regards,
>>>>
>>>
>>>
>>
> 
> 


