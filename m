Return-Path: <devicetree+bounces-251408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E66CF2C98
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15DA6307764E
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A861C335070;
	Mon,  5 Jan 2026 09:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeMHuG5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A2D33506E;
	Mon,  5 Jan 2026 09:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603964; cv=none; b=eMtY/IUuJ7JqqkuLgpKWDUU3pAlbkEbeVi+cHLz96puqDjyDk+r54wyotFvEMDsu+bORJA/1iy8UX8CTAyYzjmNTkEfGLkPJaLWuabqeqjob+Yz4kdRnxKAIh4Y+sRzMypjaOU7M9NF4rOKAhX2t18xKJN06+qnohE1C6YrCeSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603964; c=relaxed/simple;
	bh=PIUAxzm6ZXlE1kyz9ABajDveVbl+5hOSYiaXnizUZcA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JNDy66ld4HrKyomHxC9/nJiVfw1m6MOXlhGNpr9ohp2RcKMsWA3Uv7fRTLi3fsGXtG8IklXfbVhUcsXMbV/p4kV1wyuedkJxFyWfyxvUeSix8hXXdg4Wo1qaUvbIhEfgagx3OcQl0XuTtk0rMLfzOa9pA6q5DYlMt59oEv36aKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeMHuG5Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AFACC4E694;
	Mon,  5 Jan 2026 09:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767603963;
	bh=PIUAxzm6ZXlE1kyz9ABajDveVbl+5hOSYiaXnizUZcA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oeMHuG5QJpnkdebai3T5unWtYHvukCc5t39w0lkr9Qle0ljCPPxYs1h6NML8S3eHR
	 UUF7YhhbrtjTVTi1i8qEdP6Cnhu/ZsXV3ZVUakpmZHBpla5HcLSFzt+SG9HhNwk6Qf
	 4RjfyP3tXDuzU2hxveci/DQ3ImKLj8wQhM8iipCK/YeR/qvTWvuWcmJBCq3uaOZTHr
	 Q9vpSmwILfn0olVptPoChyyBgJ1XmS9P5Z9U36Jto/pcbixEYzE18VaZMmVkkmSLkP
	 uIvcLvk4vcpdyHNTa0whwSmAy+FwasFk3SNeSSeToru+D+gP5PNCoO0leKPbwlOxh4
	 G1byazgOne/Ww==
Message-ID: <63454553-01df-4c40-aad3-7ea64bef685e@kernel.org>
Date: Mon, 5 Jan 2026 10:05:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW1BBVENIIHYzIDEvMl0gZHQtYmluZGluZ3M6IGFy?=
 =?UTF-8?Q?m=3A_cix=3A_add_OrangePi_6_Plus_board?=
To: Gary Yang <gary.yang@cixtech.com>
Cc: Peter Chen <peter.chen@cixtech.com>, Fugang Duan
 <fugang.duan@cixtech.com>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-cix-kernel-upstream@cixtech.com"
 <linux-cix-kernel-upstream@cixtech.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260104075400.1673101-1-gary.yang@cixtech.com>
 <20260104075400.1673101-2-gary.yang@cixtech.com>
 <20260105-excellent-uakari-of-joy-f0dfa4@quoll>
 <PUZPR06MB588755A9FB6B42AAA870E30BEF86A@PUZPR06MB5887.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <PUZPR06MB588755A9FB6B42AAA870E30BEF86A@PUZPR06MB5887.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/01/2026 09:49, Gary Yang wrote:
> Hi Krzysztof:
> 
> Thanks for your comments
> 
>> EXTERNAL EMAIL
>>
>> On Sun, Jan 04, 2026 at 03:53:59PM +0800, Gary Yang wrote:
>>> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
>>> processor + NPU processor,integrated graphics processor, equipped with
>>> 16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for
>>> NVMe SSD,as well as SPI FLASH and TF slots to meet the needs of fast
>>> read/write and high-capacity storage
>>>
>>> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/cix.yaml | 11 +++++++++--
>>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/cix.yaml
>>> b/Documentation/devicetree/bindings/arm/cix.yaml
>>> index 114dab4bc4d2..9e132e609b7b 100644
>>> --- a/Documentation/devicetree/bindings/arm/cix.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/cix.yaml
>>> @@ -16,9 +16,16 @@ properties:
>>>    compatible:
>>>      oneOf:
>>>
>>> -      - description: Radxa Orion O6
>>> +      - description: Radxa Orion O6 board
>>>          items:
>>> -          - const: radxa,orion-o6
>>> +          - enum:
>>> +              - radxa,orion-o6
>>> +          - const: cix,sky1
>>> +
>>> +      - description: Xunlong orangepi 6 plus board
>>> +        items:
>>> +          - enum:
>>> +              - xunlong,orangepi-6-plus
>>
>> Previous patch was correct, not this one.
>>
>> <form letter>
>> This is a friendly reminder during the review process.
>>
>> It looks like you received a tag and forgot to add it.
>>
>> If you do not know the process, here is a short explanation:
>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
>> of patchset, under or above your Signed-off-by tag, unless patch changed
>> significantly (e.g. new properties added to the DT bindings). Tag is "received",
>> when provided in a message replied to you on the mailing list. Tools like b4 can
>> help here. However, there's no need to repost patches *only* to add the tags.
>> The upstream maintainer will do that for tags received on the version they
>> apply.
>>
>> Please read:
>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/sub
>> mitting-patches.rst#L577
>>
>> If a tag was not added on purpose, please state why and what changed.
>> </form letter>
>>
>> Read last sentence and linked documentation. Where did you explain
>> ignoring/dropping my tag?
>>
> 
> Yes, the previous version was acked by you before.

I stressed what I expect twice. In form letter and later explicitly. You
still ignored it.

> 
> When apply it, we found that orangepi 6 plus and Radxa Orion O6 belongs the different boards.
> 
> So we need to add a new item for it. Like these from qcom.yaml
> 
>       - description: Qualcomm Technologies, Inc. Distributed Unit 1000 platform
>         items:
>           - enum:
>               - qcom,qdu1000-idp
>               - qcom,qdu1000-x100
>           - const: qcom,qdu1000
> 
>       - description: Qualcomm Technologies, Inc. Radio Unit 1000 platform
>         items:
>           - enum:
>               - qcom,qru1000-idp
>           - const: qcom,qru1000

No, look at SoCs. Different SocS.


Best regards,
Krzysztof

