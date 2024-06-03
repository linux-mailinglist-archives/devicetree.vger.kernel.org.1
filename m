Return-Path: <devicetree+bounces-71830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D25878D8262
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 14:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40DF31F21CB7
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 12:36:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E21912C46B;
	Mon,  3 Jun 2024 12:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NJ+7jzfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AA9126F2A
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 12:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717418207; cv=none; b=gPfQRskncnk9yWBeR71S+/ehDdNasEVcyI3MtGZiKcsRgSkqx1L30rP2rN2qCzZiJdz50X88dVaL5F21078ox5JaTsvv2/YN0NWJnOJfm0W1aB4eTY6/dEL3Yd3i2ATfb8w6FrhBTJNPQ3DvnRptmRJnsLbfWoNl/PbpM8fUYNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717418207; c=relaxed/simple;
	bh=fWoyaWDWTtKrPnfOKj80QGbeqeUiyXfp7w+nxHdOf9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qwMpZQm5vAND+awEXlPAGuDnSy4Gg3iq9qeVoOehVvUoEZfRFyrt4j92IHLVYXXXQjfn4OgYVEMmRIBnXqcpGHTXbeSILR2+M/rUgZiXHrQICbdhP06xJNsUjzQpY4VIDD6oj1nC0uA8TRC/7aGcdUjZUKhh6HDggLMGFbK4M40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=NJ+7jzfE; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57a2ed9af7dso4277820a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 05:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1717418204; x=1718023004; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FzkA2fr/rz/BmZYjPybok7znUmISuIim/Yn56iqZo2k=;
        b=NJ+7jzfEESfC6XQfLwZPl7H+80HrOGoqtoM790uz+JLku8AT2UN8528N1fnnY4NVzW
         OJQjFOjyUI3RkZ3xDIqyhWnbd4ECDYxLAQqjjyz7Ns5f0Pyvz694v9t+3gW9zeRmmD4y
         EYSjFEuqoNwGhnbPLCdnyIzN5wBmC/vnvBvsN+JvfyG7ytVFeGvpL9l+Rcfthq0HH42n
         A3H0BtOUiSAueFs6UkuauxOc8Jme8P2U21uMDbY6G4pab3DikA6ubWTPb58hCK0CD8AV
         qNS2VjDKCvYSl9dj+Ff+tBI5B2rQAV/vLILX4+njP2qjRnQwwzMFHP3LcMMGVSgTRAUI
         rVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717418204; x=1718023004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzkA2fr/rz/BmZYjPybok7znUmISuIim/Yn56iqZo2k=;
        b=tIdWTvCGoxH3A6Eu0cVYYOKZvvHAzxF2/yxS76igBfK9rDGwkEXjVMp6wCqrrrZXem
         /V6aHI0gE9mib+hLd0fwhxIhsLV6eODUix5k9N5ug5mMPvp+ZAapmx5zojpsWNNzrR8Y
         d28EZvEhsY/ALFVctAdatoH8Dd6jg3Mq7vT6pO8I8XkrzSWLZsBQmZIJbOjXYCOdRaK+
         zHsfCMoctiZ5gZtYxcC3U7pvlZxVn9ylTn8VOmjJmqypWOMJhFEytY4d+p/MaJdQpN/R
         2n0SemJZsHmtgUSu3PT9Rm2e5EV7S74xj4xZp0eBjHS1xSBz80H7jDkILhtfijyIEyzB
         uwFA==
X-Forwarded-Encrypted: i=1; AJvYcCVfLWD0RYqnVPHBW5igo7klqeYSxGsYyC/62agwEbh0ptXwHAfBgCp3b0XmpGI1YvLvU0ZICS7aIdp8tj6Y3viBAFtvfg+q0iq4vw==
X-Gm-Message-State: AOJu0YwQi9KZzZbaphkAjZdfZgt0/g8jr+ZY/iswb43dUgc/3Gf39E5j
	RrP2bJcS9GiZfn2Ffn+KUmaEZzmthrK8LHNlDBowMpOIxjUY3SRcfuNeTKZETgU=
X-Google-Smtp-Source: AGHT+IG4OgNpuMY0dLHLNzZ2D0uwJKaftXcMDRGcuAtARNo9vSYCff1KNvpkujqzuVFqZqrzx8Ap7A==
X-Received: by 2002:a50:d541:0:b0:579:c37e:976 with SMTP id 4fb4d7f45d1cf-57a365c9e33mr7168527a12.36.1717418203498;
        Mon, 03 Jun 2024 05:36:43 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31bbbe18sm5197005a12.37.2024.06.03.05.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 05:36:42 -0700 (PDT)
Date: Mon, 3 Jun 2024 14:36:42 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	conor.dooley@microchip.com, anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu, 
	heiko@sntech.de, charlie@rivosinc.com, David.Laight@aculab.com, 
	parri.andrea@gmail.com, luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 0/6] riscv: Apply Zawrs when available
Message-ID: <20240603-f8650a2cc220b73cf52d77c7@orel>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>

Hi Palmer,

I submit our concerns of wrs.nto to RVI ARC for consideration. They
discussed it but don't believe there's a need for concern. The
expectation is that there will always be enough interrupt activity
and that those interrupts with activity will not likely be locally
disabled.

Can we consider this series for 6.10?

Thanks,
drew

On Fri, Apr 26, 2024 at 12:08:20PM GMT, Andrew Jones wrote:
> Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
> meant to allow the hart to enter a low-power state while waiting on a
> store to a memory location. The instructions also both wait an
> implementation-defined "short" duration (unless the implementation
> terminates the stall for another reason). The difference is that while
> wrs.sto will terminate when the duration elapses, wrs.nto, depending on
> configuration, will either just keep waiting or an ILL exception will be
> raised. Linux will use wrs.nto, so if platforms have an implementation
> which falls in the "just keep waiting" category (which is not expected),
> then it should _not_ advertise Zawrs in the hardware description.
> 
> Like wfi (and with the same {m,h}status bits to configure it), when
> wrs.nto is configured to raise exceptions it's expected that the higher
> privilege level will see the instruction was a wait instruction, do
> something, and then resume execution following the instruction. For
> example, KVM does configure exceptions for wfi (hstatus.VTW=1) and
> therefore also for wrs.nto. KVM does this for wfi since it's better to
> allow other tasks to be scheduled while a VCPU waits for an interrupt.
> For waits such as those where wrs.nto/sto would be used, which are
> typically locks, it is also a good idea for KVM to be involved, as it
> can attempt to schedule the lock holding VCPU.
> 
> This series starts with Christoph's addition of the riscv
> smp_cond_load_relaxed function which applies wrs.sto when available.
> That patch has been reworked to use wrs.nto and to use the same approach
> as Arm for the wait loop, since we can't have arbitrary C code between
> the load-reserved and the wrs. Then, hwprobe support is added (since the
> instructions are also usable from usermode), and finally KVM is
> taught about wrs.nto, allowing guests to see and use the Zawrs
> extension.
> 
> We still don't have test results from hardware, and it's not possible to
> prove that using Zawrs is a win when testing on QEMU, not even when
> oversubscribing VCPUs to guests. However, it is possible to use KVM
> selftests to force a scenario where we can prove Zawrs does its job and
> does it well. [4] is a test which does this and, on my machine, without
> Zawrs it takes 16 seconds to complete and with Zawrs it takes 0.25
> seconds.
> 
> This series is also available here [1]. In order to use QEMU for testing
> a build with [2] is needed. In order to enable guests to use Zawrs with
> KVM using kvmtool, the branch at [3] may be used.
> 
> [1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3/
> [2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventanamicro.com/
> [3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
> [4] https://github.com/jones-drew/linux/commit/cb2beccebcece10881db842ed69bdd5715cfab5d
> 
> Thanks,
> drew
> 
> v3:
>  - Moved comment about expected termination from the DT binding text
>    to a code comment.
> 
> v2:
>  - Added DT bindings patch with additional Linux specifications due
>    to wrs.nto potentially never terminating, as suggested by Palmer
>  - Added patch to share pause insn definition
>  - Rework main Zawrs support patch to use Arm approach (which is
>    also the approach that Andrea Parri suggested)
>  - Dropped the riscv implementation of smp_cond_load_acquire().
>    afaict, the generic implementation, which will use the riscv
>    implementation of smp_cond_load_relaxed() is sufficient for riscv.
>  - The rework was large enough (IMO) to drop Heiko's s-o-b and to
>    add myself as a co-developer
> 
> 
> Andrew Jones (5):
>   riscv: Provide a definition for 'pause'
>   dt-bindings: riscv: Add Zawrs ISA extension description
>   riscv: hwprobe: export Zawrs ISA extension
>   KVM: riscv: Support guest wrs.nto
>   KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
> 
> Christoph M??llner (1):
>   riscv: Add Zawrs support for spinlocks
> 
>  Documentation/arch/riscv/hwprobe.rst          |  4 ++
>  .../devicetree/bindings/riscv/extensions.yaml |  7 +++
>  arch/riscv/Kconfig                            | 20 ++++---
>  arch/riscv/Makefile                           |  3 -
>  arch/riscv/include/asm/barrier.h              | 45 +++++++++-----
>  arch/riscv/include/asm/cmpxchg.h              | 58 +++++++++++++++++++
>  arch/riscv/include/asm/hwcap.h                |  1 +
>  arch/riscv/include/asm/insn-def.h             |  4 ++
>  arch/riscv/include/asm/kvm_host.h             |  1 +
>  arch/riscv/include/asm/vdso/processor.h       |  8 +--
>  arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
>  arch/riscv/include/uapi/asm/kvm.h             |  1 +
>  arch/riscv/kernel/cpufeature.c                |  1 +
>  arch/riscv/kernel/sys_hwprobe.c               |  1 +
>  arch/riscv/kvm/vcpu.c                         |  1 +
>  arch/riscv/kvm/vcpu_insn.c                    | 15 +++++
>  arch/riscv/kvm/vcpu_onereg.c                  |  2 +
>  .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
>  18 files changed, 146 insertions(+), 31 deletions(-)
> 
> -- 
> 2.44.0
> 

