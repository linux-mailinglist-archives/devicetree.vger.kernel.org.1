Return-Path: <devicetree+bounces-59765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BE8A6FB5
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 17:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 977981F22A1E
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1013F130E40;
	Tue, 16 Apr 2024 15:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RD8mcjcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9B1304A2
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713281036; cv=none; b=r078WvWII3BYcq93wUmAcItPswfB5ZFfHqY5QY3pKj+eMBs7bsrPYeUfcyI2GQdVBHog9MYKMEl+VBNTlc+pz2+rX4gHDEmLbdKyoBlJsJbkSoGOeUtVVUOvmlzUVmhTM7gsp2Mz7HboJpoA0eENOt1PzMO1fkAcZ1cy+s0aZRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713281036; c=relaxed/simple;
	bh=Pr5+GjYuYOFAl78wT/LGhzYKkJLFb3gm/JoyNBitLqk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BwJXO6WIa4rX7ULLCR+4mK179fA9jWENpTNB8zSmoSgOcfedLTfLtikKo10rJKiuUab9coX/tZDFjxEM8LhZvbPizP5aKY/MkuxkDQPiLfClqvrJWeOk3ic3YqYWyh/Yjic2BXn6GxwIeFi1pY7KITe2BaJfN0WBu+o5U9iFff8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RD8mcjcc; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-346407b8c9aso1839106f8f.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 08:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713281032; x=1713885832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ftHdCf+Oy0iSSs5fiaJVa2OnViNL7pkEe11MNtYDb00=;
        b=RD8mcjcckUMX5UWLrH0e/WAvJBHqELiRBzd8YzpXIOJr6mTYYv4TKU9LxBww27WaNY
         zNqWDvNHfVZpFbuoL7W/g2GQAhXYol65uvud2TpR3+reX91ik5nCxuDWMb011DI43rGY
         2lwO+XTc8iQrls8h8uhIl2wpswNB5MkXVciXqBTq8ccf9UeQlTkyBXdQmagssJME+cAW
         5Kgvjav5KxevrEdSiJvTeXWfhvtGx8flMTdZY7dBni6rHRe5lu132o2oZEdr2wTqCRhX
         woKJg/7v83DPSfEGN7ehjXsbXbh8p9YulEEsh7fHOSHZ+oHyzFiiQt3hKqj2dsUzpOq/
         DgWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713281032; x=1713885832;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ftHdCf+Oy0iSSs5fiaJVa2OnViNL7pkEe11MNtYDb00=;
        b=X1hL7mT+mSmuz4CrchTZTODwgbhfezDDRtyvPUhnM5QRVJRDz2BVMrDA8kCUb3Ache
         k7/mW3tgKNcOAkOYuwfEXNTgMFRVyXt1oCCUNp8AlZp+YUivqrZpi3CM6czJ3EFQeiYo
         tBU1IvjCOCv3xkhCOdwtAAklUTAkTZ0nR4gYKOw3kJnBsR9R692EHoR5MmlIchQnk2Aj
         Km1J3WNGlad1Z87hXVeDoi8gcjZNyWXrbjt2orjxoSSVtigLLyg/SVLV8O38sdhniDe3
         SwWHEXTHckRw8Jgg10ONagIRv9I1ddiY93hto5Q0lmAyPDe0/+2080KNNYjb+MVLoCQq
         nVxA==
X-Forwarded-Encrypted: i=1; AJvYcCXNQ4gE1zlgyW605XPhK8UgANlPBMGen/2v0DhzECLUOtDU4R4x5Jv9kpE+Lv0L32rJwjcIWGImdVlwgk0fATdB7nQJ51UlKqVpDQ==
X-Gm-Message-State: AOJu0YyU4OILHTe2sv2pRFbOER/LLfCI4tf9LQkDom7Yn1/YGVDEg6p8
	I59no1Q7NfeD8zf2XF23Ur8GyvTkHb3B15Gnpq1V6kn289VaaH8/yoUQNvRXesQ=
X-Google-Smtp-Source: AGHT+IFao7Xx/Iig7k1Su+KI3NkDAc6z/M7OBmPS/atvQDSy7dIv8/22UyweiFrQmQy3+uJBLdIOwQ==
X-Received: by 2002:adf:f308:0:b0:346:65dd:55e6 with SMTP id i8-20020adff308000000b0034665dd55e6mr8879060wro.1.1713281032278;
        Tue, 16 Apr 2024 08:23:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:8df:1203:de22:f515? ([2a01:e0a:999:a3a0:8df:1203:de22:f515])
        by smtp.gmail.com with ESMTPSA id gb32-20020a05600045a000b003462b54bc8asm15162474wrb.109.2024.04.16.08.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 08:23:51 -0700 (PDT)
Message-ID: <1eab3b4f-0d46-4df5-b574-6a5f796d3bcf@rivosinc.com>
Date: Tue, 16 Apr 2024 17:23:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] riscv: add ISA extension parsing for Zcmop
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Deepak Gupta <debug@rivosinc.com>, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
 Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <20240410091106.749233-8-cleger@rivosinc.com>
 <ZhcFeVYUQJmBAKuv@debug.ba.rivosinc.com>
 <20240410-jawless-cavalry-a3eaf9c562a4@spud>
 <20240410-judgingly-appease-5df493852b70@spud>
 <ZhcTiakvfbjb2hon@debug.ba.rivosinc.com>
 <1287e6e9-cb8e-4a78-9195-ce29f1c4bace@rivosinc.com>
 <20240411-superglue-errant-b32e5118695f@wendy>
 <c86f9fa8-e273-4509-83fa-f21d3265d5c9@rivosinc.com>
 <20240411-backwater-opal-00c9aed2231e@wendy>
 <5eda3278-24bc-4c17-a741-523ad5ff79f7@rivosinc.com>
 <20240416-gave-apron-3234098ce416@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240416-gave-apron-3234098ce416@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 16/04/2024 16:54, Conor Dooley wrote:
> On Mon, Apr 15, 2024 at 11:10:24AM +0200, Clément Léger wrote:
>>
>>
>> On 11/04/2024 13:53, Conor Dooley wrote:
>>> On Thu, Apr 11, 2024 at 11:08:21AM +0200, Clément Léger wrote:
>>>>>> If we consider to have potentially broken isa string (ie extensions
>>>>>> dependencies not correctly handled), then we'll need some way to
>>>>>> validate this within the kernel.
>>>>>
>>>>> No, the DT passed to the kernel should be correct and we by and large we
>>>>> should not have to do validation of it. What I meant above was writing
>>>>> the binding so that something invalid will not pass dtbs_check.
>>>>
>>>> Acked, I was mainly answering Deepak question about dependencies wrt to
>>>> using __RISCV_ISA_EXT_SUPERSET() which does not seems to be relevant
>>>> since we expect a correct isa string to be passed.
>>>
>>> Ahh, okay.
>>>
>>>> But as you stated, DT
>>>> validation clearly make sense. I think a lot of extensions strings would
>>>> benefit such support (All the Zv* depends on V, etc).
>>>
>>> I think it is actually as simple something like this, which makes it
>>> invalid to have "d" without "f":
>>>
>>> | diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> | index 468c646247aa..594828700cbe 100644
>>> | --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> | +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> | @@ -484,5 +484,20 @@ properties:
>>> |              Registers in the AX45MP datasheet.
>>> |              https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
>>> |  
>>> | +allOf:
>>> | +  - if:
>>> | +      properties:
>>> | +        riscv,isa-extensions:
>>> | +          contains:
>>> | +            const: "d"
>>> | +          not:
>>> | +            contains:
>>> | +              const: "f"
>>> | +    then:
>>> | +      properties:
>>> | +        riscv,isa-extensions:
>>> | +          false
>>> | +
>>> | +
>>> |  additionalProperties: true
>>> |  ...
>>>
>>> If you do have d without f, the checker will say:
>>> cpu@2: riscv,isa-extensions: False schema does not allow ['i', 'm', 'a', 'd', 'c']
>>>
>>> At least that's readable, even though not clear about what to do. I wish
>>
>> That looks really readable indeed but the messages that result from
>> errors are not so informative.
>>
>> It tried playing with various constructs and found this one to yield a
>> comprehensive message:
>>
>> +allOf:
>> +  - if:
>> +      properties:
>> +        riscv,isa-extensions:
>> +          contains:
>> +            const: zcf
>> +          not:
>> +            contains:
>> +              const: zca
>> +    then:
>> +      properties:
>> +        riscv,isa-extensions:
>> +          items:
>> +            anyOf:
>> +              - const: zca
>>
>> arch/riscv/boot/dts/allwinner/sun20i-d1-dongshan-nezha-stu.dtb: cpu@0:
>> riscv,isa-extensions:10: 'anyOf' conditional failed, one must be fixed:
>>         'zca' was expected
>>         from schema $id: http://devicetree.org/schemas/riscv/extensions.yaml
>>
>> Even though dt-bindings-check passed, not sure if this is totally a
>> valid construct though...
> 
> I asked Rob about this yesterday, he suggested adding:
> riscv,isa-extensions:
>   if:
>     contains:
>       const: zcf
>   then:
>     contains:
>       const: zca

That is way more readable and concise !

> to the existing property, not in an allOf. I think that is by far the
> most readable version in terms of what goes into the binding. The output
> would look like:
> cpu@0: riscv,isa-extensions: ['i', 'm', 'a', 'd', 'c'] does not contain items matching the given schema
> (for d requiring f cos I am lazy)

Than fine by me. The error is at least a bit more understandable than
the one with the false schema ;)

> 
> Also, his comment about your one that gives the nice message was that it
> would wrong as the anyOf was pointless and it says all items must be
> "zca".

That's what I understood also.

> I didn't try it, but I have a feeling your nice output will be
> rather less nice if several different deps are unmet - but hey, probably
> will still be better than having an undocumented extension!
> 

If you are ok with that, let's go with Rob suggestion. I'll resubmit a
V2 with validation for these extensions and probably a followup for the
other ones lacking dependency checking.

Thanks,

Clément

