Return-Path: <devicetree+bounces-85992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1895893219B
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 811011F22960
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 08:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2742B49650;
	Tue, 16 Jul 2024 08:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lV0HSAPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFDF433CB
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721116904; cv=none; b=Ed/kXqWt+UhmYzzUNVe03hJlConhp8j7n6WSQBTbVxhbCldJrq0aEDDolakdC89yqERgeBIQl1Yw3G+LLjUuerLRV2qbo7+vjscyjHddbRjARTVk9v6zZ5u3/tRVLuR5iUoHjWgEWJftPcEODrsYHKdGrBRiGF2MDfisYOctI8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721116904; c=relaxed/simple;
	bh=1Ry3UgpkMN/ZMbJkQrrfTeDE85D3vONSmD4RWMF5Drs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=coi5TEU/jFy5wfQ1QdHJ73ytxtWxW2bLoclIpJx6y4amYIC6r3Z9UlGaZOSlaJvdxZWven200krURtYjt9hGoKPSAix2vwSxV4k+RGkVAblHfs7kLYPLICkGNDkhIan7Ch9G2wqGy3BK+Vx8l64hl6MD6LLAf7NzRonB5DsQecY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lV0HSAPA; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-36798e62aeeso3337141f8f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 01:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721116901; x=1721721701; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZwXOm3tNwMkuI9eyvNzwE9pC9TYEz1S59+t6GuH8NIc=;
        b=lV0HSAPAlfVBS+PtcCsLL3oO8C/ZApZIQEb4+2cL8haHGShXHLYpyGi70RWB1dn8HK
         +UyO9mjabEHQK3d0AC5mgOSvfIjFqvcyBG6x4ZU5JEzgQp7iUCPf7hk9luXOsC0dhlVL
         YKS3mAxCtEacWSx7tX0pNw3erhkTLFG4r0Hpomi6z4dhPl+AdZywScuzYrwxHPZBI9ST
         Q0A4RdiJV8P7MejcI5avF5iIbgIT0a3NVXoYek/mAI7Io33FUZrhRJ97DCIw6xw1v/9B
         P36sKBQ/sLU9wqIveOvCWr7vooygijMb5jWDA4etWcxtIr8/CBP9riy1D8oZaXXk71G/
         vz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721116901; x=1721721701;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZwXOm3tNwMkuI9eyvNzwE9pC9TYEz1S59+t6GuH8NIc=;
        b=qwwri2v87eC/8d2nqVUhhZrYOi4cpmCJl9wgSCErMtxoBV259IFtOxHozxQ7hVid+J
         yHK5QrY4MJ/104u5/NzEXCioG+aM5LEw4R8tz61ZXUxtvP7gNM75Plc8WT0HR9vclaKx
         WBn9kY1RLqhdtLJ0KZMAPvJt96FlH5f+idtVl+EkAU5sUc3ST2+lQgbfHpJe6DbDulpw
         UuZRdRCLJQgYmXO1eeCUvLOp7itfcaKlxtkkFRcGl3NVeieZ2V9ASteewnPVfcyAZ/ur
         HgQcgxCFEeS1c1Fy0YCJW8pgyMipgem9kF8ceX+JZQui9xzG7HHsWFvUDmYKh+uH5Rvq
         nLiw==
X-Forwarded-Encrypted: i=1; AJvYcCWyiLiAI7ZRE/vY/caMKUhllUgxnjrMBv2mZSt4xI4SVojUFZwtS2UUstIdpThi5Oh+naJ/ja536nKkj4pztIWNyGIJV3IOH9CrYw==
X-Gm-Message-State: AOJu0YwnyK/A8/3Nsg2xF4A9u5O/drs/9nZUFX4ovBes9Df63iFgDE3/
	+6AFsBu5jAuFuqoYjBiXswHlrkn8SYMH7u6b5dKIgwNeCC1BekicJlIufwVelFM=
X-Google-Smtp-Source: AGHT+IG6fQN6WXJ0Gc2jk8xr2vMncZMDw69SpzYeioPOmKKhucyeLpDyckAH5Kp4szbtrRfRKHSMyA==
X-Received: by 2002:a05:6000:188c:b0:367:9614:fb99 with SMTP id ffacd0b85a97d-36825f66e6cmr1061751f8f.10.1721116900778;
        Tue, 16 Jul 2024 01:01:40 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dab3cb0sm8206693f8f.10.2024.07.16.01.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 01:01:40 -0700 (PDT)
Message-ID: <41981721-b90e-4eed-9258-9aa96ea9cc07@tuxon.dev>
Date: Tue, 16 Jul 2024 11:01:38 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/12] rtc: renesas-rtca3: Add driver for RTCA-3 available
 on Renesas RZ/G3S SoC
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, lee@kernel.org,
 magnus.damm@gmail.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
 <20240614071932.1014067-7-claudiu.beznea.uj@bp.renesas.com>
 <2024061409215756e6a10c@mail.local>
 <4a477079-b4a6-4861-ae24-b3b87adb8ecd@tuxon.dev>
 <20240617072551acf731aa@mail.local>
 <f3584295-b396-455a-b988-099443b58dba@tuxon.dev>
In-Reply-To: <f3584295-b396-455a-b988-099443b58dba@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Alexandre,

On 17.06.2024 10:31, claudiu beznea wrote:
> On 17.06.2024 10:25, Alexandre Belloni wrote:
>> On 14/06/2024 14:06:38+0300, claudiu beznea wrote:
>>>>> +	/*
>>>>> +	 * Stop the RTC and set to 12 hours mode and calendar count mode.
>>>>> +	 * RCR2.START initial value is undefined so we need to stop here
>>>>> +	 * all the time.
>>>>> +	 */
>>>> Certainly not, if you stop the RTC on probe, you lose the time
>>>> information, this must only be done when the RTC has never been
>>>> initialised. The whole goal of the RTC is the keep time across reboots,
>>>> its lifecycle is longer than the system.
>>> This was also my first thought when I read the HW manual.
>>>
>>> It has been done like this to follow the HW manual. According to HW manual
>>> [1], chapter 22.3.19 RTC Control Register 2 (RCR2), initial value of START
>>> bit is undefined.
>>>
>>> If it's 1 while probing but it has never been initialized, we can falsely
>>> detect that RTC is started and skip the rest of the initialization steps.
>>> W/o initialization configuration, the RTC will not be able to work.
>>>
>>> Even with this implementation we don't loose the time b/w reboots. Here is
>>> the output on my board [2]. The steps I did were the following:
>>> 1/ remove the power to the board (I don't have a battery for RTC installed
>>>    at the moment)
>>> 2/ boot the board and issue hwclock -w
>>> 3/ reboot
>>> 4/ check the systime and rtc time
>>> 5/ poweroff
>>> 6/ poweron
>>> 7/ boot and check systime and RTC time
>>>
>>> As you can see the time is not lost but continue to increment. I presume
>>> the hardware takes into account that time needs to increment when initial
>>> configuration is executed.
>> I don't think so, I guess it stops ticking but the registers are not
>> reset so when ts starts ticking again, you are not too far from the time
>> that it should report.
> I'll double check with hardware team on this and return with an answer.

It has been confirmed me that the HW manual has a mistake and we can avoid
stopping the RTC here every time. I'll adjust it in the next version.

Thank you,
Claudiu Beznea

