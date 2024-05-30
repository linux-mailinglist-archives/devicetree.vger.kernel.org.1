Return-Path: <devicetree+bounces-71000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 041FC8D5571
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 00:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4521F1F23053
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 22:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379061761AD;
	Thu, 30 May 2024 22:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lfLrzeiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E9B187565;
	Thu, 30 May 2024 22:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717108419; cv=none; b=s4EEcwv9SLnlXoi19FLmalrian33I73uIP/XI0yznp8LhZwMGHCpXo9iLOZ76dZaHP7v2vvbU9cms/h/ED5Y6x+z3nhFUoIsiGsHt7+MHAcyeZwdNZHzj06fYLwhqzpnBmFrYHjS35BKGRDTFvbS+QaYuwmixNCpfkX1R8cI6pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717108419; c=relaxed/simple;
	bh=pnyPAhu+XMIegO0V2HOs9dQTBhRohAtB0UAGPQXvzF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DvpPap5JIPrEr/HJrrO8qz0+F5qwXEpecam7LTUjnI0ZMB+qvREEOeXKUzxKHD/AVv8kycq48yHchP0CL5PT5MB6ZoKsrnmyofO3loGuxjboF2BOroghzD8zIiP4CZJZbyXXTGg65b+FPyz7NFdgy0Tj03r6n6JwfYdzzBRPF5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lfLrzeiu; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f6911d16b4so1330444b3a.3;
        Thu, 30 May 2024 15:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717108417; x=1717713217; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lIRQpYJRenRcSMBxYWTgTlqhmr+SQvcds/Ik374J5Lw=;
        b=lfLrzeiuYVHCVaDWYOm98035YOuWEDgkWSPriSCDs9AeP2L5bphe2ggLioVMPh8o1p
         FaefUyptyABMHgWFx0L2OuK8tL94LwQqtsmHUBfh6xgCV37DTKajcXruPplGHZdG/GId
         ypXxtvrcgrvx/c9EZJrBgT1XleYJSqysn6hh/5oJG+xsoVxULQdD+tQZocstTqrW53bh
         Z5OOdL1fpNA2iZmlxW5vTeHNgo+WhGd2E6/9Swdmn3RdAyiurKpLOhJWtXVszch4TpH5
         0NyuoPTUipMSdiD8fTBkyuNaBOh4M3nFnVB76hT/ruDoDtymlNwvYViOsODVhTcXMPPm
         X9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717108417; x=1717713217;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lIRQpYJRenRcSMBxYWTgTlqhmr+SQvcds/Ik374J5Lw=;
        b=gY1mNiOYQRdaICDL3cQcqqG48CqHqpWEN6B8b9KGHsRzJEoh+ToCiBlWja1KzLFzg1
         Y7nc7x2rgLcwX3Lt+zYn7ZY9asPJxvtr3Jx/7LgfzM1qXznArWhdKZ9HKWpxuO6d9MJA
         OF3sh0eM11jSL0ISpcCmJ4aZglLKfN8+cDNKbtjJ9XFOroiWnk1nHJpOxYlDs7JZDuGj
         otGuoFBEk+8vH26tv44MEqlhEIH9Y8Hj+hXswpB/Psfj0fSj+0/U5OpWJI7ik4F5m84F
         DzKuU4qERRNtPq93o3QHSkLAuKm7jXa8DT+4pc3hKYee4vGf/fWuTYdexiX8KII3KIKP
         d+cw==
X-Forwarded-Encrypted: i=1; AJvYcCVUwuxVrZHvksrJHq2njABTJWh1/AP9dZYof0yKBQVHdsFYeXMdQjhIUNBZHwL9/WfBwC8sTcbm1FcvPxJLOPNKA1UOM0Gg9N4AVuv7GxIR3eFPw/bvZysK5ClX0i1EQiVabU9e2Hx7yA==
X-Gm-Message-State: AOJu0YyH6D5rb1zIk8nzn5XS1AnI9whu+n5bBMFSQG4Y+hkhxpEnM3W1
	7yP4aXNXO2ZVztUzNdBkwMevFdg68irHA5XXNWB24QxSSRfsr9vZzjvzJw==
X-Google-Smtp-Source: AGHT+IFFJ4Q6B4VJOsRsydZlo9eu8c196DAkassmvdcl92hXiMT5V2mm+6YuufnyCTc+bgPe37+rAQ==
X-Received: by 2002:a05:6a00:9294:b0:6f6:94dc:6c4 with SMTP id d2e1a72fcca58-7024781fba4mr222939b3a.20.1717108416553;
        Thu, 30 May 2024 15:33:36 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6c35629c3a1sm228722a12.56.2024.05.30.15.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 15:33:35 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <ffd72953-ecd2-405a-ad6d-236143b26946@roeck-us.net>
Date: Thu, 30 May 2024 15:33:34 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] hwmon: Add support for SPD5118 compliant temperature
 sensors
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas@t-8ch.de>
Cc: linux-hwmon@vger.kernel.org, Hristo Venev <hristo@venev.name>,
 =?UTF-8?Q?Ren=C3=A9_Rebe?= <rene@exactcode.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Radu Sabau <radu.sabau@analog.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240529205204.81208-1-linux@roeck-us.net>
 <20240529205204.81208-3-linux@roeck-us.net>
 <34a4292e-c4db-4b40-822e-b892e1444045@t-8ch.de>
 <16e448f1-cfc9-4e88-b3f1-55e1856d1405@roeck-us.net>
 <0a2ed64d-06d9-45e8-a054-4ded4429f952@t-8ch.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <0a2ed64d-06d9-45e8-a054-4ded4429f952@t-8ch.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/30/24 14:02, Thomas Weißschuh wrote:
> On 2024-05-30 13:46:48+0000, Guenter Roeck wrote:
>> On 5/30/24 13:20, Thomas Weißschuh wrote:
>>> On 2024-05-29 13:52:03+0000, Guenter Roeck wrote:
>>>> Add support for SPD5118 (Jedec JESD300-5B.01) compliant temperature
>>>> sensors. Such sensors are typically found on DDR5 memory modules.
>>>
>>> I can get the module to automatically probe with this change:
>>>
>>> diff --git a/drivers/i2c/i2c-smbus.c b/drivers/i2c/i2c-smbus.c
>>> index 97f338b123b1..8d9218f755d7 100644
>>> --- a/drivers/i2c/i2c-smbus.c
>>> +++ b/drivers/i2c/i2c-smbus.c
>>> @@ -382,6 +386,10 @@ void i2c_register_spd(struct i2c_adapter *adap)
>>>           case 0x1E:      /* LPDDR4 */
>>>                   name = "ee1004";
>>>                   break;
>>> +       case 0x22:      /* DDR5 */
>>> +       case 0x23:      /* LPDDR5 */
>>> +               name = "spd5118";
>>> +               break;
>>>           default:
>>>                   dev_info(&adap->dev,
>>>                            "Memory type 0x%02x not supported yet, not instantiating SPD\n",
>>>
>>> (Credits go to Paul Menzel [0])
>>>
>>> Maybe you can add that to your series.
>>>
>>
>> That is specifically for SPD (eeprom) support, which I didn't provide
>> in the driver. It does not register the equivalent jc42.4 temperature
>> sensor either. Given that, using the code to register a temperature
>> sensor seems inappropriate.
> 
> I see, I wasn't aware about the specifics of SPD.
> 
> It felt like a nice way to get automatic probing.
> (I was wondering about that today before)
> 
>> I didn't include accessing the SPD eeprom to the driver because I don't
>> have a use case. I don't mind adding it, though, if others think that it is
>> important.
> 
> Wolfgang seems to think it's important:
> https://lore.kernel.org/lkml/tdia472d4pow2osabef24y2ujkkquplfajxmmtk5pnxllsdxsz@wxzynz7llasr/
> 

Ok, but that doesn't explain the reason. Wolfram, Paul, why do you
think this is needed ? Note that I am not opposed to adding spd
eeprom support, but I'd like to know why I am doing it before
I spend time on it.

Auto detection would be nice, though, because with that we could
drop support for the _detect function (which is kind of risky
on the i2c address range normally used for eeproms).

Thanks,
Guenter


