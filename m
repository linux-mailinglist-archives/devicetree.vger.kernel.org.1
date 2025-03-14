Return-Path: <devicetree+bounces-157459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB4A60B7C
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B88117EEF3
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC8F91C54AA;
	Fri, 14 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Oc8ZU/Qn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1091A3AB8
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741940933; cv=none; b=dzXGYAwxoKJbLWXy2ai5bWtPjm+mRtt5OuSLvn9Yf4BWEyJ2zHsFziGFTxAU6pKCT3MaGZjmsUMGGQ692+0Cg3q1p3tHX9H6UQJdYhmlakDL4D5lx2CIyfAWZZEljQ7v7tNmwvqhPzszFBoc+i9Fs11H5Gb4hWqLE0c1iFZxFrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741940933; c=relaxed/simple;
	bh=/GK6YaXtExvy/eQBO9qlqSFnCbHsXIRbaqcz6aTvle0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ioUnAqRQhf4NsyDYZpzrgnNZCdNqrvn6+giKRSnJee7gEpTghL1Me8MgDC41rV1ROt1XoMerJk0O5O7tgtJ2sx4UJFiXyrzFioJnTdH+kd9IOgCvVOfsPPXfdAkBIFw1QwgXC0JQJO+IoYv1r4VhOJrq0Y9xTfA9nwg4/Up0zSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Oc8ZU/Qn; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-85b40c7d608so172109739f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741940930; x=1742545730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jYQ8WklltJ5CnB1F6nWEydwmD/n5vdx4jj1xbKUOGOw=;
        b=Oc8ZU/QnGJ9IYTfXircPV8UhoRx+dpDbiZij0XUreTc0hTc2VgvwlL1hSM6KRJO7gZ
         7zLM/2BWFe5Qv3O3wHt2ck5FQCofcAizHzWoP9Gpd1oAPsK2HlxXOwqU1uPkshpPCzjS
         pKNwD6mciYTE02v29YnePvscOmSQ5W+qknyWnCW+v263BmUznA5ty76O4s8ecqJaJ+e7
         JJev/vbqw6yVmQsxWafiZeLZheyizc2/bbsW8nSeNI+hQSGXnmvPcV0S0Q0ji/CbwhQc
         7H5aoD96FvHnfZN1uBdlyGCupFxRrmXMoZ+OHOmfCK+ozd4llVf23IXTiZXrjyasRPVB
         rzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741940930; x=1742545730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jYQ8WklltJ5CnB1F6nWEydwmD/n5vdx4jj1xbKUOGOw=;
        b=Ny4xChZ0Crkbyzv3aryoM6o5wcXsu8/0q3/stu1VJnQFyjs6zUZSkrPlRXQLH0Bqpr
         FtJHO9ro0PUKQB+gh2U2jBnjCLZXSEsQCe/9Nk2uhcrjDsvHXas+6TrYiC3gLaR5p0vF
         DX+wxhHNiYpNdrxUJ9c3f+asINyJoT5bmt/i+/9R8rmxZN/UwwIY1DJS2BBc4kafj3OD
         +gVJQwnHRiRCg26J7wJ6G7GX2O4KSMIuMmoCVfqhnQdv79UfTVlEQIyzzXWrwHyjlI0f
         eQSwndXXfp06KePWQs54HXERbnoE2lyqsLA2L1mYWQPOHZREBnOvX0lD70iG+YdLbVgm
         Lk6g==
X-Forwarded-Encrypted: i=1; AJvYcCUBg/v0y2I8ejN5YGbR404A25COErFZCo+TSRoW/u78Xn+BGcvXUANRDapHG3Uo1IGHOGMTIUvBhJtn@vger.kernel.org
X-Gm-Message-State: AOJu0YyWFB80DxsbhMKfP0mhWAFpLwMYp5p9RXJdry95JaqzeH5/Sg8V
	L3aDihf25wtfLmieLmvw2U5czjnmVQNOk+k/xz9Wcdz0/vf6W0KPgeYcZ0wFLvZBKIouquyhxA2
	ZD33W9VUzn8ZZTWCe9fNexHfWZF4Eo64nf8iEyw==
X-Gm-Gg: ASbGncv3D3B+30AlZ/dWe12+GNaZ840ZQmvZN31oOwanWhS0Fr+hbcpyO5UOZoGLx0d
	/pu3AhkaZ4ugCLQaE+4V4Ai+y3p2IUerOZk3NKO7C1pKTX/1blqaJHJwhTHvcp+Hp+8UFWCEufe
	VBmOCRc6m9k5sCjKFuCzi/bZjYoBRC2l0ZwK4r0A==
X-Google-Smtp-Source: AGHT+IG+6oGPXZWI7buI+qLSPhZnhJwwr7Hbk+z7bXsShxCE3wUQfaPagpNJnFiXw0YRZXX1FtMy1so34umJojVa7Qo=
X-Received: by 2002:a05:6e02:370b:b0:3d3:fa8d:be6e with SMTP id
 e9e14a558f8ab-3d483a63d6amr12103875ab.14.1741940930607; Fri, 14 Mar 2025
 01:28:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com> <20250310-v5_user_cfi_series-v11-6-86b36cbfb910@rivosinc.com>
In-Reply-To: <20250310-v5_user_cfi_series-v11-6-86b36cbfb910@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 14 Mar 2025 16:28:39 +0800
X-Gm-Features: AQ5f1Jo6BmeaPVN-BpPNuNRR3aEeI1qJOuvP_eZRv9-j2_Jz5UNXStZ6Qvn-cko
Message-ID: <CANXhq0pE+o4C_mn-Ofkf8uqEUJ+9SCpv5+z8zaSVQi0nW3558Q@mail.gmail.com>
Subject: Re: [PATCH v11 06/27] riscv/mm : ensure PROT_WRITE leads to VM_READ | VM_WRITE
To: Deepak Gupta <debug@rivosinc.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Christian Brauner <brauner@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, Jann Horn <jannh@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, alistair.francis@wdc.com, 
	richard.henderson@linaro.org, jim.shu@sifive.com, andybnac@gmail.com, 
	kito.cheng@sifive.com, charlie@rivosinc.com, atishp@rivosinc.com, 
	evan@rivosinc.com, cleger@rivosinc.com, alexghiti@rivosinc.com, 
	samitolvanen@google.com, broonie@kernel.org, rick.p.edgecombe@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 10, 2025 at 11:42=E2=80=AFPM Deepak Gupta <debug@rivosinc.com> =
wrote:
>
> `arch_calc_vm_prot_bits` is implemented on risc-v to return VM_READ |
> VM_WRITE if PROT_WRITE is specified. Similarly `riscv_sys_mmap` is
> updated to convert all incoming PROT_WRITE to (PROT_WRITE | PROT_READ).
> This is to make sure that any existing apps using PROT_WRITE still work.
>
> Earlier `protection_map[VM_WRITE]` used to pick read-write PTE encodings.
> Now `protection_map[VM_WRITE]` will always pick PAGE_SHADOWSTACK PTE
> encodings for shadow stack. Above changes ensure that existing apps
> continue to work because underneath kernel will be picking
> `protection_map[VM_WRITE|VM_READ]` PTE encodings.
>
> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> ---
>  arch/riscv/include/asm/mman.h    | 25 +++++++++++++++++++++++++
>  arch/riscv/include/asm/pgtable.h |  1 +
>  arch/riscv/kernel/sys_riscv.c    | 10 ++++++++++
>  arch/riscv/mm/init.c             |  2 +-
>  4 files changed, 37 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/mman.h b/arch/riscv/include/asm/mman.=
h
> new file mode 100644
> index 000000000000..392c9c2d2e78
> --- /dev/null
> +++ b/arch/riscv/include/asm/mman.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_MMAN_H__
> +#define __ASM_MMAN_H__
> +
> +#include <linux/compiler.h>
> +#include <linux/types.h>
> +#include <uapi/asm/mman.h>
> +
> +static inline unsigned long arch_calc_vm_prot_bits(unsigned long prot,
> +                                                  unsigned long pkey __a=
lways_unused)
> +{
> +       unsigned long ret =3D 0;
> +
> +       /*
> +        * If PROT_WRITE was specified, force it to VM_READ | VM_WRITE.
> +        * Only VM_WRITE means shadow stack.
> +        */
> +       if (prot & PROT_WRITE)
> +               ret =3D (VM_READ | VM_WRITE);
> +       return ret;
> +}
> +
> +#define arch_calc_vm_prot_bits(prot, pkey) arch_calc_vm_prot_bits(prot, =
pkey)
> +
> +#endif /* ! __ASM_MMAN_H__ */
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pg=
table.h
> index 050fdc49b5ad..8c528cd7347a 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -178,6 +178,7 @@ extern struct pt_alloc_ops pt_ops __meminitdata;
>  #define PAGE_READ_EXEC         __pgprot(_PAGE_BASE | _PAGE_READ | _PAGE_=
EXEC)
>  #define PAGE_WRITE_EXEC                __pgprot(_PAGE_BASE | _PAGE_READ =
|      \
>                                          _PAGE_EXEC | _PAGE_WRITE)
> +#define PAGE_SHADOWSTACK       __pgprot(_PAGE_BASE | _PAGE_WRITE)
>
>  #define PAGE_COPY              PAGE_READ
>  #define PAGE_COPY_EXEC         PAGE_READ_EXEC
> diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.=
c
> index d77afe05578f..43a448bf254b 100644
> --- a/arch/riscv/kernel/sys_riscv.c
> +++ b/arch/riscv/kernel/sys_riscv.c
> @@ -7,6 +7,7 @@
>
>  #include <linux/syscalls.h>
>  #include <asm/cacheflush.h>
> +#include <asm-generic/mman-common.h>
>
>  static long riscv_sys_mmap(unsigned long addr, unsigned long len,
>                            unsigned long prot, unsigned long flags,
> @@ -16,6 +17,15 @@ static long riscv_sys_mmap(unsigned long addr, unsigne=
d long len,
>         if (unlikely(offset & (~PAGE_MASK >> page_shift_offset)))
>                 return -EINVAL;
>
> +       /*
> +        * If PROT_WRITE is specified then extend that to PROT_READ
> +        * protection_map[VM_WRITE] is now going to select shadow stack e=
ncodings.
> +        * So specifying PROT_WRITE actually should select protection_map=
 [VM_WRITE | VM_READ]
> +        * If user wants to create shadow stack then they should use `map=
_shadow_stack` syscall.
> +        */
> +       if (unlikely((prot & PROT_WRITE) && !(prot & PROT_READ)))
> +               prot |=3D PROT_READ;
> +
>         return ksys_mmap_pgoff(addr, len, prot, flags, fd,
>                                offset >> (PAGE_SHIFT - page_shift_offset)=
);
>  }
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 15b2eda4c364..9d6661638d0b 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -342,7 +342,7 @@ pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned=
(PAGE_SIZE);
>  static const pgprot_t protection_map[16] =3D {
>         [VM_NONE]                                       =3D PAGE_NONE,
>         [VM_READ]                                       =3D PAGE_READ,
> -       [VM_WRITE]                                      =3D PAGE_COPY,
> +       [VM_WRITE]                                      =3D PAGE_SHADOWST=
ACK,
>         [VM_WRITE | VM_READ]                            =3D PAGE_COPY,
>         [VM_EXEC]                                       =3D PAGE_EXEC,
>         [VM_EXEC | VM_READ]                             =3D PAGE_READ_EXE=
C,
>

LGTM.

Reviewed-by: Zong Li <zong.li@sifive.com>

> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

