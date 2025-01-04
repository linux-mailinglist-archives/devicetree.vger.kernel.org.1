Return-Path: <devicetree+bounces-135596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3D7A016E8
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 22:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F5EE1620E4
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6202F146D55;
	Sat,  4 Jan 2025 21:04:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEF8182D0;
	Sat,  4 Jan 2025 21:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024686; cv=none; b=RBpjoi7yEZFwz/4JRGeTK9sFSC/xKLZfclkXcKHgtDpysykaHG4iuIryHN6uq52TRiiCIyOxhSUvUiNwm7aBX6hnXxLlLudB0K/Cb0P5n8U+aIjfi6VcibPsAzLdHwLmh4g6/rxphZ3pb2PnhmMkVam0Fj9r9b1DbrScYYkK0tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024686; c=relaxed/simple;
	bh=8jgx7Q2/gz591K3cxouV1IxWJlmMe38Txc/bOdKxGj8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A69Swr+gBLgkaPV3jtVCUIwxjTD8q292hcDNRQgLnYp2dUvKagU1AoW4PLBNVugTOvh2iLycHHc+smc/2Gi0/62Htb114xxp1wUfX1bE66hl23uTo6wFhVJHRQUfo7zuAkTo3xDlX1dKHvIx6hd3clNBtqXuasWf3CpU6awv/Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46] (unknown [IPv6:2605:59c8:31de:bf00:37c2:fe62:c21b:ab46])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id EB837B4B3C99;
	Sat,  4 Jan 2025 22:04:31 +0100 (CET)
Message-ID: <56c372c3-bb8b-4150-9b34-a6cca906d740@freeshell.de>
Date: Sat, 4 Jan 2025 13:04:30 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
To: Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Minda Chen <minda.chen@starfivetech.com>,
 Hal Feng <hal.feng@starfivetech.com>
References: <20250102194530.418127-1-e@freeshell.de>
 <20250102194530.418127-2-e@freeshell.de>
 <20250104-mutilated-unpaved-008eebdb200a@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20250104-mutilated-unpaved-008eebdb200a@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, Conor  (added CC: Minda Chen, Hal Feng)

On 1/4/25 10:33, Conor Dooley wrote:
> On Thu, Jan 02, 2025 at 11:45:07AM -0800, E Shattow wrote:
>> Replace syscrg assignments of clocks, clock parents, and rates, for
>> compatibility with downstream boot loader SPL secondary program
>> loader.
>>
>> Signed-off-by: E Shattow <e@freeshell.de>
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++---
>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> index 48fb5091b817..55c6743100a7 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
>> @@ -359,9 +359,15 @@ spi_dev0: spi@0 {
>>   };
>>   
>>   &syscrg {
>> -	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
>> -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
>> -	assigned-clock-rates = <500000000>, <1500000000>;
>> +	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
>> +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
>> +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
>> +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
>> +	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
>> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
>> +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
>> +	assigned-clock-rates = <0>, <0>, <0>, <0>;
> 
> Why is assigned rates here 0s, rather than the property just removed?
> 
>>   };
>>   
>>   &sysgpio {
>> -- 
>> 2.45.2
>>

Assigned rates all zeroes is how it is in U-Boot. Removing the 
assigned-clock-rates property as suggested does work in U-Boot and Linux 
both.

For context, U-Boot fails when replacing assigned-clocks to 
JH7110_SYSCLK_CPU_CORE (500MHz) and JH7110_PLLCLK_PLL0_OUT (1500MHz) 
from Linux. So I tried to merge all properties together and in testing 
then U-Boot failed (or I did it wrong). However replacing the Linux 
properties with the U-Boot configuration (above) on Linux does work for 
both.

I do not know if this is correct but I can test any suggestions and 
report if they are working.

Do these changes make sense? Are there other variations I should test?

Thanks,

-E

