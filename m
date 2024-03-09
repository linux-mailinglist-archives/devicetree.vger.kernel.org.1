Return-Path: <devicetree+bounces-49589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFF3877105
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 13:22:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4932B281830
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 12:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA2B5364D2;
	Sat,  9 Mar 2024 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aGfbsg2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFEC28E22
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 12:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709986953; cv=none; b=ifXFb+Sz50iqZ1rsIzMQrxSfLSDSi8NyGnVHbLaynSoGeIM2AdvhRqMgwX8akTKuY96Mh28YEPABu2BEXfIf2owX0hWn9UVGMFDpHBCvJHAeGrvBg9lOY+rCshr6XlEGLsfzOO+dDFR5I1gklvj4Bg3I9osgg2/q0hr4frEmh2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709986953; c=relaxed/simple;
	bh=uZcmg2/BuFC88V/NJ2Yp0vjUw+HPzzxN/5ES9LNT7HE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kU3hly7nD+2Lw8HbAIkNqXsxH0OoE+iobPwEJi2fyjvCnBXp0RuSxQkDnuSx8A/GzVKLm6S0XpU0EPkfsjNeePJDbGFkdN/fZrU3BhD5cWyVXhrtjZWB/RLBZgICtK5oDfgwDrKFM/DhE/oSu+F9uoWQS9KOmKobYNu0//XRm7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aGfbsg2V; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a4499ef8b5aso169619366b.0
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 04:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709986950; x=1710591750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Uk5qL+AXvt/ohBX5H/1+jAQzY5GwDCBDsdL8XZZVOE=;
        b=aGfbsg2V1BDB1CJbGQp9OFougzhgROVaVlBS6Xc4XNicbGvI8o0WIogR+nYWMxetRN
         PCOy2dkSej+mS1sJEROSB+JeAmYc+dOAhEzXbNcJ+H3ZjE7RhSDozxAhc3N8MJM1HN/c
         HoGJn7Zn+NWUsiqlPTevGxq+IR8pw3N9ynpKFc1iYU0HlB9dqwmoyxi7a8YTlsxrrizx
         YwUlyw6DkUq1o1Y+pM80ic2+5nQHkW2YPuIe2Q2vp/v6IG48Qwea+RbrvuM/69Whx8fY
         tA5TFiaqtwVNymbMfHiqRZWIChplkZsaC2dSSO/Laon++W4x0g62dtGXhjVjtWZd2a2o
         /MyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709986950; x=1710591750;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Uk5qL+AXvt/ohBX5H/1+jAQzY5GwDCBDsdL8XZZVOE=;
        b=RUZut6E05j/3oJ3agcBgE7f9Zk5H4B4250Etk/OkGw9AaBnRcvJHGePQWkH3X2AiER
         WuLnapmsU3y/ENbkhVi07ZJ27Eo+YFe8dcWV95R1ER3kvveVoFfjrKjqw0125DlN8y2x
         4yOVwclJWpQH6udGbo5GJVb9NuwR2JNILhjhU5rmYExcn7HwzWiAWtHK+UaLrHgdlATv
         Sp2pVeRaD6yp6/sP2XEgyf0XlWwJAEcMbGFlKsTOZfS+jtLZa3lrUuoqKW6BnI4+6rbz
         qv8VCR5uLJv4JGtUjgrd6BMSbohDvGLf8qqZOZ2ZwjCcHd2lCTaPBIK/+gDhDFeZ3uqz
         fBDw==
X-Forwarded-Encrypted: i=1; AJvYcCWuBfBUKLuqjNN5A22EhbqeeoHNu1BbLW5rKjlVo+JARnMguwlRm8Of5j9c/T9pmy0LxGsGgF3DMHK9/vIE/36IiiSeLSkMw57mqA==
X-Gm-Message-State: AOJu0Ywg75FGMHkIVQ45btjh/ERzH0GJJMUNXI63uvieloaY86VQnADx
	R8IeKUIZdQD9BsGQY7FBoZAGZjZw04yUK8apnGf6mRqECVI7COgHliayYNl3RTM=
X-Google-Smtp-Source: AGHT+IHplcnhWLXqlMf50pcthYdu+PovyDjXD+M/4kI7kucXMnzj40QwiVoaEBKVr/qMCNP95lVynw==
X-Received: by 2002:a17:907:c20c:b0:a43:af0b:ec31 with SMTP id ti12-20020a170907c20c00b00a43af0bec31mr876236ejc.53.1709986950317;
        Sat, 09 Mar 2024 04:22:30 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id f10-20020a170906560a00b00a45670f68e7sm832297ejq.92.2024.03.09.04.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Mar 2024 04:22:29 -0800 (PST)
Message-ID: <4f3cf3c2-c5ff-475b-af5b-3fb698325c60@linaro.org>
Date: Sat, 9 Mar 2024 13:22:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Content-Language: en-US
To: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240308215617.1729664-1-paroga@paroga.com>
 <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
 <f97b4a8e-7944-496d-9bed-20e8076a327b@paroga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <f97b4a8e-7944-496d-9bed-20e8076a327b@paroga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/03/2024 13:09, Patrick Gansterer wrote:
> On 09/03/2024 12:53, Krzysztof Kozlowski wrote:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +patternProperties:
>>> +  "^led@[01]$":
>>> +    type: object
>>> +    description: Properties for a string of connected LEDs.
>>
>> Are you sure this is a string of LEDs? How does a string/tape work with
>> a backlight, I mean physically? How could it look like?
> 
> I just took most of the descriptions/names from lm3630a-backlight.yaml. 
> I understand it in this context as multiple serial connected LEDs (as 
> shown in the circuit diagram in the datasheet), so that each of them 
> gets the same current when connected to the output of the chip.
> 

lm3630 might have copied it as well. LED strings are true in case of...
well, LED strings, but I just wonder if such setup is applicable for
backlight. Anyway, if you think it is, I don't mind.


> Maybe a more general question: Is there any easy accessible information 
> about which code is the best used as example/reference? I tried to align 
> my code very close to the LM3630, but you gave me a bunch of comments on 
> that ;-). And would you like see patches cleaning up some of the code 
> with bad/outdated style?

There is no such reference, except example-schema. Usually newest
bindings, which passed review, are the best source.

Best regards,
Krzysztof


