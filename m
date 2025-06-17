Return-Path: <devicetree+bounces-186593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F74ADC739
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 421337AAB31
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 09:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA2E2EA493;
	Tue, 17 Jun 2025 09:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U6VDJ19C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3922EA484
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750153889; cv=none; b=mKYgwqlwOh7j41anYaHW2pCgZ7khF5UcGzVVyiKaS4GVxOgYrXOdICFrjFbAvwzdRKZ0L8Rflzbi0r7rrfLnAHNHrv9eIbG9K8D6dOQ6BFXzCRLnEc2hZiuMrTzN5AusNscWKqCwjyWlvu/nIKWyrKSGH+r7CcxdDcgwenepBLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750153889; c=relaxed/simple;
	bh=yOYeYbgJNu+4/IFiKsEVyXPmRsGkvcdwy1Eqfae9kfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LrIp0v3EPsX4NDOmn6Dl7Vh569u9vWOHCJF7hm+BU8ZjNTQG/F4O4NUqmG0Fu2LhwUfPqhB/4Kv7IPPAgfkfiH8/0YvSlkoKUs0kSRqf6Qm9Bjym5xfSzn/Xmrh2QegXnYSzyJO2EJKZqRfxVC0u48pgBXFzmvB8MgaKdLz3MXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U6VDJ19C; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32b4a0915b1so2579271fa.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750153885; x=1750758685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RHARBEUV89TVDiEaNXWWLBeebwAXckwH+OfVBzU6AfY=;
        b=U6VDJ19CcpFt+XmxY0s2r+FT+Ss/KKOjKTmbwkUWlQLz8N5pEc7oQ0v3z9JDAoJgY0
         R0cw7wrfnR8TKNUrTRr1aIS2mo2tt8e5je+Gytpr7oNb4rdu2Pv8b4+jFLiood2c0PgX
         /7yI6Wroyt0G0HFlsldxlbdPzwGhCuyQ2y0agyrExo0cqenrKnBWcerITR5krrKkQSUS
         m2luznT2I06fLA5UFYD4Z52tAL+yjjuwqF4aqU+GCOVV4XH0VqO/AyoPu3+EeiIQf1yr
         eDJqt8cDAWDCB9T4fVxUWU5co3G0Os9+cNm3HZ+azNgsOeVT1FGxtF7Gco50bqtgH1mE
         my9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750153885; x=1750758685;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RHARBEUV89TVDiEaNXWWLBeebwAXckwH+OfVBzU6AfY=;
        b=GCjOtSNhxAwEqR0szKxkDOdMiwE/EXiQ21y4xSqtpJqanOwMXNYevzASSmUfZGFA1B
         2BLc5YnmgB6aYJdYOkwtfPJ8vlo5W7Zaq5S+X/31U5AhT/qxh0PbIgqZ5ul/goQYHyxe
         rg3iKApIo3Ji/JTrOL5ncWTZn+O76nKvyR1cq4sPjSuJvkmitNcEsfAyiPuU8z6LCBJ7
         xz8MLIBAPKzWVBUdfC/lyOul7IXqZScN2s5ccf5KR6gqX70eVNUpKrt5PY5hsmFTq+G6
         qRpUDEKHHlh0FgzliHuMxh4fIj+PSuSlk7skHkGE44aQAr7JC9g98q8FGJoKFUtTu5lR
         O7eg==
X-Forwarded-Encrypted: i=1; AJvYcCXeM4u3CUnaHun7ZyzGXXPs5mSbRYyOcDGPx2xk31QEJZ8JpRcp2xBdTXyuYzoOxiQDK2oqDOo8a9SI@vger.kernel.org
X-Gm-Message-State: AOJu0YwOfAnIIY5+vdhi4YuOZMk7ZM8W7udC1URX2U6tMcso/okOTlVc
	aLeZGrzWhbC3FR7Iozr1Oz1M4D+7GFE/ocn8j6Pn8b6eCmw98iJVjuzdjswWSHqP9v/ZBfn5IRA
	jBXsF
X-Gm-Gg: ASbGncu/l1M1p3y82eUKd5FDJ4ZOAQtAfRLezOgcLWvhaPrvMjmV/PtypSIm2FUaZg4
	wSmS8lq7RT7HOa2nT3s9HbPAxne4uIaUkJPZEtFMk1Mipvk9DRwHpVB87lrgOQml2GENzMJAe2n
	zQAEjKSYicf47MjVLNtLvcO9t5rp7xS2ZR84BIsM92cEWUkBk/wKpEMVe0uBnYJ+sWVJDOlJIqB
	kPgX81hJaP5BmH/6rcoc7UWpkAyrZFmIxds7ofvtKeVYJFdRGLG7Zo8PL1jYMqWvkYG8K2vlGCD
	B10N6A1dLq82OuCKCiMVshly0Wyx2oRs1gAQTJwjMXssNIx0XDr6qaBssQq1vhP0Uzqvohd6hvU
	Zn9I8st1gp0h/Ee275e/52opxRjsFnpjIpsD5H5H4
X-Google-Smtp-Source: AGHT+IHgEccVTzfXChU9HAoUwVJhv+KezddgfFlYxiozymITYUlnF8ezGTk1uMe9nKOYYPA8AsLZsg==
X-Received: by 2002:a05:6512:4022:b0:550:ecdf:a7f9 with SMTP id 2adb3069b0e04-553b6ef293amr1037480e87.10.1750153885126;
        Tue, 17 Jun 2025 02:51:25 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac11ff0esm1830650e87.44.2025.06.17.02.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 02:51:24 -0700 (PDT)
Message-ID: <83769dc1-9000-4074-bba2-d1bd465b77a2@linaro.org>
Date: Tue, 17 Jun 2025 12:51:23 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e9afdd0f-7842-4780-9044-d5afa6a09d7f@linaro.org>
 <b96f9cca-cdd4-4456-8ced-f4a8fd810ff1@kernel.org>
 <9e383935-a10c-40ec-a63a-243cd028374e@oss.qualcomm.com>
 <4f7225ee-fbb4-472e-8e14-a98f4cef9fc3@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <4f7225ee-fbb4-472e-8e14-a98f4cef9fc3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/17/25 09:32, Krzysztof Kozlowski wrote:
> On 14/06/2025 21:31, Konrad Dybcio wrote:
>> On 6/13/25 8:28 AM, Krzysztof Kozlowski wrote:
>>> On 12/06/2025 19:13, Vladimir Zapolskiy wrote:
>>>> On 6/12/25 10:38, Krzysztof Kozlowski wrote:
>>>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>>>
>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>> ---
>>>>
>>>> <snip>
>>>>
>>>>>> +
>>>>>> +  clocks:
>>>>>> +    maxItems: 2
>>>>>> +
>>>>>> +  clock-names:
>>>>>> +    items:
>>>>>> +      - const: csiphy
>>>>>> +      - const: csiphy_timer
>>>>>
>>>>> Drop csiphy from both, redundant. And this points to the first clock
>>>>> name not having any useful name. Name equal to device name is not useful.
>>>>>
>>>>
>>>> I got the rationale, but I have no idea how to correct it, since it's
>>>> literally the case, the first clock name on the list in 'csiphy'.
>>>
>>> What do you mean by "list"? You can point me also to internal
>>> documentation if that helps.
>>
>> So if you do:
>>
>> "csiphy_timer" - "csiphy_" you're left with "timer" which makes sense
>>
>> however, if you do:
>>
>> "csiphy" - "csiphy_", you get "" and Vlad is wondering what to name it
> 
> How is the signal named in HPG or diagram? It is possible it has a name
> other than "csiphy"...
> 
>>
>>>
>>>>
>>>> What could be an alternative name then?..
>>>
>>> The real clock input name, signal name. You can also drop the names.

That's the initial version of the change, there is a list of two clocks
as a value of 'clocks' property, but there is no 'clock-names' property.

But I suppose I can not keep it this way in v2 of the change.

>>
>> I don't have the docs before my eyes right now, but I would not be
>> surprised if it's also called "csiphy" in there..
> 
> Let's check that first.

Here only someone with the access to the specs can help, when I rely
on downstream code, and it says the right clock name here is 'csiphy'.

--
Best wishes,
Vladimir

