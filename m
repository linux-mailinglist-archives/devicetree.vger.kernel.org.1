Return-Path: <devicetree+bounces-234327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF3C2B5B4
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:29:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E87994F408D
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A38D30215A;
	Mon,  3 Nov 2025 11:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e4g6jvJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375593019BF
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169223; cv=none; b=s5PNJN5IpKaEsiVZa5VWEH8ygAVMDTFmpOEuvtO/pNqMaYIgjb2vnIAnVM1qXAC8t3sk4HUpi97L0p3oS7hVn0ZkGsAvme6dUu309OaMax2eiYfyoUZYvcjwJaISqzhc6Je6vV5QFq+PjbWth0x3P34d9jxwI9G+5Qq4v1tntdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169223; c=relaxed/simple;
	bh=lGE7Ybu/RDSIulxrNCxHK7fYM0+Qcge2/3uQRKIybAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k6pePIqtxVjYkBM1/r4vq/DPX+GxktSaLeRVVYAApaK55aDSwGI3UqcGsIAru6sO11Eix971q2XwoqqqMCa1GuJY5btrSuIuF1JlEs2Wkb9sqahQmDTv3ywtW7krKCTdndDPmtky2oWSO1ukjUCZcZCqAtMPWWg64AZwZg1gET8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e4g6jvJJ; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-63bea08a326so6187290a12.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762169219; x=1762774019; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qjmy8XjX+bzyGd/5u6oANywBcBczevKHZ7vCYGJEnxc=;
        b=e4g6jvJJclnb+Bh7nUITeQ9pEDiyXGS235zjqhzozRUfnn8CyyR5clYo7iuFiA6Cgk
         vKmVxhDeuS07H7ObjDJQEaYUd1oF+Lv0F9Yl2vM81WMw1TEInOXkmnhLnvGafPgVJ5nb
         bZrKAciwkJDRT0/rhD8eEmOxdDMszZe2dcu+KZw86aCWuuAfjxaKVSTV4mKxImYtsF+f
         dMOcC+7uzVqRujYWgTBrsoJuaSnKU8wIA1874aVaaAT4W7apTVEtyIUn33Fnp5expoC/
         /DoqUh2e9H/u/7g7dTrlKN8w9EJkLBVNv+9e4Q2Z0/fvi7xq7p0qPgzAi2zP63UGqE08
         g4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762169219; x=1762774019;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qjmy8XjX+bzyGd/5u6oANywBcBczevKHZ7vCYGJEnxc=;
        b=cSpwTxOxXFhHzitXBC17PPZWlHUiyYfl7Je3w4AsXIz/nB6/egJSML4Fb0nvw776E3
         WN7UXgCl+ER/alMAMSMyrXmBTxSqIxFJJiH4Mapkb68urYFS8K0oyN5KLlpoFLinie4r
         QcAoxKVbyb5ZV0tsipiqDBR3S+NA9MEnCHY/qLmaaxrykRmRHqJjxJVzPRZOry+s8JG+
         OUC9bsg0H20oOef2B4+hWKRpme3ptJM5uoBYEz2sdBiTRnyjgUh/EoIVtmoh1f37MbPO
         xIqxg+nBYgimECQKfzEdp8YZ3aZVFarQ+fUkio/VLYWcN25gIWPvFUbonlgRwia0KrWY
         SDKw==
X-Forwarded-Encrypted: i=1; AJvYcCW0EN+7G2U+tzyNdxBverscUlxSBNJPVLfmtDE3y60w6YzjK5vxz+iIivgubq2bbMdA/JqHJ1Unvh46@vger.kernel.org
X-Gm-Message-State: AOJu0YwdYX/KOC9rIIxUgeOsxi4vkCZQoCd7GSAibflkQOj3WK4fCyTZ
	CHh3ohqCNQBwYv3xQMV5RqUPaX1jFWIZk2Vwyjz8t23M5O265ZGkOIukGwUyLpcTY8U=
X-Gm-Gg: ASbGncvgxum05kn3mDXeICsIN+UxJlU9S9ScyH+0SmEuRYTPzA/zvgKqDJjM9rdtf83
	56BXIk3AbLsp4Oqdfat7I5/a9FZE4tqBOHRUTxJKMNflsQPjyfjjEuOe49smnkn3zoXl/lKOOlB
	pYdv/zY9XH2Nlmg5M20+k9bdzqCGLXc9pm61/supQkJdoOuOflg+pu2VUn6JNt0o98Xz/o/dQZ+
	k+FfT5SFttnewbx69THpRw0rE6BxQ/alo061Qp9WUl00TnCn7RyEw5buZW8Bo4tw7iTsvz+7ZDr
	aa8x4MjU6QvowRXW6QnmxFosJ+wMqgY2Yjhr38k3pTf1V/z6CSb/f3nhPJmRim3qPFNfaR7vYrT
	1MCeAs99a2n0mN3LEkCMFayNzUx/3uqSMUnNUxjs/a6MfVX/cFY7icss06Z8X7SW+i/+5YMLWe3
	A+2IdVUuc1IDRK/F4hx68fKeI=
X-Google-Smtp-Source: AGHT+IHivtvy/jRPu0I8Ces/TDhvBY7TVA9tDT88jLA028aX3ASpmqQ3KfJYVYM1rOEorR2QyolQYQ==
X-Received: by 2002:a05:6402:4402:b0:640:a26e:3d76 with SMTP id 4fb4d7f45d1cf-640a26e4208mr5484730a12.27.1762169219448;
        Mon, 03 Nov 2025 03:26:59 -0800 (PST)
Received: from [172.20.10.10] ([213.233.110.172])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640af968e5dsm4801329a12.19.2025.11.03.03.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 03:26:58 -0800 (PST)
Message-ID: <c5c81744-48a2-4f3f-9ac3-2420af7caaac@linaro.org>
Date: Mon, 3 Nov 2025 13:26:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] arm64: dts: exynos: gs101: add the chipid node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251031-gs101-chipid-v1-0-d78d1076b210@linaro.org>
 <20251031-gs101-chipid-v1-10-d78d1076b210@linaro.org>
 <20251103-pompous-lean-jerboa-c7b8ee@kuoka>
 <b82af744-ebbd-4dc8-8ccb-c7e4f2a6b04d@linaro.org>
 <abd5b16b-1467-449c-b452-7699cbe5d9f5@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <abd5b16b-1467-449c-b452-7699cbe5d9f5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/3/25 1:01 PM, Krzysztof Kozlowski wrote:
> On 03/11/2025 11:50, Tudor Ambarus wrote:
>>
>>
>> On 11/3/25 12:18 PM, Krzysztof Kozlowski wrote:
>>> On Fri, Oct 31, 2025 at 12:56:09PM +0000, Tudor Ambarus wrote:
>>>> Add the chipid node.
>>>>
>>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
>>>>  1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> index d06d1d05f36408137a8acd98e43d48ea7d4f4292..11622da2d46ff257b447a3dfdc98abdf29a45b9a 100644
>>>> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
>>>> @@ -467,6 +467,12 @@ opp-2802000000 {
>>>>  		};
>>>>  	};
>>>>  
>>>> +	chipid {
>>>> +		compatible = "google,gs101-chipid";
>>>
>>> That's not a real device, sorry.
>>>
>>> I had some doubts when reading the bindings, then more when reading
>>> driver - like chipid probe() was basically empty, no single device
>>> access, except calling other kernel subsystem - and now here no single
>>> actual hardware resource, except reference to other node.
>>>
>>> Are you REALLY REALLY sure you have in your datasheet such device as
>>> chipid?
>>>
>>> It is damn basic question, which you should start with.
>>
>> Documentation says that  GS101 "includes a CHIPID block for the software
>> that sends and receives APB interface signals to and from the bus system.
>> The first address of the SFR region (0x1000_0000) contains the product ID."
>>
>> 0x1000_0000 is the base address of the OTP controller (OTP_CON_TOP).
>>
>> "CHIPID block" tells it's a device, no? But now I think it was just an
>> unfortunate datasheet description. Do you have an advice on how I shall
>> treat this next please? Maybe register to the soc interface directly from
>> the OTP controller driver?
>>
> 
> 
> Huh, then I am confused, because:
> 1. That's the same message as in other Exynos and it has SFR region
> 2. Your binding said there is no SFR region.
> 3. Anyway, please post complete DTS, so if this has SFR region it must
> have proper reg entry. You cannot skip it.
> 
> Of course next question would be what is the OTP controller...

The CHIPID block, which has a dedicated chapter and all :), consists of two
registers:

Product ID
Address = Base Address (0x1000_0000) + 0x0000, Reset Value = 0xE383_0000

Chipid 3
Address = Base Address (0x1000_0000) + 0x0010, Reset Value = 0x0000_0000

While the Product ID is fixed (fused I assume), the CHIPID registers:
"depend on the OTP value. When the power-on sequence progresses, the OTP
values are loaded to the registers. These registers can read the loaded
current OTP values."

OTP values are from the OTP memory (32Kbit) from address 5'b00000, 160 bits
in total. Even if not explicitly stated, I think the OTP controller copies
the CHIP ID from the OTP memory to its registers, so that the "CHIPID block"
can access them. You notice that the reset value of the CHIPID OTP registers
is zero. They're then filled at power-on.

This is all. I lean towards thinking the CHIPID block is not really a device.
It's just a way software gets the product and chip IDs, which is by querying
the OTP registers. I think I lean towards registering to the soc interface
directly via the OTP device. Or maybe you think differently?

Thanks,
ta



