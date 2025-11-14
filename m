Return-Path: <devicetree+bounces-238521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B6C5BF6A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DA6BC4E3928
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11482D8391;
	Fri, 14 Nov 2025 08:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD826B75C;
	Fri, 14 Nov 2025 08:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763108398; cv=none; b=ZWftmB+yoregphcWLgRP7wSlKhgSUuIhZW2LiQPfbZ8vlEqL5Gf7xkg+0QZ+HHI2LEaN8USHIhvD24+n3um7CBL2Myoen517I99hPQs2Qa5TYU3+A2EoROeqw2xs8I4MRmEsJ+232g3DCfp+SCY6aXu/JGvmJ4dFaiJaJgwgSgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763108398; c=relaxed/simple;
	bh=6cCJJ6a4y3wdpCzPcfZPNu3IWSWSPTwweiXC2rbLHXg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=SWh6t8kQvXojCP9u17TKTyER0UZa3QSnrxvzNaZ44+G+WOMCQCJC9rXh29EGTXizKMu/dkN4u0L6jbbuD87g9XMfipe2rk4qokBRsf9TJnxnJPyRCqtT3J23/hmB60x/na7/QALxAIKApmNmXm6W1PP9Z9FPlQiQy1HOZEG638I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1763108320td482a376
X-QQ-Originating-IP: /ZjaCL+znD+Tfs4lh+5EA5aACZFZwR4BzKc+TwaSxjk=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 16:18:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15662952469343122312
Message-ID: <76B8B69932F4AA70+f730dac3-31e2-42b2-88a5-bfebf0ee8e36@radxa.com>
Date: Fri, 14 Nov 2025 17:18:36 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
From: FUKAUMI Naoki <naoki@radxa.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steve deRosier <derosier@cal-sierra.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
 <6443BD03B4C4F1FE+d20c3903-e2dc-4c2b-8f6e-fac38f242898@radxa.com>
 <2f4e7f94-2921-493c-94fa-45749a060bc0@kernel.org>
 <870075785A1ED2B9+6fb5238e-dc57-406b-acf9-b88b237d8e5b@radxa.com>
 <f12bc562-b5bb-4bdd-b274-23582df8f2d4@kernel.org>
 <E04572034CE4DC35+005c7dd7-cb2f-4f82-9889-ac14733a7647@radxa.com>
Content-Language: en-US
In-Reply-To: <E04572034CE4DC35+005c7dd7-cb2f-4f82-9889-ac14733a7647@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M5r28j6evhA1it5aR9ahzcVq8U/yUtAakftmU3iLs75Irk39b4YBNxFS
	5RopknbY4p1vC3B4FO4yCBYZtJplAUu/tsV0vQhlPOHhsBYV6WNfVqVswkgVsxHe65upce7
	3XxHRDvZgkXd0yy2RE7+UCY9zLQr1tDq2gxfnP9mJvj4XWNCabtqgVyKu7GxFdQoHIKY0cW
	wIIDax2qoA3dfevoyD4SRXgfHukyRg8PPlQkYIOX/9IvUOUWg386zEr2q/tunyUkt5rbp1e
	R+w6vtFXFmqLywR1UTP9qlyP10Xe0OqBP+vK7BE85Px4ROb4mCDF9R3+asKOnJcMT7c+XJB
	nio7N5Zycoa0L6G22q1VnkIVC5QKY1MGdJ9iM/W5tzoTlVBAnGVC5WqaaQ/7P9bUjTMUjdI
	i6HMpdbA3j5xKZl2sSft1FRuXU3291IcDNCBrFF9YiiejEes1v/BpUhphowBEM2h0EBF/YN
	jUxKahOW9T4Nibxt/pMDwcczUd9bk0E6zvs8W5AfZ9hGUVnR1AzLE6VBeNB8OBX2MeVNh+s
	g9ZPDdX4+5dH26+XePiM4daoK1FN4K8NrWzge6XgI3BzLS5DU+vhd0Z0TAabSEkwaj4qixQ
	5MAXzKXBya2MIRcnNM9Nc/omHMRT1EHK+RIhhOFn4E6DeaXV2ouWBR5TiJAJob6grlha61n
	Yu67PL2RKYJQdPSHMmx/+8h8mFizlysshxFs8vBzkovJr7AblankvwEPUVK4y3lFfe1vcp7
	e8+4MoYThGntUlLrb++DM17srRSAyngLkuY+xVA7m4qBNKWbiryWtSt3uquSwclE7TsDbGz
	golXh9gvCU1lLxhPIqTQ5UE1S4Y0nWUYZoRDs4GunnlG/cEnWUYvb7FuqtAwsQfbNeh2v9I
	psIk74u3SYJ4870Pw8s24paH4s3/CQq74EglVx48afGU3Gn4nXwLIeO+rsy9S9AHHjGN/rM
	wyGHAtpuaVIm6EKJzmS8+54xQ9dtXqsizsyjnzeKgQNDHLu5LxA/2NegPn6chYH/Mmvyeqr
	MtJ14E7LLgrzwvJIBbtnes0LU+WruQ4UkHBBy+rg==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

On 11/5/25 10:37, FUKAUMI Naoki wrote:
> Hi Krzysztof
> 
> On 10/28/25 19:41, Krzysztof Kozlowski wrote:
>> On 28/10/2025 10:44, FUKAUMI Naoki wrote:
>>> Hi Joseph
>>>
>>> Your patch seems to be NAKed.
>>> I will submit new patch soon.
>>
>> Sorry, what? Don't hijack other people's work.
> 
> I have Joseph's permission to post my patch.
> 
> Furthermore, this is not the first time, to my knowledge, that someone 
> else has posted another patch for the same board. (See below)
> 
>   https://lore.kernel.org/linux-rockchip/20241226005845.46473-1- 
> naoki@radxa.com/T/#u
>   https://lore.kernel.org/linux-rockchip/20250324-rock5bp-for-upstream- 
> v1-0-6217edf15b19@kernel.org/T/#u

Could you please write concise and precise answers/comments for the part 
you previously snipped[1]?

[1] 
https://lore.kernel.org/linux-rockchip/86939056-7617-4730-9464-f7ecbd0e4537@kernel.org/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>>>
>>> Best regards,
>>>
>>> -- 
>>> FUKAUMI Naoki
>>> Radxa Computer (Shenzhen) Co., Ltd.
>>>
>>> On 10/28/25 18:37, Krzysztof Kozlowski wrote:
>>>> On 28/10/2025 10:33, FUKAUMI Naoki wrote:
>>>>> Hi Krzysztof,
>>>>>
>>>>> https://patchwork.kernel.org/project/linux-rockchip/ 
>>>>> patch/20250528221823.2974653-2-joseph.kogut@gmail.com/
>>>>>
>>>>> On 5/29/25 18:19, Krzysztof Kozlowski wrote:
>>>>>> On Wed, May 28, 2025 at 03:18:21PM GMT, Joseph Kogut wrote:
>>>>>>> Add device tree binding for the Radxa CM5 IO board.
>>>>>>>
>>>>>>> This board is based on the rk3588s.
>>>>>>
>>>>>> Do not attach (thread) your patchsets to some other threads 
>>>>>> (unrelated
>>>>>> or older versions). This buries them deep in the mailbox and might
>>>>>> interfere with applying entire sets.
>>>>>>
>>>>>>
>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>> Please explain the sorting rule used for this file. You must have 
>>>>> known
>>>>> the sorting rule; otherwise, how can you be sure this patch is 
>>>>> correct?
>>>>
>>>> Huh? I don't have a clue about sorting rule but if you mock my review
>>>> let's make it different:
>>>>
>>>> NAK
>>
>>
>> Ah, you were poking around other patch? I should have ignored that :/
>>
>>
>> Best regards,
>> Krzysztof
>>
> 


