Return-Path: <devicetree+bounces-99995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F0D96BC63
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:33:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDFF7281D70
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5891D79A4;
	Wed,  4 Sep 2024 12:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="DflRhuN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB9A1CF7AE
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725453190; cv=none; b=BDdLVKccLQqs24GGmBVCl4gevOQrDKAixF02STL4ZbzCyzsbHTObx2x9dq9AWurF+830q72IxEV3BeANwFgjC7jM/79HGbuExEfr4JSJpbfbi42jLvz2dQtRzWxPaO0sHVeskrlY8wKQYMMbbtQ/xqdb2KcWcCY3nusQ+4A1t/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725453190; c=relaxed/simple;
	bh=+QzHV9rdUvt9qDVMiRWB2hIisCMV0dggohFRSFHR8p8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C6jZJk1WMfqBCFJ95XJE3lwVFs6gDXPfeyHwFYfGxtixkHSZMiSw964X4eL1hsbO0MWZsW8I+MwIzb+ssZr3ZdI6MqN6qBEOw1PsHZcTM1Q3MnQ6XHJJkkjoNfKDb1Yv0kG5f9vu8pFPjNPjxj5EoOhIeDdPTq63j6abWK/IG5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=DflRhuN/; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-39f539a83e0so12693785ab.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 05:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1725453188; x=1726057988; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ZsaBihnC5N+75Ve3rV3kB2kS1uqP0/r3+HmOHWQjaE=;
        b=DflRhuN/wn4quZJAjvTL5Ll4580qi5vVT0YbZUXOR9hp6vib0jqhDN9PpTFXS0khq/
         W1R+01VNiF8NP7ZRJqhitTpf+765KYXnpKpJbY1FVKP6CeBhBM/nvDZjimGXoi1xQnTd
         MDFSA+FEBCLVWRBgqDDfDKRX/23iYtiRvcTbLjl/9kr93KNHBzej0g1RA8NB/wW6d3Ti
         9fUq9pwdDuiC77LawOQSXuhPA3fWTvclet4ts9KSgb3jgMeswVUmAqweiReF2BoVqT0I
         E9elggCJYQsBKT7XZiQDsgZMaI1pQ9p99ysQw3FaBRBHScokHdrFeaKwYBFK8tgesFku
         ekFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725453188; x=1726057988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ZsaBihnC5N+75Ve3rV3kB2kS1uqP0/r3+HmOHWQjaE=;
        b=IRJMDd49sEFHIWRtSOXbOMWS3RIxGzd3GVCwCqFdWZF2DaPu/g7zrA/v+2EAbFvyyB
         5DjbLpRL0kVxcy1x6vum4uU/jlCgrHGnpB2D2mozn5eXfkNusPo50ubV6RNrPWHSNZP0
         XCY8iPjK/zFpCDMeXQY6rxhZgLHMPs4upVmytFBa2I8kPjTBknIMdZXTjZQfVDC/VgU1
         eGMw4M+eVWptOJuIUcB8tpBmj9fmU1Wh7UlcJEb3zqpFu3VBv6VhuH6Cew8EUIakhCiv
         5BHudte3X07C7zjW37dg4HJ97Y/eEMPXxxcqgx42ML2xvq7KEdvCvq93Yyid3+OweGn6
         34ow==
X-Forwarded-Encrypted: i=1; AJvYcCWtjT5TvRGKRrv4IgOOqM8gOI/njScceoOoV2KhWfM0YNDts7D41edzyrOB+V6nfbii+9Z/gMjuezwF@vger.kernel.org
X-Gm-Message-State: AOJu0YwluqcqcIWxeCK/i5LjgN52ABwHrUc4GsuXnP2dEMCEcF9jyfXA
	Gbg8nefJSUyclPkkx8wLAkhNUwqW2uDruNG/HbkurBD2RHBKj7mZ9HaVzOeKMA/50FctBJqLHRp
	BfTxsDshct3mnkDrxsh4hFKuYRmH32hrpFhutqg==
X-Google-Smtp-Source: AGHT+IEWUwhTqSwErPoqoKZsnkgrEtHqqodW5yfE73Edui8hq1B2ewmV5xQdjypAJBUGSfhlHpzELwgoj+jmpwDv2p4=
X-Received: by 2002:a05:6e02:2146:b0:39d:2a84:869f with SMTP id
 e9e14a558f8ab-39f49a1ff96mr164451425ab.6.1725453187950; Wed, 04 Sep 2024
 05:33:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
In-Reply-To: <20240829010151.2813377-1-samuel.holland@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2024 18:02:57 +0530
Message-ID: <CAAhSdy04aEg35j3NTGOz5Gs_wPP3PBuR7sKbvosvQ1jFFGE5sQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] riscv: Userspace pointer masking and tagged
 address ABI
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 6:31=E2=80=AFAM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> RISC-V defines three extensions for pointer masking[1]:
>  - Smmpm: configured in M-mode, affects M-mode
>  - Smnpm: configured in M-mode, affects the next lower mode (S or U-mode)
>  - Ssnpm: configured in S-mode, affects the next lower mode (VS, VU, or U=
-mode)
>
> This series adds support for configuring Smnpm or Ssnpm (depending on
> which privilege mode the kernel is running in) to allow pointer masking
> in userspace (VU or U-mode), extending the PR_SET_TAGGED_ADDR_CTRL API
> from arm64. Unlike arm64 TBI, userspace pointer masking is not enabled
> by default on RISC-V. Additionally, the tag width (referred to as PMLEN)
> is variable, so userspace needs to ask the kernel for a specific tag
> width, which is interpreted as a lower bound on the number of tag bits.
>
> This series also adds support for a tagged address ABI similar to arm64
> and x86. Since accesses from the kernel to user memory use the kernel's
> pointer masking configuration, not the user's, the kernel must untag
> user pointers in software before dereferencing them. And since the tag
> width is variable, as with LAM on x86, it must be kept the same across
> all threads in a process so untagged_addr_remote() can work.
>
> This series depends on my per-thread envcfg series[3].
>
> This series can be tested in QEMU by applying a patch set[2].
>
> KASAN support will be added in a separate patch series.
>
> [1]: https://github.com/riscv/riscv-j-extension/releases/download/pointer=
-masking-v1.0.0-rc2/pointer-masking-v1.0.0-rc2.pdf
> [2]: https://lore.kernel.org/qemu-devel/20240511101053.1875596-1-me@deliv=
ersmonkey.space/
> [3]: https://lore.kernel.org/linux-riscv/20240814081126.956287-1-samuel.h=
olland@sifive.com/
>
> Changes in v4:
>  - Switch IS_ENABLED back to #ifdef to fix riscv32 build
>  - Combine __untagged_addr() and __untagged_addr_remote()
>
> Changes in v3:
>  - Note in the commit message that the ISA extension spec is frozen
>  - Rebase on riscv/for-next (ISA extension list conflicts)
>  - Remove RISCV_ISA_EXT_SxPM, which was not used anywhere
>  - Use shifts instead of large numbers in ENVCFG_PMM* macro definitions
>  - Rename CONFIG_RISCV_ISA_POINTER_MASKING to CONFIG_RISCV_ISA_SUPM,
>    since it only controls the userspace part of pointer masking
>  - Use IS_ENABLED instead of #ifdef when possible
>  - Use an enum for the supported PMLEN values
>  - Simplify the logic in set_tagged_addr_ctrl()
>  - Use IS_ENABLED instead of #ifdef when possible
>  - Implement mm_untag_mask()
>  - Remove pmlen from struct thread_info (now only in mm_context_t)
>
> Changes in v2:
>  - Drop patch 4 ("riscv: Define is_compat_thread()"), as an equivalent
>    patch was already applied
>  - Move patch 5 ("riscv: Split per-CPU and per-thread envcfg bits") to a
>    different series[3]
>  - Update pointer masking specification version reference
>  - Provide macros for the extension affecting the kernel and userspace
>  - Use the correct name for the hstatus.HUPMM field
>  - Rebase on riscv/linux.git for-next
>  - Add and use the envcfg_update_bits() helper function
>  - Inline flush_tagged_addr_state()
>  - Implement untagged_addr_remote()
>  - Restrict PMLEN changes once a process is multithreaded
>  - Rename "tags" directory to "pm" to avoid .gitignore rules
>  - Add .gitignore file to ignore the compiled selftest binary
>  - Write to a pipe to force dereferencing the user pointer
>  - Handle SIGSEGV in the child process to reduce dmesg noise
>  - Export Supm via hwprobe
>  - Export Smnpm and Ssnpm to KVM guests
>
> Samuel Holland (10):
>   dt-bindings: riscv: Add pointer masking ISA extensions
>   riscv: Add ISA extension parsing for pointer masking
>   riscv: Add CSR definitions for pointer masking
>   riscv: Add support for userspace pointer masking
>   riscv: Add support for the tagged address ABI
>   riscv: Allow ptrace control of the tagged address ABI
>   selftests: riscv: Add a pointer masking test
>   riscv: hwprobe: Export the Supm ISA extension
>   RISC-V: KVM: Allow Smnpm and Ssnpm extensions for guests
>   KVM: riscv: selftests: Add Smnpm and Ssnpm to get-reg-list test

Please CC kvm-riscv mailing list for KVM changes otherwise the
KVM RISC-V patchwork can't track patches.

>
>  Documentation/arch/riscv/hwprobe.rst          |   3 +
>  .../devicetree/bindings/riscv/extensions.yaml |  18 +
>  arch/riscv/Kconfig                            |  11 +
>  arch/riscv/include/asm/csr.h                  |  16 +
>  arch/riscv/include/asm/hwcap.h                |   5 +
>  arch/riscv/include/asm/mmu.h                  |   7 +
>  arch/riscv/include/asm/mmu_context.h          |  13 +
>  arch/riscv/include/asm/processor.h            |   8 +
>  arch/riscv/include/asm/switch_to.h            |  11 +
>  arch/riscv/include/asm/uaccess.h              |  43 ++-
>  arch/riscv/include/uapi/asm/hwprobe.h         |   1 +
>  arch/riscv/include/uapi/asm/kvm.h             |   2 +
>  arch/riscv/kernel/cpufeature.c                |   3 +
>  arch/riscv/kernel/process.c                   | 154 ++++++++
>  arch/riscv/kernel/ptrace.c                    |  42 +++
>  arch/riscv/kernel/sys_hwprobe.c               |   3 +
>  arch/riscv/kvm/vcpu_onereg.c                  |   3 +
>  include/uapi/linux/elf.h                      |   1 +
>  include/uapi/linux/prctl.h                    |   3 +
>  .../selftests/kvm/riscv/get-reg-list.c        |   8 +
>  tools/testing/selftests/riscv/Makefile        |   2 +-
>  tools/testing/selftests/riscv/pm/.gitignore   |   1 +
>  tools/testing/selftests/riscv/pm/Makefile     |  10 +
>  .../selftests/riscv/pm/pointer_masking.c      | 330 ++++++++++++++++++
>  24 files changed, 692 insertions(+), 6 deletions(-)
>  create mode 100644 tools/testing/selftests/riscv/pm/.gitignore
>  create mode 100644 tools/testing/selftests/riscv/pm/Makefile
>  create mode 100644 tools/testing/selftests/riscv/pm/pointer_masking.c
>
> --
> 2.45.1
>

Regards,
Anup

