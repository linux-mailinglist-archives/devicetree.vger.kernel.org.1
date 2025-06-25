Return-Path: <devicetree+bounces-189626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03776AE88E7
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 17:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A99DA3B2ECC
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 15:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 436F129E0F4;
	Wed, 25 Jun 2025 15:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RvyzCJQN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55072289361
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 15:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750867021; cv=none; b=QHVvPjgVge0wP4Iq72mdbHTNERoQuNfkfn+0YUv8JxAXw2VC/yYqUOMRBghaEC3sGtcBGm9YbBN/rzmCC+4FBVtHB8JEf4nfkbCCU/T4HsQ5d1e4qBFhQ+vZD5tF719CvEQjUyKeHk/dgdlDzZ+HqEFOzju98jB5ufF0hSuLbQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750867021; c=relaxed/simple;
	bh=FEkokS8/xuXk+goXO73ToH3BN/rlCiO0xkCJYNPSHPc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pHqnMNewe/QZoxa9l22qJ3eOIm7fZtGs5xXlFSfDBi3XJOfhZ8TR/EzLUSlLe0kOVOlz7rbTMPFaXZMJplJBUnM3AxxVPgaxDJwO85PTUm+yihN1vmwfetvZKge9i2nGDD1yG7vks8k6Ln66clZpTaoulrOIoqnK+VwBDNHAuXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RvyzCJQN; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-3a4fea34e07so933226f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 08:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750867018; x=1751471818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TnQ6U2Cyxfs2njJfr+S27AJxd4QZUS+L9XHalJW5Its=;
        b=RvyzCJQNVi28ZjZ24FTQzs6kGYdIzK8GLGefyKqQsnjMHeKSgjomVrkUpTS/lRaa7J
         rbk19URF4C32JxEPbDSeNlwY2giG9G9tv2Vufx4ne0bCCH2xtO11bqX9p4fwk5M+6zFG
         xOxli+jsTNjYLx56ESW+szOSu6peaTkoFupTMdXW9xrnc+hQzu1HtckrjVHhGvvfOJKR
         aOGk1IniMdmYDCIgEvDpImCNLkaHA4lx+hUGW6OoT6XqqN41xeFbe84sx8ip4UFQabTZ
         Lso2dcnopMzy4ijlchc6NzMNFfrKPslJjgewLILtHYxFNbk1TKrFfb5ST8Z6COC9UZcM
         aVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750867018; x=1751471818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TnQ6U2Cyxfs2njJfr+S27AJxd4QZUS+L9XHalJW5Its=;
        b=PMiFN3INl+vWbY1qEX8p7VUZyJbRdpO0QclRm9HCzzLLdPED3QfmlKAjjrJMLsJ8g6
         Xw+z8HsDV/8zHMsPC4rWPvUAjEkqvD/C7j9HKOZ8Jeiw3+Kyqgz13ehKaTHj+n0pi0/I
         hjDLfCpwFALotG/NEvUWQaqkcD38pxeGx2E/x6AI3qkUcakgyt0zPlMEgJBG76Qvzwne
         tKeXYGO0CQX0qcNpgn+w/1XeZT0+yvBu4XbHy0zq2ieloKWxyhef0WoG7ucAW7rt97RH
         Nwwcayu2E+5jd6VG+swC+Idu4HuEE9p7EsN2HlA6885APDouAC7cT2WdpX6xW97YcxbG
         Tbtg==
X-Forwarded-Encrypted: i=1; AJvYcCVFbb1TR0/xnnC0zWlvcmTeClvyOI40FmS2yBcngvV9hk1Jaklrubw2jHCz6YD3QZD3tNPMJGj24SIX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy89KaAkqzg7TOBE8DpB184A9LAFOJntLRxgZM/kMiswvkoBb4I
	Mevc6aUOQMwMIW1Wcc0XnjoW1DKVg0QQvY5/P5DT4hIntBMzHBsPQm+RC06fe3NocHw=
X-Gm-Gg: ASbGncuUanaRys3es2QmsoT40s9TRiWZ5tsoo4+HyHIwC8vtcxqaLA0YsyZ5R01fTuj
	FYwkMxXhXQ3v7jFVBsZt8+U5UOu+awYDwZsspum1TYEDUnGOfjlYrHIC9yx3iHJ+6D21DzrenqA
	V2tXco6v5pZizQo/xAhJy3cbGHq6UHYFtEuGOg3wGGQ0hJsL8QQx0bMlh0811yoVMUL7IMdqyod
	SD8/PjrZ6wgDiF1iy7ACWoviPUFmcedddrJvVEIlJmg5Vgi13VASIe64hDGyXg1hSauL26TqeXO
	Hb1wZfmV/XMVeiWoVPxEWE4NE2uypyLqVlzIMbsJz41e6cmuH/fgCw3sfdNQSw6csZu0L+a7QiG
	w6AKB8vPzu+22V/SOCqZI8pMbGV8=
X-Google-Smtp-Source: AGHT+IFnyjaFwClhoLHY4neCfFPtebMRcA0oo0I9v9S/4LgcQYnOgYL+PndxePy8fTJnbd4Y3QC13A==
X-Received: by 2002:a05:6000:440d:b0:3a5:8a68:b815 with SMTP id ffacd0b85a97d-3a6f2eb674bmr145165f8f.46.1750867017524;
        Wed, 25 Jun 2025 08:56:57 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e8051677sm4998091f8f.15.2025.06.25.08.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 08:56:57 -0700 (PDT)
Message-ID: <a6305f4b-27d5-496d-b3f8-eba958c49a84@linaro.org>
Date: Wed, 25 Jun 2025 16:56:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnects alphabetically
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
 <20250624094253.57441-2-vladimir.zapolskiy@linaro.org>
 <aa56b956-95f3-484d-8afa-058925b95bfd@kernel.org>
 <fff77f71-e21b-43b9-9da5-6cf819add970@linaro.org>
 <5a5b78f7-e156-4c5e-8407-b249040e227d@kernel.org>
 <c29385d4-30ea-4774-9cf9-699b08e29800@linaro.org>
 <329b89a4-85a9-496f-8b1b-6239dfc9057b@kernel.org>
 <930edec1-7403-4ecf-bb17-2e68b8d351f8@kernel.org>
 <e0eb8d55-b4fd-4f3b-94b0-5c56d48b4671@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e0eb8d55-b4fd-4f3b-94b0-5c56d48b4671@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/06/2025 15:07, Vladimir Zapolskiy wrote:
> On 6/25/25 10:01, Krzysztof Kozlowski wrote:
>> On 25/06/2025 08:58, Krzysztof Kozlowski wrote:
>>> On 24/06/2025 15:29, Vladimir Zapolskiy wrote:
>>>> On 6/24/25 15:04, Krzysztof Kozlowski wrote:
>>>>> On 24/06/2025 13:38, Vladimir Zapolskiy wrote:
>>>>>> On 6/24/25 13:10, Krzysztof Kozlowski wrote:
>>>>>>> On 24/06/2025 11:42, Vladimir Zapolskiy wrote:
>>>>>>>> Sort the entries of interconnect and interconnect-names lists in 
>>>>>>>> the
>>>>>>>> alphabetical order of values in the latter property.
>>>>>>>
>>>>>>> We do not sort these entries alphabetically and you did not 
>>>>>>> explain why
>>>>>>> you are doing this.
>>>>>>
>>>>>> I did it, because I assume that the preference is to sort all named
>>>>>> values alphanumerically.
>>>>>
>>>>> Where is such preference documented?
>>>>
>>>> There is no such preference documented, as I stated it was my 
>>>> assumption
>>>> and it was based on your firm insistance to apply a particular sorting
>>>> order for regs, clocks and interrupts properties. Apparently you are
>>>
>>> Hm? And the rule is by name? I don't think I ever expressed that or
>>> insisted on some sorting by name. During previous talks on camss
>>> numerous times you ignored the ONLY rule of sorting I was insisting:
>>> keep the same as all other devices. That was the one and only rule.
>>>
>>>> fine with out of the same sort order for 'interconnects' values, the
>>>> criteria of picked properties remains unclear for me.
>>>
>>> I don't understand why it is unclear. That time with Bryan you both
>>> received VERY CLEAR feedback from me: there is no such rule of sorting
>>> any values. Yet you were pushing the discussion and patchset like there
>>> was something.
>>>
>> Look, the first reply:
>>
>> https://lore.kernel.org/all/65e5796a-8b8d-44f0-aef4- 
>> e420083b9d52@kernel.org/
>>
>> "You are supposed to keep the same order, as much as
>> possible."
>>
>> What rule is unclear here?
> 
> At the moment of the given comment "the same order" was not "sorting by
> values", it was "sorting to address".
> 
> Check the next message right in the same thread:
> 
> https://lore.kernel.org/all/c1539cce-92eb-43fc-9267- 
> f6e002611bbb@linaro.org/
> 
> "We always sort by address". And that was the correct statement at
> the time of the discussion.
> 
> Did it help to "keep the same order" in any sense? No, the message was
> plainly ignored, and after the long discussion with you the sorting order
> has been brutally enforced to become the new "sorting by values" order,
> and to my sincere today's surprise there is no such rule. Apparently now
> I have to believe it was Bryan's and my voluntary and deliberate decision
> to change the sorting order, all right.
> 
>> Even more precise reply from me:
>>
>> https://lore.kernel.org/all/8f11c99b-f3ca-4501- 
>> aec4-0795643fc3a9@kernel.org/
>>
>> "I don't imply sorting by name is any better."
>>
>> And:
>>
>> "The only rule is that all
>> devices from same family type must have the same order."
>>
>>
>> And now you claim there was from me "firm insistance to apply a
>> particular sorting" in context of name?
>>
>> So again, my entire feedback repeated multiple times during that
>> discussion is totally ignored and twisted to some fake new rule of name
>> sorting.
>>
> 
> Thank you for the explanation, and not just your messages are ignored
> sometimes, it happens with anybody regularly.
> 
> -- 
> Best wishes,
> Vladimir

Lets put a cap on this discussion.

The direction is to follow what's already upstream.

---
bod

