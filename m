Return-Path: <devicetree+bounces-133300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDAD9FA3A1
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 04:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFE9A166C01
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 03:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7941426C;
	Sun, 22 Dec 2024 03:20:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950A28472
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 03:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734837650; cv=none; b=ZRKiBIKelZN04fpGc17x70+FD9ET696PpK2CDEEV8C4Z7Kdw+fDx//DFoEBdsNFyyQjX5GDnB8QlqTww4I6SD2KCMpzQygyPUK/VPrjBTYKoKWjOv1WUfz15Ko27KbEnt+spuMS+Q1LxPvB5L/NBHZR5nJ0i3C7XkGJHi1Ou63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734837650; c=relaxed/simple;
	bh=cA9zW5+hFh12xMHocOODrj8pe7mxn8QvsWTqL4Z84tQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UVRc1H+cc7LBxn3oJvMZvJXORn1igTdetqPppF9g6nQGmMfrxOqgvtXwlK2/AMMOyome9om1hqoTt1QMx1z6uuy5pYS7qm2BTOmK92Uu1dLEZY0msHclji/oajkLOQPrpDq2HUUT4SsYt59Ivx6GzcX9x1rbZj0zf0dh8pyuRvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1734837497t7pbuus
X-QQ-Originating-IP: Hv7JhY9QfQx3kbGv6g4jg1IAps6nce7HytB7cks8nkk=
Received: from [IPV6:240f:10b:7440:1:75fe:f8f3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 22 Dec 2024 11:18:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15497229287343789713
Message-ID: <F023D8BD1C0C2248+234bbc41-2871-49a9-be98-4475e4e6da49@radxa.com>
Date: Sun, 22 Dec 2024 12:18:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
 <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OOZmLa3PEXtrKfF2/l4PZnr56iHEATFHHCTSNSCK/yx9wyPnIXqRf/lo
	LY4KUG8JEOJUHth0WVGMMtNjIKa1YMInaKDBkiKQbMdEhuAVSZzUv8AmG0/QgyIgwnolxyG
	kTeJGErKPhNI/3tGhGyEdgLFk52koOLKNpZUkPv4NjTNtV9hnCjkbI8y+uPbq/mePWogJAl
	I01PmwHrxo7wtQb9p9bkiR7C7/XicR1IIgRVz8RpQ6mEfJ35C6e/h6KQbY07OjzcZOP5YFg
	SC8lacJr7IQiNqvg+sQKwCXcu73s8Gl1mqDLeaON7nb4fPjiL/aO472E1/mo8JmErvW1ypB
	4DPBLYo9O5mh+lw/HKPC/xbnEjhddNd6hLQzGlqe94dgwRCIj/WLX1CuaDuDgeH6pzBuCf1
	GmJi9liRrprNx3LqjUEiBuoKLTnItpnvByUxJnzhWxX0QoerKnRcizUz2quovGZUcI4N8FL
	+aFMOr1ru+caA6KEaneFBgxqpnDMhb3vyMN8l/+0ShLHhRwTG4/5VVaC30eeWdKqMUgNmvN
	jzFAYPndRuXwaXX5G8ezovWjiSGNOyoI5iyAC28YI5rjMNsV9kXxWjP2XasmtadvmFlKaBA
	ic4rJ7eZAioPxfoOnPU6x/w2RbxJZuodsdvrkKx4ogjqKh2jrLrtzOdJHd+WNoKVEXOsag1
	TIWPKgrDcPqDvBGpworcqTWSAS0l6UJuKWXKkAGTi08cgPYK7+0b/E7LWtmZnhmBLApcd/I
	FBR0rlc5zVYv5J6Ron+wygytX6rfStTCANgv9mdJnm/p4dV772GM5oxgpKdHe/hMV5k/5it
	C0JNigcpRq5zu2HddyVbccX85jDQktw49XfnGvOzL8MUPl3HphkLTGpxWUMbFkvZIZo44FL
	aDVtjbP1wXPiRi7OnxMUVjqD2SoDUEbDWKgz3h9CXMBPFFvKLiRLLuYf1JlpEG/S
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

On 12/22/24 05:15, Krzysztof Kozlowski wrote:
> On 20/12/2024 07:51, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> Could you please reply to this email?
>> (Not for me, but for everyone)
> 
> You have me how much time... 3 days to reply?

sorry.

>> Best regards,
>>
>> --
>> FUKAUMI Naoki
>> Radxa Computer (Shenzhen) Co., Ltd.
>>
>> On 12/17/24 10:11, FUKAUMI Naoki wrote:
>>> On 12/16/24 22:38, Krzysztof Kozlowski wrote:
>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>> Use consistent name with other regulators. No functional change.
>>>>>
>>>>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>> ---
>>>>> Changes in v5:
>>>>> - Reword commit message
>>>>> Changes in v4:
>>>>> - reword commit message
>>>>> Changes in v3:
>>>>> - none
>>>>> Changes in v2:
>>>>> - new
>>>>> ---
>>>>>    arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/
>>>>> arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>> index 85589d1a6d3b..61d75ab503b2 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>>> @@ -76,13 +76,13 @@ pwm-fan {
>>>>>            pwms = <&pwm3 0 60000 0>;
>>>>>        };
>>>>> -    pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>>>>> +    vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>>>
>>>> No, neither explained, nor correct. See DTS coding style.
>>>>
>>>> Please use name for all fixed regulators which matches current format
>>>> recommendation: 'regulator-[0-9]v[0-9]'
>>>>
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/
>>>> tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?
>>>> h=v6.11-rc1#n46
>>>
>>> 'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is also
>>> permitted, right?
>>>
>>> i.e. regulator-vcc3v3_pcie2x1l2 should be regulator-vcc3v3-pcie2x1l2
>>>
>>>
>>> Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?
>>>
>>>    https://lore.kernel.org/
>>> all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/
>>>
>>> Is 'regulator-0v0' valid?
> 
> Why would it be valid? Can you have regulator with 0 volts?

There may be a .dtsi that is shared across multiple .dts, so some 
regulators may not be able to set a specific voltage in the .dtsi.

How should I describe it?

>>> Is 'regulator-12v0' invalid?
> 
> Read the binding. I gave you very specific link.

46|       - description: Preferred name is 'regulator-[0-9]v[0-9]'
47|         pattern: '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'

The "description" and "pattern" don't match. What you provided is a link 
to the "description".

>>> How should we handle multiple 1v8/3v3/5v0 regulators?
> 
> Just add suffix. But usually more than one suffix, vcc+3v3+pcie_2x1l2,
> means you created a very specific name.

So shouldn't we refer to the schematic?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



