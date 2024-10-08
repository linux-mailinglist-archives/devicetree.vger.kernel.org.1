Return-Path: <devicetree+bounces-108791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 313C0993E3E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 07:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 550101C22C4E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 05:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD94D13959D;
	Tue,  8 Oct 2024 05:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="lx6Wwt6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C3B2A8D0
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 05:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728364591; cv=none; b=d5opfIGhegkj+4jYD2I+rCh368o19FNKZM+OTu+3A6yFXM3z0XTRVmHa4peL7Fuf2II2raXCmKqwx2i+OxztbSQVp1p7Q2ssw1m5qpQsJ0pC7KDtRpCNeItwgdkm3SzJkvqya56jnZtK40tlaOhu4hyxRXq1FzVjH+06xccQLJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728364591; c=relaxed/simple;
	bh=J+sL/JH0w5uxfdfZLeo2CgWwLFTpOCgCJ9fT9v9s7sA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Egk16o/kFiAHIdLMnRxwf0dXVC35vzLRpzCr3qsSYHINSmZZc44n6QUP64isZtEYkOmQJm3lon7B4BROUxKb6MxNlZVfsI2huqn/BHjeoFWagENc6Tzui6sHDztS+wRD38GzJSfHC9hlLfU52FTVjeloVlmNo5vH1m3G02TvG0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=lx6Wwt6p; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-82ce603d8b5so241666639f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 22:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1728364589; x=1728969389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w4w/TdKOPPfwgKMj85c6/te+TDmMrhbBdxi4k1LLIvc=;
        b=lx6Wwt6pfemKtg/RtsUkh6zDXx+AMz2u0XC29jh3q6XGNRXDJyCEhkRdOgYFcDPU61
         dn5uW6y9KwHovP3mgvRj5hzQFEeGkq5yruXm/xei0zfQDP4mdl50KJRLL0Bm5FvNYvtS
         9XLj30EwxrVfPGWLG1GU6+Hg5eu3rXJX7VFRHw8A5+8iMWithntSRSsM8op0l5wdQw8H
         K43UnN/dnkjJxgJgdutFmFW6zcsc9OplF9dUy/TKgk/d5/je/a2QFJKGDfF/hf/7aXL2
         dSBX913GuMhdeFvJ3um/fUKbVwq3sVok8iu2Go4mTHtEj9rTWXSpuJE0ViHCjC8nT23q
         HHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728364589; x=1728969389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4w/TdKOPPfwgKMj85c6/te+TDmMrhbBdxi4k1LLIvc=;
        b=HMPYPa/vAVKvQTdX6FAJa9OmZXrZ60AkPHBZM3b3P31a8H7H5dG7tfNLdcIU0meyP7
         TSdYr6iwJ/zzDmrUtDjob+j2C0f7nh7OEdj0+irGmIZrqY9d7vBq/zM/5S2813mz4xUx
         9K0pBb4Dd9L2xNMvXJ+E4Bo0QG3bE0kk5Rn2LUxdW0evwbD5wTKtYeQZMTj1F1tNcImG
         So8ypjaU5DK/JQx4Mq6ppka0ot5GI6k7PeHq0gIHpJ0vrLKAaTURclTenQV/izROPl45
         cFw59R1tH1zQ/MUmG5nfuV1xd6lJVi+W+g0KiMx1uQmprPhPB+qIDnsGwQaumWpzm421
         36NA==
X-Forwarded-Encrypted: i=1; AJvYcCU2XX5YSTSOABDlpxlqD8xGu8J0B4ne4jUda3zK/gDIRgAI8f0h14PT4lNZCWs+TWjKfSqsIB9uAG84@vger.kernel.org
X-Gm-Message-State: AOJu0YyhKbq/o5VALXaMKyxYCPFJ7xePKajtYKQe5v7RzyCX7parRAx8
	jyNO5y1cQdeaqMLr+u02TpOvxo/LwlP9jxzSj+OtPApQrffBwM/McBdPRjIJ58ih2FJNwirCwPN
	/WIjlRwt8GM5PeAW6gRuLrzkWPbgFU07nEC0JNQ==
X-Google-Smtp-Source: AGHT+IHj+3nyjDRUlzo6HU3+Ye4UA98AMbnjv3+zlmAvnKbqvLOrOys0YnN7vCUlZP6Nh+cnnTYFiH4anmDFOKj+zMw=
X-Received: by 2002:a05:6602:14c1:b0:82a:2143:8 with SMTP id
 ca18e2360f4ac-834f7d65974mr1658309439f.10.1728364589159; Mon, 07 Oct 2024
 22:16:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
 <20241001-v5_user_cfi_series-v1-16-3ba65b6e550f@rivosinc.com>
 <CANXhq0rpwQkZ9+mZLGVUq=r4WiA8BbZ-eeTDogf3fzeEPqeeqA@mail.gmail.com> <ZwRvAEwFbrpq3zZq@debug.ba.rivosinc.com>
In-Reply-To: <ZwRvAEwFbrpq3zZq@debug.ba.rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 8 Oct 2024 13:16:17 +0800
Message-ID: <CANXhq0qaokjDC9hb75_dpGuyOd_ex8+q7YNe8pAg7dbTcxuLSg@mail.gmail.com>
Subject: Re: [PATCH 16/33] riscv/shstk: If needed allocate a new shadow stack
 on clone
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

On Tue, Oct 8, 2024 at 7:30=E2=80=AFAM Deepak Gupta <debug@rivosinc.com> wr=
ote:
>
> On Mon, Oct 07, 2024 at 04:17:47PM +0800, Zong Li wrote:
> >On Wed, Oct 2, 2024 at 12:20=E2=80=AFAM Deepak Gupta <debug@rivosinc.com=
> wrote:
> >>
> >> Userspace specifies CLONE_VM to share address space and spawn new thre=
ad.
> >> `clone` allow userspace to specify a new stack for new thread. However
> >> there is no way to specify new shadow stack base address without chang=
ing
> >> API. This patch allocates a new shadow stack whenever CLONE_VM is give=
n.
> >>
> >> In case of CLONE_VFORK, parent is suspended until child finishes and t=
hus
> >> can child use parent shadow stack. In case of !CLONE_VM, COW kicks in
> >> because entire address space is copied from parent to child.
> >>
> >> `clone3` is extensible and can provide mechanisms using which shadow s=
tack
> >> as an input parameter can be provided. This is not settled yet and bei=
ng
> >> extensively discussed on mailing list. Once that's settled, this commi=
t
> >> will adapt to that.
> >>
> >> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> >> ---
> >>  arch/riscv/include/asm/usercfi.h |  25 ++++++++
>
> ... snipped...
>
> >> +
> >> +/*
> >> + * This gets called during clone/clone3/fork. And is needed to alloca=
te a shadow stack for
> >> + * cases where CLONE_VM is specified and thus a different stack is sp=
ecified by user. We
> >> + * thus need a separate shadow stack too. How does separate shadow st=
ack is specified by
> >> + * user is still being debated. Once that's settled, remove this part=
 of the comment.
> >> + * This function simply returns 0 if shadow stack are not supported o=
r if separate shadow
> >> + * stack allocation is not needed (like in case of !CLONE_VM)
> >> + */
> >> +unsigned long shstk_alloc_thread_stack(struct task_struct *tsk,
> >> +                                          const struct kernel_clone_a=
rgs *args)
> >> +{
> >> +       unsigned long addr, size;
> >> +
> >> +       /* If shadow stack is not supported, return 0 */
> >> +       if (!cpu_supports_shadow_stack())
> >> +               return 0;
> >> +
> >> +       /*
> >> +        * If shadow stack is not enabled on the new thread, skip any
> >> +        * switch to a new shadow stack.
> >> +        */
> >> +       if (is_shstk_enabled(tsk))
> >
> >Hi Deepak,
> >Should it be '!' is_shstk_enabled(tsk)?
>
> Yes it is a bug. It seems like fork without CLONE_VM or with CLONE_VFORK,=
 it was returning
> 0 anyways. And in the case of CLONE_VM (used by pthread), it was not doin=
g the right thing.

Hi Deepak,
I'd like to know if I understand correctly. Could I know whether there
might also be a risk when the user program doesn't enable the CFI and
the kernel doesn't activate CFI. Because this flow will still try to
allocate the shadow stack and execute the ssamowap command. Thanks

> Most of the testing has been with busybox build (independent binaries0 dr=
iven via buildroot
> setup. Wondering why it wasn't caught.
>
> Anyways, will fix it. Thanks for catching it.
>
> >
> >> +               return 0;
> >> +
> >> +       /*

