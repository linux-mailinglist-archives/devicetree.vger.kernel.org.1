Return-Path: <devicetree+bounces-97664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD01962F2D
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 20:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7D271F21DB8
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 18:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4931AAE24;
	Wed, 28 Aug 2024 18:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="O1oskRcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99EBB1A7067
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 18:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724868088; cv=none; b=Ov+rknuqZA+YexHORqEe2g1Nq0/yD6gzuZQeBL5VIkP0JfzvjNy9OEj/DDrB+uAtGWIrSQ9RaY+sPRK3nGf9H97fdfPimBo9AAnDNVdJgZw3b8xVFMkH3TnXSs3n5CAolUUIwLuI5R+oxqmSfh6Yfobq5EAJklxrf7OwRyMNb/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724868088; c=relaxed/simple;
	bh=ePkc2PsbkgF0p1uGvpY8HCwe6DiqE7bSa7rKWqI5PcY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=UUIbA6Oh0oO5JOxJXXmMIuNDLu3qY89k0oFvyx0TkCGZ/REpFBJYzzXAShq2qE5pgIfvRGfikVZ+ki+1ikgkZprgXV8l+hYuKvCgg6UvcgyfsSBThivYeRhrJvTYQ0GI9we8r36lAWzw5UHFxTRDUiiRN6RWC0UrcQdRIQm/pFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=O1oskRcJ; arc=none smtp.client-ip=185.136.65.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 20240828180122601eacd2defe3c625c
        for <devicetree@vger.kernel.org>;
        Wed, 28 Aug 2024 20:01:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=FPzWbEIJ2nzFNeOyuBWSWLU3hoxSsNE9Y1WR/uYxWQo=;
 b=O1oskRcJT46ZMZ1ijK7G4RcPfpXzNwmAnQYCLRPMyFNrlsXaxlEdUJk8POvcCqkdBFu9He
 FYrlrqMZb+rqdLTIpgmOSpxac5YH2ComztAkpx4XHzPYzsN3IxnEOYKZz1/JF8GlgzRT3lP2
 UwscJMcyBChlCtUgO5TZnOT1AQba5J3REeHx2pKJ4dfBzoI3h1adPYPHxCPFA8ZI5Np3F5Fa
 r2pqyxivzQcBZ75Gn/d3a0KYLzSNlkHV5nDIDweHz3c+ybmSS/ea3wMxjtL4+VxgETR/agU0
 bJHtdC2Z/ggxG1jF15HnKeUykcr3p/eBn/ZbSpjwQLCy3ZASXDkz0KVw==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>
Subject: [PATCH v3 0/7] soc: ti: Add and use PVU on K3-AM65 for DMA isolation
Date: Wed, 28 Aug 2024 20:01:13 +0200
Message-ID: <cover.1724868080.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

Changes in v3:
 - fix ti,am654-pvu.yaml according to review comments
 - address review comments on ti,am65-pci-host.yaml
 - differentiate between different compatibles in ti,am65-pci-host.yaml
 - move pvu nodes to k3-am65-main.dtsi
 - reorder patch series, pulling bindings and generic DT bits to the front

Changes in v2:
 - fix dt_bindings_check issues (patch 1)
 - address first review comments (patch 2)
 - extend ti,am65-pci-host bindings for PVU (new patch 3)

Only few of the K3 SoCs have an IOMMU and, thus, can isolate the system
against DMA-based attacks of external PCI devices. The AM65 is without
an IOMMU, but it comes with something close to it: the Peripheral
Virtualization Unit (PVU).

The PVU was originally designed to establish static compartments via a
hypervisor, isolate those DMA-wise against each other and the host and
even allow remapping of guest-physical addresses. But it only provides
a static translation region, not page-granular mappings. Thus, it cannot
be handled transparently like an IOMMU.

Now, to use the PVU for the purpose of isolated PCI devices from the
Linux host, this series takes a different approach. It defines a
restricted-dma-pool for the PCI host, using swiotlb to map all DMA
buffers from a static memory carve-out. And to enforce that the devices
actually follow this, a special PVU soc driver is introduced. The driver
permits access to the GIC ITS and otherwise waits for other drivers that
detect devices with constrained DMA to register pools with the PVU.

For the AM65, the first (and possibly only) driver where this is
introduced is the pci-keystone host controller. Finally, this series
configures the IOT2050 devices (all have MiniPCIe or M.2 extension
slots) to make use of this protection scheme.

Due to the cross-cutting nature of these changes, multiple subsystems
are affected. However, I wanted to present the whole thing in one series
to allow everyone to review with the complete picture in hands. If
preferred, I can also split the series up, of course.

Jan

CC: Bjorn Helgaas <bhelgaas@google.com>
CC: "Krzysztof Wilczyński" <kw@linux.com>
CC: linux-pci@vger.kernel.org
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>

Jan Kiszka (7):
  dt-bindings: soc: ti: Add AM65 peripheral virtualization unit
  dt-bindings: PCI: ti,am65: Extend for use with PVU
  arm64: dts: ti: k3-am65-main: Add PVU nodes
  arm64: dts: ti: k3-am65-main: Add VMAP registers to PCI root complexes
  soc: ti: Add IOMPU-like PVU driver
  PCI: keystone: Add supported for PVU-based DMA isolation on AM654
  arm64: dts: ti: iot2050: Enforce DMA isolation for devices behind PCI
    RC

 .../bindings/pci/ti,am65-pci-host.yaml        |  52 +-
 .../bindings/soc/ti/ti,am654-pvu.yaml         |  51 ++
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   |  15 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  38 +-
 drivers/pci/controller/dwc/pci-keystone.c     | 101 ++++
 drivers/soc/ti/Kconfig                        |   4 +
 drivers/soc/ti/Makefile                       |   1 +
 drivers/soc/ti/ti-pvu.c                       | 487 ++++++++++++++++++
 include/linux/ti-pvu.h                        |  16 +
 9 files changed, 749 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml
 create mode 100644 drivers/soc/ti/ti-pvu.c
 create mode 100644 include/linux/ti-pvu.h

-- 
2.43.0


