Return-Path: <devicetree+bounces-75986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF7690961F
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 07:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4A6E2832AB
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 05:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EA410A12;
	Sat, 15 Jun 2024 05:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="PNUY0Cd5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC2FC0B
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 05:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718429270; cv=none; b=byC1iNq3yN/b2P0wRb6lnI6nGb4CQD83dN/7MuDr3XPa5BJsMNBPbZ7d1xFqF4rufiFpNZ1UYaquAW5Uq2CEPkU7Xru1DUSRcHkWJeYCvuf5RXXk1PMxF1NvAvgUN4dxAG+46lRIPUUhyT8MQxDXPogzXIdumPEXpN5JUlt/V2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718429270; c=relaxed/simple;
	bh=mA3Hhmq6fqwvMPCKWI5U2Cg2yOiBjniZrh4w8wHC9P0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ilwuHS5Aj/rJLROFc09pGsbRIdJzCyib72cY44lRr3KkLmuwM4PtxIWFWFbioerZFRN1hIAPoA4Ih0WNBedGglDcf5b/5tH8b7P4n6Z+/F4yP7OK+clwk9PCu+cRand1VX73b6RLdQZGdDkEiVHpQtvp/uxueH59kS7nEghQ/uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=PNUY0Cd5; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6f9a4f9923aso1521890a34.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 22:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718429267; x=1719034067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4HWY3DwYhS1DC6ssfyK/mGNM91IszoPLT/Xd+boZpqg=;
        b=PNUY0Cd5UfDzcalS+tgMf32XcyZgLQ0J4EWuBTR4uiyEbwMA5V/k3qmUWx5rc4hC5j
         aq5tUkU+RM176UuXUEt6JnlTd9Voqlhr+SHWo1b8dp44FjJ3KYSM0i7M3tqW5K02NSgA
         cjfNewfrR3UXKsvi9MmWmeKLVhPFuTNabcd1TDNADA0Aly9OCUPQoxXJSVjuhB2ciKXb
         PxFUOosUVpQtbS9HioXipFfrl5bUtaOmm7L0CkzB+t4zrR6SgZtjxKCArvH0tCoctdLG
         FrvsjMI/eDGPwaTzZiC+Uu0J3wtCs5+YdJltekow+hPnmf1jx4xjI10YBvs3SYh4jpbV
         A54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718429267; x=1719034067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4HWY3DwYhS1DC6ssfyK/mGNM91IszoPLT/Xd+boZpqg=;
        b=WA+iUE5iv6gqu5M+j+9TsSDLhZTlZJ7xvkhgI2E0J1foRoYubRsCby+EHoOSQdrvOc
         jGkxXIMoGreQxf4lwBQ23AsfZ2oK0/PM40w6+UJRfhOmKYIQD9pQvOD2wvZjkcWwEvzQ
         w+oqqTptsvQ/IAaukU94vY+tkZk6RAam1nGAETrdDldus2k59YRqZxEXoq8wbdtK7BD6
         CcefoLF2e47eRSHCX+vnE0UsU4oH0k44K8LlDceOyHhWfI/WDQOf4e8cRY8kIokv2msC
         CkKhr/6ECIc9HchJgHsM3MzVYCcLCHwwdxCg2cyT1bSEjBnas35oJ8W7k+++Zi7Na+/y
         JAmw==
X-Forwarded-Encrypted: i=1; AJvYcCWXV9PtpuculxtR0HFSrkT3Al1kFwqtiRJz4BrTu1+wDi42xW9v7DwsWn6PF68t4fZjROkKczwqErl4RoAMkCDw3JJONAZJwMCtbQ==
X-Gm-Message-State: AOJu0YwknzpMaf3F/jpYxbqhxv2NKnxLq9NvI+NUvyOI7f1mAU+EuDiP
	t2Zfwn1BsVVgxJ71NSNNjRXNIwjP8ozDNloi3EcSM3VLf/JSh/QYsRW6JuE7mvw=
X-Google-Smtp-Source: AGHT+IEkw9bzoLUdXSiey6gWd/rfVSdgAg0oVru00fWS+E2CLByqzysRddxec15KuDMJ9oecqX3IyA==
X-Received: by 2002:a05:6830:3443:b0:6fb:8193:85dc with SMTP id 46e09a7af769-6fb93b07c46mr4566313a34.30.1718429267234;
        Fri, 14 Jun 2024 22:27:47 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705ccb6b99bsm4081578b3a.143.2024.06.14.22.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 22:27:46 -0700 (PDT)
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
Subject: [PATCH v8 0/7] Linux RISC-V IOMMU Support
Date: Fri, 14 Jun 2024 22:27:30 -0700
Message-Id: <cover.1718388908.git.tjeznach@rivosinc.com>
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
Patch 7: Implements paging domain, using highest page-table mode advertised
         by the hardware. This series enables only 4K mappings; complete support
         for large page mappings will be introduced in follow-up patch series.

Follow-up patch series, providing large page support and updated walk cache
management based on the revised specification, and complete ATS/PRI/SVA support,
will be posted to GitHub [2].

Changes from v7:
- rebase on v6.10-rc3
- fix address shift (ppn -> pfn) for queue base register read
- add invalidation after DDTE update

Best regards,
 Tomasz Jeznach

[1] link: https://github.com/riscv-non-isa/riscv-iommu
[2] link: https://github.com/tjeznach/linux
v7 link:  https://lore.kernel.org/linux-iommu/cover.1717612298.git.tjeznach@rivosinc.com/
v6 link:  https://lore.kernel.org/linux-iommu/cover.1716578450.git.tjeznach@rivosinc.com/
v5 link:  https://lore.kernel.org/linux-iommu/cover.1715708679.git.tjeznach@rivosinc.com/
v4 link:  https://lore.kernel.org/linux-iommu/cover.1714752293.git.tjeznach@rivosinc.com/
v3 link:  https://lore.kernel.org/linux-iommu/cover.1714494653.git.tjeznach@rivosinc.com/
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

 .../bindings/iommu/riscv,iommu.yaml           |  147 ++
 MAINTAINERS                                   |    8 +
 drivers/iommu/Kconfig                         |    1 +
 drivers/iommu/Makefile                        |    2 +-
 drivers/iommu/riscv/Kconfig                   |   20 +
 drivers/iommu/riscv/Makefile                  |    3 +
 drivers/iommu/riscv/iommu-bits.h              |  784 ++++++++
 drivers/iommu/riscv/iommu-pci.c               |  119 ++
 drivers/iommu/riscv/iommu-platform.c          |   92 +
 drivers/iommu/riscv/iommu.c                   | 1684 +++++++++++++++++
 drivers/iommu/riscv/iommu.h                   |   88 +
 11 files changed, 2947 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
 create mode 100644 drivers/iommu/riscv/Kconfig
 create mode 100644 drivers/iommu/riscv/Makefile
 create mode 100644 drivers/iommu/riscv/iommu-bits.h
 create mode 100644 drivers/iommu/riscv/iommu-pci.c
 create mode 100644 drivers/iommu/riscv/iommu-platform.c
 create mode 100644 drivers/iommu/riscv/iommu.c
 create mode 100644 drivers/iommu/riscv/iommu.h


base-commit: 83a7eefedc9b56fe7bfeff13b6c7356688ffa670
-- 
2.34.1


