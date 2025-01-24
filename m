Return-Path: <devicetree+bounces-140746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12956A1B3BB
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08DF216B8CB
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554951D0B8E;
	Fri, 24 Jan 2025 10:46:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17701CDFC1;
	Fri, 24 Jan 2025 10:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737715593; cv=none; b=hPlAkuYnhLG46NHQaAUYTrleqLSe7oL8Wd+99NTp4Cvu6mAJ7DIHx9PUTFCuVM1Dy/DRaRZZ26mrv7W4BhFALgFVfek7Imqe1UWDuTQbvK8lb/Wmw6u/1vEKeKVAig0I1YJAGzYYXqfre8XGkDqTJf8CJfSBmHc9krjhc1sn6gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737715593; c=relaxed/simple;
	bh=uiVP2cponumgq7ARcj3mrftTAJfRsaJ9ZuyrsDj/qsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PlB+t4KFsCKDZUehnXbReEDchSE3W8owDqjZf1WQ9PavNyX7Mjiqh75D5pCaipP4gBrY8NhstpTDbdt/gVTbt8tm8Jf95Cyv34nMCW5QEhoixYEw/5IDw14gqR3U+FQzK0gJbtAdK9rPDxKT4Ux4PjSsjriYuHCwbRDKs2JJICo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c0:20f3:a400:5304:e921:4d34:736a] (unknown [IPv6:2605:59c0:20f3:a400:5304:e921:4d34:736a])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id E8C17B4B325B;
	Fri, 24 Jan 2025 11:46:23 +0100 (CET)
Message-ID: <9d4783b1-3dfe-482c-a963-ccc66c9b0f1a@freeshell.de>
Date: Fri, 24 Jan 2025 02:46:22 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
To: Conor Dooley <conor@kernel.org>, Hal Feng <hal.feng@starfivetech.com>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Minda Chen <minda.chen@starfivetech.com>
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-2-e@freeshell.de>
 <20250104-mutilated-unpaved-008eebdb200a@spud>
 <56c372c3-bb8b-4150-9b34-a6cca906d740@freeshell.de>
 <20250106-suggest-waltz-47d7f7760069@spud>
 <ZQ2PR01MB1307A9E106AE06E144875D6EE619A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <20250115-bunkmate-reluctant-a9bad52d8a04@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20250115-bunkmate-reluctant-a9bad52d8a04@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 1/15/25 01:35, Conor Dooley wrote:
> On Wed, Jan 15, 2025 at 06:33:08AM +0000, Hal Feng wrote:
>>> On 07.01.25 04:08, Conor Dooley wrote:
>>> On Sat, Jan 04, 2025 at 01:04:30PM -0800, E Shattow wrote:
>>>> Hi, Conor  (added CC: Minda Chen, Hal Feng)
>>>>
>>>> On 1/4/25 10:33, Conor Dooley wrote:
>>>>> On Thu, Jan 02, 2025 at 11:45:07AM -0800, E Shattow wrote:
>>>>>> Replace syscrg assignments of clocks, clock parents, and rates,
>>>>>> for compatibility with downstream boot loader SPL secondary
>>>>>> program loader.
>>>>>>
>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>>> ---
>>>>>>    arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++---
>>>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>>>>>> b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>>>>>> index 48fb5091b817..55c6743100a7 100644
>>>>>> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>>>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>>>>>> @@ -359,9 +359,15 @@ spi_dev0: spi@0 {
>>>>>>    };
>>>>>>    &syscrg {
>>>>>> -	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
>>>>>> -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
>>>>>> -	assigned-clock-rates = <500000000>, <1500000000>;
>>>>>> +	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
>>>>>> +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
>>>>>> +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
>>>>>> +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
>>>>>> +	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
>>>>>> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>>>>>> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>>>>>> +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
>>>>>> +	assigned-clock-rates = <0>, <0>, <0>, <0>;
>>>>>
>>>>> Why is assigned rates here 0s, rather than the property just removed?
>>>>>
>>>>>>    };
>>>>>>    &sysgpio {
>>>>>> --
>>>>>> 2.45.2
>>>>>>
>>>>
>>>> Assigned rates all zeroes is how it is in U-Boot. Removing the
>>>> assigned-clock-rates property as suggested does work in U-Boot and
>>>> Linux both.
>>>>
>>>> For context, U-Boot fails when replacing assigned-clocks to
>>>> JH7110_SYSCLK_CPU_CORE (500MHz) and JH7110_PLLCLK_PLL0_OUT
>>> (1500MHz)
>>>> from Linux. So I tried to merge all properties together and in testing
>>>> then U-Boot failed (or I did it wrong). However replacing the Linux
>>>> properties with the U-Boot configuration (above) on Linux does work for
>>> both.
>>>>
>>>> I do not know if this is correct but I can test any suggestions and
>>>> report if they are working.
>>>>
>>>> Do these changes make sense? Are there other variations I should test?
>>>
>>> I'd like the commit message to at least explain why these clocks need to be
>>> set to zero (I assume that means disabled?). Maybe the StarFive folks know
>>> why it is required?
>>
>> Here "assigned-clock-rates = <0>, ..." means skipping setting clock rates.
>> You can refer to
>> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/clock/clock.yaml/
> 
> If you check the wording there, it says:
>    To skip setting parent or rate of a clock its corresponding entry should be
>    set to 0, or can be omitted if it is not followed by any non-zero entry.
> Since all clocks are being set to 0 above, we should be in the "can be
> omitted" case for the entire property, no? That would...
> 
>> Linux here setting JH7110_SYSCLK_CPU_CORE to 500MHz and JH7110_PLLCLK_PLL0_OUT
>> to 1500MHz are for increasing the CPU frequency to 1500MHz.
>>
>> VF2 u-boot is still running at 1000MHz now. You failed to set JH7110_PLLCLK_PLL0_OUT
>> to 1500MHz, because CPU power supply voltage needs to be increased before running at
>> 1500MHz.

Conor / Hal,  how does this work:

Are these the minimum and maximum values for CPU frequency, CPU CORE and 
PLL0 OUT ?

>>
>> I think a better choice now is changing Linux device tree as follows:
>>
>> &syscrg {
>> 	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
>> 			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
>> 			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
>> 			  <&syscrg JH7110_SYSCLK_QSPI_REF>,
>> 			  <&syscrg JH7110_SYSCLK_CPU_CORE>,
>> 			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
>> 	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
>> 				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>> 				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>> 				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
>> 	assigned-clock-rates = <0>, <0>, <0>, <0>, <500000000>, <1500000000>;
>> };
> 
> ...make this one a reasonable change...
> 
>> For u-boot, if there is no requirement to run u-boot at 1500MHz, just keep
>> &syscrg {
>> 	assigned-clock-rates = <0>, <0>, <0>, <0>;
>> };
> 
> ...but not this one.
> 
>> in u-boot device tree. If we need running 1500MHz in u-boot, I will send a patch
>> to implement it and then &syscrg{...} in u-boot device tree can be dropped.
>>
>> Best regards,
>> Hal

Hal,

What voltage (and speed) has less heat output?

I think it must be configured to be *reliable first* as it is pictured 
being a developer board on a person's desk (with no extra accessory - no 
fans, heatsink, etc.) and for example doing work as of a Linux kernel 
compile with using all cores.

We should not force a configuration that will fail for the common 
situation. What voltage and clock speed is the best for continuous 
reliable operation of a JH7110 CPU with no added heatsink or fan and at 
ambient temperature?

Does CPU frequency range need to be given in devicetree? Can instead 
this be done with userspace tool or Linux subsystem at runtime?

The thermal dissipation of JH7110 CPU will be depend on the board layout 
and physical application. So, my opinion here:  I think any minimum and 
maximum CPU frequency limit that is given by manufacturer recommendation 
of safe continuous operation is okay for dts include. If some part of 
this frequency range is not reliable (from undervolt, or overheat) then 
it is a "no" from me in Linux and in U-Boot. The fact of failing to boot 
(in U-Boot) because JH7110 CPU default voltage is not high enough for 
1500MHz operation tells me this is a wrong idea or there is missing code 
in U-Boot to select a default sane clock speed and voltage.

-E

