Return-Path: <devicetree+bounces-189528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E3AAE81E8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF1C2170E58
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C223525CC51;
	Wed, 25 Jun 2025 11:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="W+MlwwoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF6F258CD3
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852100; cv=none; b=pw/XG+xh+pZiujktxvX84PWZbJBlt7MqoAmw2GKqBJxFZlzzbotC/z5+fp7L2gZsHk6VOAyDT1cLdXb5uKeTm++svBWld9IBHs4NoirZyOF9lfLgbxIyBi2QQvHXhC3UwWTgubTMloX1dqxTAWohjXoGR2+0rc8Sfl3AGk9jD78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852100; c=relaxed/simple;
	bh=iubtQzSGaL5IT9evDDu/ispcoI51l6N0oykEk0q0Lgo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sEMA93RIk56Pwn4LcXnaoETKTy1B5cuqR37N1W2FdlQPG7MJTOsjnE4aK+Xy1DDHtYvOTyMpeIDTN1Mh4lPGYo5BHO7nM0eKVNi0e+AYhWAReBBuk6PY1sZzA+iZtnyXxr3BP04lKkKpEeZf+oxpi4eiGFAAyC54WTkP9j1GtII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=W+MlwwoE; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-875b52a09d1so177529739f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750852098; x=1751456898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JkGM3U0bOIiDIPecsvnKSmSyDzqRmOLHZH3WgTAbQFY=;
        b=W+MlwwoEOYPlMkT0256gbkrB899XrAwda2NIA2fdHwI22H2Y6KLi2ROKVVCKKuCMTC
         9k8pA7uwWLvKOexvwP0rpXUp1xiDUQ1DZ+uqVA7dOieY0iReFR0kdjaX889Nd+uLBwYz
         lIyc5bH6cMMO5u1VmoTJtKKHA742wEeQkYV6ACeG2ASMOEm8T3c8eMLf6KxSPaCwZcm0
         k/jwx7qjA5p8N9NiFVHxgNAxUDJW46Z4aoibPXIMBx3AQ659zjj9vFJxBovQtGZDTnDT
         adtl4fQuD6os5z+rUQksmdn6rpY2Td5mGsSzZ8efyTq8S+8rRWte2jPNvUxq9L3k9sIA
         8exA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852098; x=1751456898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JkGM3U0bOIiDIPecsvnKSmSyDzqRmOLHZH3WgTAbQFY=;
        b=UCNd8Ub68jeaV+vs01CPf+Tz+9W9AiP1CIdLEiOI4LQp6+RCSv0W95685RXci+LdkI
         7TfXqgGVIFpF2/IBBJCKMjbpGe3H+OAnPhcsXItIx1xhKVNXMqilDMl9WQaXj4uxes57
         kcK94tqDSNrlk07LWTeZhRxLxD7LmDYCHPlL3rRMaoypd8zvf1q6HUcCqJ2x5n7aUzPJ
         FwiEj6Vvj4jeFv8lSQBuMHrSmozrzz7p4n20v5+x5tIUQe0iQjgVUNR5wB81APEFyShs
         45A+n+b0VcV1z7uvuHHHPcYJs8Cge8LIHEOQyjStHmfmJE3JaNu3FLMmCt1B1ZEGkGp0
         LamA==
X-Forwarded-Encrypted: i=1; AJvYcCUby9y/7yqN01vGTFMmXoUmqKKSyV6zoleXpH9ICT9EdVxHzcRSdkwBiHbXYkbPqSotWOTRBs/S7H6w@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ9PAIDaKgLk3j6aA8OIthCn2yqYavpM0e1VM5bZuFIptasBz9
	so9pxEnjEHKRqWRdij2N3fRXxG4iTAKmnLGTOXlNgfH2oRCl+Lu1Lv8fGNMIkQZqE4o=
X-Gm-Gg: ASbGnctXr934E2vWzY/cKYiejuoq20yq6jcjAZStWjjsHwqLJ93wIWTWgO89dyBKc2l
	/lYPYQzWhBLnEPyYJG3K9ZsgTaSEqKT5LiJkSdaXyTHSYGmuds1VMFsLYv9pJpjSncTtS9CEJPw
	yFIXsY9GePWnF9YAKJcAJShxGP1Yhc2okX8UAtPYj7VT1rvDOHXnhcaGdd+HfVaBTa0AN3Tv6wz
	v+oEYOmue4ogKaYFg1kJgcUpct0WClM4VuRqh/Njra52fS6gdqI8l8BT7ASC5LHOA3FPh2cL9wd
	PJSj5aeJBZGNSBdSAbS+gVhXlDOo0G7CSjDhjed2gaIN6jcMJ0S/rqsjMNTT01Zj3w2RNPp6moI
	Hnazuus5iASgulfdoX56NRdLkVQ==
X-Google-Smtp-Source: AGHT+IGF27PdZyeg1EvX94pFQxAflTBu48c8D8WbPdR0KPQVaTt6mijyvklij71b/3o9/nVYsvtdaA==
X-Received: by 2002:a05:6e02:2389:b0:3dd:8663:d19e with SMTP id e9e14a558f8ab-3df32936eb5mr24619895ab.10.1750852097696;
        Wed, 25 Jun 2025 04:48:17 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de37618a92sm45180245ab.2.2025.06.25.04.48.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:48:17 -0700 (PDT)
Message-ID: <5005ba79-d5a5-4d6f-ab0c-4df51407a549@riscstar.com>
Date: Wed, 25 Jun 2025 06:48:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] mfd: spacemit: add support for SpacemiT PMICs
To: Lee Jones <lee@kernel.org>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, troymitchell988@gmail.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250613210150.1468845-1-elder@riscstar.com>
 <20250613210150.1468845-3-elder@riscstar.com>
 <20250619144023.GG795775@google.com>
 <8126de92-0338-4cd0-98fc-4f8c37500201@riscstar.com>
 <20250625082149.GO795775@google.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250625082149.GO795775@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/25/25 3:21 AM, Lee Jones wrote:
> On Fri, 20 Jun 2025, Alex Elder wrote:
> 
>> On 6/19/25 9:40 AM, Lee Jones wrote:
>>> On Fri, 13 Jun 2025, Alex Elder wrote:
>>>
>>>> Add support for SpacemiT PMICs. Initially only the P1 PMIC is supported
>>>> but the driver is structured to allow support for others to be added.
>>>>
>>>> The P1 PMIC is controlled by I2C, and is normally implemented with the
>>>> SpacemiT K1 SoC.  This PMIC provides six buck converters and 12 LDO
>>>
>>> six or 12.  Please pick a format and remain consistent.
>>
>> "Numbers smaller than ten should be spelled out."
> 
> Never heard of that before Googling it.  Formal writing is odd. :)
> 
>> But I'll use 6 and 12.

. . .

>>>> +/* The name field defines the *driver* name that should bind to the device */
>>>
>>> This comment is superfluous.
>>
>> I'll delete it.
>>
>> I was expecting the driver to recognize the device, not
>> the device specifying what driver to use, but I guess
>> I'm used to the DT model.
> 
> Even in DT, the *driver* compatible is specified.
> 
>    .driver.of_match_table->compatible

I guess I just interpret that differently than you do.  I think
of the device compatible string as saying "this is what I am,"
much like a VID/PID in USB or PCI.

Then the driver's of_match table says "if a device claims to
be compatible with any of these it should be bound to me."

Meanwhile, the MFD device method has the device (cell) saying
"I should be bound to the driver having this name."

>>>> +	/* We currently have no need for a device-specific structure */
>>>
>>> Then why are we adding one?
>>
>> I don't understand, but it might be moot once I add support
>> for another (sub)device.
> 
> There are 2 rules in play here:
> 
>    - Only add what you need, when you need it
>    - MFDs must contain more than 1 device
> 
> ... and you're right.  The second rule moots the first here.

What the comment meant to say is "we have no need to kzalloc()
any special structure here" as most drivers do. Simply adding
the set of MFDs defined by the cells is enough.  The same is
true in "simple-mfd-i2c.c".

But this entire source file is gone now, so it's moot for that
reason.

. . .

>>>> +static const struct of_device_id spacemit_pmic_match[] = {
>>>> +	{
>>>> +		.compatible	= "spacemit,p1",
>>>> +		.data		= &p1_pmic_data,
>>>
>>> Ah, now I see.
>>>
>>> We do not allow one data from registration mechanism (MFD) to be piped
>>> through another (OF).  If you have to match platform data to device (you
>>> don't), then pass through identifiers and match on those in a switch()
>>> statement instead.
>>
>> I haven't done an MFD driver before and it took some time
>> to get this working.  I'll tell you what led me to it.
>>
>> I used code posted by Troy Mitchell (plus downstream) as a
>> starting point.
>>    https://lore.kernel.org/lkml/20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com/
>>
>> Krzysztof Kozlowski made this comment on Troy's DT binding:
>>    Drop compatible, regulators are not re-usable blocks.
>>
>> So my goal was to have the PMIC regulators get bound to a
>> driver without specifying a DT compatible string, and I
>> found this worked.
>>
>> You say I don't need to match platform data to device, but
>> if I did I would pass through identifiers.  Can you refer
>> me to an example of code that correctly does what I should
>> be doing instead?
> 
> git grep -A5 compatible -- drivers/mfd | grep -E "\.data = .*[A-Z]+"
> 
> Those identifiers are usually matched in a swtich() statement.

OK now I see what you you're talking about.  But these
compatible strings (and data) are for the PMIC.  I was
trying to avoid using compatible strings for the *regulators*,
based on Krzysztof's comment.  And in the process I learned
that the MFD cell needs to specify the name of a driver,
not a compatible string.

>> One other comment/question:
>>    This driver is structured as if it could support a different
>>    PMIC (in addition to P1).  Should I *not* do that, and simply
>>    make a source file hard-coded for this one PMIC?
> 
> This comes back to the "add only what you need, when you need it" rule.

Yes, and I agree with that rule.  Thanks for your clarifications.

Using simple-mfd-i2c.c is much better.  I was surprised (and I guess
pleased) to see that it was almost *identical* to what I came up with.

					-Alex
. . .

>>>> +module_init(spacemit_pmic_init);
>>>> +module_exit(spacemit_pmic_exit);
>>>
>>> Are you sure there isn't some boiler plate to do all of this?
>>>
>>> Ah ha:
>>>
>>>     module_i2c_driver()
>>
>> Thanks for Googling that for me.  And thank you very much
>> for the review.
> 
> `git grep` is my bestie! =:-)
> 


