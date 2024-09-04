Return-Path: <devicetree+bounces-99894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BC896B79F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8CC5286202
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8891CEEB7;
	Wed,  4 Sep 2024 10:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="eE3WFC2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C1A433C8
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 10:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725444032; cv=none; b=Wy8lP8pS+w89AOhQQujDV6ZweCmKueIZlrB/HlhArEV9MSSb5xc5i2/5KCGb2ovVScHMoY9QCPbIQd7zvOl/lAzQBVeGtoFw2Zg93p6pGgCCYp9Pg5PO7jmVWSt5anF0Q64ZRpELEghlwdmT4/zSXmohjmXxYEm3lLFsnEzCStw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725444032; c=relaxed/simple;
	bh=p9yM82N6ZFFY1dVALMbkqI2CYBF12CQNPLXxHChHr0g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=e+98I0p4bMrtt4tXljfD84tLomZQL+PUVf0LdwQy9BLzrw+4oFn5o4u2PjI3pv7wNokLF9r0U3BA8b1I+BfNkBaE6D5Trc8mEpOwszEx1Rzn9CIOIuFjbIFgIfBDsi+iQXQoL9ix3AB4xtcynnmGve9/37IU4Md8Gr1/UckenhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=eE3WFC2+; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 2024090410002066f24a877637705a3d
        for <devicetree@vger.kernel.org>;
        Wed, 04 Sep 2024 12:00:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=1SKp36I9PCzGo29f5acEW3fG8torBGSzCm9VDjPCrYc=;
 b=eE3WFC2+TO/F4uOz51LAiwqvACKMhH1YWtK6A9xDcF6rL4XzlUr39mB3ySPuPzd7IAn0Bs
 ARIR4oojss2Aa9VYltAFoSnZfZpvT8MxIHGAtk42c807aea/MHOAlBjCbQHlFax0vNkeNnhA
 RXMgxDbMtYzF74S701JIl9FEXVq5oFsHAt9huQvTjENqbdrTO3qGAuF7EwCglApvBXSHFTkR
 4/y6LzOb5DBJZHm8TkuHxAKpCeb0ZRebO0bLhIrqjsP5Hoxlq0it9HnGyc0t3Scww0cDQNNj
 odmC6w2ZfHZC04rHltOTpwRZ6Vl1UzJ/OT2fl0jy4D3iQNW5bxbaHtVA==;
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
Subject: [PATCH v4 0/7] soc: ti: Add and use PVU on K3-AM65 for DMA isolation
Date: Wed,  4 Sep 2024 12:00:09 +0200
Message-ID: <cover.1725444016.git.jan.kiszka@siemens.com>
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

Changes in v4:
 - reorder patch queue, moving all DTS changes to the back
 - limit activation to IOT2050 Advanced variants
 - move DMA pool to allow firmware-based expansion it up to 512M

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
  soc: ti: Add IOMPU-like PVU driver
  PCI: keystone: Add supported for PVU-based DMA isolation on AM654
  arm64: dts: ti: k3-am65-main: Add PVU nodes
  arm64: dts: ti: k3-am65-main: Add VMAP registers to PCI root complexes
  arm64: dts: ti: iot2050: Enforce DMA isolation for devices behind PCI
    RC on Advanced

 .../bindings/pci/ti,am65-pci-host.yaml        |  52 +-
 .../bindings/soc/ti/ti,am654-pvu.yaml         |  51 ++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  38 +-
 .../ti/k3-am6548-iot2050-advanced-common.dtsi |  21 +-
 drivers/pci/controller/dwc/pci-keystone.c     | 101 ++++
 drivers/soc/ti/Kconfig                        |   4 +
 drivers/soc/ti/Makefile                       |   1 +
 drivers/soc/ti/ti-pvu.c                       | 487 ++++++++++++++++++
 include/linux/ti-pvu.h                        |  16 +
 9 files changed, 754 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,am654-pvu.yaml
 create mode 100644 drivers/soc/ti/ti-pvu.c
 create mode 100644 include/linux/ti-pvu.h

-- 
2.43.0


