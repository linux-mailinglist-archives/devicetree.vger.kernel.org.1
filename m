Return-Path: <devicetree+bounces-119133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AA99BD19A
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7AE81F246BD
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 16:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 034641EB9E9;
	Tue,  5 Nov 2024 15:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="fTQyDtYN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32680165F1E;
	Tue,  5 Nov 2024 15:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730822397; cv=none; b=uPJBBNJQ+1s50tqX3F2bA3spEVfetU/xaLgNRX4bEDa/FNDMQZdmItyIV9KmWnw0Pcuw3mXeNCpZ9WljKZYECK1w1y+YKJp0t+7V5hcTJFD5rH1J3P2rvqrU+JGmtQJPikTFk1YtMXeEr7qF+McU8NkuHsIZ6ZJsIel2UtogCbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730822397; c=relaxed/simple;
	bh=DkXVkqRb5MW1rrcDmuxZQ55nNtDmfZNjZNNupZSA9Fk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=D3GdlTfIwjfxjkej4iDGCg6I1tyNo+VUxqq49S5CyH/N/qrLCs8OzAet0C6WE526o2BdeyiirsvMwyc1yMKsgclL7vPcM+aFy3NENtzYkaEFo1r2YjCq+D1CsPHnv2WvYW2CKHn2qYIDoq8LsXfev9MIyw0JAQCRPIiWr3MII0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=fTQyDtYN; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A5FtUqG005589;
	Tue, 5 Nov 2024 15:58:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=dk201812; bh=D
	a/1lPAF13ItSoSCTFVgNFigppN4F65X41dWKFOnh6s=; b=fTQyDtYNnh6vEO75c
	1CxMhWDvKs4SG1l1jpJqMKnA6/J9P/7vTHGhwV6w54FCI7B3K8ZUPH/nBfy4Pu1i
	sNlOBTWVt6UzuNsRAWnvOWVR3t7zscdY/bFkk2ES6+gScfjrsb/H/vIEJUx0GLcG
	o8dSQvQU43vprrWrld+hPN+tfuDZQmRJ51XH8+insS3WJzeZPA9SoC35S0uOwPIF
	pZ6Dwa6INUpafEysa4dVC2SILGWBwInTFjf5adjKQpIwnd3ouj4sqU4vHp4hLrpv
	GkQtYnJxiQdlloU9aHFdNIMl1h0QmFM1RWJDxmaw10Xjls5/hE7ckYIJqOSAqBQl
	nvnHQ==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 42nd212ju1-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 05 Nov 2024 15:58:37 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.16.114) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Tue, 5 Nov 2024 15:58:36 +0000
From: Matt Coster <matt.coster@imgtec.com>
Date: Tue, 5 Nov 2024 15:58:23 +0000
Subject: [PATCH 17/21] drm/imagination: Add RISC-V firmware processor
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241105-sets-bxs-4-64-patch-v1-v1-17-4ed30e865892@imgtec.com>
References: <20241105-sets-bxs-4-64-patch-v1-v1-0-4ed30e865892@imgtec.com>
In-Reply-To: <20241105-sets-bxs-4-64-patch-v1-v1-0-4ed30e865892@imgtec.com>
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>,
        Sarah Walker
	<sarah.walker@imgtec.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=12889;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=omRhzBnZZJaHftGhnZn2V3k0LRQ3io3UGiXHWUUUNho=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaRrOcwzZfAurForcHShwaeFrytzn+0qmyDi/MjukmndD
 vdw/fy3HaUsDGIcDLJiiiw7VliuUPujpiVx41cxzBxWJpAhDFycAjCRbzUM//3Eq2cW+LFPK2mb
 3y5bveTmRo2GnsyjqZMShTfVP54g+JLhv3eJgufzRfWiYdkX7l3/41L04uTOYtHdVhukH8rudD/
 hywwA
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Authority-Analysis: v=2.4 cv=Q9aA4J2a c=1 sm=1 tr=0 ts=672a40ad cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=hzDjp0mCheYA:10 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=r_1tXGB3AAAA:8 a=kUwW5vV_uLSNjnksaIoA:9 a=QEXdDO2ut3YA:10
 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-GUID: Oj1mLi0qjishNQqpfTpIBcl-8Z078Ak-
X-Proofpoint-ORIG-GUID: Oj1mLi0qjishNQqpfTpIBcl-8Z078Ak-

From: Sarah Walker <sarah.walker@imgtec.com>

Newer PowerVR GPUs (such as the BXS-4-64 MC1) use a RISC-V firmware
processor instead of the previous MIPS or META.

Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
Signed-off-by: Matt Coster <matt.coster@imgtec.com>
---
 drivers/gpu/drm/imagination/Makefile           |   1 +
 drivers/gpu/drm/imagination/pvr_fw.c           |  18 +--
 drivers/gpu/drm/imagination/pvr_fw.h           |  10 ++
 drivers/gpu/drm/imagination/pvr_fw_riscv.c     | 163 +++++++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_fw_startstop.c |  21 ++++
 drivers/gpu/drm/imagination/pvr_rogue_riscv.h  |  41 +++++++
 6 files changed, 246 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/imagination/Makefile b/drivers/gpu/drm/imagination/Makefile
index 077e4762c7c383b6e339da1584c3865d830ef8d6..d748ad9d62e092ed7c3d772214ccd327818d507f 100644
--- a/drivers/gpu/drm/imagination/Makefile
+++ b/drivers/gpu/drm/imagination/Makefile
@@ -14,6 +14,7 @@ powervr-y := \
 	pvr_fw.o \
 	pvr_fw_meta.o \
 	pvr_fw_mips.o \
+	pvr_fw_riscv.o \
 	pvr_fw_startstop.o \
 	pvr_fw_trace.o \
 	pvr_fw_util.o \
diff --git a/drivers/gpu/drm/imagination/pvr_fw.c b/drivers/gpu/drm/imagination/pvr_fw.c
index b77c4a42caf2f208f6289160e5cec36c683b1e65..7373220fa4fc05f5beb239f1ceb92b3caba97765 100644
--- a/drivers/gpu/drm/imagination/pvr_fw.c
+++ b/drivers/gpu/drm/imagination/pvr_fw.c
@@ -929,7 +929,7 @@ pvr_fw_init(struct pvr_device *pvr_dev)
 	static const struct pvr_fw_defs *fw_defs[PVR_FW_PROCESSOR_TYPE_COUNT] = {
 		[PVR_FW_PROCESSOR_TYPE_META] = &pvr_fw_defs_meta,
 		[PVR_FW_PROCESSOR_TYPE_MIPS] = &pvr_fw_defs_mips,
-		[PVR_FW_PROCESSOR_TYPE_RISCV] = NULL,
+		[PVR_FW_PROCESSOR_TYPE_RISCV] = &pvr_fw_defs_riscv,
 	};
 
 	u32 kccb_size_log2 = ROGUE_FWIF_KCCB_NUMCMDS_LOG2_DEFAULT;
@@ -942,13 +942,6 @@ pvr_fw_init(struct pvr_device *pvr_dev)
 
 	fw_dev->defs = fw_defs[fw_dev->processor_type];
 
-	/*
-	 * Not all firmware processor types are currently supported.
-	 * Once they are, this check can be removed.
-	 */
-	if (!fw_dev->defs)
-		return -EINVAL;
-
 	err = fw_dev->defs->init(pvr_dev);
 	if (err)
 		return err;
@@ -1455,6 +1448,15 @@ void pvr_fw_object_get_fw_addr_offset(struct pvr_fw_object *fw_obj, u32 offset,
 	*fw_addr_out = pvr_dev->fw_dev.defs->get_fw_addr_with_offset(fw_obj, offset);
 }
 
+u64
+pvr_fw_obj_get_gpu_addr(struct pvr_fw_object *fw_obj)
+{
+	struct pvr_device *pvr_dev = to_pvr_device(gem_from_pvr_gem(fw_obj->gem)->dev);
+	struct pvr_fw_device *fw_dev = &pvr_dev->fw_dev;
+
+	return fw_dev->fw_heap_info.gpu_addr + fw_obj->fw_addr_offset;
+}
+
 /*
  * pvr_fw_hard_reset() - Re-initialise the FW code and data segments, and reset all global FW
  *                       structures
diff --git a/drivers/gpu/drm/imagination/pvr_fw.h b/drivers/gpu/drm/imagination/pvr_fw.h
index 8d3f0ee0aac69373f15ac5919d5b0f27c67cb284..24b9852dbc18d6cec94a4efff2eb0925fb4b5374 100644
--- a/drivers/gpu/drm/imagination/pvr_fw.h
+++ b/drivers/gpu/drm/imagination/pvr_fw.h
@@ -392,6 +392,7 @@ enum pvr_fw_processor_type {
 
 extern const struct pvr_fw_defs pvr_fw_defs_meta;
 extern const struct pvr_fw_defs pvr_fw_defs_mips;
+extern const struct pvr_fw_defs pvr_fw_defs_riscv;
 
 int pvr_fw_validate_init_device_info(struct pvr_device *pvr_dev);
 int pvr_fw_init(struct pvr_device *pvr_dev);
@@ -478,6 +479,15 @@ pvr_fw_object_get_fw_addr(struct pvr_fw_object *fw_obj, u32 *fw_addr_out)
 	pvr_fw_object_get_fw_addr_offset(fw_obj, 0, fw_addr_out);
 }
 
+u64
+pvr_fw_obj_get_gpu_addr(struct pvr_fw_object *fw_obj);
+
+static __always_inline size_t
+pvr_fw_obj_get_object_size(struct pvr_fw_object *fw_obj)
+{
+	return pvr_gem_object_size(fw_obj->gem);
+}
+
 /* Util functions defined in pvr_util.c. These are intended for use in pvr_fw_<arch>.c files. */
 int
 pvr_fw_process_elf_command_stream(struct pvr_device *pvr_dev, const u8 *fw, u8 *fw_code_ptr,
diff --git a/drivers/gpu/drm/imagination/pvr_fw_riscv.c b/drivers/gpu/drm/imagination/pvr_fw_riscv.c
new file mode 100644
index 0000000000000000000000000000000000000000..14021e6ef7533f7185dc3c2378fc1d0c46c2ffed
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_fw_riscv.c
@@ -0,0 +1,163 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/* Copyright (c) 2024 Imagination Technologies Ltd. */
+
+#include "pvr_device.h"
+#include "pvr_fw.h"
+#include "pvr_fw_info.h"
+#include "pvr_fw_mips.h"
+#include "pvr_gem.h"
+#include "pvr_rogue_cr_defs.h"
+#include "pvr_rogue_riscv.h"
+#include "pvr_vm.h"
+
+#include <linux/compiler.h>
+#include <linux/delay.h>
+#include <linux/firmware.h>
+#include <linux/ktime.h>
+#include <linux/types.h>
+
+#define ROGUE_FW_HEAP_RISCV_SHIFT 25 /* 32 MB */
+#define ROGUE_FW_HEAP_RISCV_SIZE (1u << ROGUE_FW_HEAP_RISCV_SHIFT)
+
+static int
+pvr_riscv_wrapper_init(struct pvr_device *pvr_dev)
+{
+	const u64 common_opts =
+		((u64)(ROGUE_FW_HEAP_RISCV_SIZE >> FWCORE_ADDR_REMAP_CONFIG0_SIZE_ALIGNSHIFT)
+		 << ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG0_SIZE_SHIFT) |
+		((u64)MMU_CONTEXT_MAPPING_FWPRIV
+		 << FWCORE_ADDR_REMAP_CONFIG0_MMU_CONTEXT_SHIFT);
+
+	u64 code_addr = pvr_fw_obj_get_gpu_addr(pvr_dev->fw_dev.mem.code_obj);
+	u64 data_addr = pvr_fw_obj_get_gpu_addr(pvr_dev->fw_dev.mem.data_obj);
+
+	/* This condition allows us to OR the addresses into the register directly. */
+	static_assert(ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG1_DEVVADDR_SHIFT ==
+		      ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG1_DEVVADDR_ALIGNSHIFT);
+
+	WARN_ON(code_addr & ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG1_DEVVADDR_CLRMSK);
+	WARN_ON(data_addr & ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG1_DEVVADDR_CLRMSK);
+
+	pvr_cr_write64(pvr_dev, ROGUE_RISCVFW_REGION_REMAP_CR(BOOTLDR_CODE),
+		       code_addr | common_opts | ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG0_FETCH_EN_EN);
+
+	pvr_cr_write64(pvr_dev, ROGUE_RISCVFW_REGION_REMAP_CR(BOOTLDR_DATA),
+		       data_addr | common_opts |
+			       ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG0_LOAD_STORE_EN_EN);
+
+	/* Garten IDLE bit controlled by RISC-V. */
+	pvr_cr_write64(pvr_dev, ROGUE_CR_MTS_GARTEN_WRAPPER_CONFIG,
+		       ROGUE_CR_MTS_GARTEN_WRAPPER_CONFIG_IDLE_CTRL_META);
+
+	return 0;
+}
+
+struct rogue_riscv_fw_boot_data {
+	u64 coremem_code_dev_vaddr;
+	u64 coremem_data_dev_vaddr;
+	u32 coremem_code_fw_addr;
+	u32 coremem_data_fw_addr;
+	u32 coremem_code_size;
+	u32 coremem_data_size;
+	u32 flags;
+	u32 reserved;
+};
+
+static int
+pvr_riscv_fw_process(struct pvr_device *pvr_dev, const u8 *fw,
+		    u8 *fw_code_ptr, u8 *fw_data_ptr, u8 *fw_core_code_ptr, u8 *fw_core_data_ptr,
+		    u32 core_code_alloc_size)
+{
+	struct pvr_fw_device *fw_dev = &pvr_dev->fw_dev;
+	struct pvr_fw_mem *fw_mem = &fw_dev->mem;
+	struct rogue_riscv_fw_boot_data *boot_data;
+	int err;
+
+	err = pvr_fw_process_elf_command_stream(pvr_dev, fw, fw_code_ptr, fw_data_ptr,
+						fw_core_code_ptr, fw_core_data_ptr);
+	if (err)
+		goto err_out;
+
+	boot_data = (struct rogue_riscv_fw_boot_data *)fw_data_ptr;
+
+	if (fw_mem->core_code_obj) {
+		boot_data->coremem_code_dev_vaddr = pvr_fw_obj_get_gpu_addr(fw_mem->core_code_obj);
+		pvr_fw_object_get_fw_addr(fw_mem->core_code_obj, &boot_data->coremem_code_fw_addr);
+		boot_data->coremem_code_size = pvr_fw_obj_get_object_size(fw_mem->core_code_obj);
+	}
+
+	if (fw_mem->core_data_obj) {
+		boot_data->coremem_data_dev_vaddr = pvr_fw_obj_get_gpu_addr(fw_mem->core_data_obj);
+		pvr_fw_object_get_fw_addr(fw_mem->core_data_obj, &boot_data->coremem_data_fw_addr);
+		boot_data->coremem_data_size = pvr_fw_obj_get_object_size(fw_mem->core_data_obj);
+	}
+
+	return 0;
+
+err_out:
+	return err;
+}
+
+static int
+pvr_riscv_init(struct pvr_device *pvr_dev)
+{
+	pvr_fw_heap_info_init(pvr_dev, ROGUE_FW_HEAP_RISCV_SHIFT, 0);
+
+	return 0;
+}
+
+static u32
+pvr_riscv_get_fw_addr_with_offset(struct pvr_fw_object *fw_obj, u32 offset)
+{
+	u32 fw_addr = fw_obj->fw_addr_offset + offset;
+
+	/* RISC-V cacheability is determined by address. */
+	if (fw_obj->gem->flags & PVR_BO_FW_FLAGS_DEVICE_UNCACHED)
+		fw_addr |= ROGUE_RISCVFW_REGION_BASE(SHARED_UNCACHED_DATA);
+	else
+		fw_addr |= ROGUE_RISCVFW_REGION_BASE(SHARED_CACHED_DATA);
+
+	return fw_addr;
+}
+
+static int
+pvr_riscv_vm_map(struct pvr_device *pvr_dev, struct pvr_fw_object *fw_obj)
+{
+	struct pvr_gem_object *pvr_obj = fw_obj->gem;
+
+	return pvr_vm_map(pvr_dev->kernel_vm_ctx, pvr_obj, 0, fw_obj->fw_mm_node.start,
+			  pvr_gem_object_size(pvr_obj));
+}
+
+static void
+pvr_riscv_vm_unmap(struct pvr_device *pvr_dev, struct pvr_fw_object *fw_obj)
+{
+	pvr_vm_unmap(pvr_dev->kernel_vm_ctx, fw_obj->fw_mm_node.start,
+		     fw_obj->fw_mm_node.size);
+}
+
+static bool
+pvr_riscv_irq_pending(struct pvr_device *pvr_dev)
+{
+	return pvr_cr_read32(pvr_dev, ROGUE_CR_IRQ_OS0_EVENT_STATUS) &
+	       ROGUE_CR_IRQ_OS0_EVENT_STATUS_SOURCE_EN;
+}
+
+static void
+pvr_riscv_irq_clear(struct pvr_device *pvr_dev)
+{
+	pvr_cr_write32(pvr_dev, ROGUE_CR_IRQ_OS0_EVENT_CLEAR,
+		       ROGUE_CR_IRQ_OS0_EVENT_CLEAR_SOURCE_EN);
+}
+
+const struct pvr_fw_defs pvr_fw_defs_riscv = {
+	.init = pvr_riscv_init,
+	.fw_process = pvr_riscv_fw_process,
+	.vm_map = pvr_riscv_vm_map,
+	.vm_unmap = pvr_riscv_vm_unmap,
+	.get_fw_addr_with_offset = pvr_riscv_get_fw_addr_with_offset,
+	.wrapper_init = pvr_riscv_wrapper_init,
+	.irq_pending = pvr_riscv_irq_pending,
+	.irq_clear = pvr_riscv_irq_clear,
+	.has_fixed_data_addr = false,
+};
diff --git a/drivers/gpu/drm/imagination/pvr_fw_startstop.c b/drivers/gpu/drm/imagination/pvr_fw_startstop.c
index 36cec227cfe3cf5b1e293f48b164bb1be1b0ea54..31edf7e49a9c3f3d64022129c8bb7e2151aa9cdf 100644
--- a/drivers/gpu/drm/imagination/pvr_fw_startstop.c
+++ b/drivers/gpu/drm/imagination/pvr_fw_startstop.c
@@ -49,6 +49,14 @@ rogue_bif_init(struct pvr_device *pvr_dev)
 
 	pvr_cr_write64(pvr_dev, BIF_CAT_BASEX(MMU_CONTEXT_MAPPING_FWPRIV),
 		       pc_addr);
+
+	if (pvr_dev->fw_dev.processor_type == PVR_FW_PROCESSOR_TYPE_RISCV) {
+		pc_addr = (((u64)pc_dma_addr >> ROGUE_CR_FWCORE_MEM_CAT_BASE0_ADDR_ALIGNSHIFT)
+			   << ROGUE_CR_FWCORE_MEM_CAT_BASE0_ADDR_SHIFT) &
+			  ~ROGUE_CR_FWCORE_MEM_CAT_BASE0_ADDR_CLRMSK;
+
+		pvr_cr_write64(pvr_dev, FWCORE_MEM_CAT_BASEX(MMU_CONTEXT_MAPPING_FWPRIV), pc_addr);
+	}
 }
 
 static int
@@ -114,6 +122,9 @@ pvr_fw_start(struct pvr_device *pvr_dev)
 		(void)pvr_cr_read32(pvr_dev, ROGUE_CR_SYS_BUS_SECURE); /* Fence write */
 	}
 
+	if (pvr_dev->fw_dev.processor_type == PVR_FW_PROCESSOR_TYPE_RISCV)
+		pvr_cr_write32(pvr_dev, ROGUE_CR_FWCORE_BOOT, 0);
+
 	/* Set Rogue in soft-reset. */
 	pvr_cr_write64(pvr_dev, ROGUE_CR_SOFT_RESET, soft_reset_mask);
 	if (has_reset2)
@@ -167,6 +178,16 @@ pvr_fw_start(struct pvr_device *pvr_dev)
 	/* ... and afterwards. */
 	udelay(3);
 
+	if (pvr_dev->fw_dev.processor_type == PVR_FW_PROCESSOR_TYPE_RISCV) {
+		/* Bring Debug Module out of reset. */
+		pvr_cr_write32(pvr_dev, ROGUE_CR_FWCORE_DMI_DMCONTROL,
+			       ROGUE_CR_FWCORE_DMI_DMCONTROL_DMACTIVE_EN);
+
+		/* Boot the FW. */
+		pvr_cr_write32(pvr_dev, ROGUE_CR_FWCORE_BOOT, 1);
+		udelay(3);
+	}
+
 	return 0;
 
 err_reset:
diff --git a/drivers/gpu/drm/imagination/pvr_rogue_riscv.h b/drivers/gpu/drm/imagination/pvr_rogue_riscv.h
new file mode 100644
index 0000000000000000000000000000000000000000..9a070e24fa6a8bb44ff1e421ae6750cbf724d346
--- /dev/null
+++ b/drivers/gpu/drm/imagination/pvr_rogue_riscv.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
+/* Copyright (c) 2024 Imagination Technologies Ltd. */
+
+#ifndef PVR_ROGUE_RISCV_H
+#define PVR_ROGUE_RISCV_H
+
+#include "pvr_rogue_cr_defs.h"
+
+#include <linux/bitops.h>
+#include <linux/sizes.h>
+#include <linux/types.h>
+
+#define ROGUE_RISCVFW_REGION_SIZE SZ_256M
+#define ROGUE_RISCVFW_REGION_SHIFT __ffs(ROGUE_RISCVFW_REGION_SIZE)
+
+enum rogue_riscvfw_region {
+	ROGUE_RISCV_REGION__RESERVED_0 = 0,
+	ROGUE_RISCV_REGION__RESERVED_1,
+	ROGUE_RISCV_REGION_SOCIF,
+	ROGUE_RISCV_REGION__RESERVED_3,
+	ROGUE_RISCV_REGION__RESERVED_4,
+	ROGUE_RISCV_REGION_BOOTLDR_DATA,
+	ROGUE_RISCV_REGION_SHARED_CACHED_DATA,
+	ROGUE_RISCV_REGION__RESERVED_7,
+	ROGUE_RISCV_REGION_COREMEM,
+	ROGUE_RISCV_REGION__RESERVED_9,
+	ROGUE_RISCV_REGION__RESERVED_A,
+	ROGUE_RISCV_REGION__RESERVED_B,
+	ROGUE_RISCV_REGION_BOOTLDR_CODE,
+	ROGUE_RISCV_REGION_SHARED_UNCACHED_DATA,
+	ROGUE_RISCV_REGION__RESERVED_E,
+	ROGUE_RISCV_REGION__RESERVED_F,
+
+	ROGUE_RISCV_REGION__COUNT,
+};
+
+#define ROGUE_RISCVFW_REGION_BASE(r) ((u32)(ROGUE_RISCV_REGION_##r) << ROGUE_RISCVFW_REGION_SHIFT)
+#define ROGUE_RISCVFW_REGION_REMAP_CR(r) \
+	(ROGUE_CR_FWCORE_ADDR_REMAP_CONFIG0 + (u32)(ROGUE_RISCV_REGION_##r) * 8U)
+
+#endif /* PVR_ROGUE_RISCV_H */

-- 
2.47.0


