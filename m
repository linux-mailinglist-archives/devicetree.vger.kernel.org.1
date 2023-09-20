Return-Path: <devicetree+bounces-1832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4397A8866
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03BC72824CA
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B35D3C684;
	Wed, 20 Sep 2023 15:31:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAD729A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:31:17 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB6099
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:31:16 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-52bcb8b199aso8762433a12.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695223874; x=1695828674; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybFgEpWZ1M1MITqAxxwPHlJhDui5BwB2PGcw3ZpdJCI=;
        b=DTTiSx225Zu5jMH7TwugY9QIIEgAIEOs3mdvFW/U9g9YxBvbS8flaXO30Y/9ak87My
         o8gOOv47nQiaDwsQ6Uf6z+yYEBrdpugr1oetaC9fv8GvusGxckIE6zdKFV2NO8ib0v+3
         d8pkbiKBWSn3sX4JE67gaHoqx8+aNzyrMTJ9ef22feyWUiVHq25oK78Emuriyv2ifCJx
         vWAlhivsB91r8h4RNL9i7RnJ30qgiZuvVFunhN4ERc1urtXftjammckPKcD/bdbJbSVs
         OxwqqmDoSweF9x4/e/Qz596Yp7XcKPdUcMvekoyo/TYst5oJ/ptbRbifhQ2e73Y7KcrG
         m2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695223874; x=1695828674;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybFgEpWZ1M1MITqAxxwPHlJhDui5BwB2PGcw3ZpdJCI=;
        b=TJ+XokLUL6CR+MlHQtGG3GKJhjOJRXkG41bMW9jqNTsl3OZMc5vsOmxvmtnM14kb+2
         TsVJp7+Uuh2ctrc4P+ElgeM962XPb/WCn8wTrXCdaRhWsugbk7vP1ojiYVKy9aYqgYRP
         8TLsF1NfprC1U2WA8AXTkWlpnn6TXLXiF6DYgXXpc72OGouqfskCXHneKh/SFT6cZUuU
         EFJPBRSpeYfj5nH6CsqXqVsyNCiMhRMiTVw4hs2QMe3QMw7MRPgxcCh5p/jNNFx2ZzA1
         8ZhOaT4GMJ/tKN7ZkMO48mzpm0+frU61q9EEQ+d2VSbG6hf2Y9Md+pmnSIsx615YbLf5
         Votg==
X-Gm-Message-State: AOJu0YyHbSklmFrrj0YyJDDu9mdrpy04WuT7MnwMA4JxuIsHFFI9/iLY
	5nYNIQ6X5shl8h9gWAz0ZtqrWw==
X-Google-Smtp-Source: AGHT+IFY+e3lRmc+q5LcbEbsI0vU40fn7Akg/ai3v4QIQisIdccOEQ5kCjYcyjjZ6WzIvSbSeufJGA==
X-Received: by 2002:a05:6402:34c3:b0:532:edda:3bb8 with SMTP id w3-20020a05640234c300b00532edda3bb8mr3151207edc.16.1695223874642;
        Wed, 20 Sep 2023 08:31:14 -0700 (PDT)
Received: from [172.25.81.108] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id ee17-20020a056402291100b005308fa6ef7fsm7575358edb.16.2023.09.20.08.31.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 08:31:10 -0700 (PDT)
Message-ID: <7288339e-7d8f-6c12-5072-cab53d542dab@linaro.org>
Date: Wed, 20 Sep 2023 17:31:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add initial
 bindings for panthor driver
Content-Language: en-US
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 Daniel Stone <daniels@collabora.com>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "Marty E . Plummer" <hanetzer@startmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
 <20230809165330.2451699-15-boris.brezillon@collabora.com>
 <3517f2e9-d9d7-5bf8-1905-62f52d68c512@linaro.org>
 <ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
 <ed4cb30d-2eec-580f-0b4a-1b108a745a9a@linaro.org>
 <ZQsA4DTuWjNwRiOk@e110455-lin.cambridge.arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZQsA4DTuWjNwRiOk@e110455-lin.cambridge.arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 16:25, Liviu Dudau wrote:
> On Wed, Sep 20, 2023 at 03:51:36PM +0200, Krzysztof Kozlowski wrote:
>> On 20/09/2023 15:41, Liviu Dudau wrote:
>>>>> +properties:
>>>>> +  $nodename:
>>>>> +    pattern: '^gpu@[a-f0-9]+$'
>>>>> +
>>>>> +  compatible:
>>>>> +    oneOf:
>>>>
>>>> Drop oneOf.
>>>
>>> The idea was to allow for future compatible strings to be added later, but
>>> I guess we can re-introduce the oneOf entry later. Will remove it.
>>
>> If you already predict that new list will be added (so new fallback
>> compatible!), then it's fine.
>>
>>>
>>>>
>>>>> +      - items:
>>>>> +          - enum:
>>>>> +              - rockchip,rk3588-mali
>>>>> +          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
>>>>> +
>>>>> +  reg:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  interrupts:
>>>>> +    items:
>>>>> +      - description: Job interrupt
>>>>> +      - description: MMU interrupt
>>>>> +      - description: GPU interrupt
>>>>> +
>>>>> +  interrupt-names:
>>>>> +    items:
>>>>> +      - const: job
>>>>> +      - const: mmu
>>>>> +      - const: gpu
>>>>> +
>>>>> +  clocks:
>>>>> +    minItems: 1
>>>>> +    maxItems: 3
>>>>> +
>>>>> +  clock-names:
>>>>> +    minItems: 1
>>>>> +    items:
>>>>> +      - const: core
>>>>> +      - const: coregroup
>>>>> +      - const: stacks
>>>>> +
>>>>> +  mali-supply: true
>>>>> +
>>>>> +  sram-supply: true
>>>>> +
>>>>> +  operating-points-v2: true
>>>>
>>>> Missing opp-table.
>>>
>>> This is the main topic I want to clarify. See further down for the main comment,
>>> but I would like to understand what you are asking here. To copy the schema
>>> from bindings/opp/opp-v2.yaml and bindings/opp/opp-v2-base.yaml?
>>
>> No, "opp-table" property.
>> git grep "opp-table:"
> 
> You mean adding
> 
>      opp-table:
>        type: object
> 
> as property? What's the difference between opp-table: true (like in
> 'display/msm/dp-controller.yaml') and 'opp-table: type: object' like in other

There is no opp-table: true. Nowhere.

...

>>>
>>>>
>>>>> +    };
>>>>> +
>>>>> +    gpu_opp_table: opp-table {
>>>>
>>>> Opp table should be inside the device node.
>>>
>>> I cannot find any device tree that supports your suggested usage. Most (all?) of
>>
>> Really? All Qcom have it embedded.
> 
> The arm,mali-* ones seem to have them outside the gpu node. See "arm,mali-midgard.yaml"

You said you cannot find any, so I pointed out that's not true.

Best regards,
Krzysztof


