Return-Path: <devicetree+bounces-255013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC0D1EA49
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D2303033D73
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0185E3557EA;
	Wed, 14 Jan 2026 12:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zLi4a1NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9A7343D8F
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392423; cv=none; b=BAN7M699lfjrK4c1cBd9jt0g/uZbE+bdrV2km9PPg0t5ZYF/jCA3F2MUXZXunFFlKKc1eRZq61D5Jf0i99x/iqcA31pCNQca/zDw1v8ulJWMIOXzShJud/zCBGKY5uYQK1G4Rb32egWnWw23M1BtE5w11jk5x36hAStDm0D4pjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392423; c=relaxed/simple;
	bh=tSkefbpZRgIDmwDZqKljn4bcnnaOVD+1vuHY57/7YPs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=W1SMsCs/dv2Qb9Or9W/w8kkXmdhh5ty2DPwm6BFlG7FUmw/JodfFJHdsYefKRPV6ou556KnCDOO9UGPBElZXw/2Y1kE6DBvFfZ4qbO6S/GkvB1qvuUEw1tMmy29IbzEFvYWGK6ErAdseR+9hOzm/Ryg1n+scQ9N3zUgBFc2uTRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zLi4a1NS; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-430f57cd471so4387119f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392418; x=1768997218; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3pnFDZOJMe91m1QVq4sRpcpQyhtr0ZmwRl1v6B3xoYE=;
        b=zLi4a1NS+aEuk88fMNZbdqcqouOGMgzbfYujKWNP6pIcENQaL8cPWffMVetqawkbJf
         vckyUMPRM8NnDaQua3xSKZX4TlRwEDSzFN7OBTziynEB/EcX/b5xV2dpahSZHUIdE9b6
         0fDkYJoC3c97o/2WCNeT+AIq7odr8I8z61JtFuwykfOHSULVauAfOWBB64nyo8nhyQ0g
         A7axBheV1b9N3UuIu8dx1pZVSx+m3alryNB680cW9N0LzWSbwV90rzVRnQDLwC2kcHSb
         2WPBuMvGBO7SN1qLYRToGg0fvs3S/ofyw9X5dImCBqGsYmNe/8dLTUGqavdCMhpxWyAe
         ovSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392418; x=1768997218;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3pnFDZOJMe91m1QVq4sRpcpQyhtr0ZmwRl1v6B3xoYE=;
        b=u3LcNfw7vDxJDzZOqmMe6ZXWHn/Vy4gzbfxSsxb51p6LDrPPN12lpCqCB+3OZ7aDk3
         UiIYGJ5OMmcEKsTbSZf/bsl1hUqD9q4E67kwQz7uNVtvjdrEyBIjo3L/4RB8ZexmUM2f
         u65A28Kc3jsn63mref6bUdhzU5ZZxDV5Swxvk7xlErTbA2wx95O3RGJ9SsXzK0KBcD1o
         FHCf1xVd6KZZIPebK8ASFeY0iCUdyoCchEG9HNFr5OUM4k1qHqiWRE3GFQ0PRRHidnUd
         kzXASL+SRahP2YA25dlG96EzOxvfIgyLBLJu832TRAO8cyopucWspasT2OjN4Vg/YrKf
         Yv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXi538vcj8WQe/y/O3VzeiG18F+4kZXs3NISmAtUdaWuYsvh/a9tEVkMh+imtFAvbav1m2O9BUUnWB2@vger.kernel.org
X-Gm-Message-State: AOJu0YxTIFioJQLurY2Jn8NH2E0JQPESL/p/2lBU5JBU63ikrmK6F0Nj
	dQGcVXm2q0W//dULlC/T7DtNNBmqxbobB0ivDgGk+LCi36HLvhw0j01ZIetMxvMdhCQ=
X-Gm-Gg: AY/fxX4lNdGNf/REEetxJaaMfg/hSCEcESQ+wK6O+5OUNN2Utbexaak2RvkB1YrFFvF
	M4MqbJJyTxt3HY/6lImikl7neoSdGgr3u+l/nfcoNLfjgQa+SmV3vb3pFsP5RdhB57vE0RNefS/
	nL5EdDtwQ0GTmsqWeMZhBjk+tPR+qsTExeQ+T257Qlk1nvXrtijAegWZIa41VI52d2ZLexFBqNX
	+Iqz4O26JvdmiEj1s2bHGNropljrDSAZscSOZhGhRdSBmkNm52Gz3N6H6C71sCqEyhcwJLYwnIW
	G+HHx4JR8WHaa9J8OlmsW1xWU/hiEXwJLXnJK+YLpBbHUie4QC0wjOgeoIm0HAzCZJHzO2zUyVK
	O1n0WN+1qol5j/ENA2YFerUT6p69JMaHmQ4GhS68dDsTw234Fs+9FEqmiHPG4nBfOzUsiQkL5s+
	B+9Ss85Zr8k+4kEK6A1R+LaPZ3LKQaZ8g/W6uQtyI7AqTySNITUcfsts8nGACq8cY=
X-Received: by 2002:a05:6000:2911:b0:430:f58d:40da with SMTP id ffacd0b85a97d-4342c4ef0a9mr2625034f8f.10.1768392417548;
        Wed, 14 Jan 2026 04:06:57 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0860f5sm49164912f8f.0.2026.01.14.04.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:06:57 -0800 (PST)
Message-ID: <4c0e0a34-7612-4bd6-9e9d-5599cbeb8fd0@linaro.org>
Date: Wed, 14 Jan 2026 13:06:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add Khadas VIM1S
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>, Nick Xie <xieqinick@gmail.com>
Cc: khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, xianwei.zhao@amlogic.com,
 christianshewitt@gmail.com, krzk+dt@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, nick@khadas.com
References: <20260114062549.68954-1-nick@khadas.com>
 <20260114062549.68954-2-nick@khadas.com>
 <20260114-slick-passionate-mink-216a3a@quoll>
 <CAP4nuTXeC1-6ktwLpDt_1ZRHxPSiNAoDKTxLzqEYJUfcnVogcQ@mail.gmail.com>
 <39bb1820-6e4d-4f50-87e0-93844d779f6c@kernel.org>
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
In-Reply-To: <39bb1820-6e4d-4f50-87e0-93844d779f6c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/14/26 11:33, Krzysztof Kozlowski wrote:
> On 14/01/2026 11:07, Nick Xie wrote:
>> Krzysztof Kozlowski <krzk@kernel.org> 于2026年1月14日周三 16:51写道：
>>>
>>> On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
>>>> Add devicetree binding for Khadas VIM1S board based on
>>>> Amlogic S4 S905Y4 SoC.
>>>>
>>>> Signed-off-by: Nick Xie <nick@khadas.com>
>>>
>>> You still have the same From/SoB mismatch.
>>
>> OK,  I will fix it in next version.
>>
>>>
>>>> ---
>>>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
>>>>   1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>> index 08d9963fe9259..55663e0f7f915 100644
>>>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>> @@ -247,6 +247,12 @@ properties:
>>>>                 - amlogic,aq222
>>>>             - const: amlogic,s4
> 
> Look here
> 
>>>>
>>>> +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
>>>> +        items:
>>>> +          - enum:
>>>
>>> Yopu already have exactly such enum with such description, so your
>>> compatible goes there. Look - it is called "Boards" - plural.
>>
>> The exist board aq222 is based on SoC S905X2, but the new board vim1s
>> is baed on S905Y4,
>> they are different SoC, so we need to put S905Y4 under S805X2 ?
> 
> What is the point of having two separate lists with enums ending the
> same SoC compatible?

It's very usual for SoC vendors to reuse the same SoC design (here Amlogic S4)
into multiple different packages, with some different features enabled & so on,
and even new version of the die with some bugfixes.

We did this in the past for goop reasons, and here it also applies.
In fact the currently supported SoC (S805X2) is a stripped down
version of the S4 SoC like it was done for the S805X which was aalso a stripped
down version of the S905X, with a different IO layout and different internal
characteristics even if the die logic was the same.

Neil

> 
>>
>>>
>>>> +              - khadas,vim1s
>>>> +          - const: amlogic,s4
> 
> And here.
> 
>>>
>>> Best regards,
>>> Krzysztof
>>>
> 
> 
> Best regards,
> Krzysztof


