Return-Path: <devicetree+bounces-255014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE298D1EA52
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65F1D3034A38
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9885E396B96;
	Wed, 14 Jan 2026 12:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KB/yeEGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D015394494
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392453; cv=none; b=IqbEHTt76dtHw8D+HBF4ZpNbifjLuQMHD/pgvVuEwk+S5onFFt1fcysbgFyBoBDEabOIkdI0LUqmMRf45gpk2tF2y32nb/2nWpviV4q1I08KzkfY3wW0ND5mL/jAZkawDOyK7iUVC+ypveHQDdJSI35aZKhl7hqNZ37lJoh6D4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392453; c=relaxed/simple;
	bh=g1MQKVst3vRRBpjP4tpMGE6XBbtC6OuH91l+ejamYwo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ul189wucMHRT8Ak5KstKIL7P07kjkm2R0vAs5opGuYzlL6glf6Tnel6HPLd52YLuDoSTnq/8bGZAcvdB+uR0c/GhtZBIdpwQmLK8RSWuGPvyvHJX6YOjjgwGxOhx1pCn6vYzm/vOiKuLHnEMBG+Hlp5SyvzJyRznCJ+TTydjzts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KB/yeEGl; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee2715254so4257535e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392447; x=1768997247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4dooFeIUOZ2AYn0yuxNU1dgV5MLYuRIoZtKgKCQ/5bI=;
        b=KB/yeEGlzIeSgbfxCVOi+poSqKwc0ASdSFrlvBFjjire9y4zCP2YNR3CY891ytymWg
         jkOSH5rn4ocQ+hYSwdcYBO4B7cnbkd75v7jGbSSVVYGDJgKEbDcT7/w643frMZTWKmn0
         L6Vvo7eUf1IUGNiX6M5Agqc+eu+aIcyVvSfbftSJJqq7ujayM6QVUwk6yWp4dLpwPbNA
         47DXstlHtU4HHpXWVl+AxF/9brTF13g4kA+aPxeOjC3VQt4ZLzVBj7zfovBZG4tRVxuj
         Y2XNbtM2/3P1HXmGLxTUUrf46mhp9kLXLYq9gqFeP3o0gKFbuACVIeNGx/nAbtD3aY1e
         W9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392447; x=1768997247;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4dooFeIUOZ2AYn0yuxNU1dgV5MLYuRIoZtKgKCQ/5bI=;
        b=AqsuyBdwVBMUCg1bKFZ3W3BzkHCU7sfyTH5o5qYZ+z0aAlY2I4dfU0gFDcwWbWcasO
         QKUXftKJX+1S9o/s28dH9z6nNQp2SkUUFMTUq1cjh9eMGJ+FRQECy1kbX5TxFXmHzcxp
         5YJDvi716gQgcJesfDfiwsfXwQlogkdj0hlZ2DWbeV8eP03RUSqPXi1im4a1CMFCwnnS
         NrVKmYMm/u0ptrH4KsqY2+wAfjpWWAD6nGjE3NwO3Llj49uEEgQ3MmqQOfsErye/Vwvg
         q+Nz88x+9QZsZBPVxgtzRGz+8QK2NET14C+X2orHgCRnLeU/vlz0nJXa1YPBOTU6NVx0
         OxHg==
X-Forwarded-Encrypted: i=1; AJvYcCUb28aVeq24QtbXOLK3vGNXyuOKZjVmTu8DqO58n+shAkBCAVD3RCRkQMQBMimBCZ1g0WW9vweZTYHN@vger.kernel.org
X-Gm-Message-State: AOJu0Yztntxms+W3J2kAs/bH6WvkNCuoZBhcuDpFKmcvliMtdCvkThvd
	GooUthdj7/C0o2hYCBOfFva+3WZk3gn5cmf0g+o9lakMUucZvHjtvkBy3alncuZF1/Q=
X-Gm-Gg: AY/fxX6i+sAS1iQ+S9ICUaTxfuGsPU9A+5VZUtJnaVHFqzbTfTgxcdXb/ur4Q+5lu6y
	eQbUiLHOSacKBlNyMXRipjgLa69uJ3ZCpvbTpWmuMiynIdgr489UX65m5CQuH1LXP1kRp4WFsgU
	4A5W/IArVx2BT53EHMGmkRnaGpF/LeDzRhrFTBvf0DWOwlFneebtwZ5kM+2qtqIPWhXkUDlzmTi
	zwC0ATMnDjZsA39i6GQy8MrHxZbQaKi8GWNkIbYRphHswhayv1/h2pYvgmNiygqIUesTeKY/baT
	vHPWLzS26XeAP4U08W3kflmUvdCVcr3wjNlaEj82EuCHMEvbPTnLEnY7I/wQO4KESBMftsFQfS8
	oR1jXUn92Ll28Um72RTfz1hWDQ9ND3SnMr4FsRnikVq3pG6JaleHPyEp+7tAkoHEzBejh+USkLg
	OtVysJNCQSeGawPVgAAyxZnbgptrhIIS4MtdGFnnX1GU9xDQdMdvPnvFLoRcL9I3w=
X-Received: by 2002:a05:600c:5285:b0:47a:935f:61a0 with SMTP id 5b1f17b1804b1-47ee30709e8mr30476765e9.0.1768392446880;
        Wed, 14 Jan 2026 04:07:26 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee281dde4sm19667005e9.4.2026.01.14.04.07.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:07:26 -0800 (PST)
Message-ID: <b017db65-54c2-473c-8263-4fecfbf9a330@linaro.org>
Date: Wed, 14 Jan 2026 13:07:25 +0100
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
To: Nick Xie <xieqinick@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
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
 <CAP4nuTX556F6a+aMndYayu-29u-SsYi0g0ie8ONz8b5GStgv-g@mail.gmail.com>
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
In-Reply-To: <CAP4nuTX556F6a+aMndYayu-29u-SsYi0g0ie8ONz8b5GStgv-g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/14/26 12:25, Nick Xie wrote:
> Krzysztof Kozlowski <krzk@kernel.org> 于2026年1月14日周三 18:33写道：
>>
>> On 14/01/2026 11:07, Nick Xie wrote:
>>> Krzysztof Kozlowski <krzk@kernel.org> 于2026年1月14日周三 16:51写道：
>>>>
>>>> On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
>>>>> Add devicetree binding for Khadas VIM1S board based on
>>>>> Amlogic S4 S905Y4 SoC.
>>>>>
>>>>> Signed-off-by: Nick Xie <nick@khadas.com>
>>>>
>>>> You still have the same From/SoB mismatch.
>>>
>>> OK,  I will fix it in next version.
>>>
>>>>
>>>>> ---
>>>>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
>>>>>   1 file changed, 6 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>>> index 08d9963fe9259..55663e0f7f915 100644
>>>>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>>>> @@ -247,6 +247,12 @@ properties:
>>>>>                 - amlogic,aq222
>>>>>             - const: amlogic,s4
>>
>> Look here
>>
>>>>>
>>>>> +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
>>>>> +        items:
>>>>> +          - enum:
>>>>
>>>> Yopu already have exactly such enum with such description, so your
>>>> compatible goes there. Look - it is called "Boards" - plural.
>>>
>>> The exist board aq222 is based on SoC S905X2, but the new board vim1s
>>> is baed on S905Y4,
>>> they are different SoC, so we need to put S905Y4 under S805X2 ?
>>
>> What is the point of having two separate lists with enums ending the
>> same SoC compatible?
> 
> Actually S805X2 and S905Y4 are different SoC. So maybe like this ?
> 
> S805X2:
> - description: Boards with the Amlogic Meson S4 S805X2 SoC
>    items:
>      - enum:
>          - amlogic,aq222
>      - const: amlogic,s805x2
>      - const: amlogic,s4
> 
> S905Y4:
> - description: Boards with the Amlogic Meson S4 S905Y4 SoC
>    items:
>      - enum:
>          - khadas,vim1s
>      - const: amlogic,s905y4
>      - const: amlogic,s4

It's ok for me, but you'll need to update the aq222 DT aswell.

> 
> Same as Amlogic A311D & S922X
> 
> S922X:
> - const: amlogic,s922x
> - const: amlogic,g12b
> 
> A311D:
> - const: amlogic,a311d
> - const: amlogic,g12b
> 
>>
>>>
>>>>
>>>>> +              - khadas,vim1s
>>>>> +          - const: amlogic,s4
>>
>> And here.
>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>
>>
>> Best regards,
>> Krzysztof


