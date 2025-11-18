Return-Path: <devicetree+bounces-239658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 883CEC682C7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AC6884E4910
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E3430EF92;
	Tue, 18 Nov 2025 08:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L2ysF9a/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0B22E004
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763453831; cv=none; b=mgghb2V5YN8YCbelwBDIow2rKcwKuY4l7dCBes82wFYg/gtC9/3xcKUfuvA5BxeHSqLj4OMDk3TxuAi4rn/YChNpoG/C70drhCxLu1JIpT4pQNcUcOvYkr5nKSbc1rLK9maPYLpZOFDudOJvlyRdI+lWWUfDEfszqwBeIyxWtF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763453831; c=relaxed/simple;
	bh=nrNETb7FnlD8KOyyIYYnpMxqeeX5j6XkCSs+SnDvF5U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f3SmTn0HX8NKI/8RlPa4qoNuWoHakW5GcPKKwGkvFEbHKj8k2j5RHYEmeWjEvpH5f46woINI+H1RzBs0D1BW0uHrfp+G752yDl8NnLUpK3RMB4Ec/mw1uHkhE1qaSiblOWyAVYWUNPWKU2kjC+7FYl+GGofTKlOnId2wql4VWNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L2ysF9a/; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-3e37ad3d95aso3093580fac.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763453828; x=1764058628; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VoMiIW3QGWFlhk8MIsWxVubR6fxSt8dbm0U8xNqOKso=;
        b=L2ysF9a/uKgonkOGhYuUNJ5mvR14XpyF8zDtlwjw6gnnwusbRrxjqTa/zF7ZbFz8t2
         wPCvWYpD2sEzAdCssQetTMaadY8Jc3DMcDxGRfy+F2L5GcMH5ty8k04zHEpK3YxSz94I
         1jw0bZ5D/txG+28PczrVn1S7LhVrHjhrel8xVhrn9hFTQI8p82g1pIx69DUGYouOCyx/
         PRSxHhDGMQxN/dVkdJRq8HR0ykHj0Jj7f4aLxhcsMiLBaBp8XDbAHRqURhmuaAagfA//
         pJHkzWXoTs5NKLz3dcRshCoEVXOs/4TH2otLES8EVZ8d8A8pCmIYvvSEMeOD4rKNCxR0
         /fdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763453828; x=1764058628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VoMiIW3QGWFlhk8MIsWxVubR6fxSt8dbm0U8xNqOKso=;
        b=Cj08E1on2zORm7RYjsWnXT6//VLodcJZtQ0ldX4V9xc1F7uQNqt+jDrswN819b7AN1
         0dfTyDZqbThU+1d3EeKfhlzpFG8/TRCOu/mrPtErTw5wD9KiLqFijM+5upKdmc7KPyaG
         Stgxm+pgmvAm1ZP0v3ur15yfK+BJ6Njdq7/dY3lXm9HlXejL++UlcAgF5KjOsJN0YJLJ
         XiVmmeVI6wWfo5Rf9sWigOBIPZBXJHXLGVgQRjQT9wQI6frZ44MLB8ASA+sHCcKLO8kL
         5Gy1L88rxTfYHuCudAO/a4MJrK8y6EFlrDBNYAGgR1Eg5CbTIOOfFDKvYS5fdfaDzeo+
         RIyA==
X-Forwarded-Encrypted: i=1; AJvYcCXTvsVvLJbcVwWyR3FMwc1jukLTAqQjlTdEMaIqS5rJTtb62fYDHDSujxK4VggT5WwLA/IjKrILedQ6@vger.kernel.org
X-Gm-Message-State: AOJu0Yycib5C3CVwkqcVuOx0vvOUcBHVNu9SGoePLE/Gjhzsfyvoza2e
	AJ5Pbu3BqyW2zZb9G/PaQCnQbGQ98I3ETc4inhATU45Y1Go+gxcziSgrAL4pLVeB9O0+VeWcuUW
	pLUr77AzsCplPvhfPbXBt7GLQFYrR/Os=
X-Gm-Gg: ASbGncuB1CinbLt6odTVMAgcqpVj2FxNKv41O6dxZBadEfUKqvLHWA8kqvqSvVlgqKw
	oKXHwkzWocVUSriwFbKXwc0wmN67lIGM+dHE5Hs1PGD+TQan2e3i/6oXNeo4wkodg6oUz3Q9lZJ
	zRlCJPovSIPNHFi2jV9h3KgUGpMqIHWccjoRbz5WzdC/KHHsCMRUxbWPwSOoB8AaF9zErqEEV0S
	TNEZoxWdGCtFnnMuxC4OUA8dOKg+XEDmCUSV1aatKAvzSk2Owt+nVMhXMp4NMoin/G95UYKkANg
	7AgGByxnuVbp2ldyP/dyiiVA
X-Google-Smtp-Source: AGHT+IGJVcqmC4kf999U78KR7Z+Carm82VZu3TBqJ/efc58ObEBqzZW6zVk9sdknUB16hhvBH9dnfceG+BbpGDOEGZw=
X-Received: by 2002:a05:6870:8193:b0:3ec:3949:8a20 with SMTP id
 586e51a60fabf-3ec39498c48mr3471777fac.29.1763453828009; Tue, 18 Nov 2025
 00:17:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251113072806.795029-1-zhangchunyan@iscas.ac.cn>
In-Reply-To: <20251113072806.795029-1-zhangchunyan@iscas.ac.cn>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Tue, 18 Nov 2025 16:16:30 +0800
X-Gm-Features: AWmQ_bmir1nIDPRCoXTSJbPR1qsg3o-M-aBGdrWbEh4IhEqrSXiExjOsSzb9Kb8
Message-ID: <CAAfSe-v6+Gc8ujv3m3LdBPk+rGSqmz44RheoNqGJcXjOq3vU9A@mail.gmail.com>
Subject: Re: [PATCH V15 0/6] mm: Add soft-dirty and uffd-wp support for RISC-V
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Alexander Viro <viro@zeniv.linux.org.uk>, linux-mm@kvack.org, Peter Xu <peterx@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>, David Hildenbrand <david@redhat.com>, 
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R . Howlett" <Liam.Howlett@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
	Michal Hocko <mhocko@suse.com>, Axel Rasmussen <axelrasmussen@google.com>, 
	Yuanchu Xie <yuanchu@google.com>, linux-riscv@lists.infradead.org, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, 
	Conor Dooley <conor@kernel.org>, Deepak Gupta <debug@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
	linux-fsdevel@vger.kernel.org, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, 
	linux-kernel@vger.kernel.org, Chunyan Zhang <zhangchunyan@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

On Thu, 13 Nov 2025 at 15:28, Chunyan Zhang <zhangchunyan@iscas.ac.cn> wrote:
>
> This patchset adds support for Svrsw60t59b [1] extension which is ratified now,
> also add soft dirty and userfaultfd write protect tracking for RISC-V.
>
> The patches 1 and 2 add macros to allow architectures to define their own checks
> if the soft-dirty / uffd_wp PTE bits are available, in other words for RISC-V,
> the Svrsw60t59b extension is supported on which device the kernel is running.
> Also patch1-2 are removing "ifdef CONFIG_MEM_SOFT_DIRTY"
> "ifdef CONFIG_HAVE_ARCH_USERFAULTFD_WP" and
> "ifdef CONFIG_PTE_MARKER_UFFD_WP" in favor of checks which if not overridden by
> the architecture, no change in behavior is expected.
>
> This patchset has been tested with kselftest mm suite in which soft-dirty,
> madv_populate, test_unmerge_uffd_wp, and uffd-unit-tests run and pass,
> and no regressions are observed in any of the other tests.
>
> This patchset applies on the mm/mm-new branch commit ea53cb52f919
> ("mm/vmalloc: cleanup gfp flag use in new_vmap_block()")
>
> [1] https://github.com/riscv-non-isa/riscv-iommu/pull/543
>

Can this patchset go through the mm tree if there's no more comments?

Thanks,
Chunyan

> V15:
> - Rebased on to the latest mm-new branch;
> - Removed a redundant space;
> - Added Conor's Acked-by.
>
> V14: https://lore.kernel.org/all/20250918083731.1820327-1-zhangchunyan@iscas.ac.cn/
> - Fix indent inssues in userfaultfd_k.h;
> - Some descriptions and comments minor changes.
>
> V13: https://lore.kernel.org/all/20250917033703.1695933-1-zhangchunyan@iscas.ac.cn/
> - Rebase on mm-new branch;
> - Fixed build errors;
> - Add more exactly descriptions in commit message in patch 1-2;
> - Replace '__always_inline' with 'inline' for uffd_supports_wp_marker();
> - Add Svrsw60t59b description to the extensions dt-binding in patch 6.
>
> V12: https://lore.kernel.org/all/20250915101343.1449546-1-zhangchunyan@iscas.ac.cn/
> - Rename the macro API to pgtable_supports_soft_dirty/uffd_wp();
> - Add changes for setting VM_SOFTDIRTY flags conditionally;
> - Drop changes to show_smap_vma_flags();
> - Drop CONFIG_MEM_SOFT_DIRTY compile condition of clear_soft_dirty() and clear_soft_dirty_pmd();
> - Fix typos;
> - Add uffd_supports_wp_marker() and drop some ifdef CONFIG_PTE_MARKER_UFFD_WP.
>
> V11: https://lore.kernel.org/all/20250911095602.1130290-1-zhangchunyan@iscas.ac.cn/
> - Rename the macro API to pgtable_*_supported() since we also have PMD support;
> - Change the default implementations of two macros, make CONFIG_MEM_SOFT_DIRTY or
>   CONFIG_HAVE_ARCH_USERFAULTFD_WP part of the macros;
> - Correct the order of insertion of RISCV_ISA_EXT_SVRSW60T59B;
> - Rephrase some comments.
>
> V10: https://lore.kernel.org/all/20250909095611.803898-1-zhangchunyan@iscas.ac.cn/
> - Fixed the issue reported by kernel test irobot <lkp@intel.com>.
>
> V9: https://lore.kernel.org/all/20250905103651.489197-1-zhangchunyan@iscas.ac.cn/
> - Add pte_soft_dirty/uffd_wp_available() API to allow dynamically checking
>   if the PTE bit is available for the platform on which the kernel is running.
>
> V8: https://lore.kernel.org/all/20250619065232.1786470-1-zhangchunyan@iscas.ac.cn/)
> - Rebase on v6.16-rc1;
> - Add dependencies to MMU && 64BIT for RISCV_ISA_SVRSW60T59B;
> - Use 'Svrsw60t59b' instead of 'SVRSW60T59B' in Kconfig help paragraph;
> - Add Alex's Reviewed-by tag in patch 1.
>
> V7: https://lore.kernel.org/all/20250409095320.224100-1-zhangchunyan@iscas.ac.cn/
> - Add Svrsw60t59b [1] extension support;
> - Have soft-dirty and uffd-wp depending on the Svrsw60t59b extension to
>   avoid crashes for the hardware which don't have this extension.
>
> V6: https://lore.kernel.org/all/20250408084301.68186-1-zhangchunyan@iscas.ac.cn/
> - Changes to use bits 59-60 which are supported by extension Svrsw60t59b
>   for soft dirty and userfaultfd write protect tracking.
>
> V5: https://lore.kernel.org/all/20241113095833.1805746-1-zhangchunyan@iscas.ac.cn/
> - Fixed typos and corrected some words in Kconfig and commit message;
> - Removed pte_wrprotect() from pte_swp_mkuffd_wp(), this is a copy-paste
>   error;
> - Added Alex's Reviewed-by tag in patch 2.
>
> V4: https://lore.kernel.org/all/20240830011101.3189522-1-zhangchunyan@iscas.ac.cn/
> - Added bit(4) descriptions into "Format of swap PTE".
>
> V3: https://lore.kernel.org/all/20240805095243.44809-1-zhangchunyan@iscas.ac.cn/
> - Fixed the issue reported by kernel test irobot <lkp@intel.com>.
>
> V2: https://lore.kernel.org/all/20240731040444.3384790-1-zhangchunyan@iscas.ac.cn/
> - Add uffd-wp supported;
> - Make soft-dirty uffd-wp and devmap mutually exclusive which all use
>   the same PTE bit;
> - Add test results of CRIU in the cover-letter.
>
> Chunyan Zhang (6):
>   mm: softdirty: Add pgtable_supports_soft_dirty()
>   mm: userfaultfd: Add pgtable_supports_uffd_wp()
>   riscv: Add RISC-V Svrsw60t59b extension support
>   riscv: mm: Add soft-dirty page tracking support
>   riscv: mm: Add userfaultfd write-protect support
>   dt-bindings: riscv: Add Svrsw60t59b extension description
>
>  .../devicetree/bindings/riscv/extensions.yaml |   6 +
>  arch/riscv/Kconfig                            |  16 ++
>  arch/riscv/include/asm/hwcap.h                |   1 +
>  arch/riscv/include/asm/pgtable-bits.h         |  37 +++++
>  arch/riscv/include/asm/pgtable.h              | 143 +++++++++++++++++-
>  arch/riscv/kernel/cpufeature.c                |   1 +
>  fs/proc/task_mmu.c                            |  15 +-
>  fs/userfaultfd.c                              |  22 +--
>  include/asm-generic/pgtable_uffd.h            |  17 +++
>  include/linux/mm.h                            |   3 +
>  include/linux/mm_inline.h                     |   8 +-
>  include/linux/pgtable.h                       |  12 ++
>  include/linux/userfaultfd_k.h                 |  69 +++++----
>  mm/debug_vm_pgtable.c                         |  10 +-
>  mm/huge_memory.c                              |  13 +-
>  mm/internal.h                                 |   2 +-
>  mm/memory.c                                   |   6 +-
>  mm/mmap.c                                     |   6 +-
>  mm/mremap.c                                   |  13 +-
>  mm/userfaultfd.c                              |  10 +-
>  mm/vma.c                                      |   6 +-
>  mm/vma_exec.c                                 |   5 +-
>  22 files changed, 337 insertions(+), 84 deletions(-)
>
> --
> 2.34.1
>

