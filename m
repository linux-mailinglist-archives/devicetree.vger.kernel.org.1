Return-Path: <devicetree+bounces-242598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF81C8CCAB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 05:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9160B3B1C31
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 04:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C812D641F;
	Thu, 27 Nov 2025 04:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eIZBMn1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D6C3A1CD
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 04:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764216943; cv=none; b=Q7rQp6SgSPZuShGXBWlAfHYZrHv1HxWrc8RYMgzDVNOuRTQgsU6eI4hJCPhb1yCNxcDONidaMvjglLGm+VtOr5J/RJ94ZfikNvnbMjetJRUsPY/KH8JRqw6svePFWN1HDfuAP8tJywMiMy/UQqbbrVrOiFScP3G5ZPvrFW9YIeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764216943; c=relaxed/simple;
	bh=JGo7Z1jibLQxReWr7ufYyOjlW5ky5THyGr654nH0moM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BOv4LEvbq/HgnitLjrA6BMITbekxjGqmtmgIuUYSQRJ2crmm2bZuxr9MZDy0mtgCQdxlK+f+/EluqDazpnrQxGoqSQ52LA/8lv9dqc+WsZMCI9xrqqxTCnoI62h8ZNruPJ8tkr16Tpf5MewJLSGd4kFqzXxNLBk5xS6fQ43MNh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eIZBMn1n; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bc8ceb76c04so332201a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 20:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764216941; x=1764821741; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TkXUCD/sfJEqbYrrabHICoE25LMTNly9IBUsbDSuWOk=;
        b=eIZBMn1nKLWpkamsDw6L7R0yM13dNgW4476aY3Iigcyh6OKAOd6G52zvJV8Frmlwtz
         A9LT6/eH7mZgkYV3foIeFRPJcnL7n+ps34yqap+3E7kRvK735z+vcB3NyBawp97VVCd5
         MrlxWGMuj1nulSePGsF7KOxJKjgEomm1iKYjebDK6IWN1xIUZ6qQ2nL01q5tUljRN+RI
         i36C4bbVxLIPaZKWO0aFyCKEEJmxby+Ioe7Bxow/PUtDF0XfzosdicnTwGJkb+DBqbPu
         KhQbEF80UDLsgxVml9caGXvjhKo99xV9Q2XzA0YkhZ3MGlqZ8MSImogM7G/EB8SHv2PH
         M3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764216941; x=1764821741;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkXUCD/sfJEqbYrrabHICoE25LMTNly9IBUsbDSuWOk=;
        b=QvcvZbFUEUgli34PJj0D7mgoW+hMx0fWbf9bWXmSGnx5Z20LZqNGBNfZMehNKxE/bG
         QXVzOISll0SafGBx/7+7+RNKapkGdjvhY7gBIw8ID1xzvdAroFLH2lsT2eUfOA9JNRCL
         GO2LkhUmiH173OpygaLAAEKWkzgeoEZHob8zSt3kRn/dKrYQDtBGGlKaQikY6oVXUnOf
         Eb0No1Nvu7UBWV34Sxx0QbEbMY1sFsSWaMZeDjjCXokCZYeZW2EeHyylI33qjvgBU/bp
         oQDiKrfsZRNXUBALP9Xi4s4kSDda+oMgLFHMdbO/gcxiuuXnRz1O4aBG4HRA8G3Av9Fw
         qgyw==
X-Forwarded-Encrypted: i=1; AJvYcCW+oF6wJkTOJ8gN9I8CtvLBQ7IHg+RQAD6fvtHgDyOg32yP4gBX0/BZ2eMErLwrEhS2yWThPOVmby1z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6czNCMM2c5Pk7YANEW/By39UJtWFOzml8g5owPG3GhDSQOMrX
	jXEd5SRRdKQ8NYCPiicJRX/ubwwYx7GqhfSY8/hi3uDQWMEO7Qt3AKH/+Tp0b0cEyw==
X-Gm-Gg: ASbGncvgw426LIYDlw4iiVAVpeYaxmFCLXTIcVhBT9KpETwaqvwSmfFpewivq4Ax9Mh
	SSp74bP3c3fre17Wd8bVCPzO/zSrk+jr36Yk0br/tNMNdsRtV3uE4U+Q0qHlbVI1eOJoy/jhb9b
	3uz+rmbq5QbBS4JjcO4277qk6Wd3r4JlRWC+czMtDo3LB5wJDis5ruzvHBHsUgW00mIZdC8yuro
	w4TVcZw2fCw/kBcWlRkC4kXQGRusOGGHvUgLL7ba7g06YOQxpvH89Mrz01Qe64rfszCeUKs9ahG
	PULlcn4kohLHnpGbIDBCMbQparBxZTwwvdKU1WcNhQmD6Q+ipBWG4sLwXI3pr60UaHTarQEqbbu
	M2tOSO674yfcFbD+dTchZfA8/yFTQdMnq5c/FgAnqAPORIdDefsl0PQHjdw+K6Wsjwqie8IZghc
	R2njVtGGbMTKzMEZ5f2KXncqMlqhM7lB+G0WjBV10NGeafQby/XmHmK1yfJOdMD0yQjFkW9XN00
	MELWImfld+JzA==
X-Google-Smtp-Source: AGHT+IGdB7ijJFvVK8Snhgzlb9iXXr21271jtHTPlPGlAm0Ty7r+mUpMoHeF2HI52zomvLA2TJb3xQ==
X-Received: by 2002:a05:7300:d405:b0:2a4:3593:c7d6 with SMTP id 5a478bee46e88-2a7195cb23fmr12999898eec.22.1764216940215;
        Wed, 26 Nov 2025 20:15:40 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c116:b1c9:632d:a902? ([2a00:79e0:2e7c:8:c116:b1c9:632d:a902])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a965b47caasm2419198eec.6.2025.11.26.20.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 20:15:39 -0800 (PST)
Message-ID: <6f2f075b-3570-4424-9cc7-695fb8c3b988@google.com>
Date: Wed, 26 Nov 2025 20:15:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] mfd: max77759: modify irq configs
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
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-4-6b2e4b8f7f54@google.com>
 <5c901a6c831775a04924880cc9f783814f75b6aa.camel@linaro.org>
 <aa7bdeb1-c8a9-4353-af56-869f16a083c2@google.com>
 <e25ff0e5ff103433942fc7744eea4a3c61ce1daf.camel@linaro.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <e25ff0e5ff103433942fc7744eea4a3c61ce1daf.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 11/25/25 10:44 PM, André Draszik wrote:
> Hi Amit,
>
> On Tue, 2025-11-25 at 17:10 -0800, Amit Sunil Dhamne wrote:
>> Hi André,
>>
>> On 11/23/25 10:21 PM, André Draszik wrote:
>>> Hi Amit,
>>>
>>> Thanks for your patches to enable the charger!
>> Ack!
>>
>>
>>>> From: Amit Sunil Dhamne <amitsd@google.com>
>>>>
>>>> Define specific bit-level masks for charger's registers and modify the
>>>> irq mask for charger irq_chip. Also, configure the max77759 interrupt
>>>> lines as active low to all interrupt registrations to ensure the
>>>> interrupt controllers are configured with the correct trigger type.
>>>>
>>>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>>>> ---
>>>>    drivers/mfd/max77759.c       | 24 +++++++++++++++++-------
>>>>    include/linux/mfd/max77759.h |  9 +++++++++
>>>>    2 files changed, 26 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/mfd/max77759.c b/drivers/mfd/max77759.c
>>>> index 6cf6306c4a3b..5fe22884f362 100644
>>>> --- a/drivers/mfd/max77759.c
>>>> +++ b/drivers/mfd/max77759.c
>>>> @@ -256,8 +256,17 @@ static const struct regmap_irq max77759_topsys_irqs[] = {
>>>>    };
>>>>    
>>>>    static const struct regmap_irq max77759_chgr_irqs[] = {
>>>> -	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_1, 0, GENMASK(7, 0)),
>>>> -	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_2, 1, GENMASK(7, 0)),
>>>> +	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_1, 0,
>>>> +		       MAX77759_CHGR_REG_CHG_INT_AICL |
>>>> +		       MAX77759_CHGR_REG_CHG_INT_CHGIN |
>>>> +		       MAX77759_CHGR_REG_CHG_INT_CHG |
>>>> +		       MAX77759_CHGR_REG_CHG_INT_INLIM),
>>>> +	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_2, 1,
>>>> +		       MAX77759_CHGR_REG_CHG_INT2_BAT_OILO |
>>>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CC |
>>>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CV |
>>>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_TO |
>>>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_DONE),
>>>>    };
> You should also add the remaining bits in each register here, so that the
> regulator-irq can mask them when no user exists. It will only touch the
> bits it knows about, so the state of the mask register is non-
> deterministic with this change as-is (depends on how the bootloader
> configured it).
>
> [...]

I see what you're saying. I will remove this and keep it the way it was 
before.


>
>>>
>>>> diff --git a/include/linux/mfd/max77759.h b/include/linux/mfd/max77759.h
>>>> index c6face34e385..0ef29a48deec 100644
>>>> --- a/include/linux/mfd/max77759.h
>>>> +++ b/include/linux/mfd/max77759.h
>>>> @@ -62,7 +62,16 @@
>>>>    #define MAX77759_CHGR_REG_CHG_INT               0xb0
>>>>    #define MAX77759_CHGR_REG_CHG_INT2              0xb1
>>>>    #define MAX77759_CHGR_REG_CHG_INT_MASK          0xb2
>>>> +#define MAX77759_CHGR_REG_CHG_INT_AICL          BIT(7)
>>>> +#define MAX77759_CHGR_REG_CHG_INT_CHGIN         BIT(6)
>>>> +#define MAX77759_CHGR_REG_CHG_INT_CHG           BIT(4)
>>>> +#define MAX77759_CHGR_REG_CHG_INT_INLIM         BIT(2)
>>>>    #define MAX77759_CHGR_REG_CHG_INT2_MASK         0xb3
>>>> +#define MAX77759_CHGR_REG_CHG_INT2_BAT_OILO     BIT(4)
>>>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CC   BIT(3)
>>>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CV   BIT(2)
>>>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_TO   BIT(1)
>>>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_DONE BIT(0)
>>> Even if wireless out of scope, it'd still be nice to add macros for
>>> the remaining bits to make this complete and avoid having to update
>>> these again in case wireless support gets added in the future.
>> I would prefer to only define the macros I am currently using to keep
>> the review focused, unless you consider this a strict requirement.
> It makes sense to add them now, as per above.

Okay. I will add them.


>
>
>
>>> Also, would be nice to keep existing style and indent the bits from
>>> the registers (see existing bit definitions in this file a few lines
>>> further up).
>>> Finally, can you add the bits below the respective register (0xb0 / 0xb1)
>>> please, to keep suffix meaningful, and to follow existing style for cases
>>> like this (see MAX77759_MAXQ_REG_UIC_INT1).
>> I will fix the indentation and ordering in the next revision.
>>
>> Regarding bit definitions: In [PATCH 5/6], the max77759_charger.c driver
>> defines bits for the register addresses defined in this file. Currently,
>> those macros are only used locally by the max77759 charger driver. Would
>> you prefer I move those definitions to this header file as well?
> Yes, would be nice to have them all in one place (in this file). That said,
> CHG_INT, CHG_INT_MASK, and CHG_INT_OK all have the same layout and share
> the same bits, so I personally would probably reuse the ones you added for
> INT for all three of them - MASK (as you did already), and also for the OK
> register. But up to you.

Sounds good.


Thanks,

Amit

> Cheers,
> Andre'

