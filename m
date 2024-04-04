Return-Path: <devicetree+bounces-56075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C667897C18
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37CF21C26A6A
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EAD4156F42;
	Wed,  3 Apr 2024 23:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GRZqw+R9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886B3156F2D
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187694; cv=none; b=PIEO1eFfCRWUk5/39TGXeIJ0fT5cvoEapzE28GFj8EMWbJdG+fjBkvy0etEcP31PQeTGf8hdfNpotc4/EGkoaT5S0YqW+dU61WcI+6S75TBHpz0KGpUuBtLp6gAyl7qLlSOQ7+MP05B/jHrCMzRtgWc0CHNgZ1C9AHfagl7o7Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187694; c=relaxed/simple;
	bh=B9ELv+AlTbjVYoeAK4IUIRfzH1eGLSZ74eq5ShhJDK8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LBFNJ79txFWv4OsOFU4eRlXExl+8RjNLaW0lu87TVsPh3tLHoSqb7Ed4usGSQ/uWr8whONL5juTbtnFwuGGfBIFsCMaUC28xhGy7wqf8SVCErCbwkwNC5dfzRbE71wVmRZTToHTJWvFGrlvXuuYOMpm0rVQM+ypBytrmS0SFR4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GRZqw+R9; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e0f2798cd8so3401355ad.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187691; x=1712792491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rv0B5ns63COKymo1kiAr4r2DGtjIZSKU8HdFj+0IH40=;
        b=GRZqw+R9vHANT/gMhhVL7l0gGNKGvJteRFGJETcVu3pMozRmmyxZvYU5kT3iaoB13c
         fYfvK8SidhDZvjOaq6WD9nWyWCjhjH8McmivtakwjRcc/brhzDZZqIaB4T1t7dL7b5Ld
         8QTLK64niLh69GjzQOd94lzGByDTE+xjoZAnbpZTWhMnCmXcWnN3pZE4Az0ruNqEQkje
         UfqMRCg/urlJTuC48tUUKAx7uae2Z3gP1u0ypLanh92/zxGoeqmVQ+Y7NaloWPzJoPEg
         tKeqM4w/umADlkS1z28LgjNGt7nCSZRJ5RbzkOBIX2YkLDWbSbH6Rdm7Bf6eVJDAV7TJ
         3V9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187691; x=1712792491;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rv0B5ns63COKymo1kiAr4r2DGtjIZSKU8HdFj+0IH40=;
        b=oVnAL4sULEGOSoH6VN5/oW9lwMb8ky2xOMZ+7ntqP1KyC26svs1atIPTJwkT2mmrhq
         4QHPnEhwmTJnaB6Pk6F070EE+NpW/IndVAaFRkNLoq7t2+MrlgT3zFAfvH6eYwIuE0El
         wDB7X6QvIhfmyqaH9kzrR1exLF3kVwLfuYbqs5XgmAJJtIpseFYTRFdk6E/HXJq1itsN
         pFjZVtqiRrJ1sxTCXs8f83nO5XxSYUrSQ0MsWZ/8P7sUm5VhzKo/0gkrXhvWkp3iv4S6
         7hBJGEIOZADEVHkZRcZe6Idm2F6fY1Rp3CFncU7ZywW2UoqYSpVw7EmBprVMh7+OBRvO
         3TFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqUukW7nXEGKj9Lcn0mmKWq8TnR4ePHGqImtLyfcAahjeivh2zFfFA84cGM4b2nRSTJigB/MCXL/v6UB8h+0Zxqw8rGPaksibsaw==
X-Gm-Message-State: AOJu0YxYBrypysvFL0V+sf4raQJ0JUGLMf07JnW6HjIJemzqllGNwxUV
	BAgQ15YeQ0WcuUuRwtM3Vgjcu3yJgj8vNnaGN5CzxqoRK/XrwR+CH+YaleqszVA=
X-Google-Smtp-Source: AGHT+IG0BMforFKG/Z+mj8l+gwmdkHRGf0wkX6Dm3/AG2fDf6ErYVT/6uGhIGHy46uRoq1WTT9/6ig==
X-Received: by 2002:a17:902:c402:b0:1dd:c953:cfa0 with SMTP id k2-20020a170902c40200b001ddc953cfa0mr1051389plk.48.1712187690540;
        Wed, 03 Apr 2024 16:41:30 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:41:30 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v3 00/29] riscv control-flow integrity for usermode
Date: Wed,  3 Apr 2024 16:34:48 -0700
Message-ID: <20240403234054.2020347-1-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sending out v3 for cpu assisted riscv user mode control flow integrity.

v2 [9] was sent a week ago for this riscv usermode control flow integrity
enabling. RFC patchset was (v1) early this year (January) [7].

changes in v3
--------------
envcfg:
logic to pick up base envcfg had a bug where `ENVCFG_CBZE` could have been
picked on per task basis, even though CPU didn't implement it. Fixed in
this series.

dt-bindings:
As suggested, split into separate commit. fixed the messaging that spec is
in public review

arch_is_shadow_stack change:
arch_is_shadow_stack changed to vma_is_shadow_stack

hwprobe:
zicfiss / zicfilp if present will get enumerated in hwprobe

selftests:
As suggested, added object and binary filenames to .gitignore
Selftest binary anyways need to be compiled with cfi enabled compiler which
will make sure that landing pad and shadow stack are enabled. Thus removed
separate enable/disable tests. Cleaned up tests a bit.

changes in v2
---------------
As part of testing effort, compiled a rootfs with shadow stack and landing
pad enabled (libraries and binaries) and booted to shell. As part of long
running tests, I have been able to run some spec 2006 benchmarks [8] (here
link is provided only for list of benchmarks that were tested for long
running tests, excel sheet provided here actually is for some static stats
like code size growth on spec binaries). Thus converting from RFC to
regular patchset.

Securing control-flow integrity for usermode requires following

    - Securing forward control flow : All callsites must reach
      reach a target that they actually intend to reach.

    - Securing backward control flow : All function returns must
      return to location where they were called from.

This patch series use riscv cpu extension `zicfilp` [2] to secure forward
control flow and `zicfiss` [2] to secure backward control flow. `zicfilp`
enforces that all indirect calls or jmps must land on a landing pad instr
and label embedded in landing pad instr must match a value programmed in
`x7` register (at callsite via compiler). `zicfiss` introduces shadow stack
which can only be writeable via shadow stack instructions (sspush and
ssamoswap) and thus can't be tampered with via inadvertent stores. More
details about extension can be read from [2] and there are details in
documentation as well (in this patch series).

Using config `CONFIG_RISCV_USER_CFI`, kernel support for riscv control flow
integrity for user mode programs can be compiled in the kernel.

Enabling of control flow integrity for user programs is left to user runtime
(specifically expected from dynamic loader). There has been a lot of earlier
discussion on the enabling topic around x86 shadow stack enabling [3, 4, 5] and
overall consensus had been to let dynamic loader (or usermode) to decide for
enabling the feature.

This patch series introduces arch agnostic `prctls` to enable shadow stack
and indirect branch tracking. And implements them on riscv. arm64 is expected
to implement shadow stack part of these arch agnostic `prctls` [6]

Changes since last time
***********************

Spec changes
------------
- Forward cfi spec has become much simpler. `lpad` instruction is pseudo for
  `auipc rd, <20bit_imm>`. `lpad` checks x7 against 20bit embedded in instr.
  Thus label width is 20bit.

- Shadow stack management instructions are reduced to
    sspush - to push x1/x5 on shadow stack
    sspopchk - pops from shadow stack and comapres with x1/x5.
    ssamoswap - atomically swap value on shadow stack.
    rdssp - reads current shadow stack pointer

- Shadow stack accesses on readonly memory always raise AMO/store page fault.
  `sspopchk` is load but if underlying page is readonly, it'll raise a store
  page fault. It simplifies hardware and kernel for COW handling for shadow
  stack pages.

- riscv defines a new exception type `software check exception` and control flow
  violations raise software check exception.

- enabling controls for shadow stack and landing are in xenvcfg CSR and controls
  lower privilege mode enabling. As an example senvcfg controls enabling for U and
  menvcfg controls enabling for S mode.

core mm shadow stack enabling
-----------------------------
Shadow stack for x86 usermode are now in mainline and thus this patch
series builds on top of that for arch-agnostic mm related changes. Big
thanks and shout out to Rick Edgecombe for that.

selftests
---------
Created some minimal selftests to test the patch series.


[1] - https://lore.kernel.org/lkml/20230213045351.3945824-1-debug@rivosinc.com/
[2] - https://github.com/riscv/riscv-cfi
[3] - https://lore.kernel.org/lkml/ZWHcBq0bJ+15eeKs@finisterre.sirena.org.uk/T/#mb121cd8b33d564e64234595a0ec52211479cf474
[4] - https://lore.kernel.org/all/20220130211838.8382-1-rick.p.edgecombe@intel.com/
[5] - https://lore.kernel.org/lkml/CAHk-=wgP5mk3poVeejw16Asbid0ghDt4okHnWaWKLBkRhQntRA@mail.gmail.com/
[6] - https://lore.kernel.org/linux-mm/20231122-arm64-gcs-v7-2-201c483bd775@kernel.org/
[7] - https://lore.kernel.org/lkml/20240125062739.1339782-1-debug@rivosinc.com/
[8] - https://docs.google.com/spreadsheets/d/1_cHGH4ctNVvFRiS7hW9dEGKtXLAJ3aX4Z_iTSa3Tw2U/edit#gid=0
[9] - https://lore.kernel.org/lkml/20240329044459.3990638-1-debug@rivosinc.com/


