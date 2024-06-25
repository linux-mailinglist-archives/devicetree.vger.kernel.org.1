Return-Path: <devicetree+bounces-79870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 746569172FF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:10:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D89E284B8C
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0CAB17E910;
	Tue, 25 Jun 2024 21:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="lf3vaUkR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5A216B39A
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349778; cv=none; b=d33VBKmX6SIdTJmKwXU0uxXgg+lh5Y5y//fziv+x7DzbxIjFjcekf9Btlm1zphgzGIo6gbP0cbrMvsPpJHPB1NvVzaQ+r+hRzd8Zr5B8vUN3znJgsYbdI3yhtNt+uLvbC34uCtYtHaAsRto3E0MrZACzBJJex6fdIAExRo6zY4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349778; c=relaxed/simple;
	bh=uxuAo7ar5aZdz8h+UruFtCuI2X7vKbOsL3DLGvmiiyE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d2qYxJJGvJsxZrUt1/xVxLjrxlsdXCNIYDYzunYB4ToTxPrL+8d0QGFrTZS6yKDVXb3gsw8nG/aJ4XpNvyr7O9p6hYiuTziqUX7/td83sVB2TTRLmwSGPSo0YeQaUsi3s0PhU3bXQrqB4l1Hs0bIRdLXIvo1H7hzWlQPqv0P460=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=lf3vaUkR; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f65a3abd01so48736665ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349776; x=1719954576; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EUBdVGV0+fMFwjwLM0qvSzcFICs4EkTcqE1zrLWEtEM=;
        b=lf3vaUkRHuLrPzZG6r5ispOqUqyIrPOh1LdBkFk8U6+KTmFPtbEhv2zEZ2AP9OJX0e
         oPLvwjlTFW2mXG+fPeYtrmLEWlR5Xyk7R5kc+lFmyrHa6s/Gj+VgX1yfQ/sS3/mB+Q5/
         vG1j2Jgpe1WUfZggW1nL8xqzAEXuPiOLhFNyr6twfgjBiDkO1AEEJ9Kd62Im1ZrbATcO
         yEW6SjurHWMDJGcMKgr2eLaiBrPAMt76uR/SLqNHgvLuTbqKz5Z3NoL9RH5vCdhSsH3b
         zTFnuC1X5D4rBI1vk0vnr641hSTq6lKLR1DE2MvnuqzlbnvM2e9hkk+mGMtxcC1gWRpn
         FsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349776; x=1719954576;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EUBdVGV0+fMFwjwLM0qvSzcFICs4EkTcqE1zrLWEtEM=;
        b=c7Kbbgty7AjRKU+qJwai8SzJ1Bny2adPfBU8reot3zId+vxabTfancUf7XyypNQrjX
         qsIavq6jjwMzhkDG+N+unwkV7n1NxICOkoGtkxgpDt3tug9f0nFkvCo1wOLo4fB9sSrt
         AwbwRoX3S3j6fHfSnqh/7BGGkOyuowdPHhnTVRVUMV9rv9M7u9CawHPtTHeBM3hVY5ye
         7F1dZN8i5ZqDs+Pg3GjhbquJ4vWP/IdhYB4VRtaviuy+GDRLdgi60IyNZPYy0/qry9w0
         dLJ8SFAPljD5eKiHn/ivVTE9BzLIHTtE9QUHwPAGhrY5GDZC358XmWlnpjZgh20/9kQc
         pyIA==
X-Gm-Message-State: AOJu0Yw2maduDHlyxatocu776wU4/QIBafrECi/NCsu3xAnMvrQlQwjS
	fkzKGmTOZwLLBxY3dLL9ZeZo8u0/8URDl+kN/f/QyikdwglkJI0kU+WhlcHsnGE=
X-Google-Smtp-Source: AGHT+IEaUHjDWO8+3ZFN6cPh1szoLNnMWbRTcCp8FoVAQAbCft2J13YEiKmHfYP2xrEiBrAdej61ww==
X-Received: by 2002:a17:902:c10c:b0:1fa:a2a:221e with SMTP id d9443c01a7336-1fa23ef0d8bmr91219335ad.40.1719349775795;
        Tue, 25 Jun 2024 14:09:35 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:35 -0700 (PDT)
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
Subject: [PATCH v2 00/10] riscv: Userspace pointer masking and tagged address ABI
Date: Tue, 25 Jun 2024 14:09:11 -0700
Message-ID: <20240625210933.1620802-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
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
width (which is interpreted as a lower bound on the number of tag bits).

This series also adds support for a tagged address ABI similar to arm64
and x86. Since accesses from the kernel to user memory use the kernel's
pointer masking configuration, not the user's, the kernel must untag
user pointers in software before dereferencing them. And since the tag
length is variable, as with LAM on x86, it must be the same across all
threads in a process so untagged_addr_remote() can work.

This series depends on my per-thread envcfg series[3].

This series can be tested in QEMU by applying a patch set[2].

KASAN support will be added in a separate patch series.

[1]: https://github.com/riscv/riscv-j-extension/releases/download/pointer-masking-v1.0.0-rc2/pointer-masking-v1.0.0-rc2.pdf
[2]: https://lore.kernel.org/qemu-devel/20240511101053.1875596-1-me@deliversmonkey.space/
[3]: https://lore.kernel.org/linux-riscv/20240613171447.3176616-1-samuel.holland@sifive.com/

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
 arch/riscv/include/asm/hwcap.h                |   7 +
 arch/riscv/include/asm/mmu.h                  |   7 +
 arch/riscv/include/asm/mmu_context.h          |   6 +
 arch/riscv/include/asm/processor.h            |   8 +
 arch/riscv/include/asm/switch_to.h            |  11 +
 arch/riscv/include/asm/thread_info.h          |   3 +
 arch/riscv/include/asm/uaccess.h              |  58 ++-
 arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
 arch/riscv/include/uapi/asm/kvm.h             |   2 +
 arch/riscv/kernel/cpufeature.c                |   3 +
 arch/riscv/kernel/process.c                   | 164 +++++++++
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
 25 files changed, 715 insertions(+), 6 deletions(-)
 create mode 100644 tools/testing/selftests/riscv/pm/.gitignore
 create mode 100644 tools/testing/selftests/riscv/pm/Makefile
 create mode 100644 tools/testing/selftests/riscv/pm/pointer_masking.c

-- 
2.44.1


