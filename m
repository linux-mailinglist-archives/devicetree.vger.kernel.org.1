Return-Path: <devicetree+bounces-121836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D3D9C8706
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 11:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 911491F21481
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 10:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC2471FA275;
	Thu, 14 Nov 2024 10:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="T9IIliPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02891F80A3;
	Thu, 14 Nov 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731578901; cv=none; b=op+Gjr/v7ocRWSZ30QJHTgTxCzAur6hfrXjf7dIQ15g/6fWGYIi67kCVHPTuIon1gELtUXIclAsuCASUck72gAVBsiD10UX9loTfE/+dLwJDkpY0/7nKw2KANGgT67d/wd5+0fm3eXPoK8kaABod+9JDMkFbFAs0yvoSBsU8GJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731578901; c=relaxed/simple;
	bh=CnYKCnjh+OshG3c4GDnK1NxoRbxyHtQ1oIVD7bFvZ7s=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lLZyWM/0T9brC00UNMKIR5hSy31rZ+SmJyLVfnlPTAMQf9MUc9h8fhIxdzcpvsA82U3+NYpq3nKkKn1CxXYup7hyAYSAn5cIj61QZqNui+QJ9WpFRfu6Tp4KSDwu68T8sYjyFAjIPOdHbvjtnQzxbmH1EeXNQgfice2wfjyUXeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=T9IIliPh; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 573aacb8a27011ef99858b75a2457dd9-20241114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=N/RXaBfRcnx99pYbTmZfmdkFcNtrHaodlykF5WFiOH4=;
	b=T9IIliPh2fb83sizhEj8W5+z5CwMGuYkPbCFFx//+JZDVc/KlCAFKp79WVHaT5HlL2bj411i9SPFIednPzirU6WzKScpvji//HjxtRFUd+3CkDHeSWbR5BZqCTWJsAdFkkgfp9TBWga4Ds4BYBYv3INqjmGhdJEBAItAExAc8rI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.42,REQID:ba593133-b891-4012-ae14-f03a6b03b8cc,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:b0fcdc3,CLOUDID:df5e0c4f-a2ae-4b53-acd4-c3dc8f449198,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0,EDM:-3,IP
	:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 573aacb8a27011ef99858b75a2457dd9-20241114
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <liju-clr.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1862349412; Thu, 14 Nov 2024 18:08:05 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 14 Nov 2024 18:08:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 14 Nov 2024 18:08:04 +0800
From: Liju-clr Chen <liju-clr.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	"Catalin Marinas" <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
	"Steven Rostedt" <rostedt@goodmis.org>, Masami Hiramatsu
	<mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Richard Cochran <richardcochran@gmail.com>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Liju-clr Chen
	<Liju-clr.Chen@mediatek.com>, Yingshiuan Pan <Yingshiuan.Pan@mediatek.com>,
	Ze-yu Wang <Ze-yu.Wang@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-doc@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-trace-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
	<linux-mediatek@lists.infradead.org>, Shawn Hsiao <shawn.hsiao@mediatek.com>,
	PeiLun Suei <PeiLun.Suei@mediatek.com>, Chi-shen Yeh
	<Chi-shen.Yeh@mediatek.com>, Kevenny Hsieh <Kevenny.Hsieh@mediatek.com>
Subject: [PATCH v13 08/25] virt: geniezone: Add vcpu support
Date: Thu, 14 Nov 2024 18:07:45 +0800
Message-ID: <20241114100802.4116-9-liju-clr.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20241114100802.4116-1-liju-clr.chen@mediatek.com>
References: <20241114100802.4116-1-liju-clr.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--20.544700-8.000000
X-TMASE-MatchedRID: ECSH4q3mZHU0+65nJzb9bEraSPuPii4AtjHGWON8yeMKOjjtK9XSTadT
	v3G1Y/zd4Qs7pgHb9b2tsViygrLz2s3AmdtMjGJV7spMO3HwKCBMkOX0UoduuQ6QlBHhBZuwPJ0
	5UREtjOWcPcDHCp4L+uSWVqW5qzmOj1OThq6Zp6Dd+fuf9kcapkDwlkRNC6PCYmQk5BUIinA6HX
	BOl2Wm2Qj52DJiGF5HqzwZPjuphJ40tXz7JRHgp6OuVibdZNTv+eBf9ovw8I3xSV7YBeBhS7cei
	5v4WhA88AJGS7I64l28Q8AeJlNjCOwy2NhRsPyb/IBH0OAL+EcpWss5kPUFdOyoRjfYVC+cEoN4
	n3g9RrZM95mRqkWcfzu61Cx4kIX1xlkBw4mGj0DN+qWlu2ZxaPx3eAlFiEvxYdn5x3tXIpf7gOY
	YNr2s3BOpooSKio6+7AcVBQeYHVk9P00/csRFqOLz1o40byIqv8jdqvFOu+LujTNvTG+bSQIV69
	fUswQ/9thk9nbRgmWaYxhidxNqtytBqm1xUHqFJXKk/roE/RBdxx6WRf+5sIKwF4K/wIz9uOiT3
	BKFjXv1J65TSXiI79o4ZZRegcAcLiQq6BGiCDiXXOyNnX/prDlIA4KS6pW3uBsk5njfgGxy7uXb
	FJiueN3wr7DvX5irNQnzreyncQbXvsE3MPuDQmivjLE8DPtZaN2KuTwsCwIZBfmlz1qR+1tqLKp
	XLjMw4vM1YF6AJbbCCfuIMF6xLcK21zBg2KlfAqYBE3k9Mpw=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--20.544700-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: A3A018006A9C37D847C2BD1ED5D7913AD45D46DCB55957CF0B3CEDD47585AA3D2000:8
X-MTK: N

From: Yingshiuan Pan <yingshiuan.pan@mediatek.com>

VMM use this interface to create vcpu instance which is a fd, and this
fd will be for any vcpu operations, such as setting vcpu registers and
accepts the most important ioctl GZVM_VCPU_RUN which requests GenieZone
hypervisor to do context switch to execute VM's vcpu context.

Signed-off-by: Yingshiuan Pan <yingshiuan.pan@mediatek.com>
Co-developed-by: Jerry Wang <ze-yu.wang@mediatek.com>
Signed-off-by: Jerry Wang <ze-yu.wang@mediatek.com>
Co-developed-by: Kevenny Hsieh <kevenny.hsieh@mediatek.com>
Signed-off-by: Kevenny Hsieh <kevenny.hsieh@mediatek.com>
Signed-off-by: Yi-De Wu <yi-de.wu@mediatek.com>
Signed-off-by: Liju Chen <liju-clr.chen@mediatek.com>
---
 arch/arm64/geniezone/Makefile           |   2 +-
 arch/arm64/geniezone/gzvm_arch_common.h |  18 ++
 arch/arm64/geniezone/vcpu.c             |  80 ++++++++
 arch/arm64/geniezone/vm.c               |  12 ++
 drivers/virt/geniezone/Makefile         |   3 +-
 drivers/virt/geniezone/gzvm_vcpu.c      | 248 ++++++++++++++++++++++++
 drivers/virt/geniezone/gzvm_vm.c        |   5 +
 include/linux/soc/mediatek/gzvm_drv.h   |  24 +++
 include/uapi/linux/gzvm.h               | 163 ++++++++++++++++
 9 files changed, 553 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/geniezone/vcpu.c
 create mode 100644 drivers/virt/geniezone/gzvm_vcpu.c

diff --git a/arch/arm64/geniezone/Makefile b/arch/arm64/geniezone/Makefile
index 2957898cdd05..69b0a4abeab0 100644
--- a/arch/arm64/geniezone/Makefile
+++ b/arch/arm64/geniezone/Makefile
@@ -4,6 +4,6 @@
 #
 include $(srctree)/drivers/virt/geniezone/Makefile
 
-gzvm-y += vm.o
+gzvm-y += vm.o vcpu.o
 
 obj-$(CONFIG_MTK_GZVM) += gzvm.o
diff --git a/arch/arm64/geniezone/gzvm_arch_common.h b/arch/arm64/geniezone/gzvm_arch_common.h
index e500dbe7f943..3ec7bea5651f 100644
--- a/arch/arm64/geniezone/gzvm_arch_common.h
+++ b/arch/arm64/geniezone/gzvm_arch_common.h
@@ -11,9 +11,15 @@
 enum {
 	GZVM_FUNC_CREATE_VM = 0,
 	GZVM_FUNC_DESTROY_VM = 1,
+	GZVM_FUNC_CREATE_VCPU = 2,
+	GZVM_FUNC_DESTROY_VCPU = 3,
 	GZVM_FUNC_SET_MEMREGION = 4,
+	GZVM_FUNC_RUN = 5,
+	GZVM_FUNC_GET_ONE_REG = 8,
+	GZVM_FUNC_SET_ONE_REG = 9,
 	GZVM_FUNC_PROBE = 12,
 	GZVM_FUNC_ENABLE_CAP = 13,
+	GZVM_FUNC_INFORM_EXIT = 14,
 	NR_GZVM_FUNC,
 };
 
@@ -25,9 +31,15 @@ enum {
 
 #define MT_HVC_GZVM_CREATE_VM		GZVM_HCALL_ID(GZVM_FUNC_CREATE_VM)
 #define MT_HVC_GZVM_DESTROY_VM		GZVM_HCALL_ID(GZVM_FUNC_DESTROY_VM)
+#define MT_HVC_GZVM_CREATE_VCPU		GZVM_HCALL_ID(GZVM_FUNC_CREATE_VCPU)
+#define MT_HVC_GZVM_DESTROY_VCPU	GZVM_HCALL_ID(GZVM_FUNC_DESTROY_VCPU)
 #define MT_HVC_GZVM_SET_MEMREGION	GZVM_HCALL_ID(GZVM_FUNC_SET_MEMREGION)
+#define MT_HVC_GZVM_RUN			GZVM_HCALL_ID(GZVM_FUNC_RUN)
+#define MT_HVC_GZVM_GET_ONE_REG		GZVM_HCALL_ID(GZVM_FUNC_GET_ONE_REG)
+#define MT_HVC_GZVM_SET_ONE_REG		GZVM_HCALL_ID(GZVM_FUNC_SET_ONE_REG)
 #define MT_HVC_GZVM_PROBE		GZVM_HCALL_ID(GZVM_FUNC_PROBE)
 #define MT_HVC_GZVM_ENABLE_CAP		GZVM_HCALL_ID(GZVM_FUNC_ENABLE_CAP)
+#define MT_HVC_GZVM_INFORM_EXIT		GZVM_HCALL_ID(GZVM_FUNC_INFORM_EXIT)
 
 /**
  * gzvm_hypcall_wrapper() - the wrapper for hvc calls
@@ -49,4 +61,10 @@ int gzvm_hypcall_wrapper(unsigned long a0, unsigned long a1,
 			 unsigned long a6, unsigned long a7,
 			 struct arm_smccc_res *res);
 
+static inline unsigned int
+assemble_vm_vcpu_tuple(u16 vmid, u16 vcpuid)
+{
+	return ((unsigned int)vmid << 16 | vcpuid);
+}
+
 #endif /* __GZVM_ARCH_COMMON_H__ */
diff --git a/arch/arm64/geniezone/vcpu.c b/arch/arm64/geniezone/vcpu.c
new file mode 100644
index 000000000000..e12ea9cb4941
--- /dev/null
+++ b/arch/arm64/geniezone/vcpu.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/err.h>
+#include <linux/uaccess.h>
+
+#include <linux/gzvm.h>
+#include <linux/soc/mediatek/gzvm_drv.h>
+#include "gzvm_arch_common.h"
+
+int gzvm_arch_vcpu_update_one_reg(struct gzvm_vcpu *vcpu, __u64 reg_id,
+				  bool is_write, __u64 *data)
+{
+	struct arm_smccc_res res;
+	unsigned long a1;
+	int ret;
+
+	a1 = assemble_vm_vcpu_tuple(vcpu->gzvm->vm_id, vcpu->vcpuid);
+	if (!is_write) {
+		ret = gzvm_hypcall_wrapper(MT_HVC_GZVM_GET_ONE_REG,
+					   a1, reg_id, 0, 0, 0, 0, 0, &res);
+		if (ret == 0)
+			*data = res.a1;
+	} else {
+		ret = gzvm_hypcall_wrapper(MT_HVC_GZVM_SET_ONE_REG,
+					   a1, reg_id, *data, 0, 0, 0, 0, &res);
+	}
+
+	return ret;
+}
+
+int gzvm_arch_vcpu_run(struct gzvm_vcpu *vcpu, __u64 *exit_reason)
+{
+	struct arm_smccc_res res;
+	unsigned long a1;
+	int ret;
+
+	a1 = assemble_vm_vcpu_tuple(vcpu->gzvm->vm_id, vcpu->vcpuid);
+	ret = gzvm_hypcall_wrapper(MT_HVC_GZVM_RUN, a1, 0, 0, 0, 0, 0,
+				   0, &res);
+	*exit_reason = res.a1;
+	return ret;
+}
+
+int gzvm_arch_destroy_vcpu(u16 vm_id, int vcpuid)
+{
+	struct arm_smccc_res res;
+	unsigned long a1;
+
+	a1 = assemble_vm_vcpu_tuple(vm_id, vcpuid);
+	gzvm_hypcall_wrapper(MT_HVC_GZVM_DESTROY_VCPU, a1, 0, 0, 0, 0, 0, 0,
+			     &res);
+
+	return 0;
+}
+
+/**
+ * gzvm_arch_create_vcpu() - Call smc to gz hypervisor to create vcpu
+ * @vm_id: vm id
+ * @vcpuid: vcpu id
+ * @run: Virtual address of vcpu->run
+ *
+ * Return: The wrapper helps caller to convert geniezone errno to Linux errno.
+ */
+int gzvm_arch_create_vcpu(u16 vm_id, int vcpuid, void *run)
+{
+	struct arm_smccc_res res;
+	unsigned long a1, a2;
+	int ret;
+
+	a1 = assemble_vm_vcpu_tuple(vm_id, vcpuid);
+	a2 = (__u64)virt_to_phys(run);
+	ret = gzvm_hypcall_wrapper(MT_HVC_GZVM_CREATE_VCPU, a1, a2, 0, 0, 0, 0,
+				   0, &res);
+
+	return ret;
+}
diff --git a/arch/arm64/geniezone/vm.c b/arch/arm64/geniezone/vm.c
index 75748c9ce3be..743951aa8ec3 100644
--- a/arch/arm64/geniezone/vm.c
+++ b/arch/arm64/geniezone/vm.c
@@ -51,6 +51,18 @@ int gzvm_hypcall_wrapper(unsigned long a0, unsigned long a1,
 	return gzvm_err_to_errno(res->a0);
 }
 
+int gzvm_arch_inform_exit(u16 vm_id)
+{
+	struct arm_smccc_res res;
+	int ret;
+
+	ret = gzvm_hypcall_wrapper(MT_HVC_GZVM_INFORM_EXIT, vm_id, 0, 0, 0, 0, 0, 0, &res);
+	if (ret)
+		return -ENXIO;
+
+	return 0;
+}
+
 int gzvm_arch_probe(struct gzvm_version drv_version,
 		    struct gzvm_version *hyp_version)
 {
diff --git a/drivers/virt/geniezone/Makefile b/drivers/virt/geniezone/Makefile
index 25614ea3dea2..9cc453c0819b 100644
--- a/drivers/virt/geniezone/Makefile
+++ b/drivers/virt/geniezone/Makefile
@@ -6,4 +6,5 @@
 
 GZVM_DIR ?= ../../../drivers/virt/geniezone
 
-gzvm-y := $(GZVM_DIR)/gzvm_main.o $(GZVM_DIR)/gzvm_vm.o
+gzvm-y := $(GZVM_DIR)/gzvm_main.o $(GZVM_DIR)/gzvm_vm.o \
+	  $(GZVM_DIR)/gzvm_vcpu.o
diff --git a/drivers/virt/geniezone/gzvm_vcpu.c b/drivers/virt/geniezone/gzvm_vcpu.c
new file mode 100644
index 000000000000..c8a4e0f2f027
--- /dev/null
+++ b/drivers/virt/geniezone/gzvm_vcpu.c
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 MediaTek Inc.
+ */
+
+#include <linux/anon_inodes.h>
+#include <linux/device.h>
+#include <linux/file.h>
+#include <linux/mm.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/soc/mediatek/gzvm_drv.h>
+
+/* maximum size needed for holding an integer */
+#define ITOA_MAX_LEN 12
+
+static long gzvm_vcpu_update_one_reg(struct gzvm_vcpu *vcpu,
+				     void __user *argp,
+				     bool is_write)
+{
+	struct gzvm_one_reg reg;
+	void __user *reg_addr;
+	u64 data = 0;
+	u64 reg_size;
+	long ret;
+
+	if (copy_from_user(&reg, argp, sizeof(reg)))
+		return -EFAULT;
+
+	reg_addr = u64_to_user_ptr(reg.addr);
+	reg_size = (reg.id & GZVM_REG_SIZE_MASK) >> GZVM_REG_SIZE_SHIFT;
+	reg_size = BIT(reg_size);
+
+	if (reg_size != 1 && reg_size != 2 && reg_size != 4 && reg_size != 8)
+		return -EINVAL;
+
+	if (is_write) {
+		/* GZ hypervisor would filter out invalid vcpu register access */
+		if (copy_from_user(&data, reg_addr, reg_size))
+			return -EFAULT;
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	ret = gzvm_arch_vcpu_update_one_reg(vcpu, reg.id, is_write, &data);
+
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/**
+ * gzvm_vcpu_run() - Handle vcpu run ioctl, entry point to guest and exit
+ *		     point from guest
+ * @vcpu: Pointer to struct gzvm_vcpu
+ * @argp: Pointer to struct gzvm_vcpu_run in userspace
+ *
+ * Return:
+ * * 0			- Success.
+ * * Negative		- Failure.
+ */
+static long gzvm_vcpu_run(struct gzvm_vcpu *vcpu, void __user *argp)
+{
+	bool need_userspace = false;
+	u64 exit_reason = 0;
+
+	if (copy_from_user(vcpu->run, argp, sizeof(struct gzvm_vcpu_run)))
+		return -EFAULT;
+
+	for (int i = 0; i < ARRAY_SIZE(vcpu->run->padding1); i++) {
+		if (vcpu->run->padding1[i])
+			return -EINVAL;
+	}
+
+	if (vcpu->run->immediate_exit == 1)
+		return -EINTR;
+
+	while (!need_userspace && !signal_pending(current)) {
+		gzvm_arch_vcpu_run(vcpu, &exit_reason);
+
+		switch (exit_reason) {
+		case GZVM_EXIT_MMIO:
+			need_userspace = true;
+			break;
+		/**
+		 * it's geniezone's responsibility to fill corresponding data
+		 * structure
+		 */
+		case GZVM_EXIT_HYPERCALL:
+			fallthrough;
+		case GZVM_EXIT_EXCEPTION:
+			fallthrough;
+		case GZVM_EXIT_DEBUG:
+			fallthrough;
+		case GZVM_EXIT_FAIL_ENTRY:
+			fallthrough;
+		case GZVM_EXIT_INTERNAL_ERROR:
+			fallthrough;
+		case GZVM_EXIT_SYSTEM_EVENT:
+			fallthrough;
+		case GZVM_EXIT_SHUTDOWN:
+			need_userspace = true;
+			break;
+		case GZVM_EXIT_IRQ:
+			fallthrough;
+		case GZVM_EXIT_GZ:
+			break;
+		case GZVM_EXIT_UNKNOWN:
+			fallthrough;
+		default:
+			pr_err("vcpu unknown exit\n");
+			need_userspace = true;
+		}
+	}
+
+	if (copy_to_user(argp, vcpu->run, sizeof(struct gzvm_vcpu_run)))
+		return -EFAULT;
+	if (signal_pending(current)) {
+		// invoke hvc to inform gz to map memory
+		gzvm_arch_inform_exit(vcpu->gzvm->vm_id);
+		return -ERESTARTSYS;
+	}
+	return 0;
+}
+
+static long gzvm_vcpu_ioctl(struct file *filp, unsigned int ioctl,
+			    unsigned long arg)
+{
+	int ret = -ENOTTY;
+	void __user *argp = (void __user *)arg;
+	struct gzvm_vcpu *vcpu = filp->private_data;
+
+	switch (ioctl) {
+	case GZVM_RUN:
+		ret = gzvm_vcpu_run(vcpu, argp);
+		break;
+	case GZVM_GET_ONE_REG:
+		/* !is_write */
+		ret = -EOPNOTSUPP;
+		break;
+	case GZVM_SET_ONE_REG:
+		/* is_write */
+		ret = gzvm_vcpu_update_one_reg(vcpu, argp, true);
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+static const struct file_operations gzvm_vcpu_fops = {
+	.unlocked_ioctl = gzvm_vcpu_ioctl,
+	.llseek		= noop_llseek,
+};
+
+/* caller must hold the vm lock */
+static void gzvm_destroy_vcpu(struct gzvm_vcpu *vcpu)
+{
+	if (!vcpu)
+		return;
+
+	gzvm_arch_destroy_vcpu(vcpu->gzvm->vm_id, vcpu->vcpuid);
+	/* clean guest's data */
+	memset(vcpu->run, 0, GZVM_VCPU_RUN_MAP_SIZE);
+	free_pages_exact(vcpu->run, GZVM_VCPU_RUN_MAP_SIZE);
+	kfree(vcpu);
+}
+
+/**
+ * gzvm_destroy_vcpus() - Destroy all vcpus, caller has to hold the vm lock
+ *
+ * @gzvm: vm struct that owns the vcpus
+ */
+void gzvm_destroy_vcpus(struct gzvm *gzvm)
+{
+	int i;
+
+	for (i = 0; i < GZVM_MAX_VCPUS; i++) {
+		gzvm_destroy_vcpu(gzvm->vcpus[i]);
+		gzvm->vcpus[i] = NULL;
+	}
+}
+
+/* create_vcpu_fd() - Allocates an inode for the vcpu. */
+static int create_vcpu_fd(struct gzvm_vcpu *vcpu)
+{
+	/* sizeof("gzvm-vcpu:") + max(strlen(itoa(vcpuid))) + null */
+	char name[10 + ITOA_MAX_LEN + 1];
+
+	snprintf(name, sizeof(name), "gzvm-vcpu:%d", vcpu->vcpuid);
+	return anon_inode_getfd(name, &gzvm_vcpu_fops, vcpu, O_RDWR | O_CLOEXEC);
+}
+
+/**
+ * gzvm_vm_ioctl_create_vcpu() - for GZVM_CREATE_VCPU
+ * @gzvm: Pointer to struct gzvm
+ * @cpuid: equals arg
+ *
+ * Return: Fd of vcpu, negative errno if error occurs
+ */
+int gzvm_vm_ioctl_create_vcpu(struct gzvm *gzvm, u32 cpuid)
+{
+	struct gzvm_vcpu *vcpu;
+	int ret;
+
+	if (cpuid >= GZVM_MAX_VCPUS)
+		return -EINVAL;
+
+	vcpu = kzalloc(sizeof(*vcpu), GFP_KERNEL);
+	if (!vcpu)
+		return -ENOMEM;
+
+	/**
+	 * Allocate 2 pages for data sharing between driver and gz hypervisor
+	 *
+	 * |- page 0           -|- page 1      -|
+	 * |gzvm_vcpu_run|......|hwstate|.......|
+	 *
+	 */
+	vcpu->run = alloc_pages_exact(GZVM_VCPU_RUN_MAP_SIZE,
+				      GFP_KERNEL_ACCOUNT | __GFP_ZERO);
+	if (!vcpu->run) {
+		ret = -ENOMEM;
+		goto free_vcpu;
+	}
+	vcpu->vcpuid = cpuid;
+	vcpu->gzvm = gzvm;
+	mutex_init(&vcpu->lock);
+
+	ret = gzvm_arch_create_vcpu(gzvm->vm_id, vcpu->vcpuid, vcpu->run);
+	if (ret < 0)
+		goto free_vcpu_run;
+
+	ret = create_vcpu_fd(vcpu);
+	if (ret < 0)
+		goto free_vcpu_run;
+	gzvm->vcpus[cpuid] = vcpu;
+
+	return ret;
+
+free_vcpu_run:
+	free_pages_exact(vcpu->run, GZVM_VCPU_RUN_MAP_SIZE);
+free_vcpu:
+	kfree(vcpu);
+	return ret;
+}
diff --git a/drivers/virt/geniezone/gzvm_vm.c b/drivers/virt/geniezone/gzvm_vm.c
index 2f6d416f5518..f6b069dc53fc 100644
--- a/drivers/virt/geniezone/gzvm_vm.c
+++ b/drivers/virt/geniezone/gzvm_vm.c
@@ -150,6 +150,10 @@ static long gzvm_vm_ioctl(struct file *filp, unsigned int ioctl,
 		ret = gzvm_dev_ioctl_check_extension(gzvm, arg);
 		break;
 	}
+	case GZVM_CREATE_VCPU: {
+		ret = gzvm_vm_ioctl_create_vcpu(gzvm, arg);
+		break;
+	}
 	case GZVM_SET_USER_MEMORY_REGION: {
 		struct gzvm_userspace_memory_region userspace_mem;
 
@@ -182,6 +186,7 @@ static void gzvm_destroy_vm(struct gzvm *gzvm)
 
 	mutex_lock(&gzvm->lock);
 
+	gzvm_destroy_vcpus(gzvm);
 	gzvm_arch_destroy_vm(gzvm->vm_id);
 
 	mutex_lock(&gzvm_list_lock);
diff --git a/include/linux/soc/mediatek/gzvm_drv.h b/include/linux/soc/mediatek/gzvm_drv.h
index f8503c52708a..ef02df39192d 100644
--- a/include/linux/soc/mediatek/gzvm_drv.h
+++ b/include/linux/soc/mediatek/gzvm_drv.h
@@ -32,6 +32,7 @@ struct gzvm_driver {
  */
 #define GZVM_PA_ERR_BAD (0x7ffULL << 52)
 
+#define GZVM_VCPU_MMAP_SIZE  PAGE_SIZE
 #define INVALID_VM_ID   0xffff
 
 /*
@@ -49,8 +50,11 @@ struct gzvm_driver {
  * The following data structures are for data transferring between driver and
  * hypervisor, and they're aligned with hypervisor definitions
  */
+#define GZVM_MAX_VCPUS		 8
 #define GZVM_MAX_MEM_REGION	10
 
+#define GZVM_VCPU_RUN_MAP_SIZE		(PAGE_SIZE * 2)
+
 /**
  * struct mem_region_addr_range: identical to ffa memory constituent
  * @address: the base IPA of the constituent memory region, aligned to 4 kiB
@@ -96,10 +100,19 @@ struct gzvm_memslot {
 	u32 slot_id;
 };
 
+struct gzvm_vcpu {
+	struct gzvm *gzvm;
+	int vcpuid;
+	/* lock of vcpu*/
+	struct mutex lock;
+	struct gzvm_vcpu_run *run;
+};
+
 /**
  * struct gzvm: the following data structures are for data transferring between
  * driver and hypervisor, and they're aligned with hypervisor definitions.
  * @gzvm_drv: the data structure is used to keep driver's information
+ * @vcpus: VM's cpu descriptors
  * @mm: userspace tied to this vm
  * @memslot: VM's memory slot descriptor
  * @lock: lock for list_add
@@ -108,6 +121,7 @@ struct gzvm_memslot {
  */
 struct gzvm {
 	struct gzvm_driver *gzvm_drv;
+	struct gzvm_vcpu *vcpus[GZVM_MAX_VCPUS];
 	struct mm_struct *mm;
 	struct gzvm_memslot memslot[GZVM_MAX_MEM_REGION];
 	struct mutex lock;
@@ -122,6 +136,8 @@ int gzvm_err_to_errno(unsigned long err);
 
 void gzvm_destroy_all_vms(void);
 
+void gzvm_destroy_vcpus(struct gzvm *gzvm);
+
 /* arch-dependant functions */
 int gzvm_arch_probe(struct gzvm_version drv_version,
 		    struct gzvm_version *hyp_version);
@@ -137,4 +153,12 @@ int gzvm_vm_ioctl_arch_enable_cap(struct gzvm *gzvm,
 int gzvm_gfn_to_hva_memslot(struct gzvm_memslot *memslot, u64 gfn,
 			    u64 *hva_memslot);
 
+int gzvm_vm_ioctl_create_vcpu(struct gzvm *gzvm, u32 cpuid);
+int gzvm_arch_vcpu_update_one_reg(struct gzvm_vcpu *vcpu, __u64 reg_id,
+				  bool is_write, __u64 *data);
+int gzvm_arch_create_vcpu(u16 vm_id, int vcpuid, void *run);
+int gzvm_arch_vcpu_run(struct gzvm_vcpu *vcpu, __u64 *exit_reason);
+int gzvm_arch_destroy_vcpu(u16 vm_id, int vcpuid);
+int gzvm_arch_inform_exit(u16 vm_id);
+
 #endif /* __GZVM_DRV_H__ */
diff --git a/include/uapi/linux/gzvm.h b/include/uapi/linux/gzvm.h
index a79e787c9181..1146467487ca 100644
--- a/include/uapi/linux/gzvm.h
+++ b/include/uapi/linux/gzvm.h
@@ -25,6 +25,30 @@
 /* GZVM_CAP_PVM_SET_PROTECTED_VM only sets protected but not load pvmfw */
 #define GZVM_CAP_PVM_SET_PROTECTED_VM		2
 
+/*
+ * Architecture specific registers are to be defined and ORed with
+ * the arch identifier.
+ */
+#define GZVM_REG_ARCH_ARM64	FIELD_PREP(GENMASK_ULL(63, 56), 0x60)
+#define GZVM_REG_ARCH_MASK	FIELD_PREP(GENMASK_ULL(63, 56), 0xff)
+/*
+ * Reg size = BIT((reg.id & GZVM_REG_SIZE_MASK) >> GZVM_REG_SIZE_SHIFT) bytes
+ */
+#define GZVM_REG_SIZE_SHIFT	52
+#define GZVM_REG_SIZE_MASK	FIELD_PREP(GENMASK_ULL(63, 48), 0x00f0)
+
+#define GZVM_REG_SIZE_U8	FIELD_PREP(GENMASK_ULL(63, 48), 0x0000)
+#define GZVM_REG_SIZE_U16	FIELD_PREP(GENMASK_ULL(63, 48), 0x0010)
+#define GZVM_REG_SIZE_U32	FIELD_PREP(GENMASK_ULL(63, 48), 0x0020)
+#define GZVM_REG_SIZE_U64	FIELD_PREP(GENMASK_ULL(63, 48), 0x0030)
+#define GZVM_REG_SIZE_U128	FIELD_PREP(GENMASK_ULL(63, 48), 0x0040)
+#define GZVM_REG_SIZE_U256	FIELD_PREP(GENMASK_ULL(63, 48), 0x0050)
+#define GZVM_REG_SIZE_U512	FIELD_PREP(GENMASK_ULL(63, 48), 0x0060)
+#define GZVM_REG_SIZE_U1024	FIELD_PREP(GENMASK_ULL(63, 48), 0x0070)
+#define GZVM_REG_SIZE_U2048	FIELD_PREP(GENMASK_ULL(63, 48), 0x0080)
+
+#define GZVM_REG_TYPE_GENERAL2	FIELD_PREP(GENMASK(23, 16), 0x10)
+
 /* GZVM ioctls */
 #define GZVM_IOC_MAGIC			0x92	/* gz */
 
@@ -51,6 +75,11 @@ struct gzvm_memory_region {
 
 #define GZVM_SET_MEMORY_REGION     _IOW(GZVM_IOC_MAGIC,  0x40, \
 					struct gzvm_memory_region)
+/*
+ * GZVM_CREATE_VCPU receives as a parameter the vcpu slot,
+ * and returns a vcpu fd.
+ */
+#define GZVM_CREATE_VCPU           _IO(GZVM_IOC_MAGIC,   0x41)
 
 /**
  * struct gzvm_userspace_memory_region: gzvm userspace memory region descriptor
@@ -71,6 +100,127 @@ struct gzvm_userspace_memory_region {
 #define GZVM_SET_USER_MEMORY_REGION _IOW(GZVM_IOC_MAGIC, 0x46, \
 					 struct gzvm_userspace_memory_region)
 
+/*
+ * ioctls for vcpu fds
+ */
+#define GZVM_RUN                   _IO(GZVM_IOC_MAGIC,   0x80)
+
+/* VM exit reason */
+enum {
+	GZVM_EXIT_UNKNOWN = 0x92920000,
+	GZVM_EXIT_MMIO = 0x92920001,
+	GZVM_EXIT_HYPERCALL = 0x92920002,
+	GZVM_EXIT_IRQ = 0x92920003,
+	GZVM_EXIT_EXCEPTION = 0x92920004,
+	GZVM_EXIT_DEBUG = 0x92920005,
+	GZVM_EXIT_FAIL_ENTRY = 0x92920006,
+	GZVM_EXIT_INTERNAL_ERROR = 0x92920007,
+	GZVM_EXIT_SYSTEM_EVENT = 0x92920008,
+	GZVM_EXIT_SHUTDOWN = 0x92920009,
+	GZVM_EXIT_GZ = 0x9292000a,
+};
+
+/**
+ * struct gzvm_vcpu_run: Same purpose as kvm_run, this struct is
+ *			 shared between userspace, kernel and
+ *			 GenieZone hypervisor
+ * @exit_reason: The reason why gzvm_vcpu_run has stopped running the vCPU
+ * @immediate_exit: Polled when the vcpu is scheduled.
+ *                  If set, immediately returns -EINTR
+ * @padding1: Reserved for future-proof and must be zero filled
+ * @mmio: The nested struct in anonymous union. Handle mmio in host side
+ * @fail_entry: The nested struct in anonymous union.
+ *              Handle invalid entry address at the first run
+ * @exception: The nested struct in anonymous union.
+ *             Handle exception occurred in VM
+ * @hypercall: The nested struct in anonymous union.
+ *             Some hypercalls issued from VM must be handled
+ * @internal: The nested struct in anonymous union. The errors from hypervisor
+ * @system_event: The nested struct in anonymous union.
+ *                VM's PSCI must be handled by host
+ * @padding: Fix it to a reasonable size future-proof for keeping the same
+ *           struct size when adding new variables in the union is needed
+ *
+ * Keep identical layout between the 3 modules
+ */
+struct gzvm_vcpu_run {
+	/* to userspace */
+	__u32 exit_reason;
+	__u8 immediate_exit;
+	__u8 padding1[3];
+	/* union structure of collection of guest exit reason */
+	union {
+		/* GZVM_EXIT_MMIO */
+		struct {
+			/* From FAR_EL2 */
+			/* The address guest tries to access */
+			__u64 phys_addr;
+			/* The value to be written (is_write is 1) or
+			 * be filled by user for reads (is_write is 0)
+			 */
+			__u8 data[8];
+			/* From ESR_EL2 as */
+			/* The size of written data.
+			 * Only the first `size` bytes of `data` are handled
+			 */
+			__u64 size;
+			/* From ESR_EL2 */
+			/* The register number where the data is stored */
+			__u32 reg_nr;
+			/* From ESR_EL2 */
+			/* 1 for VM to perform a write or 0 for VM to perform a read */
+			__u8 is_write;
+		} mmio;
+		/* GZVM_EXIT_FAIL_ENTRY */
+		struct {
+			/* The reason codes about hardware entry failure */
+			__u64 hardware_entry_failure_reason;
+			/* The current processor number via smp_processor_id() */
+			__u32 cpu;
+		} fail_entry;
+		/* GZVM_EXIT_EXCEPTION */
+		struct {
+			/* Which exception vector */
+			__u32 exception;
+			/* Exception error codes */
+			__u32 error_code;
+		} exception;
+		/* GZVM_EXIT_HYPERCALL */
+		struct {
+			/* The hypercall's arguments */
+			__u64 args[8];	/* in-out */
+		} hypercall;
+		/* GZVM_EXIT_INTERNAL_ERROR */
+		struct {
+			/* The errors codes about GZVM_EXIT_INTERNAL_ERROR */
+			__u32 suberror;
+			/* The number of elements used in data[] */
+			__u32 ndata;
+			/* Keep the detailed information about GZVM_EXIT_SYSTEM_EVENT */
+			__u64 data[16];
+		} internal;
+		/* GZVM_EXIT_SYSTEM_EVENT */
+		struct {
+#define GZVM_SYSTEM_EVENT_SHUTDOWN       1
+#define GZVM_SYSTEM_EVENT_RESET          2
+#define GZVM_SYSTEM_EVENT_CRASH          3
+#define GZVM_SYSTEM_EVENT_WAKEUP         4
+#define GZVM_SYSTEM_EVENT_SUSPEND        5
+#define GZVM_SYSTEM_EVENT_SEV_TERM       6
+#define GZVM_SYSTEM_EVENT_S2IDLE         7
+			/* System event type.
+			 * Ex. GZVM_SYSTEM_EVENT_SHUTDOWN or GZVM_SYSTEM_EVENT_RESET...etc.
+			 */
+			__u32 type;
+			/* The number of elements used in data[] */
+			__u32 ndata;
+			/* Keep the detailed information about GZVM_EXIT_SYSTEM_EVENT */
+			__u64 data[16];
+		} system_event;
+		char padding[256];
+	};
+};
+
 /**
  * struct gzvm_enable_cap: The `capability support` on GenieZone hypervisor
  * @cap: `GZVM_CAP_ARM_PROTECTED_VM` or `GZVM_CAP_ARM_VM_IPA_SIZE`
@@ -84,4 +234,17 @@ struct gzvm_enable_cap {
 #define GZVM_ENABLE_CAP            _IOW(GZVM_IOC_MAGIC,  0xa3, \
 					struct gzvm_enable_cap)
 
+/* for GZVM_GET/SET_ONE_REG */
+struct gzvm_one_reg {
+	__u64 id;
+	__u64 addr;
+};
+
+#define GZVM_GET_ONE_REG	   _IOW(GZVM_IOC_MAGIC,  0xab, \
+					struct gzvm_one_reg)
+#define GZVM_SET_ONE_REG	   _IOW(GZVM_IOC_MAGIC,  0xac, \
+					struct gzvm_one_reg)
+
+#define GZVM_REG_GENERIC	   0x0000000000000000ULL
+
 #endif /* __GZVM_H__ */
-- 
2.18.0


