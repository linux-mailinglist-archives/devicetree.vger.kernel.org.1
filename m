Return-Path: <devicetree+bounces-28744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C5181F54B
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 08:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECEE8281EB4
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 07:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9B73C1D;
	Thu, 28 Dec 2023 07:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fd2+Sdve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78BC3C0B
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 07:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40d604b4b30so4893915e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 23:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703747377; x=1704352177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5CoDrsJT4WQxjKaOLj/1Lwxi6E5LUOR3r0lk7wg4FY=;
        b=Fd2+SdveVSxsqh/SvTb1g3SSeltmA23rfHYQ0Zx2XXAWBitBkawX/YMvMxHlPjll6f
         +z7LUPVsZihmQFveW5Mp3TLmhPyi171ZLMb7gqHOmm8wIeWew5YEmVVls1c9XfRpnxgg
         ki+DEWv+BtCqCpoJaPw4ejNI61eESbz0EhF8js96LwJ9m3VeJYiH/7vRRfEbeFxgSsjO
         X1EAh2xBN3vA7PxWcPLV7zamzwvMLW1MacJHw45QDP+Qw0hVNUda+cocqf5dbL77f2QM
         WY7zg7HtTfMIY7J85fXoy/7u7N9V4/glDW/YNKSRyC0R9EEDd5IBsShMakfdf0wJ7qSs
         /OVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703747377; x=1704352177;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B5CoDrsJT4WQxjKaOLj/1Lwxi6E5LUOR3r0lk7wg4FY=;
        b=vZElJ+me8MGCRsm6YWbjFqhAYN9muk6tBHo/fcLIveMZ+XLhHaC7lQLYxllLGcKWss
         Xo1tCUI2lSeXNdyAcjXhNMT7Q6v0COHBH4tjW8+znReASo1ETMyxMiLrBC3DlTXqnOXP
         dKUoAP03wmYNFQWVOhE1VpgSlyTLCkKtjeAeKfSiDFMIc9433ErkwBSwOzdpVfVIX3dY
         rK5C4vBJEfkNZssmhamUcXXib0eVNSCrI0zHWkLpuMmvpxCvQzWvnD/hj96vfu/8JkTi
         +25T5puko0hwcqO+OKwDBSA1cijBmFAQVig9V8NT9ycq4OBAVABNMDUdK1AR0AbysABu
         HLfg==
X-Gm-Message-State: AOJu0Yx6/xMWmfpReui//1Xo4MemuFBZLQdmhnKjtmNofTnM7qlXASGj
	ADSxg/dDf2LS87TQ0j7J5ebIwT90I1AORQ==
X-Google-Smtp-Source: AGHT+IHKDq0wnzlsL1DgFGFQyMRD+KKB24a73tPdpWIi5Y9GM3Q0dQgyXMbFTQq6Q5UNTvLqKVSuYw==
X-Received: by 2002:a05:600c:4705:b0:40b:5e4a:2348 with SMTP id v5-20020a05600c470500b0040b5e4a2348mr4811417wmo.74.1703747376998;
        Wed, 27 Dec 2023 23:09:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c459400b0040c3dcc36e6sm26334107wmo.47.2023.12.27.23.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Dec 2023 23:09:36 -0800 (PST)
Message-ID: <e1036e63-1914-4412-8c55-40ae206d56d0@linaro.org>
Date: Thu, 28 Dec 2023 08:09:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: rtq6056: add support for the
 whole RTQ6056 family
Content-Language: en-US
To: ChiYuan Huang <cy_huang@richtek.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1703562468-29052-1-git-send-email-cy_huang@richtek.com>
 <1703562468-29052-2-git-send-email-cy_huang@richtek.com>
 <9715ed9d-7edf-430c-808c-00e7748bc59a@linaro.org>
 <20231226111921.GA22684@linuxcarl2.richtek.com>
 <0f1f0991-9ad9-4216-afc8-8340eddb1ad9@linaro.org>
 <20231228031929.GA32046@linuxcarl2.richtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231228031929.GA32046@linuxcarl2.richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/12/2023 04:19, ChiYuan Huang wrote:
> On Tue, Dec 26, 2023 at 01:12:50PM +0100, Krzysztof Kozlowski wrote:
>> On 26/12/2023 12:19, ChiYuan Huang wrote:
>>> On Tue, Dec 26, 2023 at 10:18:47AM +0100, Krzysztof Kozlowski wrote:
>>>> On 26/12/2023 04:47, cy_huang@richtek.com wrote:
>>>>> From: ChiYuan Huang <cy_huang@richtek.com>
>>>>>
>>>>> Add compatible support for RTQ6053 and RTQ6059.
>>>>>
>>>>> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
>>>>> ---
>>>>>  .../devicetree/bindings/iio/adc/richtek,rtq6056.yaml         | 5 ++++-
>>>>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/iio/adc/richtek,rtq6056.yaml b/Documentation/devicetree/bindings/iio/adc/richtek,rtq6056.yaml
>>>>> index 88e008629ea8..d1e1f36d1972 100644
>>>>> --- a/Documentation/devicetree/bindings/iio/adc/richtek,rtq6056.yaml
>>>>> +++ b/Documentation/devicetree/bindings/iio/adc/richtek,rtq6056.yaml
>>>>> @@ -25,7 +25,10 @@ description: |
>>>>>  
>>>>>  properties:
>>>>>    compatible:
>>>>> -    const: richtek,rtq6056
>>>>> +    enum:
>>>>> +      - richtek,rtq6053
>>>>> +      - richtek,rtq6056
>>>>
>>>> Aren't these devices compatible? Your driver change says they are, so
>>>> express compatibility with list here (and oneOf).
>>>>
>>> Thanks, I try to take other binding as the reference. One more question.
>>> If rtq6053 is compatible with rtq6056, there's only chip package type difference.
>>> Do I need to seperate it into a dedicated enum element?
>>> Or just put it into one item and said this part number is compatible with rtq6056? 
>>
>> See example-schema. You need enum and items, both in oneOf:.
>>
> After reading the 'example-schema', I Still cannot understand what the special case items
> means.

What is "special case items"?

> 
> But in my case, is the below change correct?
> [Diff]
> properties:
>    compatible:
> -    enum:
> -      - richtek,rtq6053
> -      - richtek,rtq6056
> -      - richtek,rtq6059
> +    oneOf:
> +      - items:
> +          - enum:
> +              - richtek,rtq6053
> +              - richtek,rtq6056
> +              - richtek,rtq6059

This changes nothing, you still have just one item. The example-schema
has exactly that case, so why you are coding it differently?

Anyway, test your DTS with the fallback, you will see that above does
not work.

Best regards,
Krzysztof


