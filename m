Return-Path: <devicetree+bounces-49606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 960BD877143
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 14:13:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CB891C20B03
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 13:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE1643BBDC;
	Sat,  9 Mar 2024 13:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="byQR+HKX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DD2364D8
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 13:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709989998; cv=none; b=avG24osMlsriLdsJY+Bs5pSh2Sb/UBl4ar+b/vMlZFJhAeQcwZp8OONPfpmEwkepUyWxyq+2xPc8wf1KZQJVDkFw8NxZZ/CNxdGljg4gkAlj40I+cU3hjZjOfn5yh3r1Ljg4okjPhQQoYbarH5TV4BENDBvaLlkMacDssIWAEq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709989998; c=relaxed/simple;
	bh=OlOZykcZ4tvIYRnZrlRu8N6+6ayUn7PZR1mVNCHpCAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dwiYxl0nCf5P7r8QgcQCYRbVxzrtW9R/lomum+EhwcPJjVipGNFpfL0ArwDtleUAI/xaaQnIXopcWAdvtkS2JkkNabPm5BKdvqotrE9qDfIvob6WSx5il5FM2Dp7ljOisiYEOKD2YuYaHhEDMbz3GRwOX+YHKQt6QBbX71aYL4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=byQR+HKX; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56781070f38so7058651a12.0
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 05:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709989994; x=1710594794; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Abv+15fdn0L/XDhBzoC17DusvY5uSXBbJbLmOstC0WQ=;
        b=byQR+HKXMpwq74EqPlQbMdL+Dk6cfH5En4iizAC9DapiwGCcHT3wz7CnltDz3pqAGE
         5xq+0ZDGjZqyFxoof339sVCfNm2KKIPj+YVHJOYBDtoyC2iF+HAm47x8oBZZcSZcRA7J
         9xg9d8aXM7gqwxvvhwwKUBgCOyTjSgHAqrjmJlT14L67C/8nHMEgygsXs4JTQVWpuI2h
         iZHxxUNeDfqYBdr1/FlDwWsBceuchokhCuqw6bmBKiSLK8ByNEyGheGK8fo2+i4vmF5Z
         m/QhvZedmOSd8OayyNRuQI6B9MAo4LXZoAXMAfd1GzK44Zv1BCqGiZK56AsBOt+aoCSN
         sJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709989994; x=1710594794;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Abv+15fdn0L/XDhBzoC17DusvY5uSXBbJbLmOstC0WQ=;
        b=onGPq8W7yrfvs4hbCSvNfvKqjoi2szRijd9YsnYtB6dT2k3kTcl1JCWTgftxyuupx2
         Hdgm1YCD60QhyjtJCzPVQ265qYTkVzKlWFcirVMMRhhId9c9SR7TVQlMHmJe7Cp06as5
         Y8Tx1/Osy6LrYwSf7pnxNla0VtDuVWpFAb/tzTVu3jL3V7nHX+0vLsFh2WdzUztbagOS
         BQDjnuxkJLMeIODrBfLQdibcLfWeHS+2NVPvb5Z3JkTdYB1i7jc3I8BeTJ/d1FA/LrLh
         MF/zlk59gME3d3Nq2ZEhcHVKrdANZlv/m8C3hGqOSQCK3lNz5lJsno3nSr5aaFPHshKw
         6y1g==
X-Forwarded-Encrypted: i=1; AJvYcCUKu3svPm97OyTLbrCq1YLDER80y7xQ3SyeBhUEzNxeA/pBdkZKfGKbuHVSqjss4WVu3I1kFhsUrV7sACQSoeFCFotPh8iiGWITGQ==
X-Gm-Message-State: AOJu0YxFT7tBh6T59r3Q+tVTUyjWEG3TdAwbeG2dxBoHITDyuPEkU0cb
	rWqrwh5W41zX/N3/2VDAdyDD2Nk5Jo0YMzF5csOcNcRTjsjz6Xk6tSk00NptyKU=
X-Google-Smtp-Source: AGHT+IHUEJd9GymArjfnENyTdsTXEpA0t/Co7CCxqshkpXpgwTMIjLYBdoTn4ia2QcajVEN7dKgDxA==
X-Received: by 2002:a50:955e:0:b0:565:4b37:4578 with SMTP id v30-20020a50955e000000b005654b374578mr1980118eda.14.1709989993946;
        Sat, 09 Mar 2024 05:13:13 -0800 (PST)
Received: from [192.168.32.2] ([147.161.131.117])
        by smtp.gmail.com with ESMTPSA id a3-20020a50e703000000b005661badcccesm854704edn.87.2024.03.09.05.13.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Mar 2024 05:13:13 -0800 (PST)
Message-ID: <fe9a8936-3b7f-4460-8dba-85cc811d1253@tuxon.dev>
Date: Sat, 9 Mar 2024 15:13:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 29/39] irqchip/atmel-aic5: Add support to get nirqs
 from DT for sam9x60 & sam9x7
Content-Language: en-US
To: Varshini.Rajendran@microchip.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, tglx@linutronix.de,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 andre.przywara@arm.com, mani@kernel.org, shawnguo@kernel.org,
 Durai.ManickamKR@microchip.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
 <20240223172905.673053-1-varshini.rajendran@microchip.com>
 <f1f9c53f-b11a-4fe1-9541-356ea75e883c@tuxon.dev>
 <ba7a59ae-d377-4514-89e7-86991420507c@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <ba7a59ae-d377-4514-89e7-86991420507c@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08.03.2024 10:50, Varshini.Rajendran@microchip.com wrote:
> On 03/03/24 5:51 pm, claudiu beznea wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 23.02.2024 19:29, Varshini Rajendran wrote:
>>> Add support to get number of IRQs from the respective DT node for sam9x60
>>> and sam9x7 devices. Since only this factor differs between the two SoCs,
>>> this patch adds support for the same. Adapt the sam9x60 dtsi
>>> accordingly.
>>>
>>> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
>>> ---
>>> Changes in v4:
>>> - Changed the implementation to fetch the NIRQs from DT as per the
>>>    comment to avoid introducing a new compatible when this is the only
>>>    difference between the SoCs related to this IP.
>>> ---
>>>   arch/arm/boot/dts/microchip/sam9x60.dtsi |  1 +
>>>   drivers/irqchip/irq-atmel-aic5.c         | 11 ++++++++---
>>>   2 files changed, 9 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
>>> index 73d570a17269..e405f68c9f54 100644
>>> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
>>> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
>>> @@ -1201,6 +1201,7 @@ aic: interrupt-controller@fffff100 {
>>>                                interrupt-controller;
>>>                                reg = <0xfffff100 0x100>;
>>>                                atmel,external-irqs = <31>;
>>> +                             microchip,nr-irqs = <50>;
>>>                        };
>>>
>>>                        dbgu: serial@fffff200 {
>>> diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
>>> index 145535bd7560..5d96ad8860d3 100644
>>> --- a/drivers/irqchip/irq-atmel-aic5.c
>>> +++ b/drivers/irqchip/irq-atmel-aic5.c
>>> @@ -398,11 +398,16 @@ static int __init sama5d4_aic5_of_init(struct device_node *node,
>>>   }
>>>   IRQCHIP_DECLARE(sama5d4_aic5, "atmel,sama5d4-aic", sama5d4_aic5_of_init);
>>>
>>> -#define NR_SAM9X60_IRQS              50
>>> -
>>>   static int __init sam9x60_aic5_of_init(struct device_node *node,
>>>                                       struct device_node *parent)
>>>   {
>>> -     return aic5_of_init(node, parent, NR_SAM9X60_IRQS);
>>> +     int ret, nr_irqs;
>>> +
>>> +     ret = of_property_read_u32(node, "microchip,nr-irqs", &nr_irqs);
>>> +     if (ret) {
>>> +             pr_err("Not found microchip,nr-irqs property\n");
>>
>> This breaks the ABI. You should ensure old device trees are still working
>> with this patch.
> 
> The only older device that uses this API is sam9x60 and the newly added 
> sam9x7. This change has been tested to be working fine in both the 
> devices.

As Conor explained, the code in this patch should work with device trees
from previous kernel releases (thus not having microchip,nr-irqs DT binding).

> If you still want me to use the macros as a fallback in the 
> failure case I can do it. But this change was proposed to avoid adding 
> macros in the first place. I can remove the error check just like they 
> do while getting other device tree properties. Or if this is just a 
> concern of the old devices working with the new change, then sam9x60 
> works. Please let me know how to proceed.
>>
>>> +             return ret;
>>> +     }
>>> +     return aic5_of_init(node, parent, nr_irqs);
>>>   }
>>>   IRQCHIP_DECLARE(sam9x60_aic5, "microchip,sam9x60-aic", sam9x60_aic5_of_init);
> 

