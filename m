Return-Path: <devicetree+bounces-140552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBCFA1A34C
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E8AE3AF310
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D69F521506A;
	Thu, 23 Jan 2025 11:39:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DC1214A88;
	Thu, 23 Jan 2025 11:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737632347; cv=none; b=FJgho/OcL3HnB3arc0NrNJYPL5SRI7MLfU1I3IJ+3OhgwqKEiYl5eRWA8TO4fWocp2YzZUDH106+2GMpK6bdLP3zv5o5Djik+fedAt2BpRZpcvg3xQIt4bUPVgGWUm+cfc8MBU3tUxY9FWgh39kzm9Tt90OAd8q2QuhkuPKEQBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737632347; c=relaxed/simple;
	bh=LsGxofATCNolcpKT67pxElFGgblf1QUuuWqNgnR3lVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BMPcSKg5Kbh+wKQQ4GJJpb2gFCA9pm/hlYpfXfXuwb/ioR8EPIGc65ubrc4yw78wNdTpEvUlU+5y8/UPpR/1g0foCQt/fRZyLc+AZReu+kD8nU+Cgt5bM0/+TKGcAwHgQkXIdQXS/71o/lSC7j75npVmgS/zAEHRrPRqajQREtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c0:20f3:a400:5304:e921:4d34:736a] (unknown [IPv6:2605:59c0:20f3:a400:5304:e921:4d34:736a])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id ECA41B4B455B;
	Thu, 23 Jan 2025 12:38:52 +0100 (CET)
Message-ID: <bce19eaf-11bf-4ce8-bc15-dffb96cae9d4@freeshell.de>
Date: Thu, 23 Jan 2025 03:38:51 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
To: Minda Chen <minda.chen@starfivetech.com>, Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250102183746.411526-1-e@freeshell.de>
 <20250102183746.411526-2-e@freeshell.de>
 <20250113-mushiness-snugness-0f55574e3956@spud>
 <SHXPR01MB0863DBF85A9874C9F93ECD25E618A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
 <20250114-recollect-dictate-104e890d116e@spud>
 <SHXPR01MB08631714C914911D343372ACE619A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
 <dd3aefec-0e1a-4025-812b-daa67a53f4ee@freeshell.de>
 <BJXPR01MB08553280FF7E342451053A6FE6E1A@BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <BJXPR01MB08553280FF7E342451053A6FE6E1A@BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/22/25 02:41, Minda Chen wrote:
> 
> 
> 
>>
>> Hi Minda,
>>
>> On 1/15/25 02:58, Minda Chen wrote:
>>>
>>>
>>>>
>>>> On Tue, Jan 14, 2025 at 05:42:28AM +0000, Minda Chen wrote:
>>>>>
>>>>>
>>>>>>
>>>>>> On Thu, Jan 02, 2025 at 10:37:36AM -0800, E Shattow wrote:
>>>>>>> StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP
>>>>>>> block that may exclusively use pciephy0 for USB3.0 connectivity.
>>>>>>> Add the register offsets for the driver to enable/disable USB3.0
>>>>>>> on
>>>> pciephy0.
>>>>>>>
>>>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>>>> ---
>>>>>>>    arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
>>>>>>>    1 file changed, 2 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>>>> b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>>>> index 0d8339357bad..75ff07303e8b 100644
>>>>>>> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>>>> @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
>>>>>>>    		pciephy0: phy@10210000 {
>>>>>>>    			compatible = "starfive,jh7110-pcie-phy";
>>>>>>>    			reg = <0x0 0x10210000 0x0 0x10000>;
>>>>>>> +			starfive,sys-syscon = <&sys_syscon 0x18>;
>>>>>>> +			starfive,stg-syscon = <&stg_syscon 0x148 0x1f4>;
>>>>>>
>>>>>> Why weren't these added in the first place? Minda, do you know?
>>>>>>
>>>>> The driver only require to set syscon register while the PHY attach
>>>>> to Cadence USB.(star64 board case) The PHY default attach to PCIe0,
>>>>> VF2 board
>>>> do not set any setting. So I don't set it.
>>>>
>>>> Does this mean that the change should be made in files where it will
>>>> only affect
>>>> non-VF2 boards, or is it harmless if applied to the VF2 also?
>>> Harmless. The PCIe PHY driver still set the PCIe mode syscon setting.
>>
>> Sounds good to me. However some tangent topic related to this series:
>>
>> Our questions and answers in this discussion are a representation of what is
>> missing from the documentation.
>>
>> What do I want to know? :  "pdrstn split sw usbpipe plugen" abbreviation.
>>
>> What are the full words that is from?
>>
>> I will guess the words are:
>>
>> "Power domain reset negative? Split... Switch? USB pipeline plug enable?"
>>
>> When this is explained for me I will send a patch to add information into
>> documentation at dt-bindings/phy/starfive,jh7110-pcie-phy.yaml
>> file. I know that the functionality is already said in discussion;  What I want are
>> the full words to expand the "pdrstn split sw usbpipe plugen"
>> as any abbreviation would also be expanded and explained in documentation.
>>
>> It would be difficult to improve the documentation before our discussion about
>> this series here. Now it is clear what questions and answers are missing from
>> documentation.
>>
>> -E
> In my view, pdrstn split sw usbpipe is bit17 setting. Set to 1 is mean split the PCIe PHY from
> Cadence USB controller.

Hi, Minda. Yes, the functional description is very good.

What I want to know is the language "pdrstn" for example, was this from 
StarFive and someone you can ask what those words are ? Else is it from 
Cadence and I should next ask some design person from Cadence company? I 
want to show in documentation what is the long word (or many words) that 
are changed to short words and become "pdrstn split sw usbpipe plugen".

When I read "pdrstn split sw usbpipe plugen":

pdrstn = ?  I do not know, it is different than any word I know. This 
could be like Power Domain (or Power Delivery), Reset, Negative... Pulse 
Data Rate Standard... Plug Drivers Transmission... it is non-sense to 
guess. I prefer in writing documentation to give some information that 
is accurate.

split = split. Ok. I think this is true. You provide us code and good 
description that bit17 setting is a "split" action so this is easy for 
understanding.

sw = ? maybe this is "switch"?  or "software", "southwest", "signal 
watch", "sine wave", ... probably switch.

usbpipe = 'pipe' is a connection. okay, this is acceptable. It is a 
"pipe" connection of Cadence IP block with a different part of JH7110 
design (PCIe?)

plugen = plug enable? I do not think of any different possible words for 
this, so it may be that.

I am aware this request is not any better for us to understand the code. 
We do know what the code does - Thank you, I appreciate your time! The 
English word choices are not very interesting (?) but I want to be 
accurate for documentation.

Someone at a moment in past time decided "pdrstn split sw usbpipe 
plugen" is a good description for this. Who is that person? What are 
those long words they did change into confusing short form? :-)

If you can ask around and maybe someone at StarFive does know?  Else you 
can confirm that it was something "not documented" and I will explain in 
documentation that it was "not documented" this exact source of words 
for "pdrstn split sw usbpipe plugen". We can substitute a functional 
description with or without a source of the words.

Best regards,

E Shattow

