Return-Path: <devicetree+bounces-157465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A208AA60BA3
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB9463BF3DE
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054111A5BBF;
	Fri, 14 Mar 2025 08:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="XuruNDhg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A03018A924
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741941115; cv=none; b=ffpBiP+FRQii40q/wkYxApYVUiY4pnByciKA5GBp3O44spo5bXqDLk30MBe+6jBaJoBcfLI731PET1c6U3m1KiEOIA+UXwZ0tqduToQg9LxlGMyRQDYw+5cFmPXiBAhLR0V6QizlmMdiv6V/nNSIHCr8BLrEM2X9NtJb+SDpLCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741941115; c=relaxed/simple;
	bh=XZMABUR4Y+HuilIvtRMdIBmboOS3JgMgTlh3Fx0OYEA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hEm54hZHVaaP3ttzH9jKQezpe7wSV9iwxFk/VJcr0T6SeBKfb+QUikxSwatajn2c8S3XOHBrPsvLFzSYhSWJy1y7OMc5ST3I3i9sxs/PRpfc0BAr9HzmZ4q2sVNkzyZr6SvqLFrXiNT7xczC3FkYQ+Z96vQU6KbrSbrVUalyhH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=XuruNDhg; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-85b43b60b6bso67159139f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741941113; x=1742545913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wumHTb0kka5JjaRZHTcNujfy6a7p/Uo/SNTAmw90Qd8=;
        b=XuruNDhg4ZwPbhFXkFevnd9rUWAqj7wash+owM4KffWGWCa+i6mowcw1iHdAkFd8xi
         cE+L60CRjcmHwOoG8avnMdDFupDcBlwbcxxkMvj14nqwAHuSKKYIJJkRZr3tcMnvfycE
         0mBYEVA8KzVNMU1PogCGwxRn7y3oP3qd1dW/gdJNzoFafQEPucRBW4vE6slYzpQ/qpNo
         1RzkPMwRJL9DZJbCK3gBt+6PkRrOMxUpxN9tLQRZOxNMGo0xTNy3LbLMgXEvCYxoysar
         7NGjvP2tcDGLrdk53lGlHciNlDLig76+iRUwP4COCr1UbFTLuZf1DGXStwYY/m+9nfOR
         EkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741941113; x=1742545913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wumHTb0kka5JjaRZHTcNujfy6a7p/Uo/SNTAmw90Qd8=;
        b=winMsPId+coeH4AH+E1YRB6xfmPfxXAhXlHrG+o7IcoDWu6athxMj6xl4eZlb65qG7
         HetIQxLQBvEeC+DCxySCc7Bme+6YSYH7lFEnJfTksO9Vr2G9w7DmaXCfdZhF6+U4HNUb
         mSQcWW7KK8Rh9i0Ttc60OQ5kO63iabW+OZl8bIo7jevUcwo8f0ZWbUj9SQw73W2f5cL1
         eldMN/j04j9K7H2shcZ2tJBDvgPo/ZMxACRha1qUXIEEGUU5qqrhIWituuyPwTooX2yv
         a0TGG75Y977DhQw1xea8dH+RUoKkFmLki4wI25Hldsrx1RLUU3YOej8KIw4Kl6an7/cW
         /ctQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvOHfkjku3P5bKcpgdUbNak1SlcbKqeFJHQazq3RxxJFrglEZIr86mMtQfc4+xYlLDLyhx61EtWtiy@vger.kernel.org
X-Gm-Message-State: AOJu0YwGrsUW/1eXHicnEtYlyuAfnY0DT1rOsqkGzjYXjsWwJM4mhIPn
	xESXcywaTnK3/d+DgALMDr4S16BAUj3bDbArey0h91llSID1Z6oWfgR4PZ63Jm9NBHErs2fk+20
	Mw/IBisBx8VBEhxceML957JA6FNVF5fD3CQE68Q==
X-Gm-Gg: ASbGncu+0HSaBaxVfblsJ2e6xz9YuExVjBzyq3HELu0fLwmtFD86btPGMeNjRKcb4+F
	OknV7NbG5KXiQwZf6X1VYXE9pXFDEyo4uE8bU1bM/oIIbR+qCFcphFJQvZw9bY9m7E4kpUc7+kU
	vWHWaDiX39EsBPHTI/EMJfAp+l66g=
X-Google-Smtp-Source: AGHT+IF3wiq44CuMfBnA+HLDTnOn67gvme9KT+6oA+bhbghqwQ9Ypxqh8gJUB2Og+bw/774omJHZRixeIKKImxlIRS8=
X-Received: by 2002:a05:6602:610c:b0:85b:4ad0:c8cd with SMTP id
 ca18e2360f4ac-85db81eb853mr553667539f.0.1741941113257; Fri, 14 Mar 2025
 01:31:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com> <20250310-v5_user_cfi_series-v11-14-86b36cbfb910@rivosinc.com>
In-Reply-To: <20250310-v5_user_cfi_series-v11-14-86b36cbfb910@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 14 Mar 2025 16:31:42 +0800
X-Gm-Features: AQ5f1Jph57H6Q0PgCRIxwT8-PlynROINsKKGDQZtxTGL5mjRpR_T5UPaHa560LA
Message-ID: <CANXhq0r5bgO5CkwwRbN24x66juXGi=5PMi5XkZiv-0mQJRR_Hw@mail.gmail.com>
Subject: Re: [PATCH v11 14/27] riscv/traps: Introduce software check exception
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
> zicfiss / zicfilp introduces a new exception to priv isa `software check
> exception` with cause code =3D 18. This patch implements software check
> exception.
>
> Additionally it implements a cfi violation handler which checks for code
> in xtval. If xtval=3D2, it means that sw check exception happened because=
 of
> an indirect branch not landing on 4 byte aligned PC or not landing on
> `lpad` instruction or label value embedded in `lpad` not matching label
> value setup in `x7`. If xtval=3D3, it means that sw check exception happe=
ned
> because of mismatch between link register (x1 or x5) and top of shadow
> stack (on execution of `sspopchk`).
>
> In case of cfi violation, SIGSEGV is raised with code=3DSEGV_CPERR.
> SEGV_CPERR was introduced by x86 shadow stack patches.
>
> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> ---
>  arch/riscv/include/asm/asm-prototypes.h |  1 +
>  arch/riscv/include/asm/entry-common.h   |  2 ++
>  arch/riscv/kernel/entry.S               |  3 +++
>  arch/riscv/kernel/traps.c               | 43 +++++++++++++++++++++++++++=
++++++
>  4 files changed, 49 insertions(+)
>
> diff --git a/arch/riscv/include/asm/asm-prototypes.h b/arch/riscv/include=
/asm/asm-prototypes.h
> index cd627ec289f1..5a27cefd7805 100644
> --- a/arch/riscv/include/asm/asm-prototypes.h
> +++ b/arch/riscv/include/asm/asm-prototypes.h
> @@ -51,6 +51,7 @@ DECLARE_DO_ERROR_INFO(do_trap_ecall_u);
>  DECLARE_DO_ERROR_INFO(do_trap_ecall_s);
>  DECLARE_DO_ERROR_INFO(do_trap_ecall_m);
>  DECLARE_DO_ERROR_INFO(do_trap_break);
> +DECLARE_DO_ERROR_INFO(do_trap_software_check);
>
>  asmlinkage void handle_bad_stack(struct pt_regs *regs);
>  asmlinkage void do_page_fault(struct pt_regs *regs);
> diff --git a/arch/riscv/include/asm/entry-common.h b/arch/riscv/include/a=
sm/entry-common.h
> index b28ccc6cdeea..34ed149af5d1 100644
> --- a/arch/riscv/include/asm/entry-common.h
> +++ b/arch/riscv/include/asm/entry-common.h
> @@ -40,4 +40,6 @@ static inline int handle_misaligned_store(struct pt_reg=
s *regs)
>  }
>  #endif
>
> +bool handle_user_cfi_violation(struct pt_regs *regs);
> +
>  #endif /* _ASM_RISCV_ENTRY_COMMON_H */
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 00494b54ff4a..9c00cac3f6f2 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -472,6 +472,9 @@ SYM_DATA_START_LOCAL(excp_vect_table)
>         RISCV_PTR do_page_fault   /* load page fault */
>         RISCV_PTR do_trap_unknown
>         RISCV_PTR do_page_fault   /* store page fault */
> +       RISCV_PTR do_trap_unknown /* cause=3D16 */
> +       RISCV_PTR do_trap_unknown /* cause=3D17 */
> +       RISCV_PTR do_trap_software_check /* cause=3D18 is sw check except=
ion */
>  SYM_DATA_END_LABEL(excp_vect_table, SYM_L_LOCAL, excp_vect_table_end)
>
>  #ifndef CONFIG_MMU
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 8ff8e8b36524..3f7709f4595a 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -354,6 +354,49 @@ void do_trap_ecall_u(struct pt_regs *regs)
>
>  }
>
> +#define CFI_TVAL_FCFI_CODE     2
> +#define CFI_TVAL_BCFI_CODE     3
> +/* handle cfi violations */
> +bool handle_user_cfi_violation(struct pt_regs *regs)
> +{
> +       bool ret =3D false;
> +       unsigned long tval =3D csr_read(CSR_TVAL);
> +
> +       if ((tval =3D=3D CFI_TVAL_FCFI_CODE && cpu_supports_indirect_br_l=
p_instr()) ||
> +           (tval =3D=3D CFI_TVAL_BCFI_CODE && cpu_supports_shadow_stack(=
))) {
> +               do_trap_error(regs, SIGSEGV, SEGV_CPERR, regs->epc,
> +                             "Oops - control flow violation");
> +               ret =3D true;
> +       }
> +
> +       return ret;
> +}
> +
> +/*
> + * software check exception is defined with risc-v cfi spec. Software ch=
eck
> + * exception is raised when:-
> + * a) An indirect branch doesn't land on 4 byte aligned PC or `lpad`
> + *    instruction or `label` value programmed in `lpad` instr doesn't
> + *    match with value setup in `x7`. reported code in `xtval` is 2.
> + * b) `sspopchk` instruction finds a mismatch between top of shadow stac=
k (ssp)
> + *    and x1/x5. reported code in `xtval` is 3.
> + */
> +asmlinkage __visible __trap_section void do_trap_software_check(struct p=
t_regs *regs)
> +{
> +       if (user_mode(regs)) {
> +               irqentry_enter_from_user_mode(regs);
> +
> +               /* not a cfi violation, then merge into flow of unknown t=
rap handler */
> +               if (!handle_user_cfi_violation(regs))
> +                       do_trap_unknown(regs);
> +
> +               irqentry_exit_to_user_mode(regs);
> +       } else {
> +               /* sw check exception coming from kernel is a bug in kern=
el */
> +               die(regs, "Kernel BUG");
> +       }
> +}
> +
>  #ifdef CONFIG_MMU
>  asmlinkage __visible noinstr void do_page_fault(struct pt_regs *regs)
>  {
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

