Return-Path: <devicetree+bounces-86261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B3C93368B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 08:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1322B23000
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 06:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFD61173F;
	Wed, 17 Jul 2024 06:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RMSrfWGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0061611712
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 06:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721196099; cv=none; b=l3ymzpQ0dSqDWnjS6/M0mr5HGjE3a/2egOPBtqxBtCQEoF/QeGFgPbRfwFeE5yVRt1LZl2awk0Te8VvHFtv2jHSWoQDHS160ZmwjH/Clq9UKnYVnnA+Rn0KkERNkUv+44CIYuHShzkCu68LN0mPJ74TM4g2DDOHogh3dk2dDxK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721196099; c=relaxed/simple;
	bh=ggCA6FExsWNy9ux8ROSvJ6hLW/Bn0fTX6rd24x8KzmE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=hmyt866qH2KMavKvcbkMVvPwUZN/AII8NhjF4DSjVrbkSp4EnZinAX8x/mp4CY9pbLzj37AS1oOxTIzqQsUWukWrz5KKCQSDRh9i87qHZbytO8Kw3EmA16/IoPWH+5eGou1kUccj8qJ83xAzHkAojenHdIr2frv7Ee/G/L/xa7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RMSrfWGq; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52e9f863c46so7050667e87.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 23:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721196094; x=1721800894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pl3L0FVYFNGhFKHk1JJU6PwaolSCChVISQJkZ5aIzzI=;
        b=RMSrfWGq3xe/GEMfVemP25KJFYRVqb2TaeIHhxMSZMlWv/xHsjImNbJ11mw0Um8KL/
         1Ny1rxHhzyIu3lbDLkyTSV8l0d1yyDcThNJZjdFysQFR3IyD/4ZPhc1y8BaGwV27sMw4
         uvR4gVDUP4xXbAV/cXFdJEXvey8Daxv7Nm2XTU2AAUTAWJn1Cf5lGeoDsPA8x8HYpiE0
         fhg/DqbDVaxbqVKst/LWrRNlxaE9j3DvmuxKhghRwY/bVFdF3HBi4CkguE5x13AyMKDu
         0emrXph/nyP8Mxmj8z1xVpdqMUbmIbxs7qXpmjyCoY7T+3nMu2h8MEPnXLJ3OM9VDBNk
         89HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721196094; x=1721800894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pl3L0FVYFNGhFKHk1JJU6PwaolSCChVISQJkZ5aIzzI=;
        b=q+o+NeMCijUWiTFvA3Pdhmhvjie49+BYJgdGjX2s0LRacnRA9ibIPTmYyfgnenmM/O
         tQXX75zpZGeJGLqoPeIZ9MK0t8wUKkus5j6y1S7Pu3pqOG2X2ozuew4132f5vo2JU0Wo
         P1rQb6HpPHMGmrBCvGA34I97UZJbXAq8R99W2H8Dojfx2OLgulGfZMpXRAQISWz/2JUd
         3IwH6wdbM4xQn734dZj1cwh5x4JbIso2bgP2cfhNodRV05bCglR7nSsVqB7Os5rqHran
         cSt86+TIh3oU8szoSmQ+GXVxLYcGQYHu5up2lpBbjioK7cBuybkYPO9ltC8VktgSZwuo
         pxqA==
X-Forwarded-Encrypted: i=1; AJvYcCULff/LYcRF9UoBm3vDkL5bS9SSW8MhEVoP0B6bwMVh1VstLzdCz5rLZ4F0TOKlk0za6z/9U8uiAtsnWANqtKhfaGVrHR8RB2vzyw==
X-Gm-Message-State: AOJu0YwCTFKa01Ez5kHGC1PtUamF+h4DNWo86gsy2nD54PQVuX2hSrsQ
	tjcTmb5OdznH10DLRNdPwUKATTWlxJg1FkZYdZqb5Aapq3pNbV1Ig4n4W6+6nq0=
X-Google-Smtp-Source: AGHT+IGTWlMHonD8VGH1O7WD0Yggp5hmzzpiSRuP4gthch3y8dFycbjmh4esQgOV2+4OGbeLMAp6Ag==
X-Received: by 2002:a05:6512:b82:b0:52e:bdd4:610b with SMTP id 2adb3069b0e04-52ee53a573fmr514590e87.4.1721196093903;
        Tue, 16 Jul 2024 23:01:33 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f23a000sm193895315e9.5.2024.07.16.23.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 23:01:33 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	yunhui cui <cuiyunhui@bytedance.com>,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v4 0/4] Svvptc extension to remove preventive sfence.vma
Date: Wed, 17 Jul 2024 08:01:21 +0200
Message-Id: <20240717060125.139416-1-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

In RISC-V, after a new mapping is established, a sfence.vma needs to be
emitted for different reasons:

- if the uarch caches invalid entries, we need to invalidate it otherwise
  we would trap on this invalid entry,
- if the uarch does not cache invalid entries, a reordered access could fail
  to see the new mapping and then trap (sfence.vma acts as a fence).

We can actually avoid emitting those (mostly) useless and costly sfence.vma
by handling the traps instead:

- for new kernel mappings: only vmalloc mappings need to be taken care of,
  other new mapping are rare and already emit the required sfence.vma if
  needed.
  That must be achieved very early in the exception path as explained in
  patch 3, and this also fixes our fragile way of dealing with vmalloc faults.

- for new user mappings: Svvptc makes update_mmu_cache() a no-op but we can
  take some gratuitous page faults (which are very unlikely though).

Patch 1 and 2 introduce Svvptc extension probing.

On our uarch that does not cache invalid entries and a 6.5 kernel, the
gains are measurable:

* Kernel boot:                  6%
* ltp - mmapstress01:           8%
* lmbench - lat_pagefault:      20%
* lmbench - lat_mmap:           5%

Here are the corresponding numbers of sfence.vma emitted:

* Ubuntu boot to login:
Before: ~630k sfence.vma
After:  ~200k sfence.vma

* ltp - mmapstress01
Before: ~45k
After:  ~6.3k

* lmbench - lat_pagefault
Before: ~665k
After:   832 (!)

* lmbench - lat_mmap
Before: ~546k
After:   718 (!)

Thanks to Ved and Matt Evans for triggering the discussion that led to
this patchset!

Any feedback, test or relevant benchmark are welcome 🙂

v3: https://lore.kernel.org/linux-riscv/20240702085034.48395-1-alexghiti@rivosinc.com/
v2: https://lore.kernel.org/linux-riscv/20240131155929.169961-1-alexghiti@rivosinc.com/
v1: https://lore.kernel.org/linux-riscv/20231207150348.82096-1-alexghiti@rivosinc.com/

Changes in v4:
- Fix rv32 (Anup)
- Fix amoswap.w using amoswap.d (Anup)
- Save only needed registers (Yunhui)
- Fix build issue on llvm by adding a ; after a label (kernel test robot)

Changes in v3:
- Rebase on top of 6.10
- Remove the comment about xRET acting as a fence which is not part of
  the ratified specification
- Add #sfence.vma to the cover letter (Andrea)
- Remove the RFC as svvptc was ratified the 28th of June 2024

Changes in v2:
- Rebase on top of 6.8-rc1
- Remove patch with runtime detection of tlb caching and debugfs patch
- Add patch that probes Svvptc
- Add patch that defines the new Svvptc dt-binding
- Leave the behaviour as-is for uarchs that cache invalid TLB entries since
  I don't have any good perf numbers
- Address comments from Christoph on v1
- Fix a race condition in new_vmalloc update:

       ld      a2, 0(a0) <= this could load something which is != -1
       not     a1, a1    <= here or in the instruction after, flush_cache_vmap()
                            could make the whole bitmap to 1
       and     a1, a2, a1
       sd      a1, 0(a0) <= here we would clear bits that should not be cleared!

   Instead, replace the whole sequence with:
       amoxor.w        a0, a1, (a0)

Alexandre Ghiti (4):
  riscv: Add ISA extension parsing for Svvptc
  dt-bindings: riscv: Add Svvptc ISA extension description
  riscv: Stop emitting preventive sfence.vma for new vmalloc mappings
  riscv: Stop emitting preventive sfence.vma for new userspace mappings
    with Svvptc

 .../devicetree/bindings/riscv/extensions.yaml |  7 ++
 arch/riscv/include/asm/cacheflush.h           | 18 +++-
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/pgtable.h              | 16 +++-
 arch/riscv/include/asm/thread_info.h          |  7 ++
 arch/riscv/kernel/asm-offsets.c               |  7 ++
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kernel/entry.S                     | 87 +++++++++++++++++++
 arch/riscv/mm/init.c                          |  2 +
 arch/riscv/mm/pgtable.c                       | 13 +++
 10 files changed, 157 insertions(+), 2 deletions(-)

-- 
2.39.2


