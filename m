Return-Path: <devicetree+bounces-165444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B35A845F1
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D0CA9C2334
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7C728A412;
	Thu, 10 Apr 2025 14:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cKNBjrG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331112857EA
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294311; cv=none; b=KFaizqIy9vBwA/tv8YKbSax/M4JkhrjQt+RyID6P0asUfXWurEjoGWbKLfYK15rKFBUO4VABu8YMVSeqit+sFgrGbAuWLX4N496c5z4/dCWk73XxDe9HYV4e2j9AvLDzQFpcm6koU+3m9mIP2Ftjnf1d2HJgN8QVQ8t1+43uFEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294311; c=relaxed/simple;
	bh=2bcRLWwxEd6oDhiLEs2/eeHeotbrLRq3xVyuc44V+PE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UVRldDd71ne/UJfsQrFW26TmwjihM+zCIJXmEryx8FkMtrRPQzgQjDbvU9qV9Q1Us6O+/5WbVWP2aNktC2IAmXf7Inr0yUnpo5TLmk4/vQditvs+vRtPHMCag63O8wBK2oTYdixpoub+YZ1C9AkvtCL5Naf8H9aR/wySLCTqDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cKNBjrG6; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2d0364e9231so209979fac.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744294308; x=1744899108; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bDU6TnnpydkrEGdtbw7Y1FabP4abTQNmCWlwkK2+gfI=;
        b=cKNBjrG6iCxOGsWqTs+iEyG3tdvyzuHtWvuwKnVryMGWJtYfwKGOGiNzNrcxsNBv5N
         hNsa2f+tTP9tDjngk/5eFdzJVoJ7SqfWwpdzh8yRUXE0xPZGCfWh1HKqOsWlt1SK5vJp
         HLEN/CkmeJi3ZOQGiJKyeRlL3aArpNS61r1SAtM7A7D05DyI4I6no3kZ6r685BtqZ7H9
         NsVjTH3sm7ZhsXh6N5JiV8zYtgDdKwGe4A4WOTnj9y+vU3QUqcLmn3Vi8OqFP8M1GIJN
         rCtqqFdHw6tFqG+6zApja4oxlQlSy0NaXjTeQ8GQ7am+S27JHRG7ReyjTMAn+PQzpyCK
         d8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294308; x=1744899108;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bDU6TnnpydkrEGdtbw7Y1FabP4abTQNmCWlwkK2+gfI=;
        b=MKkfTEZSKJy+kyTLwj0gmfpPJytaKEUAXzy4mFQD0mYVgwfDmEg432GU+VafVUoYJc
         Cv4FmeaW6rAc+o+lA7/VxTnVL+MldJk9mxDuCBZs9U1QKs3S1c/231fAvfuAflLiTQe9
         21s/9Z49dVXc8/EzIDT0AE4X1SeZxU6w90fqUkP87awFJtqZKn8pBz8jUfwdqRuDdSgZ
         072P9DM5C4vdYkP3HB55VAKYX8tWjms9Al+w3cux+lPq2/kKSc+FUwRk9CYEo1peAJAc
         nV79hiO4vKK00SCEd1zCmswt9Di7ly/Wzf6/QwUan/lzS23hnPijbsnj0AxYZm6zV0G9
         bulQ==
X-Forwarded-Encrypted: i=1; AJvYcCUD8BOkKVRTMAe8hs0F0zRm+u3cQcc/g2oOpFXXbbjm0Ap/iBDbUm35r1q0lyIaSLesmhdNHIPP02L4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz34PzCiiTe3V1p4nmbTsZioyUIJAleXy01bQ+bSs86IFmZv0iq
	ToEIvNlg/jX6utg32HGo5FxGUFoIvDu8f4Ch4Jzu3DZWZcdUMKP/7NdL1j86AyY=
X-Gm-Gg: ASbGncsDHgDylGLJCF/qGxk+M5/PrT+N+0GPJYfTJKa9B79xvXTd32BVk01J2ub+TYb
	PsxDLS4ZFr+pQFlIhbVRjWEBHWQFGQey2dgLL1XjUWxXZm9WvLL4uynB3nD0up3Mo88TO3jJ1Sj
	lv38GHLZHYgJa8bxnGc5io9f3G5ZmmJ6a66zsTcv9j2CSR4gcDrP3yYCg0uA7lKlHRT9+6SgZXh
	Fm/mzsEco2TbqMwE6StDK/zI1wJFeBrlIFWB8rckmAoqxWEYAPZvZbNXMGBTLR8sqhgA8WR4RBl
	A+SFRpIum0wFy7MhxWQCFQ0TDSb1524RN/Cu5b9q0hjZq3OzbsQTtFR2iiHUShjGGgmBdzQTOYA
	qBqt5gTp06JS2
X-Google-Smtp-Source: AGHT+IF4FJP0GLYWv9/d9TiSPWxCSlvFcNDS8tgAo2NgT2cPnPyU3dINAVQK7QTyDgIRoeywhov6Bw==
X-Received: by 2002:a05:6871:d109:b0:2c1:4146:c556 with SMTP id 586e51a60fabf-2d0b3821079mr1660879fac.31.1744294308198;
        Thu, 10 Apr 2025 07:11:48 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d0969b721fsm676463fac.25.2025.04.10.07.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 07:11:47 -0700 (PDT)
Message-ID: <420dbd79-c981-4278-b888-5dd9f5baa4c6@baylibre.com>
Date: Thu, 10 Apr 2025 09:11:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] iio: dac: ad3530r: Add driver for AD3530R and
 AD3531R
To: "Paller, Kim Seer" <KimSeer.Paller@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20250403-togreg-v3-0-d4b06a4af5a9@analog.com>
 <20250403-togreg-v3-3-d4b06a4af5a9@analog.com>
 <fd2116bd-b0e2-4db4-97ff-1a1e88545413@baylibre.com>
 <PH0PR03MB714159E822B96E7A788A5CD4F9AA2@PH0PR03MB7141.namprd03.prod.outlook.com>
 <a66220e9-f690-4f95-9a14-d2b663d63490@baylibre.com>
 <PH0PR03MB7141587E8AFB2844E52988DAF9B72@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <PH0PR03MB7141587E8AFB2844E52988DAF9B72@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/10/25 3:39 AM, Paller, Kim Seer wrote:
> 
> 
>> -----Original Message-----
>> From: David Lechner <dlechner@baylibre.com>
>> Sent: Tuesday, April 8, 2025 10:06 PM
>> To: Paller, Kim Seer <KimSeer.Paller@analog.com>; Jonathan Cameron
>> <jic23@kernel.org>; Lars-Peter Clausen <lars@metafoo.de>; Hennerich,
>> Michael <Michael.Hennerich@analog.com>; Rob Herring <robh@kernel.org>;
>> Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
>> <conor+dt@kernel.org>
>> Cc: linux-iio@vger.kernel.org; linux-kernel@vger.kernel.org;
>> devicetree@vger.kernel.org
>> Subject: Re: [PATCH v3 3/3] iio: dac: ad3530r: Add driver for AD3530R and
>> AD3531R
>>
>> [External]
>>
>> On 4/7/25 3:01 AM, Paller, Kim Seer wrote:
>>>>> +	for (i = 0; i < chip_info->num_channels; i++)
>>>>> +		st->chan[i].powerdown_mode =
>>>> AD3530R_32KOHM_POWERDOWN_MODE;
>>>>> +
>>>>> +	st->ldac_gpio = devm_gpiod_get_optional(dev, "ldac",
>>>> GPIOD_OUT_HIGH);
>>>>> +	if (IS_ERR(st->ldac_gpio))
>>>>> +		return dev_err_probe(dev, PTR_ERR(st->ldac_gpio),
>>>>> +				     "Failed to get ldac GPIO\n");
>>>>> +
>>>>> +	if (device_property_present(dev, "adi,double-output-range")) {
>>>>
>>>> This is not documented in the DT bindings.
>>>>
>>>> This could instead be implemented by making the out_voltage_scale
>> attribute
>>>> writeable.
>>>>
>>>> If we really do need it in the devicetree because we want to protect against
>>>> someone accidentally setting it too high, then the property should be the
>> actual
>>>> multipler value with an enum specifier of 1, 2 and a default of 1 rather than
>> a
>>>> flag (e.g. adi,output-multipler).
>>>
>>> Thank you for the feedback. This should be adi,range-double, which is already
>>> documented in the DT bindings and is also used as a boolean type in other
>> drivers.
>>> I just forgot to update it here. This is a one-bit configuration that doubles the
>>> output range (multiplier of 2).  Should I proceed with the suggested
>> approach?
>>>
>>
>> I see adi,range-double in
>> Documentation/devicetree/bindings/iio/adc/adi,ad7923.yaml
>>
>> We would need to add the same in the new .yaml file added in this
>> series along with a justification in the commit message of why this
>> needs to be set in the devicetree rather than at runtime.
> 
> I can confirm that the adi,range-double property is already present in the adi,ad3530r.yaml
> file as a boolean type, and consistent with its usage in adi,ad7923.yaml.

Sorry, I don't know why I didn't see it the first 2 times I looked. :-(
It is there.

> 
>>
>> Ideally, we would ask the applications engineer for this chip to
>> find out how real users would want to use this feature to make sure
>> setting it in the devicetree aligns with that and is not too
>> restrictive.
> 
> The apps engineer for this chip indicated that the boolean type format aligns better with
> how users are expected to configure this feature, especially for users who may not be
> familiar with specific range values or enum specifiers.
> 

Very good.

