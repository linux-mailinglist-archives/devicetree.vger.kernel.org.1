Return-Path: <devicetree+bounces-249512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2608BCDC80B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74883302379C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 14:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6A4362130;
	Wed, 24 Dec 2025 13:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="mCUuMFTH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AA536212B
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766584378; cv=none; b=SEx3WyLa6NeRtTau0n+LbY8iqvFen8P2EL/tl/Ue7sCTSimow4IsBHtlFOYw8VPNmlpNMegX8TNJAxPp+TEob2OkK099cHl0hSjLiphnjGF39lZQD0D3vdgv0LD4ZTG6CHg2VSjzkDKIVVzmLn+kJwELBI2nqgoFbmy04T8OW5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766584378; c=relaxed/simple;
	bh=BK+eiGyjn9LH57WJfWYe7fb00iIJqC+M08226JDyDKs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=s0bPdwGsEayEu8oXnWzoKKYkoe6H/iLZE6F294zjdfswFvcmNyrqrIRTbjlgcwpEhnfxpQFZIb+UUL9pvuTxRftR+6ViLLaojo43DWDlNnq2HHYDE9UZ4iwRIp/VTpDlqwWNPnixFx5WANqD0lDS4jerbifg9bTka8+E/+XH4TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=mCUuMFTH; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-430f9ffd4e8so3291858f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 05:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1766584373; x=1767189173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DmuPTBK1+j/xQcR53nZlLGqYmcBMfxzHRcOOd3xh0JY=;
        b=mCUuMFTHHSLk2injFRCqEcMgv3kQgZJ7/CpKvaZZTWg7xO3WphqTFYq60c3xTUUSRS
         BxD751XwW7iZCtiuVfcfXLU7oOpZiiczEuiQYE0f8pDUCTysgWNyb50/2qTpVqOQAhRX
         vspfTT6kpg0Fnltg4+GH0i6C1F0l82soioJPv+fiMVHduX1FvceGJp+X9KlSqTjpbBg5
         k9OL43RFJHyT6oheSpbkT+za4QCPqM9eghlIhHE+80u7MosCAmuwf+pQJHAIAX+KG+Sv
         2xIDDPE3XeTb6XzktY1M2KWvXy4a4cX7Tyz0eHHMc4NTsc9GhrbVRvUwTb0YPlE+vkwW
         R2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766584373; x=1767189173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmuPTBK1+j/xQcR53nZlLGqYmcBMfxzHRcOOd3xh0JY=;
        b=CnViG+/iggm8IoNOJJxhZa5qJCWIkC4v3OhBrn7/Yf+dm5ajLKswQ5ey8Prl29zlob
         qeXzQsX5+ykixHCyP2yKui4d1swRIr+QGatyaUcO879MYPXiCqgyz3d/K4L3krPmIxaf
         mPFB9R81aqvVo1KSMTWQYqd8yheBUvmpUU0R/AauLfdLgWuWE9Aytb6VilL9V5TVCOJx
         R0uTyExSaU1zQGorxh8BCxtrubq6LMFXTK73ZcwXxKuyMf2yUqb5xjfgDrUuvY1Svphj
         hHjWeYkqt8TuruatxnVLSq10auPItEoIrRf8/yDenPfMl1LUjj2q11U6ZbfhOqPkAf7z
         jmVg==
X-Forwarded-Encrypted: i=1; AJvYcCV7/9FV7eSKCUXJJfteUVK5B2TrN28D51Tf1N2RauhkN0ze08ivgw92GjJAVIutZMbuU6zJ1tjbueQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YyJbRWUA0r9oK8cQCzZ7BdfikcWriUM3d90UWUoZ5DL/nXG0B7W
	8RrL/XvEZY6MeQVKCp9/oObDHZu6jqTRkgSMoEYh6tuz2dz2wr++nKkcAoTqBWLKIGPZ
X-Gm-Gg: AY/fxX5qTsCCPTPR+/8SpIo6Z77EmbBCMaOBIuFz4cyB2oQevvavaK7ZJjo805PfTLv
	8aNfw3RhBzBTYO3QNC3geU+5fgy9DE/Q4VqbbpQmkBb8b6d7u8sEmc3I+Z1MaiRd/tn7cREQoju
	u4+v6l8OFCwvI4B9GBc4kqq+a75yxLuS14fSDJAmIGvLXYa8+pNsIkvX6ASPMXJECn5RozVyCUV
	t//mt1/3PEhZYzp15IyKc/39kZ8wUxJnDJDh2OZXkltbxIEdTIx3+fb4KiStoXDwmC32usA/iJ4
	GOpy5vBoqYs7dpzyh6E0jskZV4NzQVUNh008VjSeiO/aFvfCMQkcCq8fo1hP1njJizR+himcaP6
	2aRSdey2NkEZVlTAyTzXchMtNDeZMt5KN/3DYgJO4CjqZdMKJM9bkisRz/b8JmugLktZfYbfxyW
	MOJj6pd4aHRyNfLiod9g==
X-Google-Smtp-Source: AGHT+IHoJrb07B1cdykCE7qYkiqA5eIOoSQMy9mbNo39VeuUJ9/LLv9crUrYThO0HyLNCGIS21PtnA==
X-Received: by 2002:a5d:5d02:0:b0:431:66a:cbda with SMTP id ffacd0b85a97d-4324425829amr25725416f8f.0.1766584372997;
        Wed, 24 Dec 2025 05:52:52 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:39e4:e84d:192a:5c5c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm34494677f8f.35.2025.12.24.05.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 05:52:52 -0800 (PST)
From: joaopeixoto@osyx.tech
To: linux-kernel@vger.kernel.org
Cc: ajd@linux.ibm.com,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	bagasdotme@gmail.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	corbet@lwn.net,
	dan.j.williams@intel.com,
	davidmcerdeira@osyx.tech,
	devicetree@vger.kernel.org,
	dev@kael-k.io,
	gregkh@linuxfoundation.org,
	haren@linux.ibm.com,
	heiko@sntech.de,
	joaopeixoto@osyx.tech,
	jose@osyx.tech,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@armlinux.org.uk,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maddy@linux.ibm.com,
	mani@kernel.org,
	nathan@kernel.org,
	neil.armstrong@linaro.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	will@kernel.org
Subject: [PATCH 0/5] virt: Add Bao hypervisor IPC and I/O dispatcher drivers
Date: Wed, 24 Dec 2025 13:52:12 +0000
Message-ID: <20251224135217.25350-1-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

This series introduces support for the Bao hypervisor guest-side drivers
under drivers/virt/bao and the associated Device Tree bindings, UAPI,
and MAINTAINERS entries.

Bao is a lightweight static-partitioning hypervisor for embedded and
safety-critical systems. This series adds:
- The Bao IPC shared memory driver, which enables Linux guests to
  communicate with each other through shared memory regions.
- The Bao I/O Dispatcher driver, which allows Bao's VMs to share I/O
  devices using device paravirtualization (VirtIO).

Patch overview:

1. dt-bindings: Add Bao IPC shared memory driver binding
   - Provides a standardized DT description for Bao IPC shared memory
     devices used for inter-VM communication.

2. virt: add Bao IPC shared memory driver
   - Character device driver that maps shared-memory regions and
     communicates with the hypervisor via architecture-specific hypercalls
     (SMC/HVC on ARM, SBI ecall on RISC-V).

3. dt-bindings: Add Bao I/O dispatcher driver binding
   - DT binding for the Bao I/O Dispatcher, describing memory regions,
     interrupts, and compatible strings for backend VMs.

4. virt: add Bao I/O dispatcher driver
   - Implements the I/O Dispatcher kernel module bridging Bao Remote I/O
     with VirtIO backend devices.
   - Includes architecture-specific headers for ARM, ARM64, and RISC-V,
     driver framework files, UAPI headers, Kconfig/Makefile integration,
     and ioctl documentation.

5. MAINTAINERS: Add entries for Bao hypervisor drivers
   - Registers maintainers for all Bao hypervisor components to ensure
     proper kernel review and notifications.

This series has been validated on Linux guests running under Bao hypervisor,
ensuring correct initialization, read/write operations for IPC shared
memory, and proper I/O Dispatcher functionality for backend VMs.

Feedback and review from maintainers of virtualization, architecture-specific
code (ARM, ARM64, RISC-V), Device Tree bindings, and UAPI are welcome.

João Peixoto (5):
  dt-bindings: Add Bao IPC shared memory driver binding
  virt: add Bao IPC shared memory driver
  dt-bindings: Add Bao I/O dispatcher driver binding
  virt: add Bao I/O dispatcher driver
  MAINTAINERS: Add entries for Bao hypervisor drivers, headers, and DT
    bindings

 .../bindings/bao/io-dispatcher.yaml           |  67 +++
 .../devicetree/bindings/bao/ipcshmem.yaml     |  99 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../userspace-api/ioctl/ioctl-number.rst      |   2 +
 MAINTAINERS                                   |  12 +
 arch/arm/include/asm/bao.h                    |  62 ++
 arch/arm64/include/asm/bao.h                  |  62 ++
 arch/riscv/include/asm/bao.h                  |  61 ++
 drivers/virt/Kconfig                          |   2 +
 drivers/virt/Makefile                         |   2 +
 drivers/virt/bao/Kconfig                      |   5 +
 drivers/virt/bao/Makefile                     |   4 +
 drivers/virt/bao/io-dispatcher/Kconfig        |  16 +
 drivers/virt/bao/io-dispatcher/Makefile       |   4 +
 drivers/virt/bao/io-dispatcher/bao_drv.h      | 386 +++++++++++++
 drivers/virt/bao/io-dispatcher/dm.c           | 330 +++++++++++
 drivers/virt/bao/io-dispatcher/driver.c       | 348 +++++++++++
 drivers/virt/bao/io-dispatcher/hypercall.h    |  30 +
 drivers/virt/bao/io-dispatcher/intc.c         |  68 +++
 drivers/virt/bao/io-dispatcher/io_client.c    | 435 ++++++++++++++
 .../virt/bao/io-dispatcher/io_dispatcher.c    | 207 +++++++
 drivers/virt/bao/io-dispatcher/ioctls.c       | 145 +++++
 drivers/virt/bao/io-dispatcher/ioeventfd.c    | 336 +++++++++++
 drivers/virt/bao/io-dispatcher/irqfd.c        | 341 +++++++++++
 drivers/virt/bao/ipcshmem/Kconfig             |   9 +
 drivers/virt/bao/ipcshmem/Makefile            |   3 +
 drivers/virt/bao/ipcshmem/ipcshmem.c          | 539 ++++++++++++++++++
 include/uapi/linux/bao.h                      | 124 ++++
 28 files changed, 3701 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bao/io-dispatcher.yaml
 create mode 100644 Documentation/devicetree/bindings/bao/ipcshmem.yaml
 create mode 100644 arch/arm/include/asm/bao.h
 create mode 100644 arch/arm64/include/asm/bao.h
 create mode 100644 arch/riscv/include/asm/bao.h
 create mode 100644 drivers/virt/bao/Kconfig
 create mode 100644 drivers/virt/bao/Makefile
 create mode 100644 drivers/virt/bao/io-dispatcher/Kconfig
 create mode 100644 drivers/virt/bao/io-dispatcher/Makefile
 create mode 100644 drivers/virt/bao/io-dispatcher/bao_drv.h
 create mode 100644 drivers/virt/bao/io-dispatcher/dm.c
 create mode 100644 drivers/virt/bao/io-dispatcher/driver.c
 create mode 100644 drivers/virt/bao/io-dispatcher/hypercall.h
 create mode 100644 drivers/virt/bao/io-dispatcher/intc.c
 create mode 100644 drivers/virt/bao/io-dispatcher/io_client.c
 create mode 100644 drivers/virt/bao/io-dispatcher/io_dispatcher.c
 create mode 100644 drivers/virt/bao/io-dispatcher/ioctls.c
 create mode 100644 drivers/virt/bao/io-dispatcher/ioeventfd.c
 create mode 100644 drivers/virt/bao/io-dispatcher/irqfd.c
 create mode 100644 drivers/virt/bao/ipcshmem/Kconfig
 create mode 100644 drivers/virt/bao/ipcshmem/Makefile
 create mode 100644 drivers/virt/bao/ipcshmem/ipcshmem.c
 create mode 100644 include/uapi/linux/bao.h

-- 
2.43.0


