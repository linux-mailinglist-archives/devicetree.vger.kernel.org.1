Return-Path: <devicetree+bounces-36746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85684285C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13D241F2746C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 15:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9838613E;
	Tue, 30 Jan 2024 15:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mfi3HOOZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892DA82D7B
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 15:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706629751; cv=none; b=OJCpjDOqX/HghQB3qcSFNHOZNylNT8jQX489lwGxQBUGQh5h1N2e6+wIa9ZcpmRG37mKwiZo63MfQQIuJf7Psq92Ya5x8WNEBgp3BZPsacyeVtvE6ozRFvDmvCjisJDT+/THrGwzyeeRv8o6jecTY2g611y90IVruGGrlwFWMU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706629751; c=relaxed/simple;
	bh=zxQFHyd6H4G9GEuw0WgtvSA1wLWGGTDbXAzS/4EfNGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nmT4o9s1baUgLwOFauDFMKLveDiPm3aWBSxAJB/VZz0h1s9CJOt7DSZ4Epsgjp+XrfGvoCwwdqsJRZOJoJEhm4QEre2LZNw4oYs2cpTUkz5lunMaOXctVx4Q8Hw78WtUEWYhvQJiGZfJC0VC9ZbfeDNgsHBEOQBLG2z5uecpvDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mfi3HOOZ; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-510faac8c57so2876459e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 07:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706629747; x=1707234547; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+iAX+0XDAGKyg/OxoIHj98F7+KIoOryAf80+ApbDSI=;
        b=mfi3HOOZeBaHvmJuAeKxi8NvNVNysxu3HzDaTk72U8bE4znsKhUu/HIJGlyJCvlEKU
         gfPF8Z96puj1j+xDlyX+ShZL3hY5laWFucBOwm6HGL6zm4k3pvB+YW8ScFKlaKLJiTWk
         sM8BD2iDXMaey6VljXyysY7b4tIFEabh0ICVv+sz03vNV8mG/dFAouDkN+d0cw83+pu9
         uKrbPNRt2CEMOyfsy/w0M5IWK6yuotJL+5diW1SJd3PTJiUdlv5EyS++aTjbfQhVz+dN
         CiY4skuRYlczQoldV1+5IWiroHF8Nl3JbmVMlnDNcGC8aaAkwQcTokjv07AmRaXYjC6n
         lmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706629747; x=1707234547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c+iAX+0XDAGKyg/OxoIHj98F7+KIoOryAf80+ApbDSI=;
        b=ELAfDAY1foMtwHvTH6ZKlHjTAq5NRjQtTfnehCStqbLOFC/GRSPOj4dAJNCc7ne7nr
         4MSZIVPzY7uNAPwGxfzDeJ6UD3yxXV2CA8ii2ydA49muYN4IuvrZ3QwFgcfiS2+ugiB+
         GG7zAHf/Gn36FMNMy1ciFFAfpqeG1TOWCzANinKh3nlmyQTuhC84q15K6DxnoIrCaV3r
         7slVTb7vgGujPMLdAusTp4v62u7Z5j8mzATXUvWkGAjMDEeR8lecDyF0ANsTWa0WB2ux
         dKV8QIayLNn9DJ++jYcz3DptB2i6SkrSchYAUhizFjKvhpEwmYfaH9w2HtO2gfZfiDjD
         isUg==
X-Gm-Message-State: AOJu0YxQfkPmWE5UTBwtG9BzqMd9gTeTOglFhWOLY+4b6gm5ixnM6mjv
	69IwckhrJh6oKnaZrWASZquR0s1X+borT5pt8z39jDE2bwpjyd9hgp35gkkT/hadeNVcHj5k1hJ
	coVrVEfZGumhbuboZtH7wmdnj2HjDfSJdP8hSbA==
X-Google-Smtp-Source: AGHT+IE8Aaq5BozdnokEQjokD/RT3HrTukjrHMTtCG2uwBHyTSoKgNcaMZilJknQTuf0dWoeasaBCIJhUzTmByVLbKo=
X-Received: by 2002:a19:e049:0:b0:510:e09:4518 with SMTP id
 g9-20020a19e049000000b005100e094518mr789410lfj.3.1706629747416; Tue, 30 Jan
 2024 07:49:07 -0800 (PST)
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
Date: Tue, 30 Jan 2024 21:18:56 +0530
Message-ID: <CAK9=C2UEpbd+pHAMg-AuP-fTPZVho16u69oSjOHhsR11HTwiew@mail.gmail.com>
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
>
Looks like flush_icache_all() does not use the IPIs (on_each_cpu()
and friends) correctly.

On other hand, the flush_icache_mm() does the right thing by
doing local flush on the current CPU and IPI based flush on other
CPUs.

Can you try the following patch ?

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 55a34f2020a8..a3dfbe4de832 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -19,12 +19,18 @@ static void ipi_remote_fence_i(void *info)

 void flush_icache_all(void)
 {
+    cpumask_t others;
+
     local_flush_icache_all();

+    cpumask_andnot(&others, cpu_online_mask, cpumask_of(smp_processor_id()=
));
+    if (cpumask_empty(&others))
+        return;
+
     if (IS_ENABLED(CONFIG_RISCV_SBI) && !riscv_use_ipi_for_rfence())
-        sbi_remote_fence_i(NULL);
+        sbi_remote_fence_i(&others);
     else
-        on_each_cpu(ipi_remote_fence_i, NULL, 1);
+        on_each_cpu_mask(&others, ipi_remote_fence_i, NULL, 1);
 }
 EXPORT_SYMBOL(flush_icache_all);


Regards,
Anup

