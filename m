Return-Path: <devicetree+bounces-94304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A2C954E6E
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 18:06:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C8911F258B4
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 16:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29ECB1BE854;
	Fri, 16 Aug 2024 16:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Rg9Ffr1A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51111BDA87
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 16:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723824357; cv=none; b=ubXZyse2bYzITEIu+BkJyzW2yMgiuoj3Y4hirBuX9O/Va1CP3B1Bj4EuYhjhLdZTdHUWri1NwnpVLEX+cK+9FYZM/2wQH5wGRLT/9AZLpBo0+6R6S0mEi0fcI01v8rwPfjSsslECwALuj5biepalegXbUCMSYsPTwWCFSsAw5+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723824357; c=relaxed/simple;
	bh=6BO/maEjrx/cZR2u127dlkQbYICXH0x1XZX2uW9uN2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eZAzX6dkjuaGp+GJ7yMZ53YUSxb+H62TS7ospxWue/wjJvrqIKJQhA+e4e0V4ds38zq2qs+gAV2JE9FbctOg+1Xkr6QCkJUCLSELV6iZENV7uGFzQK+PWJ8Xncv6Aw+cs1lV+7a3qv/j4TIlifeKInBSAC6qG6igPy6ubkriOko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Rg9Ffr1A; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-39d24ec79feso5168195ab.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 09:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723824354; x=1724429154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o84N4ouk6Dkhcje+6ztzZIHY0vWe2YxL+gh1TxT0Vmk=;
        b=Rg9Ffr1ALKk0DvEJVTwwARrd2ATOqAAgxa2tBbNkxCMTNM2NvfquLYtZMmpOkS7gJz
         24yUGg9jPQt0l2mZXAMUjiF6ks3ihsakTEBYxzjcQqHG2KvJgPhBqKPI3WD35nklC/Ip
         xafdqSOVlXPFsqYEyAyo9MYBLdJsJIp8SAtSPC8rCePM9ws5dRnjHogjJNPPq1H9hae7
         szVAUXoqltitsVR9iUCrkUMdSWe6m8pYLxoDtY+t53eGoli1xpKk/SQDUojceVmN+NKm
         P+VqnGMBemZJMQ0VzJCioPboBOYFZ2nc7Fyh4/9KJe6n4Vwb9RitD3BiYHEdsKgHrW4E
         1k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723824354; x=1724429154;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o84N4ouk6Dkhcje+6ztzZIHY0vWe2YxL+gh1TxT0Vmk=;
        b=GF6vB9ycMV7gfRwCkWAC1DrLBd+6m4f2kUYl00izWJr+BLWWuawQwgIlZEYnXy3DEw
         njYXIAdMrnHCZv4eHzBAtsQB99tCqTgQ6xk7KEQ71BTTuCWGO4DioLgGVnfIaaSOBlIn
         aPvcrC/krf8/cdCS5YfkRGkpgENuA6dbfV99SCmWYGFGiQZZ52Vl3Q+KqaaIJcjb0T4r
         qjPs1lK+PtCWtwyp0mz+xVq/5DbRsmNd/JHc7e1a1j4N0PuMecdG1/xa4zbBmVEYiJEJ
         IVuecYMFhVtJ2jCwrAnbncwXPxAIR1PA6rNFG/9eWIf4a31ccJjFlZuAHAP5m8w40rFi
         Y0ow==
X-Forwarded-Encrypted: i=1; AJvYcCWQf8Z7u1uITccCYHyBzIctH/TijZy1eVczDajZF0SUU4QJs8cVUvLj+4DkEp3LC/VT56CevAyPyMe2qc4InSzvD9KVf66tauUcsQ==
X-Gm-Message-State: AOJu0Yy32NMUf0qkZbuYlvne3DK+fG/gWQHeWHUXQ6hh7pgSACWYVVht
	o/QUiNmm4u2ckszlJtJkXomtrsVpFVm1klFzUCMx7Atwo4Uj9CSCyRPzNuWPREo=
X-Google-Smtp-Source: AGHT+IG4laNFDhHnrQVOSwBV9czZ1pZoYL3nYxxmHeLOYJCIUBgZ9DJquHb1GQnoxRC0uU+qj0Q7Hg==
X-Received: by 2002:a05:6e02:1c49:b0:39a:e9b8:cdae with SMTP id e9e14a558f8ab-39d1bc97b4emr73110195ab.0.1723824353392;
        Fri, 16 Aug 2024 09:05:53 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39d247324afsm11366425ab.13.2024.08.16.09.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Aug 2024 09:05:52 -0700 (PDT)
Message-ID: <7d741701-8966-45f1-8404-4b3618d44ea4@sifive.com>
Date: Fri, 16 Aug 2024 11:05:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/10] riscv: Add support for userspace pointer masking
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
 Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
 Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
References: <20240814081437.956855-1-samuel.holland@sifive.com>
 <20240814081437.956855-5-samuel.holland@sifive.com>
 <CAK9=C2XOktu5kPXEWKMY4Wsf0D9kwh3rZNXricWqLQaiaqWnnQ@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAK9=C2XOktu5kPXEWKMY4Wsf0D9kwh3rZNXricWqLQaiaqWnnQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Anup,

On 2024-08-16 8:21 AM, Anup Patel wrote:
> On Wed, Aug 14, 2024 at 1:45 PM Samuel Holland
> <samuel.holland@sifive.com> wrote:
>>
>> RISC-V supports pointer masking with a variable number of tag bits
>> (which is called "PMLEN" in the specification) and which is configured
>> at the next higher privilege level.
>>
>> Wire up the PR_SET_TAGGED_ADDR_CTRL and PR_GET_TAGGED_ADDR_CTRL prctls
>> so userspace can request a lower bound on the number of tag bits and
>> determine the actual number of tag bits. As with arm64's
>> PR_TAGGED_ADDR_ENABLE, the pointer masking configuration is
>> thread-scoped, inherited on clone() and fork() and cleared on execve().
>>
>> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
>> ---
>>
>> Changes in v3:
>>  - Rename CONFIG_RISCV_ISA_POINTER_MASKING to CONFIG_RISCV_ISA_SUPM,
>>    since it only controls the userspace part of pointer masking
>>  - Use IS_ENABLED instead of #ifdef when possible
>>  - Use an enum for the supported PMLEN values
>>  - Simplify the logic in set_tagged_addr_ctrl()
>>
>> Changes in v2:
>>  - Rebase on riscv/linux.git for-next
>>  - Add and use the envcfg_update_bits() helper function
>>  - Inline flush_tagged_addr_state()
>>
>>  arch/riscv/Kconfig                 | 11 ++++
>>  arch/riscv/include/asm/processor.h |  8 +++
>>  arch/riscv/include/asm/switch_to.h | 11 ++++
>>  arch/riscv/kernel/process.c        | 90 ++++++++++++++++++++++++++++++
>>  include/uapi/linux/prctl.h         |  3 +
>>  5 files changed, 123 insertions(+)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 0f3cd7c3a436..817437157138 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -512,6 +512,17 @@ config RISCV_ISA_C
>>
>>           If you don't know what to do here, say Y.
>>
>> +config RISCV_ISA_SUPM
>> +       bool "Supm extension for userspace pointer masking"
>> +       depends on 64BIT
>> +       default y
>> +       help
>> +         Add support for pointer masking in userspace (Supm) when the
>> +         underlying hardware extension (Smnpm or Ssnpm) is detected at boot.
>> +
>> +         If this option is disabled, userspace will be unable to use
>> +         the prctl(PR_{SET,GET}_TAGGED_ADDR_CTRL) API.
>> +
>>  config RISCV_ISA_SVNAPOT
>>         bool "Svnapot extension support for supervisor mode NAPOT pages"
>>         depends on 64BIT && MMU
>> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
>> index 586e4ab701c4..5c4d4fb97314 100644
>> --- a/arch/riscv/include/asm/processor.h
>> +++ b/arch/riscv/include/asm/processor.h
>> @@ -200,6 +200,14 @@ extern int set_unalign_ctl(struct task_struct *tsk, unsigned int val);
>>  #define RISCV_SET_ICACHE_FLUSH_CTX(arg1, arg2) riscv_set_icache_flush_ctx(arg1, arg2)
>>  extern int riscv_set_icache_flush_ctx(unsigned long ctx, unsigned long per_thread);
>>
>> +#ifdef CONFIG_RISCV_ISA_SUPM
>> +/* PR_{SET,GET}_TAGGED_ADDR_CTRL prctl */
>> +long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg);
>> +long get_tagged_addr_ctrl(struct task_struct *task);
>> +#define SET_TAGGED_ADDR_CTRL(arg)      set_tagged_addr_ctrl(current, arg)
>> +#define GET_TAGGED_ADDR_CTRL()         get_tagged_addr_ctrl(current)
>> +#endif
>> +
>>  #endif /* __ASSEMBLY__ */
>>
>>  #endif /* _ASM_RISCV_PROCESSOR_H */
>> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
>> index 9685cd85e57c..94e33216b2d9 100644
>> --- a/arch/riscv/include/asm/switch_to.h
>> +++ b/arch/riscv/include/asm/switch_to.h
>> @@ -70,6 +70,17 @@ static __always_inline bool has_fpu(void) { return false; }
>>  #define __switch_to_fpu(__prev, __next) do { } while (0)
>>  #endif
>>
>> +static inline void envcfg_update_bits(struct task_struct *task,
>> +                                     unsigned long mask, unsigned long val)
>> +{
>> +       unsigned long envcfg;
>> +
>> +       envcfg = (task->thread.envcfg & ~mask) | val;
>> +       task->thread.envcfg = envcfg;
>> +       if (task == current)
>> +               csr_write(CSR_ENVCFG, envcfg);
>> +}
>> +
>>  static inline void __switch_to_envcfg(struct task_struct *next)
>>  {
>>         asm volatile (ALTERNATIVE("nop", "csrw " __stringify(CSR_ENVCFG) ", %0",
>> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
>> index e4bc61c4e58a..1280a7c4a412 100644
>> --- a/arch/riscv/kernel/process.c
>> +++ b/arch/riscv/kernel/process.c
>> @@ -7,6 +7,7 @@
>>   * Copyright (C) 2017 SiFive
>>   */
>>
>> +#include <linux/bitfield.h>
>>  #include <linux/cpu.h>
>>  #include <linux/kernel.h>
>>  #include <linux/sched.h>
>> @@ -171,6 +172,9 @@ void flush_thread(void)
>>         memset(&current->thread.vstate, 0, sizeof(struct __riscv_v_ext_state));
>>         clear_tsk_thread_flag(current, TIF_RISCV_V_DEFER_RESTORE);
>>  #endif
>> +       if (IS_ENABLED(CONFIG_RISCV_ISA_SUPM) &&
>> +           riscv_has_extension_unlikely(RISCV_ISA_EXT_SUPM))
>> +               envcfg_update_bits(current, ENVCFG_PMM, ENVCFG_PMM_PMLEN_0);
> 
> Seeing a compile warning with this patch on RV32.
> 
> linux/arch/riscv/kernel/process.c: In function 'flush_thread':
> linux/arch/riscv/include/asm/csr.h:202:41: warning: conversion from
> 'long long unsigned int' to 'long unsigned int' changes value from
> '12884901888' to '0' [-Woverflow]
>   202 | #define ENVCFG_PMM                      (_AC(0x3, ULL) << 32)
>       |                                         ^~~~~~~~~~~~~~~~~~~~~
> linux/arch/riscv/kernel/process.c:179:45: note: in expansion of macro
> 'ENVCFG_PMM'
>   179 |                 envcfg_update_bits(current, ENVCFG_PMM,
> ENVCFG_PMM_PMLEN_0);
>       |                                             ^~~~~~~~~~

Right, thanks, that's why I needed to use #ifdef here before. I'll switch this
instance back for v4.

Regards,
Samuel


