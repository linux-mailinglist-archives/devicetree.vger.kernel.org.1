Return-Path: <devicetree+bounces-88940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 419F593F6E7
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 15:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BABE01F20F89
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 13:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD873823A9;
	Mon, 29 Jul 2024 13:43:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA1C8005C
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 13:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722260629; cv=none; b=oGdZGa9IUCNRmOlqI7WDTLomodbRkVY6IEZoc2TaEV777/5z0td3BDrTyN88DkYvxDxVK3dADiowMJrJ5A9QfZ/cGEnCmx8qf+w95Oymci25jUrQXukrb+o5rGWjinpyLzP+qFVj2DHw3DiWU7dO5rTyYcgfTDuDnxoKWaqLXNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722260629; c=relaxed/simple;
	bh=2VFsq6Bz+ible3CLNGrNysQcJQmMMz9Vk7TvA/c0CKw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jfX23P33I6IrSWoQiiXVQtNyRI5oePpKfQmYcxFwfkd9MlpvoeG+t2sTEOoXigV/RK4G+ZLzbeOXZNAfGuzgaXxSiT5GJos5I0pnDuBTK5q4j2vfW+yDTi1QAW1GybhgjbCa0/5w+4jZmaHIBRE2lxvbbyzSWksUKEN2OZrRzxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ghiti.fr; spf=pass smtp.mailfrom=ghiti.fr; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ghiti.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ghiti.fr
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2CE8D2000D;
	Mon, 29 Jul 2024 13:43:30 +0000 (UTC)
Message-ID: <4de22b20-8a6a-47d0-a4e9-74343c45411c@ghiti.fr>
Date: Mon, 29 Jul 2024 15:43:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] riscv: Add Zawrs support for spinlocks
Content-Language: en-US
To: Andrew Jones <ajones@ventanamicro.com>, linux-riscv@lists.infradead.org,
 kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 conor.dooley@microchip.com, anup@brainfault.org, atishp@atishpatra.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
 David.Laight@ACULAB.COM, parri.andrea@gmail.com, luxu.kernel@bytedance.com
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-11-ajones@ventanamicro.com>
From: Alexandre Ghiti <alex@ghiti.fr>
In-Reply-To: <20240426100820.14762-11-ajones@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alex@ghiti.fr

Hi Drew,

On 26/04/2024 12:08, Andrew Jones wrote:
> From: Christoph Müllner <christoph.muellner@vrull.eu>
>
> RISC-V code uses the generic ticket lock implementation, which calls
> the macros smp_cond_load_relaxed() and smp_cond_load_acquire().
> Introduce a RISC-V specific implementation of smp_cond_load_relaxed()
> which applies WRS.NTO of the Zawrs extension in order to reduce power
> consumption while waiting and allows hypervisors to enable guests to
> trap while waiting. smp_cond_load_acquire() doesn't need a RISC-V
> specific implementation as the generic implementation is based on
> smp_cond_load_relaxed() and smp_acquire__after_ctrl_dep() sufficiently
> provides the acquire semantics.
>
> This implementation is heavily based on Arm's approach which is the
> approach Andrea Parri also suggested.
>
> The Zawrs specification can be found here:
> https://github.com/riscv/riscv-zawrs/blob/main/zawrs.adoc
>
> Signed-off-by: Christoph Müllner <christoph.muellner@vrull.eu>
> Co-developed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>   arch/riscv/Kconfig                | 13 +++++++
>   arch/riscv/include/asm/barrier.h  | 45 ++++++++++++++++--------
>   arch/riscv/include/asm/cmpxchg.h  | 58 +++++++++++++++++++++++++++++++
>   arch/riscv/include/asm/hwcap.h    |  1 +
>   arch/riscv/include/asm/insn-def.h |  2 ++
>   arch/riscv/kernel/cpufeature.c    |  1 +
>   6 files changed, 105 insertions(+), 15 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 7427d8088337..34bbe6b70546 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -578,6 +578,19 @@ config RISCV_ISA_V_PREEMPTIVE
>   	  preemption. Enabling this config will result in higher memory
>   	  consumption due to the allocation of per-task's kernel Vector context.
>   
> +config RISCV_ISA_ZAWRS
> +	bool "Zawrs extension support for more efficient busy waiting"
> +	depends on RISCV_ALTERNATIVE
> +	default y
> +	help
> +	  The Zawrs extension defines instructions to be used in polling loops
> +	  which allow a hart to enter a low-power state or to trap to the
> +	  hypervisor while waiting on a store to a memory location. Enable the
> +	  use of these instructions in the kernel when the Zawrs extension is
> +	  detected at boot.
> +
> +	  If you don't know what to do here, say Y.
> +
>   config TOOLCHAIN_HAS_ZBB
>   	bool
>   	default y
> diff --git a/arch/riscv/include/asm/barrier.h b/arch/riscv/include/asm/barrier.h
> index 880b56d8480d..e1d9bf1deca6 100644
> --- a/arch/riscv/include/asm/barrier.h
> +++ b/arch/riscv/include/asm/barrier.h
> @@ -11,6 +11,7 @@
>   #define _ASM_RISCV_BARRIER_H
>   
>   #ifndef __ASSEMBLY__
> +#include <asm/cmpxchg.h>
>   #include <asm/fence.h>
>   
>   #define nop()		__asm__ __volatile__ ("nop")
> @@ -28,21 +29,6 @@
>   #define __smp_rmb()	RISCV_FENCE(r, r)
>   #define __smp_wmb()	RISCV_FENCE(w, w)
>   
> -#define __smp_store_release(p, v)					\
> -do {									\
> -	compiletime_assert_atomic_type(*p);				\
> -	RISCV_FENCE(rw, w);						\
> -	WRITE_ONCE(*p, v);						\
> -} while (0)
> -
> -#define __smp_load_acquire(p)						\
> -({									\
> -	typeof(*p) ___p1 = READ_ONCE(*p);				\
> -	compiletime_assert_atomic_type(*p);				\
> -	RISCV_FENCE(r, rw);						\
> -	___p1;								\
> -})
> -
>   /*
>    * This is a very specific barrier: it's currently only used in two places in
>    * the kernel, both in the scheduler.  See include/linux/spinlock.h for the two
> @@ -70,6 +56,35 @@ do {									\
>    */
>   #define smp_mb__after_spinlock()	RISCV_FENCE(iorw, iorw)
>   
> +#define __smp_store_release(p, v)					\
> +do {									\
> +	compiletime_assert_atomic_type(*p);				\
> +	RISCV_FENCE(rw, w);						\
> +	WRITE_ONCE(*p, v);						\
> +} while (0)
> +
> +#define __smp_load_acquire(p)						\
> +({									\
> +	typeof(*p) ___p1 = READ_ONCE(*p);				\
> +	compiletime_assert_atomic_type(*p);				\
> +	RISCV_FENCE(r, rw);						\
> +	___p1;								\
> +})
> +
> +#ifdef CONFIG_RISCV_ISA_ZAWRS
> +#define smp_cond_load_relaxed(ptr, cond_expr) ({			\
> +	typeof(ptr) __PTR = (ptr);					\
> +	__unqual_scalar_typeof(*ptr) VAL;				\
> +	for (;;) {							\
> +		VAL = READ_ONCE(*__PTR);				\
> +		if (cond_expr)						\
> +			break;						\
> +		__cmpwait_relaxed(ptr, VAL);				\
> +	}								\
> +	(typeof(*ptr))VAL;						\
> +})
> +#endif
> +
>   #include <asm-generic/barrier.h>
>   
>   #endif /* __ASSEMBLY__ */
> diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
> index 2fee65cc8443..725276dcb996 100644
> --- a/arch/riscv/include/asm/cmpxchg.h
> +++ b/arch/riscv/include/asm/cmpxchg.h
> @@ -8,7 +8,10 @@
>   
>   #include <linux/bug.h>
>   
> +#include <asm/alternative-macros.h>
>   #include <asm/fence.h>
> +#include <asm/hwcap.h>
> +#include <asm/insn-def.h>
>   
>   #define __xchg_relaxed(ptr, new, size)					\
>   ({									\
> @@ -359,4 +362,59 @@
>   	arch_cmpxchg_relaxed((ptr), (o), (n));				\
>   })
>   
> +#ifdef CONFIG_RISCV_ISA_ZAWRS
> +/*
> + * Despite wrs.nto being "WRS-with-no-timeout", in the absence of changes to
> + * @val we expect it to still terminate within a "reasonable" amount of time
> + * for an implementation-specific other reason, a pending, locally-enabled
> + * interrupt, or because it has been configured to raise an illegal
> + * instruction exception.
> + */
> +static __always_inline void __cmpwait(volatile void *ptr,
> +				      unsigned long val,
> +				      int size)
> +{
> +	unsigned long tmp;
> +
> +	asm goto(ALTERNATIVE("j %l[no_zawrs]", "nop",
> +			     0, RISCV_ISA_EXT_ZAWRS, 1)
> +		 : : : : no_zawrs);
> +
> +	switch (size) {
> +	case 4:
> +		asm volatile(
> +		"	lr.w	%0, %1\n"
> +		"	xor	%0, %0, %2\n"
> +		"	bnez	%0, 1f\n"
> +			ZAWRS_WRS_NTO "\n"
> +		"1:"
> +		: "=&r" (tmp), "+A" (*(u32 *)ptr)
> +		: "r" (val));
> +		break;
> +#if __riscv_xlen == 64
> +	case 8:
> +		asm volatile(
> +		"	lr.d	%0, %1\n"
> +		"	xor	%0, %0, %2\n"
> +		"	bnez	%0, 1f\n"
> +			ZAWRS_WRS_NTO "\n"
> +		"1:"
> +		: "=&r" (tmp), "+A" (*(u64 *)ptr)
> +		: "r" (val));
> +		break;
> +#endif
> +	default:
> +		BUILD_BUG();
> +	}
> +
> +	return;
> +
> +no_zawrs:
> +	asm volatile(RISCV_PAUSE : : : "memory");


Shouldn't we fallback to the previous implementation (cpu_relax()) here? 
Not sure this is really important, but I want to make sure it was not an 
oversight.

Thanks,

Alex


> +}
> +
> +#define __cmpwait_relaxed(ptr, val) \
> +	__cmpwait((ptr), (unsigned long)(val), sizeof(*(ptr)))
> +#endif
> +
>   #endif /* _ASM_RISCV_CMPXCHG_H */
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index e17d0078a651..5b358c3cf212 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -81,6 +81,7 @@
>   #define RISCV_ISA_EXT_ZTSO		72
>   #define RISCV_ISA_EXT_ZACAS		73
>   #define RISCV_ISA_EXT_XANDESPMU		74
> +#define RISCV_ISA_EXT_ZAWRS		75
>   
>   #define RISCV_ISA_EXT_XLINUXENVCFG	127
>   
> diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
> index 64dffaa21bfa..9a913010cdd9 100644
> --- a/arch/riscv/include/asm/insn-def.h
> +++ b/arch/riscv/include/asm/insn-def.h
> @@ -197,5 +197,7 @@
>   	       RS1(base), SIMM12(4))
>   
>   #define RISCV_PAUSE	".4byte 0x100000f"
> +#define ZAWRS_WRS_NTO	".4byte 0x00d00073"
> +#define ZAWRS_WRS_STO	".4byte 0x01d00073"
>   
>   #endif /* __ASM_INSN_DEF_H */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 3ed2359eae35..02de9eaa3f42 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -257,6 +257,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>   	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
>   	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
>   	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
> +	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
>   	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
>   	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
>   	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),

