Return-Path: <devicetree+bounces-88403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 595B493D6F8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 18:37:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6C261F24AAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 16:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38FB117C7AC;
	Fri, 26 Jul 2024 16:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="iiNd7oPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB0C17B422
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 16:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722011848; cv=none; b=qoPe/54uMcqtkgZXhhDR0bAQiVKWLMTacB4u7TfP8yHgCB5NG30cpx7zf1QxVNmL/3nL8xYOjeG26JwOqZCwwpYk0mBb35cVCggAffH5vD34qAr4BoOgc9cgMxWlz9CfRRP6RecZA9unDih4u4MiihcNUk7T43W0EfjRrlcK5ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722011848; c=relaxed/simple;
	bh=jIDumT3gWGM5YT3nKq563tUaGm/1URpoEdPlJHRl1E0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V6VIwEnrKAO9EokDsw7n+F7axQpQg2QyryZ49hrQ0Fr6VTQEZT24UpGz3LEFwv0yVPZorxd5Ml0r16BgU4mjYuGzVCjZpTVTVbGV/fNfrMR6iTK4weoWWdYE/vyL5fQCjofP4/tmi9kXHeqa4UW1We2SY38C4IKGd0OnG6tsbeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=iiNd7oPH; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2cf213128a1so791595a91.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 09:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722011845; x=1722616645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8abyY+23OqRfjC+HH12SH89B97LQIWTr/A0vDo3wc9A=;
        b=iiNd7oPH/uH23I1EBpLHfhHx1gSCOMVYyeNZ+d49fs2wbrIKrlOOhoZyuk+jwjlpnu
         t1sf30qi994ZGv6y9cPu1LI51Az/z6V6nNo7oWn9aJ+rSjI5jKHma86IN/7AUsoMZH5z
         6I9C7o9IvpHAZcxVYC3mTLMbtd5lR+3X4QFFbjfnkh5cXZYz3DImnd0z2IijVzvlKgQk
         v5E431ikBxeyDeZtpYnxWRQcjDPW7vkFMcXAO+z0Rf1Vps1uSzud9BW9yqRci1TdhHlA
         Z4FIXQVUxjcqGWpG9NngVnx8j43Wb1CcAt2iiNMPVEtykcpNkX0h+4P8j+jp44iTrUEZ
         X4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722011845; x=1722616645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8abyY+23OqRfjC+HH12SH89B97LQIWTr/A0vDo3wc9A=;
        b=ukSoAI6uoX6pvI8AB2tf7zk0rCVqfcFP3qplyHEVrRTlll75OZsvp0/CDVWv3LO+UJ
         PGM1p7VjIC9dMDbQ6TVrcY1wfjTEq9CbLtQen76S6jRwZZjOhQQVraoKNJqGxovqVnsj
         8iF/ywItumIVglVtt67z3u/HJfEJmIb8DxneIRk8m0iWBlETOCkAiVQV8NeauyUIcUXv
         TOoGUAW9PixmaLbI0ez93T2Pn4qOe1FFasCUfKcLq5atwY3+7Yd9RTv8HNLQU3FL3Y1S
         foo07NHNDNb5Q9QD3xNWhcSNl2DMAbGi1tgaqCMsq0zTddbX4nneMysMhfruKcHhhxa2
         DC2g==
X-Forwarded-Encrypted: i=1; AJvYcCVLqnbNxbEN+06pSCY994UKJvHvFD/7xXSlZ0Y/Or69a9boc5EFgE0Anyofen/juPnxPiDJ/7f0h7/3P/fz4oW5pZuok8gjYb+QiA==
X-Gm-Message-State: AOJu0YykO/hYShOLnoxAsPeUg0Rlc1D9H/m45oPC0w/Rt7IUauuAn08y
	mfLKpI9KY/0MHmnNpMz3tMHGMGUwkJJN6UMLmYHcXfx6LE2Rxs0Q2tilOhdNfO4=
X-Google-Smtp-Source: AGHT+IEKupxYr1+7Tw7NNkxw4zI+vDeEkSlnSvkM1SOcwHrSkTUm/tBEZCxIeVzhDmNZ2U0QJGFr0Q==
X-Received: by 2002:a17:90a:ac2:b0:2c9:5c67:dd9e with SMTP id 98e67ed59e1d1-2cf7e1ff4e8mr39752a91.19.1722011844844;
        Fri, 26 Jul 2024 09:37:24 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cf28c55a2dsm3676619a91.7.2024.07.26.09.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 09:37:24 -0700 (PDT)
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
Subject: [PATCH v7 0/8] RISC-V: Detect and report speed of unaligned vector accesses
Date: Fri, 26 Jul 2024 12:37:11 -0400
Message-ID: <20240726163719.1667923-1-jesse@rivosinc.com>
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

The Zicclsm is patches are no longer related to this set.

Changes in v6:
 Added ("RISC-V: Scalar unaligned access emulated on hotplug CPUs")

Jesse Taube (8):
  RISC-V: Add Zicclsm to cpufeature and hwprobe
  dt-bindings: riscv: Add Zicclsm ISA extension description.
  RISC-V: Check scalar unaligned access on all CPUs
  RISC-V: Scalar unaligned access emulated on hotplug CPUs
  RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
  RISC-V: Detect unaligned vector accesses supported
  RISC-V: Report vector unaligned access speed hwprobe
  RISC-V: hwprobe: Document unaligned vector perf key

 Documentation/arch/riscv/hwprobe.rst          |  21 +++
 .../devicetree/bindings/riscv/extensions.yaml |   7 +
 arch/riscv/Kconfig                            |  57 ++++++-
 arch/riscv/include/asm/cpufeature.h           |  10 +-
 arch/riscv/include/asm/entry-common.h         |  11 --
 arch/riscv/include/asm/hwcap.h                |   1 +
 arch/riscv/include/asm/hwprobe.h              |   2 +-
 arch/riscv/include/asm/vector.h               |   2 +
 arch/riscv/include/uapi/asm/hwprobe.h         |   6 +
 arch/riscv/kernel/Makefile                    |   3 +-
 arch/riscv/kernel/copy-unaligned.h            |   5 +
 arch/riscv/kernel/cpufeature.c                |   1 +
 arch/riscv/kernel/fpu.S                       |   4 +-
 arch/riscv/kernel/sys_hwprobe.c               |  42 +++++
 arch/riscv/kernel/traps_misaligned.c          | 131 +++++++++++++--
 arch/riscv/kernel/unaligned_access_speed.c    | 156 +++++++++++++++++-
 arch/riscv/kernel/vec-copy-unaligned.S        |  58 +++++++
 arch/riscv/kernel/vector.c                    |   2 +-
 18 files changed, 481 insertions(+), 38 deletions(-)
 create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S

-- 
2.45.2


