Return-Path: <devicetree+bounces-267682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF1oMJEDnWk7MgQAu9opvQ
	(envelope-from <devicetree+bounces-267682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:49:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F5D180B7C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A1C13092BB0
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23010245012;
	Tue, 24 Feb 2026 01:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FInqYnQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f225.google.com (mail-pl1-f225.google.com [209.85.214.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43212580D7
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897702; cv=none; b=qOKgVVITv9G2Mf0RrcABXaXCWtRPS71iu8WXn+u4DRH0814e80NeD2aRmrdfItOmDEw+0vidXAanFt1we3Qv/oiyb1B+EefGmEbWNyID5MSqz6mJ3xba6MbHZ2JtZCZT7TB7ftkOd0YGAZY14+qD+pLpCmKRdQxWEK+gGcJ1Uyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897702; c=relaxed/simple;
	bh=5oVJd2K0SSd/g7EHCAssVRhoQWOkXnnMU02dVY35emo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PcKqsp94OZd1e84/b82ZL6qYmVo0jbLi56Bf/EPZWTw7iaatt6im1GXrvC3420FnS/XIViaFdE/sIDlahYOb+C/CCHSkebog9KSUW11H7BdtlhusxOY1gXhEMpYNE/DpAik/Q1+TNKA076nT/zs1DdJN8iZHkeItTfQ2W9UGorQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FInqYnQl; arc=none smtp.client-ip=209.85.214.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f225.google.com with SMTP id d9443c01a7336-2ad9a9be502so1887875ad.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771897700; x=1772502500;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ODday1WVPLIDMOZF0cQx8EO46XTC+ThUzCG+rg0DrFk=;
        b=hCKlgaAqbirDnDbpz99ZISD9sUuiRUfMpLYokI0dZt91QqlN3UROsDq4GChERDP7ug
         jYQRfBzSIxp3QrD/ZKZGIVIEQj0YF2Dp5hKhRF5NPYqzCtCLKZ/srVbhnS6HLXcT5g3R
         7qAjzMY+a1/Il0UM/uZ2AVidk0I0J6sjg7wY7oawjFvpsDRAOOzwgdAvouRkgsCxkLAy
         pUb5eFH7+WrYK89BtSG1kUG3T47uL1vk4Tx/kVmwajLeiGq6/xtGxCyei1UlY3kcKRT5
         53V2DOzqJjgyQJcyo8LnqAakfUv1FKai3+pQEDShpeV92aYAx5ZLczf4QF1OmtetkTj7
         BfCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNAS2M8Lzxo7W0kk2A0GNrN4nRqcI5TK59UFg/WV2yRbSVrQK40nCkF2bRTUTUWaX7nwFAO09+hu24@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9zxoKm+8KOFSw6S+rdzfgqoz924vPuu7Y/yHIB7L1WuyBSHbA
	hXkY/nVAjLTy1FGIa9Mr+izdARBdXQ+NtTEUZ2EwiGcQFOHOVxonpq8vTyweJt1lL6nu1UUf8NU
	6bR3dNo0qM9pRJ+tKRq0PQUUs/yKXB0INLBmGfvVZMw/sRQVq0qjDWubHIWKoRZvCNbyV7aT54i
	pT9UxbihELAWNNq8j+kUgl2JdSjMwWRhgDFSsam433+jQIAbJZO9yARMle5WS/5VwXZbuVgdi5A
	Hp0+gXueGZI7g==
X-Gm-Gg: ATEYQzwm0D83yljKcjtAxbFkwgM0Hqb383YxKIACmuSuTRh48SJI8cVTHzneZ7dGzzD
	ArJeOgSNHyGDkq/VY+Jz6DO5DjW3IB/dK6EiHmhCoPOuY9jC3nJzmFXtBhU6gp/BfQCVGOwMuJ8
	UKrHCNcOCpdMbxfG6ngIMthagtTcjPAS8aQEM9/PQSydkSGQ++KqgR+Hn3DRHvmSSdP0kVesgcN
	8e7Mn5B4lJFRBA2k28rgVo9SblbxNsPvAI+X4DDKM1V+skyBP8+kcc96RYfsSob+3ktIerw8o54
	HgbTz2NOWsa/80uJXpah16ZVoG4fzd9wq4h4rS8BUsutsr4liN4iGcywtWtgutjULkiOr7jH2Zh
	/dIoZ82HoT2M8vHUndUOOdgDyIBR4Eq96qHz2pgV+InaoAH33JVTRfUgny/Cj7+M8jQMASbtMpg
	5Dg38K6WNNN4/HR4jD7QMBGXECXfxeGyaUXoQi2IyDK/mKsVYM0+VK5y6H
X-Received: by 2002:a17:903:2f04:b0:2aa:d6a1:e18b with SMTP id d9443c01a7336-2ad74463d5bmr86355465ad.18.1771897700104;
        Mon, 23 Feb 2026 17:48:20 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2ad74fed7cfsm10321445ad.47.2026.02.23.17.48.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:48:20 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2bd3bf5dde4so4749520eec.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771897698; x=1772502498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ODday1WVPLIDMOZF0cQx8EO46XTC+ThUzCG+rg0DrFk=;
        b=FInqYnQlX3b8GhXJhE/KVSyNeylvjuKyfCZfz+tZiJ3Q8+OtD2cUYXmqVyNAIr8oQB
         s7SSCzAK3gXNz62P9tV/zUYM+tlHNH9dGbYHrrzzM/NrasVCP1328E1qWW0l4uZ8WCFP
         qGoBpnUeUUjD4XYguhXgeri2Os4lX7OU2MJsQ=
X-Forwarded-Encrypted: i=1; AJvYcCUOUwtVv7leLjdid1lcwMArXf5Ii0KbNLwwzXWfst8zfnHDNIvcvLq0YNOhPc4wl7BpXFSsCw2F/pzP@vger.kernel.org
X-Received: by 2002:a05:7300:2152:b0:2b7:1d38:3596 with SMTP id 5a478bee46e88-2bd7b9d5477mr3656027eec.4.1771897698415;
        Mon, 23 Feb 2026 17:48:18 -0800 (PST)
X-Received: by 2002:a05:7300:2152:b0:2b7:1d38:3596 with SMTP id 5a478bee46e88-2bd7b9d5477mr3656015eec.4.1771897697765;
        Mon, 23 Feb 2026 17:48:17 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af102d9sm8470964c88.1.2026.02.23.17.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 17:48:17 -0800 (PST)
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
Subject: [PATCH v5 2/3] hwspinlock: brcmstb hardware semaphore support
Date: Mon, 23 Feb 2026 20:47:57 -0500
Message-Id: <20260224014758.2660318-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
References: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267682-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:mid,broadcom.com:dkim,broadcom.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 68F5D180B7C
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
index 000000000000..7a5a35e741f3
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
+	{ .compatible = "brcm,bcm7038-sun-top-ctrl-semaphore", },
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


