Return-Path: <devicetree+bounces-37621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C76DC845AF1
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8151728C71A
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 15:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6012762140;
	Thu,  1 Feb 2024 15:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="DrjrgQus"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394DD62147
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706800059; cv=none; b=Dysxz4ZLtoHAhTZCEhCyKZOcSsKI1tlXkk9Fpjl4n6rth3SngONpzIIhqA7ubOPufJaV9UgfB4zDhP8GGDWzNHxF4qYayediIGIKBJPmKJR0YSfVWorWHUpCCQ4Q6X64t2TBEJoZUdJZf8KQO6n42MTP3mMPIh/p+I06xjeamGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706800059; c=relaxed/simple;
	bh=HT94Gy/s8mApeD+I37YiRcB6z1V+JAmEA/Xb2VOOoJA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IvEqObyhAouBu9tKdCt5E+mEbkjcfXy5ySam+hEu6olUtEMta7HZPRUH4aJOYTQfuvPCdfU/8I9TIy0dltoRiZL3l3khQq5m8ZLPAbMh0rvmx4sAtexko0AZECp0HCfD9PogHNtKfKdBk0SYjqdQwVY41BI9jSVd79+JKQCuCQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=DrjrgQus; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51124d86022so1675080e87.0
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 07:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706800055; x=1707404855; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RLy6aeMXF8RQMmhWAlLcYtBSh4Y9QyUdmEdSbRti4xA=;
        b=DrjrgQusPv0iOoDPNULRivKkMdIUQA2WVG34IKKngrOK6VzmdptDsMwEhZ5xwXbsnK
         MUDn5PAi/Bi0cgZJXnSG+/i2LR4n3X7eKdTi3r3xgQUK3OV8A0qiq/IUAhzfdTCMKmCO
         DuQrTfuFDYjYKQrA2bS+zaSfrzR7XynT9ritpJ1mcK1d58FSohs5gYVMeJJOihW3rruw
         NkXfGS3wBgo6VtSdB1mmpwHlfJUTAfmiJQsy/9XbNbvALnYjQ7exUCv9SgoKK/3cvI4P
         YyrsfiXNRb3oKpUNL6BTNKj3xqu7dUklT/ZpS8XkhVmcOoRXSUrnMenvpWUwtNh0jd+K
         GQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706800055; x=1707404855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLy6aeMXF8RQMmhWAlLcYtBSh4Y9QyUdmEdSbRti4xA=;
        b=PRy5EmqqVtLfzhznWSX2xU9kVk9jK50XX8RE7CTYJZfa+ThDXADUtZdknVX9w2YwI9
         tsYWinI0VQEmnaRCQCxAbTFZfEoSSDPGm+C+8S5675hODnA6XzomlqT/J1bbbuK0bvh/
         7/Mfj+yX3wIqsxkIkNLOEd4Jt1/HJX+yXEIcrUzEjlyC3OXEabBMbMxuP/4UP21WGxg0
         hzDlGgH+ivPGNQzIqwzbLIDrmr8i6D5i9+ei3RP8S58BF8vGLkXisvQAnWYGwr/qJoYE
         NFdRZ/PuR4zFMgad9ZeCmgqr9CiyNkeUO/KM1KZ+jkpd4PrG48/jBM6N393JmNdpQaAa
         R6Zg==
X-Gm-Message-State: AOJu0YwCcH/cOCdp7Buk+LuA5AXgnbfUtXGAnpeb3EQsB60Msr8ptR1w
	nsmESB21ERsqoTzP3eEYe+jXhHRFuCGgJDvNceXcfsOvYq+/PD1IFzt5fSRz3MFoIvPgCG6XAiS
	w9GrFPWVx/VEau73HyFaGgEb0rUBDpIOzIYMB7g==
X-Google-Smtp-Source: AGHT+IHbJBJ7YxaQlxRHLubYk5mC6hSutRyT7koHpdOpAI01kSdP/Fen2aCh7OgP+TYgCNNz73qnZVSrl+LwoncuI9I=
X-Received: by 2002:a2e:9dc8:0:b0:2cf:495a:1396 with SMTP id
 x8-20020a2e9dc8000000b002cf495a1396mr3525139ljj.17.1706800055030; Thu, 01 Feb
 2024 07:07:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com>
 <87r0hzuw87.fsf@all.your.base.are.belong.to.us> <87le87uulb.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2UYCKUBKggtM606orH2mBu_AbTdB5-R5AP1M0t-LsEbEQ@mail.gmail.com>
 <87cytjvybb.fsf@all.your.base.are.belong.to.us> <87ttmuq3m7.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2UEpbd+pHAMg-AuP-fTPZVho16u69oSjOHhsR11HTwiew@mail.gmail.com> <87fryeognc.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87fryeognc.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 1 Feb 2024 20:37:22 +0530
Message-ID: <CAK9=C2UX0sRb5UbLdm8xwe1dP=x+enJRYzAuCPf6MdHTLTC_Cw@mail.gmail.com>
Subject: Re: [PATCH v12 00/25] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, Atish Patra <atishp@atishpatra.org>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 30, 2024 at 11:19=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kerne=
l.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > On Tue, Jan 30, 2024 at 8:18=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@ke=
rnel.org> wrote:
> >>
> >> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
> >>
> >> > Anup Patel <apatel@ventanamicro.com> writes:
> >> >
> >> >> On Tue, Jan 30, 2024 at 1:22=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjor=
n@kernel.org> wrote:
> >> >>>
> >> >>> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
> >> >>>
> >> >>> > Anup Patel <apatel@ventanamicro.com> writes:
> >> >>> >
> >> >>> >> The RISC-V AIA specification is ratified as-per the RISC-V inte=
rnational
> >> >>> >> process. The latest ratified AIA specifcation can be found at:
> >> >>> >> https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-=
interrupts-1.0.pdf
> >> >>> >>
> >> >>> >> At a high-level, the AIA specification adds three things:
> >> >>> >> 1) AIA CSRs
> >> >>> >>    - Improved local interrupt support
> >> >>> >> 2) Incoming Message Signaled Interrupt Controller (IMSIC)
> >> >>> >>    - Per-HART MSI controller
> >> >>> >>    - Support MSI virtualization
> >> >>> >>    - Support IPI along with virtualization
> >> >>> >> 3) Advanced Platform-Level Interrupt Controller (APLIC)
> >> >>> >>    - Wired interrupt controller
> >> >>> >>    - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI =
generator)
> >> >>> >>    - In Direct-mode, injects external interrupts directly into =
HARTs
> >> >>> >>
> >> >>> >> For an overview of the AIA specification, refer the AIA virtual=
ization
> >> >>> >> talk at KVM Forum 2022:
> >> >>> >> https://static.sched.com/hosted_files/kvmforum2022/a1/AIA_Virtu=
alization_in_KVM_RISCV_final.pdf
> >> >>> >> https://www.youtube.com/watch?v=3Dr071dL8Z0yo
> >> >>> >>
> >> >>> >> To test this series, use QEMU v7.2 (or higher) and OpenSBI v1.2=
 (or higher).
> >> >>> >>
> >> >>> >> These patches can also be found in the riscv_aia_v12 branch at:
> >> >>> >> https://github.com/avpatel/linux.git
> >> >>> >>
> >> >>> >> Changes since v11:
> >> >>> >>  - Rebased on Linux-6.8-rc1
> >> >>> >>  - Included kernel/irq related patches from "genirq, irqchip: C=
onvert ARM
> >> >>> >>    MSI handling to per device MSI domains" series by Thomas.
> >> >>> >>    (PATCH7, PATCH8, PATCH9, PATCH14, PATCH16, PATCH17, PATCH18,=
 PATCH19,
> >> >>> >>     PATCH20, PATCH21, PATCH22, PATCH23, and PATCH32 of
> >> >>> >>     https://lore.kernel.org/linux-arm-kernel/20221121135653.208=
611233@linutronix.de/)
> >> >>> >>  - Updated APLIC MSI-mode driver to use the new WIRED_TO_MSI me=
chanism.
> >> >>> >>  - Updated IMSIC driver to support per-device MSI domains for P=
CI and
> >> >>> >>    platform devices.
> >> >>> >
> >> >>> > Thanks for working on this, Anup! I'm still reviewing the patche=
s.
> >> >>> >
> >> >>> > I'm hitting a boot hang in text patching, with this series appli=
ed on
> >> >>> > 6.8-rc2. IPI issues?
> >> >>>
> >> >>> Not text patching! One cpu spinning in smp_call_function_many_cond=
() and
> >> >>> the others are in cpu_relax(). Smells like IPI...
> >> >>
> >> >> I tried bootefi from U-Boot multiple times but can't reproduce the
> >> >> issue you are seeing.
> >> >
> >> > Thanks! I can reproduce without EFI, and simpler command-line:
> >> >
> >> > qemu-system-riscv64 \
> >> >   -bios /path/to/fw_dynamic.bin \
> >> >   -kernel /path/to/Image \
> >> >   -append 'earlycon console=3Dtty0 console=3DttyS0' \
> >> >   -machine virt,aia=3Daplic-imsic \
> >> >   -no-reboot -nodefaults -nographic \
> >> >   -smp 4 \
> >> >   -object rng-random,filename=3D/dev/urandom,id=3Drng0 \
> >> >   -device virtio-rng-device,rng=3Drng0 \
> >> >   -m 4G -chardev stdio,id=3Dchar0 -serial chardev:char0
> >> >
> >> > I can reproduce with your upstream riscv_aia_v12 plus the config in =
the
> >> > gist [1], and all latest QEMU/OpenSBI:
> >> >
> >> > QEMU: 11be70677c70 ("Merge tag 'pull-vfio-20240129' of https://githu=
b.com/legoater/qemu into staging")
> >> > OpenSBI: bb90a9ebf6d9 ("lib: sbi: Print number of debug triggers fou=
nd")
> >> > Linux: d9b9d6eb987f ("MAINTAINERS: Add entry for RISC-V AIA drivers"=
)
> >> >
> >> > Removing ",aia=3Daplic-imsic" from the CLI above completes the boot =
(i.e.
> >> > panicking about missing root mount ;-))
> >>
> >> More context; The hang is during a late initcall, where an ftrace dire=
ct
> >> (register_ftrace_direct()) modification is done.
> >>
> >> Stop machine is used to call into __ftrace_modify_call(). Then into th=
e
> >> arch specific patch_text_nosync(), where flush_icache_range() hangs in
> >> flush_icache_all(). From "on_each_cpu(ipi_remote_fence_i, NULL, 1);" t=
o
> >> on_each_cpu_cond_mask() "smp_call_function_many_cond(mask, func, info,
> >> scf_flags, cond_func);" which never returns from "csd_lock_wait(csd)"
> >> right before the end of the function.
> >>
> >> Any ideas? Disabling CONFIG_HID_BPF, that does the early ftrace code
> >> patching fixes the boot hang, but it does seem related to IPI...
> >>
> > Looks like flush_icache_all() does not use the IPIs (on_each_cpu()
> > and friends) correctly.
> >
> > On other hand, the flush_icache_mm() does the right thing by
> > doing local flush on the current CPU and IPI based flush on other
> > CPUs.
> >
> > Can you try the following patch ?
> >
> > diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> > index 55a34f2020a8..a3dfbe4de832 100644
> > --- a/arch/riscv/mm/cacheflush.c
> > +++ b/arch/riscv/mm/cacheflush.c
> > @@ -19,12 +19,18 @@ static void ipi_remote_fence_i(void *info)
> >
> >  void flush_icache_all(void)
> >  {
> > +    cpumask_t others;
> > +
> >      local_flush_icache_all();
> >
> > +    cpumask_andnot(&others, cpu_online_mask, cpumask_of(smp_processor_=
id()));
> > +    if (cpumask_empty(&others))
> > +        return;
> > +
> >      if (IS_ENABLED(CONFIG_RISCV_SBI) && !riscv_use_ipi_for_rfence())
> > -        sbi_remote_fence_i(NULL);
> > +        sbi_remote_fence_i(&others);
> >      else
> > -        on_each_cpu(ipi_remote_fence_i, NULL, 1);
> > +        on_each_cpu_mask(&others, ipi_remote_fence_i, NULL, 1);
> >  }
> >  EXPORT_SYMBOL(flush_icache_all);
>
> Unfortunately, I see the same hang. LMK if you'd like me to try anything
> else.

I was able to reproduce this at my end but I had to use your config.

Digging further, it seems the issue is observed only when we use
in-kernel IPIs for cache flushing (instead of SBI calls) along with
some of the tracers (or debugging features) enabled. With the tracers
(or debug features) disabled we don't see any issue. In fact, the
upstream defconfig works perfectly fine with AIA drivers and
in-kernel IPIs.

It seems AIA based in-kernel IPIs are exposing some other issue
with RISC-V kernel. I will debug more to find the root cause.

Regards,
Anup

