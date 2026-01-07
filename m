Return-Path: <devicetree+bounces-252443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4397DCFEF2E
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2165A337F0C0
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B698374163;
	Wed,  7 Jan 2026 16:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="jNLALy1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CFF374177
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803384; cv=none; b=nUhBq43z4ARapTQbOdhxyuH24HQN4pleL6Za4q8kKfmwfqjzggoiMw4xdPSrORvWP94LfO0hUPanAZFjjhMw9VljhCqR0GHcA1MZaguEFiicdI8olzIXVePfhK2Xj8w23pfsCnHdBTo8zAiqELJ2w3ETDzENpPeer2G7BU7Oksk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803384; c=relaxed/simple;
	bh=Z9NPeRHS4rn7DDQ52PT6sOTFVwDSGgbpSlaXM0N4slM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lizVWOmgNxxpggGOWRsf8GW76Uyz2lkbpIFh95SBMGiySEf3myC2/I9iUbh8q18XNv1iWoBnfHRLZF/HXG5LFctmPbcMkaSa1nvXnCEFeMWIUzUHJu3wuE7k7AKqxD1NoLIwuO49KEv0vLYJz/vLVhSyCJAx0VmL1wfu16nqTwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=jNLALy1v; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-42fb5810d39so1264718f8f.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1767803366; x=1768408166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utTQM12vp3HfC7wPK2LBUo4jmtAYzgNAcmtNUG5Yv4o=;
        b=jNLALy1vJxBl4weOk5FIJlTyqM6A2tyaDoaeTirbmOtblWFPIGDD4WlQes7jkbVMu5
         rCbLvaVKxHvD3LF1PSBFlZ6UY4bASfHQuvwcYKDoc4ICPsbmug8Qit7+VVeN1lfqfpxq
         SsXBOpyR8B8xRAExlFsLDKmwNfa0KtUmVHIkSJfWeyHy2pnVQjR4tfpUgu7h2GNkInit
         pdPwUP2nFrdQtNWkgo0c53F33x28Iy4LF5WHXUMHCzoo34l97ZmTt/WOMaE7g10JQjwB
         alg9B789IfxeYbgQdmGpiVubwtD+YiTldOvAYt9ybcKrfA69TE4MMkIdd2S8mHHlpZeF
         sIOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803366; x=1768408166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=utTQM12vp3HfC7wPK2LBUo4jmtAYzgNAcmtNUG5Yv4o=;
        b=IZd17RpMt1481WgX4LWaD5CdaFdywiuYTLD51VmIfxSjmVVxbDlzwI0/cuvbdlPwEi
         GFvfbTsJXqpvU80eYE2m5MI/jkq1iM2ALlXLNnGcbEPfk/zM1bFGFVM1mLBqQ97Txqek
         F1Lx1KnBTHmB6fjPonv2t0UfuybacF7nvS9zwIvGgeR6gXyMMxA2O6VzjN0uveb5+1j5
         533CI3xPBX5gXksaPYuQPd8z3SuuJxU4uQAtA4dQbT9Cud1uhkUnct/dndEVkG+r5MZO
         fasweIm/n3b4YgVfAVZRpCtHRnUTqfVCrcg2g3O0uTXtckdK1ItX3PMxgX8vnLU2XAFS
         B8lw==
X-Forwarded-Encrypted: i=1; AJvYcCVsSybC8c+bW/sKTGpadWtcNGGTyk37npQRLA7Kh0PI3CiSwBx4UNCgWh83sPUxGHU/Q55hKd9mkgaL@vger.kernel.org
X-Gm-Message-State: AOJu0YywRWLKvb5XTQ/2yQDBMb/xhWURgGwB8EDIQsNG28PGaGghKucr
	BpzRoMACIbbr3Y1EqZSy5cNWXO63LAp4DPoi18xjk6sQVFbsSC4jINAmigxPnVNsLDTi
X-Gm-Gg: AY/fxX5IlSB8jVaUX66Qclphoi3rlX5mi4/pK4y2HQVTg4YVybOcRnS9xkaD2uBlMLs
	LzX3Is4M3OTpoS5IICxDb//rjiwwljSKVSA5SgBlKU9tHM91E1IL7qy200JphAHHSZ3EEAMJCxf
	qSX0CjbKLVnbe4Bb54xr7hJZ4HkCU7yDl6SVbNsGdGJ1orndQmJcNJ+8qCko/w2InCA0eVNq2JP
	QDcM11lEzI+tD46QzaEmo82CTMWwUzppseH41HIchtRQ/xOHHr4Kte6rl1DcX9IHG1jXVRRA3mZ
	+XyU0b22kug3O7jxUOSnIyqJBOeT6p0rodbYwcmzPoVjTlAOuFJ7OJC8HiW44pvGdziyejKaUH4
	6PTHIoptnH31GbTVqxp469amytef59Ci0PK6JMvckjpyTa7xeylpI5Tla08oCzPK99M7Zk068kA
	zbATsoiXS4qsArzBu67g==
X-Google-Smtp-Source: AGHT+IEsJtA8N1N6cQme/xrsmcYvUfGO3yfitzXA9dloqZIoULK1bllqhEJTvQbGnSNhB8OYA3C0wg==
X-Received: by 2002:a05:6000:2085:b0:431:104:6dc2 with SMTP id ffacd0b85a97d-432c362811cmr3267285f8f.8.1767803366422;
        Wed, 07 Jan 2026 08:29:26 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:4a3c:13be:a1c0:7b9f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm11117030f8f.42.2026.01.07.08.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:29:26 -0800 (PST)
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
Subject: [PATCH v2 0/6] virt: Add Bao hypervisor IPC and I/O dispatcher drivers
Date: Wed,  7 Jan 2026 16:28:23 +0000
Message-ID: <20260107162829.416885-1-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251224135217.25350-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

This series introduces support for Bao hypervisor guest-side drivers
under drivers/virt/bao, along with the associated Device Tree bindings,
UAPI headers, and MAINTAINERS entries.

Bao is a lightweight static-partitioning hypervisor for embedded and
safety-critical systems. This series adds:
- Bao IPC shared memory driver: Enables Linux guests to communicate
with each other via shared memory regions.
- Bao I/O Dispatcher driver: Allows Bao VMs to share I/O devices using
device paravirtualization (VirtIO).

Key updates in this version to align with upstream requirements:
1. Switched to misc device API: Removed all cdev, class, and
alloc_chrdev_region code in favor of misc_register() for simpler,
standard device management.
2. Clean kernel style and formatting: All code passes checkpatch.pl,
with consistent variable declaration, function naming, and comment style.
3. Architecture abstraction: Consolidated ARM, ARM64, and RISC-V hypercall
logic into architecture-specific headers, removing in-driver #ifdefs.
4. Commit messages: Now concise and Linux-kernel-style, describing
behavior and impact clearly.
5. Device Tree compliance: Fixed all make dt_binding_check errors to
ensure DT binding correctness.

This series has been validated on Linux guests running under Bao
hypervisor, confirming correct initialization, IPC shared-memory
read/write operations, and I/O Dispatcher functionality for
backend VMs.

Feedback and review from maintainers of virtualization,
architecture-specific code (ARM, ARM64, RISC-V), Device Tree
bindings, and UAPI are welcome.

João Peixoto (6):
  dt-bindings: Add Bao IPC shared memory driver binding
  virt: bao: Add Bao IPC shared memory driver
  dt-bindings: Add Bao I/O dispatcher driver binding
  virt: bao: Add Bao I/O dispatcher driver
  virt: bao: Move BAO_IPCSHMEM_HYPERCALL_ID to common header
  MAINTAINERS: Add entries for Bao hypervisor drivers, headers, and DT
    bindings

 .../bindings/bao/bao,io-dispatcher.yaml       |  75 ++++
 .../devicetree/bindings/bao/bao,ipcshmem.yaml |  82 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../userspace-api/ioctl/ioctl-number.rst      |   2 +
 MAINTAINERS                                   |  13 +
 arch/arm/include/asm/bao.h                    |  60 +++
 arch/arm64/include/asm/bao.h                  |  60 +++
 arch/riscv/include/asm/bao.h                  |  60 +++
 drivers/virt/Kconfig                          |   2 +
 drivers/virt/Makefile                         |   2 +
 drivers/virt/bao/Kconfig                      |   5 +
 drivers/virt/bao/Makefile                     |   4 +
 drivers/virt/bao/io-dispatcher/Kconfig        |  15 +
 drivers/virt/bao/io-dispatcher/Makefile       |   4 +
 drivers/virt/bao/io-dispatcher/bao_drv.h      | 361 ++++++++++++++++
 drivers/virt/bao/io-dispatcher/dm.c           | 405 ++++++++++++++++++
 drivers/virt/bao/io-dispatcher/driver.c       | 185 ++++++++
 drivers/virt/bao/io-dispatcher/intc.c         |  64 +++
 drivers/virt/bao/io-dispatcher/io_client.c    | 405 ++++++++++++++++++
 .../virt/bao/io-dispatcher/io_dispatcher.c    | 179 ++++++++
 drivers/virt/bao/io-dispatcher/ioeventfd.c    | 323 ++++++++++++++
 drivers/virt/bao/io-dispatcher/irqfd.c        | 314 ++++++++++++++
 drivers/virt/bao/ipcshmem/Kconfig             |   8 +
 drivers/virt/bao/ipcshmem/Makefile            |   3 +
 drivers/virt/bao/ipcshmem/ipcshmem.c          | 252 +++++++++++
 include/linux/bao.h                           |  44 ++
 include/uapi/linux/bao.h                      |  98 +++++
 27 files changed, 3027 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bao/bao,io-dispatcher.yaml
 create mode 100644 Documentation/devicetree/bindings/bao/bao,ipcshmem.yaml
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
 create mode 100644 drivers/virt/bao/io-dispatcher/intc.c
 create mode 100644 drivers/virt/bao/io-dispatcher/io_client.c
 create mode 100644 drivers/virt/bao/io-dispatcher/io_dispatcher.c
 create mode 100644 drivers/virt/bao/io-dispatcher/ioeventfd.c
 create mode 100644 drivers/virt/bao/io-dispatcher/irqfd.c
 create mode 100644 drivers/virt/bao/ipcshmem/Kconfig
 create mode 100644 drivers/virt/bao/ipcshmem/Makefile
 create mode 100644 drivers/virt/bao/ipcshmem/ipcshmem.c
 create mode 100644 include/linux/bao.h
 create mode 100644 include/uapi/linux/bao.h

-- 
2.43.0


