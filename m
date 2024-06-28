Return-Path: <devicetree+bounces-81202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0388791B98F
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:12:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC90128333C
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550F9146580;
	Fri, 28 Jun 2024 08:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TQTm1Nkv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D8279F2
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719562371; cv=none; b=Vw6XOf72kk55LXyzj9nLZb79+afcHXuu/bz2VjLEe/M+EbfoIVc4zefSOf7LatkKZAbALkDf9041k6LiKvpePFAPlByohUwF4GAsylFRZNK2O6MCKG5tjr/iAmtCNlKzCOvb4d7VDkRfGbx6jKO1RUw+o/TWoQq5Ft0gvsudGKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719562371; c=relaxed/simple;
	bh=XCJs/o8E6YhqAeCcCckIjmlP6d1rKZmYUJQyiy3AG98=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NmdP5pFsX7Cnh8M92Qt0un+JY04n+ms1gHrY8nOZ5bsiAh90vSGzlGdHQd/fzQybdcFRpkpo6JJsg/mIix3xftu4bPW1xLyYqIwoIEkI6Hd+f+Nf2VGfGQa0rWApluYPQ3qClP96/6r/xSmyAsjpnMzu1A0E4MfuidPc2oSbD0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TQTm1Nkv; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52cdb0d8107so366867e87.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719562368; x=1720167168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qqH7a9rB5T7bMD+rUwcHxt4NZ8sludKciekY4XeeiH0=;
        b=TQTm1NkvrRjfbAZTL08SnGxmDZjUEmF4zvCZ1h+tfDi2l5b5C+c1fPDr+hhijqS3OY
         3ikPiEraFFcBjoFHatSV0QJo9joj7mIjco4yyS5bIcUjG9k4We0V5KSZsqLxMTATal+N
         Gj3Iqkhmc70XSliF+DS3eMAClshNUBpHLJjlbAk3db3tlTHF4cuwwP7yX54Esjjt2eQd
         jsNkV/vl233UyByt0a6ExvLtvbGeoLq6vep/aEvyu6FixvYG/PSOiM5BMoPVpP5tFwwE
         P6UDDdcAR8kVu2CpBagaNh15RvLWW84KCoAXJ+5EA5smfrBl1c0P8PghQfTneET6dkSI
         OhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719562368; x=1720167168;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qqH7a9rB5T7bMD+rUwcHxt4NZ8sludKciekY4XeeiH0=;
        b=KS0ncUU5E+MHvX9VTqGlId/+3tU2T5uu0epItHahjdAlk3gJL6Qh8kkOEQ3iNhXyrA
         GyCCZZBOco3D8uHjxiiTSvYZRYHElq1DkAf9bXzxew/dMG/RveVtdb0PX2F5Q8RQ7XM8
         Yk+/f6LyeFb7XppuAHxbzOwd/JXXUzA1+D7dQePlTZTdjzYug+B0lJhemsN+xweSEDgu
         VceXAh8Lp2wwtoeg3aPsqfr38I97semaKcXuEFz9A2Smc84h0diCRoAiAbwBCDebY36x
         G7okZAs8iiQ46H2vKTYVUZeUUTdM1imlkAlkV8r0DzMGVyxVr4lN6JsvKmjudZe9YioO
         WG1w==
X-Forwarded-Encrypted: i=1; AJvYcCU8SoppQiYQ3WmwA/7qB7RhY6Bkke6+VVXTO1hM6h9qYXsaO7s51RwDl3M5EYPP+GcD/QrdOZ/jWiB19lScSkp7LI12Yg6lV2cdyA==
X-Gm-Message-State: AOJu0Yxm4w2btZTGqWd/HtGSowqrz1Qj35SFWpXub6GjH8G0Qjd9BKG9
	Ka/DAyr1LPbt3C7ygjaO64hWYgsVY3OxCsYKgLpSdKqi57Ev0/1/WcPzsXn8H5g=
X-Google-Smtp-Source: AGHT+IG7q7oi4YXSsJv2pPn8DgaqByv+geulrEaq3/D4qWFq4GHO/t+UK7v1odxUlJcJAkqeN1/hBw==
X-Received: by 2002:a05:6512:3da3:b0:52c:e728:cca1 with SMTP id 2adb3069b0e04-52ce728cd5bmr11772828e87.39.1719562367184;
        Fri, 28 Jun 2024 01:12:47 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c17e6sm23433785e9.42.2024.06.28.01.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 01:12:46 -0700 (PDT)
Message-ID: <79c26030-4b92-4ef3-b8ce-d011f492161b@tuxon.dev>
Date: Fri, 28 Jun 2024 11:12:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe
 the register offsets
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
 <20240625121358.590547-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346EF9A001F68162148B70F86D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <6289f329-118f-4970-a525-75c3a48bd28b@tuxon.dev>
 <TY3PR01MB1134603F92C72D9B6C6C3733C86D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <2f162986-33c5-4d80-958c-4f857adaad20@tuxon.dev>
 <TY3PR01MB11346CA73575CF61B2024F3B386D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346CA73575CF61B2024F3B386D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28.06.2024 11:09, Biju Das wrote:
> 
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Friday, June 28, 2024 9:03 AM
>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe the register offsets
>>
>>
>>
>> On 28.06.2024 10:55, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>>> -----Original Message-----
>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>> Sent: Friday, June 28, 2024 8:32 AM
>>>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to
>>>> describe the register offsets
>>>>
>>>> Hi, Biju,
>>>>
>>>> On 28.06.2024 08:59, Biju Das wrote:
>>>>> Hi Claudiu,
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>>>> Sent: Tuesday, June 25, 2024 1:14 PM
>>>>>> Subject: [PATCH v2 07/12] i2c: riic: Define individual arrays to
>>>>>> describe the register offsets
>>>>>>
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> Define individual arrays to describe the register offsets. In this
>>>>>> way we can describe different IP variants that share the same
>>>>>> register offsets but have differences in other characteristics.
>>>>>> Commit prepares for the addition
>>>> of fast mode plus.
>>>>>>
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>> ---
>>>>>>
>>>>>> Changes in v2:
>>>>>> - none
>>>>>>
>>>>>>  drivers/i2c/busses/i2c-riic.c | 58
>>>>>> +++++++++++++++++++----------------
>>>>>>  1 file changed, 31 insertions(+), 27 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/i2c/busses/i2c-riic.c
>>>>>> b/drivers/i2c/busses/i2c-riic.c index
>>>>>> 9fe007609076..8ffbead95492 100644
>>>>>> --- a/drivers/i2c/busses/i2c-riic.c
>>>>>> +++ b/drivers/i2c/busses/i2c-riic.c
>>>>>> @@ -91,7 +91,7 @@ enum riic_reg_list {  };
>>>>>>
>>>>>>  struct riic_of_data {
>>>>>> -	u8 regs[RIIC_REG_END];
>>>>>> +	const u8 *regs;
>>>>>
>>>>>
>>>>> Since you are touching this part, can we drop struct and Use u8* as
>>>>> device_data instead?
>>>>
>>>> Patch 09/12 "i2c: riic: Add support for fast mode plus" adds a new member to struct
>> riic_of_data.
>>>> That new member is needed to differentiate b/w hardware versions
>>>> supporting fast mode plus based on compatible.
>>>
>>> Are we sure RZ/A does not support fast mode plus?
>>
>> From commit description of patch 09/12:
>>
>> Fast mode plus is available on most of the IP variants that RIIC driver is working with. The
>> exception is (according to HW manuals of the SoCs where this IP is available) the Renesas RZ/A1H.
>> For this, patch introduces the struct riic_of_data::fast_mode_plus.
>>
>> I checked the manuals of all the SoCs where this driver is used.
>>
>> I haven't checked the H/W manual?
>>
>> On the manual I've downloaded from Renesas web site the FMPE bit of RIICnFER is not available on
>> RZ/A1H.
> 
> I just found RZ/A2M manual, it supports FMP and register layout looks similar to RZ/G2L.

I introduced struct riic_of_data::fast_mode_plus because of RZ/A1H.

> Wolfram tested it with r7s72100 genmai board acessing an eeprom. Not sure is it RZ/A1 or RZ/A2?
> 
> Cheers,
> Biju
> 

