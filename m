Return-Path: <devicetree+bounces-14541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E72A17E55E1
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 13:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93EC82811E4
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C7216419;
	Wed,  8 Nov 2023 12:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z0WjpZwe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441EE46AD
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 12:01:44 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610EA1BE3
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 04:01:43 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso1065450866b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 04:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699444902; x=1700049702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=48tAYTUb1Y98BkiU79aSs4cIPFJoM7+vxNcoy9sk0FQ=;
        b=z0WjpZweo0MoBKrqk4iqlXYd9ckBa9AWsDVClxGgO5Lokr0kcHPdleaNxUq3YsaXdw
         GK3evDLWgIarQmK5LweOt13EVaWuYhlVKkWDakbk+dnII7zBFEXFFmstN5xpPr50CnOO
         Iq5btS9MJ9tocfWbHAc0C/neqo7RkoBp0tAEtXHHN7aR5NbX3TTpTXi889rP/tZ0Hd1c
         g9nAopp5JLHnf5kr4GdGSoxJecbAYfoBH+Jt7zxEXn8IqfdhxwKIkFUtoQYOjwLwo3dO
         zRd4y6np0tgVOj/NnvhWkv65uSEBmLh0vdh2L4GPJmEC2XgAgfFyxsWxhJg89oHwVu5U
         0jjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699444902; x=1700049702;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=48tAYTUb1Y98BkiU79aSs4cIPFJoM7+vxNcoy9sk0FQ=;
        b=Flrs2n61H9A83C+p3H05K+5NSRooPWdsJFiDaT0HL/LPy8zQxrulLpOsGjvZzPZUaS
         QobD7Y2weVZak6q0V7pGR2/UpN4SKZDU54x3ez921ZXKSBaT1F4ifWCzhquWeibb8xF8
         ZQbZL8hbKdb4aFRAE1AVlD4Q6RV9aWafYKZuIdmU1hmel8067ojRAOuKNJYJh0foVcFt
         7vv47j+OK1pz4JK7DzGN0fRqrY8gyC2gxcyl5PDjcRUXeiXJXJ3vvfbr0rIkObJyvIA8
         x8O+3iq8wI3tjJyP1fl2gWWKZX6h6k6EQmVvoho2L18Cy13pY7JUosfZGmRUJJ5B3ZIp
         MihA==
X-Gm-Message-State: AOJu0YxW8DLPYgp6agn961YMvU87mhIN326toSo9erslQ2XKEEpndVy8
	aX3VJLfZGjvp5YWXKGbDSrQMaw==
X-Google-Smtp-Source: AGHT+IGyNyfFKRMQzJ5V7ECILcLwCB9wBjxnFUCtR07GFCa7zvRGM3sL0dsuCDdnKlheZR1haECR8Q==
X-Received: by 2002:a17:907:9491:b0:9e2:af47:54c9 with SMTP id dm17-20020a170907949100b009e2af4754c9mr1260430ejc.19.1699444901794;
        Wed, 08 Nov 2023 04:01:41 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id l18-20020a1709066b9200b009dde9978918sm944253ejr.50.2023.11.08.04.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 04:01:41 -0800 (PST)
Message-ID: <77e1d308-6ac3-4200-b72a-6d5717869b06@linaro.org>
Date: Wed, 8 Nov 2023 13:01:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: trivial-devices: add asair,ags02ma
Content-Language: en-US
To: Anshul Dalal <anshulusr@gmail.com>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Shuah Khan
 <skhan@linuxfoundation.org>, linux-kernel-mentees@lists.linuxfoundation.org
References: <20231107173100.62715-1-anshulusr@gmail.com>
 <20231107173100.62715-2-anshulusr@gmail.com>
 <1d5d1357-0b53-4639-add9-2b3f38aae744@linaro.org>
 <90cacd34-4812-4792-9bf0-362200431452@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <90cacd34-4812-4792-9bf0-362200431452@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/11/2023 12:54, Anshul Dalal wrote:
> 
> Hello Krzysztof,
> 
> On 11/7/23 23:17, Krzysztof Kozlowski wrote:
>> On 07/11/2023 18:30, Anshul Dalal wrote:
>>> Add bindings for Asair AGS02MA TVOC sensor to trivial devices.
>>>
>>> The sensor communicates over i2c with the default address 0x1a.
>>> TVOC values can be read in the units of ppb and ug/m^3 at register 0x00.
>>>
>>> Datasheet:
>>>   https://asairsensors.com/wp-content/uploads/2021/09/AGS02MA.pdf
>>> Product-Page:
>>>   http://www.aosong.com/m/en/products-33.html
>>>
>>> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
>>> ---
>>>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
>>> index cd58179ae337..9cd67b758a88 100644
>>> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
>>> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
>>> @@ -47,6 +47,8 @@ properties:
>>>            - adi,lt7182s
>>>              # AMS iAQ-Core VOC Sensor
>>>            - ams,iaq-core
>>> +            # TVOC (Total Volatile Organic Compounds) i2c sensor
>>> +          - asair,ags02ma
>>
>> I think you miss VDD supply.
> 
> I am sorry but I'm not sure what you meant. Are you referring to the
> addition of some information in the commit description?

I meant that your device might not be trivial. Your device takes VDD
supply, which is now not described in the bindings. Do you want to say
that VDD supply in all possible designs is hard-wired to
non-controllable regulator supply?

Best regards,
Krzysztof


