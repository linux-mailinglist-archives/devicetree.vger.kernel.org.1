Return-Path: <devicetree+bounces-37459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F826845143
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 07:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C468E1C226A4
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 06:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D976166A;
	Thu,  1 Feb 2024 06:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DZqeVA14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1311262819
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 06:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706767896; cv=none; b=uKeMAan7hJaIaYvq+6ezrbMTL6jGvz/M2vzbTEFRC0fh7bUS9vQHzsuOKCf8VfJwQphCgecqmFSIo7ahv+aFXTAjkFSIlDy9PnFQ7PR0Bdjq9QmU8elAzFCa+3X2AyqkKhoavuvB60PxugjSBvSEMZC0s/kWr4KVRP+8Y0si2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706767896; c=relaxed/simple;
	bh=eTXVyGagwsXV+tO/9Px2ARKRHaX1gUkQoE/SSql8tqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NBte6LiLUmNI/ZayI9fQ/zmMI8xsNRA+ce1uHFDX69d5Q46203ZworpUWwkz51+5I23q2E2/w2joEWpnsGtM+3i+ftCkZ51nl253wm7IS1Nx0nTUbHVkTn4o9bLLLBOeYoM2Drzm6XFwFSftIizFtu0YeqXbO8bHznfr54OwHqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DZqeVA14; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55fc06c0dbeso105955a12.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 22:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706767893; x=1707372693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hVJSAQ4iKt2rHmFPovap9MlrrFsnqnLo/a/5d2ImBkk=;
        b=DZqeVA14t5LRFD6UNyuK55X+jT2cAb+2QOzlw4FryAuqX66/cwjKoWc6UamyJiaAhh
         ZOOR0w9bpdslImHqfHV963nogUrAsn8WIRUHQUy8EHwAzUbWv6L0m/OOOixrK2yqrmnw
         BjrUM5dRw6n85Foi0ZdJeNTXYo6haSn4q1onR6OgMBpDkeDX9hJws/FHXJBqpZl7kbV7
         JVoT2XOZ/KXX+7V1vIznPxf0nB/w2Gcn2/xE9a13TnGFiZEZfM/UpULae7zPCVF9Q3aP
         9Dl/y1S/+eH/oLP8mhv4jgMu0IUS1+U8hcnAn+ih1RIIjpllUAJprDg3QYcYa+uQSghZ
         fm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706767893; x=1707372693;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hVJSAQ4iKt2rHmFPovap9MlrrFsnqnLo/a/5d2ImBkk=;
        b=dU2JVoijQTtPJH1goXTSpyYluMjL5p898dDUCP1O63U9vHJxkW4cE9haeLV3DkS5bO
         JoGU17fUKxZhR7umAyCZzSsW9nZCrqdhLupdw0hWK4ogItG82jknYkoanBa6ASCh7KV8
         JVsGwld93858/6ijRiGFsLhBX4xFa0wFIRU+iiY+V9gr9wq55g6lPblUeWfhGuT4sKSE
         NJYBJYkQTry6DfOAqYWsGFM4nKOxDlBfX5KvxTtU5SoL72OPz7+zgVs9EM9Lb0vZKhff
         ptbyzwGAZS2aRT/CVTJuoV3QQndJHQql8HyBggxLqI/7wvNSNuD6dlNgOPmyTpfUdQ3k
         CPBQ==
X-Gm-Message-State: AOJu0Yxnh/2sMih8oQdYdP67NsDjuOPBxGBE7pTO92LSu0ZGQ2Lj4aD1
	VaztwAqJeOsRa2z2RD+oA5xffXCfp8TBMUVL+crVuuVoDHq57MCTgH0C1OyOycA=
X-Google-Smtp-Source: AGHT+IFXCpyVRrh4kgdwQ7mG5LaIuOmqM78oNd69ZoPCv7lF1CJrBejSJBRfVD4Hav7A/9jASiYSXg==
X-Received: by 2002:a17:906:4c54:b0:a31:8a51:67df with SMTP id d20-20020a1709064c5400b00a318a5167dfmr2654341ejw.9.1706767892913;
        Wed, 31 Jan 2024 22:11:32 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVn0qlqNPHF3JU1vV1JcGGcb/0NNVrOSAY6u5lr4r0FTRX/uHuAgrWfBCjXx2BZyR07mStLABqd6+WsigxMBfWejZ+6MZXjkq6WOcWgiMB4bMdjD4QtgKOcSduWgQDq2TVlLnkvIohhNTfKwy7qgCBJ0qY5IM97t9iCHvlsgYRio5BjcTFXwA01vGJdRo52M7suU17wL1qcEtYgHGPJUScTlG52FBQLss8vf7Bu+ah2KzmEdTRqzwxpXYBpvrqrwCxuFb2aR+agzDljipRf2eWxVfKkeui4FFS69vPcjJSfnlNOdl+l6IyTfyDEDDznAl2e5s4HvEMHqs98SmFL+Zf1NoZ6ALwypHlTN4gxvFZdZTBoJDozlYFsat4hQJfI/YdnXKkeSpKbDDIZVPzyGxyTX5GtxqlC0Ey/r6Hu6lXATyUac6uILjUKsEA87/PaXYosw4wxZZzMiZoDwWt05hP5Pa27AfrGImZKpCrCuEVkpwRVlT5aV0CGfWXZ95pjZ0xG1InNBCr+t7zS4hNGcddBOFg/UEUwNZYKcb7K0p5pOJLIuJM7zo1aFoo+/j7eHrA/CMA3uAUenfPjKlakwgSEXN9XpJnzxTurWrgV46jbVwv7xD6t
Received: from [192.168.50.4] ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vx4-20020a170907a78400b00a368766676fsm1059551ejc.46.2024.01.31.22.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 22:11:32 -0800 (PST)
Message-ID: <d52cded7-fef5-4bfa-a82f-6a6c77dd7ebc@tuxon.dev>
Date: Thu, 1 Feb 2024 08:11:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] watchdog: rzg2l_wdt: Check return status of
 pm_runtime_put()
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, Biju Das
 <biju.das.jz@bp.renesas.com>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
 <20240131102017.1841495-5-claudiu.beznea.uj@bp.renesas.com>
 <TYCPR01MB11269AD7463C9C7C0A09A43A9867C2@TYCPR01MB11269.jpnprd01.prod.outlook.com>
 <ddc0b42c-bf88-4c0d-b938-8bd7ff7b329a@tuxon.dev>
 <TYCPR01MB11269BFC2DB457049A2B8C0C8867C2@TYCPR01MB11269.jpnprd01.prod.outlook.com>
 <12f458b1-f963-43f4-afcf-715abf635e54@tuxon.dev>
 <4ea02224-e9fa-4ee9-9210-bc7a7ae9e86b@roeck-us.net>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <4ea02224-e9fa-4ee9-9210-bc7a7ae9e86b@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 31.01.2024 15:16, Guenter Roeck wrote:
> On 1/31/24 03:00, claudiu beznea wrote:
>>
>>
>> On 31.01.2024 12:41, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>>> -----Original Message-----
>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>> Sent: Wednesday, January 31, 2024 10:36 AM
>>>> Subject: Re: [PATCH v2 04/11] watchdog: rzg2l_wdt: Check return status of
>>>> pm_runtime_put()
>>>>
>>>> Hi, Biju,
>>>>
>>>> On 31.01.2024 12:32, Biju Das wrote:
>>>>> Hi Claudiu,
>>>>>
>>>>> Thanks for the feedback.
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>>>> Sent: Wednesday, January 31, 2024 10:20 AM
>>>>>> Subject: [PATCH v2 04/11] watchdog: rzg2l_wdt: Check return status of
>>>>>> pm_runtime_put()
>>>>>>
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> pm_runtime_put() may return an error code. Check its return status.
>>>>>>
>>>>>> Along with it the rzg2l_wdt_set_timeout() function was updated to
>>>>>> propagate the result of rzg2l_wdt_stop() to its caller.
>>>>>>
>>>>>> Fixes: 2cbc5cd0b55f ("watchdog: Add Watchdog Timer driver for
>>>>>> RZ/G2L")
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>> ---
>>>>>>
>>>>>> Changes in v2:
>>>>>> - propagate the return code of rzg2l_wdt_stop() to it's callers
>>>>>>
>>>>>>   drivers/watchdog/rzg2l_wdt.c | 11 +++++++++--
>>>>>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/watchdog/rzg2l_wdt.c
>>>>>> b/drivers/watchdog/rzg2l_wdt.c index d87d4f50180c..7bce093316c4
>>>>>> 100644
>>>>>> --- a/drivers/watchdog/rzg2l_wdt.c
>>>>>> +++ b/drivers/watchdog/rzg2l_wdt.c
>>>>>> @@ -144,9 +144,13 @@ static int rzg2l_wdt_start(struct
>>>>>> watchdog_device
>>>>>> *wdev)  static int rzg2l_wdt_stop(struct watchdog_device *wdev)  {
>>>>>>       struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
>>>>>> +    int ret;
>>>>>>
>>>>>>       rzg2l_wdt_reset(priv);
>>>>>> -    pm_runtime_put(wdev->parent);
>>>>>> +
>>>>>> +    ret = pm_runtime_put(wdev->parent);
>>>>>> +    if (ret < 0)
>>>>>> +        return ret;
>>>>>
>>>>> Do we need to check the return code? So far we didn't hit this
>>>> condition.
>>>>> If you are planning to do it, then just
>>>>>
>>>>> return pm_runtime_put(wdev->parent);
>>>>
>>>> pm_runtime_put() may return 1 if the device is suspended (which is not
>>>> considered error) as explained here:
>>>
>>> Oops, I missed that discussion. Out of curiosity,
>>> What watchdog framework/consumer is going to do with a
>>> Non-error return value of 1?
>>
>> Looking at this:
>> https://elixir.bootlin.com/linux/latest/source/drivers/watchdog/watchdog_dev.c#L809
>>
>> it seems that the positive values are not considered errors thus, indeed,
>> we may return directly:
>>
>> return pm_runtime_put();
>>
>> Guenter,
>>
>> With this (and previous discussion from [1]), are you OK to change it like:
>>
>> return pm_runtime_put();
>>
> 
> Instead of looking at the source, I would kindly ask you to look at the API.

OK, I'll keep the patch as is. Thank you for your input.

Claudiu Beznea

> 
> Guenter
> 

