Return-Path: <devicetree+bounces-32804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F6E830A8E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AA531F287A3
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 16:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB8F622326;
	Wed, 17 Jan 2024 16:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="NQI68Rmp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB97B2420D
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 16:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705507719; cv=none; b=a29yoGMGIIUWQjpIgFS8hOc46xzpf0EEOPLfz9IP7d0SnLkZQWq0/qjqmDp3CWxaZq0y/XSRLBfyYnRRlkAFcr+eURDcQcMz7Yb7iRJR7JTbMapeAcycoPJC7KXm1RUHzWds8hGhfqY046VYAkcMey3MV8B9La8C/On66qzvZUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705507719; c=relaxed/simple;
	bh=9hVgr52oxfJN+f3DPqCGtdW3fcs9H31q8sHIag5dqM8=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding; b=JNA58rgRLUIa5dbnsp2QqqnulxzPntbpnF1Lo3TVvcTdn/sg2ifw5JGZQLgjkEU3LiRycnx4gBNOF2X7ODAlexOfAzrdb6JZKYQIsVhDuV0b8f+ljxbwQvoPoVx7+9O08qE8RMDVwzonyvuFEd/EqjWjxMgBfQh4IIDC+FxTeE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=NQI68Rmp; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e8cf57d66so4973935e9.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 08:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705507716; x=1706112516; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hmDMXWqDYRqbLZRDqVGsRFlI5kpmWEXG2UggM6BWIdg=;
        b=NQI68RmpObOV7v4qXphEqbzrqq71ej5IP6s3cSP2RqmUAX2ez5T5bDVAMcm/wmSDdA
         N00s3oYgoh0kBrcDqeaZk7iPXChzHTb/Ti9THgjllPRh9Gr2kdBddZoP6xd1jOzBwwlC
         +YaViHQ7NRc4kswd74xTFcClogeNcPmD0ukHn9wDtVz166unMzTonxvYG6DFuLH/AvhA
         Ezf1SUoq+ffBRsRNNdiEU0H2rMfXC1/qelP1nCncJSXfuYvtbJc4c/rfd3sqEa4C/YHg
         5Ep91FMjlo++5R6K6UZvtByd15Anp8c0wc3SYWWwJ6lWVenjJrKGYFy2473L+AtJgeAD
         oPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705507716; x=1706112516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hmDMXWqDYRqbLZRDqVGsRFlI5kpmWEXG2UggM6BWIdg=;
        b=dDbP156NTPOUVgMsQU1tmeLz2DLtdspG1F3vR8ZbdRmYpy9D5P2DR6H3yx+gG8p/D4
         uNTTVmkv2zWvK2ATLMxnAeRagpmPvaGXoA9DcLDN7dXzlR8P4f2WY/h/2vMjZkIRyK2N
         C3Y9qSezvCaHbvySICcIAC5s69fqPyJUJBp8FVFKFg/bgM8Gs2xzTZVGUnl7+WHa8TtO
         P+Je9SZOmAeE/beViRmLVWU4umtFU5tdE/MtPtQqXSucdNRd9Og8Wd6fNkLNxP24hkwe
         WUO2PuSau/p9ToicWniGLmzc3lKtG6iLob5zgK4S+Chf6Jnmv8pKI5M4wK55jOPUoDiU
         +msw==
X-Gm-Message-State: AOJu0YwePRESmhXoEN1GQJIa8SC65l74c3vrGh2P6SB8m0MBol/Skp7i
	LECYqy2dAMFuamPQQSCqlKAx6+0Lt4LUgA==
X-Google-Smtp-Source: AGHT+IFjYcQdh7FZrRxxGNsX7G0G4hhDvyEqEiUFIygsmYmwACq1eG6JZb5KYfiYxR9GWoVqka6UfQ==
X-Received: by 2002:a05:600c:4452:b0:40d:8954:a735 with SMTP id v18-20020a05600c445200b0040d8954a735mr2818810wmn.156.1705507716318;
        Wed, 17 Jan 2024 08:08:36 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d0b5:43ec:48:baad])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d6a4a000000b00337b0374a3dsm1972092wrw.57.2024.01.17.08.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 08:08:35 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Peng Fan <peng.fan@nxp.com>,
	Robert Richter <rrichter@amd.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Terry Bowman <terry.bowman@amd.com>,
	Lukas Wunner <lukas@wunner.de>,
	Huacai Chen <chenhuacai@kernel.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 6/9] PCI/pwrseq: add pwrseq core code
Date: Wed, 17 Jan 2024 17:07:45 +0100
Message-Id: <20240117160748.37682-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240117160748.37682-1-brgl@bgdev.pl>
References: <20240117160748.37682-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Some PCI devices must be powered-on before they can be detected on the
bus. Introduce a simple framework reusing the existing PCI OF
infrastructure.

The way this works is: a DT node representing a PCI device connected to
the port can be matched against its power sequencing platform driver. If
the match succeeds, the driver is responsible for powering-up the device
and calling pcie_pwrseq_device_enable() which will trigger a PCI bus
rescan as well as subscribe to PCI bus notifications.

When the device is detected and created, we'll make it consume the same
DT node that the platform device did. When the device is bound, we'll
create a device link between it and the parent power sequencing device.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/Kconfig         |  1 +
 drivers/pci/Makefile        |  1 +
 drivers/pci/pwrseq/Kconfig  |  8 ++++
 drivers/pci/pwrseq/Makefile |  3 ++
 drivers/pci/pwrseq/pwrseq.c | 82 +++++++++++++++++++++++++++++++++++++
 include/linux/pci-pwrseq.h  | 24 +++++++++++
 6 files changed, 119 insertions(+)
 create mode 100644 drivers/pci/pwrseq/Kconfig
 create mode 100644 drivers/pci/pwrseq/Makefile
 create mode 100644 drivers/pci/pwrseq/pwrseq.c
 create mode 100644 include/linux/pci-pwrseq.h

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 74147262625b..e0fd5caa1ffc 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -291,5 +291,6 @@ source "drivers/pci/hotplug/Kconfig"
 source "drivers/pci/controller/Kconfig"
 source "drivers/pci/endpoint/Kconfig"
 source "drivers/pci/switch/Kconfig"
+source "drivers/pci/pwrseq/Kconfig"
 
 endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index cc8b4e01e29d..0a1673ef2c9e 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_PCI)		+= access.o bus.o probe.o host-bridge.o \
 
 obj-$(CONFIG_PCI)		+= msi/
 obj-$(CONFIG_PCI)		+= pcie/
+obj-$(CONFIG_PCI)		+= pwrseq/
 
 ifdef CONFIG_PCI
 obj-$(CONFIG_PROC_FS)		+= proc.o
diff --git a/drivers/pci/pwrseq/Kconfig b/drivers/pci/pwrseq/Kconfig
new file mode 100644
index 000000000000..a721a8a955c3
--- /dev/null
+++ b/drivers/pci/pwrseq/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menu "PCI Power sequencing drivers"
+
+config PCI_PWRSEQ
+	bool
+
+endmenu
diff --git a/drivers/pci/pwrseq/Makefile b/drivers/pci/pwrseq/Makefile
new file mode 100644
index 000000000000..4052b6bb5aa5
--- /dev/null
+++ b/drivers/pci/pwrseq/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PCI_PWRSEQ)		+= pwrseq.o
diff --git a/drivers/pci/pwrseq/pwrseq.c b/drivers/pci/pwrseq/pwrseq.c
new file mode 100644
index 000000000000..a750c7bc6830
--- /dev/null
+++ b/drivers/pci/pwrseq/pwrseq.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2024 Linaro Ltd.
+ */
+
+#include <linux/device.h>
+#include <linux/export.h>
+#include <linux/kernel.h>
+#include <linux/pci.h>
+#include <linux/pci-pwrseq.h>
+#include <linux/property.h>
+#include <linux/slab.h>
+
+static int pci_pwrseq_notify(struct notifier_block *nb, unsigned long action,
+			     void *data)
+{
+	struct pci_pwrseq *pwrseq = container_of(nb, struct pci_pwrseq, nb);
+	struct device *dev = data;
+
+	if (dev_fwnode(dev) != dev_fwnode(pwrseq->dev))
+		return NOTIFY_DONE;
+
+	switch (action) {
+	case BUS_NOTIFY_ADD_DEVICE:
+		device_set_of_node_from_dev(dev, pwrseq->dev);
+		break;
+	case BUS_NOTIFY_BOUND_DRIVER:
+		pwrseq->link = device_link_add(dev, pwrseq->dev,
+					       DL_FLAG_AUTOREMOVE_CONSUMER);
+		if (!pwrseq->link)
+			dev_err(pwrseq->dev, "Failed to add device link\n");
+		break;
+	case BUS_NOTIFY_UNBOUND_DRIVER:
+		device_link_del(pwrseq->link);
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
+int pci_pwrseq_device_enable(struct pci_pwrseq *pwrseq)
+{
+	if (!pwrseq->dev)
+		return -ENODEV;
+
+	pwrseq->nb.notifier_call = pci_pwrseq_notify;
+	bus_register_notifier(&pci_bus_type, &pwrseq->nb);
+
+	pci_lock_rescan_remove();
+	pci_rescan_bus(to_pci_dev(pwrseq->dev->parent)->bus);
+	pci_unlock_rescan_remove();
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pci_pwrseq_device_enable);
+
+void pci_pwrseq_device_disable(struct pci_pwrseq *pwrseq)
+{
+	bus_unregister_notifier(&pci_bus_type, &pwrseq->nb);
+}
+EXPORT_SYMBOL_GPL(pci_pwrseq_device_disable);
+
+static void devm_pci_pwrseq_device_disable(void *data)
+{
+	struct pci_pwrseq *pwrseq = data;
+
+	pci_pwrseq_device_disable(pwrseq);
+}
+
+int devm_pci_pwrseq_device_enable(struct device *dev,
+				  struct pci_pwrseq *pwrseq)
+{
+	int ret;
+
+	ret = pci_pwrseq_device_enable(pwrseq);
+	if (ret)
+		return ret;
+
+	return devm_add_action_or_reset(dev, devm_pci_pwrseq_device_disable,
+					pwrseq);
+}
+EXPORT_SYMBOL_GPL(devm_pci_pwrseq_device_enable);
diff --git a/include/linux/pci-pwrseq.h b/include/linux/pci-pwrseq.h
new file mode 100644
index 000000000000..137b82b99d1c
--- /dev/null
+++ b/include/linux/pci-pwrseq.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2024 Linaro Ltd.
+ */
+
+#ifndef __PCI_PWRSEQ_H__
+#define __PCI_PWRSEQ_H__
+
+#include <linux/notifier.h>
+
+struct device;
+
+struct pci_pwrseq {
+	struct notifier_block nb;
+	struct device *dev;
+	struct device_link *link;
+};
+
+int pci_pwrseq_device_enable(struct pci_pwrseq *pwrseq);
+void pci_pwrseq_device_disable(struct pci_pwrseq *pwrseq);
+int devm_pci_pwrseq_device_enable(struct device *dev,
+				  struct pci_pwrseq *pwrseq);
+
+#endif /* __PCI_PWRSEQ_H__ */
-- 
2.40.1


