Return-Path: <devicetree+bounces-54767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 122EF89293E
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 05:19:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33BFA1C21345
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 04:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2301D8F40;
	Sat, 30 Mar 2024 04:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgbRatda"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FB379FE;
	Sat, 30 Mar 2024 04:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711772381; cv=none; b=Zp99GsYRTK0ntq5SZALd0+L0CmCtXxsFnwTl399zuYzzQ8XM9434Be/VRCZ4RAes8ddMzpIXFzXFFntCX0EOUNUt4G2ShUyuHAJHuZeT9DZcm3oOoFsQb79MX4NHwpF1r4Do4+cyyaLbPN938EKxORW1WFbWiLe+AIl+Kq5yDFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711772381; c=relaxed/simple;
	bh=SbRxx7xRTtT3nznBXshxL4iqyxq35PQ5qfUvq6y785Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fNm6vMxUlPthSbSDwUaaaiNE7y/cFObrdCA9Nl3BHGR3jJnFAA6MbczIgu2nq+GM6p9eSxz+nTUDSPMAsLO0DeIiSlcxhYeD7eEGTvkBURZXY6v41b5zv7rXC/2ZkGxfxRI/Xj0rkxix7S1CecPnLhWCnM6y3u1ru8D5gqXROcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgbRatda; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD449C43399;
	Sat, 30 Mar 2024 04:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772378;
	bh=SbRxx7xRTtT3nznBXshxL4iqyxq35PQ5qfUvq6y785Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NgbRatdaGfK+oHZh7Yh/t8NRyGHi/ZDVZ7mq/bd2Pe9cfOKURaDGyryN2uU7TwgSn
	 DkU2OMyWJiRAajDKQP/VjsqprfBn39ixtSd4w7jEIa9HSI+yqIqgbj3qFF/Yu59V+U
	 j7dbXjgmT+DnoMNkyq8hCNavotW0vgtsysbQtpl8gHdVqeljP8Va259oHvQFRY7qUG
	 050bvmv8py4DX5EIUuTogl7czRrnQXhah5sEZbIlpMbH/4RbpcVhX+QmvuNEIGXBXH
	 doxGx0dMe2wJVkyCGxtNI4lwAIR1K1ZKgXA9scQQzejaXhOlHs/qmUcPD2cnB9X0BQ
	 pNRwaui1ljOrA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Date: Sat, 30 Mar 2024 13:19:12 +0900
Message-ID: <20240330041928.1555578-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some endpoint controllers have requirements on the alignment of the
controller physical memory address that must be used to map a RC PCI
address region. For instance, the rockchip endpoint controller uses
at most the lower 20 bits of a physical memory address region as the
lower bits of an RC PCI address. For mapping a PCI address region of
size bytes starting from pci_addr, the exact number of address bits
used is the number of address bits changing in the address range
[pci_addr..pci_addr + size - 1].

For this example, this creates the following constraints:
1) The offset into the controller physical memory allocated for a
   mapping depends on the mapping size *and* the starting PCI address
   for the mapping.
2) A mapping size cannot exceed the controller windows size (1MB) minus
   the offset needed into the allocated physical memory, which can end
   up being a smaller size than the desired mapping size.

Handling these constraints independently of the controller being used in
a PCI EP function driver is not possible with the current EPC API as
it only provides the ->align field in struct pci_epc_features.
Furthermore, this alignment is static and does not depend on a mapping
pci address and size.

Solve this by introducing the function pci_epc_map_align() and the
endpoint controller operation ->map_align to allow endpoint function
drivers to obtain the size and the offset into a controller address
region that must be used to map an RC PCI address region. The size
of the physical address region provided by pci_epc_map_align() can then
be used as the size argument for the function pci_epc_mem_alloc_addr().
The offset into the allocated controller memory can be used to
correctly handle data transfers. Of note is that pci_epc_map_align() may
indicate upon return a mapping size that is smaller (but not 0) than the
requested PCI address region size. For such case, an endpoint function
driver must handle data transfers in fragments.

The controller operation ->map_align is optional: controllers that do
not have any address alignment constraints for mapping a RC PCI address
region do not need to implement this operation. For such controllers,
pci_epc_map_align() always returns the mapping size as equal
to the requested size and an offset equal to 0.

The structure pci_epc_map is introduced to represent a mapping start PCI
address, size and the size and offset into the controller memory needed
for mapping the PCI address region.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             | 33 +++++++++++++++
 2 files changed, 99 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 754afd115bbd..37758ca91d7f 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
 
+/**
+ * pci_epc_map_align() - Get the offset into and the size of a controller memory
+ *			 address region needed to map a RC PCI address region
+ * @epc: the EPC device on which address is allocated
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @pci_addr: PCI address to which the physical address should be mapped
+ * @size: the size of the mapping starting from @pci_addr
+ * @map: populate here the actual size and offset into the controller memory
+ *       that must be allocated for the mapping
+ *
+ * Invoke the controller map_align operation to obtain the size and the offset
+ * into a controller address region that must be allocated to map @size
+ * bytes of the RC PCI address space starting from @pci_addr.
+ *
+ * The size of the mapping that can be handled by the controller is indicated
+ * using the pci_size field of @map. This size may be smaller than the requested
+ * @size. In such case, the function driver must handle the mapping using
+ * several fragments. The offset into the controller memory for the effective
+ * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
+ * using the map_ofst field of @map.
+ */
+int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		      u64 pci_addr, size_t size, struct pci_epc_map *map)
+{
+	const struct pci_epc_features *features;
+	size_t mask;
+	int ret;
+
+	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
+		return -EINVAL;
+
+	if (!size || !map)
+		return -EINVAL;
+
+	memset(map, 0, sizeof(*map));
+	map->pci_addr = pci_addr;
+	map->pci_size = size;
+
+	if (epc->ops->map_align) {
+		mutex_lock(&epc->lock);
+		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
+		mutex_unlock(&epc->lock);
+		return ret;
+	}
+
+	/*
+	 * Assume a fixed alignment constraint as specified by the controller
+	 * features.
+	 */
+	features = pci_epc_get_features(epc, func_no, vfunc_no);
+	if (!features || !features->align) {
+		map->map_pci_addr = pci_addr;
+		map->map_size = size;
+		map->map_ofst = 0;
+	}
+
+	mask = features->align - 1;
+	map->map_pci_addr = map->pci_addr & ~mask;
+	map->map_ofst = map->pci_addr & mask;
+	map->map_size = ALIGN(map->map_ofst + map->pci_size, features->align);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pci_epc_map_align);
+
 /**
  * pci_epc_map_addr() - map CPU address to PCI address
  * @epc: the EPC device on which address is allocated
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cc2f70d061c8..8cfb4aaf2628 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -32,11 +32,40 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
 	}
 }
 
+/**
+ * struct pci_epc_map - information about EPC memory for mapping a RC PCI
+ *                      address range
+ * @pci_addr: start address of the RC PCI address range to map
+ * @pci_size: size of the RC PCI address range to map
+ * @map_pci_addr: RC PCI address used as the first address mapped
+ * @map_size: size of the controller memory needed for the mapping
+ * @map_ofst: offset into the controller memory needed for the mapping
+ * @phys_base: base physical address of the allocated EPC memory
+ * @phys_addr: physical address at which @pci_addr is mapped
+ * @virt_base: base virtual address of the allocated EPC memory
+ * @virt_addr: virtual address at which @pci_addr is mapped
+ */
+struct pci_epc_map {
+	phys_addr_t	pci_addr;
+	size_t		pci_size;
+
+	phys_addr_t	map_pci_addr;
+	size_t		map_size;
+	phys_addr_t	map_ofst;
+
+	phys_addr_t	phys_base;
+	phys_addr_t	phys_addr;
+	void __iomem	*virt_base;
+	void __iomem	*virt_addr;
+};
+
 /**
  * struct pci_epc_ops - set of function pointers for performing EPC operations
  * @write_header: ops to populate configuration space header
  * @set_bar: ops to configure the BAR
  * @clear_bar: ops to reset the BAR
+ * @map_align: operation to get the size and offset into a controller memory
+ *             window needed to map an RC PCI address region
  * @map_addr: ops to map CPU address to PCI address
  * @unmap_addr: ops to unmap CPU address and PCI address
  * @set_msi: ops to set the requested number of MSI interrupts in the MSI
@@ -61,6 +90,8 @@ struct pci_epc_ops {
 			   struct pci_epf_bar *epf_bar);
 	void	(*clear_bar)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			     struct pci_epf_bar *epf_bar);
+	int	(*map_align)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			    struct pci_epc_map *map);
 	int	(*map_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			    phys_addr_t addr, u64 pci_addr, size_t size);
 	void	(*unmap_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
@@ -234,6 +265,8 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		    struct pci_epf_bar *epf_bar);
 void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		       struct pci_epf_bar *epf_bar);
+int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+		      u64 pci_addr, size_t size, struct pci_epc_map *map);
 int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		     phys_addr_t phys_addr,
 		     u64 pci_addr, size_t size);
-- 
2.44.0


