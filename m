Return-Path: <devicetree+bounces-254953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FE2D1DE65
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC8F730453AB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D5AB389E1E;
	Wed, 14 Jan 2026 10:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mg+eXzpK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F01438A28A
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385635; cv=none; b=l12pHLQ/kFfusuOBT2VeTiGk/0/Nd22j1VRZf2OIwYnL0FQzGer7Z6WVZHfyOxPiYZS92iINvj3xL57HTBS302y8MQs7O458DSCUr9fb2adX0jLqrSC0NWzA+vfi5EltrcSGXmtzulYu5Vt2sgkHFXEDsHhdO03n42RFAkIKep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385635; c=relaxed/simple;
	bh=gS6p3VPb8TgL1b84C2QzwQkRIIgF69omjemgWagmEfU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oIPEWxnT6JsjjOB/Gu7PDIP/4O6Oc2cWu6vsVk+OJHfjWCao3OU6eX+swYa0GDO2IbmKaYUM8ozRog104bIc3+5hfq6h5ztgvDThyk9ObYzIlOdqRTDZOR9dUVatNdfsuGddVxvw1cW6u8Cbasldbk719dCjaW2JaoZK23qr3VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mg+eXzpK; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-430f57cd471so4308004f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768385624; x=1768990424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3rWsPZP9GypSrCbApSvZEqf+XkVVNq8YSJJcRm2PJVg=;
        b=mg+eXzpKUFJRkrpZS3hJfdSdRR9RUhO36E+mPd4+CtcQknqTTU6ZyigI8M4vtBflVR
         uka32vu1Kh69Bk557KAZFitDFofeFkOisnLaYx+Wwjd7ZnKIBK9eWfbZ1GN5kAQap04f
         zsVxALPO+/uR9SYO6sRx5X4EpNewwjKzG+Yz/Nmxq9jIvJXCxAoHacsx64ms7LiNl2Uy
         55HiBDgs35MHxLI16PumeZNp6B81Yc8aZrUBXZjcR6x+F53bsoKicxtQKjrtXVx7rJmz
         CQ4SwqKXy0VLiFK4IX6zhhYEEA5KK+ciFRybQu+MzjcQmlwpBjFIjc9dtf3MtBOHApd2
         6IOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385624; x=1768990424;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3rWsPZP9GypSrCbApSvZEqf+XkVVNq8YSJJcRm2PJVg=;
        b=MXJZkJhDuGrmJrKHCuTBu1O/uwvdzpM8mgLSyIlXPh/aYPp0v3fXlG1moAnal/3Bwd
         Zml/hWeaURIaXap1ke5GIlmb1iRDUJWMFPA6miJDDUr7M27iui7E5mewiCxFkgSVlG9W
         6yHFqelPcJNileDtDMVFWALpfO+nGV52EM08yOuq6Oi6jveet4u+eBkAH3MOmED/wQE6
         oiFSCS2Bcp8glWoxnb43PkaO2slHVPyh9sjbLfMmIN6/CI1uJD3zJAIxKR6w8fbd3k2j
         eVVtsUpajU5S3/4jpM2YNQFhPoi1ViVThsg6azVMWZXHG/14h4C5/yZ9O9lLtVwR1N0z
         Qaaw==
X-Forwarded-Encrypted: i=1; AJvYcCXEZ3e7SjVWiQVyIPULvCOcK2HYuML5jR514UReQ3Fl3KGbqetjGWZoftDXzz8WVtXXdVHmswKa5R+4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk8fAfWkqpTAJ4fag0r7F3wIIg5blCoS7MxHxCnXqo7L0sbbX4
	QsNdAKhPdIrRLgGt7JzKy3fGt7LI6JZJhq5aXvSdjFvWonekGKoyspw6odC5OZMjWYc=
X-Gm-Gg: AY/fxX6JtIUV30bXmOtx5Z5fJskO9fTW+gh2v6D8WtUz6x6BooaEs4jfuYC/1+I9oxw
	DrXCJt1F2I78JdLQJUg2naKHhOrJf3YwBMykjhurUynQLhglxxlwn7+adMN0zv7y7jsLWZqy3LO
	LWiKfKfisKnzdYStfaCIZivV6kFlG6OfwGeJE+fhIO22U0/Uoksp2dqK1qdjBDNK4EH+d+pXVkn
	3QqETKdfqor3EF1GA/e0L+Gw2qdtgFY3Ty+EVCAhwLcbeixjli5bvOANvtOPqAFoVELEQ8yfqMB
	9+AjE0bCkwC/azNbUKC7N7U22yu7QMvOq34OaI0r9hbWekOVO/Vcwq3qqB25VwWJ95DPNgwLRu+
	bbPJNZ3FiFQMekaF6+Ab91aQY36px7seNQyH6vkghH68H1N8FXFj6UTkKX2jP2Nsi+08pioR1QL
	NW4y6/RT60Xrvemz+7LU500Ag88XXT8jfDDLjxere7YkhRJa/0857NsF0qJEjPDC0=
X-Received: by 2002:a5d:64e5:0:b0:432:c37c:d840 with SMTP id ffacd0b85a97d-4342c4fc9afmr2140894f8f.20.1768385623587;
        Wed, 14 Jan 2026 02:13:43 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:b357:7e03:65d5:1450? ([2a01:e0a:3d9:2080:b357:7e03:65d5:1450])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e199bsm48795733f8f.16.2026.01.14.02.13.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:13:42 -0800 (PST)
Message-ID: <f1d9d4c4-8fe0-4593-8c8f-1fa30cc6ee49@linaro.org>
Date: Wed, 14 Jan 2026 11:13:41 +0100
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
In-Reply-To: <CAP4nuTXeC1-6ktwLpDt_1ZRHxPSiNAoDKTxLzqEYJUfcnVogcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/14/26 11:07, Nick Xie wrote:
> Krzysztof Kozlowski <krzk@kernel.org> 于2026年1月14日周三 16:51写道：
>>
>> On Wed, Jan 14, 2026 at 02:25:48PM +0800, Nick Xie wrote:
>>> Add devicetree binding for Khadas VIM1S board based on
>>> Amlogic S4 S905Y4 SoC.
>>>
>>> Signed-off-by: Nick Xie <nick@khadas.com>
>>
>> You still have the same From/SoB mismatch.
> 
> OK,  I will fix it in next version.
> 
>>
>>> ---
>>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>> index 08d9963fe9259..55663e0f7f915 100644
>>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>>> @@ -247,6 +247,12 @@ properties:
>>>                 - amlogic,aq222
>>>             - const: amlogic,s4
>>>
>>> +      - description: Boards with the Amlogic Meson S4 S905Y4 SoC
>>> +        items:
>>> +          - enum:
>>
>> Yopu already have exactly such enum with such description, so your
>> compatible goes there. Look - it is called "Boards" - plural.
> 
> The exist board aq222 is based on SoC S905X2, but the new board vim1s
> is baed on S905Y4,
> they are different SoC, so we need to put S905Y4 under S805X2 ?

It depends, if the S805X2 and the S905Y4 are not compatible (different dies)
and not the same die in 2 different but compatible packages, then a secondary
compatible should be added like we did for amlogic,g12b or amlogic,meson-gxl.

Neil

> 
>>
>>> +              - khadas,vim1s
>>> +          - const: amlogic,s4
>>
>> Best regards,
>> Krzysztof
>>


