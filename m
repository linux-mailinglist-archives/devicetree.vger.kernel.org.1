Return-Path: <devicetree+bounces-39226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2084B84BC5F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 893211F211BE
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 17:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E0912B8B;
	Tue,  6 Feb 2024 17:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="W7KIvb2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FA91A5BA
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 17:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707241200; cv=none; b=F8oOEKOTz3KRK4uL3wvoSOsdtH7xyK50HqdZLLa5StyqJJwRA5z8GQxP/5Tc5QKuv4A0DojKs2PPOWiPvszNBEi5i0mg9feKCA3RVrblr9qQnXh2baf2N1oW+zncpsfHcgRU3C8qBhKpM8KDJY0BCqNCV3Zy+y//OZV2QwGBX8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707241200; c=relaxed/simple;
	bh=muU83VQwgdQrXuKRFa0wK3OfDInPsZQktGHV8MIhSHE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KhoED3rLaowcCMi+/N32eALIyz/L0Vr8xzUECLx+2jkporXWKVYrUkzTNWA65q9jRjbGRyE8jfwQtar8tHe5H4azz8zR6QiBabXQWQF3ZPCFq5wNXX6sA7E2GrKsaFCAc49sC0irSoT25TlfKWP4eJ/wHadP1a+q4yg3p/HYik8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=W7KIvb2M; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-363bafdce59so11423535ab.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 09:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1707241196; x=1707845996; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvfgmunFGFtkyRTL3y0u1hUwzBDb/t5fOC1RyGSPoBE=;
        b=W7KIvb2M9D0hj3+690bm9XEthiJ/NAVXLi4QrVnoUFk4QsaKkR3dsrOij5E3kRSWrL
         1wZckZLthNcMBBezvp26twpdtsyopvLAZLsnIOr9mX6tV9CEo98+KfwUjS6JIyyXRgSj
         ubdRP2lLG97GvDMr1TBZSdTmPphE8RYj+ZmIOWQkR0Fg/qdJv5MU221Z8cGIk+mViCFF
         in9RHuNm38NhM2VITWUySmm2k7oz14zj68TaeNQ6IWyur8S+pK8pVaYN/lZPSW0+m/uQ
         udYW66P1QqGta6CMcFJIp28586f/6fygOFApq/kEXRqd8nwBN5LuiYwQJM/J9pzihEqf
         jksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707241196; x=1707845996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HvfgmunFGFtkyRTL3y0u1hUwzBDb/t5fOC1RyGSPoBE=;
        b=PAYOMGRcQOq0VRXrGAGlb9Ur8Mm/jAV9Y199fGoE2Mc6hqs9pT8+UI8UFt0/LjuYVz
         V7kMBIh9yIXda6Z1NHYlUEcSQc/cYLVJzhexuR+L3iex8zsYax/WvETYTWyBqvjb/F1F
         7teckzU+q6OGisf8/4mrWCd0G6S74QRk9X5ephxi0CjIpFgGUmh3Rj9BvgvEEJptjG7Y
         yWWJw5jhNXcDoh4TCzRO87gTNdKfxkshvRq8cmvyZEev1p7SVKHlKLg7VOlvQjJ6xXaa
         1qWBWwmEJ8FnLO27mZ+1tIeudKrS7JNFjO0L3qRu7GQU3wMMym24G5AG9i8oE2Lwdx4U
         eLew==
X-Gm-Message-State: AOJu0YzWn5p2oWYW9vrzG/onI5v7Y7hqo80c33CTP0EKOm7GP6USQzw0
	iiuWfzQPt+e+WdnLgjIQhPDIoL1Ium0epNwsuGi6hHUwBwx+7Gez2S6j2kKfg3rlTHMtnRA/oug
	YVcoYDparl3VqM7N5B+74Aho8k4Ifh5Dv4x0N2g==
X-Google-Smtp-Source: AGHT+IHPc2cBADHjssHhxrSRF6tDOtzD6+RerOAu4zsdDVok37467SYLbs4n4+eGFMyAky2qmsk1zAWzM0ufxw7kOUw=
X-Received: by 2002:a92:c64f:0:b0:363:76dd:9d37 with SMTP id
 15-20020a92c64f000000b0036376dd9d37mr3453665ill.27.1707241196423; Tue, 06 Feb
 2024 09:39:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com> <87h6ily53k.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87h6ily53k.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Feb 2024 23:09:44 +0530
Message-ID: <CAAhSdy2PPjS6++Edh8NkgiBmcovTUjS5oXE2eR5ZwPfAfVA0ng@mail.gmail.com>
Subject: Re: [PATCH v12 00/25] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 6, 2024 at 9:09=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.=
org> wrote:
>
> Hi Anup,
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The RISC-V AIA specification is ratified as-per the RISC-V internationa=
l
> > process. The latest ratified AIA specifcation can be found at:
> > https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-interrup=
ts-1.0.pdf
> >
> > At a high-level, the AIA specification adds three things:
> > 1) AIA CSRs
> >    - Improved local interrupt support
> > 2) Incoming Message Signaled Interrupt Controller (IMSIC)
> >    - Per-HART MSI controller
> >    - Support MSI virtualization
> >    - Support IPI along with virtualization
> > 3) Advanced Platform-Level Interrupt Controller (APLIC)
> >    - Wired interrupt controller
> >    - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI generato=
r)
> >    - In Direct-mode, injects external interrupts directly into HARTs
> >
> > For an overview of the AIA specification, refer the AIA virtualization
> > talk at KVM Forum 2022:
> > https://static.sched.com/hosted_files/kvmforum2022/a1/AIA_Virtualizatio=
n_in_KVM_RISCV_final.pdf
> > https://www.youtube.com/watch?v=3Dr071dL8Z0yo
>
> Thank you for continuing to work on this series! I like this
> direction of the series!
>
> TL;DR: I think we can get rid of most of the id/householding data
> structures, except for the irq matrix.
>
> Most of my comments are more of a design/overview nature, so I'll
> comment here in the cover letter.
>
> I took the series for a spin with and it with Alex' ftrace fix it,
> passes all my tests nicely!
>
> Now some thoughts/comments (I'm coming from the x86 side of things!):
>
> id/enable-tracking: There are a lot of different id/enabled tracking
> with corresponding locks, where there's IMO overlap with what the
> matrix provides.

The matrix allocator does not track the enabled/disabled state of
the per-CPU IDs. This is why we have a separate per-CPU
ids_enabled_bitmap which is also used for remote synchronization
across CPUs.

>
> Let's start with struct imsic_priv:
>
>    | /* Dummy HW interrupt numbers */
>    | unsigned int nr_hwirqs;
>    | raw_spinlock_t hwirqs_lock;
>    | unsigned long *hwirqs_used_bitmap;

The matrix allocator manages actual IDs for each CPU whereas
the Linux irq_data expects a fixed hwirq which does not change.

Due to this, we have a dummy hwirq space which is always
fixed. The only thing that is changed under-the-hood by the
IMSIC driver is the dummy hwirq to actual HW vector (cpu, id)
mapping.

>
> These are used to for the domain routing (hwirq -> desc/virq), and not
> needed. Just use the same id as virq (at allocation time), and get rid
> of these data structures/corresponding functions. The lookup in the
> interrupt handler via imsic_local_priv.vectors doesn't care about
> hwirq. This is what x86 does... The imsic_vector roughly corresponds
> to apic_chip_data (nit: imsic_vector could have the chip_data suffix
> as well, at least it would have helped me!)

Yes, imsic_vector corresponds to apic_chip_data in the x86 world.

>
> Moving/affinity changes. The moving of a vector to another CPU
> currently involves:
>
> 1. Allocate a new vector from the matrix
> 2. Disable/enable the corresponding per-cpu ids_enabled_bitmap (nested
>    spinlocks)
> 3. Trigger two IPIs to apply the bitmap
> 4. On each CPU target (imsic_local_sync()) loop the bitmap and flip
>    all bits, and potentially rearm
>
> This seems a bit heavy-weight: Why are you explicitly setting/clearing
> all the bits in a loop at the local sync?

This can be certainly optimized by introducing another
ids_dirty_bitmap. I will add this in the next revision.

>
> x86 does it a bit differently (more lazily): The chip_data has
> prev_{cpu,vector}/move_in_progress fields, and keep both vectors
> enabled until there's an interrupt on the new vector, and then the old
> one is cleaned (irq_complete_move()).
>
> Further; When it's time to remove the old vector, x86 doesn't trigger
> an IPI on the disabling side, but queues a cleanup job on a per-cpu
> list and triggers a timeout. So, the per-cpu chip_data (per-cpu
> "vectors" in your series) can reside in two places during the transit.

We can't avoid IPIs when moving vectors from one CPU to another
CPU because IMSIC id enable/disable is only possible through
CSRs. Also, keep in-mind that irq affinity change might be initiated
on CPU X for some interrupt targeting CPU Y which is then changed
to target CPU Z.

In the case of x86, they have memory mapped registers which
allows one CPU to enable/disable the ID of another CPU.

>
> I wonder if this clean up is less intrusive, and you just need to
> perform what's in the per-list instead of dealing with the
> ids_enabled_bitmap? Maybe we can even remove that bitmap as well. The
> chip_data/desc has that information. This would mean that
> imsic_local_priv() would only have the local vectors (chip_data), and
> a cleanup list/timer.
>
> My general comment is that instead of having these global id-tracking
> structures, use the matrix together with some desc/chip_data local
> data, which should be sufficient.

The "ids_enabled_bitmap", "dummy hwirqs" and private imsic_vectors
are required since the matrix allocator only manages allocation of
per-CPU IDs.

>
> Random thought: Do we need to explicitly disable (csr) the vector,
> when we're changing the affinity? What if we just leave it enabled,
> and only when mask/unmask is performed it's actually explicitly masked
> (writes to the csr)?

We should not leave it enabled because some rough/buggy device
can inject spurious interrupts using MSI writes to unused enabled
interrupts.

>
> Missing features (which can be added later):
> * Reservation mode/activate support (allocate many MSI, but only
>   request/activate a subset)

I did not see any PCIe or platform device requiring this kind of
reservation. Any examples ?

> * Handle managed interrupts

Any examples of managed interrupts in the RISC-V world ?

> * There might be some irqd flags are missing, which mostly cpuhp care
>   about (e.g. irqd_*_single_target())...

Okay, let me check and update.

>
> Finally; Given that the APLIC requires a lot more patches, depending
> on how the review process moves on -- maybe the IMSIC side could go as
> a separate series?
>

The most popular implementation choice across RISC-V platforms
will be IMSIC + APLIC so both drivers should go together. In fact,
we need both drivers for the QEMU virt machine as well because
UART interrupt (and other wired interrupts) on the QEMU virt
machine goes through APLIC.

Regards,
Anup

