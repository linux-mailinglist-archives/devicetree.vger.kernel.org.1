Return-Path: <devicetree+bounces-3153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B60087AD7F0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5B2B0281620
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67561B27C;
	Mon, 25 Sep 2023 12:24:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E451429D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:24:38 +0000 (UTC)
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44E5CCE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:24:37 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4053db20d03so49937095e9.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695644676; x=1696249476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8XkA7wmYwzROmbQvGAT6OVw+rLzwIP7gQWYQe+fm+/E=;
        b=YkSzfT1GFnW6krgx4ig7mexAPzVZ2rHM2XfEz7vfakxU4vUAEOjwWryrqCflVyx58p
         17rH2fJqkaGPf3U6KOwtCEHLILmGpj+t5q4jjw8Mx4GI2gubHs+nSsmAabj3jSGn0iSF
         Sgse2nq6AFDtjndV31AeS4fFoUDHnTQIDTnicWcoKQdTb1aE7cfAKKNQf1MuSzsTLE+0
         ybSnuABzpxvpKAmox1vSAN1z7sJvvFTvS/Tm5rMsIaoCOAHFFbPFiWRA5nEq6rAVVZiH
         K4WZW4HuV7tZiZCT+jrpxwUnA6jV4v1Bw1RjwNAyaoWhswesxFJc1wY2XICsTBmMnhiy
         dKyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695644676; x=1696249476;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8XkA7wmYwzROmbQvGAT6OVw+rLzwIP7gQWYQe+fm+/E=;
        b=OyO4WMeIrcqiPGagmYL5ybrrXyC9n5bECFqig8gyQ5G0+AoljbGKeF2rGvWDw5AqA9
         O6AR50l9f5NGdLuISbjmRdrUPLUYNYJ2J41FUM6VrzDnlJqtmiyPm0RNKYZIe62G2wQV
         /pzxdQMeSe/gdYhBHg4+F1eKVg0r4rKQ7iha8qSG8uVKV2b0OCOqRdzDqGCYSRV/XUwg
         TUa5DHIbEdVpAqObjNEo+GIApm6emit6RdWuJ47LTuTy61BITz2gZ8SBimt4P/KBES7n
         /Uvsd8BvAAmPSqJ+gb+Ra0+oqlumnsUY+qg3W1Uo12WAcoKSSKZzmjlAilu/EuEMQxQn
         Svmg==
X-Gm-Message-State: AOJu0Yzoz/6y8jKBtGi5feZM3pw5398jZd+4I1abGvOFp/uNks9Nsk6b
	n4VoCctaYiI81d2i4T3+VWg+R3Db9IBWrYnEw+c=
X-Google-Smtp-Source: AGHT+IFQHIUFGyenhhmAYvcS/SqbRZVO3xSLYKnJK0M3JUXjpEFgB0s+PYFQSH0g0qLZLMbvGJNbwQ==
X-Received: by 2002:a7b:c3d0:0:b0:401:4417:a82d with SMTP id t16-20020a7bc3d0000000b004014417a82dmr5448160wmj.38.1695644675660;
        Mon, 25 Sep 2023 05:24:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id p1-20020a1c7401000000b00401d6c0505csm12070769wmc.47.2023.09.25.05.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 05:24:35 -0700 (PDT)
Message-ID: <3b81a9a7-69a3-4fd6-875f-7a5170c5c872@linaro.org>
Date: Mon, 25 Sep 2023 14:24:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: imu: mpu6050: Add level shifter
Content-Language: en-US
To: Andreas Kemnade <andreas@kemnade.info>,
 Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 bcousson@baylibre.com, tony@atomide.com, jean-baptiste.maneyrol@tdk.com,
 chenhuiz@axis.com, andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20230924222559.2038721-1-andreas@kemnade.info>
 <20230924222559.2038721-2-andreas@kemnade.info>
 <6db5b758-2ae6-46fb-a699-d73a2b98b4c2@linaro.org>
 <20230925112852.00007d34@Huawei.com> <20230925130225.55fe6fd4@aktux>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20230925130225.55fe6fd4@aktux>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25/09/2023 13:02, Andreas Kemnade wrote:
> On Mon, 25 Sep 2023 11:28:52 +0100
> Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:
> 
>> On Mon, 25 Sep 2023 08:54:08 +0200
>> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>>
>>> On 25/09/2023 00:25, Andreas Kemnade wrote:  
>>>> Found in ancient platform data struct:
>>>> level_shifter: 0: VLogic, 1: VDD
>>>>
>>>> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
>>>> ---
>>>>  .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml         | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>>>> index 1db6952ddca5e..6aae2272fa15c 100644
>>>> --- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>>>> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>>>> @@ -48,6 +48,8 @@ properties:
>>>>  
>>>>    mount-matrix: true
>>>>  
>>>> +  invensense,level-shifter: true    
>>>
>>> It does not look like you tested the bindings, at least after quick
>>> look. Please run `make dt_binding_check` (see
>>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>>> Maybe you need to update your dtschema and yamllint.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>>   
>>
>> Also this one isn't obvious - give it a description in the binding doc.
>>
>> I'm not sure of the arguement for calling it level shift in general.
>>
> I have no more descrption than the old source (see the citation from there)
> https://invensense.tdk.com/wp-content/uploads/2015/02/MPU-9150-Register-Map.pdf

I could not find any reference to level shift in this manual. To which
page and part do you refer?

> 
> does not list it. But that bit is needed to get things to work what also does the
> vendor kernel do.
> 
> What could be a better descrption?

I don't know, but something reasonable to you should be put there.

Best regards,
Krzysztof


