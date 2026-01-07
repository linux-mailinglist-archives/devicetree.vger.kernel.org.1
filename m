Return-Path: <devicetree+bounces-252444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B78CFF33C
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 440A033837C0
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85643803C6;
	Wed,  7 Jan 2026 16:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="Bkl12b/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDBA37D1B0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803387; cv=none; b=dKbRrEzMJMB7/dn1t3NzzejkmfGRhE+wFSfVCJxCxIRjImY63NNsmCY25sWxC53hVdNz6KmZQp+Ee2y3u7n0upuXRfDly7lUwKEdRav1WF9awzPA+v8uCPtMRx0HVpluu/7KWey/+3eSVg2rn6jBDlv7VBgvJ+aes8J5WCGGECI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803387; c=relaxed/simple;
	bh=zl1jwg2gKNm5qzsM288sPh+uUZsQUL35tLvVZtYaJ+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GR4iBEBkiI94PNDOZYSFAFhG3Rq/3+teDyJLR26+fNVoC6JGIHZGLO+bkCYIE6OVKjiyzBYiY4Ks09Kn0XKmDDE/dTmRghcI9IPxiHC5JUfvqg5Tvy3H3r61pGXEyxzVVfLMMApTw9GMlawQ/XYHO7Aa/cNrstbbmDEYRbK7iNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=Bkl12b/E; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-430f9ffd4e8so475213f8f.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1767803374; x=1768408174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8HPNqrSFVKujuMbBVT0dC7TbAVMvjtBKRilIfMHMtDk=;
        b=Bkl12b/EcSCIfi5dU7mMkDgYpTRypb1lunBebb5qUH37ZLlPsfzkuR+g+LzOkjakE/
         SeEWhjBvZR9gsrB1pvhgpyJQ5OfpwwUo2S3TqvWx6Toa0jdOfJiV1Lme24k8G9y2Qu7P
         qX/2q8EJt+OjKIq95nNiaH1Rbi84rAJ4VKf/X522Si7FNatCvf1sxPE8kgOav9W8c7sL
         yCeaDd2rKjXAqDoYGooKl+dBj0tweUVIzvCycIDqZyR00UtBMvCqayW5b9aYvXI7MX+S
         QTm185DOyJE3lgpE3GkczzshyC+IiiwCcboskYdMmDT9KpMdELYDyO8G7LYIHVk23I7U
         VR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803374; x=1768408174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8HPNqrSFVKujuMbBVT0dC7TbAVMvjtBKRilIfMHMtDk=;
        b=DRHzMVYctgPjTPiWUQVNYvRmj3to2cJ79kM3dQ7uf/HZsaIj6Ggc89fJ/HxtaTT2+j
         FW0XWvtfF+luoIkKxBUWk6z0Pp9xOpAfXAyq3V9F0h6c1F4Ie3o/ZZVHzq1z1iHyWoKJ
         BwLT7qqjZQVuEKkUpDerTtsXE8YWIxnbwHGMgS2x/wp6ozUynIpYP8yk3W40RuDkHGol
         jBt6DXDfVasdg/Q31ImO+kVDT7bejpoHI5arJa2PT1eZiOn1lQy/A5L1JZCinpt8Lxee
         KMhh/dztjeMjQTnhYtnGedg2GUomAOrSlsU+zVQbswT4hGWBAp8DCTklJRx/A3y9PUhI
         ZM1g==
X-Forwarded-Encrypted: i=1; AJvYcCVwQvb5SEnXH/UVlzcBDcJ1JmMdWRMLR82UZhVeaXK1UYHAZRuN9BBFjLxz/LlWblQ5QMWVR9wKR1qR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Cw7e+an1Y4B7rI3O3YKFIrkVaqgA1kFcnN6aZf0TsD2G25Yn
	rzSr8QRC8RgEIfzuXn2piHa8nMjAshK69FpOjxrIfR8uzFonOsDoKsKksOpSckfpdkMu
X-Gm-Gg: AY/fxX5Yp1V4z3Fb+0A2FvHLGJxYqBZWaXi7hvXafoWsD9ePkW2qp+B1zmLKtKGHrmK
	NPY97KzyDPXA5W4eQNmwlq7SPADzgCVsWkAcRZ+HBwZuKV344aulf7LD704kvqQrXeAuTP+PgkT
	XcXYy/QBFJj24X8JjxlR5yjMH1Amy2MCreT47kwR6HErOhKxNk9l/IV954LVUKt1ONpi98xbOm+
	FjSWy94QXteIQR2ctwkZyiwgUK0fCzbxnZIBiNfX6K+uyNFLhVLtmExtKygclObkS3MP887T3sk
	F+XrXGqPfIuxUGadrG2rg6VwP9672jKqrfbKpiwqVFgIQfdkcNZf3UhiO0cpiG1vUdfRe+cmxeI
	K9CvXvgnebQeWs6GlxREgXhIKwwvNEQxXTMoVtE9QrBsVHepHCgyTeDlK/Gmn4pzozka9rwX8qF
	HH9deK4ikgiaIlm3+iHQ==
X-Google-Smtp-Source: AGHT+IGJrlF3s3eyP+Qr2nS5bqOk0Kkf15A73EhcdLN/8sE4VGXMhLijfR5Bmn2Z030dWid+RAstUg==
X-Received: by 2002:a05:6000:208a:b0:431:8bf:f08c with SMTP id ffacd0b85a97d-432c376238amr4142095f8f.21.1767803373687;
        Wed, 07 Jan 2026 08:29:33 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:4a3c:13be:a1c0:7b9f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm11117030f8f.42.2026.01.07.08.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:29:33 -0800 (PST)
From: joaopeixoto@osyx.tech
To: linux-kernel@vger.kernel.org
Cc: ajd@linux.ibm.com,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	bagasdotme@gmail.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	corbet@lwn.net,
	dan.j.williams@intel.com,
	davidmcerdeira@osyx.tech,
	devicetree@vger.kernel.org,
	dev@kael-k.io,
	gregkh@linuxfoundation.org,
	haren@linux.ibm.com,
	heiko@sntech.de,
	joaopeixoto@osyx.tech,
	jose@osyx.tech,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maddy@linux.ibm.com,
	mani@kernel.org,
	nathan@kernel.org,
	neil.armstrong@linaro.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	will@kernel.org
Subject: [PATCH 2/6] virt: bao: Add Bao IPC shared memory driver
Date: Wed,  7 Jan 2026 16:28:25 +0000
Message-ID: <20260107162829.416885-3-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107162829.416885-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
 <20260107162829.416885-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

This driver provides an interface for guests running on the Bao
hypervisor to communicate with each other through shared-memory
channels. Each guest is assigned a dedicated read and write region
defined in the device tree.

Userspace can access these regions via standard read/write/mmap
operations. Writes to the write region trigger a hypervisor
notification through an architecture-specific hypercall
(HVC on ARM, SBI ecall on RISC-V).

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 arch/arm/include/asm/bao.h           |  31 ++++
 arch/arm64/include/asm/bao.h         |  31 ++++
 arch/riscv/include/asm/bao.h         |  31 ++++
 drivers/virt/Kconfig                 |   2 +
 drivers/virt/Makefile                |   1 +
 drivers/virt/bao/Kconfig             |   3 +
 drivers/virt/bao/Makefile            |   3 +
 drivers/virt/bao/ipcshmem/Kconfig    |   8 +
 drivers/virt/bao/ipcshmem/Makefile   |   3 +
 drivers/virt/bao/ipcshmem/ipcshmem.c | 255 +++++++++++++++++++++++++++
 10 files changed, 368 insertions(+)
 create mode 100644 arch/arm/include/asm/bao.h
 create mode 100644 arch/arm64/include/asm/bao.h
 create mode 100644 arch/riscv/include/asm/bao.h
 create mode 100644 drivers/virt/bao/Kconfig
 create mode 100644 drivers/virt/bao/Makefile
 create mode 100644 drivers/virt/bao/ipcshmem/Kconfig
 create mode 100644 drivers/virt/bao/ipcshmem/Makefile
 create mode 100644 drivers/virt/bao/ipcshmem/ipcshmem.c

diff --git a/arch/arm/include/asm/bao.h b/arch/arm/include/asm/bao.h
new file mode 100644
index 000000000000..9644d06be705
--- /dev/null
+++ b/arch/arm/include/asm/bao.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Bao Hypervisor Hypercall Interface
+ *
+ * Copyright (c) Bao Project and Contributors. All rights reserved.
+ *
+ * Authors:
+ *	João Peixoto <joaopeixoto@osyx.tech>
+ *	José Martins <jose@osyx.tech>
+ *	David Cerdeira <davidmcerdeira@osyx.tech>
+ */
+
+#ifndef __ASM_ARM_BAO_H
+#define __ASM_ARM_BAO_H
+
+#include <linux/arm-smccc.h>
+
+static inline unsigned long bao_ipcshmem_hypercall(unsigned long hypercall_id,
+						   unsigned long ipcshmem_id)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_hvc(ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32,
+					 ARM_SMCCC_OWNER_VENDOR_HYP,
+					 hypercall_id),
+		      ipcshmem_id, 0, 0, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+#endif /* __ASM_ARM_BAO_H */
diff --git a/arch/arm64/include/asm/bao.h b/arch/arm64/include/asm/bao.h
new file mode 100644
index 000000000000..a1819966b59b
--- /dev/null
+++ b/arch/arm64/include/asm/bao.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Bao Hypervisor Hypercall Interface
+ *
+ * Copyright (c) Bao Project and Contributors. All rights reserved.
+ *
+ * Authors:
+ *	João Peixoto <joaopeixoto@osyx.tech>
+ *	José Martins <jose@osyx.tech>
+ *	David Cerdeira <davidmcerdeira@osyx.tech>
+ */
+
+#ifndef __ASM_ARM64_BAO_H
+#define __ASM_ARM64_BAO_H
+
+#include <linux/arm-smccc.h>
+
+static inline unsigned long bao_ipcshmem_hypercall(unsigned long hypercall_id,
+						   unsigned long ipcshmem_id)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_hvc(ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_64,
+					 ARM_SMCCC_OWNER_VENDOR_HYP,
+					 hypercall_id),
+		      ipcshmem_id, 0, 0, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+#endif /* __ASM_ARM64_BAO_H */
diff --git a/arch/riscv/include/asm/bao.h b/arch/riscv/include/asm/bao.h
new file mode 100644
index 000000000000..35658f37e1bd
--- /dev/null
+++ b/arch/riscv/include/asm/bao.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Bao Hypervisor Hypercall Interface
+ *
+ * Copyright (c) Bao Project and Contributors. All rights reserved.
+ *
+ * Authors:
+ *	João Peixoto <joaopeixoto@osyx.tech>
+ *	José Martins <jose@osyx.tech>
+ *	David Cerdeira <davidmcerdeira@osyx.tech>
+ */
+
+#ifndef __ASM_RISCV_BAO_H
+#define __ASM_RISCV_BAO_H
+
+#include <asm/sbi.h>
+
+#define BAO_SBI_EXT_ID 0x08000ba0
+
+static inline unsigned long bao_ipcshmem_hypercall(unsigned long hypercall_id,
+						   unsigned long ipcshmem_id)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(BAO_SBI_EXT_ID, hypercall_id, ipcshmem_id, 0, 0, 0, 0,
+			0);
+
+	return ret.error;
+}
+
+#endif /* __ASM_RISCV_BAO_H */
diff --git a/drivers/virt/Kconfig b/drivers/virt/Kconfig
index 52eb7e4ba71f..cb98c4c52fd1 100644
--- a/drivers/virt/Kconfig
+++ b/drivers/virt/Kconfig
@@ -47,6 +47,8 @@ source "drivers/virt/nitro_enclaves/Kconfig"
 
 source "drivers/virt/acrn/Kconfig"
 
+source "drivers/virt/bao/Kconfig"
+
 endif
 
 source "drivers/virt/coco/Kconfig"
diff --git a/drivers/virt/Makefile b/drivers/virt/Makefile
index f29901bd7820..623a671f8711 100644
--- a/drivers/virt/Makefile
+++ b/drivers/virt/Makefile
@@ -10,3 +10,4 @@ obj-y				+= vboxguest/
 obj-$(CONFIG_NITRO_ENCLAVES)	+= nitro_enclaves/
 obj-$(CONFIG_ACRN_HSM)		+= acrn/
 obj-y				+= coco/
+obj-$(CONFIG_BAO_SHMEM)		+= bao/
diff --git a/drivers/virt/bao/Kconfig b/drivers/virt/bao/Kconfig
new file mode 100644
index 000000000000..4f7929d57475
--- /dev/null
+++ b/drivers/virt/bao/Kconfig
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+source "drivers/virt/bao/ipcshmem/Kconfig"
diff --git a/drivers/virt/bao/Makefile b/drivers/virt/bao/Makefile
new file mode 100644
index 000000000000..68f5d3f282c4
--- /dev/null
+++ b/drivers/virt/bao/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_BAO_SHMEM) += ipcshmem/
diff --git a/drivers/virt/bao/ipcshmem/Kconfig b/drivers/virt/bao/ipcshmem/Kconfig
new file mode 100644
index 000000000000..966bb75aa495
--- /dev/null
+++ b/drivers/virt/bao/ipcshmem/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+config BAO_SHMEM
+	tristate "Bao hypervisor shared memory support"
+	help
+	This enables support for Bao shared memory communication.
+	It allows the kernel to interface with guests running under
+	the Bao hypervisor, providing a character device interface
+	for exchanging data through dedicated shared-memory regions.
diff --git a/drivers/virt/bao/ipcshmem/Makefile b/drivers/virt/bao/ipcshmem/Makefile
new file mode 100644
index 000000000000..e027dcdb06aa
--- /dev/null
+++ b/drivers/virt/bao/ipcshmem/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_BAO_SHMEM) += bao.o
+bao-objs += ipcshmem.o
diff --git a/drivers/virt/bao/ipcshmem/ipcshmem.c b/drivers/virt/bao/ipcshmem/ipcshmem.c
new file mode 100644
index 000000000000..f3892d41248c
--- /dev/null
+++ b/drivers/virt/bao/ipcshmem/ipcshmem.c
@@ -0,0 +1,255 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Bao Hypervisor IPC Through Shared-memory Driver
+ *
+ * Copyright (c) Bao Project and Contributors. All rights reserved.
+ */
+
+#include <linux/platform_device.h>
+#include <linux/miscdevice.h>
+#include <linux/of.h>
+#include <linux/mm.h>
+#include <linux/io.h>
+#include <asm/bao.h>
+
+#define BAO_IPCSHMEM_NAME_LEN 16
+
+/* IPC through shared-memory hypercall ID */
+#define BAO_IPCSHMEM_HYPERCALL_ID 0x1
+
+struct bao_ipcshmem {
+	struct miscdevice miscdev;
+	int id;
+	char label[BAO_IPCSHMEM_NAME_LEN];
+	void *read_base;
+	size_t read_size;
+	void *write_base;
+	size_t write_size;
+	phys_addr_t physical_base;
+	size_t shmem_size;
+	void *shmem_base_addr;
+};
+
+static int bao_ipcshmem_mmap(struct file *filp, struct vm_area_struct *vma)
+{
+	struct bao_ipcshmem *bao = filp->private_data;
+	unsigned long vsize = vma->vm_end - vma->vm_start;
+	unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;
+	phys_addr_t paddr;
+
+	if (!vsize)
+		return -EINVAL;
+
+	if (offset >= bao->shmem_size ||
+	    vsize > bao->shmem_size - offset)
+		return -EINVAL;
+
+	paddr = bao->physical_base + offset;
+
+	if (!PAGE_ALIGNED(paddr))
+		return -EINVAL;
+
+	return remap_pfn_range(vma, vma->vm_start, paddr >> PAGE_SHIFT, vsize,
+			       vma->vm_page_prot);
+}
+
+static ssize_t bao_ipcshmem_read(struct file *filp, char __user *buf,
+				 size_t count, loff_t *ppos)
+{
+	struct bao_ipcshmem *bao = filp->private_data;
+	size_t available;
+
+	if (*ppos >= bao->read_size)
+		return 0;
+
+	available = bao->read_size - *ppos;
+	count = min(count, available);
+
+	if (copy_to_user(buf, bao->read_base + *ppos, count))
+		return -EFAULT;
+
+	*ppos += count;
+	return count;
+}
+
+static ssize_t bao_ipcshmem_write(struct file *filp, const char __user *buf,
+				  size_t count, loff_t *ppos)
+{
+	struct bao_ipcshmem *bao = filp->private_data;
+	size_t available;
+
+	if (*ppos >= bao->write_size)
+		return 0;
+
+	available = bao->write_size - *ppos;
+	count = min(count, available);
+
+	if (copy_from_user(bao->write_base + *ppos, buf, count))
+		return -EFAULT;
+
+	*ppos += count;
+
+	/* Notify Bao hypervisor */
+	bao_ipcshmem_hypercall(BAO_IPCSHMEM_HYPERCALL_ID, bao->id);
+
+	return count;
+}
+
+static int bao_ipcshmem_open(struct inode *inode, struct file *filp)
+{
+	struct bao_ipcshmem *bao;
+
+	bao = container_of(filp->private_data, struct bao_ipcshmem, miscdev);
+	filp->private_data = bao;
+
+	return 0;
+}
+
+static int bao_ipcshmem_release(struct inode *inode, struct file *filp)
+{
+	filp->private_data = NULL;
+	return 0;
+}
+
+static const struct file_operations bao_ipcshmem_fops = {
+	.owner = THIS_MODULE,
+	.read = bao_ipcshmem_read,
+	.write = bao_ipcshmem_write,
+	.mmap = bao_ipcshmem_mmap,
+	.open = bao_ipcshmem_open,
+	.release = bao_ipcshmem_release,
+};
+
+static int bao_ipcshmem_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct resource *r;
+	struct bao_ipcshmem *bao;
+	resource_size_t shmem_size;
+	u32 write_offset;
+	u32 read_offset;
+	u32 write_size;
+	u32 read_size;
+	u32 id;
+	bool rd_in_range;
+	bool wr_in_range;
+	bool disjoint;
+	int ret;
+
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!r) {
+		dev_err(dev, "missing shared memory resource\n");
+		return -ENODEV;
+	}
+
+	ret = of_property_read_u32(np, "id", &id);
+	if (ret) {
+		dev_err(dev, "missing or invalid 'id' property\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32_index(np, "read-channel", 0, &read_offset);
+	if (ret) {
+		dev_err(dev, "failed to read 'read-channel' offset: %d\n", ret);
+		return ret;
+	}
+
+	ret = of_property_read_u32_index(np, "read-channel", 1, &read_size);
+	if (ret) {
+		dev_err(dev, "failed to read 'read-channel' size: %d\n", ret);
+		return ret;
+	}
+
+	ret = of_property_read_u32_index(np, "write-channel", 0, &write_offset);
+	if (ret) {
+		dev_err(dev, "failed to read 'write-channel' offset: %d\n", ret);
+		return ret;
+	}
+
+	ret = of_property_read_u32_index(np, "write-channel", 1, &write_size);
+	if (ret) {
+		dev_err(dev, "failed to read 'write-channel' size: %d\n", ret);
+		return ret;
+	}
+
+	shmem_size = resource_size(r);
+
+	rd_in_range = (read_offset + read_size) <= shmem_size;
+	wr_in_range = (write_offset + write_size) <= shmem_size;
+	disjoint = ((read_offset + read_size) <= write_offset) ||
+		   ((write_offset + write_size) <= read_offset);
+
+	if (!rd_in_range || !wr_in_range || !disjoint) {
+		dev_err(dev, "invalid read/write channel ranges\n");
+		return -EINVAL;
+	}
+
+	bao = devm_kzalloc(dev, sizeof(*bao), GFP_KERNEL);
+	if (!bao)
+		return -ENOMEM;
+
+	bao->shmem_base_addr =
+		devm_memremap(dev, r->start, shmem_size, MEMREMAP_WB);
+	if (!bao->shmem_base_addr) {
+		dev_err(dev, "failed to remap shared memory\n");
+		return -ENOMEM;
+	}
+
+	bao->id = id;
+	bao->read_size = read_size;
+	bao->write_size = write_size;
+	bao->read_base = (u8 *)bao->shmem_base_addr + read_offset;
+	bao->write_base = (u8 *)bao->shmem_base_addr + write_offset;
+	bao->physical_base = r->start;
+	bao->shmem_size = shmem_size;
+
+	scnprintf(bao->label, BAO_IPCSHMEM_NAME_LEN, "baoipc%d", id);
+
+	bao->miscdev.minor = MISC_DYNAMIC_MINOR;
+	bao->miscdev.name = bao->label;
+	bao->miscdev.fops = &bao_ipcshmem_fops;
+	bao->miscdev.parent = dev;
+
+	ret = misc_register(&bao->miscdev);
+	if (ret) {
+		dev_err(dev, "failed to register misc device: %d\n", ret);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, bao);
+
+	dev_info(dev, "Bao IPC shared memory device '%s' registered\n", bao->label);
+	return 0;
+}
+
+static void bao_ipcshmem_remove(struct platform_device *pdev)
+{
+	struct bao_ipcshmem *bao = platform_get_drvdata(pdev);
+
+	if (bao)
+		misc_deregister(&bao->miscdev);
+}
+
+static const struct of_device_id of_bao_ipcshmem_match[] = {
+	{ .compatible = "bao,ipcshmem" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_bao_ipcshmem_match);
+
+static struct platform_driver bao_ipcshmem_driver = {
+	.probe = bao_ipcshmem_probe,
+	.remove = bao_ipcshmem_remove,
+	.driver = {
+		.name = "baoipc",
+		.of_match_table = of_bao_ipcshmem_match,
+	},
+};
+
+module_platform_driver(bao_ipcshmem_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("David Cerdeira <davidmcerdeira@osyx.tech>");
+MODULE_AUTHOR("José Martins <jose@osyx.tech>");
+MODULE_AUTHOR("João Peixoto <joaopeixoto@osyx.tech>");
+MODULE_DESCRIPTION("Bao Hypervisor IPC Through Shared-memory Driver");
-- 
2.43.0


