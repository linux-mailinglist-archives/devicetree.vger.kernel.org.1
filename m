Return-Path: <devicetree+bounces-81279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A3C91BD53
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 13:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 583941C21665
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 11:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39056156242;
	Fri, 28 Jun 2024 11:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Sc3S8tdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38536155C9A
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 11:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719573903; cv=none; b=qi6n9zi5DFj5LtGd/H4VlVYVm8xTyxmMvvyFD9oKCIZ9RkOEuCWPKmlyov3d+CODrEke5V1alnKDkaOPBsgYPA1JDLe9RaE/MZSwNIWqXikbzBX5C9OaIOyI3wO8IKbjV0Tcp5NUI63NfKhhz0bQb+JzYjL7B6bt45diM4xUeBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719573903; c=relaxed/simple;
	bh=V9KXg+SCmWZafo6obrdRFIhSGLezPfhb2JXZvNu0exU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LGlaQ2Jkku8wPMCrse/iXAF3nrtzpYGaJOowMiz76vSLBKBwKwT01Udxn4S9/mvwJ1h9aM3OKPkeD0jTFZDZopzX7rDOXZOWyH9S3mkKAQYiNFbC9vU/Le7dPmuKNOo8Ar51gEWAnDl3OakfKZy7eFuDeDVFftPByHogcE+V+NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Sc3S8tdq; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-367339bd00aso417289f8f.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 04:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719573899; x=1720178699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+vT0oI1WLiPKuk+C4WN1sqVJ5ks3XibkeL1J+rw6OW0=;
        b=Sc3S8tdq6Qx2OwJ5Jx4wgA/ImXi3UzAfdyuprMGELe8b0lLzRsXwr/VQXnhCy5MHSP
         Q+88jtRepdzRcr2QUKOVz9GAY61c2gRM2UX3bYncyT++SNoq8wjnJBR6UQvYehijMRi3
         F+o1YuDhw35FqIelK07ar674laPUQfD59EB4cS0q1BxWwW8LwZcOJnP16LHgBufcjVQT
         OORu8jYR+gWQTsc/ANAxhDAIxuEjfW/Yi2pI48Ke22CpkhNt+7neOQ2HltRWm3na65bX
         3oGtA4eRavGfrQ91Sz2bm8WLgtw4nVDIJBTS3jZErkkUFtNYfYZwC7qoxj9Pr4/IE5La
         GhEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719573899; x=1720178699;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+vT0oI1WLiPKuk+C4WN1sqVJ5ks3XibkeL1J+rw6OW0=;
        b=mAFC/l8YaW3QQ3cwyXGTR9RADndY3s0qZ2NopNLyZXRt1+5Fs7TMWsb5vn10FnJADr
         TDkLeOs0WWE1NmRBl4q+bCS2XdG8k3iq9fVQWaHAWj1DiiYmvCCHzJf+lXDvgMiFKJfo
         BFlu86jOUPI3n527f7/NE+AznrkbmpuuOODe4oO84PseDjPNYvV2YIV0pTB0q4hx3G7I
         7RwzF6Irh1FPF/FMB+NArcxkLqC/QroTqMvI313ZmvsECaceKZXCrq+DIeCtiWWgXEE2
         YWIpi2ggVA0YpZx25FrxgfYJGL9Ez3ijzYUzxbftIQu8GMaubs030OvS3GtIMlmM8YmH
         0LHA==
X-Forwarded-Encrypted: i=1; AJvYcCXFo733zCKy1/Y1zfveYCiBrwyNhYjl9sPujrp+6DvQjrf7lCB195KhVpUIcKE2d0cHLG71XlOZfTyEPd3FoOwBJZmxWFqNu+nE7g==
X-Gm-Message-State: AOJu0YxW2s7P1j7Us1FDje8QnYC/dr5G3vviMRp7KIMPpqWZ/OoCwjcf
	QZX/fY0D9PQEiL8D+RpzW6Oz9yl1tHdJW8jm6In1jwyUOQP7vgO1weggdbfdPA0=
X-Google-Smtp-Source: AGHT+IEg/llQOTje8PQzJ/D61BuZ9d+OzSn6/FeavrJj+1FuwRfzHkTT7CRfYqx6QCghqsKlm9fzjQ==
X-Received: by 2002:a05:6000:2c2:b0:366:eb45:6d55 with SMTP id ffacd0b85a97d-366eb456ecemr14224463f8f.49.1719573899534;
        Fri, 28 Jun 2024 04:24:59 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0d8cb4sm2019563f8f.25.2024.06.28.04.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 04:24:59 -0700 (PDT)
Message-ID: <ae2223f8-4058-4bd1-b480-ed2b4b1d526f@tuxon.dev>
Date: Fri, 28 Jun 2024 14:24:57 +0300
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
 <79c26030-4b92-4ef3-b8ce-d011f492161b@tuxon.dev>
 <TY3PR01MB11346A2DFBD7FE81337A748D386D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <20ff64a8-e619-4281-894f-1aa08ea67f18@tuxon.dev>
 <TY3PR01MB1134678E3A8485DB152BD66D386D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134678E3A8485DB152BD66D386D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28.06.2024 13:49, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Friday, June 28, 2024 11:25 AM
>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe the register offsets
>>
>>
>>
>> On 28.06.2024 11:24, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>>> -----Original Message-----
>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>> Sent: Friday, June 28, 2024 9:13 AM
>>>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to
>>>> describe the register offsets
>>>>
>>>>
>>>>
>>>> On 28.06.2024 11:09, Biju Das wrote:
>>>>>
>>>>> Hi Claudiu,
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>>>> Sent: Friday, June 28, 2024 9:03 AM
>>>>>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays
>>>>>> to describe the register offsets
>>>>>>
>>>>>>
>>>>>>
>>>>>> On 28.06.2024 10:55, Biju Das wrote:
>>>>>>> Hi Claudiu,
>>>>>>>
>>>>>>>> -----Original Message-----
>>>>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>>>>>> Sent: Friday, June 28, 2024 8:32 AM
>>>>>>>> Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays
>>>>>>>> to describe the register offsets
>>>>>>>>
>>>>>>>> Hi, Biju,
>>>>>>>>
>>>>>>>> On 28.06.2024 08:59, Biju Das wrote:
>>>>>>>>> Hi Claudiu,
>>>>>>>>>
>>>>>>>>>> -----Original Message-----
>>>>>>>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>>>>>>>> Sent: Tuesday, June 25, 2024 1:14 PM
>>>>>>>>>> Subject: [PATCH v2 07/12] i2c: riic: Define individual arrays
>>>>>>>>>> to describe the register offsets
>>>>>>>>>>
>>>>>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>>>>>
>>>>>>>>>> Define individual arrays to describe the register offsets. In
>>>>>>>>>> this way we can describe different IP variants that share the
>>>>>>>>>> same register offsets but have differences in other characteristics.
>>>>>>>>>> Commit prepares for the addition
>>>>>>>> of fast mode plus.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Claudiu Beznea
>>>>>>>>>> <claudiu.beznea.uj@bp.renesas.com>
>>>>>>>>>> ---
>>>>>>>>>>
>>>>>>>>>> Changes in v2:
>>>>>>>>>> - none
>>>>>>>>>>
>>>>>>>>>>  drivers/i2c/busses/i2c-riic.c | 58
>>>>>>>>>> +++++++++++++++++++----------------
>>>>>>>>>>  1 file changed, 31 insertions(+), 27 deletions(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/i2c/busses/i2c-riic.c
>>>>>>>>>> b/drivers/i2c/busses/i2c-riic.c index
>>>>>>>>>> 9fe007609076..8ffbead95492 100644
>>>>>>>>>> --- a/drivers/i2c/busses/i2c-riic.c
>>>>>>>>>> +++ b/drivers/i2c/busses/i2c-riic.c
>>>>>>>>>> @@ -91,7 +91,7 @@ enum riic_reg_list {  };
>>>>>>>>>>
>>>>>>>>>>  struct riic_of_data {
>>>>>>>>>> -	u8 regs[RIIC_REG_END];
>>>>>>>>>> +	const u8 *regs;
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Since you are touching this part, can we drop struct and Use u8*
>>>>>>>>> as device_data instead?
>>>>>>>>
>>>>>>>> Patch 09/12 "i2c: riic: Add support for fast mode plus" adds a
>>>>>>>> new member to struct
>>>>>> riic_of_data.
>>>>>>>> That new member is needed to differentiate b/w hardware versions
>>>>>>>> supporting fast mode plus based on compatible.
>>>>>>>
>>>>>>> Are we sure RZ/A does not support fast mode plus?
>>>>>>
>>>>>> From commit description of patch 09/12:
>>>>>>
>>>>>> Fast mode plus is available on most of the IP variants that RIIC
>>>>>> driver is working with. The exception is (according to HW manuals
>>>>>> of the SoCs where this IP is
>>>> available) the Renesas RZ/A1H.
>>>>>> For this, patch introduces the struct riic_of_data::fast_mode_plus.
>>>>>>
>>>>>> I checked the manuals of all the SoCs where this driver is used.
>>>>>>
>>>>>> I haven't checked the H/W manual?
>>>>>>
>>>>>> On the manual I've downloaded from Renesas web site the FMPE bit of
>>>>>> RIICnFER is not available on RZ/A1H.
>>>>>
>>>>> I just found RZ/A2M manual, it supports FMP and register layout looks similar to RZ/G2L.
>>>>
>>>> I introduced struct riic_of_data::fast_mode_plus because of RZ/A1H.
>>>
>>> Maybe make the register layout as per SoC
>>>
>>> RZ/A1 --> &riic_rz_a_info
>>> RZ/A2 and RZ/{G2L,G2LC,V2L,G2UL,FIVE} --> &riic_rz_g2_info RZ/G3S and
>>> RZ/V2H --> &riic_rz_v2h_info
>>
>> Sorry, but I don't understand. Patch 09/12 already does that but a bit
>> differently:
> 
> Now register layout is added to differentiate the SoCs for adding support
> to RZ/G3S and this layout should match with the hardware manual for all supported SoCs.
> Currently it is wrong for RZ/A2 SoC, while you fixed it for all other SoCs.

I checked RZ/A2M. There is nothing broken. The only thing that I see is
that the FP+ is not enabled on RZ/A2M (please let me know if there is
anything else I missed). I don't see this broken. It is the same behavior
that was before this patch.

Anyway, I'll update it for that too, if nobody has something against, but I
cannot test it. If any hardware bug for it, I cannot say.

> 
>>
>> RZ/{G2L, G2LC, G2UL, V2L, FIVE} -> riic_rz_g2_info RZ/G3S and RZ/V2H -> riic_rz_v2h_info Everything
>> else: riic_rz_a_info
>>
>> I don't have anything at hand to test the "everything else" thus I enabled it for RZ/{G2L, G2LC,
>> G2UL, V2L, FIVE}, RZ/G3S and RZ/V2H.
> 
> You don't need to test, as 
> the existing other users don't have FMP+ enabled in device tree.

It's the same as today (w/o adding specific entry for it).

> 
> Cheers,
> Biju

