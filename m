Return-Path: <devicetree+bounces-129612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FCA9EC54E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCC82188686F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0FE1C683;
	Wed, 11 Dec 2024 07:04:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1771C5CD3
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733900642; cv=none; b=m8e2cguSojV4rS/D/Y3uu6ZlSNJNF7+2FkJX+oVldXCDF++lUzEzJ+xnXpjBG93jnjul0JagPYdc+yZCiWeMqS82YQyCfFqegLmL9OlABWA72HSgjqgQORAkaDBpOHpYCUxmZMGj2Am8Y/C9GOj4lSmqE3MzkIxmvdv2zBKT9u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733900642; c=relaxed/simple;
	bh=HXIzGAt1EWle9dzPeQXP5jteJ6YNOFdgJAyYz1we3K4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ksrTV6S2022zsci0zvJN8x2txtx+idwXx9J03LCTAb5EbnRCYxJlbZ5zys/c1NkXbxw6V0fR3pEUE4aGLFd6GzZBV+YcnBzm3I1fvskKSOdrPhozziRouUy+Zki4mmK4FDE/MFwxILAqAyaq8Azoy0nRjOLP6GIRFP4SczloMAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1733900548trh11jr
X-QQ-Originating-IP: 47EKH+0Yq9shoVzZtADBwSuTSEChfvGL1X839OC80n8=
Received: from [IPV6:240f:10b:7440:1:b238:648b ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 11 Dec 2024 15:02:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9423853600473397212
Message-ID: <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
Date: Wed, 11 Dec 2024 16:02:24 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
From: FUKAUMI Naoki <naoki@radxa.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Content-Language: en-US
In-Reply-To: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MY3/p6yUwwyTKhWeGHrQApRFi6b1sZeNU4/mRIoiCvW+M0/MCReusRiE
	nKNdEvkdEWg/xqKZ7Tb2GxpO27aDZD4W/TOJTMYG5jTlxpL1S/lUBzUc+7wB8je9oV45cbL
	7YqlV9/tWSrWirg6Ze4rZw8vkMW3KRkUb9TWI1n6QXH22q1oTVwymucn2U3esyd8is6miTP
	AvJ7UjPfp46SeAZtEDw43TMIehlj6+qSswEU7lV01zUmNsGqWmw0JZ549wfY8vjR2VnEdJ/
	rCmq3cOE3VmHTLgQCbS/+FPLYvfJ2RNb9A0sqo+xGwIGDuhhlHXKDcPLYRccxnA0ypOVWdB
	Vy6fSMk2VATxabGbJAfhKVrsjP4f0nPpCUiKCNAsWciybSVk9qKRD5bwdmmr1IJyrzyVNES
	KVLvipPDmFwL3xR1epg9HAUrRNyb45CKgUnj/+WwMZQEZYJe9jzy+s6uNdd+9bvKbap2+eH
	IEhCPVzZ8BapEFT7FmvnTfLj63klXjiU7o0jl34kGL6jrueVjeEy+pT+hk8RtR6CQqbCVwz
	6N1RmEQ7xjjxOx+JwB3Q1dQmo+zbg5FZcce/ScI2v4XZLEQi/Nv459AQOpfkXt/OKbGgGr9
	cRW6stWaGX5sNzMEwH9b9ILzlO7CzDHMVJjI/ywP7YnZP67ZdJuFd2euAL4Q56ss2XIDCOr
	a1EEVo/amLfodI8HlXTFXOZfoq4Z08oW+ke7k0ara+vl/I3I3ZTR/ANN3yUZ9wXeaTkpEk2
	ElWxyUmoyAlbFvFOMAkZ1e5eqysOlQ1Mx8ds/b3UE/NztaOaxgyNWIi8t5n613PK/K3gdIF
	gMFbZQwwSMf7GxP45hD11l2m5dCEcqnqvjV+2tnCowLDqz6D9bkXftjQ35+CQJYjNOXHWOE
	wclLEIuza4U6enE2VRKTryYk6QrfTjydNT6LCILTJ1TkexeoCjDEBI4N+EN/tAG/PEYx3c9
	XPs7pLJkWE//2u3NmLUeZDiONlRxpxHQzQ/TSjIev+sgUoA==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

just FYI,

https://lore.kernel.org/linux-rockchip/?q=e52c

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/11/24 15:44, FUKAUMI Naoki wrote:
> Hi Dragan,
> 
> On 12/11/24 15:36, Dragan Simic wrote:
>> Hello Fukaumi,
>>
>> On 2024-12-11 07:09, FUKAUMI Naoki wrote:
>>> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
>>> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
>>> perspective.
>>>
>>> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> index 753199a12923..2254ee079094 100644
>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> @@ -895,7 +895,7 @@ properties:
>>>            - const: radxa,rock-5b
>>>            - const: rockchip,rk3588
>>>
>>> -      - description: Radxa ROCK 5C
>>> +      - description: Radxa ROCK 5C/5C Lite
>>>          items:
>>>            - const: radxa,rock-5c
>>>            - const: rockchip,rk3588s
>>
>> I think it would be better to use "rockchip,rk3582" here, to allow
>> us to possibly use that information later.  For example, we might
>> want to be able to recognize RK3582-based boards in U-Boot without
>> the need to look into the e-fuses at some point, for which purpose
>> having a clear designator in the DT would fit perfectly.
> 
> It may be okay to introduce "rockchip,rk3582", but reading e-fuse is 
> still required in U-Boot because which unit (cpu coreX, gpu, etc) is 
> broken cannot be determined without reading e-fuse at run-time.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> As a reminder, using "rockchip,rk3582" would also require a small
>> addition to drivers/irqchip/irq-gic-v3-its.c.
>>
> 
> 


