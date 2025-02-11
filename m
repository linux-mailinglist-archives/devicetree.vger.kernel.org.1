Return-Path: <devicetree+bounces-145402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 437FCA313DE
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 19:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AED5518888FA
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 18:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A7B1E5710;
	Tue, 11 Feb 2025 18:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280F81E2845
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 18:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739297884; cv=none; b=i7VqEBxk/vheS+xF+VUU3wCqu5zx3p8GJQ7yhk53l3TWq8vFctIQ8K8A2mlnX1PAYECp2xgFVX9yde1kywfKlaYA7fl9Wcyy80OaJ2kHDndmBVEVvK+O+6ZdV7VUgys2upQBIfUF3KLJcdpqaznrOr9+mjHCBa1TcYYRNJcSRy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739297884; c=relaxed/simple;
	bh=jc2YH5MZroDxlGvxa5/biVTdhZyRXOOimMglkOuvhZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cuRW+J8JElOzkxVaptSM7T97gt4SIm9KBsgUsmVDufDCJtgEPYbYEJUuoyA7Tz0jt8yrBb89e2dD/grPygqA40YYFguIesueX8RncodpRJrMcG9On2QwKhVy7zcUiLZJ8+/tkuC4pMWE5t0xv0J84DmS05YQLzraG1FxZuKzg/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87C9C13D5;
	Tue, 11 Feb 2025 10:18:22 -0800 (PST)
Received: from [10.57.35.63] (unknown [10.57.35.63])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4906B3F58B;
	Tue, 11 Feb 2025 10:17:59 -0800 (PST)
Message-ID: <4005a054-0bb7-4e1b-9c52-fa18aa2b0959@arm.com>
Date: Tue, 11 Feb 2025 18:17:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
To: Niklas Cassel <cassel@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box> <25203566.ouqheUzb2q@diego>
 <Z6tBElUDaPNgkaIf@ryzen>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <Z6tBElUDaPNgkaIf@ryzen>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2025-02-11 12:22 pm, Niklas Cassel wrote:
> On Tue, Feb 11, 2025 at 08:40:25AM +0100, Heiko Stübner wrote:
>> Am Montag, 10. Februar 2025, 22:37:29 MEZ schrieb Patrick Wildt:
>>> The SMMU architecture requires wired interrupts to be edge triggered,
>>> which does not align with the DT description for the RK3588.  This leads
>>> to interrupt storms, as the SMMU continues to hold the pin high and only
>>> pulls it down for a short amount when issuing an IRQ.  Update the DT
>>> description to be in line with the spec and perceived reality.
>>>
>>
>> Cc'ed Niklas
>>
>> This should probably also get a
>>
>> Fixes: cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php IOMMUs")
> 
> Agreed.
> 
> 
>>
>>> Signed-off-by: Patrick Wildt <patrick@blueri.se>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 16 ++++++++--------
>>>   1 file changed, 8 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> index 8cfa30837ce7..520d0814a4de 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> @@ -549,10 +549,10 @@ usb_host2_xhci: usb@fcd00000 {
>>>   	mmu600_pcie: iommu@fc900000 {
>>>   		compatible = "arm,smmu-v3";
>>>   		reg = <0x0 0xfc900000 0x0 0x200000>;
>>> -		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		interrupts = <GIC_SPI 369 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 371 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
>>>   		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>>>   		#iommu-cells = <1>;
>>>   	};
>>> @@ -560,10 +560,10 @@ mmu600_pcie: iommu@fc900000 {
>>>   	mmu600_php: iommu@fcb00000 {
>>>   		compatible = "arm,smmu-v3";
>>>   		reg = <0x0 0xfcb00000 0x0 0x200000>;
>>> -		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
>>> -			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		interrupts = <GIC_SPI 381 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 383 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 386 IRQ_TYPE_EDGE_RISING 0>,
>>> +			     <GIC_SPI 379 IRQ_TYPE_EDGE_RISING 0>;
>>>   		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>>>   		#iommu-cells = <1>;
>>>   		status = "disabled";
>>>
> 
> Patrick, thank you for the patch!
> 
> FWIW, they have the same bug in downstream:
> https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr4.1/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L2761-L2783
> 
> However, the Rockchip PCIe Virtualization Developer Guide correctly define
> the IRQs as edge triggered:
> https://dl.radxa.com/users/dev/Rockchip_PCIe_Virtualization_Developer_Guide_CN.pdf
> 
> Looking at the ARM SMMUv3 architecture specification:
> "An implementation must support one of, or optionally both of, wired
> interrupts and MSIs. Whether an implementation supports MSIs is discoverable
> from SMMU_IDR0.MSI and SMMU_S_IDR0.MSI. An implementation might support wired
> interrupt outputs that are edge-triggered. The discovery of support for wired
> interrupts is IMPLEMENTATION DEFINED."

Yup, rising edge is certainly what MMU-600 spits out.

Thanks,
Robin.

> 
> Thus:
> Reviewed-by: Niklas Cassel <cassel@kernel.org>
> 
> 
> Heiko, this patch should go to 6.14.
> 
> Side note: We also have another SMMU patch that should go to 6.14:
> https://lore.kernel.org/linux-rockchip/20250207143900.2047949-2-cassel@kernel.org/
> 
> 
> Kind regards,
> Niklas


