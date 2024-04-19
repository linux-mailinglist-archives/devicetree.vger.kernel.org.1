Return-Path: <devicetree+bounces-60922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB50B8AAFC2
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 664A81F21DFE
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6898912A151;
	Fri, 19 Apr 2024 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="C7WM6U+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86771200D3
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534807; cv=none; b=gvdN4gH0hZiSeAdEB+WGQmyE3+2LO0c7WmvS8YdwGYKcvq5FZrTTsLXXyg2JQXSZgYoTMuLHM+57pkOPlQpl68mxA7NsYQ1dbIYaItkEbjMQq5oG45uMPH//RVV3lS/fzTRR8XxOu+syjrBPwcX3ICkUzkWV1f2tpdPwDquqhyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534807; c=relaxed/simple;
	bh=xfzH6BZrc06a1HLflSF6QEIDYR7DUr3ByDtP2wGK+7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-type; b=euTPsPXvPEPEs6XXvPrFmaFcFkftzcjlnzBBIUyC1zGZr4iReI5c3JOiwjnAITWpeyH2Uc+6hH60JeFCMGuzxjothSKpileFd+PUlgbozauDMR978NaQctuJHk1md5JbuvrVt9qr4dyU+ODQ5tzU91qHU6Jrj19p3VmWp5ur2qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=C7WM6U+8; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51967f75729so2401718e87.0
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534803; x=1714139603; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vygojg6kK2t93LE6Jccui0sWTwt0Dla9UnPOwn3MABA=;
        b=C7WM6U+822osLeE7GZj2fZXKOvtKQ9QQ2wNttnc+Sh7CcKVn4GOOMA8RX+YPmhpUux
         3I4m/HvLh8WnZ6cATSjuQfL44q7HpJQkUNbAf6KXn7sfawpVexE7oWMUpx3cSh7gCrvd
         Ku5dRiNC7DwFKuKmjqX1KjeDvsmqI7b349ywIPccgZrNRYAJXWpSW6eKUGPPIIuYRB6s
         slsXjyMB54loulzQAchlsYbot0u8gh6MwxJ311BEXqyixLBObfICXGUFtNyfswCxFio+
         CFJBeBH8TUd4qjdmp3K8Bf+I98OfF0u7K8Ryvx7dPj2W0Ppx1Hbj1Xuo4N2S3uwI8cN5
         NUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534803; x=1714139603;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vygojg6kK2t93LE6Jccui0sWTwt0Dla9UnPOwn3MABA=;
        b=NOGd/lDj498dg3f5TczuyfYsSAQCWxL/p53XYFpL3sNHP3S2+Vzi4OCf1zbMgWy6/e
         JBcGU++sVgCZH8Y/OpKjNCaMKUa2RXtcM1JjUmiL8WEjJZu9pJjv6sIbx8c+s/KUn/mV
         2U1P6Wra4gZ0Rvf9xEcfG3sxCYVTuojb79QXcFJSPHRXeXVKKbwlm2Pfk3hFOjOTVZgt
         SHDoycd1h9ceK9/oaIAv+8PD9Qyq0XK1ByJbFbxW9RHtJf5fgBOxn3RK5N07yXXpzsgD
         8jguIEEzHnu7kjRelqxIOBnUi7lr2lHmQl/OcIEHpZ+qnKSOkrEcAe3DkRQ/aNg2OP3d
         7qEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPYkorRhcid4pEQe65u7irg+PytWrtdrxv1p86y/86VkSDJJUhVVAu/6MEr9H9ukZ1RYpdkbDiAQBgk9eza5R+hMC4Eha+ZVqCtA==
X-Gm-Message-State: AOJu0YyZWD/PxmjLDDgE8GA/T6VGIB5uVtaHanfmeJERYBrTW4TdEesi
	60qGr5Mk4HYW8M4R2ZDMPpKaO9rCrQCNM4xcXiN2+Y0ICGA1ZpXRhil48CFQZjU=
X-Google-Smtp-Source: AGHT+IFFzEV9Mdl8G4cryaHfYH+SN86dJZ7B9fY5aMYsjcaqBCQ0YnmeqoSttiNY9Cm5AgowfnUBMg==
X-Received: by 2002:ac2:5388:0:b0:519:14a2:72da with SMTP id g8-20020ac25388000000b0051914a272damr1453236lfh.67.1713534803347;
        Fri, 19 Apr 2024 06:53:23 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id lj26-20020a170906f9da00b00a5254ec731esm2242648ejb.176.2024.04.19.06.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:22 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 0/6] riscv: Apply Zawrs when available
Date: Fri, 19 Apr 2024 15:53:22 +0200
Message-ID: <20240419135321.70781-8-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-type: text/plain
Content-Transfer-Encoding: 8bit

Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
meant to allow the hart to enter a low-power state while waiting on a
store to a memory location. The instructions also both wait an
implementation-defined "short" duration (unless the implementation
terminates the stall for another reason). The difference is that while
wrs.sto will terminate when the duration elapses, wrs.nto, depending on
configuration, will either just keep waiting or an ILL exception will be
raised. Linux will use wrs.nto, so if platforms have an implementation
which falls in the "just keep waiting" category, then it should _not_
advertise Zawrs in the hardware description. Text to that effect has
been added to the Zawrs DT definition.

Like wfi (and with the same {m,h}status bits to configure it), when
wrs.nto is configured to raise exceptions it's expected that the higher
privilege level will see the instruction was a wait instruction, do
something, and then resume execution following the instruction. For
example, KVM does configure exceptions for wfi (hstatus.VTW=1) and
therefore also for wrs.nto. KVM does this for wfi since it's better to
allow other tasks to be scheduled while a VCPU waits for an interrupt.
For waits such as those where wrs.nto/sto would be used, which are
typically locks, it is also a good idea for KVM to be involved, as it
can attempt to schedule the lock holding VCPU.

This series starts with Christoph's addition of riscv smp_cond_load*
functions which apply wrs.sto when available. That patch has been
reworked to use wrs.nto and to use the same approach as Arm for the
wait loop, since we can't have arbitrary C code between the load-
reserved and the wrs. Then, hwprobe support is added (since the
instructions are also usable from usermode), and finally KVM is
taught about wrs.nto, allowing guests to see and use the Zawrs
extension.

We still don't have test results from hardware, and it's not possible to
prove that using Zawrs is a win when testing on QEMU, not even when
oversubscribing VCPUs to guests. However, it is possible to use KVM
selftests to force a scenario where we can prove Zawrs does its job and
does it well. [4] is a test which does this and, on my machine, without
Zawrs it takes 16 seconds to complete and with Zawrs it takes 0.25
seconds.

This series is also available here [1]. In order to use QEMU for testing
a build with [2] is needed. In order to enable guests to use Zawrs with
KVM using kvmtool, the branch at [3] may be used.

[1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v2/
[2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventanamicro.com/
[3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
[4] https://github.com/jones-drew/linux/commit/9311702bcd118bdbfa8b9be4a8ec355c40559499

Thanks,
drew

v2:
 - Added DT bindings patch with additional Linux specifications due
   to wrs.nto potentially never terminating, as suggested by Palmer
 - Added patch to share pause insn definition
 - Rework main Zawrs support patch to use Arm approach (which is
   also the approach that Andrea Parri suggested)
 - Dropped the riscv implementation of smp_cond_load_acquire().
   afaict, the generic implementation, which will use the riscv
   implementation of smp_cond_load_relaxed() is sufficient for riscv.
 - The rework was large enough (IMO) to drop Heiko's s-o-b and to
   add myself as a co-developer


Andrew Jones (5):
  riscv: Provide a definition for 'pause'
  dt-bindings: riscv: Add Zawrs ISA extension description
  riscv: hwprobe: export Zawrs ISA extension
  KVM: riscv: Support guest wrs.nto
  KVM: riscv: selftests: Add Zawrs extension to get-reg-list test

Christoph Müllner (1):
  riscv: Add Zawrs support for spinlocks

 Documentation/arch/riscv/hwprobe.rst          |  4 ++
 .../devicetree/bindings/riscv/extensions.yaml | 12 +++++
 arch/riscv/Kconfig                            | 20 +++++---
 arch/riscv/Makefile                           |  3 --
 arch/riscv/include/asm/barrier.h              | 45 ++++++++++------
 arch/riscv/include/asm/cmpxchg.h              | 51 +++++++++++++++++++
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             |  4 ++
 arch/riscv/include/asm/kvm_host.h             |  1 +
 arch/riscv/include/asm/vdso/processor.h       |  8 +--
 arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
 arch/riscv/include/uapi/asm/kvm.h             |  1 +
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kernel/sys_hwprobe.c               |  1 +
 arch/riscv/kvm/vcpu.c                         |  1 +
 arch/riscv/kvm/vcpu_insn.c                    | 15 ++++++
 arch/riscv/kvm/vcpu_onereg.c                  |  2 +
 .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
 18 files changed, 144 insertions(+), 31 deletions(-)

-- 
2.44.0


