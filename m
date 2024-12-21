Return-Path: <devicetree+bounces-133274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 211A89FA264
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 21:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C1E71606C3
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 20:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E101A2642;
	Sat, 21 Dec 2024 20:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEZ8ixw6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE34D18FDAE
	for <devicetree@vger.kernel.org>; Sat, 21 Dec 2024 20:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734812114; cv=none; b=iXZb4q1kHC1qTk7wKiX2LQZf0Rx+3oNl+N9KUxIQ4pjpLL1EZqIWOPU5vSTGWihRS+5Zj3P/mE8ftn5yE4ytxwtfVUU/IcHa2a24kI+Enok50BSPphdQ4ccJ0ePKZju5anrZriPtqzC+E5sNEF+ZQdVjdi1w5ig//GHRNE7CPUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734812114; c=relaxed/simple;
	bh=z4JnE8zgEfvurcDdcikxT1vxEbZjRKjBv9lfLT5RGds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K63O8g2QWn6LB971vUZXi4yFC0AZSUNvXonMyftxBwLqKmCvld01sCSHin+MV1ATwQDsItyxbc61AngOUs6lVk3n39iUKjvENemQ3peGHfOjyj3uel3kxDmLGBYfblILTBkbG4I5Y8vuL/S9B7ITIfcrGu0l4vr4dFvMFhWF60o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEZ8ixw6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CEFC4CECE;
	Sat, 21 Dec 2024 20:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734812114;
	bh=z4JnE8zgEfvurcDdcikxT1vxEbZjRKjBv9lfLT5RGds=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CEZ8ixw6mWrLi80dTPFinmDEOtYAS0hzhi2p1+ls2ZhgSIs1DdJ+FT+B29gtoWCBy
	 b9p576LFCpi3ePKB+CE/qeqKbdqcWkvld8A2wc934h8QYwQ/7CotYkXO+L8d6UiaqV
	 lvHcHiLsxp4YfXn8YgIlRhbKoGvtOizvP4KtFu/X6v8wvptz2AX2c8PfPKOGAMYIM8
	 pFrwvFV+7DiuFJrQzqZMadt0xGEBh+1N+/jmYAXRtayQSbjV5Bkr9FswtNRzw6vRh7
	 XiuxVdbo6Q4b9jmxCtijWo+teQ3Zy4vln+G1XnBmj8rS3C/XtRUZkWfMnXjEf37Pv4
	 LYkVLm0+LqITA==
Message-ID: <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
Date: Sat, 21 Dec 2024 21:15:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 20/12/2024 07:51, FUKAUMI Naoki wrote:
> Hi Krzysztof,
> 
> Could you please reply to this email?
> (Not for me, but for everyone)

You have me how much time... 3 days to reply?

> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 12/17/24 10:11, FUKAUMI Naoki wrote:
>> On 12/16/24 22:38, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>> Use consistent name with other regulators. No functional change.
>>>>
>>>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> ---
>>>> Changes in v5:
>>>> - Reword commit message
>>>> Changes in v4:
>>>> - reword commit message
>>>> Changes in v3:
>>>> - none
>>>> Changes in v2:
>>>> - new
>>>> ---
>>>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/ 
>>>> arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>> index 85589d1a6d3b..61d75ab503b2 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>>> @@ -76,13 +76,13 @@ pwm-fan {
>>>>           pwms = <&pwm3 0 60000 0>;
>>>>       };
>>>> -    pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>>>> +    vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>>>
>>> No, neither explained, nor correct. See DTS coding style.
>>>
>>> Please use name for all fixed regulators which matches current format
>>> recommendation: 'regulator-[0-9]v[0-9]'
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ 
>>> tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml? 
>>> h=v6.11-rc1#n46
>>
>> 'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is also 
>> permitted, right?
>>
>> i.e. regulator-vcc3v3_pcie2x1l2 should be regulator-vcc3v3-pcie2x1l2
>>
>>
>> Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?
>>
>>   https://lore.kernel.org/ 
>> all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/
>>
>> Is 'regulator-0v0' valid?

Why would it be valid? Can you have regulator with 0 volts?

>> Is 'regulator-12v0' invalid?

Read the binding. I gave you very specific link.

>>
>> How should we handle multiple 1v8/3v3/5v0 regulators?

Just add suffix. But usually more than one suffix, vcc+3v3+pcie_2x1l2,
means you created a very specific name.



Best regards,
Krzysztof

