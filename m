Return-Path: <devicetree+bounces-268083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCAIAn8gnmnGTgQAu9opvQ
	(envelope-from <devicetree+bounces-268083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E3F18D036
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37FEC3052AF8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3FC330644;
	Tue, 24 Feb 2026 22:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="e/I0dOYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f228.google.com (mail-pl1-f228.google.com [209.85.214.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B07E3358A9
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771970684; cv=none; b=bVuBKOhqrSeYVvgKDu1pwGYGAqiRNbm3TYXbTnaYN3Luk19kfVyVd+99JSdeMUjtTHw0WSaXpstSx5Rrfg5gobtAbB3txKu0+vjBxeN/LfRF6XggK5RDWzDp7hqW9zkzkitRPSRAsjSRsFa9WFoh28w5Z+UyYtk9YO0IoJt9x+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771970684; c=relaxed/simple;
	bh=5oVJd2K0SSd/g7EHCAssVRhoQWOkXnnMU02dVY35emo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PI+ANP8CbE9I+i2IpevqhB3B0M57UN6UDDwmzvx+nNQlksSjqkwE4DH51KtHgW/10denZ3u6Zn1zskgk/iQRtNK2qdQZj0774JvO+TzDQP5Ajt7BUCiP8h7e/wh9fpf49YRu/eM6kIKcIp8IA42jEkVXgKw7CbtMr9CnHKwceY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=e/I0dOYC; arc=none smtp.client-ip=209.85.214.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f228.google.com with SMTP id d9443c01a7336-2aaecf9c325so1715315ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771970683; x=1772575483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ODday1WVPLIDMOZF0cQx8EO46XTC+ThUzCG+rg0DrFk=;
        b=fWYT+U+W12rMwH6CD9yXWsNbT0BPV9TqFrQXK6JDiib2bk0ygXXLXsxz1SNHwms0UR
         ecGzDqThR0kvPpfE7K/SY//O9hDlQlhE8T5umxssC+InuR37WqoJpN0M6IirPetNrEh+
         SviDgttc69v2YiYnwMeC6X8vygr7ViDu/GWUXqjXLoqbe2cG3ug4OU7l7YH2qPKjgYgv
         2gUAoDl95LzTqWg78c9XxAtNSVBtOSrJmUwhMoGDUOvtRfvPuB2u1cc1E22JgJv85XEG
         jN5a56uAAhPami35h3wur4P4pT8Dx8cSYmG7O/Lvr3Tkakks1FcmHCJTpAszJIib0tC6
         ZUMg==
X-Forwarded-Encrypted: i=1; AJvYcCUZgU/KbyVDcJmBhW414blp0f7eimUBhFHFh92hoYbFdSzPfnj25nRHsiyLe2F+0n21MEUxJOt3BHbv@vger.kernel.org
X-Gm-Message-State: AOJu0YxXMhF4eoetCXVL6kD94Hwcm0RX0Dpc9uh1bzLj0sHzDwRru1Aw
	eAt0Je1VbGtAwg2l4m97A3tp0IlOOX/bYNMBOcv468JgoOEd7XcQBdR0ohAH+Vmy4VLeVJdvbOG
	eCkiFlyUjCMQOVw2gldh3QbrCmLeZDyjzqdB/8HqgP2exwvvhmsG1i8HUpMncJ+iXq2PCqpIb7f
	4AQlCdlmGdiVQ8iV6otIRua9rskzZDIRuBc0ZLCK5SC8TaCokSYfDkhhyYXcJKD2cpbI1oeA36u
	YNt2WHMLgIXhg==
X-Gm-Gg: ATEYQzzqX5SSP+GwO7vlkk+NxRiMx6AVSrbNkL1jkKqTaqjiOxumJyZbilx+GG/azVT
	9HMRUG7cfdi9ECmTzXChk4zuMTZtSZbOxZ0GWaJtBCViy+7IO5iXmpgm8Mwrgp25n1T0ORBweIE
	Mk0tRilObwPJ9mUf22ZEP6KoB+mpHHmm2xbK8MWMM7WvGRbTQaD0keOe3QLaD4O18Aj4gpY5y4n
	jptX4O7DqUauj+UAGBMxkev2LsgxK/YpmVaEa5O29jIcfObl4HBIN5zZIB1RtAlX6fXGskkSmQv
	x7Xp9U2M/snb3VaZJwGzD1YMmnrxZgEd6dqepvkEPgsqqW6uZ34XoC3Q1P/LDMyP02k932GiyVv
	1U/M2r/oTQjdSwVUUgTu5TJEmGZ1TItgxYEkoeafbsHKg7a4EX0n2WRPZCJBg9yYfnAjqvztB1/
	bJzJnIQCPT8PTiWsbobA/Oh16angIxar+t/98xmXPTC31YuTdOSGGhmQ==
X-Received: by 2002:a17:902:f686:b0:2a7:b412:6cc8 with SMTP id d9443c01a7336-2adbdc019dbmr10174115ad.1.1771970682642;
        Tue, 24 Feb 2026 14:04:42 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-95.dlp.protect.broadcom.com. [144.49.247.95])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2ad74e03ab1sm12954845ad.10.2026.02.24.14.04.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2026 14:04:42 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bdaa7cb638so211459eec.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771970681; x=1772575481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ODday1WVPLIDMOZF0cQx8EO46XTC+ThUzCG+rg0DrFk=;
        b=e/I0dOYCtspgdWItPuDsbaxEODJF3Bk3149Zj0BLRIBdgZhXtlwieA6Jd9s/TLwgI4
         mUmIOov03WjsuuuBVJNGouCPu3FjDqHcvcCzIEPUgKMRIqqiLsM4ne6UWtcoIwrBukzV
         ZeRYFAHQJ9YZYRxyGgIz+gsZIeU1goO+0cJ1w=
X-Forwarded-Encrypted: i=1; AJvYcCWMwCrdyjmIoy44OgDWIDqu34+n+qXRhA968t6HiazyQSYeSga/3LvMol+V6L/HPYvT289cbdZmbLoo@vger.kernel.org
X-Received: by 2002:a05:7301:7015:b0:2ba:7b2a:6a5f with SMTP id 5a478bee46e88-2bdbc347a89mr507210eec.8.1771970680940;
        Tue, 24 Feb 2026 14:04:40 -0800 (PST)
X-Received: by 2002:a05:7301:7015:b0:2ba:7b2a:6a5f with SMTP id 5a478bee46e88-2bdbc347a89mr507193eec.8.1771970680284;
        Tue, 24 Feb 2026 14:04:40 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdb055507bsm2374822eec.0.2026.02.24.14.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 14:04:39 -0800 (PST)
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
Subject: [PATCH v6 2/3] hwspinlock: brcmstb hardware semaphore support
Date: Tue, 24 Feb 2026 17:04:06 -0500
Message-Id: <20260224220407.2351692-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
References: <20260224220407.2351692-1-kamal.dasu@broadcom.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268083-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,broadcom.com:mid,broadcom.com:dkim,broadcom.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 71E3F18D036
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


