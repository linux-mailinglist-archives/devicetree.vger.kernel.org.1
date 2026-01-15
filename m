Return-Path: <devicetree+bounces-255322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FFBD22316
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 03:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A66A2302413D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 02:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F7326CE2D;
	Thu, 15 Jan 2026 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OxSDLOBu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2886E224AF9
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768445546; cv=none; b=AeEFUzvil3kNDt6fgui/OV4dYm5K5n80OkvWn0juFFi8bvDWOzXpzw3fbELtOrcZS8/0RA5+rlLjwfdzMs4hZYZPHVIIW1MFMO7RqbqZoGin1ZQ2mQ/Kgd/DXiFk/Lk+Tx1bWjP+Xwu2uozSWOc3xdqvqE+j2ulsCXpT7hvmG7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768445546; c=relaxed/simple;
	bh=iRZ0hrbM7O/oESClUlsmrcN0/9Xc3Xcp5a9MYS1jd28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lkt//aHQ9SG4DP485zTiB6rCTQf5imuXkcVGU+x/1aGa8YNnsvwYN6fu+jkoE+pJkMWzFZda3UQK4pnqvyCbF+Av4ez4uA5b+/K/8Ox0AEfzuHfvQDV2RY5MIRr4VR5q625mmQCcc/FjA4Btx3bLlxMf7P+LZMGa69/1RbiLczw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OxSDLOBu; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2b04fcfc0daso609514eec.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 18:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768445544; x=1769050344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=COmQo6MYBxbtzUUO5u+0J0DNbfXimrmm1hv0MrGiH84=;
        b=OxSDLOBuv0JTW+ogwzW98Q2CsjWmVlyb/7w+OnfgUeWk5E3cv3/MmrKJTczKM1dCUI
         MEIOeuzTyFMxaPymTvnUn3IDiQd7ZFu94/PBTaEpyJOEdaZL5HAEASJXOW0wX+zLlNB6
         Y32OG4MUlFF8GHNoFQKMCOU/MmltH6yKU+q5MqpgYnytSQCvHXznG8xXX940RJDTHGMH
         kU8IMvnNwFinEjL3DITIqjKwc7oPhmj/LPH6wmbtUlSnKm2V2z3IzU9559czpkEDioHQ
         Yq3PQer2yU3e2OR/MV45PZDwKWT1jr0rEx8MDHqssnat/cR4TQqpU6F90f/3sQJHt+Vh
         C1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768445544; x=1769050344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=COmQo6MYBxbtzUUO5u+0J0DNbfXimrmm1hv0MrGiH84=;
        b=WOm2x91DF2uLAOmxWGU4LFi4+zqaEZo1fo7pzYWig93nZKovq1Z9K1Qd2B9mMrJ6ta
         bveek/HRkDP32wgEyuV61S5AZQ+nft1FNmJf1Cg/DoqY4dYp2SMOFwvAo2GgKpR8j7dr
         Oy/VqYa5r7BzydEs6THM0dk1AFOTTaC1K80ccj+ohiqf7FsS+GLwaSqQX4JZ91UhJvEv
         vVEIlMs/dpHluX1TnvXTJPJxT/PkPMHGJLMxs29KBub3EDcQrds86q52MAkkhQB7BE+w
         xoPNfpUGxF4I6Nzpn8TXoY26Gg0L740TDrhM2ylF/EJC+r6susC1A+O1Us9Q3+apvQ1Y
         cvLQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+oLE3NCuYEr9pprrtRAp4f73M0xHHqvBajjZ1Hl9L3fRd/4R4NFVfp2Jfl7LvCrsrdHUgnThi3Prq@vger.kernel.org
X-Gm-Message-State: AOJu0YwpfTA4tqMO/NwgeN3C/aU12P0YpSTCZrbIMjbKyNSZHDVT4lBX
	Gjfnq1cRKH3vZv8xH3GkXbZCmdM/r4TQRUhaj3VSY60RBzHIlpv8RSJ9ceOs1EB7ew==
X-Gm-Gg: AY/fxX7lfCBaRF6Q86I7R7JuERSCf6mXySfkBoE+eFtc2fK3dG2xxv9iwAMot5autgI
	Uisie+a+eT4dfBvCKobY7HFrpZ7AsfonOiyISI7Hl696DLAlvyGPPHGBh5xhZYFhTQoC13hYinC
	9Ac8IbbX3tpe3c/cbtpFzm+0fgMxLqesMtM/aYQxQGX7DmcaPbvLIkS1YbziVU8UdwQ1AAq2Gjm
	KswI/my9em5mFUJcY5/q7RQ0Uab7Cax7WVXCR3nY2kg3eeL9jPS5ixy/IGZLZoTBRMMYBN73IUJ
	ByoBKfizMPHTrDWBkOVOq7xTHIHE+6wUrMJY3TDsMM0E1nXUeHMi+f7ggCwj0xKEv7jVAZXGr4d
	+zkXflsuRk1tkZ7V9xqXOFfbOMBpTKkQAoCXQln1jUSFKDjTIQXZh8pC9meakZalp722cAag8Nl
	1bpK2zWJe2OTnk3FEyiz2BdlHmFXOl/P24VDA9k0TphUMmnUYKHOMPiMjBZ2x3Ra2Y/9F3zB6l2
	1vYlWuPfFXZLA==
X-Received: by 2002:a05:7300:f193:b0:2b0:4fe2:6a2e with SMTP id 5a478bee46e88-2b48f105131mr7217416eec.9.1768445543753;
        Wed, 14 Jan 2026 18:52:23 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:f3e3:a430:9ff4:7b84? ([2a00:79e0:2e7c:8:f3e3:a430:9ff4:7b84])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6a5a84333sm181261eec.27.2026.01.14.18.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 18:52:23 -0800 (PST)
Message-ID: <cf19ac63-c758-45d1-90c3-fe09f5567c64@google.com>
Date: Wed, 14 Jan 2026 18:52:21 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] power: supply: max77759: add charger driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
 <20251227-max77759-charger-v3-4-54e664f5ca92@google.com>
 <298ca35590d2180fdcf334f94964b6110e17c606.camel@linaro.org>
 <50c29a62-1fdb-4de2-8887-0d551eee5ec0@google.com>
 <255d7726-6758-43ed-b35f-db14726bcc9b@google.com>
 <2869d309358f27652289c40810ca36b2ec155d1d.camel@linaro.org>
 <bb9b9afa-0bfa-428e-9372-549d9ba8603c@google.com>
 <6b37b88e9b7ee57eb1c006916fd995c813ab5e6e.camel@linaro.org>
 <378ee786-2b44-44e7-a3f6-0cd1db3c0481@google.com>
 <48d52ef389ee0e878c36184efbfaa85071f5549a.camel@linaro.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <48d52ef389ee0e878c36184efbfaa85071f5549a.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 1/14/26 2:20 AM, André Draszik wrote:
> On Tue, 2026-01-13 at 16:47 -0800, Amit Sunil Dhamne wrote:
>> Hi Andre',
>>
>> On 1/13/26 2:02 AM, André Draszik wrote:
>>> Hi Amit,
>>>
>>> On Mon, 2026-01-12 at 11:37 -0800, Amit Sunil Dhamne wrote:
>>>> Hi Andre',
>>>>
>>>> On 1/12/26 5:47 AM, André Draszik wrote:
>>>>> Hi Amit,
>>>>>
>>>>> On Tue, 2026-01-06 at 17:14 -0800, Amit Sunil Dhamne wrote:
>>>>>> On 1/6/26 3:41 PM, Amit Sunil Dhamne wrote:
>>>>>>> Hi Andre',
>>>>>>>
>>>>>>> On 1/5/26 9:32 AM, André Draszik wrote:
>>>>>>>> Hi Amit,
>>>>>>>>
>>>>>>>> I haven't done a full review, but a few things caught my eye.
>>>>>>>>
>>>>>>>> On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 Relay wrote:
>>>>>>>>> diff --git a/drivers/power/supply/Makefile
>>>>>>>>> b/drivers/power/supply/Makefile
>>>>>>>>> index 4b79d5abc49a..6af905875ad5 100644
>>>>>>>>> --- a/drivers/power/supply/Makefile
>>>>>>>>> +++ b/drivers/power/supply/Makefile
>>>>>>>>> [...]
>>>>>>>>> +
>>>>>>>>> +static irqreturn_t irq_handler(int irq, void *data)
>>>>>>>>> +{
>>>>>>>>> +    struct max77759_charger *chg = data;
>>>>>>>>> +    struct device *dev = chg->dev;
>>>>>>>>> +    u32 chgint_ok;
>>>>>>>>> +    int i;
>>>>>>>>> +
>>>>>>>>> +    regmap_read(chg->regmap, MAX77759_CHGR_REG_CHG_INT_OK,
>>>>>>>>> &chgint_ok);
>>>>>>>> You might want to check the return value and return IRQ_NONE if it
>>>>>>>> didn't
>>>>>>>> work?
>>>>>>>>
>>>>>>>>> +
>>>>>>>>> +    for (i = 0; i < ARRAY_SIZE(irqs); i++) {
>>>>>>>>> +        if (irqs[i] == irq)
>>>>>>>>> +            break;
>>>>>>>>> +    }
>>>>>>>>> +
>>>>>>>>> +    switch (i) {
>>>>>>>>> +    case AICL:
>>>>>>>>> +        dev_dbg(dev, "AICL mode: %s",
>>>>>>>>> +            str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_AICL));
>>>>>>>>> +        break;
>>>>>>>>> +    case CHGIN:
>>>>>>>>> +        dev_dbg(dev, "CHGIN input valid: %s",
>>>>>>>>> +            str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHGIN));
>>>>>>>>> +        break;
>>>>>>>>> +    case CHG:
>>>>>>>>> +        dev_dbg(dev, "CHG status okay/off: %s",
>>>>>>>>> +            str_yes_no(chgint_ok & MAX77759_CHGR_REG_CHG_INT_CHG));
>>>>>>>>> +        break;
>>>>>>>>> +    case INLIM:
>>>>>>>>> +        dev_dbg(dev, "Current Limit reached: %s",
>>>>>>>>> +            str_no_yes(chgint_ok & MAX77759_CHGR_REG_CHG_INT_INLIM));
>>>>>>>>> +        break;
>>>>>>>>> +    case BAT_OILO:
>>>>>>>>> +        dev_dbg(dev, "Battery over-current threshold crossed");
>>>>>>>>> +        break;
>>>>>>>>> +    case CHG_STA_CC:
>>>>>>>>> +        dev_dbg(dev, "Charger reached CC stage");
>>>>>>>>> +        break;
>>>>>>>>> +    case CHG_STA_CV:
>>>>>>>>> +        dev_dbg(dev, "Charger reached CV stage");
>>>>>>>>> +        break;
>>>>>>>>> +    case CHG_STA_TO:
>>>>>>>>> +        dev_dbg(dev, "Charger reached TO stage");
>>>>>>>>> +        break;
>>>>>>>>> +    case CHG_STA_DONE:
>>>>>>>>> +        dev_dbg(dev, "Charger reached TO stage");
>>>>>>>>> +        break;
>>>>>>>> Are the above debug messages really all needed?
>>>>>> I forgot to respond to this comment in my previous email.
>>>>>>
>>>>>> I think we can keep AICL, BAT_OILO, INLIM. They're either special
>>>>>> conditions (AICL) or faulty conditions (like BAT_OILO) and we can in
>>>>>> fact keep them at dev_info level. Rest can be removed and a
>>>>>> power_supply_changed() is sufficient.
>>>>>>
>>>>>> Let me know what you think?
>>>>> I don't think dev_info() in an interrupt handler is appropriate. At
>>>>> least it should be ratelimited.
>>>>>
>>>>> If it's something special / unexpected that needs attention, having
>>>>> a dev_dbg() message only will usually not be visible to anybody.
>>>> I agree. I can change the prints to dev_info_ratelimited for the stuff
>>>> we care about.
>>> If it's an erroneous condition, maybe warn or even err are more appropriate?
>>>
>>> But then, what is the expectation upon the user observing these messages?
>>> What can or should they do? Who is going to look at these and can do
>>> something sensible based on them?
>> The logging will help in postmortem analysis which may or may not
>> possible with just publishing uevents to userspace hoping that they log
>> the psy properties. Illustrating a situation:
>>
>> 1. Over current situation happened where the Battery to System current
>> exceeds the BAT_OILO threshold. This would also generate an interrupt.
>>
>> 2. The MAX77759 takes protective measures if the condition lasts for a
>> certain specified time and reset. Resetting will cause Vsys to collapse
>> to 0 if the system is only battery powered.
>>
>> 3. It'd be better that the BAT_OILO interrupt is logged in dmesg,
>> instead of just delegating it to user space as user can debug this
>> condition by looking at last_kmsg or pstore.
>>
>> 4. This signal can help the user debug conditions such as moisture (this
>> signal + contaminant detection) or indicative of a mechanical failure.
>>
>> I do agree though that this is a hypothetical or very rare situation and
>> if you have a strong opinion against this I am okay with removing the
>> prints completely.
> Thanks for details. OK, they sound useful in this case, but should still
> be warn, not dbg.

Sounds good, will fix.


>>
>>> Also, I just noticed there is a max77705 charger driver. It seems quite
>>> similar to this one, maybe it can be leveraged / extended?
>> Thanks for the feedback. I reviewed the max77705 charger driver. .
>>
>> Here is a breakdown of why I believe a separate driver may be a better
>> approach:
> [...]
>
> Thanks for the analysis, I agree with your conclusion. Mainly I noticed that
> as part of AICL interrupt handling that driver does a bit of work, while here
> we don't. I am wondering if that is applicable here is well.

I double-checked the downstream drivers and datasheet. There exists no 
issue or WAR for max77759. Also, in case of max77759, the current 
limiting will be driven by the hardware and there's no need for software 
intervention. In case of max77705, the driver is explicitly reducing the 
current limit (in max77705_aicl_irq()), implying that hardware is just 
notifying the software to limit current due to (say) poor quality power 
source.


BR,

Amit

>
> Cheers,
> Andre'

