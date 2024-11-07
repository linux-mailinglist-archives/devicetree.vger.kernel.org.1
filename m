Return-Path: <devicetree+bounces-119876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 031D09C058D
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 13:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57DF7B21420
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 12:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069FB1F4FD2;
	Thu,  7 Nov 2024 12:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI/dkj1H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0BE19AA68;
	Thu,  7 Nov 2024 12:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730982075; cv=none; b=kXDtvV/0lyMt2fWakwo7gIEVpeQ91G3hPSB0bYChcjDVV6LD+SeZyErNtnopF4SxlDUmAfMr33B5ajbxH7HUP1z2AUP8RPM1alJeNFmAfNTNk7XAMGe4b3+XwIukxppr3a/lbcLJ0CzT84JAjxopX5MZwbqcqKxrP9SmYuFAV8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730982075; c=relaxed/simple;
	bh=k4GBBOI75qvrX0Uu+GJj3FvULt+lX5B9mBxpJ4ccQBk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y9/8jV7vl4arSrLN3nB4EmdR6P3S5lbpm/vktu+HYlPuIp46jpS8lwrewwsJHk6EUkik6chBksLdrLnfVatzQLumlYaaCKu13rlIY5B4AoX1h/GV/UnJLcCi0T2NzCSV7FVP5qsfzijMP86pET+oaupQVN6frDJowkQIYX8q0gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI/dkj1H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D0AC4CECE;
	Thu,  7 Nov 2024 12:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730982075;
	bh=k4GBBOI75qvrX0Uu+GJj3FvULt+lX5B9mBxpJ4ccQBk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JI/dkj1HbL4i1pVUW/WKr5BEN+StGYV0iPXORJl3jfI7RLcdAB72MHQ/ncEmX5wBZ
	 tU9aA9GVHN049r92kLlAVfPuWDf2P4hS6VTPSzqW6639xfzxiZWtZOI2/hsbOYVr8j
	 ADddbOpR2LpoAL7UKeGSrS27UtyC8BlIxCoc5GDXIK5Q/GPSxZ+52gdBFlkU8FaCYs
	 dUlHUrhpZUhp6gZPAMwlM9RfsUUvlZhcEdkkwoHQcSmv8KPSl2XLgrSbdvbiNgARA1
	 F3pBREYxbJEGMvxEAcnc1dt1qiPUZle83eZQSo/t7fe3zg+ZqEZ8Msx/FZzRLwFNJt
	 gPHZd/KTY6gQg==
Message-ID: <1fa4323b-4cee-4dfe-9c68-55f4465999cf@kernel.org>
Date: Thu, 7 Nov 2024 13:21:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: soc: ti: pruss: Add clocks for ICSSG
To: MD Danish Anwar <danishanwar@ti.com>, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, ssantosh@kernel.org, nm@ti.com,
 Vignesh Raghavendra <vigneshr@ti.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, s-anna@ti.com, kristo@kernel.org, srk@ti.com,
 Roger Quadros <rogerq@kernel.org>
References: <20241107104557.1442800-1-danishanwar@ti.com>
 <20241107104557.1442800-2-danishanwar@ti.com>
 <7f0a73c3-9977-4d07-b996-683ed18e4724@kernel.org>
 <8156fd61-c476-4b58-b3b2-e8bc4f93035e@ti.com>
 <2c368f5a-4b58-45de-8140-21b2f7af4d12@kernel.org>
 <4ba0381b-d30a-4469-a7c4-327f6ac20c9c@ti.com>
 <2e7a1eb6-df8f-44d4-9342-1bc6d8b5ad11@ti.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <2e7a1eb6-df8f-44d4-9342-1bc6d8b5ad11@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 07/11/2024 12:58, MD Danish Anwar wrote:
> 
> 
> On 07/11/24 5:16 pm, MD Danish Anwar wrote:
>>
>>
>> On 07/11/24 5:14 pm, Krzysztof Kozlowski wrote:
>>> On 07/11/2024 12:36, MD Danish Anwar wrote:
>>>>
>>>>
>>>> On 07/11/24 5:01 pm, Krzysztof Kozlowski wrote:
>>>>> On 07/11/2024 11:45, MD Danish Anwar wrote:
>>>>>> Add clocks, assigned-clocks and assigned-clock-parents for ICSSG
>>>>>
>>>>> Why? We see what you are doing from the diff, no point to repeat it. I
>>>>> don't understand why you are doing it.
>>>>>
>>>>>>
>>>>>> Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
>>>>>> ---
>>>>>>  .../devicetree/bindings/soc/ti/ti,pruss.yaml          | 11 +++++++++++
>>>>>>  1 file changed, 11 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>>>>>> index 3cb1471cc6b6..cf4c5884d8be 100644
>>>>>> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>>>>>> @@ -92,6 +92,17 @@ properties:
>>>>>>      description: |
>>>>>>        This property is as per sci-pm-domain.txt.
>>>>>>  
>>>>>> +  clocks:
>>>>>> +    items:
>>>>>> +      - description: ICSSG_CORE Clock
>>>>>> +      - description: ICSSG_ICLK Clock
>>>>>> +
>>>>>> +  assigned-clocks:
>>>>>> +    maxItems: 1
>>>>>> +
>>>>>> +  assigned-clock-parents:
>>>>>> +    maxItems: 1
>>>>>
>>>>> Why? This is really not needed, so you need to explain why you are doing
>>>>> things differently than entire Linux kernel / DT bindings.
>>>>>
>>>>
>>>> I need to add this to the device tree node
>>>>
>>>> +		clocks = <&k3_clks 81 0>,  /* icssg0_core_clk */
>>>> +			 <&k3_clks 81 20>; /* icssg0_iclk */
>>>> +		assigned-clocks = <&k3_clks 81 0>;
>>>> +		assigned-clock-parents = <&k3_clks 81 2>;
>>>>
>>>> But without the above change in the binding I am getting below errors
>>>> while running dtbs check.
>>>>
>>>> /workdir/arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtb: icssg@30000000:
>>>> 'assigned-clock-parents', 'assigned-clocks' do not match any of the
>>>> regexes: '^(pru|rtu|txpru)@[0-9a-f]+$', '^pa-stats@[a-f0-9]+$',
>>>> 'cfg@[a-f0-9]+$', 'iep@[a-f0-9]+$', 'interrupt-controller@[a-f0-9]+$',
>>>> 'mdio@[a-f0-9]+$', 'memories@[a-f0-9]+$', 'mii-g-rt@[a-f0-9]+$',
>>>> 'mii-rt@[a-f0-9]+$', 'pinctrl-[0-9]+'
>>>> +/workdir/arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtb: icssg@30080000:
>>>> 'anyOf' conditional failed, one must be fixed:
>>>>
>>>> To fix this warning I added these in the binding and the warnings were
>>>> fixed.
>>>
>>> nah, cannot reproduce. Just be sure you work on recent kernel (last time
>>> you were sending it on some ancient stuff) and your packages are
>>> updated, including dt schema and other kernel dependencies.
>>>
>>
>> I have posted this series on the latest kernel. Base commit
>> 5b913f5d7d7fe0f567dea8605f21da6eaa1735fb
>>
>> Let me check if the schema is up to date or not. I will re test and
>> reply. Thanks for pointing it out.
>>
> 
> Krzysztof, I re-checked.
> I am on the latest kernel (commit
> 5b913f5d7d7fe0f567dea8605f21da6eaa1735fb (tag: next-20241106,
> origin/master, origin/HEAD)) and I am using the lastest dtschema v2024.9
> 
> ❯ python3 -m pip list|grep 'dtschema'
> dtschema                      2024.9
> 
> Still I am getting the below dtbs check errors while running `make
> CHECK_DTBS=y ti/k3-am642-evm.dtb` without the binding change.
> 
> Let me know if I am missing something else.
> 
> /home/danish/workspace/linux-next/arch/arm64/boot/dts/ti/k3-am642-evm.dtb:
> icssg@30000000: 'assigned-clock-parents', 'assigned-clocks', 'clocks' do

Wait, what? That's different error. You have clocks documented. To
remind: we talk about previous error so only, *only* assigned-clocks.

> not match any of the regexes: '^(pru|rtu|txpru)@[0-9a-f]+$',
> '^pa-stats@[a-f0-9]+$', 'cfg@[a-f0-9]+$', 'iep@[a-f0-9]+$',
> 'interrupt-controller@[a-f0-9]+$', 'mdio@[a-f0-9]+$',
> 'memories@[a-f0-9]+$', 'mii-g-rt@[a-f0-9]+$', 'mii-rt@[a-f0-9]+$',
> 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/soc/ti/ti,pruss.yaml#
> /home/danish/workspace/linux-next/arch/arm64/boot/dts/ti/k3-am642-evm.dtb:
> icssg@30000000: 'assigned-clock-parents', 'assigned-clocks', 'clocks' do
> not match any of the regexes: '^(pru|rtu|txpru)@[0-9a-f]+$',
> '^pa-stats@[a-f0-9]+$', 'cfg@[a-f0-9]+$', 'iep@[a-f0-9]+$',
> 'interrupt-controller@[a-f0-9]+$', 'mdio@[a-f0-9]+$',
> 'memories@[a-f0-9]+$', 'mii-g-rt@[a-f0-9]+$', 'mii-rt@[a-f0-9]+$',
> 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/soc/ti/ti,pruss.yaml#
> /home/danish/workspace/linux-next/arch/arm64/boot/dts/ti/k3-am642-evm.dtb:
> icssg@30080000: 'assigned-clock-parents', 'assigned-clocks', 'clocks' do
> not match any of the regexes: '^(pru|rtu|txpru)@[0-9a-f]+$',
> '^pa-stats@[a-f0-9]+$', 'cfg@[a-f0-9]+$', 'iep@[a-f0-9]+$',
> 'interrupt-controller@[a-f0-9]+$', 'mdio@[a-f0-9]+$',
> 'memories@[a-f0-9]+$', 'mii-g-rt@[a-f0-9]+$', 'mii-rt@[a-f0-9]+$',
> 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/soc/ti/ti,pruss.yaml#
> /home/danish/workspace/linux-next/arch/arm64/boot/dts/ti/k3-am642-evm.dtb:
> icssg@30080000: 'assigned-clock-parents', 'assigned-clocks', 'clocks' do
> not match any of the regexes: '^(pru|rtu|txpru)@[0-9a-f]+$',
> '^pa-stats@[a-f0-9]+$', 'cfg@[a-f0-9]+$', 'iep@[a-f0-9]+$',

I don't understand these, either.  All of them have clocks. What are you
testing? You add clocks to DTS but not to the binding? What would be the
point of that test?

Best regards,
Krzysztof


