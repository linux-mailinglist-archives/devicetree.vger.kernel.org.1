Return-Path: <devicetree+bounces-80269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0183918477
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57DC228518D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6F06186283;
	Wed, 26 Jun 2024 14:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="YYwSSFhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BB81850A9
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719412492; cv=none; b=mGaUPFyub97ZJXdfhdhEdTbPoOTWgj5Vupp5MqD+/TXnRfLQlSBVgWud5LaX6X+drhNRRGVdESv9I456gaDJZNf5B898THcRHqHucqdmXWdPoM4BUKsNWvKU4aiUmKJKY+xN1ZXWILaZkJzIW2dIG+IifO3BhZB5PN5hUw4kkCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719412492; c=relaxed/simple;
	bh=mZKI4dctIY+6KIWpJySI428TFcbqxKHAZuhc6zdYtak=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=MK3SWBrd3wDAZlVG/na8X6R5CSg3/1CmNmDa3p3kPT30vOmuvxhVpXBke9j94pBXt8bsfFq9secHDbkpaWNUJThLNF7JJ2cizngdwrnxUutd16/2XkBy9x75UD+0mjB8X1UzDwZqtNFM4sRk67xDOgUVmrGiVdlZGgqnTzCSatU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=YYwSSFhS; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1f6a837e9a3so41886725ad.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1719412490; x=1720017290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L5VNvcdr+GOMqd3AUz4LJM0Lc5c5hxDnc0M3F7lKhOo=;
        b=YYwSSFhSA9k50t6lGKQyCaCgusDa5ehqlIN4PkOaA9Nyg6trdF1QyKw9nRtIqA6mdN
         iiOpX4uUBLR6R//KXh3YqEvdVBIvOoRIqVfFsjUji7sObBxxBjpsQWtlkVyiX4vD6vM0
         OwQ7UfUqVRG2h112VbnG77Uyfx6QYxhFwGjhbrNsDIwX3k9qrjfa7jxp1goAJG9DBYCp
         uRGqzPwx0oVo3Go4ddKcRJ7ACH7PCGmU62a/bhMh6nlt7h5itGa6tXykDLz8wVW2jIMz
         qngwYvKtbPp8DNWcqOfSeERwpf/nVjmekEX/T/YwnhbJNszvd4Xr0LiZ86x179lUuiMJ
         zDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719412490; x=1720017290;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L5VNvcdr+GOMqd3AUz4LJM0Lc5c5hxDnc0M3F7lKhOo=;
        b=UbK3iQ8pxAomPVo1TeV8wvXuMPYA52F1Y/qx5ZX+DgOxcFwSselo+A9lHupmQHfWB1
         YmCVzNPD+uWFCOkDv8+vut9ylYenKUYiIvUB0e/eQKRgYDpKh2GcItFQPHrzH91jUmvB
         3i3SsEiWSQx4/1JsWuCJVZaGRFYKI7H/wUZE/fQyQeQDfT62nt80QQjcXbPfkVra66QU
         wuvWGwZclWw+Oe0NlH8fNcYON1YqE6bbxb0dzzp8a//2jjcG74d3i5/2OOHXLYWf7pAb
         9SKnL0Ld8qsuD3DHKBGmJ0/XvTU9CqTQhBdddhY2J3mntu7+8PdhoKiBz0mJBZF8l9FB
         SN1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWtXmTCMNmt8CnE9FM4G2aJqUQ9Aw5qmcrEYkAiigv0OxPydef4QPBLS2gvA7Pcobc4R47R5F5CmvbMRgG7aNzbvwS7+G7xq6T3Kg==
X-Gm-Message-State: AOJu0YxVhwqpBrWr2fr0i/F2pGpAXMnMUJVpOQBzHoRE81ay1xiW2OUi
	7NY9phzTR5KC52gpd4faEU+8V6LI0LYjVRdeVFr/C6YLgr1WT4flxCe+uLITGuY=
X-Google-Smtp-Source: AGHT+IEp/4UB5co/CZdqC2G70NzN1gU2hqU786Xmr2xKPp4w7OHaZTx7EuHkmiLRgxOsSNiTBde+WA==
X-Received: by 2002:a17:902:ccce:b0:1fa:12b4:587c with SMTP id d9443c01a7336-1fa240c50c4mr121485065ad.56.1719412489584;
        Wed, 26 Jun 2024 07:34:49 -0700 (PDT)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fa7f7c8ee1sm23004635ad.219.2024.06.26.07.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:34:48 -0700 (PDT)
Date: Wed, 26 Jun 2024 07:34:48 -0700 (PDT)
X-Google-Original-Date: Wed, 26 Jun 2024 07:34:47 PDT (-0700)
Subject:     Re: [PATCH v3 0/6] riscv: Apply Zawrs when available
In-Reply-To: <20240603-f8650a2cc220b73cf52d77c7@orel>
CC: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
  devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  Conor Dooley <conor.dooley@microchip.com>, anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu,
  Heiko Stuebner <heiko@sntech.de>, Charlie Jenkins <charlie@rivosinc.com>, David.Laight@aculab.com,
  parri.andrea@gmail.com, luxu.kernel@bytedance.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ajones@ventanamicro.com
Message-ID: <mhng-4fc810f5-fd3a-44f3-bd78-9a6b7bf2ab77@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Mon, 03 Jun 2024 05:36:42 PDT (-0700), ajones@ventanamicro.com wrote:
> Hi Palmer,
>
> I submit our concerns of wrs.nto to RVI ARC for consideration. They
> discussed it but don't believe there's a need for concern. The
> expectation is that there will always be enough interrupt activity
> and that those interrupts with activity will not likely be locally
> disabled.
>
> Can we consider this series for 6.10?

Sorry I forgot about this one, Anup just brought it up in the patchwork 
meeting.  He's going to ack the KVM bits, then I'll pick it up.

>
> Thanks,
> drew
>
> On Fri, Apr 26, 2024 at 12:08:20PM GMT, Andrew Jones wrote:
>> Zawrs provides two instructions (wrs.nto and wrs.sto), where both are
>> meant to allow the hart to enter a low-power state while waiting on a
>> store to a memory location. The instructions also both wait an
>> implementation-defined "short" duration (unless the implementation
>> terminates the stall for another reason). The difference is that while
>> wrs.sto will terminate when the duration elapses, wrs.nto, depending on
>> configuration, will either just keep waiting or an ILL exception will be
>> raised. Linux will use wrs.nto, so if platforms have an implementation
>> which falls in the "just keep waiting" category (which is not expected),
>> then it should _not_ advertise Zawrs in the hardware description.
>>
>> Like wfi (and with the same {m,h}status bits to configure it), when
>> wrs.nto is configured to raise exceptions it's expected that the higher
>> privilege level will see the instruction was a wait instruction, do
>> something, and then resume execution following the instruction. For
>> example, KVM does configure exceptions for wfi (hstatus.VTW=1) and
>> therefore also for wrs.nto. KVM does this for wfi since it's better to
>> allow other tasks to be scheduled while a VCPU waits for an interrupt.
>> For waits such as those where wrs.nto/sto would be used, which are
>> typically locks, it is also a good idea for KVM to be involved, as it
>> can attempt to schedule the lock holding VCPU.
>>
>> This series starts with Christoph's addition of the riscv
>> smp_cond_load_relaxed function which applies wrs.sto when available.
>> That patch has been reworked to use wrs.nto and to use the same approach
>> as Arm for the wait loop, since we can't have arbitrary C code between
>> the load-reserved and the wrs. Then, hwprobe support is added (since the
>> instructions are also usable from usermode), and finally KVM is
>> taught about wrs.nto, allowing guests to see and use the Zawrs
>> extension.
>>
>> We still don't have test results from hardware, and it's not possible to
>> prove that using Zawrs is a win when testing on QEMU, not even when
>> oversubscribing VCPUs to guests. However, it is possible to use KVM
>> selftests to force a scenario where we can prove Zawrs does its job and
>> does it well. [4] is a test which does this and, on my machine, without
>> Zawrs it takes 16 seconds to complete and with Zawrs it takes 0.25
>> seconds.
>>
>> This series is also available here [1]. In order to use QEMU for testing
>> a build with [2] is needed. In order to enable guests to use Zawrs with
>> KVM using kvmtool, the branch at [3] may be used.
>>
>> [1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3/
>> [2] https://lore.kernel.org/all/20240312152901.512001-2-ajones@ventanamicro.com/
>> [3] https://github.com/jones-drew/kvmtool/commits/riscv/zawrs/
>> [4] https://github.com/jones-drew/linux/commit/cb2beccebcece10881db842ed69bdd5715cfab5d
>>
>> Thanks,
>> drew
>>
>> v3:
>>  - Moved comment about expected termination from the DT binding text
>>    to a code comment.
>>
>> v2:
>>  - Added DT bindings patch with additional Linux specifications due
>>    to wrs.nto potentially never terminating, as suggested by Palmer
>>  - Added patch to share pause insn definition
>>  - Rework main Zawrs support patch to use Arm approach (which is
>>    also the approach that Andrea Parri suggested)
>>  - Dropped the riscv implementation of smp_cond_load_acquire().
>>    afaict, the generic implementation, which will use the riscv
>>    implementation of smp_cond_load_relaxed() is sufficient for riscv.
>>  - The rework was large enough (IMO) to drop Heiko's s-o-b and to
>>    add myself as a co-developer
>>
>>
>> Andrew Jones (5):
>>   riscv: Provide a definition for 'pause'
>>   dt-bindings: riscv: Add Zawrs ISA extension description
>>   riscv: hwprobe: export Zawrs ISA extension
>>   KVM: riscv: Support guest wrs.nto
>>   KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
>>
>> Christoph M??llner (1):
>>   riscv: Add Zawrs support for spinlocks
>>
>>  Documentation/arch/riscv/hwprobe.rst          |  4 ++
>>  .../devicetree/bindings/riscv/extensions.yaml |  7 +++
>>  arch/riscv/Kconfig                            | 20 ++++---
>>  arch/riscv/Makefile                           |  3 -
>>  arch/riscv/include/asm/barrier.h              | 45 +++++++++-----
>>  arch/riscv/include/asm/cmpxchg.h              | 58 +++++++++++++++++++
>>  arch/riscv/include/asm/hwcap.h                |  1 +
>>  arch/riscv/include/asm/insn-def.h             |  4 ++
>>  arch/riscv/include/asm/kvm_host.h             |  1 +
>>  arch/riscv/include/asm/vdso/processor.h       |  8 +--
>>  arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
>>  arch/riscv/include/uapi/asm/kvm.h             |  1 +
>>  arch/riscv/kernel/cpufeature.c                |  1 +
>>  arch/riscv/kernel/sys_hwprobe.c               |  1 +
>>  arch/riscv/kvm/vcpu.c                         |  1 +
>>  arch/riscv/kvm/vcpu_insn.c                    | 15 +++++
>>  arch/riscv/kvm/vcpu_onereg.c                  |  2 +
>>  .../selftests/kvm/riscv/get-reg-list.c        |  4 ++
>>  18 files changed, 146 insertions(+), 31 deletions(-)
>>
>> --
>> 2.44.0
>>

