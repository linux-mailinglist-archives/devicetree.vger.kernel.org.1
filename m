Return-Path: <devicetree+bounces-10300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8565C7D0AC1
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 253A7B20ECC
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1059C211A;
	Fri, 20 Oct 2023 08:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5USE2+U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C0210A03
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:47:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F023CC433C8;
	Fri, 20 Oct 2023 08:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697791656;
	bh=yvS57ci7fpW8c627QySzOjgk0/AmuicEXD3GQA5Hz+U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=u5USE2+U4vh8XD5mIYisLUnT1GNJZJp49PPKHE18d3VDUEQ0SkrSGdbA8H7UVvmrn
	 yrHRSOqdWYUb2fGuE0GjmXM9sUs1GVwHfFwrjZqv53cwcQ0fNqiRATQ9eX8i0ItkCM
	 km8CVxnx/ItN4OqVASHYsu5bp8UadjTNEpNPznuAE7zH0xpLoiXK7EEtmEWwocdscQ
	 Okmk9ofjp4lGSUG3KolizoY/WI9fPQ7BWcZl+CawkxAmnHkrh89gu7iNlQ8nva136U
	 7i1vATxQ6ttSgT6DKm1m1kVpTkWblbWz8YfqwQE2lUWOimOBz7cwtWLDYa1BUHLZ3h
	 7Py33kx/e/dMw==
From: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, Marc
 Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Atish Patra
 <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, Sunil V L
 <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, Anup
 Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v10 00/15] Linux RISC-V AIA Support
In-Reply-To: <CAK9=C2XMzzYri8TNBASKqc-VmJWjGdoOHy-fczksfkU0ahhgOQ@mail.gmail.com>
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
 <87o7gu7mo9.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2XMzzYri8TNBASKqc-VmJWjGdoOHy-fczksfkU0ahhgOQ@mail.gmail.com>
Date: Fri, 20 Oct 2023 10:47:33 +0200
Message-ID: <87h6mlbryy.fsf@all.your.base.are.belong.to.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks for the quick reply!

Anup Patel <apatel@ventanamicro.com> writes:

> On Thu, Oct 19, 2023 at 7:13=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kern=
el.org> wrote:
>>
>> Hi Anup,
>>
>> Anup Patel <apatel@ventanamicro.com> writes:
>>
>> > The RISC-V AIA specification is ratified as-per the RISC-V internation=
al
>> > process. The latest ratified AIA specifcation can be found at:
>> > https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-interru=
pts-1.0.pdf
>> >
>> > At a high-level, the AIA specification adds three things:
>> > 1) AIA CSRs
>> >    - Improved local interrupt support
>> > 2) Incoming Message Signaled Interrupt Controller (IMSIC)
>> >    - Per-HART MSI controller
>> >    - Support MSI virtualization
>> >    - Support IPI along with virtualization
>> > 3) Advanced Platform-Level Interrupt Controller (APLIC)
>> >    - Wired interrupt controller
>> >    - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI generat=
or)
>> >    - In Direct-mode, injects external interrupts directly into HARTs
>>
>> Thanks for working on the AIA support! I had a look at the series, and
>> have some concerns about interrupt ID abstraction.
>>
>> A bit of background, for readers not familiar with the AIA details.
>>
>> IMSIC allows for 2047 unique MSI ("msi-irq") sources per hart, and
>> each MSI is dedicated to a certain hart. The series takes the approach
>> to say that there are, e.g., 2047 interrupts ("lnx-irq") globally.
>> Each lnx-irq consists of #harts * msi-irq -- a slice -- and in the
>> slice only *one* msi-irq is acutally used.
>>
>> This scheme makes affinity changes more robust, because the interrupt
>> sources on "other" harts are pre-allocated. On the other hand it
>> requires to propagate irq masking to other harts via IPIs (this is
>> mostly done up setup/tear down). It's also wasteful, because msi-irqs
>> are hogged, and cannot be used.
>>
>> Contemporary storage/networking drivers usually uses queues per core
>> (or a sub-set of cores). The current scheme wastes a lot of msi-irqs.
>> If we instead used a scheme where "msi-irq =3D=3D lnx-irq", instead of
>> "lnq-irq =3D {hart 0;msi-irq x , ... hart N;msi-irq x}", there would be
>> a lot MSIs for other users. 1-1 vs 1-N. E.g., if a storage device
>> would like to use 5 queues (5 cores) on a 128 core system, the current
>> scheme would consume 5 * 128 MSIs, instead of just 5.
>>
>> On the plus side:
>> * Changing interrupts affinity will never fail, because the interrupts
>>   on each hart is pre-allocated.
>>
>> On the negative side:
>> * Wasteful interrupt usage, and a system can potientially "run out" of
>>   interrupts. Especially for many core systems.
>> * Interrupt masking need to proagate to harts via IPIs (there's no
>>   broadcast csr in IMSIC), and a more complex locking scheme IMSIC
>>
>> Summary:
>> The current series caps the number of global interrupts to maximum
>> 2047 MSIs for all cores (whole system). A better scheme, IMO, would be
>> to expose 2047 * #harts unique MSIs.
>>
>> I think this could simplify/remove(?) the locking as well.
>
> Exposing 2047 * #harts unique MSIs has multiple issues:
> 1) The irq_set_affinity() does not work for MSIs because each
>      IRQ is not tied to a particular HART. This means we can't
>      balance the IRQ processing load among HARTs.

Yes, you can balance. In your code, each *active* MSI is still
bound/active to a specific hard together with the affinity mask. In an
1-1 model you would still need to track the affinity mask, but the
irq_set_affinity() would be different. It would try to allocate a new
MSI from the target CPU, and then switch to having that MSI active.

That's what x86 does AFAIU, which is also constrained by the # of
available MSIs.

The downside, as I pointed out, is that the set affinity action can
fail for a certain target CPU.

> 2) All wired IRQs for APLIC MSI-mode will also target a
>     fixed HART hence irq_set_affinity() won't work for wired
>     IRQs as well.

I'm not following here. Why would APLIC put a constraint here? I had a
look at the specs, and I didn't see anything supporting the current
scheme explicitly.

> 3) Contemporary storage/networking drivers which use per-core
>      queues use irq_set_affinity() on queue IRQs to balance
>      across cores but this will fail.

Or via the the managed interrupts. But this is a non-issue, as pointed
out in my reply to 1.

> 4) HART hotplug breaks because kernel irq-subsystem can't
>     migrate the IRQs (both MSIs and Wired) targeting HART X
>     to another HART Y when the HART X goes down.

Yes, we might end up in scenarios where we can't move to a certain
target cpu, but I wouldn't expect that to be a common scenario.

> The idea of treating per-HART MSIs as separate IRQs has
> been discussed in the past.

Aha! I tried to look for it in lore, but didn't find any. Could you
point me to those discussions?

> Also, the current approach is very similar to the ARM GICv3 driver
> where ITS LPIs across CPUs are treated as single IRQ.

I'm not familiar with the GIC. Is the GICv3 design similar to IMSIC? I
had the impression that the GIC had a more advanced interrupt routing
mechanism, than what IMSIC exposes. I think x86 APIC takes the 1-1
approach (the folks on the To: list definitely knows! ;-)).

My concern is interrupts become a scarce resource with this
implementation, but maybe my view is incorrect. I've seen bare-metal
x86 systems (no VMs) with ~200 cores, and ~2000 interrupts, but maybe
that is considered "a lot of interrupts".

As long as we don't get into scenarios where we're running out of
interrupts, due to the software design.


Bj=C3=B6rn

