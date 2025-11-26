Return-Path: <devicetree+bounces-242182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1665EC87A50
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D7E6D4E0717
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60DC2F39B1;
	Wed, 26 Nov 2025 01:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nklmkAs7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D877083C
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764119405; cv=none; b=tY3NOm5os0FPr1roG91WtHf/PpTZL723qxG7SBgdQ8uTMZBl96xkIAGt6m96n0+dYVFdund78Ce89Up47jHKRtRzlMq0P0nBCCBwglT3SI2qiSSyWvao+/f/gKzaSo/h5hw6uSmYEnvD+RD5K3I1lsGxxrsJScdRd4N+AGs7spU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764119405; c=relaxed/simple;
	bh=7JSwRjVY7+7OLgODPV18aJxzmBQ1LQ3WuDOx/jYCwjY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r1umvXrPRaB17WMlA1PdOiUA9jVugSnHGf2wTQ445+ha/O5HgMm+Gmx/qrNJXTsAQPaY9w8Gp/EBdl98ljiKfL4+y1M1QNpOrd7JCTNIhp7I9uyttv98b8gBBAYgtt1if+gF9fIN9wDT5c6yEg7sexTR2gly5/ugGyfJhSQyfyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nklmkAs7; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7ba55660769so5336156b3a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764119403; x=1764724203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4uKMid7mHBul9Q0TO4PibzdXQbMZDvFms1DpBKwMu7E=;
        b=nklmkAs7aK43rwIFPnA7lQWZWTBbVq6a1x+JFsE3KmqrhfzEN3HmtMas9dQwgkw1yw
         9NhombBqQTQXyn+haoVU4SWU/Y5x/tkIgGZFIy5WpIxi8EnMXIg5QcoWWliIdX77tQck
         LB97D9ua4TeJYpgqpMur7DLc4j0r0xZ2/k1EwYzWdbn+2iok5IsukiqMm7EklVkKPklY
         IxGvo3LfykPm1jrZmInC7TMzeOyz14XO+5+yy1gUrWv7MJXujkOArLw7/HUAAn6UQGEo
         IWP5CT4I5x66dsMBcTGcSpA+1VJHwF9NTF0TdLqHAaTPpdrDk7rGw/RI5+yIZ01Azak8
         X00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764119403; x=1764724203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4uKMid7mHBul9Q0TO4PibzdXQbMZDvFms1DpBKwMu7E=;
        b=b9PSBbSwOUzHclno6GbHDbGKD8S7wwJUPe67BndemZJYDEGgar85d9zezdhs5qy2nv
         U3IiaqjfJk4U85jZqluVwFKg2HokdEx1LrByB8cRpi0j3Vj4UqNRSRTe3gM0SX3kJzKh
         KFnMlKny4ZkRy2CiU70lqa5L8PrOUTLkF8rLTOQWWsPiFgnaD59iAxixTglgxJMzHKDv
         sizzMEZZCqi7rjN6IWUHQEbYLUCTVZ9SkCLTU5x0o7GJT13OeuTG9niRAMxiXjtwM4y0
         rQkZBPYkWT6nW14Pd12ZhD/iWI0k3JSNeURyzvELh9rMyaXMxIaivOzKoMtPSSeK53Bu
         I/mQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyQMND4ICnhhin9Wr1oF4NujAz6lT39oGUE7wEangPq3o3dnbjjz5C8/k87/42yrwBi344q3Ixo6Xw@vger.kernel.org
X-Gm-Message-State: AOJu0YzA5i2Q3A01Hm4FfiiLgBnIQLMRuTkQwLVzCD67BmHuozkGnGCi
	H03uLqdUd1Rm+FyxM4tfPAr8iEzRnvxOtemVdTg13CY6LGa5xnAtFQk4/cA6xHIpSQ==
X-Gm-Gg: ASbGncs/ESeRpLtz/iMq4oygDiUu//2lGI/UhL1HB1UdNopDxA3GiquVBvLvkn3uOxX
	A0XkeogBu1zrjtbUocew36d2+2iCQAEERKzRaLaX3Pm9tX71MBM0Mph+EFDLUexZlXiRu8enLBo
	1aiwqojsJZlbWrn/zSbJ7/ras0DHq0O2eGqcJwZ0IC17Ep6dB8/iNUSdP8yz9Orv1MLI0EnctuN
	wY2chteKowX8LVws8E90hdZ6N5oQxQlPIV4AjgBj4mWQJlMm4KmEth/gUqhWfAx1OghJ2vHfBi3
	CzSM5RJEG/vn7YiWGSdEX50/fsH946sc7m/Mh4S51mxOXqyiOeWASRnwGfcWJS6X5RHqtdCgMwO
	B5BYz08G+W4GybCxi5AYV8R24N9/meFVYaOWrblapQYuf4XKXk5E+ozhsKAnGlXqGZplhs+bCNg
	nP/y1zvFjL5GWC8NsVTySUqNgSL1WDVutZooqARd8WOgYDxLL4gPoROUVewEVvFMvKuDwlkNuRm
	0fbhThk6zkq/w==
X-Google-Smtp-Source: AGHT+IFsz/ljJrcpzA2pBF+IG/pUKgJQ17kleGBABcAzWrEfAKNQP91IPN/fvXc4LjZFpbtSbbWOBg==
X-Received: by 2002:a05:7022:ec16:b0:119:e56b:91da with SMTP id a92af1059eb24-11c9d811990mr11140572c88.11.1764119402831;
        Tue, 25 Nov 2025 17:10:02 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30? ([2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11cc631c236sm17216416c88.7.2025.11.25.17.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 17:10:02 -0800 (PST)
Message-ID: <aa7bdeb1-c8a9-4353-af56-869f16a083c2@google.com>
Date: Tue, 25 Nov 2025 17:10:01 -0800
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
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <5c901a6c831775a04924880cc9f783814f75b6aa.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi André,

On 11/23/25 10:21 PM, André Draszik wrote:
> Hi Amit,
>
> Thanks for your patches to enable the charger!

Ack!


>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Define specific bit-level masks for charger's registers and modify the
>> irq mask for charger irq_chip. Also, configure the max77759 interrupt
>> lines as active low to all interrupt registrations to ensure the
>> interrupt controllers are configured with the correct trigger type.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   drivers/mfd/max77759.c       | 24 +++++++++++++++++-------
>>   include/linux/mfd/max77759.h |  9 +++++++++
>>   2 files changed, 26 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/mfd/max77759.c b/drivers/mfd/max77759.c
>> index 6cf6306c4a3b..5fe22884f362 100644
>> --- a/drivers/mfd/max77759.c
>> +++ b/drivers/mfd/max77759.c
>> @@ -256,8 +256,17 @@ static const struct regmap_irq max77759_topsys_irqs[] = {
>>   };
>>   
>>   static const struct regmap_irq max77759_chgr_irqs[] = {
>> -	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_1, 0, GENMASK(7, 0)),
>> -	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_2, 1, GENMASK(7, 0)),
>> +	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_1, 0,
>> +		       MAX77759_CHGR_REG_CHG_INT_AICL |
>> +		       MAX77759_CHGR_REG_CHG_INT_CHGIN |
>> +		       MAX77759_CHGR_REG_CHG_INT_CHG |
>> +		       MAX77759_CHGR_REG_CHG_INT_INLIM),
>> +	REGMAP_IRQ_REG(MAX77759_CHARGER_INT_2, 1,
>> +		       MAX77759_CHGR_REG_CHG_INT2_BAT_OILO |
>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CC |
>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CV |
>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_TO |
>> +		       MAX77759_CHGR_REG_CHG_INT2_CHG_STA_DONE),
>>   };
>>   
>>   static const struct regmap_irq_chip max77759_pmic_irq_chip = {
>> @@ -486,8 +495,8 @@ static int max77759_add_chained_irq_chip(struct device *dev,
>>   				     "failed to get parent vIRQ(%d) for chip %s\n",
>>   				     pirq, chip->name);
>>   
>> -	ret = devm_regmap_add_irq_chip(dev, regmap, irq,
>> -				       IRQF_ONESHOT | IRQF_SHARED, 0, chip,
>> +	ret = devm_regmap_add_irq_chip(dev, regmap, irq, IRQF_ONESHOT |
>> +				       IRQF_SHARED | IRQF_TRIGGER_LOW, 0, chip,
>>   				       data);
> Please correct me if I'm wrong, but I don't think this makes sense for a
> chained IRQ in this case. What problem does this change fix?

While this patch was meant only for modifying the interrupt mask, I 
added this for consistency because the main SoC -> PMIC line is active 
low. However, I agree it is not strictly necessary here. I will drop it 
in the next revision.


>
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "failed to add %s IRQ chip\n",
>> @@ -519,8 +528,9 @@ static int max77759_add_chained_maxq(struct i2c_client *client,
>>   
>>   	ret = devm_request_threaded_irq(&client->dev, apcmdres_irq,
>>   					NULL, apcmdres_irq_handler,
>> -					IRQF_ONESHOT | IRQF_SHARED,
>> -					dev_name(&client->dev), max77759);
>> +					IRQF_ONESHOT | IRQF_SHARED |
>> +					IRQF_TRIGGER_LOW, dev_name(&client->dev),
>> +					max77759);
> dito.

Agreed, will drop.


>
>>   	if (ret)
>>   		return dev_err_probe(&client->dev, ret,
>>   				     "MAX77759_MAXQ_INT_APCMDRESI failed\n");
>> @@ -633,7 +643,7 @@ static int max77759_probe(struct i2c_client *client)
>>   		return dev_err_probe(&client->dev, -EINVAL,
>>   				     "invalid IRQ: %d\n", client->irq);
>>   
>> -	irq_flags = IRQF_ONESHOT | IRQF_SHARED;
>> +	irq_flags = IRQF_ONESHOT | IRQF_SHARED | IRQF_TRIGGER_LOW;
> I don't believe IRQF_TRIGGER_LOW should be added here, as this is board-specific.
> The polarity is meant to be set via DT (and the only current user of this driver
> does so).

You are correct. Since I am already retrieving the trigger type from DT 
via irqd_get_trigger_type() below, I will drop this change.


>>   	irq_flags |= irqd_get_trigger_type(irq_data);
> That's what gets us the config from DT.
>
>>   
>>   	ret = devm_regmap_add_irq_chip(&client->dev, max77759->regmap_top,
>> diff --git a/include/linux/mfd/max77759.h b/include/linux/mfd/max77759.h
>> index c6face34e385..0ef29a48deec 100644
>> --- a/include/linux/mfd/max77759.h
>> +++ b/include/linux/mfd/max77759.h
>> @@ -62,7 +62,16 @@
>>   #define MAX77759_CHGR_REG_CHG_INT               0xb0
>>   #define MAX77759_CHGR_REG_CHG_INT2              0xb1
>>   #define MAX77759_CHGR_REG_CHG_INT_MASK          0xb2
>> +#define MAX77759_CHGR_REG_CHG_INT_AICL          BIT(7)
>> +#define MAX77759_CHGR_REG_CHG_INT_CHGIN         BIT(6)
>> +#define MAX77759_CHGR_REG_CHG_INT_CHG           BIT(4)
>> +#define MAX77759_CHGR_REG_CHG_INT_INLIM         BIT(2)
>>   #define MAX77759_CHGR_REG_CHG_INT2_MASK         0xb3
>> +#define MAX77759_CHGR_REG_CHG_INT2_BAT_OILO     BIT(4)
>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CC   BIT(3)
>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CV   BIT(2)
>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_TO   BIT(1)
>> +#define MAX77759_CHGR_REG_CHG_INT2_CHG_STA_DONE BIT(0)
> Even if wireless out of scope, it'd still be nice to add macros for
> the remaining bits to make this complete and avoid having to update
> these again in case wireless support gets added in the future.

I would prefer to only define the macros I am currently using to keep 
the review focused, unless you consider this a strict requirement.


>
> Also, would be nice to keep existing style and indent the bits from
> the registers (see existing bit definitions in this file a few lines
> further up).
> Finally, can you add the bits below the respective register (0xb0 / 0xb1)
> please, to keep suffix meaningful, and to follow existing style for cases
> like this (see MAX77759_MAXQ_REG_UIC_INT1).

I will fix the indentation and ordering in the next revision.

Regarding bit definitions: In [PATCH 5/6], the max77759_charger.c driver 
defines bits for the register addresses defined in this file. Currently, 
those macros are only used locally by the max77759 charger driver. Would 
you prefer I move those definitions to this header file as well?

BR,

Amit


>
>
> Cheers,
> Andre'

