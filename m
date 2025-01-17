Return-Path: <devicetree+bounces-139320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684CA15153
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4BEA16955A
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845341FFC66;
	Fri, 17 Jan 2025 14:11:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387721FF603;
	Fri, 17 Jan 2025 14:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737123093; cv=none; b=RTIAKTl7cm2G4Xt2W+fibdyLmkqMFzlcN5OdUrM4dyqETU32XI2PkNpYQXc5thN16+1GIscw2eLDRbVF7uoKfHQAVGyr+LfI/a/nuZIDDo81MaOpY68OWzFfvOsXWgBdrpYmQGH8Koa+byp2I3WobxHVSQLw60pdHfZ6FG7vle4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737123093; c=relaxed/simple;
	bh=Mm03UUrI+RV31iiXhGlDiAEF5rP+pIz2ld/fYEKGBa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xw0V+ktcfVf1mZB9ZzutR+bMt40kxCLdzaRZRGw/wlz23EPofx0BnxGE80v8LFR+8jTGSvP/uUlvSbrF5lEKzZb6BeKvN1xK5BjjrivKsuq+OLIkkUnj1+6auWnEGlAER/fnryTwXG2j4lh0qibHIqSZ6EtMZRpBoOFPXNmT5aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c0:20f3:a400:5304:e921:4d34:736a] (unknown [IPv6:2605:59c0:20f3:a400:5304:e921:4d34:736a])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id DDA7BB4B438D;
	Fri, 17 Jan 2025 15:04:40 +0100 (CET)
Message-ID: <dd3aefec-0e1a-4025-812b-daa67a53f4ee@freeshell.de>
Date: Fri, 17 Jan 2025 06:04:38 -0800
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
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <SHXPR01MB08631714C914911D343372ACE619A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Minda,

On 1/15/25 02:58, Minda Chen wrote:
> 
> 
>>
>> On Tue, Jan 14, 2025 at 05:42:28AM +0000, Minda Chen wrote:
>>>
>>>
>>>>
>>>> On Thu, Jan 02, 2025 at 10:37:36AM -0800, E Shattow wrote:
>>>>> StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP
>>>>> block that may exclusively use pciephy0 for USB3.0 connectivity.
>>>>> Add the register offsets for the driver to enable/disable USB3.0 on
>> pciephy0.
>>>>>
>>>>> Signed-off-by: E Shattow <e@freeshell.de>
>>>>> ---
>>>>>   arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
>>>>>   1 file changed, 2 insertions(+)
>>>>>
>>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>> b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>> index 0d8339357bad..75ff07303e8b 100644
>>>>> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>>>>> @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
>>>>>   		pciephy0: phy@10210000 {
>>>>>   			compatible = "starfive,jh7110-pcie-phy";
>>>>>   			reg = <0x0 0x10210000 0x0 0x10000>;
>>>>> +			starfive,sys-syscon = <&sys_syscon 0x18>;
>>>>> +			starfive,stg-syscon = <&stg_syscon 0x148 0x1f4>;
>>>>
>>>> Why weren't these added in the first place? Minda, do you know?
>>>>
>>> The driver only require to set syscon register while the PHY attach to
>>> Cadence USB.(star64 board case) The PHY default attach to PCIe0, VF2 board
>> do not set any setting. So I don't set it.
>>
>> Does this mean that the change should be made in files where it will only affect
>> non-VF2 boards, or is it harmless if applied to the VF2 also?
> Harmless. The PCIe PHY driver still set the PCIe mode syscon setting.

Sounds good to me. However some tangent topic related to this series:

Our questions and answers in this discussion are a representation of 
what is missing from the documentation.

What do I want to know? :  "pdrstn split sw usbpipe plugen" abbreviation.

What are the full words that is from?

I will guess the words are:

"Power domain reset negative? Split... Switch? USB pipeline plug enable?"

When this is explained for me I will send a patch to add information 
into documentation at dt-bindings/phy/starfive,jh7110-pcie-phy.yaml 
file. I know that the functionality is already said in discussion;  What 
I want are the full words to expand the "pdrstn split sw usbpipe plugen" 
as any abbreviation would also be expanded and explained in documentation.

It would be difficult to improve the documentation before our discussion 
about this series here. Now it is clear what questions and answers are 
missing from documentation.

-E

