Return-Path: <devicetree+bounces-18178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C080C7F5913
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 08:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 608BAB209D7
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 07:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9499615AF6;
	Thu, 23 Nov 2023 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cVh74tts"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B7B5171D
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 23:20:29 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-409299277bbso3452295e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 23:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700724027; x=1701328827; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z4T8F7vjEdeMqW7ASaJxIgH7EDAw211WQ1EYU717TyE=;
        b=cVh74ttsn1VRCM02Ukp5p0Lbge552O1uLyzwLNtBf9g+nOHR6GErWiqfGMDMinLHQC
         F+TOrhLok+9ZC13xLq2uFpy0Nbeb6y94BuEtZD7YAYayht4dixhCfZNlOIx6+D5eFiv/
         E8hwOKeM4RlvIv80XKVQTkgLSdOm+rCeK4gzbxP5i6sUHlv/sFpNVNVzBH7gNjA4/NLu
         SJViid5wWMwxWEV/CC4poIIRc+MjMXrjT0W0z3pZPC9rMsDPOY/XQvysCguxveGmSc+K
         nnxkwxTl3aXrMP4MLukND5xud4nyRZpwzgYuoIa16jb8pXZh7j92TVjiwEuDI+4big9z
         U/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700724027; x=1701328827;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z4T8F7vjEdeMqW7ASaJxIgH7EDAw211WQ1EYU717TyE=;
        b=pZ5dUdpfQGdfwH0tuXT3ct4Yns0vWmRhAZXFmgDB4rza56yetLKYSe+l2mh8YlrXH+
         4/Bmr45KhPPz8dnOvm4F2Z9l7EAIuef1zU405lKj57o+iwBCQqsmIO2z2XNW5WAKt5AJ
         5+UBjusKjaGA0oIKMisGL16W9lcwlkLRdXV7ysTRT8mbzzutV3wSPofX+ORZPVup57Ho
         /TxV9Jvt1Ie5c6ezcHnQHTfM2GSA1m89AZ/glgGjYAiS+ptI3TLC9lBtJcxz86Qpq5X2
         fdRk/NljxhTvXLW8g43F8lSjnJsk2wrbuXSv7B/JkoVCu6mRJqJ2J2JCPL7mtijpBNpd
         3QQA==
X-Gm-Message-State: AOJu0Yx8W7tWaRNKA/d0gHBsqutWEfrsHQAPoWDRfHvHcvrpE5gqocqb
	3X/bAT/ze1llWDA8l3fcPMCZ7w==
X-Google-Smtp-Source: AGHT+IH4NrnmA8Wx5jaPwGNF1y+QpyiGKoDY7aRrl9GEdkWplXqFNvJW/YwFFfCGgPw7D8U8q83KVA==
X-Received: by 2002:a05:600c:5102:b0:405:3455:e1a3 with SMTP id o2-20020a05600c510200b004053455e1a3mr3400452wms.17.1700724027479;
        Wed, 22 Nov 2023 23:20:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id az15-20020a05600c600f00b0040b2b9bf321sm1697573wmb.9.2023.11.22.23.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 23:20:27 -0800 (PST)
Message-ID: <676c55c7-1477-4c59-a1fe-2b50e37018a0@linaro.org>
Date: Thu, 23 Nov 2023 08:20:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: frequency: add admfm2000
Content-Language: en-US
To: "Paller, Kim Seer" <KimSeer.Paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kernel test robot <lkp@intel.com>
References: <20231122105831.182570-1-kimseer.paller@analog.com>
 <f66a3dc3-a0a5-457b-a68a-efd6577aa210@linaro.org>
 <PH0PR03MB7141C58C008920173B3AE998F9B9A@PH0PR03MB7141.namprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <PH0PR03MB7141C58C008920173B3AE998F9B9A@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/11/2023 07:13, Paller, Kim Seer wrote:
>>> ---
>>> V2 -> V3: Adjusted indentation to resolve wrong indentation warning.
>>>           Changed node name to converter. Updated the descriptions to clarify
>>>           the properties.
>>
>>
>>> +title: ADMFM2000 Dual Microwave Down Converter
>>> +
>>> +maintainers:
>>> +  - Kim Seer Paller <kimseer.paller@analog.com>
>>> +
>>> +description:
>>> +  Dual microwave down converter module with input RF and LO frequency
>> ranges
>>> +  from 0.5 to 32 GHz and an output IF frequency range from 0.1 to 8 GHz.
>>> +  It consists of a LNA, mixer, IF filter, DSA, and IF amplifier for each down
>>> +  conversion path.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - adi,admfm2000
>>> +
>>> +  switch1-gpios:
>>> +    items:
>>> +      - description:
>>> +          Setting B15 GPIO to high and B16 GPIO to low will result in channel 1
>>> +          being in Direct IF mode.
>>> +      - description:
>>> +          Setting B15 GPIO to low and B16 GPIO to high will result in channel 1
>>> +          being in Mixer mode.
>>
>> This still does not tell which one is B15 and which is B16. I am asking
>> this for third time.
>>
>> items:
>>   - description: B15 GPIO, when high (and B16 low) channel 1 is in
>> Direct IF mode
> 
> I understand now, thank you. I was also wondering if this applies to the 
> attenuation-gpios, or if I should keep it as is?

Yes, something like this applies to all your properties with multiple
entries. You need to define the order.

Best regards,
Krzysztof


