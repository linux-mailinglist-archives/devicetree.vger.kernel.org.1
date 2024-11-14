Return-Path: <devicetree+bounces-121746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1913E9C82FB
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 07:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D6751F2311F
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 06:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5811E884A;
	Thu, 14 Nov 2024 06:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="GcWv0q7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35AA14EC59
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 06:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731565063; cv=none; b=i5tXwhBYhCiXef7HadAC9LuBQaZHbb5nJqfqe9d1KP41Xa0iSSpfMooMkfTIOP/zm+oC2rRj2h0W+AiiQUP9udLt6v9uyepNDFFMFlpgw+pOFUoF3eDRr9T8sNhXJnKianICQK4EqQTY8aiz+/ThknIDhhAqDoEyt0TkJRHmOtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731565063; c=relaxed/simple;
	bh=yT3HAwpbW2e+ksrn/pbgGpcjS/F2Jj86TpPZr9FE/9c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SsCibfbBETftOzETmK/9ApiWaFjWCdSH8Zn/9DXnqZhZfO4GMM3YWz47yYzCVwTPS2YEpMmlfIxeN4vQ07O5QBUnKLkvLPDv51s5HeCmfybFv5olh6IYp/aXq2dD1/fewhs3m4YgZSmRtqs6KEA0XSObjIl2o/Ge0GlsfGr8ELU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=GcWv0q7f; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-29609ec9437so244783fac.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 22:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1731565061; x=1732169861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bAHw3+SJRl1ztp43mDkxoKRsjkMTu01styDys5QSXWg=;
        b=GcWv0q7fSQWejIRetXLUp9FNAz28caqKR35ZgqtPgw/26vLkEqoj+QPNKxefs3Cbk4
         BGXOUJUUid7MZssMuFL5AscHBvR3rbZKiPb3utTXza4/PGjjTsKDd3bEsGLknCkmI1Eb
         +7rvTwtxP4olZ1PTNVeBOVxOG20R9BLwXiwk7THY/Rj1yAnyFb7BzMmHlUK1pPlPPW6j
         6y4nKFD/tJNt61bTfur4Th3CGiLkoe25vfXy8CqKL81tDYaPIEPCPFGbhSEwCS6Yw9vp
         uEdzu+ZmnRE9rYPzdU3jPvkQUmmPdEK01KhA+obgttiPdMARZq1BfgEWZb3P70IEa7vd
         4z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731565061; x=1732169861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bAHw3+SJRl1ztp43mDkxoKRsjkMTu01styDys5QSXWg=;
        b=IwGQR7vls8hLDhtVnE+bTXczrcMSGNEmJT0RYV6xIkHLRggHpyCau+FuEcf3iivpz2
         GkftKmJib/4pzFtow7XXTyrJunWSWXx4rdSteFS72jrFJoUGrP1WdUIF7SEiTTW96+Fd
         MWsOZJBmSRYo1D7htUwUc+/mEX6XfTNxlPBplIHhCs5inQ60iaRI8cq+msuFy6Bt6SgN
         bxpaToc0KYLPHh7dB2K/GriDZui6UNAWKqd62W3ittFhkv0M96zQOgkdYQEkk4Xv/Yd3
         4wHeRMtnILbon5dbetBBKhDCec8Sq8ey/wGY3f3ZoBTB0Ql/Ao7bvv8YhOZFGdKnyj37
         Qibg==
X-Forwarded-Encrypted: i=1; AJvYcCUhIQ/Auc2NAcXvscLwR6A95RcXYPxl3C6fH4L9vQ8NI+d23OZ5VnaqmWfLrdGUNJdy2liPaaRSs0lK@vger.kernel.org
X-Gm-Message-State: AOJu0YwJZF08XzTKrq3S7M2FeoaIo0u7BlOlsEeo3aJuVvk9SWM1gxcY
	JSxGvkXWZ3yEAiHoghLeYPXD+rgsJbNYsPbPpMDEUQO9Iym+PMna8NkFMpFXDVs30SQwntAG9AU
	bQABQMovXAdvdNS8hCLP11OVgWm6TLhQBBmTrtg==
X-Google-Smtp-Source: AGHT+IF/SorbAbjXbn/nrCDj1xlGQZyh9Tb/1BFx5yZDCatQmC6DlRJonI//aGPXQYjj5gUcvfUUQConp4xKP57Wh80=
X-Received: by 2002:a05:6871:8a5:b0:296:14ae:8b7d with SMTP id
 586e51a60fabf-29614aed449mr409087fac.10.1731565060984; Wed, 13 Nov 2024
 22:17:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111-v5_user_cfi_series-v8-0-dce14aa30207@rivosinc.com>
 <20241111-v5_user_cfi_series-v8-24-dce14aa30207@rivosinc.com>
 <CAKddAkCCVjNHUinPWtOiK8Ki_ZkdoUCawfv1-+0B69J_1aJv5Q@mail.gmail.com>
 <ZzVNKvCu4MOs7O5z@debug.ba.rivosinc.com> <CAKddAkDbGYeONaksq6fzLzx47BHZo3Ar7Sog3MOgf7Y+Birovw@mail.gmail.com>
 <ZzVRbCZP9N4Os8Bj@debug.ba.rivosinc.com>
In-Reply-To: <ZzVRbCZP9N4Os8Bj@debug.ba.rivosinc.com>
From: Nick Hu <nick.hu@sifive.com>
Date: Thu, 14 Nov 2024 14:17:30 +0800
Message-ID: <CAKddAkBCByf570PXfz798FtBbeGQWe2LJpdzxkE+jv3Zd3ZV1w@mail.gmail.com>
Subject: Re: [PATCH v8 24/29] riscv: enable kernel access to shadow stack
 memory via FWFT sbi call
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
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-kernel@vger.kernel.org, 
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

Hi Deepak

On Thu, Nov 14, 2024 at 9:25=E2=80=AFAM Deepak Gupta <debug@rivosinc.com> w=
rote:
>
> On Thu, Nov 14, 2024 at 09:20:14AM +0800, Nick Hu wrote:
> >Hi Deepak
> >
> >On Thu, Nov 14, 2024 at 9:06=E2=80=AFAM Deepak Gupta <debug@rivosinc.com=
> wrote:
> >>
> >> On Thu, Nov 14, 2024 at 12:13:38AM +0800, Nick Hu wrote:
> >> >Hi Deepak
> >> >
> >> >On Tue, Nov 12, 2024 at 5:08=E2=80=AFAM Deepak Gupta <debug@rivosinc.=
com> wrote:
> >> >>
> >> >> Kernel will have to perform shadow stack operations on user shadow =
stack.
> >> >> Like during signal delivery and sigreturn, shadow stack token must =
be
> >> >> created and validated respectively. Thus shadow stack access for ke=
rnel
> >> >> must be enabled.
> >> >>
> >> >> In future when kernel shadow stacks are enabled for linux kernel, i=
t must
> >> >> be enabled as early as possible for better coverage and prevent imb=
alance
> >> >> between regular stack and shadow stack. After `relocate_enable_mmu`=
 has
> >> >> been done, this is as early as possible it can enabled.
> >> >>
> >> >> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> >> >> ---
> >> >>  arch/riscv/kernel/asm-offsets.c |  4 ++++
> >> >>  arch/riscv/kernel/head.S        | 12 ++++++++++++
> >> >>  2 files changed, 16 insertions(+)
> >> >>
> >> >> diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/as=
m-offsets.c
> >> >> index 766bd33f10cb..a22ab8a41672 100644
> >> >> --- a/arch/riscv/kernel/asm-offsets.c
> >> >> +++ b/arch/riscv/kernel/asm-offsets.c
> >> >> @@ -517,4 +517,8 @@ void asm_offsets(void)
> >> >>         DEFINE(FREGS_A6,            offsetof(struct ftrace_regs, a6=
));
> >> >>         DEFINE(FREGS_A7,            offsetof(struct ftrace_regs, a7=
));
> >> >>  #endif
> >> >> +       DEFINE(SBI_EXT_FWFT, SBI_EXT_FWFT);
> >> >> +       DEFINE(SBI_EXT_FWFT_SET, SBI_EXT_FWFT_SET);
> >> >> +       DEFINE(SBI_FWFT_SHADOW_STACK, SBI_FWFT_SHADOW_STACK);
> >> >> +       DEFINE(SBI_FWFT_SET_FLAG_LOCK, SBI_FWFT_SET_FLAG_LOCK);
> >> >>  }
> >> >> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> >> >> index 356d5397b2a2..6244408ca917 100644
> >> >> --- a/arch/riscv/kernel/head.S
> >> >> +++ b/arch/riscv/kernel/head.S
> >> >> @@ -164,6 +164,12 @@ secondary_start_sbi:
> >> >>         call relocate_enable_mmu
> >> >>  #endif
> >> >>         call .Lsetup_trap_vector
> >> >> +       li a7, SBI_EXT_FWFT
> >> >> +       li a6, SBI_EXT_FWFT_SET
> >> >> +       li a0, SBI_FWFT_SHADOW_STACK
> >> >> +       li a1, 1 /* enable supervisor to access shadow stack access=
 */
> >> >> +       li a2, SBI_FWFT_SET_FLAG_LOCK
> >> >> +       ecall
> >> >>         scs_load_current
> >> >>         call smp_callin
> >> >>  #endif /* CONFIG_SMP */
> >> >> @@ -320,6 +326,12 @@ SYM_CODE_START(_start_kernel)
> >> >>         la tp, init_task
> >> >>         la sp, init_thread_union + THREAD_SIZE
> >> >>         addi sp, sp, -PT_SIZE_ON_STACK
> >> >> +       li a7, SBI_EXT_FWFT
> >> >> +       li a6, SBI_EXT_FWFT_SET
> >> >> +       li a0, SBI_FWFT_SHADOW_STACK
> >> >> +       li a1, 1 /* enable supervisor to access shadow stack access=
 */
> >> >> +       li a2, SBI_FWFT_SET_FLAG_LOCK
> >> >> +       ecall
> >> >>         scs_load_current
> >> >>
> >> >>  #ifdef CONFIG_KASAN
> >> >>
> >> >> --
> >> >> 2.45.0
> >> >>
> >> >Should we clear the SBI_FWFT_SET_FLAG_LOCK before the cpu hotplug
> >> >otherwise the menvcfg.sse won't be set by the fwft set sbi call when
> >> >the hotplug cpu back to kernel?
> >>
> >> Hmm...
> >>
> >> An incoming hotplug CPU has no features setup on it.
> >> I see that `sbi_cpu_start` will supply `secondary_start_sbi` as start
> >> up code for incoming CPU. `secondary_start_sbi` is in head.S which con=
verges
> >> in `.Lsecondary_start_common`. And thus hotplugged CPU should be
> >> issuing shadow stack set FWFT sbi as well.
> >>
> >> Am I missing something ?
> >>
> >This is the correct flow. However the opensbi will deny it due to the
> >SBI_FWFT_SET_FLAG_LOCK already being set.
> >So the menvcfg.sse will not set by this flow.
> >
> >if (conf->flags & SBI_FWFT_SET_FLAG_LOCK)
> >                return SBI_EDENIED;
> >
>
> hmm... Why?
>
> `conf` is pointing to per-hart state in firmware.
>
> On this incoming cpu, opensbi (or equivalent) firmware must have
> ensured that this per-hart state doesn't have lock set.
>
> Am I missing something?
>
Current OpenSBI doesn't clear the lock in the warm init of the hotplug path=
.
It seems like we need a patch to address it.

Regards,
Nick
> >Regards,
> >Nick
> >> >
> >> >Regards,
> >> >Nick
> >> >>
> >> >> _______________________________________________
> >> >> linux-riscv mailing list
> >> >> linux-riscv@lists.infradead.org
> >> >> http://lists.infradead.org/mailman/listinfo/linux-riscv

