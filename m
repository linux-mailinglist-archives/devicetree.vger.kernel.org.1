Return-Path: <devicetree+bounces-36761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571B8428F9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 17:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86E091F20FAE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB9586AF1;
	Tue, 30 Jan 2024 16:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zoaNHzyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DC86AE7
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 16:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706631500; cv=none; b=FZ4gLfVyFf6Vj/cAVrZxdeFBKGontRh5lnw6RHcf0oioge6B6+bH6rYuymIJUwiShzJbFt1z3RKaAhN2SFveASGs+tVw/ffFsjZsHhbq/WQEx/m5vXT8IiCLqQ82+4R/TKk0oG21P5x/NBNtIW8daBToKWniSgo8KflfBYhXW5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706631500; c=relaxed/simple;
	bh=T51l3Mw0GfK8/kqY/gmUNHU2zGcBRab2jAFjRZleRAw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PcKQhhWUFBQNTn5BUNity3Yow0XxmLKC0UDV4rUuyju4PTMuE/s0N291P1CU8PTh3iUqKZ71H/CArTlweAtTyRyF/CURcnbBa4cBi2xnhWyuprRgXChGHNGsgwuEtudcjWyMR5mXHvM+i/j71vvDBX1lxXOE+m4eZjPdxHSVUgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zoaNHzyB; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a271a28aeb4so516455466b.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 08:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706631496; x=1707236296; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oZXon35I9vWe/z+8fo28XYH3xXWTxWnPiT1+wYSZZe0=;
        b=zoaNHzyBH4Nrzv3P9LZ/uXCBTWYF7ns24UIWzr7uojk8ZoI9titU+GDZigGjf2dpYM
         K60G5xV9St8nJhfBukmUizIod/sc5oqsPfcTZDxpIQPUOf0VeZSlNoIia2TTdDRdOCfE
         ipUt9pY+QExNPJZ3GPiPFj3TW3vrNOQ5zIrIV7Y68Hjs64WaArkwbXN2piIxyQMP0w5K
         MXj/O0e5DvwPLf4Qt1n/iAXrPbaE9boaLquh+8zNb0TyXilHZUdnavt7gVSG3d04VWqp
         UDQVVxCOAAz3ZLrMXiNaI8H48xIL36kA3e4FSfzhNb02KIRv696ChCoFkeeyHX77JVeW
         8SaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706631496; x=1707236296;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oZXon35I9vWe/z+8fo28XYH3xXWTxWnPiT1+wYSZZe0=;
        b=caPX6zEYGDT734Phr03VwDsRaFT9VPV7eS1P3uhlg6Z6BUlxBhroqXJzNTvazL4w+u
         7lPYUbQ6MKAUWp6JvTNGYbdbtXZjqjaffUYcAeayEeEuyrTs64z+qb2U5SoShfaZ59nY
         HxdDeoYS+h00pgocevNYvkICGGvFi3OHtaJKWrRJ0zH1NivHVgHy7ouvOSOkIJ5/8oyt
         W/RIMM1VuGji+6QHv+WXvHOeUJerQX0t5rosDz7PEHkxtfI+uBVVBg6FBUnLCy0YrQKm
         niJKQDEK51pZzbboYkw4z2gBTFgkQHcXF9beeySnG2qKjJbBlqLxp2BCHYUecj3GcPb0
         ScHA==
X-Gm-Message-State: AOJu0Yww4PGdENijQl8wCROG0IYQcBJ44MIzMi6cMycB/7hyJv0YiAAb
	5imQmSacA3ZlfjqUmYogKqbSW6nKDLzSyU6ncN/sqCgpOWKuJ0ewj4+tAtSe+2E=
X-Google-Smtp-Source: AGHT+IENuGAoEzF34wRY6bp8yCjEbKBDtK0zbTjjHzlRa0LYXFTSHFlAyyRvLosaxMI51Hdeu2mDvw==
X-Received: by 2002:a17:906:a013:b0:a34:bc0d:3ca5 with SMTP id p19-20020a170906a01300b00a34bc0d3ca5mr6528524ejy.13.1706631496519;
        Tue, 30 Jan 2024 08:18:16 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVyuQZAaN+Uxv5hLMx0ydBhGAdEuAZ06eHHTMZJ4F/SnFmIkQ7L6nVaTaQDmmfD4K4mQf3NqVpEHmVUYHaCuJBcnKx9BFJrddcvnu5pqdZ5zBhAjmZ5qSh2AN0Gpefs0bwjATv+r9kjWW/jaQDHhft7pArNOhb5FeMahwqNvEv0mEv4/iLXi+o7J4JQW1siUhXZ1fiXFL12uZ2SjhwN6c6yW1aEDvFzOEjb9EaHOV1kqgulOIGAb8+mW+pJL3TGpTXAnnGuyo8PN+P+5wLgGl2fWBYnw+FrAWd0wj0XUMC4L7D2CJJN2ss9zlkhVudnyY1tpNLi6J3xAZAEveMKFGqJJYENdcd1Yrg+LdV5AcJOx+l8njbDbEKa+/oZHkD3e6BgIYRZW41fs9xyHufHuzjilFa/k4s5qQmw4+n5tGYepmXLdJKM/lps2QtPCTfzvibJa2u5TkIw8aJUdkuwr3FQYDUHrSK9pFQT9gSCwPsk1+cR/3xWq+ltqcl7fp+BKEmIvKZoknNQ0Xn+f1IKmgOcO8J7LFLV3wGsCHG/svCDgY0R3oQDxvtimpHuHZyu8hJaC4pMtRePchQIgYEf4AJ7VQfBKYowjypAXcsZkrAKplS34nUH+RCDMIZYl3qFY+8CJo+61UMLzFDS9EYAc7zcqQA=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id vs6-20020a170907a58600b00a3542a13eb3sm4090032ejc.138.2024.01.30.08.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 08:18:16 -0800 (PST)
Message-ID: <dc867ca4-e579-47f5-8490-ebefbc3c2875@linaro.org>
Date: Tue, 30 Jan 2024 17:18:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [EXTERNAL] Re: [PATCH v2 4/4] ASoc: dt-bindings: PCM6240: Add
 initial DT binding
Content-Language: en-US
To: "Ding, Shenghao" <shenghao-ding@ti.com>
Cc: "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "Lu, Kevin" <kevin-lu@ti.com>, "Xu, Baojun" <baojun.xu@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "P O, Vijeth" <v-po@ti.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "pierre-louis.bossart@linux.intel.com"
 <pierre-louis.bossart@linux.intel.com>,
 "13916275206@139.com" <13916275206@139.com>,
 "Chawla, Mohit" <mohit.chawla@ti.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "liam.r.girdwood@intel.com" <liam.r.girdwood@intel.com>,
 "soyer@irl.hu" <soyer@irl.hu>, "Huang, Jonathan" <jkhuang3@ti.com>,
 "tiwai@suse.de" <tiwai@suse.de>, "Djuandi, Peter" <pdjuandi@ti.com>,
 "McPherson, Jeff" <j-mcpherson@ti.com>,
 "Navada Kanyana, Mukund" <navada@ti.com>, Mark Brown <broonie@kernel.org>
References: <20240126035855.1785-1-shenghao-ding@ti.com>
 <20240126035855.1785-4-shenghao-ding@ti.com>
 <f7a2de19-55c5-4aa9-b0a8-632f22b6c147@linaro.org>
 <f5357751-ed4d-49ad-9d65-199c49f4cbdf@sirena.org.uk>
 <015abf2c43a44c478726c270bfa17fc0@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <015abf2c43a44c478726c270bfa17fc0@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/01/2024 05:43, Ding, Shenghao wrote:
>>
>> On Fri, Jan 26, 2024 at 09:27:47AM +0100, Krzysztof Kozlowski wrote:
>>> On 26/01/2024 04:58, Shenghao Ding wrote:
>>
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - ti,pcm1690
>>>> +    then:
>>>> +      properties:
>>>> +        reg:
>>>> +          items:
>>>> +            minimum: 0x4c
>>>> +            maximum: 0x4f
>>
>>> Nothing improved.
>>
>> Shenghao explained what what this is doing - I'm not sure what the actual
>> problem is here?  It's an actual restriction on the values that are valid.
> 
> Hi, Krzysztof. May I have the privilege to petition on behalf of my customers? They 
> want to keep these if branches and the i2c address in yaml file. As you know, most 
> of my customers used to make mistakes and confuse with the i2c address. Listing 
> them here can help them to get the information easily.

To which cases this exception will apply? Your patches, all TI?

Bindings are not supposed to be so detailed to create DTS out if it,
because it makes them more difficult to maintain. Such amount of
if:then: makes it trickier, for no real gain.

Best regards,
Krzysztof


