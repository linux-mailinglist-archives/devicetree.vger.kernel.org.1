Return-Path: <devicetree+bounces-72929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 427018FD6DB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 21:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6E601F24A77
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 19:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0C615535D;
	Wed,  5 Jun 2024 19:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="R0DrYBez"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325A0154BF3
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 19:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717617479; cv=none; b=t3KhuwmeVTPt5iS6RHRj0N2fgppvs4ei1lTjqtq+Cubc1I6CbUV+oRCrEGi5QQ6kPGB3kTfyRsKkUY8qDf0A2Am1J6Hgzh5g/rAhKslGaHM1LluPxhp9EHupmpNvmbPmQzcnI9Lfwp2srSdqXAWDcYSR0EVwHgDVzfOuwb9UILs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717617479; c=relaxed/simple;
	bh=fYJBLJlZl9zT4F1JeeL+BHFvL4WZ1tU5L3j8W45umK0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=U9PQM59l1+5pPWvR4BSILokUkDh79Foe/Nu+BhiMj/14LBYKSQjzHYO9stMojteOwTynwOOdM9fLBrWB1LfBL+glFlOXesmAVYs6XiUPLtzu+zS2+yG6QqOClj/ayhNVx+agyRrhwILTYumPwzSbhhYXRyRw5Oru7daqt+L82MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=R0DrYBez; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-702621d8725so217341b3a.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 12:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717617476; x=1718222276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ISuOcjK6nJKqnAu/IEdqzzoElkUOKEX7y0pHx2W7vds=;
        b=R0DrYBezj1DrCUZivcdEiMqYKArw/kREkiKTGJk28xvWf2PNLzMFhzb6W92Z4peH77
         SqSDYfEr4yN8gyxwJ1v9dpOusnvL2yjD6TGf0fpcff5Y+po8kxQ8o7kLXnTK0A9mIxh4
         2CrTkmXV5npUp46Fo3jfbqicrANmUupltoh9VeWwhstSvbGwRqlRDSbU5npT1GVBFzWM
         HnJpQQg/3HSjNfJ3smhpZA4B4eqTSTEMS8et1L3ZIsq1YxVnoTsECIvIg8PNVLwI5hja
         1YXDTZYP6cj/0RXmJCnTlGDjd1zlZdbYBjlPrOENQxSkPZnNAlyy2kbfAp8S2TA0W0W5
         8YFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717617476; x=1718222276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ISuOcjK6nJKqnAu/IEdqzzoElkUOKEX7y0pHx2W7vds=;
        b=i+6V8XO7+ykSqEasSAIyfuaaeZ5XBl+uai5BIWzLUrTk6pWfj5D0BsbSoZjTZtlb7p
         8pat3Q5ZOuM9uNGFtxIPXrqcakBTuPK8hqbUr7ceMLWDwYfJzWf5gCykd7Swv6RRLZ46
         jSEtLbsbY2G1Bs/50aIEAEm4wCzdYpaYxyrlXiOAyE9RX0RekVjg9e7ZaaFCSWRkNdOu
         KpFwyx3glc8u/Uq3Vi8sunrf5DSYDEEOG2PWSV77YN+3oZzIJTPt6fY4wlcqDW7OZMCP
         ng0TNSPqkO3MBNrc3wrAXhu8Ma6MzCahLDNWeV7zV3CJu2sdJHOy2d7yL/hc/DbGjhxr
         oqAQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4Z/A2GjMQ8NygEPsivF1JRb5zlCZC4PaStC89hknfO12VnvNvdrzbGn82iXKni0kpFFo76EhKPZLPTkCaxtMHk60W+963ToXF6Q==
X-Gm-Message-State: AOJu0YyZJEMkjuellndpWSpipxyqS/Y+YQQVnm6A2uw3o3kZ5hTt8Of+
	C2A2z3zz0xFcBiFh2ax/TMMjVIJtPmFCTmc3Wu45bcVD9/VL+a4ZA4i16uktdnE=
X-Google-Smtp-Source: AGHT+IHCjuOWDjOPKFWsNkX8yL3PSDZTll04mMQb3hcxhcJpvd1lGdIxeYB8M2evG2kMCM9zEi8BsQ==
X-Received: by 2002:a05:6a20:9492:b0:1b1:f0d4:71b6 with SMTP id adf61e73a8af0-1b2b7186cf0mr3529279637.54.1717617476365;
        Wed, 05 Jun 2024 12:57:56 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70244900ee9sm8664209b3a.124.2024.06.05.12.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 12:57:55 -0700 (PDT)
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
Subject: [PATCH v7 0/7] Linux RISC-V IOMMU Support
Date: Wed,  5 Jun 2024 12:57:42 -0700
Message-Id: <cover.1717612298.git.tjeznach@rivosinc.com>
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

Changes from v6:
- rebase on v6.10-rc2
- editorial changes in iommu-bits.h addressing Drew's comments
- fix IOVA length check in riscv_iommu_iotlb_inval()

Best regards,
 Tomasz Jeznach

[1] link: https://github.com/riscv-non-isa/riscv-iommu
[2] link: https://github.com/tjeznach/linux
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
 drivers/iommu/riscv/iommu.c                   | 1677 +++++++++++++++++
 drivers/iommu/riscv/iommu.h                   |   88 +
 11 files changed, 2940 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
 create mode 100644 drivers/iommu/riscv/Kconfig
 create mode 100644 drivers/iommu/riscv/Makefile
 create mode 100644 drivers/iommu/riscv/iommu-bits.h
 create mode 100644 drivers/iommu/riscv/iommu-pci.c
 create mode 100644 drivers/iommu/riscv/iommu-platform.c
 create mode 100644 drivers/iommu/riscv/iommu.c
 create mode 100644 drivers/iommu/riscv/iommu.h


base-commit: c3f38fa61af77b49866b006939479069cd451173
-- 
2.34.1


