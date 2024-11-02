Return-Path: <devicetree+bounces-118280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 549739B9B69
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 01:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78A941C211BE
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 00:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F2F17F7;
	Sat,  2 Nov 2024 00:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="FSDNBpDo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEABEC5
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 00:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506128; cv=none; b=mSu7Crj6czCRsoRx0HDykfGkfuXHz9WddrLil8VTLIc+BVhH+5RZi6plGNpRHiRG0YJOx2TUWQqc5pFhjAB3GudSP0IMo3xuB0w/3lUr3AMprYieiIv6GLExlI1nGwCHgbfvHzezwjI6HiBdiijoHYBBFDy4MTqCdm/Fp5Jodkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506128; c=relaxed/simple;
	bh=1+HPMwHfL8w/UP1XNWUc1jE1ZpTtj/9lI9vzQjxJiew=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S+KmfmxUvqTtF0fOmEoiQUg/vL887Wix6KKR5jjtbKdcPhV1Xj/nyXmWkdyXe3/eyEALyjwEN+GjfNM0eX9I/gafwOYZ11h6W4CiriWBZArnbwOrAEhvH9ldrCZ03obIi5FbfP2SROeg6D3SLb+mMYvESJCXucrn+yulL6x0nXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=FSDNBpDo; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7ee51d9ae30so1297254a12.1
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 17:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730506126; x=1731110926; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aIhpdvnS8o3S/1rCndHZDuodqexaWU66HXZlQq3UlG0=;
        b=FSDNBpDoVBH+fFzu+s+DRhZpdd78QhGyMoDx12mM725FalrPDseKFphr4fCotMC0RO
         Yf7j86RXxBZQqGkkwt+bBPYVyama3XufM+BopEVblo/rXJOxPFB0eTqKgzhW0r6kpg/q
         Rbi58P7PQQuCtjINaWUagFsRwK+azlChjBoucBlrOTGjzQxmv9hRIEkPWPo6DIaWtdOR
         DJgjRIt40vKml+UDde0VZcZjyreTuvP/z35c3Q4o4ZB/HotG+W3JSghKfsljJqh62fpu
         MQ5L+lCtFD86v/ygkGplM2BVpetBUcoI0l/coZlXTL7VwdXy8sYKXiczF0f0bO/DTwyu
         CDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730506126; x=1731110926;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aIhpdvnS8o3S/1rCndHZDuodqexaWU66HXZlQq3UlG0=;
        b=ENkAnw6W/rm0BLS3gTVASiO7EXb8mMwDA1neI6a+u2Dum57Ldf8I7BYCz7B29UcyEN
         kxMGOciXLuJ3zy0qVEqiyjmJq9a+6KgH/Nj1wZ640IKLG61CIOUArHF2VhuGpWAPDhk6
         vBrK++vuBWVkSRwxTtqqaCup+so1pRqGcXFKEXJuYrqBY49xf+rkDHOovn2km4wp6FBG
         q5ciw/UHHyn7aMWyNKEbaex3twc/kt73eAeyOqoiigwb9ePawHy0I5wn98WgLAUkMMt4
         4f1OQeZtNYwNuK+Ve7mrqNXfGQaLg8Emu7DPbP/DIA8nbNaJ/e8TszdtD7CgYZmie8Uq
         9wcA==
X-Gm-Message-State: AOJu0Yw/0bmYd/nPaJjTkUKubsVPsQJgq+1kGl1wZz9j6/ROKcdf6TwX
	Vdjr+TOGTr4rozNw2DN1bQr2EDlfJ/o2weN3WaUlxtG57VqNMsdOWMb3KzNvnn0=
X-Google-Smtp-Source: AGHT+IGxRCScMcMwaEc4b8BuDdYdlI8xB6N08mWjuTEIlyzLl/T60XD5jgJmmZ/EAdywce+JIj7weg==
X-Received: by 2002:a17:90b:1d52:b0:2e2:991c:d7a6 with SMTP id 98e67ed59e1d1-2e94c2da7a7mr7437178a91.19.1730506125787;
        Fri, 01 Nov 2024 17:08:45 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fc00856sm5505749a91.54.2024.11.01.17.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 17:08:45 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH 00/11] riscv: Memory type control for platforms with physical memory aliases
Date: Fri,  1 Nov 2024 17:07:54 -0700
Message-ID: <20241102000843.1301099-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


On some RISC-V platforms, including StarFive JH7100 and ESWIN EIC7700,
RAM is mapped to multiple physical address ranges, with each alias
having a different set of statically-determined Physical Memory
Attributes (PMAs). Software selects the PMAs for a page by choosing a
PFN from the corresponding physical address range. On these platforms,
this is the only way to allocate noncached memory for use with
noncoherent DMA.

 - Patch 1 adds a new binding to describe physical memory regions in
   the devicetree.
 - Patches 2-6 refactor existing memory type support to be modeled as
   variants on top of Svpbmt.
 - Patches 7-10 add logic to transform the PFN to use the desired alias
   when reading/writing page tables.
 - Patch 11 enables this new method of memory type control on JH7100.

I have boot-tested this series on platforms with each of the 4 ways to
select a memory type: SiFive FU740 (none), QEMU (Svpbmt), Allwinner D1
(XTheadMae), and ESWIN EIC7700 (aliases).


Samuel Holland (11):
  dt-bindings: riscv: Describe physical memory regions
  riscv: mm: Increment PFN in place when splitting mappings
  riscv: mm: Deduplicate pgtable address conversion functions
  riscv: mm: Deduplicate _PAGE_CHG_MASK definition
  riscv: ptdump: Only show N and MT bits when enabled in the kernel
  riscv: mm: Fix up memory types when writing page tables
  riscv: mm: Expose all page table bits to assembly code
  riscv: alternative: Add an ALTERNATIVE_3 macro
  riscv: alternative: Allow calls with alternate link registers
  riscv: mm: Use physical memory aliases to apply PMAs
  riscv: dts: starfive: jh7100: Use physical memory ranges for DMA

 .../bindings/riscv/physical-memory.yaml       | 101 ++++++++++
 arch/riscv/Kconfig                            |   3 +
 arch/riscv/Kconfig.errata                     |  20 +-
 .../boot/dts/starfive/jh7100-common.dtsi      |  30 +--
 arch/riscv/include/asm/alternative-macros.h   |  45 ++++-
 arch/riscv/include/asm/errata_list.h          |  45 -----
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/pgtable-32.h           |  19 +-
 arch/riscv/include/asm/pgtable-64.h           | 178 ++++++++++--------
 arch/riscv/include/asm/pgtable-bits.h         |  42 ++++-
 arch/riscv/include/asm/pgtable.h              |  55 +++---
 arch/riscv/kernel/alternative.c               |   4 +-
 arch/riscv/kernel/cpufeature.c                |   6 +
 arch/riscv/kernel/setup.c                     |   1 +
 arch/riscv/mm/Makefile                        |   1 +
 arch/riscv/mm/init.c                          |   8 +-
 arch/riscv/mm/kasan_init.c                    |   8 +-
 arch/riscv/mm/memory-alias.S                  | 101 ++++++++++
 arch/riscv/mm/pageattr.c                      |  17 +-
 arch/riscv/mm/pgtable.c                       |  91 +++++++++
 arch/riscv/mm/ptdump.c                        |  19 +-
 include/dt-bindings/riscv/physical-memory.h   |  44 +++++
 22 files changed, 596 insertions(+), 243 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/riscv/physical-memory.yaml
 create mode 100644 arch/riscv/mm/memory-alias.S
 create mode 100644 include/dt-bindings/riscv/physical-memory.h

-- 
2.45.1


