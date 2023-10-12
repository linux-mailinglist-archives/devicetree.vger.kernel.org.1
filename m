Return-Path: <devicetree+bounces-8180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 589C27C6FE7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:02:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12172282960
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460572E659;
	Thu, 12 Oct 2023 14:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOTOtDNr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474DD1A72D
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:02:01 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD99DD
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:01:58 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-991c786369cso162768366b.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697119317; x=1697724117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cPP7DG8qMePC5k28uoZnH7D59mwwvC+SmsnPEn4w4G4=;
        b=nOTOtDNrsicDedIzOi3RMMDTYXSZQ4kNLXo0ktAsTrckn6rRXKcCnvXKsFlTPrLji5
         eEMM/gV+HfuQ3ojP/1jslLQ0qKJUv3spyEuKyTPQAYBQe+hx+E5gRsIKbrJgcv2uh8Fd
         GEjgb9JM+S1Hyh2132L3uLNiREPJY8xrIn3CHTYDId0BArgxlOIl5PEAGO3xTWAvumiD
         98Eh8vBoWExCRSHalXz6CD97vEGs71dNo5WO4q+ka5kMPgj0yUw9Yloc3xR96O/EDOhE
         rTp3YUEGbRM1/QcaYnDpxqDOAetFV3S3UbINBacxvpoAHwfKmQsuS9GuIIP6M9eoOkAG
         lITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697119317; x=1697724117;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cPP7DG8qMePC5k28uoZnH7D59mwwvC+SmsnPEn4w4G4=;
        b=W1eFK888+xAWCienaxEbFaroRt109yybhLwH3ZuxTQq7deYLBxGSGrCOQRd+gPwMHN
         TKHfuhNuCNXhNMzMYKGr/0G5TYdMN1R1/W4FfXTRVYRxe/aDyLLB52kt0w3znH0gIpCh
         qHtDLEZOK6S3xBrE9Y/68UmiDNHFs/gLAClANujnVtBQvcSwhd3VuH8m19ci50RERHZv
         MoPUlETLfRtNhRTO0JCivuEzB0MinluumqSJLDCvxNvRlQmRVV4K1UgHtpnMvXzg39Zc
         YR/gJINvPneBJF9y69MqL5BFQrpDywtWAx16kIhi2CYbvyWSn4PUYfsstQ0cO+HJ8N5q
         6fjA==
X-Gm-Message-State: AOJu0YzHEWNrJAgHUNqfcyRV9j5hxZ06grXBn7+nL8D4sXW+Gvj/CHSZ
	Zcr+S7oR6AmhNF2WXcmLle29NA==
X-Google-Smtp-Source: AGHT+IFWGBlZuXgLsZuiWIsO0R0s/LGGDtapcSrmIXPgSHG7Cby0sJKLZ0Rta2/8QRzSZOUZxOYr0w==
X-Received: by 2002:a17:906:10d1:b0:9ad:ec25:825b with SMTP id v17-20020a17090610d100b009adec25825bmr18978795ejv.58.1697119316821;
        Thu, 12 Oct 2023 07:01:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id si5-20020a170906cec500b009b97d9ae329sm11119886ejb.198.2023.10.12.07.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 07:01:56 -0700 (PDT)
Message-ID: <5b971fd6-3dd1-4071-80b3-606f2fa869b5@linaro.org>
Date: Thu, 12 Oct 2023 16:01:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: max310x: convert to YAML
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
References: <20231011222105.2587175-1-hugo@hugovil.com>
 <f24bab3b-4a45-4843-a834-e3a57c7d8aed@linaro.org>
 <20231012095935.0bf2c58c424559492e7f5c25@hugovil.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231012095935.0bf2c58c424559492e7f5c25@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 12/10/2023 15:59, Hugo Villeneuve wrote:
>>> +  clock-frequency:
>>> +    description:
>>> +      When there is no clock provider visible to the platform, this
>>> +      is the source crystal frequency for the IC in Hz.
>>> +    minimum: 1000000
>>> +    maximum: 4000000
>>
>> This wasn't in original binding. Explain this in the commit msg.
> 
> I will add the corresponding explanation in V2. 
> 
> The 'clock-frequency' property is already supported
> by the driver but was not documented in the original txt binding.
> 
> This is related to the commit d4d6f03c4fb3: serial: max310x: Try to
> get crystal clock rate from property (Author: Andy Shevchenko):
>     
>     In some configurations, mainly ACPI-based, the clock frequency of
>     the device is supplied by very well established 'clock-frequency'
>     property. Hence, try to get it from the property at last if no other
>     providers are available.

This does not justify adding it to bindings. ACPI stuff stays with ACPI.
Drop it.

> 
> 
>>
>>> +
>>> +  clock-names:
>>> +    enum:
>>> +      - xtal # External crystal
>>> +      - osc  # External clock source
>>
>> clock-names follow immediately clocks.
> 
> Will fix for V2.
> 
> 
>>
>>> +
>>> +  gpio-controller: true
>>> +
>>> +  "#gpio-cells":
>>> +    const: 2
>>> +
>>> +  gpio-line-names:
>>> +    minItems: 1
>>> +    maxItems: 16
>>> +
>>> +allOf:
>>
>> allOf: block goes after required: block.
> 
> Will fix for V2.
> 
> 
>>
>>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>>> +  - $ref: /schemas/serial/serial.yaml#
>>> +  - $ref: /schemas/serial/rs485.yaml#
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +
>>> +oneOf:
>>> +  - required:
>>> +      - clocks
>>> +      - clock-names
>>> +  - required:
>>> +      - clock-frequency
>>
>> That's also something new as well. The original binding required clocks.
>> Why are you changing this?
> 
> See explanation above about clock-frequency.
> 
> If clocks is not provided, than at least 'clock-frequency' must be
> provided.
> 
> 
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +
>>> +        serial@2c {
>>> +            compatible = "maxim,max3107";
>>> +            reg = <0x2c>;
>>> +            clocks = <&xtal4m>;
>>> +            clock-names = "xtal";
>>> +            interrupt-parent = <&gpio3>;
>>> +            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>>> +            gpio-controller;
>>> +            #gpio-cells = <2>;
>>> +        };
>>> +
>>
>> One example is enuogh. All other are the same.
> 
> Not really, clock-names is different for example 2 (osc), and example 3
> shows that 'clock-frequency' can be used if no clock is provided?

Difference by one property does not really justify new example. The
third case - clock frequency - is okay, but the property is going away.

Best regards,
Krzysztof


