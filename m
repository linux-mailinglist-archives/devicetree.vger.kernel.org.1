Return-Path: <devicetree+bounces-200981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EC0B16D73
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 10:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69C795A6DF9
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 08:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83773241670;
	Thu, 31 Jul 2025 08:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VgXjs34V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA05D21B18B
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 08:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753950280; cv=none; b=qHZgBVkaWS2SvXfNmnzWBdeKxzczVyl/LATDFwypTHrEfWnQtB1xA6OOh2OgQ2OGXoNvgl3FUKXXo4Gp0AP12YftXIL5DJCLAMc2MfWNUWCtKYyxiysP/bP1ESDI+dtO6xTxwy9WmwJplWD4bzXyS9ElEvnxwTzYntcqy6Mde1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753950280; c=relaxed/simple;
	bh=FOjf0BV0+IGLLxoC7Oso0aLNj9+WBkpQIo0cAC3Dh08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s86RN+hbXHLdFbUz/XgIAs9H53VqoOQrxmbkIP1yGLKnH+1SgCOFKJ+n09wH0MPJEWo0G2Vmfune0qtxu9yRRvZUeMeNzEwhR0W7o7dbFovnGSUentw6jsTDwpk54vhQ6jzwDh5E878M7UAanNa2UmKnEkX4GBgDe8KiCLZAa+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VgXjs34V; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45611a6a706so644215e9.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 01:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753950277; x=1754555077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7ObA2owZIXNSWWy7ooxxBkOpHxPovglE/R/foejS2M=;
        b=VgXjs34VtYxu/0z1RtbyjGNgSO59jJkbZwDCL+NeDqAJhh5boAZV30/1otZQLOUW/t
         mOnuYyFRC4/eyQ3chiRuDbLy+mVI+mKP2EF6EGTzEWC/hG+cVvFwgiEclkMDTs+4wUaf
         TnX4ByLOgO5wyNoYe3XEvxFmdur8FdxAw0cKG6m5n/uarylvCweW5P+AE7t2mYSaE8P+
         7yGJ0+7TlAppu6P0NW+bAVzzoD63qFIEw4Vaoh4SU1b0INkRsnlwym/aFsGxUUP9zj2N
         rzRgi1FCtmrpQaVkAIvDmCSmx2tqq5Py92ERHZU8d3FzglA2gK9u0FhI8i0ndaaPUe7q
         yFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753950277; x=1754555077;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b7ObA2owZIXNSWWy7ooxxBkOpHxPovglE/R/foejS2M=;
        b=SX51V2Sex9e24zosZbbH6+W8IbgLUzOAIMZuuQkU+xlGqvC+/rUnHcoHLi8Kgz0wIf
         o8k0ZrYquit89iN60tOo4D/Ndf1K0uonEdkp990hli9m3QekScZk3bEL5NvvzNBnSFcY
         8d5pjlzpChFqLbcuVGuKoTO92Zcpu05XwA90iSNPk6DOJDZD6QRrFVX96YCDZukI8x3e
         gkoJeUN14s/KH6VgE3UfuPdkoMUCrFCD8BS78dFPHRN8qxhzNLQ9Dhb6UFfA8wTtSA0C
         pdrrHw3U+ZpF6uDNd0z7EfPFJ4q4wO36g9duFqMnyrihlNPVyvCOUdbvZi6SGj0vLPh8
         e7dA==
X-Forwarded-Encrypted: i=1; AJvYcCXeAZmbf536P6GoCuonUNCdzaqK/sq+/Zh1XxDAYOlK5Kw3AiDpoc2u9ASaD3PD9fE+NBgdJjfVeUHR@vger.kernel.org
X-Gm-Message-State: AOJu0YxiLrPKd347vMloBAeGx/9auBTkbzeD9hBm85RrJzxeAaKsNPhD
	c9p++MCFEmH10pXauLDoeqlWgSxU0aX3Rn+W/kSzyORds1v8TO+hIBS2Jotmr9ULARY=
X-Gm-Gg: ASbGnctOIvujkFXRB6M+utRuBrAATSgIsMXVauVKOTbB72+KisnFt3gJyyivVJ/PW9s
	vq+aJsIMc6Lt4TQK/etgnY6cOjpti8jd/jgFPgJlcnz7uzCmnAMzDdQaIXDOacAEyp6ZWELRE7q
	UBp82cGwAocVZ+Jovlj7ZkqKqweINx/OvOeLyePgkEt9freewyT6tMvdW9O9+BKmGs3U9Tv+OCP
	C0o9tLZsYe1K9SR8fYqKqApM2qds6u6yMbI9PaE7phE1N0EIStjhRG39FCEz1pak6c4D9TJg9Ue
	xi7ToFcgFuBY963SmXAiUlazgJu8EPnmA4NusghDhjc0uqi72yHHMXZkpsnYAYyKdDeOZ5TGe/t
	IFPg8T+JkrIi5UWQ0Picf0qMsGILrtVb+UWDIFlmTy+amkTthEvU7YPgY6PcPjQ==
X-Google-Smtp-Source: AGHT+IHqMPfEUGXtW/1KVB805ClqisCQcJBlHTWCw7ppIiNvGTbRcVUtbSqLbRahp7lhWcj3NI8Ifg==
X-Received: by 2002:a05:600c:5185:b0:456:1846:6566 with SMTP id 5b1f17b1804b1-45892bee39cmr51405685e9.29.1753950276988;
        Thu, 31 Jul 2025 01:24:36 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm17174995e9.28.2025.07.31.01.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 01:24:36 -0700 (PDT)
Message-ID: <b3884959-cddb-47ac-be4b-87e9e37e5679@linaro.org>
Date: Thu, 31 Jul 2025 10:24:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 19/20] dt: bindings: fsl,vf610-pit: Add compatible for
 s32g2 and s32g3
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: tglx@linutronix.de, S32@nxp.com, linux-kernel@vger.kernel.org,
 ghennadi.procopciuc@oss.nxp.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20250730082725.183133-1-daniel.lezcano@linaro.org>
 <20250730082725.183133-20-daniel.lezcano@linaro.org>
 <20250730233547.GA1887794-robh@kernel.org>
 <858e9dd6-b3a7-4ff7-aaa1-02a140b93de8@linaro.org>
 <6011eb0d-e57e-4220-a9f1-c09fc4c6799e@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <6011eb0d-e57e-4220-a9f1-c09fc4c6799e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 31/07/2025 09:50, Krzysztof Kozlowski wrote:
> On 31/07/2025 09:41, Daniel Lezcano wrote:
>>
>> Hi Rob,
>>
>> On 31/07/2025 01:36, Rob Herring wrote:
>>> On Wed, Jul 30, 2025 at 10:27:21AM +0200, Daniel Lezcano wrote:
>>>> The Vybrid Family is a NXP (formerly Freescale) platform having a
>>>> Programmable Interrupt Timer (PIT). This timer is an IP found also on
>>>> the NXP Automotive platform S32G2 and S32G3.
>>>>
>>>> Add the compatible for those platforms to describe the timer.
>>>>
>>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>> ---
>>>>    .../devicetree/bindings/timer/fsl,vf610-pit.yaml          | 8 ++++++--
>>>>    1 file changed, 6 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>>>> index bee2c35bd0e2..2aac63a58bfd 100644
>>>> --- a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>>>> +++ b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>>>> @@ -15,8 +15,12 @@ description:
>>>>    
>>>>    properties:
>>>>      compatible:
>>>> -    enum:
>>>> -      - fsl,vf610-pit
>>>> +    oneOf:
>>>> +      - const: fsl,vf610-pit
>>>> +      - const: nxp,s32g2-pit
>>>
>>> These 2 can be a single enum. Otherwise,
>>
>> Do you mean this ?
>>
>>      enum:
>>        - fsl,vf610-pit
>>        - nxp,s32g2-pit
>>
> Yes.
> And also please correct the subject prefix to match subsystem, git log
> --oneline or:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Sure I'll replace it by:

dt-bindings: timer: Add the PIT for s32g2 and s32g3

Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

