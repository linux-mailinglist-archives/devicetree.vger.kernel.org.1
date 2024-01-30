Return-Path: <devicetree+bounces-36730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3611B8427D1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B92581F21451
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 15:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E27811E0;
	Tue, 30 Jan 2024 15:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="LUVOOVe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E26167E75
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 15:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706627963; cv=none; b=oOqekTSAediSsQje0dJefZF6pDeXryMj7PZqOHgljCsiGXByP3HtCsO7wQXbWdtnZXFQv9lxX3CxA0xTO8Sl4yTP44Qpeo8EKXcsGkBVg6EF0Fsy9tPxYzzMRkjLLU3F6Kf3O6K3hz7nDZrBdmM+ar0xawDfiLbPbyuvdeljD8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706627963; c=relaxed/simple;
	bh=PVSPEW4hH6PeO/w3gj0HDeUjaJjprqSXNu79V80KPKo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=opHV2CWAHNlnaBFXLFE/CN3TkzbeqMXbjflJ+ZkfPDogHTEdskK3OUZt1d2fFuowMLV3tM3t6CiN0gI/FbegHL2KUbQiz2ke0+pIab3kdcuwf2nfUV9TMDBCbxC+lvZ8QZ3sMJkR+Z5lZhJ++wHoVpB1ZsuhJisTcVrBMhfIOHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=LUVOOVe1; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d0600551ebso5264521fa.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 07:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706627960; x=1707232760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uR58ntFT9r497qZDktCjm9ILY+qg85I6IidglPAGKSY=;
        b=LUVOOVe1kfAFux3oaIbyhuP6a1HiL+qh0V24dA+rHHh4kXRqE3geAmmqV1kqgJlJja
         WQHFPFaLvLHbx7iN23GImw5z9mn6Kz8DzGk0hlIZ0Sok06/So9MfSnzmpkYwSp/4SIsm
         lHdUtxaJJx1q12QK6QV5j6H6fkWTWSw7gn5JToqvvYBvr9jcBGd19uQ97lPLBSEM2UfU
         21Mnlr/SXKEMiQ23gtFaFSCys5zhZG0Fr0BWI4Bsoh5QmFuZ445Eaw3GW7x3aw6kyYJ1
         utBenQf0hTNVjcVYxaZEyCLj1k356ncXANQastQmBZW9iGwvVKphZliK748QpJ8EkKvL
         Z7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706627960; x=1707232760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uR58ntFT9r497qZDktCjm9ILY+qg85I6IidglPAGKSY=;
        b=rQlhH+/8pNBMYkzKzbjLX9FVgdS8Q2azQxjGGJ14NYGYAJzFAZd4xSsm5trYmr5FZl
         ZyJL2S925H/rhYomtV7TQzWP/l8kt42Cmjtp9s8jpyIm83YVxbhtZy0jVAbE1lZHq73D
         FtGjSF8Ze6pf/f4QeYU/OQdmI+r95otOA+Uu602zEfIpX+bnvwocGJU/b0nt/Cdg/sC7
         8seMq51f6sqWJ8Z1LKoQYtsqF+ngtg6IKv9KLoOkJFb5Zx/2JSwSBTYo3+0gqIBB6cx+
         n8DnOn3HLrJ8sOBh1mQhRxA3mjyGFlae5dk/GlYfsHfTs/v/wRU1h6S55FQ1rvsb7guO
         TlAA==
X-Gm-Message-State: AOJu0YzwHuFEckX7wdmCSfEVWxiqvSJD1rKDbjhXxlLrxJWsyhuq+WmZ
	U6py6ABbEumj1YYCS5ZCSIR8bguiaEfgbgqAn8a8n5zmerJYHlkh/7PALdqXodFpN3C3YLWihM8
	HX3oSRy6yIhJqvzhMl1KcteNFDUoaOp7cQHf0xg==
X-Google-Smtp-Source: AGHT+IFlfy//h7RQdbwtSl6xJtvhe0SMgfB/xXpASntbV93hvCrvJJuK/u8upc1FhlRzRPc/uZjS7khMFK2KxWJBq2s=
X-Received: by 2002:a2e:9f45:0:b0:2d0:4c0a:a41a with SMTP id
 v5-20020a2e9f45000000b002d04c0aa41amr3729114ljk.13.1706627959579; Tue, 30 Jan
 2024 07:19:19 -0800 (PST)
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
In-Reply-To: <87ttmuq3m7.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 30 Jan 2024 20:49:08 +0530
Message-ID: <CAK9=C2VmJhN7MiQbpW_Z0kaeAJD2pA-1kePwPEHTwKJO-cB2nw@mail.gmail.com>
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

On Tue, Jan 30, 2024 at 8:18=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
>
> > Anup Patel <apatel@ventanamicro.com> writes:
> >
> >> On Tue, Jan 30, 2024 at 1:22=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@k=
ernel.org> wrote:
> >>>
> >>> Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.org> writes:
> >>>
> >>> > Anup Patel <apatel@ventanamicro.com> writes:
> >>> >
> >>> >> The RISC-V AIA specification is ratified as-per the RISC-V interna=
tional
> >>> >> process. The latest ratified AIA specifcation can be found at:
> >>> >> https://github.com/riscv/riscv-aia/releases/download/1.0/riscv-int=
errupts-1.0.pdf
> >>> >>
> >>> >> At a high-level, the AIA specification adds three things:
> >>> >> 1) AIA CSRs
> >>> >>    - Improved local interrupt support
> >>> >> 2) Incoming Message Signaled Interrupt Controller (IMSIC)
> >>> >>    - Per-HART MSI controller
> >>> >>    - Support MSI virtualization
> >>> >>    - Support IPI along with virtualization
> >>> >> 3) Advanced Platform-Level Interrupt Controller (APLIC)
> >>> >>    - Wired interrupt controller
> >>> >>    - In MSI-mode, converts wired interrupt into MSIs (i.e. MSI gen=
erator)
> >>> >>    - In Direct-mode, injects external interrupts directly into HAR=
Ts
> >>> >>
> >>> >> For an overview of the AIA specification, refer the AIA virtualiza=
tion
> >>> >> talk at KVM Forum 2022:
> >>> >> https://static.sched.com/hosted_files/kvmforum2022/a1/AIA_Virtuali=
zation_in_KVM_RISCV_final.pdf
> >>> >> https://www.youtube.com/watch?v=3Dr071dL8Z0yo
> >>> >>
> >>> >> To test this series, use QEMU v7.2 (or higher) and OpenSBI v1.2 (o=
r higher).
> >>> >>
> >>> >> These patches can also be found in the riscv_aia_v12 branch at:
> >>> >> https://github.com/avpatel/linux.git
> >>> >>
> >>> >> Changes since v11:
> >>> >>  - Rebased on Linux-6.8-rc1
> >>> >>  - Included kernel/irq related patches from "genirq, irqchip: Conv=
ert ARM
> >>> >>    MSI handling to per device MSI domains" series by Thomas.
> >>> >>    (PATCH7, PATCH8, PATCH9, PATCH14, PATCH16, PATCH17, PATCH18, PA=
TCH19,
> >>> >>     PATCH20, PATCH21, PATCH22, PATCH23, and PATCH32 of
> >>> >>     https://lore.kernel.org/linux-arm-kernel/20221121135653.208611=
233@linutronix.de/)
> >>> >>  - Updated APLIC MSI-mode driver to use the new WIRED_TO_MSI mecha=
nism.
> >>> >>  - Updated IMSIC driver to support per-device MSI domains for PCI =
and
> >>> >>    platform devices.
> >>> >
> >>> > Thanks for working on this, Anup! I'm still reviewing the patches.
> >>> >
> >>> > I'm hitting a boot hang in text patching, with this series applied =
on
> >>> > 6.8-rc2. IPI issues?
> >>>
> >>> Not text patching! One cpu spinning in smp_call_function_many_cond() =
and
> >>> the others are in cpu_relax(). Smells like IPI...
> >>
> >> I tried bootefi from U-Boot multiple times but can't reproduce the
> >> issue you are seeing.
> >
> > Thanks! I can reproduce without EFI, and simpler command-line:
> >
> > qemu-system-riscv64 \
> >   -bios /path/to/fw_dynamic.bin \
> >   -kernel /path/to/Image \
> >   -append 'earlycon console=3Dtty0 console=3DttyS0' \
> >   -machine virt,aia=3Daplic-imsic \
> >   -no-reboot -nodefaults -nographic \
> >   -smp 4 \
> >   -object rng-random,filename=3D/dev/urandom,id=3Drng0 \
> >   -device virtio-rng-device,rng=3Drng0 \
> >   -m 4G -chardev stdio,id=3Dchar0 -serial chardev:char0
> >
> > I can reproduce with your upstream riscv_aia_v12 plus the config in the
> > gist [1], and all latest QEMU/OpenSBI:
> >
> > QEMU: 11be70677c70 ("Merge tag 'pull-vfio-20240129' of https://github.c=
om/legoater/qemu into staging")
> > OpenSBI: bb90a9ebf6d9 ("lib: sbi: Print number of debug triggers found"=
)
> > Linux: d9b9d6eb987f ("MAINTAINERS: Add entry for RISC-V AIA drivers")
> >
> > Removing ",aia=3Daplic-imsic" from the CLI above completes the boot (i.=
e.
> > panicking about missing root mount ;-))
>
> More context; The hang is during a late initcall, where an ftrace direct
> (register_ftrace_direct()) modification is done.
>
> Stop machine is used to call into __ftrace_modify_call(). Then into the
> arch specific patch_text_nosync(), where flush_icache_range() hangs in
> flush_icache_all(). From "on_each_cpu(ipi_remote_fence_i, NULL, 1);" to
> on_each_cpu_cond_mask() "smp_call_function_many_cond(mask, func, info,
> scf_flags, cond_func);" which never returns from "csd_lock_wait(csd)"
> right before the end of the function.
>
> Any ideas? Disabling CONFIG_HID_BPF, that does the early ftrace code
> patching fixes the boot hang, but it does seem related to IPI...

Thanks for the details, I will debug more at my end.

Regards,
Anup

