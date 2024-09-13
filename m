Return-Path: <devicetree+bounces-102833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9793E978790
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 20:09:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5392D28A828
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 18:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE13126C1E;
	Fri, 13 Sep 2024 18:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LPYP3skY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579C184E11
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 18:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726250938; cv=none; b=PiWCssBKqQVZVQ4BEngtpsWThCQcjdQxo6mBtOKhPWu/ihspY8DADjWGoA7iS3iECFBV0sK1sKZiGbxwkZVzOi232UBmJxgaI5to+c42EYZCXVRj6e7cZMENyabSWLePhSxywDemQw1YwoRtt5kHXruVvqYfjGtuWpDcGYT/+tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726250938; c=relaxed/simple;
	bh=HHo/htmfuvlN4RYy4Q6L3WQz/Rp9aMqyTvX/v7BVveo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QdRPGYXz08fy7sYDq0ysxJRj7lPkTv4iiL/yR2L7Fw8FF46xQXUVXSLpQ3wEK4daI7i2OlrIEf99CNFeGmxNnzoEDpNwjq8e2YtQnEHSN97vZqZeSL3LkbAcvEZ5sKk1tky1HiCGk7o0dhKoWXVbWb5p6cv8qAtEAaGHw/C1FBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LPYP3skY; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2053616fa36so28765315ad.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 11:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726250936; x=1726855736; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZnA3erGKxX6kl7LXrESncIv3ytuXvzogy+s/qD8NvE=;
        b=LPYP3skYh83tq5ZIpUalN/2HnZFRMenzryVwXLCOM443K153ZuxiRqVrCwPtIQyDh/
         rrBrlIkHMRFlC8V+wzv+EoJmy3FX22iBNmfgIL/LZXodUxIl3fviA6swDdq5Sf3eE7XG
         OhcRj1jzejx65Pgx+2fmRiv5o1uDIpJeVfKbBCVmyrJd4oT+udtOWzR3Emt9ldBTvDIU
         vRcCwx87qm3hW4DUXv0nlORQCpMdqVSHRmhSahguYEeOAkMRRmQLce/ZMwdgNHk4pcTf
         9dUrUFhSJAwVXX1JMU19wvBsMNlnS2ZpV1oKLk0TZ0zCn67xOY7x4uDovG92aipq/VD2
         xBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726250936; x=1726855736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ZnA3erGKxX6kl7LXrESncIv3ytuXvzogy+s/qD8NvE=;
        b=ROVy/8YMQmOJGBUclHmDAhz18Zny2/kFBaPvx9gGtyP7umclyj1w2k9YYThcNtjuG3
         Djxydq891w+hcQo30xiW/uiC2Ephq0kE4EwVmljKTBppD27o0+XHilRL50j4pX5rdeQb
         N3vyOv4ZZrCOFwQzhdRmL+b3NU/c2VL3AfKiU0Pfaqiy5weYRVncJjEgCodlylrxIHya
         9uVfIo2SFB+zyOaoeqXJWwtvn3aNDmu15ehz5ZB9yF2DSlh0jTOQqTszq5gnE9fWk5YA
         pmU57U73Uq3Kw1j8LJHXq4Gy6o/KC4JKeqEh7QATtpJCe/GSZpOfWr1m4ABFw4UPhKAs
         ILUA==
X-Forwarded-Encrypted: i=1; AJvYcCWmhwI+MVO+scGc3GYV59dCTVyLiXbKc2d4m84bdmU7LSljb8pm3Doh8ck7DP0iMOiiAYn7J9TSaVcc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlf6EsAVvtpNOPwIbReRzTwe3ris9s7WkYGDlhGt2ylqzHkQ5j
	G29qBgvLLMV89UDf0sie+/0v4BiYX9ygENEgs2TnX4LJ93hJfCZJS5PKqlO//1M=
X-Google-Smtp-Source: AGHT+IFN964Zs+/aTw1ojF+mM++GEGXbGxkYdsmtpvBxBVzOYlXl/oCfNtrQS2GMYUKlHUbPHCw5LA==
X-Received: by 2002:a17:902:f550:b0:205:4e4a:72d9 with SMTP id d9443c01a7336-2076e30651fmr127545975ad.7.1726250935453;
        Fri, 13 Sep 2024 11:08:55 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe9a75sm30468575ad.211.2024.09.13.11.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 11:08:54 -0700 (PDT)
Date: Fri, 13 Sep 2024 11:08:52 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH v4 00/10] riscv: Userspace pointer masking and tagged
 address ABI
Message-ID: <ZuR/tK+9cKUXqDga@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829010151.2813377-1-samuel.holland@sifive.com>

On Wed, Aug 28, 2024 at 06:01:22PM -0700, Samuel Holland wrote:
> RISC-V defines three extensions for pointer masking[1]:
>  - Smmpm: configured in M-mode, affects M-mode
>  - Smnpm: configured in M-mode, affects the next lower mode (S or U-mode)
>  - Ssnpm: configured in S-mode, affects the next lower mode (VS, VU, or U-mode)
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
> [1]: https://github.com/riscv/riscv-j-extension/releases/download/pointer-masking-v1.0.0-rc2/pointer-masking-v1.0.0-rc2.pdf
> [2]: https://lore.kernel.org/qemu-devel/20240511101053.1875596-1-me@deliversmonkey.space/
> [3]: https://lore.kernel.org/linux-riscv/20240814081126.956287-1-samuel.holland@sifive.com/
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
> 
>  Documentation/arch/riscv/hwprobe.rst          |   3 +

Would you be open to writing documentation similar to what is available
for arm? https://www.kernel.org/doc/html/next/arm64/tagged-address-abi.html

- Charlie

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
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

