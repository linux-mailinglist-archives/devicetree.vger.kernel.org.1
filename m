Return-Path: <devicetree+bounces-8945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAD17CAB34
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 16:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C72FB20CC7
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 14:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C93B328DC3;
	Mon, 16 Oct 2023 14:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dz9maiNk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3625F1CAAD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:18:46 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EBE99B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:18:45 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9b95622c620so807778966b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697465924; x=1698070724; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=O9cvGNH/CHcBlw50npGAt7d8TPBg3/0X26+CBtNHDZU=;
        b=dz9maiNkGhp3UXV5MdS/CDylDiK9zl81mQPmDsnbr89LtroWAbOsjEzux10muaiGdE
         irdUnh8iFmuOyf6UEcPTM8uRa7VLIVOo4G+IstKoTlwj75Lz/jJwoOYhxjhWBO+ykvwl
         aGWqaDryk8KR2oibyflMf4k0WmtvhWbttwEBAkiwF8p/brmyEfxOt6Ep9EQYovpvZ7Q9
         sDu21oerCPlG+k5HYEe+DjLeqn6hEwgcYem/7QSHpj2M5aiO71gG7p+qjboCvBZFU+6K
         ZvPBLNEAUKD+gWQ8FvFeV7KmFvuFzL42+0VXk61knA5N/fdkZLqKp2oswmxuV1e+AecZ
         8Xxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697465924; x=1698070724;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9cvGNH/CHcBlw50npGAt7d8TPBg3/0X26+CBtNHDZU=;
        b=h9V8wU+RnMecEvPFOBcRF8IBAfQjVeR4+v7RVoKHl56oXkJsKAvx6JVviqDo12OOmM
         mRGITZei1rjxHfIdsPiWac9mM9EbCb7Z5HTLywkPjk2HmVWxbvB+0QURWqKAuLvwaLrL
         /rsDZ2nnWTvztHsqCwFpJsEw6Udczll5Juifi87YJeLo0QJ5k+MtHMpl5axlQTrbq3um
         nAvXY+ZFQz0NVhMb09PZuAGKJKgmoHM7142mQ4xVo2J+VTy9DDEhduj1mN9D9zm29u6m
         Vv0SLZzYTW4O/Z3/8Sm7Z8BPggXubs/xnUZZK825K34B9flK9nAoqsYtQoUE7Av/X4yK
         TVIQ==
X-Gm-Message-State: AOJu0Yz+KGC9y447Hjas+VCbSx8ZulMslGKl6gUYZaCH00GiefbLHnZY
	PakAyduMyYN6rF02YgyYiveAYw==
X-Google-Smtp-Source: AGHT+IHiKrA/PPss1XyYL+8zF2tfB24fJfbqq/MI2Q+gwn3zFIHjz8FC20j65msiYkKPG454ZiYRAQ==
X-Received: by 2002:a17:907:3e21:b0:9c3:c2e1:a38e with SMTP id hp33-20020a1709073e2100b009c3c2e1a38emr3707492ejc.15.1697465924059;
        Mon, 16 Oct 2023 07:18:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id w23-20020a170907271700b009b654751c14sm4067583ejk.47.2023.10.16.07.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 07:18:43 -0700 (PDT)
Message-ID: <2c1b47aa-ad4f-4a7b-901c-e0e44cdc31f2@linaro.org>
Date: Mon, 16 Oct 2023 16:18:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: serial: sc16is7xx: remove
 'clock-frequency' property
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
References: <20231013141925.3427158-1-hugo@hugovil.com>
 <20231013141925.3427158-3-hugo@hugovil.com>
 <2b12a49c-ed82-4632-86c6-349976cd714b@linaro.org>
 <20231016095848.ba76e14c41bb7ceae8217e04@hugovil.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231016095848.ba76e14c41bb7ceae8217e04@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/10/2023 15:58, Hugo Villeneuve wrote:
> On Mon, 16 Oct 2023 08:09:56 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 13/10/2023 16:19, Hugo Villeneuve wrote:
>>> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>>>
>>> The 'clock-frequency' property is supported but mainly in ACPI-based
>>> configurations, for example.
>>>
>>> This property has therefore no place in the sc16is7xx YAML binding.
>>
>> Please reference commit which you question - 0d447e927. I don't
>> understand why do you remove it. The property was in the original binding.
> 
> Hi,
> in the max310x YAML conversion review (last week), you told me to
> drop the clock-frequency from the binding, even
> if it is supported by the driver, since it is related to ACPI
> configuration, not DT.

Yes, when we talked about max310x.

> 
> The sc16is7xx driver (IC) is very similar to the max310x, and it also
> supports the clock-frequency property, and I just assumed that its
> presence in the original text binding was some kind of error or legacy
> leftover, and would need to be removed based on your comments.

But that is not the same and not accurate. clock-frequency was described
by the binding.

> 
> Just as a reference, here are the original commits in both drivers that
> added support for the clock-frequency property:
> 
> -----------------------
> commit d4d6f03c4fb3a91dadfe147b47edd40e4d7e4d36
> Author: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Date:   Mon May 17 20:29:30 2021 +0300
> 
>     serial: max310x: Try to get crystal clock rate from property
>     
>     In some configurations, mainly ACPI-based, the clock frequency of
> the device is supplied by very well established 'clock-frequency'
> property. Hence, try to get it from the property at last if no other
> providers are available.
> 
> 
> commit 24bc6e68efa00f95034dbef0ba91661dd80bd37d
> Author: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Date:   Mon Mar 18 12:29:15 2019 +0200
> 
>     serial: sc16is7xx: Respect clock-frequency property
>     
>     If the property is provided and there are no other possibilities to
> detect UART clock frequency, use it as a fallback.
> -----------------------

These are driver changes.

Best regards,
Krzysztof


