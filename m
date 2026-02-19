Return-Path: <devicetree+bounces-266735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHUfOXeHl2kgzwIAu9opvQ
	(envelope-from <devicetree+bounces-266735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:58:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 891AF162FF9
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92FE8304B4C3
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707A632AADA;
	Thu, 19 Feb 2026 21:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SyjGnMec"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f227.google.com (mail-pl1-f227.google.com [209.85.214.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD5E32AAB7
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538240; cv=none; b=PtYpIbnNGucRuH83B1bG39lf7CAPOJouaopQJsEGlh8j/jkyDXmW9bisToGqcN9Zw/7C9Q+oUqZqAqXlWMTKlIpSAcr2o89IRbV7RQn+uO8aut6+0AGGoCYMoiCspMEqaUGPzJbf4PPZlehzwSOKD56kPskDV9WQeijLbOTx2dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538240; c=relaxed/simple;
	bh=jD5yGVia+PZnL8Wq60+PPU60FeQK0qWyKw0Q5LrmgWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lVkLkXlGZetzBixNAWif/RD4xPHzjULaxTNiEfwqmAZHyMmmtLXTFu9SavitywAc9cdUBrp7Y4P3fffZVgtgxAxL5ZjsapqE1/+cWK1zr97par9WdhtiGtmL1Zj/dVh2Zuw7Xv5EQdrnkEHi/E8iTY/GmK2jtB0rjHVSm9TcH98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SyjGnMec; arc=none smtp.client-ip=209.85.214.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f227.google.com with SMTP id d9443c01a7336-2a962230847so12137745ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771538238; x=1772143038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hQ4iRn4Yr0HtvQBIFvgGnqHMHINRSvRxdUg7UzIwt38=;
        b=EqfqomtR9eEPNLCZ+0UbqhgaFFiI1aF0dueHMtVnet3euBMjgxQ9yiu3D/VBNYrRv6
         b2FQOhtOcSnOUnj4t5x6LcFPDjYZa298nl1ACAcxaL4vfbsX0ilXkPQHs4cGDuVzTeA2
         siRiIjRCd5nYudnvA386Aj0l1XK8V8iefWmEF9HAQJoj88MKJQSMmNsaxQfXsMGNa/Qj
         A1f51b75UETSjfQ86kEuqY3ydhERD6AStvNHnwDlRYOMGyiWpDbXoKogOXNfXtD2Ia+T
         7yunhqxUFS/NiMpRZ2ZQDfPCxiVclDNjZGtwFjaJzIgaYt0kyeZMtC5cPhLPJmE4ybRT
         WuCA==
X-Forwarded-Encrypted: i=1; AJvYcCU6yYKX3QKSab3dXmnoueP+VvR9RhnVhrbH8mx4zgatfpsr3Ryls5WTexsbPmLEHN8TF7zCtJ0UsFil@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4+o5aWnqJQbiv9Xn4Sph8v80eYTEnf3pmGKDkzDnQg17m4OtJ
	AAl16XTeyATiV2rt/mrX+OAnej2Y/r6nXHxAOnZpkkzysAvSmiYplnWZPJ+yJ0zwihDFugjzNWn
	brBfc2aCTvZP6ArLcWfUYdzWqhSjEwlW2LxMCbfKxsKQNfXqBP3Sejh7X5X019ah+kY1rC1jWFN
	3YGFbp9pbc9OZ1dLfM8mwaJ4A69ctmjEpwPJbsXygXg1rBdCtAVgt2jtwUZd2LHVMVINklxru/a
	wAuI0nMy8tqsA==
X-Gm-Gg: AZuq6aIwjZXICZN6qjih2kggwooVIHLhkhBRXNEz96DFtNZ+h0+OLUNQAdPMQd0MXz9
	KqLKb3LjC8PX0u8RtlxMtwHeY9pgHFPZhZfAhg52y8o4jUcfGW0KxotuOxGztftcEg6HJXRX1LR
	E9A4X1y0hBtntIW7F2EnQ7B/oOlMoVed7LFdqL3efocXEn81X4af17KFovkLg/39JT0BJ8IePRO
	d/VFrLy9WU3n0pM1fandmfqTEgs6lc8270ePIoCd6NeXU73R3kkXfSgh2njc+GlAjQ9YMdKJAln
	jx+UOzeisVp6Zbgu5j9vxMxomSOn5k2ekPqAD54j2fZLbjVoirML09mE/rcy4jImAySAbMtX1Pw
	6P2QJb7asP1saFOZMRMdSgciFjmLuWONhOf2j3YCeGbB2WNWn4v5LfAmpYabixcxyGcxnk7CVcf
	1vljCeRjHj76bL1vWPbABd64C2EbByEJ2mVNSlstQ0Z/s+IX2jchk=
X-Received: by 2002:a17:902:dac7:b0:2a9:5b87:5bd4 with SMTP id d9443c01a7336-2ad50e58478mr62474115ad.1.1771538238401;
        Thu, 19 Feb 2026 13:57:18 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2ad1a7a77besm22315985ad.41.2026.02.19.13.57.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2026 13:57:18 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a944e6336eso82431865ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771538236; x=1772143036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hQ4iRn4Yr0HtvQBIFvgGnqHMHINRSvRxdUg7UzIwt38=;
        b=SyjGnMecLBLAXhQOIR8XjvsTosk3VoglaRM+cSvOY3BdscNGasNSfUnVqOu8B/DF0u
         JTMZO36PuapnGZccjYYT76Sa5RFjHGG1fcdSbq7ud6GbBIHwEt0mhCsxh7vVXlTpJGd+
         xU6c/ZCWyAWF5G/muvGX9U2/H5QhaV6d47IBs=
X-Forwarded-Encrypted: i=1; AJvYcCUOL7lh5IUtc5tQl00RzmtPZpD0qmlvqMs/jjG/y0XW1iviSMRs0QZwMBlPJYv9Ski9cGJkVVeknlb9@vger.kernel.org
X-Received: by 2002:a17:902:dac7:b0:2a9:5b87:5bd4 with SMTP id d9443c01a7336-2ad50e58478mr62473605ad.1.1771538236576;
        Thu, 19 Feb 2026 13:57:16 -0800 (PST)
X-Received: by 2002:a17:902:dac7:b0:2a9:5b87:5bd4 with SMTP id d9443c01a7336-2ad50e58478mr62473445ad.1.1771538236118;
        Thu, 19 Feb 2026 13:57:16 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aae9d73sm156416065ad.77.2026.02.19.13.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:57:15 -0800 (PST)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v4 2/3] hwspinlock: brcmstb hardware semaphore support
Date: Thu, 19 Feb 2026 16:57:01 -0500
Message-Id: <20260219215702.63321-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260219215702.63321-1-kamal.dasu@broadcom.com>
References: <20260219215702.63321-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266735-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,broadcom.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 891AF162FF9
X-Rspamd-Action: no action

Broadcom settop SoCs have common 16 hardware semaphore registers that
can be used as part of the kernel hardware spinlock framework. The
hardware semaphores are part of the 'sundry' ip block that also has
controls like pin/mux controls, SoC identification, drive strength,
reset controls, and other misc bits.

Adding support for brcmstb_hwspinlock that only maps sundry block
registers SUN_TOP_CTRL_SEMAPHORE_[0:15] to implement the hardware
spinlock operations. Change allows other Broadcom settop drivers to
call hwspin_trylock() and hwspin_unlock() interfaces to make use of
hwspinlock framework. Other driver dt nodes just need to provide a
reference to the &hwspinlock and lock id to make use of a particular
hardware lock.
e.g. hwlocks = <&hwspinlock0 0>;

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/hwspinlock/Kconfig              | 11 ++-
 drivers/hwspinlock/Makefile             |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c | 96 +++++++++++++++++++++++++
 3 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
index 3874d15b0e9b..9b7f7bcce14b 100644
--- a/drivers/hwspinlock/Kconfig
+++ b/drivers/hwspinlock/Kconfig
@@ -8,6 +8,16 @@ menuconfig HWSPINLOCK
 
 if HWSPINLOCK
 
+config HWSPINLOCK_BRCMSTB
+	tristate "Broadcom Settop Hardware Semaphore functionality"
+	depends on ARCH_BRCMSTB || COMPILE_TEST
+	help
+	  Broadcom settop hwspinlock driver.
+	  Say y here to support the Broadcom Hardware Semaphore functionality, which
+	  provides a synchronisation mechanism on the SoC.
+
+	  If unsure, say N.
+
 config HWSPINLOCK_OMAP
 	tristate "OMAP Hardware Spinlock device"
 	depends on ARCH_OMAP4 || SOC_OMAP5 || SOC_DRA7XX || SOC_AM33XX || SOC_AM43XX || ARCH_K3 || COMPILE_TEST
@@ -62,5 +72,4 @@ config HSEM_U8500
 	  SoC.
 
 	  If unsure, say N.
-
 endif # HWSPINLOCK
diff --git a/drivers/hwspinlock/Makefile b/drivers/hwspinlock/Makefile
index a0f16c9aaa82..35f2d94d8ba2 100644
--- a/drivers/hwspinlock/Makefile
+++ b/drivers/hwspinlock/Makefile
@@ -4,6 +4,7 @@
 #
 
 obj-$(CONFIG_HWSPINLOCK)		+= hwspinlock_core.o
+obj-$(CONFIG_HWSPINLOCK_BRCMSTB)	+= brcmstb_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_OMAP)		+= omap_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_QCOM)		+= qcom_hwspinlock.o
 obj-$(CONFIG_HWSPINLOCK_SPRD)		+= sprd_hwspinlock.o
diff --git a/drivers/hwspinlock/brcmstb_hwspinlock.c b/drivers/hwspinlock/brcmstb_hwspinlock.c
new file mode 100644
index 000000000000..4488032a3f7f
--- /dev/null
+++ b/drivers/hwspinlock/brcmstb_hwspinlock.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * brcmstb HWSEM driver
+ *
+ * Copyright (C) 2025 Broadcom
+ *
+ */
+
+#include <linux/delay.h>
+#include <linux/hwspinlock.h>
+#include <linux/io.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include "hwspinlock_internal.h"
+
+#define BRCMSTB_NUM_SEMAPHORES		16
+#define RESET_SEMAPHORE			0
+
+#define HWSPINLOCK_VAL			'L'
+
+static int brcmstb_hwspinlock_trylock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = (void __iomem *)lock->priv;
+
+	writel(HWSPINLOCK_VAL, lock_addr);
+
+	return (readl(lock_addr) == HWSPINLOCK_VAL);
+}
+
+static void brcmstb_hwspinlock_unlock(struct hwspinlock *lock)
+{
+	void __iomem *lock_addr = (void __iomem *)lock->priv;
+
+	/* release the lock by writing 0 to it */
+	writel(RESET_SEMAPHORE, lock_addr);
+}
+
+static void brcmstb_hwspinlock_relax(struct hwspinlock *lock)
+{
+	ndelay(50);
+}
+
+static const struct hwspinlock_ops brcmstb_hwspinlock_ops = {
+	.trylock	= brcmstb_hwspinlock_trylock,
+	.unlock		= brcmstb_hwspinlock_unlock,
+	.relax		= brcmstb_hwspinlock_relax,
+};
+
+static int brcmstb_hwspinlock_probe(struct platform_device *pdev)
+{
+	struct hwspinlock_device *bank;
+	struct hwspinlock *hwlock;
+	void __iomem *io_base;
+	int i, num_locks = BRCMSTB_NUM_SEMAPHORES;
+
+	io_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(io_base)) {
+		dev_err(&pdev->dev, "semaphore iobase mapping error\n");
+		return PTR_ERR(io_base);
+	}
+
+	bank = devm_kzalloc(&pdev->dev, struct_size(bank, lock, num_locks),
+			    GFP_KERNEL);
+	if (!bank)
+		return -ENOMEM;
+
+	for (i = 0, hwlock = &bank->lock[0]; i < num_locks; i++, hwlock++)
+		hwlock->priv = (void __iomem *)(io_base + sizeof(u32) * i);
+
+	return devm_hwspin_lock_register(&pdev->dev, bank,
+					 &brcmstb_hwspinlock_ops,
+					 0, num_locks);
+}
+
+static const struct of_device_id brcmstb_hwspinlock_ids[] = {
+	{ .compatible = "brcm,brcmstb-sun-top-ctrl-semaphore", },
+	{ /* end */ },
+};
+MODULE_DEVICE_TABLE(of, brcmstb_hwspinlock_ids);
+
+static struct platform_driver brcmstb_hwspinlock_driver = {
+	.probe		= brcmstb_hwspinlock_probe,
+	.driver		= {
+		.name	= "brcmstb_hwspinlock",
+		.of_match_table = brcmstb_hwspinlock_ids,
+	},
+};
+
+module_platform_driver(brcmstb_hwspinlock_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Hardware Spinlock driver for brcmstb");
+MODULE_AUTHOR("Kamal Dasu <kamal.dasu@broadcom.com>");
-- 
2.34.1


