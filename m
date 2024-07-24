Return-Path: <devicetree+bounces-87904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F240993B6C2
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 20:36:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E7881C2322B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 18:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5996716A955;
	Wed, 24 Jul 2024 18:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZPb1LWaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F731591F3
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 18:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721846177; cv=none; b=pGclXf85AncIIrceagT24PWTCMK/SWu0ITO0MeQX4xfQviMi/AHIj1cwam8ycBcByzrTqdqRQhgBTKy/XQcK3jqNaSruWQGeoWcY9CRwfUK/pZfPzpGr7jghgB+Ci29E3ibD1UTUr9r0aKVyxtvtdIgnzehJ8/wPVFvi8KSip54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721846177; c=relaxed/simple;
	bh=gDtY5C6xVC5PsL6KJ4ty39GAhxQ2UvVyUxqwsakJsSw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W9dSIzEaih6hN5+hQe9JIMrwvJ9MeGZk8H1jsl26BOfDNZPvPZUr/BeWGqvPlzPzx2i37SVV7BNiwmJHQkHTl/e3tkO8EVVn49eTVUX6+OrND0qPFymLNfADUFWh1xhF0J2mBpmFaP505oxkl8/0ljHClNgnMHGHvu3y3NTDVgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZPb1LWaX; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2cb576db1c5so116138a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 11:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721846174; x=1722450974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sm/wAJveVBv0q7tk/dMFAOUxjubw/u5BATqZaSVqdOk=;
        b=ZPb1LWaXlurk4laMl5cPcxh+byrHms4SaWKQtnEzt1sz4O7hOFWmdk/N9aM6RqADqu
         kD81exdLdsRwqLII6m6wCtxN70l8hXYLiTPi9weP7scoZ8iHnYFOXD+c56oPz3JDaVRx
         kGCVZWlmlsxirobkh++CImpdyydRKWHd2seaW9EaX6jjvT3BlnxxQilYOmdvCYDyDz52
         MB1oWZ7Y1POpFZUZy3rDn8O8Gh7FJDdCFe9eRnvd4RaVxRnfGeK4N6GB2t+xMy9RbzNs
         /D9sBBVHuCzKYP1YtPGLxSvSFx1WNpkcSc12csJ8dLVs03rsOXcE7D+vKIFGDYqZuRnE
         hxtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721846174; x=1722450974;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sm/wAJveVBv0q7tk/dMFAOUxjubw/u5BATqZaSVqdOk=;
        b=cgSaoJpqEBLBxu+sGFjzLD9t/m0dRH8vLcl9Gu2/nLQX8nuWncEget5obFG/aj4NKy
         rm/yitWMdetWN29ITJnM6RLA2MkS3vCQSAt/7AXI9YwYq0Z2Cf/FWdR0UPmHq6vb47QZ
         LR6Znfk1xaNKULK4QHgBq8eA9tvpT80cOddln8ze4trQ9rF+VlnoF0jYMeveVTC610Qk
         CTJEmNPNw+kJuKq9AIFc1rV7Ixs0SpZcRjMxlheqXtw/DI6G5TGN7Pwr9Y1lr4vq0Wxj
         vLw8y43Q9NZSK2bZLfAIK9VQXSvudD46R+I7WZZNJ67qNdw2XvtfF0sAvM0g9JJI0gI5
         lJTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXL82f6849cDAGYEghBAC7l4CM4/DxtzIthBvI9HezN8NZ3z9TrJCE+9IzDxG+LIAk1HYj2xwHwYcHC3MjjkDpiHHqcVhU0fBv4Q==
X-Gm-Message-State: AOJu0Yz4mxOJ9/GFl1tgyPo45Gja2MA0iqAxnZGiAcZZTCZHuXCjrFr7
	OiaO9VcRQ5mecsu6T2efB2xCWEqI72Z8XyAXExb4lTYf5RFiRy9tPOeDMGMN5WM=
X-Google-Smtp-Source: AGHT+IH3zF5NChQtBzQf3AtZCLeYvOcpbH4+G0JFh9sfOmScH/VpntNYEqKMklwYdqLHBNmrtYSRgA==
X-Received: by 2002:a17:90b:281:b0:2cb:4c25:f941 with SMTP id 98e67ed59e1d1-2cf23865f3amr447525a91.17.1721846173689;
        Wed, 24 Jul 2024 11:36:13 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73a189esm1997830a91.2.2024.07.24.11.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 11:36:12 -0700 (PDT)
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
Subject: [PATCH v6 0/8] RISC-V: Detect and report speed of unaligned vector accesses
Date: Wed, 24 Jul 2024 14:35:57 -0400
Message-ID: <20240724183605.4038597-1-jesse@rivosinc.com>
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
 arch/riscv/kernel/traps_misaligned.c          | 134 +++++++++++++--
 arch/riscv/kernel/unaligned_access_speed.c    | 156 +++++++++++++++++-
 arch/riscv/kernel/vec-copy-unaligned.S        |  58 +++++++
 arch/riscv/kernel/vector.c                    |   2 +-
 18 files changed, 484 insertions(+), 38 deletions(-)
 create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S

-- 
2.45.2


