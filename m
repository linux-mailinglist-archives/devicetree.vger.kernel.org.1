Return-Path: <devicetree+bounces-44230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D185D27F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 09:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76C711C213B5
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F923BB3F;
	Wed, 21 Feb 2024 08:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iyL1Irbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B473BB37
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708503919; cv=none; b=D4C7WiLDSQ2zPC5lS3c5uMHaC0bx/llriMjkq2MDly/k55noDPmCIZoOSWvKCPXEdEGx+1B3FX5vigfBxbsmJlkJD+T3/PaQC/QkXHWcTW87Pu+2lSny4ZOxDkQQStafJ9VdBtzfWnu/OV6/746qqQxvesCSuQILiD7E6IGysUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708503919; c=relaxed/simple;
	bh=7ND+8DCDpGDAzGPrFOMMSsFdwo2DDUweSZNMEZP64Mk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=EyRWjDbpbnw2RfT37QPa7V433s0wC43ota9vXs1VVtkg51gqAZ1VW6XXiXNTJgSum8S+dwcMyg+hLKBZZM24V16it1Db3WGgRCK9zihQCjDEfh1JF9ry3urSa0gWbTeKxn6LI28RFGRmuXlI8WJn/D4vjpp9LsLY1OJb0ovB5+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iyL1Irbs; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5643eccad0bso5417203a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708503915; x=1709108715; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LX+NTCFznlwKOKbEsB07p18Uqgt4SCeMOr5vq3ksz+k=;
        b=iyL1Irbs37kZBMIg5odTVwH1/3mlBd9fXU2yYWnjUOkx0+CGjKLIG0z4/Hx1Nd1HNo
         E+UeOvKDBXispzV1r68pw/Ga0IzDnTixx0oXfLS9NeNwbj4OXDO95pkSG43wmkmNXilI
         vlVk6HOSpb3u7cMrGdxbAObsWdU8SjRwtOWgsmZOxHYi2HUQ+h+p7muyrEvTpbyPiIME
         ERWXLv2o4WfxPcMh+UAGTP+aAOCbkrLmUehlq0YY53ThCh9ai3nP8LEHV4Jgxf+7UKNJ
         Z4+LWhTwNZiRVvv4yRfJNGNs6oFFGz+fdzHTg2LvFeluiDnd/qnhXBHrv1o+eF6wJP18
         qlZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708503915; x=1709108715;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LX+NTCFznlwKOKbEsB07p18Uqgt4SCeMOr5vq3ksz+k=;
        b=pW7O5O3F/vJOozEwCGjY2wu6w9P5uLB0MemfuwMmEWc9Yu3avXGkTPtuN8wbpqpvOs
         kD+mt67ozuQJeX+6utk1qfRFlKKanqO2XnrhL4mdSeLIEfy8zSDQzNAY9SWxRcsBqT2H
         WEMLkD5tuQewZ8EMjoVoY8pP/Og8EpG8H069j/NC6gdxdJOY8xHanxgR1Oiab9SzzcIM
         n4rcFvox7E2R29o+cs9cukFNt074g96Ht1q5Zj/CAUWoMHlt8y5/usM43+5+0N0m8Pm7
         oAXe9b5MkogFabgF/y0j/CtJqQWbjV3reJydNTVpcFSYA6Y2O1mwlKDdFFV+mU/Btmka
         fOIg==
X-Forwarded-Encrypted: i=1; AJvYcCW9CbbZlL5ZARtmJAJRolYD/ljTFF1wEAEt56g1SlSvBprdxD03jni9He7sVGfjs4kHcN20MDdFq/hnEyPWN10nR1Ovgts09kmJGQ==
X-Gm-Message-State: AOJu0YxX/JHlasnEX4pjkNDI50PJ2GdJZmy6OZ6Qnm3xkZNYEZfX9SB9
	21DqceuVJ0ndAc+3NjAD1HqOtCo2s9BnOXOhZY7Hr9iHYs81yP8haqRKPeI3SlM=
X-Google-Smtp-Source: AGHT+IGHcAkWwiprnOoBaB3yQR0DcPBvOSJQAuOkYmpTBOj3mDptTIdpKVHDqdPWke+Mi2GXg9+sgQ==
X-Received: by 2002:a05:6402:3593:b0:563:fc1d:4568 with SMTP id y19-20020a056402359300b00563fc1d4568mr11838219edc.10.1708503915246;
        Wed, 21 Feb 2024 00:25:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id fe12-20020a056402390c00b00564fa936b2bsm337395edb.94.2024.02.21.00.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 00:25:14 -0800 (PST)
Message-ID: <7c07c822-5962-41d6-b2a9-8ca6bf125b35@linaro.org>
Date: Wed, 21 Feb 2024 09:25:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Yang Xiwen <forbidden405@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
 <62221084-247c-4a0b-a030-e12cb2931411@linaro.org>
 <SEZPR06MB6959AAB6B43F3E1F5E1C526596512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <6f3f22f6-f659-494d-963c-544cf5f44adc@linaro.org>
 <SEZPR06MB69592FACB1EF1B9FEDA89E5996512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <9a5e9363-79eb-416c-89ae-c826062350b5@linaro.org>
 <SEZPR06MB69594A5036F122CE6C14043C96502@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <bf4ce87a-51ab-49e1-ac70-c463d8008a62@linaro.org>
 <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
 <SEZPR06MB695943CE42B3A91A22E70DD696502@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <94730d0a-0e5a-4777-aadc-4748038a3ca8@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <94730d0a-0e5a-4777-aadc-4748038a3ca8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 21/02/2024 09:22, Krzysztof Kozlowski wrote:
> On 20/02/2024 13:12, Yang Xiwen wrote:
>> On 2/20/2024 7:43 PM, Krzysztof Kozlowski wrote:
>>> On 20/02/2024 12:41, Krzysztof Kozlowski wrote:
>>>> On 20/02/2024 11:40, Yang Xiwen wrote:
>>>>> On 2/20/2024 4:16 PM, Krzysztof Kozlowski wrote:
>>>>>> On 19/02/2024 22:49, Yang Xiwen wrote:
>>>>>>> On 2/20/2024 5:37 AM, Krzysztof Kozlowski wrote:
>>>>>>>> On 19/02/2024 22:35, Yang Xiwen wrote:
>>>>>>>>> On 2/20/2024 5:32 AM, Krzysztof Kozlowski wrote:
>>>>>>>>>> On 19/02/2024 22:27, Yang Xiwen via B4 Relay wrote:
>>>>>>>>>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>>>>>>>>>
>>>>>>>>>>> Add missing compatible "hisilicon,hi3798mv100-usb2-phy" to compatible
>>>>>>>>>>> list due to prior driver change.
>>>>>>>>>>>
>>>>>>>>>>> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
>>>>>>>>>>> compatible lists.
>>>>>>>>>>>
>>>>>>>>>>> Fixes: 3940ffc65492 ("phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100")
>>>>>>>>>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>>>>>>>>>> ---
>>>>>>>>>>>      .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 95 ++++++++++++++++++++++
>>>>>>>>>>>      .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 ----------------
>>>>>>>>>>>      2 files changed, 95 insertions(+), 71 deletions(-)
>>>>>>>>>>>
>>>>>>>>>>> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>>>>>>>>>> new file mode 100644
>>>>>>>>>>> index 000000000000..1b57e0396209
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>>>>>>>>>> @@ -0,0 +1,95 @@
>>>>>>>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>>>>>>>>> +%YAML 1.2
>>>>>>>>>>> +---
>>>>>>>>>>> +$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
>>>>>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>>>>>>>> +
>>>>>>>>>>> +title: HiSilicon HiSTB SoCs INNO USB2 PHY device
>>>>>>>>>>> +
>>>>>>>>>>> +maintainers:
>>>>>>>>>>> +  - Yang Xiwen <forbidden405@outlook.com>
>>>>>>>>>>> +
>>>>>>>>>>> +properties:
>>>>>>>>>>> +  compatible:
>>>>>>>>>>> +    items:
>>>>>>>>>>> +      - enum:
>>>>>>>>>>> +          - hisilicon,hi3798cv200-usb2-phy
>>>>>>>>>>> +          - hisilicon,hi3798mv100-usb2-phy
>>>>>>>>>>> +      - const: hisilicon,inno-usb2-phy
>>>>>>>>>> According to your driver hisilicon,hi3798mv100-usb2-phy and
>>>>>>>>>> hisilicon,inno-usb2-phy are not compatible.
>>>>>>>>> Ah, i didn't pay too much attention to that. I should remove the entry
>>>>>>>>> for hisilicon,inno-usb2-phy in the driver. Sorry for that.
>>>>>>>> We don't talk here about driver, although I used the driver as proof or
>>>>>>>> argument, because I don't have access to hardware datasheet (and no
>>>>>>>> intention to look there).
>>>>>>>>
>>>>>>>> What I claim is these are not compatible, so respond to this argument,
>>>>>>>> not some other one.
>>>>>>> Why not? Of course they are compatible. All 3 SoCs are using
>>>>>> Why? Because...
>>>>>>
>>>>>>> inno-usb2-phy. The only difference here is the method to access the
>>>>>> ... here! Different programming interface means not compatible.
>>>>>>
>>>>>> Please provide instead any argument that they are compatible, in the
>>>>>> meaning of Devicetree of course. You are claiming inno-usb2-phy  can be
>>>>>> used for hi3798mv100 and it will work fine?
>>>>>>
>>>>>>> registers. They are all enabled by `writing BIT(2) to address 0x6`. In
>>>>>>> the cover letter, I said the driver is actually doing things wrong.
>>>>>> Cover letter does not matter, I don't even read them. Your commits matter.
>>>>>>
>>>>>>> Especially the commit adding PHY_TYPE enums, the name is confusing and
>>>>>>> conveys the wrong info. It's not PHY which are not compatible, it's the
>>>>>>> bus. I'll fix the driver, but still the PHY hardwares are compatible
>>>>>>> between these 3 SoCs.
>>>>>> Provide any argument.
>>>>> Just take a look at the driver. hisi_inno_phy_write_reg() is the
>>>>> function that differs between different models. But for all of them,
>>>>> hisi_inno_phy_setup() is the same.
>>>>>
>>>>>
>>>>> hisi_inno_phy_write_reg() should be moved to a separate bus driver. It's
>>>>> bus-related, not phy. PHY driver should not care how to access the bus,
>>>> So drivers are compatible or hardware? We talk about hardware, not
>>>> drivers...
>>>>
>>>>> but the bus driver should. The PHY driver only needs to use regmap_*
>>>>> APIs to "write BIT(2) to addr 6".
>>>> Different programming interface, so not compatible.
>>> Although maybe I jumped to conclusions too fast. Do you claim that all
>>> registers are the same? All the values, offsets, fields and masks?
>>
>>
>> I don't quite understand. I've said there are two register spaces. One 
>> is the bus to access the PHY (i.e. perictrl for mv100 and cv200 and mmio 
>> for mv200), the other is the PHY register space. So if you are talking 
>> about the prior one, then no, because the PHY is attached to different 
>> buses. But for the latter, yes.
> 
> I am talking about the register address space which the binding document.
> 
>>
>>
>> So here we are talking about two devices. One is the PHY, the other is 
>> the bus the phy attached to.
>>
>>
>> The old binding is mixing all the things up because INNO PHY is the only 
>> device attached to the dedicated bus implemented by perictrl. But it's 
>> not how it works. The binding is for the PHY, not for the bus.
>>
>>
>> For mv100 and cv200, it's: cpu->perictrl->inno-phy. For mv200, it's: 
>> cpu->inno-phy. cpu always accesses peripherals with MMIO, both for 
>> perictrl and mv200-inno-phy. But if the inno-phy is attached to 
>> perictrl. CPU must access the registers of inno-phy through 
>> perictrl(Here perictrl act as a bus driver like a I2C/SPI controller).  
>> For mv100 and cv200, the difference here is only related to to perictrl, 
>> not the PHY itself. For mv200, perictrl does not implement this strange 
>> bus anymore, instead the phy is attached to system bus directly.
> 
> Your driver writes different values depending on the device. For one
> model it writes PHY0_TEST_WREN+PHY0_TEST_RST+PHY0_TEST_CLK. For the
> second PHY1-versions of above.
> 
> The PHY0_TEST_CLK is written to the "reg", so I understand that to the
> device address space.
> 
> If you write two different values to the same register, devices are not
> compatible usually.
> 
>>
>>
>> I don't understand why you say they are not compatible, simply because 
>> they are attached to different buses. For x86, peripherals are mapped in 
> 
> I did not say that. I said that according to quick look in the driver
> and to your explanations you had different programming models and
> interfaces, which means devices are not compatible.
> 
>> dedicated IO address spaces with `IN` and `OUT`, while for ARM, they are 
>> all attached to MMIO buses like APB/AHB/AXI etc.. So peripherals for x86 
>> and peripherals for arm are also not compatible?
> 
> Depends. You did not answer to my question whether you even understand
> what is "compatible", so I assume you don't. Compatible means
> programming models are the same or one is subset of another, so
> effectively both devices work with the same compatible and everything is
> fine.
> 
> Answer yes or not:
> Can PHY1 type of device, so hisilicon,hi3798mv100, bind using
> hisilicon,hi3798mv100-usb2-phy compatible and operate correctly, so you
> remove hisilicon,hi3798mv100-usb2-phy from the driver and device
> operates correctly?

I mixed compatibles, this should be:

Can PHY1 type of device, so hisilicon,hi3798mv100, bind using
"hisilicon,inno-usb2-phy" compatible and operate correctly, so you
remove hisilicon,hi3798mv100-usb2-phy from the driver and device
operates correctly?

Best regards,
Krzysztof


