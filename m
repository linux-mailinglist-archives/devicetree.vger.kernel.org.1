Return-Path: <devicetree+bounces-88980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD8D93F845
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 16:37:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 551C51F22B7D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 14:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80C61494BB;
	Mon, 29 Jul 2024 14:30:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A649C1527AC
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 14:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722263409; cv=none; b=sB7mO8OT5RPrKQMN9Fne8kp5WxSspbAPugmgNUWScJVO9bJb8NVlTqKc+A0kKuJd+WvMMReUm9ZgnIaxWrNWblMKxxOC45Zwv+Njtzj8FYo4J4BY8ObxJRMgybok1A/0H0T44YGq+kRuStJnEYV4RUMMj4cBmuYDWEifvOUa5Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722263409; c=relaxed/simple;
	bh=WC9sVcHy1AkXcZiA4Qgl99gog2NHatg7hAmpUCUUDeQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rQkyAS8EQynFznzrGeO0sUVVEF1cvnEqcEJ+VZsSGOajVH65028JBFalE23cXOvlCaPQXH7ZCyg1d5sGVArpuNNnnT+7VmZtyry3GMGETTUDyHUiyOlNVEXUo8jS3F51xG2rKarycTkY9f8HtbS86Q0o7ktI71aVsL5+rBslUTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ghiti.fr; spf=pass smtp.mailfrom=ghiti.fr; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ghiti.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ghiti.fr
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3CFFD40007;
	Mon, 29 Jul 2024 14:30:01 +0000 (UTC)
Message-ID: <51043fe4-297b-4f2e-9e67-669ea53cf273@ghiti.fr>
Date: Mon, 29 Jul 2024 16:30:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] riscv: Add Zawrs support for spinlocks
Content-Language: en-US
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org,
 atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de,
 charlie@rivosinc.com, David.Laight@aculab.com, parri.andrea@gmail.com,
 luxu.kernel@bytedance.com
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-11-ajones@ventanamicro.com>
 <4de22b20-8a6a-47d0-a4e9-74343c45411c@ghiti.fr>
 <20240729-b6707d037c0546c2c2f8da25@orel>
From: Alexandre Ghiti <alex@ghiti.fr>
In-Reply-To: <20240729-b6707d037c0546c2c2f8da25@orel>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: alex@ghiti.fr

On 29/07/2024 16:01, Andrew Jones wrote:
> On Mon, Jul 29, 2024 at 03:43:30PM GMT, Alexandre Ghiti wrote:
> ...
>>> +static __always_inline void __cmpwait(volatile void *ptr,
>>> +				      unsigned long val,
>>> +				      int size)
>>> +{
>>> +	unsigned long tmp;
>>> +
>>> +	asm goto(ALTERNATIVE("j %l[no_zawrs]", "nop",
>>> +			     0, RISCV_ISA_EXT_ZAWRS, 1)
>>> +		 : : : : no_zawrs);
>>> +
>>> +	switch (size) {
>>> +	case 4:
>>> +		asm volatile(
>>> +		"	lr.w	%0, %1\n"
>>> +		"	xor	%0, %0, %2\n"
>>> +		"	bnez	%0, 1f\n"
>>> +			ZAWRS_WRS_NTO "\n"
>>> +		"1:"
>>> +		: "=&r" (tmp), "+A" (*(u32 *)ptr)
>>> +		: "r" (val));
>>> +		break;
>>> +#if __riscv_xlen == 64
>>> +	case 8:
>>> +		asm volatile(
>>> +		"	lr.d	%0, %1\n"
>>> +		"	xor	%0, %0, %2\n"
>>> +		"	bnez	%0, 1f\n"
>>> +			ZAWRS_WRS_NTO "\n"
>>> +		"1:"
>>> +		: "=&r" (tmp), "+A" (*(u64 *)ptr)
>>> +		: "r" (val));
>>> +		break;
>>> +#endif
>>> +	default:
>>> +		BUILD_BUG();
>>> +	}
>>> +
>>> +	return;
>>> +
>>> +no_zawrs:
>>> +	asm volatile(RISCV_PAUSE : : : "memory");
>>
>> Shouldn't we fallback to the previous implementation (cpu_relax()) here? Not
>> sure this is really important, but I want to make sure it was not an
>> oversight.
>>
> Hi Alex,
>
> It was intentional. We can't easily call cpu_relax() from here because
> asm/vdso/processor.h includes asm/barrier.h which includes asm/cmpxchg.h.
> We've mostly reproduced cpu_relax() here since we're only skipping the
> div, and, as __cmpwait will be used in loops which load memory for the
> comparison, I didn't think we needed the extra div stalls.


Ok thanks for your quick answer. Actually I'm asking because I fell onto 
the issue with the headers and I managed to fix it by replacing 
asm/barrier.h with linux/compiler.h, which is actually where is defined 
barrier().

But anyway, it makes sense.

Thanks,

Alex


> Thanks,
> drew

