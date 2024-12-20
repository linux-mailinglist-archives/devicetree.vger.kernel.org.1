Return-Path: <devicetree+bounces-132948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 140389F8CED
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 07:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83E20188130D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC3A7D07D;
	Fri, 20 Dec 2024 06:53:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB9E3C2F
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734677606; cv=none; b=j+ioe08RIyeHEiz6bql4noF4HY1JUTSwD/wJKD4JI3GAohc78uGdqsHtPGgdzQjqovnPtF4ShPyRc9OhLVpemWv1kc1mtb/gonvU+S6SRHZOGYD8ASNuLizsDEWttF754aB5aLeRyveQXfRzaT/HOrloXLo7YMn6NU5e61ds288=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734677606; c=relaxed/simple;
	bh=bRT5QZmFmtBvVrAEHVzh5HSAAGaM7BCB+UCVzxKSxRc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=eEqEu9/UXhBdhUP/rdPu/xuISCtvb4RZUKEjHRkwoZwrxT2G36IUtN6oaJEXS8u+2paenwWbYNi9TrpAipp/rQAzbfNsMG+ipxGAlSbxUrMI8UOXjbM1hLr6SjIasKrmHzivGwosRwF3Iq/HO9JSkMT4Lche2ECzMxUCmy0NwJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1734677520tvhj3mp
X-QQ-Originating-IP: ScAdgzpukgJe7kHc8YbgPnAa6+sbJbTbWgnScSiXjr0=
Received: from [IPV6:240f:10b:7440:1:5eab:b2ed ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 20 Dec 2024 14:51:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13909621516329389833
Message-ID: <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
Date: Fri, 20 Dec 2024 15:51:55 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
From: FUKAUMI Naoki <naoki@radxa.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
Content-Language: en-US
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NKv2G1wnhDBnnfx3f8oLKJLkyq080cAxOO/W8uph5eR63hDF0i+tzzAX
	rAX2FHGCeC7B9evEuawRpHVv9avbE1j0nVKL92/7c8LEGfulRtHfgPv10PHIiz59u3Ez0IB
	0DzAaq5YmgoydCG1tYSlDNFtfiRhwiRfG5++crnj5CWlPAm3nXfrW6Jv4g0bUJRGKan45zo
	qHwsWjwI8PYtHQ1OLcWj9oGQ4U88fK84ZFDAckBDNLC72URMJcEVsfJvNUxOHFEQ43vAbQR
	GqjJyGUzpXk3CrRHPzKLwa0fJs3xU6UZdttND9+4yO45dUoczFcnn2A2fjVsXXNfU+2itlw
	N5XP3Y9jSnyUm6QGJ4N6zd8WZLlqQH5CPTEYSSu5hT3Ryt/P4Djc65WcFP79AhtBeoBMiNb
	bHuN3KEDCum+EsaDA7/N64R19F7o5sAjaUsdFDA5LxqlPRm4VsJwbquXjntF+g099CVczh5
	/BrO+mUIwcEFwJabGG8/BOT0jWUmkrLcEDB55eR7aH1VW7fhTh4A598XhFkOD+Fi6ey4h21
	p65PxFbyFpopN+B7JzcHILwDI8m3aMv02MDeoaJVwhMyX6KlEZgs8ozJYfeAhn/Yz8XwisY
	kDEq13f/gmCa4QvA+zfTeV0UFFcCdFM6uA/LR59HYbxpjtk+vVB6C5xRpd9rGbOpN08avWC
	Es/5fYSx+X/U6qzUZFJEy1N/OJm2pG8ZY8E7/afkIKQ21id0a4PuYlGM9j7PSXwBOmNN/K+
	K/M8UuVtSpVzoSSB42zqzhPbOVsFh4rbZrjrKZg2Pj4X4qmP1hA9bT8njjsGAnc5bDtyJrl
	pmjtN9d9eWY/QdhOs63vjYCbSAZYzr/pxS60H3kczu5xQwqtgeMB8oCCrEjRy3lfsraWDNM
	y3HpQzpEbWwA2/IznJVwIGcGDxeL5fnGbbfbuMr8fYNH+3tR/S1RqkxvoPlVBlZvjjEcmqP
	KMyodqaub9hKQjJ0SS+V50u6F
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

Could you please reply to this email?
(Not for me, but for everyone)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/17/24 10:11, FUKAUMI Naoki wrote:
> On 12/16/24 22:38, Krzysztof Kozlowski wrote:
>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>> Use consistent name with other regulators. No functional change.
>>>
>>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>> Changes in v5:
>>> - Reword commit message
>>> Changes in v4:
>>> - reword commit message
>>> Changes in v3:
>>> - none
>>> Changes in v2:
>>> - new
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/ 
>>> arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> index 85589d1a6d3b..61d75ab503b2 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>> @@ -76,13 +76,13 @@ pwm-fan {
>>>           pwms = <&pwm3 0 60000 0>;
>>>       };
>>> -    pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>>> +    vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>
>> No, neither explained, nor correct. See DTS coding style.
>>
>> Please use name for all fixed regulators which matches current format
>> recommendation: 'regulator-[0-9]v[0-9]'
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ 
>> tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml? 
>> h=v6.11-rc1#n46
> 
> 'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is also 
> permitted, right?
> 
> i.e. regulator-vcc3v3_pcie2x1l2 should be regulator-vcc3v3-pcie2x1l2
> 
> 
> Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?
> 
>   https://lore.kernel.org/ 
> all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/
> 
> Is 'regulator-0v0' valid?
> Is 'regulator-12v0' invalid?
> 
> How should we handle multiple 1v8/3v3/5v0 regulators?
> 
> Are examples in fixed-regulator.yaml valid?
> 'regulator-name' should be '[0-9]v[0-9]' even if there is same name?
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Best regards,
>> Krzysztof
>>
> 



