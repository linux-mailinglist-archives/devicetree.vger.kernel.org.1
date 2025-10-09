Return-Path: <devicetree+bounces-224695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 973BBBC723A
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E5963E3D58
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15BA11BCA1C;
	Thu,  9 Oct 2025 01:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fHTnddke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9290719D07A
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975126; cv=none; b=Z2GEv5dTN/vU+8jvAMIgnYh1+YJZLHetntqPRwiwnfBJQveesyOkhO8QhUCbyEE1G47MoNtPliqOC9/iZ6TU6hf3GgWWqnAbsOLxKDOXkFlYZXM3iLB/GmesEDyN6QZTD2h3xns4Gv+JDlWFpqhHctFpNZ3i7A8AGxA3f+a9cko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975126; c=relaxed/simple;
	bh=LHjoprXNC0B47wOwcrYJh34ePomRJQ7AX+AL+GRp2uc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oRV9KXWud6yDLCsbfaDTNFMf/8SVw65DbHqCxt78Y9+0jvUcyy4Kas1jh+4XYV+MUyThv0qYaGQeW78JHDgUIoKHF4rZo9T6OXjBwgMMqenmiMIZgbzFDN9X1/Pq6NJaRRemSRXzuppB3tp2wuVlw/hbnCIgxBCnOI3288xWWOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fHTnddke; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-26c209802c0so4483955ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975121; x=1760579921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MGhJn0zuB3cjukhWEpGI8TCi/TsRvbfQ2QIBtaBaaG4=;
        b=fHTnddkeiMm0lSUMrOleUpgP40+z6nrpQaTKPu2ZviU9Vu9PtcqpzqLdZ+YxiVYlQn
         fGseEreazubCJXRfD7ScKgsv9UT8VHiZWq7Y/qR1jsSuRdMqbLjlYKT5UJd1s/3sFccg
         3xPP3pjgyS0xOUOL4ddrnooYp4WXQXeWZvTP+sFZDspiRrvvMQ/avVQ+AvzJr2oXepdT
         C8PZ/kMmVSK1m4E8IvCNLlZFOeQLuGDPECitPCN/MhgnsyfnItmZehUVlIhcP/i7vxvr
         sQWqSormXnYCePWVTaJPdYoKqbxHVctQoLqWTMpTFTqeYtVBK76Bm4O491AsW57jqy7o
         t9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975121; x=1760579921;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MGhJn0zuB3cjukhWEpGI8TCi/TsRvbfQ2QIBtaBaaG4=;
        b=kbyK8Rf9XDoR8wbMSuLrZf0wqTQI/cAA5Ewo80r2HVrp+z2Mtvud9dGjvvVPtpG1CK
         qkEvbjE8R5113mUwHnsJ7SSqH8/YuCW6CB7MZ30PwbsBqHob8c5E2WmmsXqtfdQQ1ilp
         RboL/8t0l1/6Dw7MO6H868LXcxwt+t8motnp3lvmMC2zvcpUPXqoAH2so5iG/ddIDauy
         lNkfQ5uP1Zn15Gt9IE0dLJwI5/rPTvlLpv63AKnYYcAeOCM2hYPUQVXeNz1uwJcFthAF
         WCbDXuSfCbikCecHvtxEnyCxvLnvsUCWKnRI+vAJiv/Z9/3EeaxRa1OPSMsZerxsaTV5
         u5gQ==
X-Gm-Message-State: AOJu0YxLRe6HzwQAqWG7yPIrd5jDxyv9DmcnB0tHfBse3fjU5FQYg2sU
	1hIKHwAUaNbqNGA5Z8xgLk5tbRu8ATzen7A+drl7FjDNjgG1qVHFurW78XbFgXogepU=
X-Gm-Gg: ASbGncsbY9+qzS7CKJe80HRSKIxwZJ/5/O6ObfL2lua6OG7iR4yECxfSy/DZ0IQLqv6
	rCbfWmlCsnotoBKQdPJ8iwzZ5FxoGUV1ySrXYCDj6Q8HW85ZwtIFnYeiDpmGkUsAHj5u3OqLBoN
	153diIEfDopSZ6zAAErW7dgPvBdx9vsJcClMFEhocRFlIQE8IJug0TyheWsI2YrCDUW7BMkW+gv
	Y5cHQAQ7aelxl51C7nZqcpOJZbfsnpFJUif0EJ9Vse+P+l5L+bH01jesTTkw6+FSL7D+6Uli0sN
	gP0BQLGgUahzpDe3I/OygKOmJCykZZUdRAePGNSZ8ngDu+CWVR/HWTi9FuM6CaxYhDjuh0YwTko
	UCvY9XyMMwEFp7dWMjCvVniHcxTRbo8X0vrUFzZ5f+IZtELix+3wpspMXyBR8ZnfwFnKxgmLrnv
	jtyEU=
X-Google-Smtp-Source: AGHT+IFzbHSpjbAdUeon2lhaXxPMeA3ROs733ToOq2tuRqC6DIIzW3ufW0i2Q93eAuRGazWAjP157w==
X-Received: by 2002:a17:903:94f:b0:250:643e:c947 with SMTP id d9443c01a7336-290273ee209mr70465645ad.28.1759975120758;
        Wed, 08 Oct 2025 18:58:40 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:40 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 00/18] riscv: Memory type control for platforms with physical memory aliases
Date: Wed,  8 Oct 2025 18:57:36 -0700
Message-ID: <20251009015839.3460231-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
DRAM is mapped to multiple physical address ranges, with each alias
having a different set of statically-determined Physical Memory
Attributes (PMAs), such as cacheability. Software can alter the PMAs for
a page by selecting a PFN from the corresponding physical address range.
On these platforms, this is the only way to allocate noncached memory
for use with noncoherent DMA.

These physical memory aliases are only visible to architecture code.
Generic MM code only ever sees the primary (cacheable) alias. The major
change from v1 of this series is that I was asked to move the hooks from
pfn_pXX()/pXX_pfn() to set_pXX()/pXXp_get().

 - Patches 1-7 ensure that architecture-specific code that hooks page
   table reads and writes is always called, and the calls are balanced.
 - Patches 8-11 refactor existing platform-specific memory type support
   to be modeled as variants on top of the standard Svpbmt extension,
   and apply the memory type transformation during PTE reads/writes.
 - Patches 12-16 add a new DT binding to describe physical memory
   regions, and implement a new memory type variant that transforms the
   PFN to use the desired alias when reading/writing page tables.
 - Patches 17-18 enable this new memory type variant on StarFive JH7100
   and ESWIN EIC7700.

I have boot-tested this series and tested DMA on SoCs with each of the
four ways to select a memory type: SiFive FU740 (none), SiFive
P470-based SoC (Svpbmt), Allwinner D1 (XTheadMae), and ESWIN EIC7700
(aliases).

Here is some basic `perf benchmark` data comparing relative performance
between v6.17 and either the generic MM changes or the whole series:

 Test        | Scenario   |  FU740 |   P470 |    D1  | EIC7700
 =============================================================
 syscall     | patch 1-10 | +3.17% | +0.89% | +2.60% |  +0.68%
   basic     |     series | -2.52% | -1.41% | +1.37% |  -0.64%
 -------------------------------------------------------------
 syscall     | patch 1-10 | +0.17% | -0.57% | +2.79% |  -1.12%
   fork      |     series | -1.31% | -5.91% | -1.50% |  -2.73%
 -------------------------------------------------------------
 syscall     | patch 1-10 | -0.24% | -0.30% | +2.76% |  +1.32%
   execve    |     series | -1.65% | -4.82% | -1.38% |  -0.66%
 -------------------------------------------------------------
 sched       | patch 1-10 | +1.54% | -5.76% | -5.09% |  -1.04%
   messaging |     series | +0.66% | +2.00% | +1.40% |  +1.97%
 -------------------------------------------------------------

The benchmark results are stable within each machine, and the same
binary was used on all machines. I would have expected the preparatory
changes (patch 1-10) to hurt performance somewhat, due to READ_ONCE/
WRITE_ONCE generating additional loads/stores, but surprisingly
performance was improved in some cases. The variation across machines
in response to the entire series is expected, as each of these machines
gets a different version of the alternative block.

Changes in v2:
 - Keep Kconfig options for each PBMT variant separate/non-overlapping
 - Move fixup code sequences to set_pXX() and pXXp_get()
 - Only define ALT_UNFIX_MT in configurations that need it
 - Improve inline documentation of ALT_FIXUP_MT/ALT_UNFIX_MT
 - Fix erroneously-escaped newline in assembly ALTERNATIVE_CFG_3 macro
 - Remove references to Physical Address Width (no longer part of Smmpt)
 - Remove special first entry from the list of physical memory regions
 - Fix compatible string in example
 - Put new code behind a new Kconfig option RISCV_ISA_XLINUXMEMALIAS
 - Document the calling convention of riscv_fixup/unfix_memory_alias()
 - Do not transform !pte_present() (e.g. swap) PTEs
 - Export riscv_fixup/unfix_memory_alias() to fix module compilation
 - Move the JH7100 DT changes from jh7100-common.dtsi to jh7100.dtsi
 - Keep RISCV_DMA_NONCOHERENT and RISCV_NONSTANDARD_CACHE_OPS selected

Anshuman Khandual (1):
  mm/ptdump: Replace READ_ONCE() with standard page table accessors

Samuel Holland (17):
  perf/core: Replace READ_ONCE() with standard page table accessors
  mm: Move the fallback definitions of pXXp_get()
  mm: Always use page table accessor functions
  mm: Allow page table accessors to be non-idempotent
  riscv: hibernate: Replace open-coded pXXp_get()
  riscv: mm: Always use page table accessor functions
  riscv: mm: Simplify set_p4d() and set_pgd()
  riscv: mm: Deduplicate _PAGE_CHG_MASK definition
  riscv: ptdump: Only show N and MT bits when enabled in the kernel
  riscv: mm: Fix up memory types when writing page tables
  riscv: mm: Expose all page table bits to assembly code
  riscv: alternative: Add an ALTERNATIVE_3 macro
  riscv: alternative: Allow calls with alternate link registers
  dt-bindings: riscv: Describe physical memory regions
  riscv: mm: Use physical memory aliases to apply PMAs
  riscv: dts: starfive: jh7100: Use physical memory ranges for DMA
  riscv: dts: eswin: eic7700: Use physical memory ranges for DMA

 .../bindings/riscv/physical-memory.yaml       |  91 +++++++
 arch/riscv/Kconfig                            |  16 ++
 arch/riscv/Kconfig.errata                     |  19 --
 arch/riscv/Kconfig.socs                       |   4 +
 arch/riscv/boot/dts/eswin/eic7700.dtsi        |   5 +
 .../boot/dts/starfive/jh7100-common.dtsi      |  24 --
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |   4 +
 arch/riscv/include/asm/alternative-macros.h   |  45 +++-
 arch/riscv/include/asm/errata_list.h          |  45 ----
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/pgtable-32.h           |  17 +-
 arch/riscv/include/asm/pgtable-64.h           | 228 +++++++++++++-----
 arch/riscv/include/asm/pgtable-bits.h         |  43 +++-
 arch/riscv/include/asm/pgtable.h              |  67 ++---
 arch/riscv/kernel/alternative.c               |   4 +-
 arch/riscv/kernel/cpufeature.c                |   6 +
 arch/riscv/kernel/hibernate.c                 |  18 +-
 arch/riscv/kernel/setup.c                     |   1 +
 arch/riscv/kvm/gstage.c                       |   6 +-
 arch/riscv/mm/Makefile                        |   1 +
 arch/riscv/mm/init.c                          |  68 +++---
 arch/riscv/mm/memory-alias.S                  | 123 ++++++++++
 arch/riscv/mm/pgtable.c                       | 114 +++++++--
 arch/riscv/mm/ptdump.c                        |  16 +-
 fs/dax.c                                      |   4 +-
 fs/proc/task_mmu.c                            |  27 ++-
 fs/userfaultfd.c                              |   6 +-
 include/dt-bindings/riscv/physical-memory.h   |  44 ++++
 include/linux/huge_mm.h                       |   8 +-
 include/linux/mm.h                            |  14 +-
 include/linux/pgtable.h                       | 112 ++++-----
 kernel/events/core.c                          |   8 +-
 mm/debug_vm_pgtable.c                         |   4 +-
 mm/filemap.c                                  |   6 +-
 mm/gup.c                                      |  37 +--
 mm/hmm.c                                      |   2 +-
 mm/huge_memory.c                              |  90 +++----
 mm/hugetlb.c                                  |  10 +-
 mm/hugetlb_vmemmap.c                          |   4 +-
 mm/kasan/init.c                               |  39 +--
 mm/kasan/shadow.c                             |  12 +-
 mm/khugepaged.c                               |  10 +-
 mm/ksm.c                                      |   2 +-
 mm/madvise.c                                  |   8 +-
 mm/mapping_dirty_helpers.c                    |   2 +-
 mm/memory-failure.c                           |  14 +-
 mm/memory.c                                   |  78 +++---
 mm/mempolicy.c                                |   4 +-
 mm/migrate.c                                  |   4 +-
 mm/migrate_device.c                           |  10 +-
 mm/mlock.c                                    |   6 +-
 mm/mprotect.c                                 |   4 +-
 mm/mremap.c                                   |  30 +--
 mm/page_table_check.c                         |   7 +-
 mm/page_vma_mapped.c                          |   6 +-
 mm/pagewalk.c                                 |  14 +-
 mm/percpu.c                                   |   8 +-
 mm/pgalloc-track.h                            |   8 +-
 mm/pgtable-generic.c                          |  25 +-
 mm/ptdump.c                                   |  10 +-
 mm/rmap.c                                     |   8 +-
 mm/sparse-vmemmap.c                           |  10 +-
 mm/userfaultfd.c                              |  10 +-
 mm/vmalloc.c                                  |  49 ++--
 mm/vmscan.c                                   |  16 +-
 65 files changed, 1110 insertions(+), 626 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/riscv/physical-memory.yaml
 create mode 100644 arch/riscv/mm/memory-alias.S
 create mode 100644 include/dt-bindings/riscv/physical-memory.h

-- 
2.47.2

