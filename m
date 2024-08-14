Return-Path: <devicetree+bounces-93531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E595164D
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BE142836E9
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E9F13F454;
	Wed, 14 Aug 2024 08:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mFD8ZwVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3F113F01A
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623281; cv=none; b=e5JM1Qy8Dxs/8MoRbhNQfeHqUMPD0ouCPxfcI56keYEs3tvbjbbFKRPM4L5DlfPwgzdaR4Up9foRwEd5nvyMjRCZQg0w5aN7boibqcumD0LO4wmJOQweMh/b5yTNegvGXhZwwECnqxMGGPlIxgencg6W+4tb+3JW7jjbDqa0rW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623281; c=relaxed/simple;
	bh=yW7gnvt/PNmcaSD5BqdDwClN2xT5Dh64gaY9K/a9pfs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MKWwY/LayC65i1I0EGvFi6UtJsk4J/Qg3q6dCg8e4VQ2YGtPru1PTUVsTQAJmBUM5mb5NNLWuzc7kQn92r/0ld/JkW3T2zr9tr47EVhvcj8Q2B8YuJ92mhlB86wJoWX3/J1MWo+6+1Hhd3nf/CqaOx+qBOVVbHqKPJ2rg2VxMgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mFD8ZwVn; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-70d1a74a43bso4637502b3a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623279; x=1724228079; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7X7rwinZQ3JvqiiqzaTRexejN5yFH2f9NFPeSO2fsBU=;
        b=mFD8ZwVnyZnZ3To/IwPGYISsaHEeNLPE8s5hFTTn/iiUrtXxnZnSoie4wEBltX9NfI
         bh43Xm84Fhsp2gBWvmBKMt+cmbyNnOQ5oXw3r3r4rc4FDiTQV/OeWKPVA4+l3nE76eZO
         w9ijf+qdynk66LmD7qkIofLySE1AcvgFyw+WRk1aRswFX4xk7F4sxwsGIZ5/jQCJ/gTL
         MOH42fy+bAFHGlxkGvoaN/Ucv/iXLzbHzmspBRZFFIqbqOhOpGY6qfoYgLYiFSm2S5cm
         kCPwME6NWBAh0NKiY3nMhoRYIv2OQ97N/SmznHvzGe4EcmAaHeENQR9sIpOuM7y02Fwu
         fcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623279; x=1724228079;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7X7rwinZQ3JvqiiqzaTRexejN5yFH2f9NFPeSO2fsBU=;
        b=cYFcSzfoUUiU6SLVwPp0C/VA2yc1P1SGpzy4dFydbu39Tgf98XfxfqZAcopcQG0tvc
         KCRXf1gNsyGSiKj74trT49AFQM+5Z0LsB27LH76KX6rL3BZi+xMarsRqPChQ3d8FAiEy
         mkOpei1VoeNl8MAiCxt48zdQ752TZR41VPT3htCFj9+5pMDkql7+IlLJAYP1j0DITOPf
         PmaJ+rlgCJJwNUFQgtrlsohzsX3Zx6RTa6YYl6G7Vh64SKxTxqvZTfvAb5ZppR/wEuFU
         PKD9LGks0feKV9zCp2ySEn81mHhcG6ZMWeAgetA/xlQDnSqOUJTCvOlez00lR/4QYZGe
         c/pg==
X-Gm-Message-State: AOJu0Yx2WJyLVKcA6KVtai1MUK7jvoOnaTn6t8clI82XwyJ6iQpRbGs8
	Mh4/WGrfFI7vsDBoA/E5CqswfSQF9TiXCwiGqQHnvaBH/PFTLnTanx6xDgut9INH2jy73//427E
	q
X-Google-Smtp-Source: AGHT+IFzkELaMVi7vLgmjzrCXMwoASj5tflpIgCrPNmykWcMOyp7YKgyx1HmjdXy2+4eBAxfLy8trw==
X-Received: by 2002:a05:6a21:31c7:b0:1c2:8af6:31c2 with SMTP id adf61e73a8af0-1c8eaf86b54mr2479321637.44.1723623279321;
        Wed, 14 Aug 2024 01:14:39 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:38 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 00/10] riscv: Userspace pointer masking and tagged address ABI
Date: Wed, 14 Aug 2024 01:13:27 -0700
Message-ID: <20240814081437.956855-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RISC-V defines three extensions for pointer masking[1]:
 - Smmpm: configured in M-mode, affects M-mode
 - Smnpm: configured in M-mode, affects the next lower mode (S or U-mode)
 - Ssnpm: configured in S-mode, affects the next lower mode (VS, VU, or U-mode)

This series adds support for configuring Smnpm or Ssnpm (depending on
which privilege mode the kernel is running in) to allow pointer masking
in userspace (VU or U-mode), extending the PR_SET_TAGGED_ADDR_CTRL API
from arm64. Unlike arm64 TBI, userspace pointer masking is not enabled
by default on RISC-V. Additionally, the tag width (referred to as PMLEN)
is variable, so userspace needs to ask the kernel for a specific tag
width, which is interpreted as a lower bound on the number of tag bits.

This series also adds support for a tagged address ABI similar to arm64
and x86. Since accesses from the kernel to user memory use the kernel's
pointer masking configuration, not the user's, the kernel must untag
user pointers in software before dereferencing them. And since the tag
width is variable, as with LAM on x86, it must be kept the same across
all threads in a process so untagged_addr_remote() can work.

This series depends on my per-thread envcfg series[3].

This series can be tested in QEMU by applying a patch set[2].

KASAN support will be added in a separate patch series.

[1]: https://github.com/riscv/riscv-j-extension/releases/download/pointer-masking-v1.0.0-rc2/pointer-masking-v1.0.0-rc2.pdf
[2]: https://lore.kernel.org/qemu-devel/20240511101053.1875596-1-me@deliversmonkey.space/
[3]: https://lore.kernel.org/linux-riscv/20240814081126.956287-1-samuel.holland@sifive.com/

Changes in v3:
 - Note in the commit message that the ISA extension spec is frozen
 - Rebase on riscv/for-next (ISA extension list conflicts)
 - Remove RISCV_ISA_EXT_SxPM, which was not used anywhere
 - Use shifts instead of large numbers in ENVCFG_PMM* macro definitions
 - Rename CONFIG_RISCV_ISA_POINTER_MASKING to CONFIG_RISCV_ISA_SUPM,
   since it only controls the userspace part of pointer masking
 - Use IS_ENABLED instead of #ifdef when possible
 - Use an enum for the supported PMLEN values
 - Simplify the logic in set_tagged_addr_ctrl()
 - Use IS_ENABLED instead of #ifdef when possible
 - Implement mm_untag_mask()
 - Remove pmlen from struct thread_info (now only in mm_context_t)

Changes in v2:
 - Drop patch 4 ("riscv: Define is_compat_thread()"), as an equivalent
   patch was already applied
 - Move patch 5 ("riscv: Split per-CPU and per-thread envcfg bits") to a
   different series[3]
 - Update pointer masking specification version reference
 - Provide macros for the extension affecting the kernel and userspace
 - Use the correct name for the hstatus.HUPMM field
 - Rebase on riscv/linux.git for-next
 - Add and use the envcfg_update_bits() helper function
 - Inline flush_tagged_addr_state()
 - Implement untagged_addr_remote()
 - Restrict PMLEN changes once a process is multithreaded
 - Rename "tags" directory to "pm" to avoid .gitignore rules
 - Add .gitignore file to ignore the compiled selftest binary
 - Write to a pipe to force dereferencing the user pointer
 - Handle SIGSEGV in the child process to reduce dmesg noise
 - Export Supm via hwprobe
 - Export Smnpm and Ssnpm to KVM guests

Samuel Holland (10):
  dt-bindings: riscv: Add pointer masking ISA extensions
  riscv: Add ISA extension parsing for pointer masking
  riscv: Add CSR definitions for pointer masking
  riscv: Add support for userspace pointer masking
  riscv: Add support for the tagged address ABI
  riscv: Allow ptrace control of the tagged address ABI
  selftests: riscv: Add a pointer masking test
  riscv: hwprobe: Export the Supm ISA extension
  RISC-V: KVM: Allow Smnpm and Ssnpm extensions for guests
  KVM: riscv: selftests: Add Smnpm and Ssnpm to get-reg-list test

 Documentation/arch/riscv/hwprobe.rst          |   3 +
 .../devicetree/bindings/riscv/extensions.yaml |  18 +
 arch/riscv/Kconfig                            |  11 +
 arch/riscv/include/asm/csr.h                  |  16 +
 arch/riscv/include/asm/hwcap.h                |   5 +
 arch/riscv/include/asm/mmu.h                  |   7 +
 arch/riscv/include/asm/mmu_context.h          |  13 +
 arch/riscv/include/asm/processor.h            |   8 +
 arch/riscv/include/asm/switch_to.h            |  11 +
 arch/riscv/include/asm/uaccess.h              |  58 ++-
 arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
 arch/riscv/include/uapi/asm/kvm.h             |   2 +
 arch/riscv/kernel/cpufeature.c                |   3 +
 arch/riscv/kernel/process.c                   | 153 ++++++++
 arch/riscv/kernel/ptrace.c                    |  42 +++
 arch/riscv/kernel/sys_hwprobe.c               |   3 +
 arch/riscv/kvm/vcpu_onereg.c                  |   3 +
 include/uapi/linux/elf.h                      |   1 +
 include/uapi/linux/prctl.h                    |   3 +
 .../selftests/kvm/riscv/get-reg-list.c        |   8 +
 tools/testing/selftests/riscv/Makefile        |   2 +-
 tools/testing/selftests/riscv/pm/.gitignore   |   1 +
 tools/testing/selftests/riscv/pm/Makefile     |  10 +
 .../selftests/riscv/pm/pointer_masking.c      | 330 ++++++++++++++++++
 24 files changed, 706 insertions(+), 6 deletions(-)
 create mode 100644 tools/testing/selftests/riscv/pm/.gitignore
 create mode 100644 tools/testing/selftests/riscv/pm/Makefile
 create mode 100644 tools/testing/selftests/riscv/pm/pointer_masking.c

-- 
2.45.1


