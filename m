Return-Path: <devicetree+bounces-85156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1997992F16E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 23:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 935761F258F4
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368D11A00EC;
	Thu, 11 Jul 2024 21:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="xbF7c+RW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E301A00DF
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 21:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720735148; cv=none; b=mKY7Fps/fBplBlYVPIIfpEnXCwx/H6mQM+PSUCvoVW1mVJB4AHUM/8/+V4uuTLgqZYJiXYVKdlFmGvpHzh617PMVf74H47IPIyRZiobOMQTlzQaU41KDXQK4/JuyXnpwzbIMp5ATYbQpOTqtUoPlwm9Lswn2zbxWfffwMzJ8foQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720735148; c=relaxed/simple;
	bh=HOG3wYdYaZAZL/0D4w5yHwPQ5t9WN+pCQCO4qB9lyik=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JHWfereV9h5G12vn3FU2I3XsWzEuRirBmS8Y7RxT9ycBYV303NnAPoffQ5woJ+quc3fg9j+hWBAel3y2tJaKM5I9Fsoj/5rsVVvpbIrkdan8dxh6drWjz/oWVprM3sT2VOuKp4NrX+lum01VYHb6abEqCeHk/c8Ltb1EhGaYADs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=xbF7c+RW; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-70b0bc1ef81so1068965b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 14:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1720735146; x=1721339946; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/kw+IcYp8bgUiJbh37Eb+rjf6jAd1bzt2laJrXIeEks=;
        b=xbF7c+RWElPVM/a/9XU+PMfIUJ/+DQpmCtqplvdzsZdMQW0hPcXTv6GY1I8Gc96McK
         Hu+9LjVTlci01bsycifHjys+itAroanqdiD2tJ0gAHNiSvjSR6a95ZCEoPOjhkP04YXz
         vtbUx6m/ilv6MQ2YNUcu1IQzSaVQZAu9A4GZvtxH/si3V6BwVYxMKqZ1utUQOKRROZDJ
         fZNtia1stFWpt/bdyOuRx34uHsxcq9VGpk1IxzunIKzuQesTNMZvXt7RL3H24ErxdHmo
         Tqn2HTKCPy3aMLiZjonYFdmvP8nzCDmPexKAdAcIKCAm5gzUQDru7g5yPTePltvXKI6f
         56iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720735146; x=1721339946;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/kw+IcYp8bgUiJbh37Eb+rjf6jAd1bzt2laJrXIeEks=;
        b=BtfHfXBEBqUHBb/Ttidb5eIaQkqYwuic8/EHvGttzYYPslKRwhYZVlPyJsD+0iPKaW
         NOcupUgobkPmaI3gtKqTwaQun2snAs0VmJSQg6/u8bGceKY7oZOOGhY96bSupTvvnPll
         zzt2gMrwWjt4QBJNxJjdZuCm/2oY+ZTimMUYxZZGy7v2s1OYF7njdnoAgLXecRMF3YsY
         aWF9YIQp6Mbtoi6onTMygZEr+N2rd7ssVbO8vdSjGRbvdmevqa/SRgQKIwe6z9jSC5P9
         ixi0MO1O1g4WEl5VDundd6tw0FTlcAocehbq1TP5NRWkXld3FeYDlIPg936tBM60yjSS
         2JbA==
X-Forwarded-Encrypted: i=1; AJvYcCVpCjlaKcm27oBBJvXqF0IiXK6n64E56X5Ng4BNYBkJSMU6krcGfABS6kzENshe+i/Vl4zqkhBDe/+Ms5G7j2VmciS5CsD5kY5mOw==
X-Gm-Message-State: AOJu0YywYsNyA3W/Dm0GFgpgNgLZewhuk1c7Hk3TTJyUXb8OGS3/4CH0
	XtJZGlrZyn8xgzX02JkKQyFPXldDeOKd0pas66mMVJ1TuZ/+KY3e9MoSaEYHFek=
X-Google-Smtp-Source: AGHT+IFQBa/vIEx5Z0khrKTKGJiYkqA2a1gi0Teh5Yh2zckpKKSH2Er9zsMFqmnL0nQM5VYY6+YdWQ==
X-Received: by 2002:a05:6a00:846:b0:706:58a8:f686 with SMTP id d2e1a72fcca58-70b43678a11mr12384423b3a.32.1720735145519;
        Thu, 11 Jul 2024 14:59:05 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b43898b10sm6169431b3a.7.2024.07.11.14.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 14:59:05 -0700 (PDT)
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
Subject: [PATCH v4 0/7] RISC-V: Detect and report speed of unaligned vector accesses
Date: Thu, 11 Jul 2024 17:58:39 -0400
Message-ID: <20240711215846.834365-1-jesse@rivosinc.com>
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

V1 -> V2:
 - New patch: dt-bindings: riscv: Add Zicclsm ISA extension description.
 - New patch: RISC-V: Check scalar unaligned access on all CPUs
 - New patch: RISC-V: hwprobe: Document unaligned vector perf
V2 -> V3:
 - New patch: RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
 - Split patch: RISC-V: Check scalar unaligned access on all CPUs
 - New patch: RISC-V: Check Zicclsm to set unaligned access speed
V3 -> V4:
 - Drop patch: RISC-V: Check Zicclsm to set unaligned access speed

Jesse Taube (7):
  RISC-V: Add Zicclsm to cpufeature and hwprobe
  dt-bindings: riscv: Add Zicclsm ISA extension description.
  RISC-V: Check scalar unaligned access on all CPUs
  RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
  RISC-V: Detect unaligned vector accesses supported
  RISC-V: Report vector unaligned access speed hwprobe
  RISC-V: hwprobe: Document unaligned vector perf key

 Documentation/arch/riscv/hwprobe.rst          |  21 +++
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
 arch/riscv/kernel/traps_misaligned.c          | 134 ++++++++++++++--
 arch/riscv/kernel/unaligned_access_speed.c    | 148 +++++++++++++++++-
 arch/riscv/kernel/vec-copy-unaligned.S        |  58 +++++++
 arch/riscv/kernel/vector.c                    |   2 +-
 18 files changed, 472 insertions(+), 38 deletions(-)
 create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S

-- 
2.45.2


