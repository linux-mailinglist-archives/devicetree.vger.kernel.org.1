Return-Path: <devicetree+bounces-82224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 618B29238DB
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 10:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC946B22361
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 08:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421F014F111;
	Tue,  2 Jul 2024 08:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="bmh1y0Dg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD4684D39
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 08:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719910259; cv=none; b=C8jUV1V5DrEdEP8H+xyh3DO7MfI7OQtnoNhIGdYSv7rhEJSpVCaM/PdN4J2m7Q0+8vk6KI/f2kPlmcOdO/Fq1HkSytr00FSAh45DgWUdofkz4dToaneJmGGLbVLEhcln/OV4McUOqxn8N1Y1/3ro3MzuC7FH4H5XMyyWBBgESUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719910259; c=relaxed/simple;
	bh=pVB9+eJmQYSUV7BnVP2UARCZrpsCLMXoTej+DqDatz8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hzpdqiSupWK5w+Zun8xpnqDvrLGOl9LCcQGfTWmVk4UzVEeGD3DZgNStPrHDWuKbNk91p5iWVlGospUP+O//Y1p1G35+oPeHtBh4jQoQkNgKq/TT7rO7Gx5TJj9HdGIJW4qwEtJei0BkFqRYsjMzznyuM/I0dRdDEIFwj19O31o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=bmh1y0Dg; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-361785bfa71so2749722f8f.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 01:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719910255; x=1720515055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+xS1Bqi59c49E2PHWFY2Vpj6P66JYDOn9uI6CEb5XGw=;
        b=bmh1y0Dgb1hxNjD3scWdEP1tZxoj9XjTAyAxCTOyl2P7XR931ISIEQsL3R/msa5zBQ
         a60TqOw2EQVzQvRCfnxiwwfUtNNEIVH8/Y2nFI+lcwXexlvOpG9rkh9EZ4kwC3Rs0PBi
         j2gpRCeNEx2xYcBvfwEP3u4C0O7IwRrIb+pwN/Nm87zXqLa7Q0iErvHkgGq1Fk526lkb
         3vH9A3sf/dYmsNdNWBDHTCq+j4cgIWfd+EnC3/grgmc+w1H+TbTo4fWigl1i8E7OWwmc
         qyi9W2dFnXdqn5WKNeYZFozresTBXt7l0NZvQ3AlE9IUTvqYxyf+CYeWjkKZeUE0uYro
         /SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719910255; x=1720515055;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+xS1Bqi59c49E2PHWFY2Vpj6P66JYDOn9uI6CEb5XGw=;
        b=lGv3WNEXzSq/drxTrwyFJgX2P7/zKjc2BBiaKNMQd18eAqrz0BRZr0tEHc/ZPpByD9
         dA7xB1UrVS7bq/MWKJKY8Ddd6dnTNtdcK9PDxgWezsiQE/BzFl+l541nWuZl/z+NuNg2
         0NEav3Jn8q4P7fnnXPEfuZhYKBmZobUIiFbh7L5F6XQ+aRqgL0XcgXc9mClVXMlRJsJt
         Z82IT1+GY+FCwVH1zxYwU92gpDN5F3jkDb1ym1T0//UlpweGgQxvr8th96KC62WmHu23
         3X4xpIkNO3LVYg3Xo7SpVUfb6XlCSrbfoDTCic0zojbWKSoX643vz1CnVadasYULMHUU
         0udA==
X-Forwarded-Encrypted: i=1; AJvYcCUt0RxsU7CGcuGRSpuaWmO2BWB3Kbeq+hod2pz6GdtwraF2uy3k4TCxIx8VUx3PIhS2mmDnG0Pj4Gm4sDtj7hwN9xNJxeFVPezVEA==
X-Gm-Message-State: AOJu0Yy9K4s+w18K/jAlsEqvY+hAO8W4DFbgVK4xVsyqwUkgxISUdtgI
	HQtHAynZfe60Qir3v/FFT0QP8Rg9RldM91Ork8dmSg+UaZPtSP7tFi6tWDF8hF8=
X-Google-Smtp-Source: AGHT+IEGKjdmwTLWZQHNUg3WoGX6FwM1wWssxVPjJRPeaKNE2FUT9N5nuel7WS5lK14l4cEdRt8FFQ==
X-Received: by 2002:adf:f80d:0:b0:366:e838:f5d4 with SMTP id ffacd0b85a97d-36775699f64mr5125514f8f.3.1719910254746;
        Tue, 02 Jul 2024 01:50:54 -0700 (PDT)
Received: from alex-rivos.ba.rivosinc.com (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a1055b9sm12499800f8f.95.2024.07.02.01.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 01:50:54 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v3 0/4] Svvptc extension to remove preventive sfence.vma
Date: Tue,  2 Jul 2024 10:50:30 +0200
Message-Id: <20240702085034.48395-1-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
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

Any feedback, test or relevant benchmark are welcome :)

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
 arch/riscv/include/asm/thread_info.h          |  5 ++
 arch/riscv/kernel/asm-offsets.c               |  5 ++
 arch/riscv/kernel/cpufeature.c                |  1 +
 arch/riscv/kernel/entry.S                     | 84 +++++++++++++++++++
 arch/riscv/mm/init.c                          |  2 +
 arch/riscv/mm/pgtable.c                       | 13 +++
 10 files changed, 150 insertions(+), 2 deletions(-)

-- 
2.39.2


