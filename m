Return-Path: <devicetree+bounces-79531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5B4915B1D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 02:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF6E91F22690
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 00:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97998101E6;
	Tue, 25 Jun 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WKraHZPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919A917543
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 00:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719276623; cv=none; b=otozio99oYT/9pbY/HkTwQYpDprj3035CXskxURorzyB04OeAAAJ7Yq5r+/KvRiLSLBYN90F4FwpS8FJvUXpxS7Hig8y9Jrx/ucuyhYtRxXMT2Qv5S5vwK+lf3gwgg1l+thPA6okOXFNNFpDCZ3iVIbvgS8/aPsokGjec/1TW7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719276623; c=relaxed/simple;
	bh=xfavRhkPnZCS2POrDvsuNxPZ2zYbwjnwZ52u+3fooG0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bFG3f1fk5OcsO8WDAuoDwPBvNIOMxvJkeWH/8UIeYgI5sN8IXj6mdUcxE8XAz3hlG+NprYTDduHg9d5ajA5ynTN20T5M7Eqw3i+gwxycnefzx6ZyTWmpN2MOr00NxrCD8ubAkF85qiqq/N4fqDjVqqznPx0ZTmiiJuQv8Wn1X5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=WKraHZPP; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1f9cd92b146so38812465ad.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 17:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719276620; x=1719881420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nnSgK6fY+iLtRTDSAhrszcxAOUvzG0XuSCnjEWrisjQ=;
        b=WKraHZPPG+oSj9CXeLmi9tF45NEC1AX6yOW4PvX2n0K0IiJnOSmDYmVDRLxXKF23mr
         bkTGqSgeKa5QrqbI3a5BvQuuOvN5POduzJHrz+0oSPLrOlfJfkBc75QXqV1ywDT56W96
         1aS6wEaCPGmAdV+OQ9aeO09KrW3BTzFfuf7xOdYoNGAVcV6ZBcglnKiNanh7TN+6vGJI
         OszpTVNaTwa5qkH44nSTTPh4u7vzDUgmXbMhoh/3E5q6Mf+aGjOeNG/YfN/pOYzRWCPf
         t6TrZg4s+j686bPEEfKk63bXc0CH3m0qy4mygA8/CttvLXul0Y9TNnLXhfW4AJsPxFG2
         pS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719276620; x=1719881420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnSgK6fY+iLtRTDSAhrszcxAOUvzG0XuSCnjEWrisjQ=;
        b=HxcNRzykWWbdiCqsf0xksJ90bdMZBgNElcyA4mTDGjN+U3kHfapsYKHyxUSDMoT8pP
         H2LV7PKAzSKyFX1tMIyOzbN++EurjhocticygzGG3v1R2ZUZovGtzY4eZG1YLVkxwD8p
         hiuPNO/WL+ulZSKQk7Fu4z7t30MzfSfWTfeNMRQU/B+XUdkSmLzxWtrbrwDkvvS8RTly
         KEESD5ydby3SIdhVcWMgSrFODEk3ZZic3GIUB6ufp+XcGJWdXneoM/2F5YsRkpyDCB1y
         Zr/Hnx7do3vLZsqJv/p1IslkhuNuRtYrRVI5w9/0nK5ecR9VH4O8dyJlmkI7JERCtGvb
         PdUg==
X-Forwarded-Encrypted: i=1; AJvYcCUJj4t8gp5im7vPTZQUUKBAxjmyCiC2y5VDu460wwHKzME4MGt6C8S5sVG1IoU2xLCEJ+cG7imYhsQinKtfIfnc0D7hli08EkxNaA==
X-Gm-Message-State: AOJu0Yz6AruTIeDDdhdK9uzhb2+obOY4VAkyGx8ILT3FzlKE2UbTzPbm
	/HW7khN4/VGPjitFM8ubJh2Ldcr+/IeNaIDnZMkio78G3uxQe1O4cBmp0V9zSFQ=
X-Google-Smtp-Source: AGHT+IHApu4tSWv9QAY/GKACS90i6vXuL/EeTsIFIOOg7FuFkA0Ybzt8e0yLcPcwfLJUGW/EmQK7pQ==
X-Received: by 2002:a17:902:dac7:b0:1f8:6bae:28f with SMTP id d9443c01a7336-1fa1d3e00bdmr81145035ad.9.1719276619768;
        Mon, 24 Jun 2024 17:50:19 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbb2a7csm68150235ad.256.2024.06.24.17.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 17:50:19 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/8] RISC-V: Detect and report speed of unaligned vector accesses
Date: Mon, 24 Jun 2024 20:49:53 -0400
Message-ID: <20240625005001.37901-1-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds support for detecting and reporting the speed of unaligned vector
accesses on RISC-V CPUs. Adds vec_misaligned_speed key to the hwprobe
adds Zicclsm to cpufeature and fixes the check for scalar unaligned
emulated all CPUs. The vec_misaligned_speed key keeps the same format
as the scalar unaligned access speed key.

This set does not emulate unaligned vector accesses on CPUs that do not
support them. Only reports if userspace can run them and speed of
unaligned vector accesses if supported.

If Zicclsm is present, the kernel will set both scalar and vector unaligned access speed to FAST.

This patch requires the following patche to be applied first:
RISC-V: fix vector insn load/store width mask
https://lore.kernel.org/all/20240606182800.415831-1-jesse@rivosinc.com/

Jesse Taube (8):
  RISC-V: Add Zicclsm to cpufeature and hwprobe
  dt-bindings: riscv: Add Zicclsm ISA extension description.
  RISC-V: Check scalar unaligned access on all CPUs
  RISC-V: Check Zicclsm to set unaligned access speed
  RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
  RISC-V: Detect unaligned vector accesses supported
  RISC-V: Report vector unaligned access speed hwprobe
  RISC-V: hwprobe: Document unaligned vector perf key

 Documentation/arch/riscv/hwprobe.rst          |  19 +++
 .../devicetree/bindings/riscv/extensions.yaml |   7 +
 arch/riscv/Kconfig                            |  57 ++++++-
 arch/riscv/include/asm/cpufeature.h           |   7 +-
 arch/riscv/include/asm/entry-common.h         |  11 --
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/hwprobe.h              |   2 +-
 arch/riscv/include/asm/vector.h               |   1 +
 arch/riscv/include/uapi/asm/hwprobe.h         |   6 +
 arch/riscv/kernel/Makefile                    |   3 +-
 arch/riscv/kernel/copy-unaligned.h            |   5 +
 arch/riscv/kernel/cpufeature.c                |   1 +
 arch/riscv/kernel/fpu.S                       |   4 +-
 arch/riscv/kernel/sys_hwprobe.c               |  42 +++++
 arch/riscv/kernel/traps_misaligned.c          | 143 +++++++++++++---
 arch/riscv/kernel/unaligned_access_speed.c    | 159 +++++++++++++++++-
 arch/riscv/kernel/vec-copy-unaligned.S        |  58 +++++++
 arch/riscv/kernel/vector.c                    |   2 +-
 18 files changed, 480 insertions(+), 48 deletions(-)
 create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S

-- 
2.45.2


