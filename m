Return-Path: <devicetree+bounces-80310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB0918594
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:19:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCD381F2743A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA523186E33;
	Wed, 26 Jun 2024 15:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CjcNP8ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF455186283
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415188; cv=none; b=U+IhBkN7t7pFAMqnxmKSFHoC2UgW50zvHujkJH/x6USbIIvKw8MbWwmPD6Lmkrb1/u9WJeNseNR26UqaLTSs7tlv7Yh1LJG0X6qf0fJNCl8CNtprT2uZoMrpjqSabLiXx/NrLUc4YTJIKBdo3yybKEeiDM3rJSerUCO8fcLxCZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415188; c=relaxed/simple;
	bh=WSierHZS5fH17sxxylaxM4uyZ/3uOFOxwutVg+SWvLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FOVw6m1fCnHQpEBBS9T4iUxF9OTbjw0l3tOwf+3fUe+D12UTTk2rAc3UHOc/V5mn0LEW3Hdy92OMz8V/dEuuIcj9hqzj3h9itwLfnqYXNgNE9b/g6xA4gKXyS2ZiR9z7qwAOVerma2WvydNXs2cZMDegH8n1z6bFO2zyGk9lqqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CjcNP8ff; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52cdebf9f53so4323164e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1719415185; x=1720019985; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6iEOK15WI1rhgNU2zYHVUeu6QEahV+IbtVceeygeaJM=;
        b=CjcNP8ff60MLjvEMeDj7i2EYuXly1LP6qQlu4QcV0bFr23xL95SyXO/d1tlgjSCl9G
         Q19XbJ6uWutTYE23Wan+U2oiFqM+UxLWj8SUuXnp/+TGPO24emCTwCpp1FLdbR2LFrc5
         EW1mu9QnYtlDsAmwJZ6UQvmCKBftjzgOTnaGKWHMhBOmOM4yKHKym/9P94txFS3Ltcr7
         whiNzjrm3m1OO/GGa7rvb/JivmMTI2my7FjW9DmkTEQpDU75tp1HOF4pKt27DoeIjW0f
         CkHcqqtkkCtaGXvt8kjVsNHoJydpEe8ssgIOM3ylbsNdJy9T2Mjk7KKqZViIxqBixGU3
         8CrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719415185; x=1720019985;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6iEOK15WI1rhgNU2zYHVUeu6QEahV+IbtVceeygeaJM=;
        b=fawO2FvRYa+KGkwBARreISIgaJc+dWOGjwnvac6sWavDQd4Mj66sIRNNVmStMJ5sX6
         u1wRq/E1f4ofxZmvDEAwvpHOP1JKsYM3VkjzHgQ/3ts8fNhzpwIHlmN9A3qpLYaIJT7N
         glO95ztsvYMj6S2vHHsO+VC6zPbFDRbo//Zm6sVkCZatbNInLQGgRIXWgq0XB8yHqw/u
         7EwVyGUshM8WoEom0pB12ngnPPl8IsHLS7EQilpKcnj2M+1FYEtlp95/2giQidPiZiAI
         5kYiZgZiVgYn9IIfJYoGLFj73zJwOCOwJHsascckwuey8dRq1b9cNloThfYZVzYBtbNA
         TN0w==
X-Forwarded-Encrypted: i=1; AJvYcCWaGS8N5Ztnco8UCEWwVrswXsjeD+Kr94oIuNo/+rLBgzkNX1jd/4vKH3VwB3nQvHtgpjBAxda79+iWwR8hKmsIvtFFzDJuGvBJ4Q==
X-Gm-Message-State: AOJu0YwylQJh4BtcNpCjIZGyoagh7M2veK99vjxjoug0h2U9ogE/x+DX
	LpxQwn7a9eZ6Fd+VfzMYTPwwxm8/S5FyK6AMU4rYTdRnxDJlQ2BkQifx10zbk1c=
X-Google-Smtp-Source: AGHT+IFXzn4yvytk0IjlfPpV2BBuDZnWbO0mSlcdFMRLi4Z2QsSrcJvzWwqrxGtz8uVDJsrNTkghyQ==
X-Received: by 2002:a19:384d:0:b0:52c:8abe:51fb with SMTP id 2adb3069b0e04-52ce063e56bmr6713305e87.10.1719415183852;
        Wed, 26 Jun 2024 08:19:43 -0700 (PDT)
Received: from localhost ([194.25.246.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c823c1c3sm29694545e9.3.2024.06.26.08.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 08:19:43 -0700 (PDT)
Date: Wed, 26 Jun 2024 17:19:42 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, 
	Conor Dooley <conor.dooley@microchip.com>, anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu, 
	Heiko Stuebner <heiko@sntech.de>, Charlie Jenkins <charlie@rivosinc.com>, David.Laight@aculab.com, 
	parri.andrea@gmail.com, luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 0/6] riscv: Apply Zawrs when available
Message-ID: <20240626-203887902f79278e20134dea@orel>
References: <20240603-f8650a2cc220b73cf52d77c7@orel>
 <mhng-4fc810f5-fd3a-44f3-bd78-9a6b7bf2ab77@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-4fc810f5-fd3a-44f3-bd78-9a6b7bf2ab77@palmer-ri-x1c9>

On Wed, Jun 26, 2024 at 07:34:48AM GMT, Palmer Dabbelt wrote:
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

Thanks Palmer!

drew


> 
> > 
> > Thanks,
> > drew
> > 
> > On Fri, Apr 26, 2024 at 12:08:20PM GMT, Andrew Jones wrote:
> > > Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
> > > meant to allow the hart to enter a low-power state while waiting on a
> > > store to a memory location. The instructions also both wait an
> > > implementation-defined "short" duration (unless the implementation
> > > terminates the stall for another reason). The difference is that while
> > > wrs.sto will terminate when the duration elapses, wrs.nto, depending on
> > > configuration, will either just keep waiting or an ILL exception will be
> > > raised. Linux will use wrs.nto, so if platforms have an implementation
> > > which falls in the "just keep waiting" category (which is not expected),
> > > then it should _not_ advertise Zawrs in the hardware description.
> > > 
> > > Like wfi (and with the same {m,h}status bits to configure it), when
> > > wrs.nto is configured to raise exceptions it's expected that the higher
> > > privilege level will see the instruction was a wait instruction, do
> > > something, and then resume execution following the instruction. For
> > > example, KVM does configure exceptions for wfi (hstatus.VTW=1) and
> > > therefore also for wrs.nto. KVM does this for wfi since it's better to
> > > allow other tasks to be scheduled while a VCPU waits for an interrupt.
> > > For waits such as those where wrs.nto/sto would be used, which are
> > > typically locks, it is also a good idea for KVM to be involved, as it
> > > can attempt to schedule the lock holding VCPU.
> > > 
> > > This series starts with Christoph's addition of the riscv
> > > smp_cond_load_relaxed function which applies wrs.sto when available.
> > > That patch has been reworked to use wrs.nto and to use the same approach
> > > as Arm for the wait loop, since we can't have arbitrary C code between
> > > the load-reserved and the wrs. Then, hwprobe support is added (since the
> > > instructions are also usable from usermode), and finally KVM is
> > > taught about wrs.nto, allowing guests to see and use the Zawrs
> > > extension.
> > > 
> > > We still don't have test results from hardware, and it's not possible to
> > > prove that using Zawrs is a win when testing on QEMU, not even when
> > > oversubscribing VCPUs to guests. However, it is possible to use KVM
> > > selftests to force a scenario where we can prove Zawrs does its job and
> > > does it well. [4] is a test which does this and, on my machine, without
> > > Zawrs it takes 16 seconds to complete and with Zawrs it takes 0.25
> > > seconds.
> > > 
> > > This series is also available here [1]. In order to use QEMU for testing
> > > a build with [2] is needed. In order to enable guests to use Zawrs with
> > > KVM using kvmtool, the branch at [3] may be used.
> > > 
> > > [1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3/
> > > [2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventanamicro.com/
> > > [3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
> > > [4] https://github.com/jones-drew/linux/commit/cb2beccebcece10881db842ed69bdd5715cfab5d
> > > 
> > > Thanks,
> > > drew
> > > 
> > > v3:
> > >  - Moved comment about expected termination from the DT binding text
> > >    to a code comment.
> > > 
> > > v2:
> > >  - Added DT bindings patch with additional Linux specifications due
> > >    to wrs.nto potentially never terminating, as suggested by Palmer
> > >  - Added patch to share pause insn definition
> > >  - Rework main Zawrs support patch to use Arm approach (which is
> > >    also the approach that Andrea Parri suggested)
> > >  - Dropped the riscv implementation of smp_cond_load_acquire().
> > >    afaict, the generic implementation, which will use the riscv
> > >    implementation of smp_cond_load_relaxed() is sufficient for riscv.
> > >  - The rework was large enough (IMO) to drop Heiko's s-o-b and to
> > >    add myself as a co-developer
> > > 
> > > 
> > > Andrew Jones (5):
> > >   riscv: Provide a definition for 'pause'
> > >   dt-bindings: riscv: Add Zawrs ISA extension description
> > >   riscv: hwprobe: export Zawrs ISA extension
> > >   KVM: riscv: Support guest wrs.nto
> > >   KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
> > > 
> > > Christoph M??llner (1):
> > >   riscv: Add Zawrs support for spinlocks
> > > 
> > >  Documentation/arch/riscv/hwprobe.rst          |  4 ++
> > >  .../devicetree/bindings/riscv/extensions.yaml |  7 +++
> > >  arch/riscv/Kconfig                            | 20 ++++---
> > >  arch/riscv/Makefile                           |  3 -
> > >  arch/riscv/include/asm/barrier.h              | 45 +++++++++-----
> > >  arch/riscv/include/asm/cmpxchg.h              | 58 +++++++++++++++++++
> > >  arch/riscv/include/asm/hwcap.h                |  1 +
> > >  arch/riscv/include/asm/insn-def.h             |  4 ++
> > >  arch/riscv/include/asm/kvm_host.h             |  1 +
> > >  arch/riscv/include/asm/vdso/processor.h       |  8 +--
> > >  arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
> > >  arch/riscv/include/uapi/asm/kvm.h             |  1 +
> > >  arch/riscv/kernel/cpufeature.c                |  1 +
> > >  arch/riscv/kernel/sys_hwprobe.c               |  1 +
> > >  arch/riscv/kvm/vcpu.c                         |  1 +
> > >  arch/riscv/kvm/vcpu_insn.c                    | 15 +++++
> > >  arch/riscv/kvm/vcpu_onereg.c                  |  2 +
> > >  .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
> > >  18 files changed, 146 insertions(+), 31 deletions(-)
> > > 
> > > --
> > > 2.44.0
> > > 

