Return-Path: <devicetree+bounces-64126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EFB8B80FF
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 22:02:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 309371F25A59
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 20:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2794199EB6;
	Tue, 30 Apr 2024 20:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="TXd7azpa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D797199EA0
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 20:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714507360; cv=none; b=Z45PlLe3/nqaPm5HglxA83F3iUHV+Oh7csd6jxhSor2N+5SBorwoYrPRhUcWLe5xU65CYGJ2jRJ/rx1fBe1UFyOdeMQdtAtYnU2EaiBpMkTJ6eh4lQxbcb1/WuJKS9GTZevjtUtRW6bdLXq+0vEGSdfg/rnM4cOKbOoytYk+idQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714507360; c=relaxed/simple;
	bh=TDXxFegYkw4+4OrumwbrZ+/KjG8pndncc4mQ5lrFXqk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=c2cbZ7IjkLfjSVQSh4YcD3yhptKMtYkL5XS6SeXEeB37V7v7msuqXoF/qB9BMk7CKsdA0v7Vcck1uwCmfY2+OSdqUSa7/+oK35cRrOdHwK4nIgJq/uoT+s3EWJq4RErWMjfr4KzjpaSbRM0xL2lfneTkv4ghD9BpKT9+9ojIbb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=TXd7azpa; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1eb24e3a2d9so38800985ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 13:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714507358; x=1715112158; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4LJjm/pyF2zhjcSW6gvyrQ1WLiqOQO+GuJphiWriDpw=;
        b=TXd7azpaS+ZEZQSLCnSN8lbDFb1h/1vuZVdsjzxT9QjvuIW5HkcGuxFYr27pdzyQJw
         oUn5MWxd8CrPtZjOQbvw7y3vZZehxTzabIxnnN+h8OXqVxfzUaKJ7Sv+gAiINf0EHn8V
         tTLONiX2m+BLSwObeqjzTu0pUF37bi6ezNFXCAOTAPFT5+V7aG2h8ElXc04BgyuQM4gP
         BcENZyW2zRZm3rBMAf4KEi6i5R1rbaKieDv0l9O+2A0l7q5dT9O3kr1oCO6SJwrFBjtR
         vMQsKErW7HHRJoPoQ8b5h2QeIQ8+Q+I2aF5JeaslSdXK9c9WCgCRIT2RbxM0Sb0bEYNw
         hFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714507358; x=1715112158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4LJjm/pyF2zhjcSW6gvyrQ1WLiqOQO+GuJphiWriDpw=;
        b=JTj+yrkpKLPDrcyDlqaJb6Px5dufNER+xkSVA3En7pypVE4XwAo5rk+Q1KUoH2IRN2
         00lbO4X2Ub5ThsgQnJFKTIPKlzYkgyPOGJOdv3nLIDz/77uEcws2BG9jcGJebNuuISLj
         GrujEUvGD3EepW0d96sRGoFNK7n9fpHpZ1P5wn9LKIf/Z8YWaSLL0AarhbTMZIpeX+5J
         gaf1nNVI48vUHDFnYd89FaS4l/tHWKhFzYg2TGqjgf3tjDLNTdolrsIJyhErqO1kGh/0
         67DWG8Xk17ABbrOZgtJZlfX6BFXoH7aGspSTAqz3+xvXmFE5xs1JlZValWpseyC3t1ai
         uz8w==
X-Forwarded-Encrypted: i=1; AJvYcCVeEKGSe8iZf/bhgDEQ6j5982KIjXfIJuSouvJji6GZFFDc9F++Upq6O1Zg6Oh9N92iED0S+s0qCGXgFzxlH4tExFiByHPbcvlogw==
X-Gm-Message-State: AOJu0YwRrMdi+CHWAQ3DAKZG/34OX/0xVTyshLlmX/OuxeZ8kGG/vK+R
	tie3Bch46ijlMhEjRxfGnTXN4LYpXT5D9o9xeCL98ceoGKB0E4YMGtb2U4M9PAE=
X-Google-Smtp-Source: AGHT+IGJcxkSCDzhcED+yMnX8Jj7+cRN1MgU3WMk1uF7uem/IatFkUZ3shWdYdvdr5tHyr9TaD2REw==
X-Received: by 2002:a17:902:da8e:b0:1eb:e5c0:6459 with SMTP id j14-20020a170902da8e00b001ebe5c06459mr534811plx.8.1714507358141;
        Tue, 30 Apr 2024 13:02:38 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id w19-20020a1709027b9300b001e435fa2521sm22809820pll.249.2024.04.30.13.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 13:02:37 -0700 (PDT)
From: Tomasz Jeznach <tjeznach@rivosinc.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@rivosinc.com,
	Tomasz Jeznach <tjeznach@rivosinc.com>
Subject: [PATCH v3 0/7] Linux RISC-V IOMMU Support
Date: Tue, 30 Apr 2024 13:01:50 -0700
Message-Id: <cover.1714494653.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch series introduces support for RISC-V IOMMU architected
hardware into the Linux kernel.

The RISC-V IOMMU specification, which this series is based on, is
ratified and available at GitHub/riscv-non-isa [1].

At a high level, the RISC-V IOMMU specification defines:

1) Data structures:
  - Device-context: Associates devices with address spaces and holds
    per-device parameters for address translations.
  - Process-contexts: Associates different virtual address spaces based
    on device-provided process identification numbers.
  - MSI page table configuration used to direct an MSI to a guest
    interrupt file in an IMSIC.
2) In-memory queue interface:
  - Command-queue for issuing commands to the IOMMU.
  - Fault/event queue for reporting faults and events.
  - Page-request queue for reporting "Page Request" messages received
    from PCIe devices.
  - Message-signaled and wire-signaled interrupt mechanisms.
3) Memory-mapped programming interface:
  - Mandatory and optional register layout and description.
  - Software guidelines for device initialization and capabilities discovery.


This series introduces RISC-V IOMMU hardware initialization and complete
single-stage translation with paging domain support.

The patches are organized as follows:

Patch 1: Introduces minimal required device tree bindings for the driver.
Patch 2: Defines RISC-V IOMMU data structures, hardware programming interface
         registers layout, and minimal initialization code for enabling global
         pass-through for all connected masters.
Patch 3: Implements the device driver for PCIe implementation of RISC-V IOMMU
         architected hardware.
Patch 4: Introduces IOMMU interfaces to the kernel subsystem.
Patch 5: Implements device directory management with discovery sequences for
         I/O mapped or in-memory device directory table location, hardware
         capabilities discovery, and device to domain attach implementation.
Patch 6: Implements command and fault queue, and introduces directory cache
         invalidation sequences.
Patch 7: Implements paging domain, with page table using the same format as the
         CPU’s MMU. This patch series enables only 4K mappings; complete support
         for large page mappings will be introduced in follow-up patch series.

Follow-up patch series, providing large page support and updated walk cache
management based on the revised specification, and complete ATS/PRI/SVA support,
will be posted to GitHub [2].

Changes from v2:
- rebase on top of v6.9-rc6 and applied series for iommu-next:
  IOMMU memory observability, v6 [3]
  iommu, dma-mapping: Simplify arch_setup_dma_ops(), v4 [4]
- dt-bindings: compatible string
- Kconfig: optional built-in driver; removed module info
- kdump support added, interrupts and binding fixes, pcim_*
- use iommu allocation accounting wrappers
- use new dma-mapping setup, removed probe_finalize
- release domain added, memory allocations moved to domain alloc
- updated domain attach flow, fixes for domain to device bond locking
- fixed alignment check, fixed non-leaf page release
- driver warnings cleaned up


Best regards,
 Tomasz Jeznach

[1] link: https://github.com/riscv-non-isa/riscv-iommu
[2] link: https://github.com/tjeznach/linux
[3] link: https://lore.kernel.org/linux-iommu/20240413002522.1101315-1-pasha.tatashin@soleen.com/
[4] link: https://lore.kernel.org/linux-iommu/cover.1713523152.git.robin.murphy@arm.com/
v2 link:  https://lore.kernel.org/linux-iommu/cover.1713456597.git.tjeznach@rivosinc.com/
v1 link:  https://lore.kernel.org/linux-iommu/cover.1689792825.git.tjeznach@rivosinc.com/

Tomasz Jeznach (7):
  dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
  iommu/riscv: Add RISC-V IOMMU platform device driver
  iommu/riscv: Add RISC-V IOMMU PCIe device driver
  iommu/riscv: Enable IOMMU registration and device probe.
  iommu/riscv: Device directory management.
  iommu/riscv: Command and fault queue support
  iommu/riscv: Paging domain support

 .../bindings/iommu/riscv,iommu.yaml           |  150 ++
 MAINTAINERS                                   |    8 +
 drivers/iommu/Kconfig                         |    1 +
 drivers/iommu/Makefile                        |    2 +-
 drivers/iommu/riscv/Kconfig                   |   20 +
 drivers/iommu/riscv/Makefile                  |    3 +
 drivers/iommu/riscv/iommu-bits.h              |  782 +++++++++
 drivers/iommu/riscv/iommu-pci.c               |  119 ++
 drivers/iommu/riscv/iommu-platform.c          |   92 +
 drivers/iommu/riscv/iommu.c                   | 1549 +++++++++++++++++
 drivers/iommu/riscv/iommu.h                   |   88 +
 11 files changed, 2813 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
 create mode 100644 drivers/iommu/riscv/Kconfig
 create mode 100644 drivers/iommu/riscv/Makefile
 create mode 100644 drivers/iommu/riscv/iommu-bits.h
 create mode 100644 drivers/iommu/riscv/iommu-pci.c
 create mode 100644 drivers/iommu/riscv/iommu-platform.c
 create mode 100644 drivers/iommu/riscv/iommu.c
 create mode 100644 drivers/iommu/riscv/iommu.h


base-commit: e67572cd2204894179d89bd7b984072f19313b03
message-id: 20240413002522.1101315-1-pasha.tatashin@soleen.com
message-id: cover.1713523152.git.robin.murphy@arm.com
-- 
2.34.1


