Return-Path: <devicetree+bounces-62973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4308B34EF
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23C4C288E5D
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1798142645;
	Fri, 26 Apr 2024 10:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="keisWsME"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA1213FD9B
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126104; cv=none; b=WiaGolTuVOWrt7WCjMuDx6PIV4FusZzW2qh7Y0gCUfuY3l2BiqqaMScSsb53k5W+lhf7h5l62YoQdS5WLMVhe9vYHEmsjhoyJVbVuscaG+OyVNnrAyQaSzBq8PcxY0qLjdMBkKV7a5tCVjkz+NfnZOqfd0/+5rVTDout3kyGWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126104; c=relaxed/simple;
	bh=Gbm4/zroMd4mBc682eWK1OQCnvXQa9585z8cjx9AtrI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-type; b=TwBmW6epf+DnOPmcl9EaTOSDvq7MHcaPA50vXoY21mURzA+PminYn0dosKLOn5nWCt5ZQy9B4H8hUSmpBJByV3b1MLmwWDIKe12EZCgFUY2RAKzkPWBauAcTez4zEICsabgbNlWda94uZOn44HB1pn9EFaxeJmyUOkXP6nHEvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=keisWsME; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-346b96f1483so1028400f8f.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126101; x=1714730901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hbx1On+TTYqeoURSkZkCrdGwttFNEWRGbinjc3HE+Hk=;
        b=keisWsMEP1apsuukqGqBfYHdUw2oPGVp1iVV7jdls5fBjDiqEriybo4TvWAcscIV8x
         sTLZ4kVVsNySMt980I5kaoMZHoVXq3QdRIDPgeTUC2ngbEf1ayfmFxghertp9rIac5xT
         KhfDAXaewykBQmZ5CQ1gINQPKIXjfzb/g55EMpdCurJV86l1YZxjTGpKxY+SNu+YO3Ji
         ihRh4xmA9g38MP3smOaVCr7FcT2NctUiWErEGeBHyS6SogW1Q7MwTfsfRcCyqPq53kqe
         fG8cAewOKF6QPFAZsuAVkmEfMFLBC3ejNgeRouHQk5exDGkZ8W7etfI8nnfumhD0yuj+
         H0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126101; x=1714730901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbx1On+TTYqeoURSkZkCrdGwttFNEWRGbinjc3HE+Hk=;
        b=N4I2w+oj6uwpsUFHSDI/LH5N3YjcGC25G7ljCsAPfoAgXValZMsILC+4j39/64GTkL
         44VdBQM8HSsh0lZDlyWU4y1tm5pmgQVZoOTxDDa5oS6OItwa0JLtss3RrgZ1FjEbKjCl
         5Idaf5v6W1K5WV949dA1BCdiv9Ob0CIS4tXLDLz4TNPSKq4K0X6Dc32HUfbj+dqnTrJo
         CkbrAevJHtB6AwNC+Jh4u7AcZv2QP2ClzQn2Cv+KVANM5atKrMn9fmyv0diE3CYN8vr2
         hsCkKgdfaNgzCE5naAT6sLJyNKqWIZV2ko5cqdIqNt7EGkl50RT6EjsWUCe1hfSwKxSt
         JAJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqghBTU4j7GD74p1NjjlWqGjea1Se8WLXICT3GwAt3wth/dwYJ6ON5hGjrxewpB8h3wPMvapB3iA9m2sEZlPtTvS+uBmknp+33iA==
X-Gm-Message-State: AOJu0YzaHW0+TzbduZmTPdns4OEcqpNRAd/qTRAt/fzql5targ5iEwFM
	cqkUQ7IZiLoZTI/oPF0TJRn8yhjN0TxDiDC3WX4/8Y0CjnS6daa2iAFTJ7FAxhE=
X-Google-Smtp-Source: AGHT+IFq1PBLGeh1M4r+k/wSmDqxEHo8VdDIM9MYkH3T6k1cJcTZz/q7QYNfgMeHr+ScXMDq7gOpIw==
X-Received: by 2002:a5d:6b0d:0:b0:34c:4c67:c798 with SMTP id v13-20020a5d6b0d000000b0034c4c67c798mr1551849wrw.4.1714126101328;
        Fri, 26 Apr 2024 03:08:21 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id j13-20020a056000124d00b0034b7906c716sm8823766wrx.106.2024.04.26.03.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:20 -0700 (PDT)
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
Subject: [PATCH v3 0/6] riscv: Apply Zawrs when available
Date: Fri, 26 Apr 2024 12:08:20 +0200
Message-ID: <20240426100820.14762-8-ajones@ventanamicro.com>
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
which falls in the "just keep waiting" category (which is not expected),
then it should _not_ advertise Zawrs in the hardware description.

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

This series starts with Christoph's addition of the riscv
smp_cond_load_relaxed function which applies wrs.sto when available.
That patch has been reworked to use wrs.nto and to use the same approach
as Arm for the wait loop, since we can't have arbitrary C code between
the load-reserved and the wrs. Then, hwprobe support is added (since the
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

[1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3/
[2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventanamicro.com/
[3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
[4] https://github.com/jones-drew/linux/commit/cb2beccebcece10881db842ed69bdd5715cfab5d

Thanks,
drew

v3:
 - Moved comment about expected termination from the DT binding text
   to a code comment.

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
 .../devicetree/bindings/riscv/extensions.yaml |  7 +++
 arch/riscv/Kconfig                            | 20 ++++---
 arch/riscv/Makefile                           |  3 -
 arch/riscv/include/asm/barrier.h              | 45 +++++++++-----
 arch/riscv/include/asm/cmpxchg.h              | 58 +++++++++++++++++++
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             |  4 ++
 arch/riscv/include/asm/kvm_host.h             |  1 +
 arch/riscv/include/asm/vdso/processor.h       |  8 +--
 arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
 arch/riscv/include/uapi/asm/kvm.h             |  1 +
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kernel/sys_hwprobe.c               |  1 +
 arch/riscv/kvm/vcpu.c                         |  1 +
 arch/riscv/kvm/vcpu_insn.c                    | 15 +++++
 arch/riscv/kvm/vcpu_onereg.c                  |  2 +
 .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
 18 files changed, 146 insertions(+), 31 deletions(-)

-- 
2.44.0


