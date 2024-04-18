Return-Path: <devicetree+bounces-60686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BA58AA010
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 18:33:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1E9E286003
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 16:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894E816F8F7;
	Thu, 18 Apr 2024 16:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Y6rVLtcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E7215E1FC
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713457955; cv=none; b=ihPqZT9Hzbrbf8wpUH850Al9zIJwjl4YY5QA0AxbO6nZ2ZovaWkMXhGFXN6XSVvtvmu7V1fGC4wqOkUM9oqYzbFGIvI6v+nzibGs9q19R/dXl9fnRHr6ONWxG6kRiWE5tRy6BrZa26NdwoHqyGqKeafB7/Q/GnkqhBc+L+dlWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713457955; c=relaxed/simple;
	bh=dg7kiyLQdxJDu/DhZjBYy9+fyv9Ey2Xh3fyL/js/tQE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=YnnfWiUi0O9LwTWUOeedIqAlG8KW40y8YCpzhCrcC+gKl+nY2eCJSGt8P5kIjb3QcLSQ2MsmSgXm7eRsf5+htQrXMr2TDkOpYHXm2ptCmqKEAaybKWaU66es7Nl1P5XJSeu43aLOXEM+hKeWafsnxd0nivIlqaq2VJ/NFUeo/So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Y6rVLtcu; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6ecf406551aso966233b3a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 09:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713457952; x=1714062752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6qw41A+dZx7I8Diykai2FpeK5mNXOqfbEJEaS+qGnKM=;
        b=Y6rVLtcuMcdlMUEVo7lGLkrI+8ITGMGGxJlLJKkjqj147on6k+kLgILSBTsH8VotJ3
         J3bD+QYGjz9EnsWZ9wbgIxr1BbsfC5wvYdyt+xRm714eKp/rBrIlq0akP9D8pW/B0BIJ
         RzWfY+tVhiN+vk1uGx+WPyH3PzEuBB01XuovTckTtL3H5g6oJzyzXGMQ2ajJCyXw/TLb
         qo9DKP8nDg3bq461JlFKpbesq2RB/Mv+xF99kg6SkMw7FhUt2Z+1FDBJQL4X04F6yTEj
         RxBkGAR3wLvgxWMa0KaXVOMMTLI9HHXZYbgxAA12QDVV6lv1PUGyxSStats3hMF3UCxi
         SM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713457952; x=1714062752;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6qw41A+dZx7I8Diykai2FpeK5mNXOqfbEJEaS+qGnKM=;
        b=Ckm3IjkJhtbsJRg86Yah+VVwanVtaJSsvrleHkqNESjKBdRrcXLVbCIFWed0Hn++44
         tZyhQm/l6LoliMjiyG/+aMdUUz1BCJvhgFjYQ8tlt7dcqLd1pdUfeZBwb61pFSOH1Es1
         0SUuDQxx+24xAXxuVDQDthK2cVDQ2TaeDlJBXEhQRFTlkpY24f1yRZVv/A9+fZUDo4H+
         WL3Xf2+FHKHtOwVJG0+d9RasWhaecWrKCbVDGwMtCZH3HtGUFgY/hT0ilTo3372s9Kjd
         c3V+TlkJTyIC9DGEucrh6Y5qekfHp7f71MRbbh8b1bGvWUU3Ezwa1x8Y6G3DVjFcdoKL
         gz6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVlEQK1ESNtC9RGR6DL3d8+yxW6jg4P94eXL261URJwqLdCiiCU8IF9BybqRfOmSF7KsqZDzge5Nn78H/TDFgVMZAkSEYKlNulb3g==
X-Gm-Message-State: AOJu0Yww55PJpbOEW/jwjQ8Hg3vLKHo3yl7HvlkpVAmOLsu6Dn9w0pvo
	HVjKlwyal4Q+9uteL47LaLYbX87eG7Y+7XIv2mdpIg6ygMYpJjOin98iCK94m+E=
X-Google-Smtp-Source: AGHT+IGrx2JZaOHUbHgOAjjqs5+H2ptnSIVhy93nY5s3x5VPcvniqdkm0SstG8X7B934i3pyGqk/Hg==
X-Received: by 2002:a05:6a00:3a1d:b0:6e6:9af4:409a with SMTP id fj29-20020a056a003a1d00b006e69af4409amr3933457pfb.33.1713457952604;
        Thu, 18 Apr 2024 09:32:32 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b19-20020a056a000a9300b006eae3aac040sm1674755pfl.31.2024.04.18.09.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 09:32:32 -0700 (PDT)
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
Subject: [PATCH v2 0/7] Linux RISC-V IOMMU Support
Date: Thu, 18 Apr 2024 09:32:18 -0700
Message-Id: <cover.1713456597.git.tjeznach@rivosinc.com>
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
will be posted to GitHub [2] in the next few days.

Changes from v1:

  This version includes major reorganization of the code related to queue
  and page table management, removal of all ATS/PRI/SVA features to be addressed
  in follow-up patch series, removal of unnecessary checks, and adoption of new
  interfaces for identity and paging domain allocations.

Apologies for the delay in sending v2 series, and thank you for valuable feedback
and patience with last patch series.

Best regards,
 Tomasz Jeznach

[1] link: https://github.com/riscv-non-isa/riscv-iommu
[2] link: https://github.com/tjeznach/linux
v1 link:  https://lore.kernel.org/linux-iommu/cover.1689792825.git.tjeznach@rivosinc.com/

Tomasz Jeznach (7):
  dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
  iommu/riscv: Add RISC-V IOMMU platform device driver
  iommu/riscv: Add RISC-V IOMMU PCIe device driver
  iommu/riscv: Enable IOMMU registration and device probe.
  iommu/riscv: Device directory management.
  iommu/riscv: Command and fault queue support
  iommu/riscv: Paging domain support

 .../bindings/iommu/riscv,iommu.yaml           |  149 ++
 MAINTAINERS                                   |   14 +
 drivers/iommu/Kconfig                         |    1 +
 drivers/iommu/Makefile                        |    2 +-
 drivers/iommu/riscv/Kconfig                   |   23 +
 drivers/iommu/riscv/Makefile                  |    3 +
 drivers/iommu/riscv/iommu-bits.h              |  782 +++++++++
 drivers/iommu/riscv/iommu-pci.c               |  154 ++
 drivers/iommu/riscv/iommu-platform.c          |   94 ++
 drivers/iommu/riscv/iommu.c                   | 1441 +++++++++++++++++
 drivers/iommu/riscv/iommu.h                   |   88 +
 11 files changed, 2750 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
 create mode 100644 drivers/iommu/riscv/Kconfig
 create mode 100644 drivers/iommu/riscv/Makefile
 create mode 100644 drivers/iommu/riscv/iommu-bits.h
 create mode 100644 drivers/iommu/riscv/iommu-pci.c
 create mode 100644 drivers/iommu/riscv/iommu-platform.c
 create mode 100644 drivers/iommu/riscv/iommu.c
 create mode 100644 drivers/iommu/riscv/iommu.h


base-commit: 0bbac3facb5d6cc0171c45c9873a2dc96bea9680
-- 
2.34.1


