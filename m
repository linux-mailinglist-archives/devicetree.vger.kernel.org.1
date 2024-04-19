Return-Path: <devicetree+bounces-61009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 393138AB3D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BACCB1F23565
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED2D1386DF;
	Fri, 19 Apr 2024 16:55:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367761384B7;
	Fri, 19 Apr 2024 16:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713545721; cv=none; b=qguoyz4FW+73a3XJnuZtruf+qsDFvD5uRODVbmQOsPM9Sluwf/nuM+UqrF7X+Al584HI8fQzbi9mCsTRUT3cU/tEjnzfWtB4zu4rAWfQxVQBNqOPgJ+GT5R2kPy+F3rF32HWMgKHIGorxCmCYQ+SOwD88hEEYON2w0Hj3r9VI6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713545721; c=relaxed/simple;
	bh=ktVp2zLAUL9WvzonfGI6Nzu/EdMcQrh4rmmZjzHw0vU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d2LIJVPAX5SZpyAXwnFzrACRP6FP9WG3NrqpCiMXV4XpigRiNr/nW2GQf3VuAXJKGC/dJVD75Lt0FDMxP+b8/mT0Ng4bdYmkNJcnZJR7PZiIEvmGb8oAYn16JBsc3HCuq/SAEUTgEsI/D2W7OO13YZ9fG0omYikkswzOeMnOicQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 075FB1424;
	Fri, 19 Apr 2024 09:55:47 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E5D8B3F792;
	Fri, 19 Apr 2024 09:55:13 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: Joerg Roedel <joro@8bytes.org>,
	Christoph Hellwig <hch@lst.de>
Cc: Vineet Gupta <vgupta@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	Dexuan Cui <decui@microsoft.com>,
	Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Matthew Rosato <mjrosato@linux.ibm.com>,
	Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-acpi@vger.kernel.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	Jason Gunthorpe <jgg@nvidia.com>
Subject: [PATCH v4 3/7] ACPI/IORT: Handle memory address size limits as limits
Date: Fri, 19 Apr 2024 17:54:42 +0100
Message-Id: <284ae9fbadb12f2e3b5a30cd4d037d0e6843a8f4.1713523152.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1713523152.git.robin.murphy@arm.com>
References: <cover.1713523152.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Return the Root Complex/Named Component memory address size limit as an
inclusive limit value, rather than an exclusive size. This saves having
to fudge an off-by-one for the 64-bit case, and simplifies our caller.

Acked-by: Hanjun Guo <guohanjun@huawei.com>
Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
Tested-by: Hanjun Guo <guohanjun@huawei.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2: Avoid undefined shifts (grr...)
---
 drivers/acpi/arm64/dma.c  |  9 +++------
 drivers/acpi/arm64/iort.c | 20 ++++++++++----------
 include/linux/acpi_iort.h |  4 ++--
 3 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/acpi/arm64/dma.c b/drivers/acpi/arm64/dma.c
index 93d796531af3..b98a149f8d50 100644
--- a/drivers/acpi/arm64/dma.c
+++ b/drivers/acpi/arm64/dma.c
@@ -8,7 +8,6 @@ void acpi_arch_dma_setup(struct device *dev)
 {
 	int ret;
 	u64 end, mask;
-	u64 size = 0;
 	const struct bus_dma_region *map = NULL;
 
 	/*
@@ -23,9 +22,9 @@ void acpi_arch_dma_setup(struct device *dev)
 	}
 
 	if (dev->coherent_dma_mask)
-		size = max(dev->coherent_dma_mask, dev->coherent_dma_mask + 1);
+		end = dev->coherent_dma_mask;
 	else
-		size = 1ULL << 32;
+		end = (1ULL << 32) - 1;
 
 	ret = acpi_dma_get_range(dev, &map);
 	if (!ret && map) {
@@ -36,18 +35,16 @@ void acpi_arch_dma_setup(struct device *dev)
 				end = r->dma_start + r->size - 1;
 		}
 
-		size = end + 1;
 		dev->dma_range_map = map;
 	}
 
 	if (ret == -ENODEV)
-		ret = iort_dma_get_ranges(dev, &size);
+		ret = iort_dma_get_ranges(dev, &end);
 	if (!ret) {
 		/*
 		 * Limit coherent and dma mask based on size retrieved from
 		 * firmware.
 		 */
-		end = size - 1;
 		mask = DMA_BIT_MASK(ilog2(end) + 1);
 		dev->bus_dma_limit = end;
 		dev->coherent_dma_mask = min(dev->coherent_dma_mask, mask);
diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 6496ff5a6ba2..c0b1c2c19444 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1367,7 +1367,7 @@ int iort_iommu_configure_id(struct device *dev, const u32 *input_id)
 { return -ENODEV; }
 #endif
 
-static int nc_dma_get_range(struct device *dev, u64 *size)
+static int nc_dma_get_range(struct device *dev, u64 *limit)
 {
 	struct acpi_iort_node *node;
 	struct acpi_iort_named_component *ncomp;
@@ -1384,13 +1384,13 @@ static int nc_dma_get_range(struct device *dev, u64 *size)
 		return -EINVAL;
 	}
 
-	*size = ncomp->memory_address_limit >= 64 ? U64_MAX :
-			1ULL<<ncomp->memory_address_limit;
+	*limit = ncomp->memory_address_limit >= 64 ? U64_MAX :
+			(1ULL << ncomp->memory_address_limit) - 1;
 
 	return 0;
 }
 
-static int rc_dma_get_range(struct device *dev, u64 *size)
+static int rc_dma_get_range(struct device *dev, u64 *limit)
 {
 	struct acpi_iort_node *node;
 	struct acpi_iort_root_complex *rc;
@@ -1408,8 +1408,8 @@ static int rc_dma_get_range(struct device *dev, u64 *size)
 		return -EINVAL;
 	}
 
-	*size = rc->memory_address_limit >= 64 ? U64_MAX :
-			1ULL<<rc->memory_address_limit;
+	*limit = rc->memory_address_limit >= 64 ? U64_MAX :
+			(1ULL << rc->memory_address_limit) - 1;
 
 	return 0;
 }
@@ -1417,16 +1417,16 @@ static int rc_dma_get_range(struct device *dev, u64 *size)
 /**
  * iort_dma_get_ranges() - Look up DMA addressing limit for the device
  * @dev: device to lookup
- * @size: DMA range size result pointer
+ * @limit: DMA limit result pointer
  *
  * Return: 0 on success, an error otherwise.
  */
-int iort_dma_get_ranges(struct device *dev, u64 *size)
+int iort_dma_get_ranges(struct device *dev, u64 *limit)
 {
 	if (dev_is_pci(dev))
-		return rc_dma_get_range(dev, size);
+		return rc_dma_get_range(dev, limit);
 	else
-		return nc_dma_get_range(dev, size);
+		return nc_dma_get_range(dev, limit);
 }
 
 static void __init acpi_iort_register_irq(int hwirq, const char *name,
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index 1cb65592c95d..d4ed5622cf2b 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -39,7 +39,7 @@ void iort_get_rmr_sids(struct fwnode_handle *iommu_fwnode,
 void iort_put_rmr_sids(struct fwnode_handle *iommu_fwnode,
 		       struct list_head *head);
 /* IOMMU interface */
-int iort_dma_get_ranges(struct device *dev, u64 *size);
+int iort_dma_get_ranges(struct device *dev, u64 *limit);
 int iort_iommu_configure_id(struct device *dev, const u32 *id_in);
 void iort_iommu_get_resv_regions(struct device *dev, struct list_head *head);
 phys_addr_t acpi_iort_dma_get_max_cpu_address(void);
@@ -55,7 +55,7 @@ void iort_get_rmr_sids(struct fwnode_handle *iommu_fwnode, struct list_head *hea
 static inline
 void iort_put_rmr_sids(struct fwnode_handle *iommu_fwnode, struct list_head *head) { }
 /* IOMMU interface */
-static inline int iort_dma_get_ranges(struct device *dev, u64 *size)
+static inline int iort_dma_get_ranges(struct device *dev, u64 *limit)
 { return -ENODEV; }
 static inline int iort_iommu_configure_id(struct device *dev, const u32 *id_in)
 { return -ENODEV; }
-- 
2.39.2.101.g768bb238c484.dirty


