Return-Path: <devicetree+bounces-10178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E438C7CFF2C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 18:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7D7E281F93
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 16:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47130321B0;
	Thu, 19 Oct 2023 16:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Y91rB4Go"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9332127EDE
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 16:11:24 +0000 (UTC)
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C055130
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:11:22 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-5aa7172bafdso4422554a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 09:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1697731882; x=1698336682; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOjYwgdk9z8wQA3VmtvZ1n8QsFFkfcCxM5197gEqm4U=;
        b=Y91rB4GoPLy8/oGanHiNR+IxvV8EYZzPF+uDEv2Bv9n4MxM/juvmagYfdqIQrVE/oN
         +ofocpCtV7zEyUZiPmmscPhN1IjDx9/dW779JwzHY8cttLXjHeRx8hNXjOz7bktQxSVZ
         4nmvR0/rVzo87wfS/7pIf4SuFbtlBUXYR18tSCh3HyPDt8DTy/tB1IP4muY5eJbtTEPe
         Y+/nU1TewPCk0X8UpQZiew6Vc+yjeIS7lpzTIwQ75K5Jv+GokFwyyJ0NtT4qb7onAwir
         h+AwU2nrOOAtbuLx8Cn4T2kUt3kFmZHYLu2q8e/fRH3GULo1F0hvyHSxtFJmF47DHX5f
         ALwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697731882; x=1698336682;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DOjYwgdk9z8wQA3VmtvZ1n8QsFFkfcCxM5197gEqm4U=;
        b=Bbm5O4S9GJvs0UL3ZzfSWgNZZ9qiM9UoDTGPjus6oM/aKZQQOjTSzd2bOY42A0AuvO
         RLtfqVu6vzieVI0oKW8675KiRPUyvbZjhpi6TRDVz/KpHzGouWyOxIxYp5CadvINhtF9
         NvI0u7/d2s4k6nC9L3DvyM8C/NpzTD7PjxHNfScWiFutlJyac92ECyLwdVbA5dIXVtE9
         4c42t+bCy1eQ3MZ7MJe3ZR+yFeIdSdW8O322WLOdZwnrtVqwp/JQ5M2T8w2l2w7HsnPA
         44xUbJNrw7o/Y8BHfqCkxO2QqxdegRwiF8WFF0Hgd/i2AWqppoN1lXv16Fuh8W7UtsUH
         ZuPA==
X-Gm-Message-State: AOJu0Yxgs2MbHcClUPhtK9J5xEvdGrHWckeJqQDGxsLSDNPnZhCHE+zC
	ahdh/YtvPjZFxK8SrNVXaNfjoOCkd9w/uq5lOxODsw==
X-Google-Smtp-Source: AGHT+IHyxUQVRECrrku3aBHQKGFGKsHUbRup3XjNvl7h7Cf1LJLXNBlAxjNyNIPFpPpc531lLIcmfpp9YIzhp+ETcyI=
X-Received: by 2002:a05:6a20:8e0e:b0:154:a1e3:f967 with SMTP id
 y14-20020a056a208e0e00b00154a1e3f967mr3115507pzj.47.1697731881787; Thu, 19
 Oct 2023 09:11:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231003044403.1974628-1-apatel@ventanamicro.com> <87o7gu7mo9.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87o7gu7mo9.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 19 Oct 2023 21:41:10 +0530
Message-ID: <CAK9=C2XMzzYri8TNBASKqc-VmJWjGdoOHy-fczksfkU0ahhgOQ@mail.gmail.com>
Subject: Re: [PATCH v10 00/15] Linux RISC-V AIA Support
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 7:13=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
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
>
> Thanks for working on the AIA support! I had a look at the series, and
> have some concerns about interrupt ID abstraction.
>
> A bit of background, for readers not familiar with the AIA details.
>
> IMSIC allows for 2047 unique MSI ("msi-irq") sources per hart, and
> each MSI is dedicated to a certain hart. The series takes the approach
> to say that there are, e.g., 2047 interrupts ("lnx-irq") globally.
> Each lnx-irq consists of #harts * msi-irq -- a slice -- and in the
> slice only *one* msi-irq is acutally used.
>
> This scheme makes affinity changes more robust, because the interrupt
> sources on "other" harts are pre-allocated. On the other hand it
> requires to propagate irq masking to other harts via IPIs (this is
> mostly done up setup/tear down). It's also wasteful, because msi-irqs
> are hogged, and cannot be used.
>
> Contemporary storage/networking drivers usually uses queues per core
> (or a sub-set of cores). The current scheme wastes a lot of msi-irqs.
> If we instead used a scheme where "msi-irq =3D=3D lnx-irq", instead of
> "lnq-irq =3D {hart 0;msi-irq x , ... hart N;msi-irq x}", there would be
> a lot MSIs for other users. 1-1 vs 1-N. E.g., if a storage device
> would like to use 5 queues (5 cores) on a 128 core system, the current
> scheme would consume 5 * 128 MSIs, instead of just 5.
>
> On the plus side:
> * Changing interrupts affinity will never fail, because the interrupts
>   on each hart is pre-allocated.
>
> On the negative side:
> * Wasteful interrupt usage, and a system can potientially "run out" of
>   interrupts. Especially for many core systems.
> * Interrupt masking need to proagate to harts via IPIs (there's no
>   broadcast csr in IMSIC), and a more complex locking scheme IMSIC
>
> Summary:
> The current series caps the number of global interrupts to maximum
> 2047 MSIs for all cores (whole system). A better scheme, IMO, would be
> to expose 2047 * #harts unique MSIs.
>
> I think this could simplify/remove(?) the locking as well.

Exposing 2047 * #harts unique MSIs has multiple issues:
1) The irq_set_affinity() does not work for MSIs because each
     IRQ is not tied to a particular HART. This means we can't
     balance the IRQ processing load among HARTs.
2) All wired IRQs for APLIC MSI-mode will also target a
    fixed HART hence irq_set_affinity() won't work for wired
    IRQs as well.
3) Contemporary storage/networking drivers which use per-core
     queues use irq_set_affinity() on queue IRQs to balance
     across cores but this will fail.
4) HART hotplug breaks because kernel irq-subsystem can't
    migrate the IRQs (both MSIs and Wired) targeting HART X
    to another HART Y when the HART X goes down.

The idea of treating per-HART MSIs as separate IRQs has
been discussed in the past. The current approach works nicely
with all kernel use-cases at the cost of additional work on the
driver side.

Also, the current approach is very similar to the ARM GICv3
driver where ITS LPIs across CPUs are treated as single IRQ.

>
> I realize that the series in v10, and coming with a change like this
> now might be a bit of a pain...
>
> Finally, another question related to APLIC/IMSIC. AFAIU the memory map
> of the IMSIC regions are constrained by the APLIC, which requires a
> certain layout for MSI forwarding (group/hart/guest bits). Say that a
> system doesn't have an APLIC, couldn't the layout requirement be
> simplified?

Yes, this is already taken care of in the current IMSIC driver based
on feedback from Atish. We can certainly improve flexibility on the
IMSIC driver side if some case is missed-out.

The APLIC driver is certainly very strict about the arrangement of
IMSIC files so we do additional sanity checks on the APLIC driver
side at the time of probing.

>
>
> Again, thanks for the hard work!
> Bj=C3=B6rn

Regards,
Anup

