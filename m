Return-Path: <devicetree+bounces-94275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F985954AEE
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 15:21:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3767E2848D0
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE061BB69B;
	Fri, 16 Aug 2024 13:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="fpymQp6l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326FD1BB69A
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 13:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723814485; cv=none; b=KlN1qussmczJSmpt8UeUZjEAReCaJNP8LdQKEavu3xInKfciMDg0bKnYLRmFudX/hppNEm/GJ8lj3WnEcU3tsriqhtwuFwJfEF/uPMwJXhPs9TR8UxV/epiKwkU5MSv+9C/fg3hzfDMqzULkWlZRUILCYDd4gESlbJ4nwDbYFck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723814485; c=relaxed/simple;
	bh=aAJ+TicSzcxqpA713GipQoOCUl+RJqqpvwSqos1zuP4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JniP3GYaOtKOLH2IHWa4gBQC2b23xQ0tl4G9G6gd1JzI1eKX/+mhI5zQn7GX/d1nrOhh4P1JGSqCf6VlGilz3MbDNZD2iAvh2Vo/l8ZKRuznKZ9+OmNMKttyyeH38fmCz0j8877VDuqdYFqHDTI8NK/q20ExsnXS1gF5XOd2aOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=fpymQp6l; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso29564681fa.2
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 06:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1723814481; x=1724419281; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9tzbkpHa0cq4jRrURvNzDIHWfx9oBrvzJsu/1tWEVT4=;
        b=fpymQp6lz4k8tCh1FF/EcIgGKDoxX4HI5i6Yo/spQ6q7mQKaGj/3x05aanweeS8sx3
         eSxkTTRafOKnZrGs8+uDzyMUlKw1+apLsWX6gALYLfdby7zuAYzeHSO4KD6vENBmPZjB
         jHtps/k+ZXKxwtovHhWTfSHQErFdG1t4xOG5Hhu3y4fZc35LE1h4cGJ7FSx9sboIhJT6
         L9LykiB156bU5L1Q2IzkqVcgq75Vy2hNuzCNPsdel2B796/3t1CgQDroZv2brHMm4rab
         mnJC1G6LZvJBBnhXP+yJTar0PfnWTVa6ENYIIyulM0rtTHyITIUDbaE1c6GWKxguTrVp
         eMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723814481; x=1724419281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9tzbkpHa0cq4jRrURvNzDIHWfx9oBrvzJsu/1tWEVT4=;
        b=KcmiXjWf/a7SvNXLq2o4skJkvWDv8J496VOMVBK/JW2kRVaGT3o+Uv6Bj7K+NYyY3W
         GCFYmZgOMW4eOsBcXlREy7eMzwy9+kCOxAZoabn/lWsAaDRRRAtuToj4J72dkYQl0fYO
         Sx8wH+MMXSO3zVu6lxX8ElNDo3c3A0zhU7i96SLsd+amc8J59xqMcmRngHHsozlCjdeG
         3ugzLeZJv3zCHq+MuW9NC9PQA9kIW6FAGzfetXdNHkCGETGK9xM0vpbQaJbVfbF49F7E
         1jV3c8hux/3PAmLFr9U5nWOSouTjOe0eOKtJyIertMsIYJKS+VBU10Lt2z1ji/T3Gp9v
         tYsw==
X-Forwarded-Encrypted: i=1; AJvYcCWqc5EG+zMesAKhMmnx7kVvY5aVjaa/y8VH4DUTUPBMBgctjv4JxNYRubaVfJYQQtQivrDDR3qSOzfZpvO2HcC/BWnq5qrLHPwteA==
X-Gm-Message-State: AOJu0YzslAryHVOGVc6JIaeM8jZLECY1Jn8xsw02b+OKYtr/Q0N52yvY
	11qboccQPMNc2XeTNGjnrOyrw/YSGqub1xtz1OYXTwmzqi4+FsfeWOAnozoCvmYttP8FUxsZQeX
	x8wRfRcVkujcx6IfsRuSByAK14xpegnl90DD7ZJHTJuibYGbmetpEuA==
X-Google-Smtp-Source: AGHT+IHsGXQrWOUSHsstAbeiWjP0hjs3rLbKpygT5zcZkzhaVvceUx3hjqV1jUPOl4zjzCfAJUuVcqrljwcTwKRM3cc=
X-Received: by 2002:a05:6512:2346:b0:530:ad8d:dcdb with SMTP id
 2adb3069b0e04-5331c6a1931mr2612100e87.19.1723814480446; Fri, 16 Aug 2024
 06:21:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814081437.956855-1-samuel.holland@sifive.com> <20240814081437.956855-5-samuel.holland@sifive.com>
In-Reply-To: <20240814081437.956855-5-samuel.holland@sifive.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 16 Aug 2024 18:51:08 +0530
Message-ID: <CAK9=C2XOktu5kPXEWKMY4Wsf0D9kwh3rZNXricWqLQaiaqWnnQ@mail.gmail.com>
Subject: Re: [PATCH v3 04/10] riscv: Add support for userspace pointer masking
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>, 
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 1:45=E2=80=AFPM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> RISC-V supports pointer masking with a variable number of tag bits
> (which is called "PMLEN" in the specification) and which is configured
> at the next higher privilege level.
>
> Wire up the PR_SET_TAGGED_ADDR_CTRL and PR_GET_TAGGED_ADDR_CTRL prctls
> so userspace can request a lower bound on the number of tag bits and
> determine the actual number of tag bits. As with arm64's
> PR_TAGGED_ADDR_ENABLE, the pointer masking configuration is
> thread-scoped, inherited on clone() and fork() and cleared on execve().
>
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---
>
> Changes in v3:
>  - Rename CONFIG_RISCV_ISA_POINTER_MASKING to CONFIG_RISCV_ISA_SUPM,
>    since it only controls the userspace part of pointer masking
>  - Use IS_ENABLED instead of #ifdef when possible
>  - Use an enum for the supported PMLEN values
>  - Simplify the logic in set_tagged_addr_ctrl()
>
> Changes in v2:
>  - Rebase on riscv/linux.git for-next
>  - Add and use the envcfg_update_bits() helper function
>  - Inline flush_tagged_addr_state()
>
>  arch/riscv/Kconfig                 | 11 ++++
>  arch/riscv/include/asm/processor.h |  8 +++
>  arch/riscv/include/asm/switch_to.h | 11 ++++
>  arch/riscv/kernel/process.c        | 90 ++++++++++++++++++++++++++++++
>  include/uapi/linux/prctl.h         |  3 +
>  5 files changed, 123 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 0f3cd7c3a436..817437157138 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -512,6 +512,17 @@ config RISCV_ISA_C
>
>           If you don't know what to do here, say Y.
>
> +config RISCV_ISA_SUPM
> +       bool "Supm extension for userspace pointer masking"
> +       depends on 64BIT
> +       default y
> +       help
> +         Add support for pointer masking in userspace (Supm) when the
> +         underlying hardware extension (Smnpm or Ssnpm) is detected at b=
oot.
> +
> +         If this option is disabled, userspace will be unable to use
> +         the prctl(PR_{SET,GET}_TAGGED_ADDR_CTRL) API.
> +
>  config RISCV_ISA_SVNAPOT
>         bool "Svnapot extension support for supervisor mode NAPOT pages"
>         depends on 64BIT && MMU
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/=
processor.h
> index 586e4ab701c4..5c4d4fb97314 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -200,6 +200,14 @@ extern int set_unalign_ctl(struct task_struct *tsk, =
unsigned int val);
>  #define RISCV_SET_ICACHE_FLUSH_CTX(arg1, arg2) riscv_set_icache_flush_ct=
x(arg1, arg2)
>  extern int riscv_set_icache_flush_ctx(unsigned long ctx, unsigned long p=
er_thread);
>
> +#ifdef CONFIG_RISCV_ISA_SUPM
> +/* PR_{SET,GET}_TAGGED_ADDR_CTRL prctl */
> +long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg);
> +long get_tagged_addr_ctrl(struct task_struct *task);
> +#define SET_TAGGED_ADDR_CTRL(arg)      set_tagged_addr_ctrl(current, arg=
)
> +#define GET_TAGGED_ADDR_CTRL()         get_tagged_addr_ctrl(current)
> +#endif
> +
>  #endif /* __ASSEMBLY__ */
>
>  #endif /* _ASM_RISCV_PROCESSOR_H */
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/=
switch_to.h
> index 9685cd85e57c..94e33216b2d9 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -70,6 +70,17 @@ static __always_inline bool has_fpu(void) { return fal=
se; }
>  #define __switch_to_fpu(__prev, __next) do { } while (0)
>  #endif
>
> +static inline void envcfg_update_bits(struct task_struct *task,
> +                                     unsigned long mask, unsigned long v=
al)
> +{
> +       unsigned long envcfg;
> +
> +       envcfg =3D (task->thread.envcfg & ~mask) | val;
> +       task->thread.envcfg =3D envcfg;
> +       if (task =3D=3D current)
> +               csr_write(CSR_ENVCFG, envcfg);
> +}
> +
>  static inline void __switch_to_envcfg(struct task_struct *next)
>  {
>         asm volatile (ALTERNATIVE("nop", "csrw " __stringify(CSR_ENVCFG) =
", %0",
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index e4bc61c4e58a..1280a7c4a412 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -7,6 +7,7 @@
>   * Copyright (C) 2017 SiFive
>   */
>
> +#include <linux/bitfield.h>
>  #include <linux/cpu.h>
>  #include <linux/kernel.h>
>  #include <linux/sched.h>
> @@ -171,6 +172,9 @@ void flush_thread(void)
>         memset(&current->thread.vstate, 0, sizeof(struct __riscv_v_ext_st=
ate));
>         clear_tsk_thread_flag(current, TIF_RISCV_V_DEFER_RESTORE);
>  #endif
> +       if (IS_ENABLED(CONFIG_RISCV_ISA_SUPM) &&
> +           riscv_has_extension_unlikely(RISCV_ISA_EXT_SUPM))
> +               envcfg_update_bits(current, ENVCFG_PMM, ENVCFG_PMM_PMLEN_=
0);

Seeing a compile warning with this patch on RV32.

linux/arch/riscv/kernel/process.c: In function 'flush_thread':
linux/arch/riscv/include/asm/csr.h:202:41: warning: conversion from
'long long unsigned int' to 'long unsigned int' changes value from
'12884901888' to '0' [-Woverflow]
  202 | #define ENVCFG_PMM                      (_AC(0x3, ULL) << 32)
      |                                         ^~~~~~~~~~~~~~~~~~~~~
linux/arch/riscv/kernel/process.c:179:45: note: in expansion of macro
'ENVCFG_PMM'
  179 |                 envcfg_update_bits(current, ENVCFG_PMM,
ENVCFG_PMM_PMLEN_0);
      |                                             ^~~~~~~~~~

Regards,
Anup

>  }
>
>  void arch_release_task_struct(struct task_struct *tsk)
> @@ -233,3 +237,89 @@ void __init arch_task_cache_init(void)
>  {
>         riscv_v_setup_ctx_cache();
>  }
> +
> +#ifdef CONFIG_RISCV_ISA_SUPM
> +enum {
> +       PMLEN_0 =3D 0,
> +       PMLEN_7 =3D 7,
> +       PMLEN_16 =3D 16,
> +};
> +
> +static bool have_user_pmlen_7;
> +static bool have_user_pmlen_16;
> +
> +long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg)
> +{
> +       unsigned long valid_mask =3D PR_PMLEN_MASK;
> +       struct thread_info *ti =3D task_thread_info(task);
> +       unsigned long pmm;
> +       u8 pmlen;
> +
> +       if (is_compat_thread(ti))
> +               return -EINVAL;
> +
> +       if (arg & ~valid_mask)
> +               return -EINVAL;
> +
> +       /*
> +        * Prefer the smallest PMLEN that satisfies the user's request,
> +        * in case choosing a larger PMLEN has a performance impact.
> +        */
> +       pmlen =3D FIELD_GET(PR_PMLEN_MASK, arg);
> +       if (pmlen =3D=3D PMLEN_0)
> +               pmm =3D ENVCFG_PMM_PMLEN_0;
> +       else if (pmlen <=3D PMLEN_7 && have_user_pmlen_7)
> +               pmm =3D ENVCFG_PMM_PMLEN_7;
> +       else if (pmlen <=3D PMLEN_16 && have_user_pmlen_16)
> +               pmm =3D ENVCFG_PMM_PMLEN_16;
> +       else
> +               return -EINVAL;
> +
> +       envcfg_update_bits(task, ENVCFG_PMM, pmm);
> +
> +       return 0;
> +}
> +
> +long get_tagged_addr_ctrl(struct task_struct *task)
> +{
> +       struct thread_info *ti =3D task_thread_info(task);
> +       long ret =3D 0;
> +
> +       if (is_compat_thread(ti))
> +               return -EINVAL;
> +
> +       switch (task->thread.envcfg & ENVCFG_PMM) {
> +       case ENVCFG_PMM_PMLEN_7:
> +               ret =3D FIELD_PREP(PR_PMLEN_MASK, PMLEN_7);
> +               break;
> +       case ENVCFG_PMM_PMLEN_16:
> +               ret =3D FIELD_PREP(PR_PMLEN_MASK, PMLEN_16);
> +               break;
> +       }
> +
> +       return ret;
> +}
> +
> +static bool try_to_set_pmm(unsigned long value)
> +{
> +       csr_set(CSR_ENVCFG, value);
> +       return (csr_read_clear(CSR_ENVCFG, ENVCFG_PMM) & ENVCFG_PMM) =3D=
=3D value;
> +}
> +
> +static int __init tagged_addr_init(void)
> +{
> +       if (!riscv_has_extension_unlikely(RISCV_ISA_EXT_SUPM))
> +               return 0;
> +
> +       /*
> +        * envcfg.PMM is a WARL field. Detect which values are supported.
> +        * Assume the supported PMLEN values are the same on all harts.
> +        */
> +       csr_clear(CSR_ENVCFG, ENVCFG_PMM);
> +       have_user_pmlen_7 =3D try_to_set_pmm(ENVCFG_PMM_PMLEN_7);
> +       have_user_pmlen_16 =3D try_to_set_pmm(ENVCFG_PMM_PMLEN_16);
> +
> +       return 0;
> +}
> +core_initcall(tagged_addr_init);
> +#endif /* CONFIG_RISCV_ISA_SUPM */
> diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
> index 35791791a879..6e84c827869b 100644
> --- a/include/uapi/linux/prctl.h
> +++ b/include/uapi/linux/prctl.h
> @@ -244,6 +244,9 @@ struct prctl_mm_map {
>  # define PR_MTE_TAG_MASK               (0xffffUL << PR_MTE_TAG_SHIFT)
>  /* Unused; kept only for source compatibility */
>  # define PR_MTE_TCF_SHIFT              1
> +/* RISC-V pointer masking tag length */
> +# define PR_PMLEN_SHIFT                        24
> +# define PR_PMLEN_MASK                 (0x7fUL << PR_PMLEN_SHIFT)
>
>  /* Control reclaim behavior when allocating memory */
>  #define PR_SET_IO_FLUSHER              57
> --
> 2.45.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

