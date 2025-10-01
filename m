Return-Path: <devicetree+bounces-223135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0BDBB1788
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 20:17:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E83D73C12E7
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 18:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7530A2D5426;
	Wed,  1 Oct 2025 18:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="aiOR0MTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f227.google.com (mail-pf1-f227.google.com [209.85.210.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19A02D4818
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 18:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342651; cv=none; b=ZKzvCNVVNsLoifZX3XpxB/o+90lSvXv7NlD6F28ta2yg8sj6F8dH57Ph2vI6QET7Zb4+f3OGLQ+1JGpWaFue39BTqfCVduLdByARHAS0KTkZqFd4Y3cHnwqT2/OIeq0/+MD6ASLvMHiAalJbg0ibqNtaSvfsB4OMggdIiNi9oXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342651; c=relaxed/simple;
	bh=s+8Zq1LQ0JqtJCa/LUR9iqUrI53v9nCtuPLSf/OZ23Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YrTqqzOn6fuBDT2jLIuwEg5vNLEcTdg5UhVYjoGmXG9GnBcU0oSAYCMqrNQw5nkb8/Ta72DQhkf4tKlZpOOg0x3GOkNqru1KTf/DCDm6+x+aqLbeLiH9SABKOZHQ5Pd1URGv6tAX1Fq1pkbZBRd5tv6wtcptS/WtkCaTydPtSAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=aiOR0MTl; arc=none smtp.client-ip=209.85.210.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f227.google.com with SMTP id d2e1a72fcca58-78af3fe5b17so229006b3a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759342649; x=1759947449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zUuZQrnmJtbF5ECpFYAH41ueWDcOLNVLh/7zyV6Y6a0=;
        b=tf0yKWG2KK1W6HWZjrlDbvhvhPHkyG183QDa53quiF8TgKyX2kv9WYjUgwMzXbuIWR
         5QnjNwpKvksK+08vfL06tuFJmDwLMYloO/auq1TQr4PvwF5LXHXF6VM3JXyTPzrBLdEp
         cXBPOaVZz41ZhC+s8NAeETSJj7Fk4r4HWLQOl7t2At4FKGzbNjCTw7BWKsfDByP4lzvd
         3Rm20tWli2ZFowg/d5a33MGMF9c/amW/+MNMRFVQM4UPeY3tM5hBPzpkHXdNZReWBpj2
         y59mWjcZuSSqpcWaji4z9snVapp/kelD7kOvT2WhybMhmER1eird6jLSgjuiwFPUNBLv
         1Gxw==
X-Forwarded-Encrypted: i=1; AJvYcCV/tyyqDbNWXZsTxyEvfTEaCsATmVEOVxPAcwQJi7bPKKtiWiEsv7d11XrrdC/+8N+FpytnDTAZdRiP@vger.kernel.org
X-Gm-Message-State: AOJu0YxYLMHNsBn0iDF6ZTEbLq7L7edSjMTPbpzB60puXpd4N8+FuJb0
	GiCcuE3cwlKw5z14I7Xr7nUveOztUDsbo9LYrC5jpAJwyVJXyGIgM3A8mJu6ALp456QuMimXGDn
	oCickJFlY1RWPK0eYwQIEkXUHbw+aFqRkJUagSGbn78lWXJXr//lZcXjmeNdQEAbgG7ciOldggT
	3dLDHNkEtngvXTxK/UATQgrIMrwhP3yH6H3+zV+ReZQBZmRdUzcgrSBSJXfst1DxqZhUT5U+q07
	PIvF0VHr7l8NA==
X-Gm-Gg: ASbGncsmMimaRue0ccCb+AI842hkg2O5MnMoj/x91CLUoDcMLSDV9RZLRd5V/ryLBXI
	eatH+YSwNR6EyEljOnpJ6N+k8JsxjcyLNHb+iMhcJY3ZDyocsVNmmfqqLrDU/q1/Bjw2CvqOtGh
	O5e97rzO3Ofwj0y7Y2QAdhObWLOoPb/eAcxOCvWvEjSwoHoz+BL04dIczzuoV6O+d/03L6DddTn
	XFV2IiINTsc+zksR7Qks9S1ORe1jVfriKu76ZOqdOCh3FaQtkLO6FMYhktk1WvbZgYHndHsoz9F
	YVCHsLd+l+gXlhTmOUZmzceiys/YTnNOhjaJRRkKQUOJfjv+6vK0fepdeNUeGOgta1AE9kgE7bi
	A5uKWCA0qwYesaighzXls7uuPPq0b3t+kuRWsRWu8SbWQpSwf+NkUJ660w9CCi1jfI/K4aKq58r
	F90moi
X-Google-Smtp-Source: AGHT+IEDZzbzHYO+QjOtZpV1xCR+guoRfSBYhxRkseUQ+M87sScarqK010FUuLabUDuX2qsK2TYZTuMcVwYC
X-Received: by 2002:a05:6a00:2447:b0:77f:1ef8:8acb with SMTP id d2e1a72fcca58-78af4156ba3mr5011792b3a.13.1759342649144;
        Wed, 01 Oct 2025 11:17:29 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-78b0202e118sm27793b3a.11.2025.10.01.11.17.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 11:17:29 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dd6887656cso8715541cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759342648; x=1759947448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUuZQrnmJtbF5ECpFYAH41ueWDcOLNVLh/7zyV6Y6a0=;
        b=aiOR0MTlnch3m728dg7hPLOVenW83X/mufF4XH953YvveBn/kkMw2vozsHd6G3c0uT
         QGK3C9gJ7pxJIh3lymt9uobvS4scUt/mtL2qyPvl73gGfWltcWzR8JLbxQKEWU4bmQ3g
         U4XCV7gnDnMJiIkLBYHAFcx3uQgmT3gi1g7Js=
X-Forwarded-Encrypted: i=1; AJvYcCV0Aj8DQ7iD3N1xa3BgFZl0tGEyJr3CmZp/bgUjAZcr5b4EBx+daZ8BAzjlOyDooLl7483hBD8qK1lZ@vger.kernel.org
X-Received: by 2002:a05:622a:4d90:b0:4de:f3d7:6964 with SMTP id d75a77b69052e-4e41cd01379mr61196191cf.24.1759342647794;
        Wed, 01 Oct 2025 11:17:27 -0700 (PDT)
X-Received: by 2002:a05:622a:4d90:b0:4de:f3d7:6964 with SMTP id d75a77b69052e-4e41cd01379mr61195441cf.24.1759342647212;
        Wed, 01 Oct 2025 11:17:27 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55c9e78cfsm3847671cf.27.2025.10.01.11.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 11:17:26 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: peng.fan@oss.nxp.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v2 2/3] hwspinlock: brcmstb hardware semaphore support
Date: Wed,  1 Oct 2025 14:16:40 -0400
Message-Id: <20251001181641.1561472-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
References: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Added support for brmstb_hwspinlock driver that makes use of
the hwspinlock framework. Driver uses SUN_TOP_CTRL_SEMAPHORE_[1:15]
registers to implement the hardware semaphore. With this change
other brcmstb drivers can use hwspin_trylock() and hwspin_unlock()
apis and make use of this hwspinlock framework. Other driver dt nodes
just need to use a reference to the &hwspinlock and the lock id
they want to use.
e.g. hwlocks = <&hwspinlock0 0>;

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 drivers/hwspinlock/Kconfig              | 11 ++-
 drivers/hwspinlock/Makefile             |  1 +
 drivers/hwspinlock/brcmstb_hwspinlock.c | 96 +++++++++++++++++++++++++
 3 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwspinlock/brcmstb_hwspinlock.c

diff --git a/drivers/hwspinlock/Kconfig b/drivers/hwspinlock/Kconfig
index 3874d15b0e9b..39797cadfd0b 100644
--- a/drivers/hwspinlock/Kconfig
+++ b/drivers/hwspinlock/Kconfig
@@ -8,6 +8,16 @@ menuconfig HWSPINLOCK
 
 if HWSPINLOCK
 
+config HWSPINLOCK_BRCMSTB
+	tristate "Broadcom Setttop Hardware Semaphore functionality"
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
index 000000000000..0b164c57192e
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
+	{ .compatible = "brcm,brcmstb-hwspinlock", },
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
+MODULE_AUTHOR("Kamal Dasu <kdasu.dasu@broadcom.com>");
-- 
2.34.1


