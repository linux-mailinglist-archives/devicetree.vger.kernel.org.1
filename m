Return-Path: <devicetree+bounces-228570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CDCBEF3C2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:21:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 04ECC348FE0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACA52BE035;
	Mon, 20 Oct 2025 04:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="NzraLz31"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A2729D270
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934073; cv=none; b=bnCrDkqQRIbpB1Z2K1eutIvN2L7R8KhtVBBEcPvy7f6tcSRtedxNPdfRI+Okb8dr1J9OO4WKW4ZDfPhaasiR17QkNObc6QgOT/wFeu7zTS2mwAek1K/yh+AFj8a1dD9FWIYkrOuoSyXKOn4UNjOkS0PM8IqaXekSMWjd35gJ+O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934073; c=relaxed/simple;
	bh=KSjoxuwSlFaFq4TJcoW0tRdCftkDMdzYUiOjhUqgUR0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=B0r9TTdleOkJ/YObPazaCRCYaQsbxmS1B3fAdM9ojko6z2KX8fLWZk1H3CNHjf1Q0AzZZa1JLaMhz77Wmzp11fl5vZlQ+Lx035du0fff81n3OvKIWlZRbdNkKBHKoUrlArx3mePgFMEmqBzfI06xsWTPh6eV6/kUt6W3nSFNq4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=NzraLz31; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-290d14e5c9aso33688625ad.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760934070; x=1761538870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=conQFyh0ywHaD293wZYZONSgw/GLLJWk5gnj1mP84r4=;
        b=NzraLz3102v6ehlBEAVRV9f1Ok1HDyPK+1tRUW79Wa0oG7FGeo7ruUdMP1CeyBjm8y
         n+0+oPEaUTPef9c6NFgmz4m4MqXFUxhpzQ+Rd+HjvzzA0m1PimfQR2oSTLDkTPyJurkD
         zS0TSjk/KWlXvSnRfN5W1cUH9C0upyQjZ6Sn1DacODGoLgQrM1w5tqvujyFMOPboYv/P
         CIT3qBZJkB+ri82n0Q3szP/QCDewqZ3A0FqMIC2aG4Lp9cumz7a+W3fqKy6SQdCqIi5s
         EHP3M9HW5Gb5shh5r/m6+YtFvn2/unBxzGZhMETpCv24FPAiLTLw7hmJ/i5HSVzcftrT
         oRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760934070; x=1761538870;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=conQFyh0ywHaD293wZYZONSgw/GLLJWk5gnj1mP84r4=;
        b=YjnDBfNICVN3I1ffdcq2PEib8cOOjvO7za1+GC/4Ld5tm+c0ShaM3Mq4A1lso5rJ6Y
         6qegt+pMGWsi/y7c2o1BVy6vjCvjmS5fRAtdS/9j2TE0Zf60HrophRMpdlbstY6DZiSN
         Av5RPpUc7CPOnw4HJoZGlbavyHyvg9DKUPpmX+HjQ5rWXcu9P7YXd+AbCd68mxQk0eDd
         EzIlBQpH/beBBsPESuK6gNqIumKC6+blZaHOIR+8IRUt5Ow6dEUXPuGSuqJDoZrIBizY
         kD+6qLSLn/KIU+VdJ5LtSTenZNLoTo3N23D9NiNcmCEGpz1XHgPMXBv47io2VjZ3qWIs
         nuQA==
X-Forwarded-Encrypted: i=1; AJvYcCVC7dspES1VDT5DsQTzwQ1O7j1bTbtJY2OmQl2vJZvTSsWRxZ5SzKbniYg4LJkBd8V+e1hCtt0L9Qzg@vger.kernel.org
X-Gm-Message-State: AOJu0YzO4+nJmXTUpUgyIaINIplQkV6RnR4aRwEgEwftyvrEvC55ndDW
	Kdo0Ik0sJTsMBEEaaKfk+KWYNIi34OKOqcW166ZFPkFIufvHBlwwUBRl4U4UfEQCTrs=
X-Gm-Gg: ASbGncsH/WVSkcQbc0dASn95oFsh9Lm1GBWh2crUd+noOYZfGwfH8m8BhXXOAXpY9tr
	fI2eTeExXxjWc3sh25jN04MmNJ2uMM+A1Ib8p0PhTqq5ae7hSOWz5l1MnWN9WL5jN6ijmfuEC6K
	jKKE9iKi8Z/6OaYBej1Xys+nVu3I/o1BOLVuZBhnoRdI4sU/r4kjuti7EcKraFlNrUpU7yHMw0v
	L8yOyO6DYKEnBWWdjODV3IBqgE8SB7kX5o+yiQ3HyYgdNLF7ffzVfeqLS/TleZ6IGWkXi6HndAj
	N05jhNamsN7V35aeloPfXBx+sluGS5Gbc/f56zif8kYaevbsQL02yIxF0DFkAdLnVQxE6CDINw7
	AAfk7XU8nKghSGJnGq84Myey0ulsTxw/hX6uIXKZTYAruuiQrIF32zbwxkPcufrStoo73YlNEql
	+REfZHtX8nzHnqUQlWBRyHPNgb3xOc7/7pwYit2cCKQvJWCEk6omeafKaV4bUfvvQt7s7HJZnVR
	g==
X-Google-Smtp-Source: AGHT+IEdkgCehFcbIRaUApmCfafCEhZVkAa78hZZpBjec5gPS2C5TVHNU0zWNgu3Z2IjgaK3I7rtpw==
X-Received: by 2002:a17:902:f687:b0:26e:49e3:55f1 with SMTP id d9443c01a7336-290c9cbc867mr157233355ad.18.1760934069971;
        Sun, 19 Oct 2025 21:21:09 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ec14e9sm68762035ad.9.2025.10.19.21.21.01
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 19 Oct 2025 21:21:09 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	guoren@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	lukas.bulwahn@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v4 00/10] riscv: Add Zalasr ISA extension support
Date: Mon, 20 Oct 2025 12:20:46 +0800
Message-ID: <20251020042056.30283-1-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds support for the Zalasr ISA extension, which supplies the
real load acquire/store release instructions.

The specification can be found here:
https://github.com/riscv/riscv-zalasr/blob/main/chapter2.adoc

This patch seires has been tested with ltp on Qemu with Brensan's zalasr
support patch[1].

Some false positive spacing error happens during patch checking. Thus I
CCed maintainers of checkpatch.pl as well.

[1] https://lore.kernel.org/all/CAGPSXwJEdtqW=nx71oufZp64nK6tK=0rytVEcz4F-gfvCOXk2w@mail.gmail.com/

v4:
 - Apply acquire/release semantics to arch_atomic operations. Thanks
 to Andrea.

v3:
 - Apply acquire/release semantics to arch_xchg/arch_cmpxchg operations
 so as to ensure FENCE.TSO ordering between operations which precede the
 UNLOCK+LOCK sequence and operations which follow the sequence. Thanks
 to Andrea.
 - Support hwprobe of Zalasr.
 - Allow Zalasr extensions for Guest/VM.

v2:
 - Adjust the order of Zalasr and Zalrsc in dt-bindings. Thanks to
 Conor.

Xu Lu (10):
  riscv: Add ISA extension parsing for Zalasr
  dt-bindings: riscv: Add Zalasr ISA extension description
  riscv: hwprobe: Export Zalasr extension
  riscv: Introduce Zalasr instructions
  riscv: Apply Zalasr to smp_load_acquire/smp_store_release
  riscv: Apply acquire/release semantics to arch_xchg/arch_cmpxchg
    operations
  riscv: Apply acquire/release semantics to arch_atomic operations
  riscv: Remove arch specific __atomic_acquire/release_fence
  RISC-V: KVM: Allow Zalasr extensions for Guest/VM
  RISC-V: KVM: selftests: Add Zalasr extensions to get-reg-list test

 Documentation/arch/riscv/hwprobe.rst          |   5 +-
 .../devicetree/bindings/riscv/extensions.yaml |   5 +
 arch/riscv/include/asm/atomic.h               |  70 ++++++++-
 arch/riscv/include/asm/barrier.h              |  91 +++++++++--
 arch/riscv/include/asm/cmpxchg.h              | 144 +++++++++---------
 arch/riscv/include/asm/fence.h                |   4 -
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/insn-def.h             |  79 ++++++++++
 arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
 arch/riscv/include/uapi/asm/kvm.h             |   1 +
 arch/riscv/kernel/cpufeature.c                |   1 +
 arch/riscv/kernel/sys_hwprobe.c               |   1 +
 arch/riscv/kvm/vcpu_onereg.c                  |   2 +
 .../selftests/kvm/riscv/get-reg-list.c        |   4 +
 14 files changed, 314 insertions(+), 95 deletions(-)

-- 
2.20.1


