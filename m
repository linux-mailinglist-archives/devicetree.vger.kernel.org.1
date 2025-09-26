Return-Path: <devicetree+bounces-221721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C94CEBA25A8
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 05:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72AF04C82D4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 03:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E86D26D4EA;
	Fri, 26 Sep 2025 03:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hr00NtoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24B72673B7
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 03:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758859038; cv=none; b=CO2heHR+6rLF4u5uMWZ7vLcW4RBwF7/9cXKLPEAK9IJKSezJA6RNwEyqcDQ/vgfAQMMPdS4BLSPkIGq+2+cKBy+zT9ToK31dH/C3MR2/yhxMqQJvalp/EYv0nlvZ10sNlmXfSYHvSfnjOVL0oyaq0rUczXeVw04p0Kx8nUaPt4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758859038; c=relaxed/simple;
	bh=c+VRJKjFpfa4LnEwCa9nEjNOAnPet2jbGMgQ0aPQoZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=byae8jLrstq+DfHwgStFglTZebjd6HUJqTc0bbR2/MMsqcrXJpCOlYOCAkNN+2jJH9ZaLKND6zgQJCoZgTe4uf0umpGhBfWAB9lKISCpolWwq/Dtb989TXvIOYMjGLF0rF7uYeZOUHu8G/j6HGZh2XIOwydM6+svBl0qYwlpDow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hr00NtoG; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-77f1f29a551so2249614b3a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758859035; x=1759463835; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=o85lE6quOalHNNZp8ql9U2dpXW3JKqiKckJUJXKtYFs=;
        b=Hr00NtoG5lEtmZWdnAuWB+0X3thIf8DJ6KoW2QatOm0ZPIZwl7/S5cMA4x+b37ykhC
         wxNAkcwtSYQrefoTUVuXM3mNEHinRVjFMQbKrj53qo8ceaRkHt6BmF1+8+rDiGgucoyg
         yjB7+RxJzW/6cUxhZ7aPlSwhdIlizv3OxZ/1XNNAUOJteF8wHV9wx0QmrsSSb8sbUtuE
         WTXctN6gQvFUFa/9yjChjwBmE3lgsIr8fbnjSRz2HGh97SSQhGTV7Rb3vXekwhDoARNf
         YwG+ax/xnym7fhgDjUyvteIyWH9oAivSeSuKh8tghDyoUwnxSbuYHZLzSG2TdDdGGJ9V
         VMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758859035; x=1759463835;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o85lE6quOalHNNZp8ql9U2dpXW3JKqiKckJUJXKtYFs=;
        b=S0v7z8tgOphdIkadMjhjLpiOVpT6heIEexJxx810EvJeeEhOlBBN2b8Jwk0lkvnzRX
         U32rruALOE+TqH58A8dLkBrDxUAOvKTa8sUwaqeB33uHqzlyxiECFbwrXKqpZtiRx5cM
         yeDJnSNRESiy2z4uOlDu+KTvXcDk9nitSqcuDnIhTgoY//IoYqLjRbkUq06KTojtT4wV
         mkNLJrLoioPl6dAbDdGgw9IIWBk+KEarYXdL1JCyRQusjXTPbRNFOlWGz9nUQtrSsN82
         yPkIFa4EAoofjaxWeXd+skQRJezq2J3I+kYmbBuJk+CeTayMJ4ewdmk1POqrbzdx9JAm
         DFFg==
X-Forwarded-Encrypted: i=1; AJvYcCUbHXxhD8pywIE3lXkPuVNJIEzaF3PGN04qZrkjBI/Hie1kpID2AcEa6XKkL9C2IYyI7lAtaLzyjvDZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzzvsyHvSxTERbhvD88UicsH6oedecJ9Q7R4oNj+d8qYCzHACxO
	OOFer7d1BgOIhy+n/WOyHJZ0Ob7YMw6wrvOKstnKSmHMo95BnPbIuJvp
X-Gm-Gg: ASbGncsgNmlEUEZUi4fGGcasdL4c5LJNpWm7ydrKgzqlD1h1o8MhvbqSuqyfQ7WbpEi
	9VvA9nkJDzOXvbN1zwmTZ9/XAQpb95IVCJBhH/7HQJQGjWPSVolW2C9Cft3g3UGP1xzBTkWjA1C
	yRvtwf4Gro1ojWdqD+EiCeJJetdHzr32fmaiJbtYTTQe87aD7P+CogFitp/aAzJhoqhteg99E2y
	RQDSMJn0XjsCtcG2A/CMKej0dLpBtmHUizAfVhZSdjBs4P5VpTzMeEB2xrsfitbtIUye6Hbq0a1
	TwE6+fQshJ4Y7oDBEzz7pgSHXsW3SU3oVnHu9oUGZHxQZ2YD8lHIjRUhkTL82/qsiy7gbsBM9MB
	dTvyXGPEcm74X1dIzwN20a1/AU0ZA68aZIsesuvimNNDKjMPnfS2Ikhw/Nyc7vEuqkFfk6dM=
X-Google-Smtp-Source: AGHT+IEOgjgpJsRpJuyWdP0klqSHe3o37FG3S7qBfBOBvzeQE8xEWH5mtdqtdiTRJIUDIqakWYxoZQ==
X-Received: by 2002:a05:6a21:3381:b0:262:8bce:33db with SMTP id adf61e73a8af0-2e7d0db08c9mr6959272637.28.1758859034888;
        Thu, 25 Sep 2025 20:57:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c52eee5fsm3588966a12.0.2025.09.25.20.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 20:57:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <8c6f609e-c086-4b6c-abb5-8d33ec85df47@roeck-us.net>
Date: Thu, 25 Sep 2025 20:57:13 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] hwmon: (ctf2301) Add support for CTF2301
To: Troy Mitchell <troy.mitchell@linux.dev>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org
References: <20250916-ctl2301-v1-0-97e7c84f2c47@linux.dev>
 <20250916-ctl2301-v1-3-97e7c84f2c47@linux.dev>
 <53f1d5d2-c871-4823-ab13-8c3dfd86dbfe@roeck-us.net>
 <aNXtJ0S5SAMsUwnD@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <aNXtJ0S5SAMsUwnD@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/25/25 18:32, Troy Mitchell wrote:
> Hi Guenter, Thanks for your review.
> There are many things to improve in this driver.
> 
> On Wed, Sep 24, 2025 at 08:43:35AM -0700, Guenter Roeck wrote:
>> On Tue, Sep 16, 2025 at 12:46:46PM +0800, Troy Mitchell wrote:
> [...]
>>> diff --git a/drivers/hwmon/ctf2301.c b/drivers/hwmon/ctf2301.c
> [...]
>>> +
>>> +#define CTF2301_LOCAL_TEMP_MSB			0x00
>> 	LM90_REG_LOCAL_TEMP
>>> +#define CTF2301_RMT_TEMP_MSB			0x01
>> 	LM90_REG_REMOTE_TEMPH
>>> +#define CTF2301_ALERT_STATUS			0x02
>> 	LM90_REG_STATUS
>>> +#define CTF2301_GLOBAL_CFG			0x03
>> 	LM90_REG_CONFIG1
>>> +#define CTF2301_RMT_TEMP_LSB			0x10
>> 	LM90_REG_REMOTE_TEMPL
>>> +#define CTF2301_LOCAL_TEMP_LSB			0x15
>> 	TMP451_REG_LOCAL_TEMPL
>>> +#define CTF2301_ALERT_MASK			0x16
>> 	TMP461_REG_CHEN
>>
>> So far this looks like a chip based on LM90 or TMP451/TMP461
>> with an added fan controller. I can not immediatey determine
>> if it would be better to add the pwm/tach support to the lm90
>> driver. Given that the chip (based on registers) does support
>> limits, which is not implemented here but essential for a chip
>> like this, I would very much prefer adding support for it to the
>> lm90 driver if possible.
>>
>> The public datasheet does not provide register details, making it
>> all but impossible to do a real evaluation. Any idea how to get
>> a complete datasheet ?
> Yeah, more register info at [1].
> I've checked the detailed review below,
> but I'll hold off on sending v2 until you decide if we really need a new driver.
> 
> Is this chip more like the LM63, by the way?
> 

Good catch. Yes, looks like you are correct. LM63 is an almost perfect match.
CTF2301 has a couple of extra registers, mostly local setpoint and temp LSB
plus the registers in the 0x3x range. Actually, those registers _are_ defined
for LM96163, so that chip is an even closer match.

What happens if you just instantiate the lm63 driver, possibly after updating
the detect function ?

Guenter


