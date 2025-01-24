Return-Path: <devicetree+bounces-140761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA906A1B49C
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 12:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99D093A2F7B
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328CF1CDA13;
	Fri, 24 Jan 2025 11:19:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D231223B0;
	Fri, 24 Jan 2025 11:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737717583; cv=none; b=bsJ9viMLQvdOp9DpxcZo7Fn+e6EfnCMTJ3Zc53ZAOG1wotb4+o1Plxu5tGd0X/6WpVJ6JlfcVbuqqVGhD0yT/TfWeFczO5JUrBCZ75vNmY5DkX9jn7/RR+t8TVDAdhwsBUKKU/04lh7bfruNkhLQaLKAvZindain8YoAB8AOYgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737717583; c=relaxed/simple;
	bh=NqJEwwX1DzsrqrCVlxgUljqVAJuKs0dj3LUDpx4IOto=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BbFvi5pXmBPDGm1n4iBIxXi7GJ0spieOtc7W/cxPJcpn6Owv2F7erXkTLcUT2zaJj1QVSglBpnQvx05kfnlX+W9aG/HaC/fNQhCliVprklPbVhCjw30LQZl5okF5kZoRhZLZtssnoambodefaKSx/YmR/GFEiLxYWvr/GdzjDAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from [IPV6:2605:59c0:20f3:a400:5304:e921:4d34:736a] (unknown [IPv6:2605:59c0:20f3:a400:5304:e921:4d34:736a])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id BB842B4B446D;
	Fri, 24 Jan 2025 12:19:35 +0100 (CET)
Message-ID: <b62cfcc1-5d10-43a1-80ae-f09a53c739de@freeshell.de>
Date: Fri, 24 Jan 2025 03:19:33 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 1/3] riscv: dts: starfive: jh7110: add timer node
To: Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20250102204137.423081-1-e@freeshell.de>
 <20250102204137.423081-2-e@freeshell.de>
 <20250113-monotone-maybe-97ae1d171710@spud>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <20250113-monotone-maybe-97ae1d171710@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 1/13/25 10:39, Conor Dooley wrote:
> On Thu, Jan 02, 2025 at 12:41:21PM -0800, E Shattow wrote:
>> no idea if this does anything useful; not needed for boot
>>
>> Signed-off-by: E Shattow <e@freeshell.de>
>> ---
>>   arch/riscv/boot/dts/starfive/jh7110.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> index 0d8339357bad..0bc922b3ae8a 100644
>> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
>> @@ -344,6 +344,15 @@ tdm_ext: tdm-ext-clock {
>>   		#clock-cells = <0>;
>>   	};
>>   
>> +	timer {
>> +		compatible = "riscv, timer";
> 
> compatible has an extra space, so won't do anything!
> 
>> +		interrupts-extended = <&cpu0_intc 5>,
>> +				      <&cpu1_intc 5>,
>> +				      <&cpu2_intc 5>,
>> +				      <&cpu3_intc 5>,
>> +				      <&cpu4_intc 5>;
>> +	};
>> +
>>   	soc {
>>   		compatible = "simple-bus";
>>   		interrupt-parent = <&plic>;
>> -- 
>> 2.45.2
>>

That extra space is my error and does not exist in U-Boot. Good catch! 
So, when corrected it appears to boot either way with or without and not 
any change in functionality that I can discern. My priority then for 
this series is to drop this patch as something unnecessary.

Thanks, Conor!

-E

