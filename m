Return-Path: <devicetree+bounces-80329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EAA918609
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:39:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42AB71C21BDF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF0C18C34B;
	Wed, 26 Jun 2024 15:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="TznPpPFb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072F218C34A
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416350; cv=none; b=ehJhxQe18gU93Wduful9TDWVmrwibs6nFox+nmQNvJ5fEEa/OyBlH8ZwKxJ/V0i80Qb/MHuoOmuIMSObNHzroQUjQ0BgX3RLeTxRG51LOeq5vFZ2E51m7wydwjREr3mY4oOL5EK8idU6h59HV336DIXPb8AP9xo9Nl5Ib47p0pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416350; c=relaxed/simple;
	bh=/BPHxCDFIOcyeX56hfoyO8YIM2hBK8dw89VGYxU68ZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m04Xg/fchsHejefAez7dtzXbSmfcGDne3KKBa1mypCilFowEeMoT2EzBD8Fh5XJdQocVYzpbn3GYuhTvo4Cghk2O5d6fVQSeZoXajJ+swToZi9drMp4r1xdtA4Pj95nqFRocabIefnljytbtCGFBbdKWwOlYBK0YdJjeajWBhf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=TznPpPFb; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3788bf2584aso1753235ab.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1719416348; x=1720021148; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wvzxB+Wa86xaSK5lnqOhKYjBXjWn6DeMPRI2dct18cg=;
        b=TznPpPFbOqMAioPVtpcjl/rge90NwmV1kUOpGBsnQrft5Bxw2OTXKMdIPcLp1Xr4oA
         ShB4StwkH30kqw7PZKP45D/LEMPxpOyxpjItUJef3/yU8NDzBKhdxT7Hi7H+D4ZhVVv+
         qu7lQYdIfq5hYxpFXokVdNTu8mWQNQpmykE+PG3cHAe/eDws0W5o4kdZsLtXgrYOs2DE
         Pycq9oGrhgOUdun5k4KlXsSlI8XrUMFm9ZUG38jkuuLzxSyILxCqo/xVCQ0DpUthJIZZ
         IaVGmKWjnvbqYbuum1B0aCqIYZZMLXQDju/pWLDe7MhRWEciL4VUE09Q+tT+W5ldIWEj
         K3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719416348; x=1720021148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvzxB+Wa86xaSK5lnqOhKYjBXjWn6DeMPRI2dct18cg=;
        b=d3fbIYxSKvWC1YuJOcR1wuDvXkS++K+tNAikdwBzJm5fNByQ1AOLphjH6gBg4APXqE
         jhkJoNVLUT90WVQezTq2n6icWRX5E8WCdzP0HF5uToadJzrFpMmWdfGIRAc8xh9STdXC
         sMydvZoytfvbh7e5DxCAFCUeFAwoVBhG9EZ0NbYkXAIyUAG7EiD+hE1lkMNaUyT4dd+E
         heSgwknnzUda81unKut4s70Nwc43grCEjEBNvPGmR58G9Ma0CJyktFqtiVtfGa3yFdGo
         yK+JhjhegSIFIIsmRyreX1eAyQZMPqTEcHZt4p0JhxK85AfRKLUa6zjGr8SsQjVfddwa
         DlBA==
X-Forwarded-Encrypted: i=1; AJvYcCXGmfsCtt9Ox4JgsLY370NT9qEwI+ocWZA+GfOd6ksXZah9arsUsGi70G0pm505ZT1o2QLgoyAzV6ChKAV3FZ5cmYIPYPdm0gGjhg==
X-Gm-Message-State: AOJu0YzwjXnLnUpCj2DKVm2QjsUoI6+DhOeMAw2QNzmCfZ8R+jVuxW8s
	ZiFyVvK+cHgWpHQtQfrf8Go4Apzgs8MwUu82y+sSWQIJT/afDBtScDIbYH3/mRO7cgFMhz1eRdO
	f8bkcrPbcAPmbNfzRIq1HbyKbyNlubiZPC5LZQg==
X-Google-Smtp-Source: AGHT+IH1sQ42nSQm2aRgsueyYRQdo0XMxrFyeQ+EQYp/DQqJ5Hp3nD/SVMMsjp0hgIysP+g1yym2HXV7xKKsXUL5aOg=
X-Received: by 2002:a05:6e02:219a:b0:378:535c:9878 with SMTP id
 e9e14a558f8ab-378535c99b5mr7484845ab.17.1719416348127; Wed, 26 Jun 2024
 08:39:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240603-f8650a2cc220b73cf52d77c7@orel> <mhng-4fc810f5-fd3a-44f3-bd78-9a6b7bf2ab77@palmer-ri-x1c9>
In-Reply-To: <mhng-4fc810f5-fd3a-44f3-bd78-9a6b7bf2ab77@palmer-ri-x1c9>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 26 Jun 2024 21:08:56 +0530
Message-ID: <CAAhSdy37GxVnH0vvowpf4BeBT-f8YcoUFcNR32wioZBObKiUMw@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] riscv: Apply Zawrs when available
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: ajones@ventanamicro.com, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, 
	Conor Dooley <conor.dooley@microchip.com>, atishp@atishpatra.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	christoph.muellner@vrull.eu, Heiko Stuebner <heiko@sntech.de>, 
	Charlie Jenkins <charlie@rivosinc.com>, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Palmer,

On Wed, Jun 26, 2024 at 8:04=E2=80=AFPM Palmer Dabbelt <palmer@dabbelt.com>=
 wrote:
>
> On Mon, 03 Jun 2024 05:36:42 PDT (-0700), ajones@ventanamicro.com wrote:
> > Hi Palmer,
> >
> > I submit our concerns of wrs.nto to RVI ARC for consideration. They
> > discussed it but don't believe there's a need for concern. The
> > expectation is that there will always be enough interrupt activity
> > and that those interrupts with activity will not likely be locally
> > disabled.
> >
> > Can we consider this series for 6.10?
>
> Sorry I forgot about this one, Anup just brought it up in the patchwork
> meeting.  He's going to ack the KVM bits, then I'll pick it up.

I have Acked the KVM bits so please go ahead with this series.

Regards,
Anup

>
> >
> > Thanks,
> > drew
> >
> > On Fri, Apr 26, 2024 at 12:08:20PM GMT, Andrew Jones wrote:
> >> Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
> >> meant to allow the hart to enter a low-power state while waiting on a
> >> store to a memory location. The instructions also both wait an
> >> implementation-defined "short" duration (unless the implementation
> >> terminates the stall for another reason). The difference is that while
> >> wrs.sto will terminate when the duration elapses, wrs.nto, depending o=
n
> >> configuration, will either just keep waiting or an ILL exception will =
be
> >> raised. Linux will use wrs.nto, so if platforms have an implementation
> >> which falls in the "just keep waiting" category (which is not expected=
),
> >> then it should _not_ advertise Zawrs in the hardware description.
> >>
> >> Like wfi (and with the same {m,h}status bits to configure it), when
> >> wrs.nto is configured to raise exceptions it's expected that the highe=
r
> >> privilege level will see the instruction was a wait instruction, do
> >> something, and then resume execution following the instruction. For
> >> example, KVM does configure exceptions for wfi (hstatus.VTW=3D1) and
> >> therefore also for wrs.nto. KVM does this for wfi since it's better to
> >> allow other tasks to be scheduled while a VCPU waits for an interrupt.
> >> For waits such as those where wrs.nto/sto would be used, which are
> >> typically locks, it is also a good idea for KVM to be involved, as it
> >> can attempt to schedule the lock holding VCPU.
> >>
> >> This series starts with Christoph's addition of the riscv
> >> smp_cond_load_relaxed function which applies wrs.sto when available.
> >> That patch has been reworked to use wrs.nto and to use the same approa=
ch
> >> as Arm for the wait loop, since we can't have arbitrary C code between
> >> the load-reserved and the wrs. Then, hwprobe support is added (since t=
he
> >> instructions are also usable from usermode), and finally KVM is
> >> taught about wrs.nto, allowing guests to see and use the Zawrs
> >> extension.
> >>
> >> We still don't have test results from hardware, and it's not possible =
to
> >> prove that using Zawrs is a win when testing on QEMU, not even when
> >> oversubscribing VCPUs to guests. However, it is possible to use KVM
> >> selftests to force a scenario where we can prove Zawrs does its job an=
d
> >> does it well. [4] is a test which does this and, on my machine, withou=
t
> >> Zawrs it takes 16 seconds to complete and with Zawrs it takes 0.25
> >> seconds.
> >>
> >> This series is also available here [1]. In order to use QEMU for testi=
ng
> >> a build with [2] is needed. In order to enable guests to use Zawrs wit=
h
> >> KVM using kvmtool, the branch at [3] may be used.
> >>
> >> [1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3/
> >> [2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventana=
micro.com/
> >> [3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
> >> [4] https://github.com/jones-drew/linux/commit/cb2beccebcece10881db842=
ed69bdd5715cfab5d
> >>
> >> Thanks,
> >> drew
> >>
> >> v3:
> >>  - Moved comment about expected termination from the DT binding text
> >>    to a code comment.
> >>
> >> v2:
> >>  - Added DT bindings patch with additional Linux specifications due
> >>    to wrs.nto potentially never terminating, as suggested by Palmer
> >>  - Added patch to share pause insn definition
> >>  - Rework main Zawrs support patch to use Arm approach (which is
> >>    also the approach that Andrea Parri suggested)
> >>  - Dropped the riscv implementation of smp_cond_load_acquire().
> >>    afaict, the generic implementation, which will use the riscv
> >>    implementation of smp_cond_load_relaxed() is sufficient for riscv.
> >>  - The rework was large enough (IMO) to drop Heiko's s-o-b and to
> >>    add myself as a co-developer
> >>
> >>
> >> Andrew Jones (5):
> >>   riscv: Provide a definition for 'pause'
> >>   dt-bindings: riscv: Add Zawrs ISA extension description
> >>   riscv: hwprobe: export Zawrs ISA extension
> >>   KVM: riscv: Support guest wrs.nto
> >>   KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
> >>
> >> Christoph M??llner (1):
> >>   riscv: Add Zawrs support for spinlocks
> >>
> >>  Documentation/arch/riscv/hwprobe.rst          |  4 ++
> >>  .../devicetree/bindings/riscv/extensions.yaml |  7 +++
> >>  arch/riscv/Kconfig                            | 20 ++++---
> >>  arch/riscv/Makefile                           |  3 -
> >>  arch/riscv/include/asm/barrier.h              | 45 +++++++++-----
> >>  arch/riscv/include/asm/cmpxchg.h              | 58 ++++++++++++++++++=
+
> >>  arch/riscv/include/asm/hwcap.h                |  1 +
> >>  arch/riscv/include/asm/insn-def.h             |  4 ++
> >>  arch/riscv/include/asm/kvm_host.h             |  1 +
> >>  arch/riscv/include/asm/vdso/processor.h       |  8 +--
> >>  arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
> >>  arch/riscv/include/uapi/asm/kvm.h             |  1 +
> >>  arch/riscv/kernel/cpufeature.c                |  1 +
> >>  arch/riscv/kernel/sys_hwprobe.c               |  1 +
> >>  arch/riscv/kvm/vcpu.c                         |  1 +
> >>  arch/riscv/kvm/vcpu_insn.c                    | 15 +++++
> >>  arch/riscv/kvm/vcpu_onereg.c                  |  2 +
> >>  .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
> >>  18 files changed, 146 insertions(+), 31 deletions(-)
> >>
> >> --
> >> 2.44.0
> >>

