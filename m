Return-Path: <devicetree+bounces-69071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 795018CEA52
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 21:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FED92813FD
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 19:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4370A5EE80;
	Fri, 24 May 2024 19:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="BrKM/aiN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C2E5BACF
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 19:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716579303; cv=none; b=d7k+v7UFvz4ajlpnNAwnf0UaUTsgyDiPGGfFMre5gO0niGS2TvabxbKb7ask/dzdvHfQZKJOFy/ejMGx+7h8sFWsJjj2cFtux5GbOWQxV2TQ5Qi/PuN6bUsl33BbGB7AB7HnzVjTc1gb5PzBJk4aYbXUXjRuVEo0FYOeXUzWNCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716579303; c=relaxed/simple;
	bh=LcaRAUpDmT9uL3/H/GEO5lBvGBVhfM/fXJ6PGiMjmGc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=FR4OoceaZCQ/VmZmlEC30yMwYLNtbHjtdz+HTB2WFMGU23rTKKCyc4cGrjeUswg27iPU492ooIOk5f8HI8pKJWzvq/JoSBf0a+FzKXdZPcTXDqKgEEMSHgs3v8Ded/trdALS65sHKQUHemhKEutnLgGkpOe7ay5NOEY1/5+02XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=BrKM/aiN; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6f4f2b1c997so3669080b3a.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 12:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1716579300; x=1717184100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=twMRxUCtZSr+seZ0b3xRB7CPy5cBgsYTAlk2ZKA97pU=;
        b=BrKM/aiNDtMfeYYGYdcAOuudmKxVYqh6auVyu7D1KzOUlGDhda3vjdc3qx3LTQF2qY
         EYF3FRqyoSy0RWmhnaBzv4jWVVSJ/x2W2V5rVcxuEClUrcMnOWEi0rW/fezd8U14uu6n
         dngu2EAGWfcShmosdwfeYF/isIPkaPvhHjdZaF3hZ2WE625aZkN7KBTwyhe2zboNj4xX
         750fMp/wKLCCkI1UGZFtzka7wTo2Y37XWtuKUJLYaKLfkDBm8n2IHeLR1tyYk3y6Qu1S
         9kMCNp++M5yVfSu7wd77ZfInVnKgaOv85F05VXyi6R3IqZ+tya+De7G/kfc8+5UGdGv2
         nEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716579300; x=1717184100;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=twMRxUCtZSr+seZ0b3xRB7CPy5cBgsYTAlk2ZKA97pU=;
        b=fpCCDyJau4hJ84RHqGnwF4w55xlYc9kczduaQVaYz8J63SatLMV9S5i4zujdKEFpJQ
         HS583uxgsTJ7ibJJdjLdfA5JuqQM6OH+d8ycn8JKxaP/+g5IgblPycWHFSAZpdlykiZJ
         RqSCMIuOykUm63l/uwKr8bb3HvrVchPCO47QL2xZE1WFBhzPkRO113RIaiD8qFqH+wim
         fp5TAtfeMMEkuiC37FnWVILQcZnoRvQHXtfGF967x1L8GsAkvEsNfc7g3G7wRSGC2x5H
         cepr23osLfoAQbiVShC5T4u3ItjBM80lb/C9YrEMXK9Pq0AHmetqb7xP+JhPiD3UaqBO
         8Nvw==
X-Forwarded-Encrypted: i=1; AJvYcCWBBsrqVS0aBMufNIuDF2QJ0+ouQBfJz7TukdjKvaFddPTDIzfjVSWIv5UKJ5ZU70hXnvsejwp4D3J5W7NOHHKtW5g28vz6ggYY5A==
X-Gm-Message-State: AOJu0YzkoQoTm/kgzsliH/vz4GnT1LBA55jD+yPRPUrldiwEm8N++pkV
	fBBJa1BunulBjBCh1MSyNhDbgjWO8s5W4LTXdyjxAeBTRyKuG8VjoxDj+i1wNAo7e5qbu8t1xVZ
	w
X-Google-Smtp-Source: AGHT+IFfYlOaukFeK0Acw8qQh3bHGn6ykj/ULsrJMIR71cvO0RlraJSJAmP/NYucgiy6i5xZ2M+0RA==
X-Received: by 2002:a05:6a20:9485:b0:1b1:d32f:38ba with SMTP id adf61e73a8af0-1b212e17127mr2979231637.42.1716579299800;
        Fri, 24 May 2024 12:34:59 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fd4d878esm1441684b3a.190.2024.05.24.12.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 12:34:59 -0700 (PDT)
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
Subject: [PATCH v6 0/7] Linux RISC-V IOMMU Support
Date: Fri, 24 May 2024 12:34:40 -0700
Message-Id: <cover.1716578450.git.tjeznach@rivosinc.com>
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

Changes from v5:
- rebase on master
- fix dc.tc.v check in riscv_iommu_iodir_update()
- fix to use list_for_each_entry (without _rcu) under lock
- editorial changes: comment spelling

Best regards,
 Tomasz Jeznach

[1] link: https://github.com/riscv-non-isa/riscv-iommu
[2] link: https://github.com/tjeznach/linux
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
 drivers/iommu/riscv/iommu-bits.h              |  782 ++++++++
 drivers/iommu/riscv/iommu-pci.c               |  119 ++
 drivers/iommu/riscv/iommu-platform.c          |   92 +
 drivers/iommu/riscv/iommu.c                   | 1674 +++++++++++++++++
 drivers/iommu/riscv/iommu.h                   |   88 +
 11 files changed, 2935 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
 create mode 100644 drivers/iommu/riscv/Kconfig
 create mode 100644 drivers/iommu/riscv/Makefile
 create mode 100644 drivers/iommu/riscv/iommu-bits.h
 create mode 100644 drivers/iommu/riscv/iommu-pci.c
 create mode 100644 drivers/iommu/riscv/iommu-platform.c
 create mode 100644 drivers/iommu/riscv/iommu.c
 create mode 100644 drivers/iommu/riscv/iommu.h


base-commit: f1f9984fdc5e37303d7180ff7a85dfecb8e57e85
-- 
2.34.1


