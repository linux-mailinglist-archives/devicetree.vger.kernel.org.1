Return-Path: <devicetree+bounces-81194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 921F991B961
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B40741C22A11
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2889A14532C;
	Fri, 28 Jun 2024 08:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GkEwpIVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5178914389A
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719561897; cv=none; b=KKj3wu7/C1tZaZZV1HmjhweN2Q058Ack5h6V8UMvRfYIq2mN0gzxa0HMO/arupK+fDqBaYgJHeSRlPjZGsx1hEMyAzRMEsmRJzJNvANWGjShB0ajcszbj5cpeaRsgXMxVZr0SMv0H1rgbhKVTzHImDets5JDqVLg3sCrHo+tItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719561897; c=relaxed/simple;
	bh=lnOtj8I56jMsFfYKFuX/EzixqJd4tPPdOFoxBK7Mu48=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=GfNrcQFxFasi+FtpKn17LLGjJxXGGuyOQHLEIx0g+QCU4pCHaM+uUxtLAMoIevzGUVAC0Duj2ScK2gkDzOA+nwsxFH21ROiZtdFiG1RQwNcDOQEOgLJ0c4ClH/c1YcrP/9KKsVzI/01zwo7exUJT1Yva8b9nyvepcqLr6FL9FkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GkEwpIVp; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52d259dbe3cso324948e87.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719561894; x=1720166694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQTbdcsWjYj1lBw9v1FiUsxFG/GqhZjpAf7y14wz4Vc=;
        b=GkEwpIVpS92RWV1cE9aWm1m+G+YrK5uHuO8ropmUb1/V3LuJ7kJC3/+D+FiccOBJl1
         VNO4iLm5+VR7aNNtv/IrSc+29QwrnmKH4qUi2DZw7EZJ97ROVnpOsQ2jrrdVjEyzLsTX
         D2npllU+0OxD8mJTejuvKZ0u0sVMs7pRne2xSggBOasCaVF5KTheB9idNMtKY9VLaB/1
         VwkJhWfAy0ODz2Cx8ywy3uhc2yvtCcT7HqTeKSphetE4ATKCWtRZa3B6c/cXBW83tp7t
         J+dp/SwTtQlL8hZBo3KHt+yKZnWwr1zgzoX599LuxLg9FU0Stjc/GGs3lQkb/EDqFdjR
         Fnaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719561894; x=1720166694;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aQTbdcsWjYj1lBw9v1FiUsxFG/GqhZjpAf7y14wz4Vc=;
        b=GpudVUmmIKd0Wo0ibzm8hUZzsdRFEMHir1KHCX8Zi9B0YyFZjI71N8bR7WSkeoA7Fc
         RMpzlIaoI3EsZjeqC7gWZPvcZqB7LpHtjUe0bAy0l/se12+sWdT/IES73k7hcKSRtF9c
         NGsSrGb42g6vmvJEc7irUJRDsaFgqfx0nzExbzoVJKXRXb3Q9XgXeD7DqBoOe91PrmXx
         7h0HLKImltql6645L2HqgeglfF3Rqo6W0JMhENPc71YLUr6zZRf81Q6MBUVOBOJLJy+A
         /Ng6lwTmSLYC5dLhBqelCzqtWQ3Jwtg3Yk6NO36Dr/oeWTc6iUx1ZP/YWRNiweqZAPFZ
         fk8g==
X-Forwarded-Encrypted: i=1; AJvYcCWulE31p/qTg7zr9h//7soOZJtt3wVWlYVBtL7Y3HcL6jdby08sBfXL8ccLys1pmAg2AycFFPwOZmD2jh9ePIY3secS/04wL+5pTw==
X-Gm-Message-State: AOJu0Yz5UONe/D9j+Uh/K9seM/75/FqzqYE7mq7tztppOaDyB0QNHNlW
	8JPWd9+ASQf/SHBh4mLo3Lwr5XRrdoMzzgai44k2oJAq0yC69v50gqLw15xJnko=
X-Google-Smtp-Source: AGHT+IHNu9Q8Wq3NTTfdUge/DFwXYvXY70ZuXmhDK16DCxvOvq5z2lwiF6FDZR3J+aYhaLMBsqf6Jg==
X-Received: by 2002:a19:c514:0:b0:52c:8591:1f7b with SMTP id 2adb3069b0e04-52ce061b07dmr11458375e87.24.1719561893435;
        Fri, 28 Jun 2024 01:04:53 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b099c72sm22804585e9.37.2024.06.28.01.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 01:04:52 -0700 (PDT)
Message-ID: <471b8375-3966-4e0a-98ba-3aee4254c969@tuxon.dev>
Date: Fri, 28 Jun 2024 11:04:51 +0300
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
From: claudiu beznea <claudiu.beznea@tuxon.dev>
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
In-Reply-To: <2f162986-33c5-4d80-958c-4f857adaad20@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28.06.2024 11:02, claudiu beznea wrote:
> 
> 
> On 28.06.2024 10:55, Biju Das wrote:
>> Hi Claudiu,
>>
>>> -----Original Message-----
>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>> Sent: Friday, June 28, 2024 8:32 AM
>>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe the register offsets
>>>
>>> Hi, Biju,
>>>
>>> On 28.06.2024 08:59, Biju Das wrote:
>>>> Hi Claudiu,
>>>>
>>>>> -----Original Message-----
>>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>>> Sent: Tuesday, June 25, 2024 1:14 PM
>>>>> Subject: [PATCH v2 07/12] i2c: riic: Define individual arrays to
>>>>> describe the register offsets
>>>>>
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> Define individual arrays to describe the register offsets. In this
>>>>> way we can describe different IP variants that share the same
>>>>> register offsets but have differences in other characteristics. Commit prepares for the addition
>>> of fast mode plus.
>>>>>
>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>> ---
>>>>>
>>>>> Changes in v2:
>>>>> - none
>>>>>
>>>>>  drivers/i2c/busses/i2c-riic.c | 58
>>>>> +++++++++++++++++++----------------
>>>>>  1 file changed, 31 insertions(+), 27 deletions(-)
>>>>>
>>>>> diff --git a/drivers/i2c/busses/i2c-riic.c
>>>>> b/drivers/i2c/busses/i2c-riic.c index
>>>>> 9fe007609076..8ffbead95492 100644
>>>>> --- a/drivers/i2c/busses/i2c-riic.c
>>>>> +++ b/drivers/i2c/busses/i2c-riic.c
>>>>> @@ -91,7 +91,7 @@ enum riic_reg_list {  };
>>>>>
>>>>>  struct riic_of_data {
>>>>> -	u8 regs[RIIC_REG_END];
>>>>> +	const u8 *regs;
>>>>
>>>>
>>>> Since you are touching this part, can we drop struct and Use u8* as
>>>> device_data instead?
>>>
>>> Patch 09/12 "i2c: riic: Add support for fast mode plus" adds a new member to struct riic_of_data.
>>> That new member is needed to differentiate b/w hardware versions supporting fast mode plus based on
>>> compatible.
>>
>> Are we sure RZ/A does not support fast mode plus?
> 
> From commit description of patch 09/12:
> 
> Fast mode plus is available on most of the IP variants that RIIC driver
> is working with. The exception is (according to HW manuals of the SoCs
> where this IP is available) the Renesas RZ/A1H. For this, patch
> introduces the struct riic_of_data::fast_mode_plus.
> 
> I checked the manuals of all the SoCs where this driver is used.
> 
> I haven't checked the H/W manual?

That's Biju's previous statement. Sorry for not formatting it properly.

> 
> On the manual I've downloaded from Renesas web site the FMPE bit of
> RIICnFER is not available on RZ/A1H.
> 
> Thank you,
> Claudiu Beznea
> 
>> If it does not, then it make sense to keep the patch as it is.
>>
>> Cheers,
>> Biju
>>
>>>
>>> Keeping struct riic_of_data is necessary (unless I misunderstood your proposal).
>>>
>>> Thank you,
>>> Claudiu Beznea
>>>
>>>>
>>>> ie, replace const struct riic_of_data *info->const u8 *regs in struct
>>>> riic_dev and use .data = riic_rz_xx_regs in of_match_table?
>>>>
>>>> Cheers,
>>>> Biju
>>>>>  };
>>>>>
>>>>>  struct riic_dev {
>>>>> @@ -531,36 +531,40 @@ static void riic_i2c_remove(struct platform_device *pdev)
>>>>>  	pm_runtime_dont_use_autosuspend(dev);
>>>>>  }
>>>>>
>>>>> +static const u8 riic_rz_a_regs[RIIC_REG_END] = {
>>>>> +	[RIIC_ICCR1] = 0x00,
>>>>> +	[RIIC_ICCR2] = 0x04,
>>>>> +	[RIIC_ICMR1] = 0x08,
>>>>> +	[RIIC_ICMR3] = 0x10,
>>>>> +	[RIIC_ICSER] = 0x18,
>>>>> +	[RIIC_ICIER] = 0x1c,
>>>>> +	[RIIC_ICSR2] = 0x24,
>>>>> +	[RIIC_ICBRL] = 0x34,
>>>>> +	[RIIC_ICBRH] = 0x38,
>>>>> +	[RIIC_ICDRT] = 0x3c,
>>>>> +	[RIIC_ICDRR] = 0x40,
>>>>> +};
>>>>> +
>>>>>  static const struct riic_of_data riic_rz_a_info = {
>>>>> -	.regs = {
>>>>> -		[RIIC_ICCR1] = 0x00,
>>>>> -		[RIIC_ICCR2] = 0x04,
>>>>> -		[RIIC_ICMR1] = 0x08,
>>>>> -		[RIIC_ICMR3] = 0x10,
>>>>> -		[RIIC_ICSER] = 0x18,
>>>>> -		[RIIC_ICIER] = 0x1c,
>>>>> -		[RIIC_ICSR2] = 0x24,
>>>>> -		[RIIC_ICBRL] = 0x34,
>>>>> -		[RIIC_ICBRH] = 0x38,
>>>>> -		[RIIC_ICDRT] = 0x3c,
>>>>> -		[RIIC_ICDRR] = 0x40,
>>>>> -	},
>>>>> +	.regs = riic_rz_a_regs,
>>>>> +};
>>>>> +
>>>>> +static const u8 riic_rz_v2h_regs[RIIC_REG_END] = {
>>>>> +	[RIIC_ICCR1] = 0x00,
>>>>> +	[RIIC_ICCR2] = 0x01,
>>>>> +	[RIIC_ICMR1] = 0x02,
>>>>> +	[RIIC_ICMR3] = 0x04,
>>>>> +	[RIIC_ICSER] = 0x06,
>>>>> +	[RIIC_ICIER] = 0x07,
>>>>> +	[RIIC_ICSR2] = 0x09,
>>>>> +	[RIIC_ICBRL] = 0x10,
>>>>> +	[RIIC_ICBRH] = 0x11,
>>>>> +	[RIIC_ICDRT] = 0x12,
>>>>> +	[RIIC_ICDRR] = 0x13,
>>>>>  };
>>>>>
>>>>>  static const struct riic_of_data riic_rz_v2h_info = {
>>>>> -	.regs = {
>>>>> -		[RIIC_ICCR1] = 0x00,
>>>>> -		[RIIC_ICCR2] = 0x01,
>>>>> -		[RIIC_ICMR1] = 0x02,
>>>>> -		[RIIC_ICMR3] = 0x04,
>>>>> -		[RIIC_ICSER] = 0x06,
>>>>> -		[RIIC_ICIER] = 0x07,
>>>>> -		[RIIC_ICSR2] = 0x09,
>>>>> -		[RIIC_ICBRL] = 0x10,
>>>>> -		[RIIC_ICBRH] = 0x11,
>>>>> -		[RIIC_ICDRT] = 0x12,
>>>>> -		[RIIC_ICDRR] = 0x13,
>>>>> -	},
>>>>> +	.regs = riic_rz_v2h_regs,
>>>>>  };
>>>>>
>>>>>  static int riic_i2c_suspend(struct device *dev)
>>>>> --
>>>>> 2.39.2
>>>>>
>>>>

