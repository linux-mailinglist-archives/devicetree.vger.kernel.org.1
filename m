Return-Path: <devicetree+bounces-29693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7298482424E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 14:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1561C23E8A
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 13:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BD9241EB;
	Thu,  4 Jan 2024 13:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="QVSdXkKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F6C241F3
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 13:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3374eb61cbcso454536f8f.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 05:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704373330; x=1704978130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C0/NJ7KYEulil2Xeyr0vkcKQVIe4dXTk2WHu1Aal+GM=;
        b=QVSdXkKSrGsr/Oael23krHCfZal44tTq1nlfWdZZHrbCwSePZZM9VdnKpJS0ssNA2D
         gTpPNYMRrg7t6O2KPZWDqj0lZD+PoNlHkUKzzKRp7GCMWa4KzBY4F5yRz9fnVno1emGL
         jDMQVB8/C8zsMvpY+WRj2fSdL5wPhEU0sHT81qfAOvVaxZiQKwwDM/boHYRy0ZvqXoi8
         lzT0JjScoJt8MsJeeWWs3IkS+ZVdP9ZY8SmnyYuxXpqJxXvXq7K89oRhD0JCSZ+e8fnE
         O5UctSqi6JDo9rtbjHS0jSHddF6ZiI/tJ71PX/nPrUdUKx+A9fhqx2puXedraOtIDloe
         rD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704373330; x=1704978130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C0/NJ7KYEulil2Xeyr0vkcKQVIe4dXTk2WHu1Aal+GM=;
        b=v66UsJwpyWLUb/755i/h797Hg6yRYZPmoAPMH0H7LRBzIA78f/5Ek2uw6oyUKvVv87
         OTuNHgvTybgmhV7z7ld+HV1YAkJpbo9Ziur3AAsOh7ScPsPrH4db9vks8XdYWznnAvjG
         8t+qKDWviAoRb4OqWpDAngrH7dJe6Q4N45cw3GhZx83s8tZpU9Aj0OKymUo/CBRw+RYa
         afI8mkBPcgMUfTXADOX/gXJx6NAFDYN20sP2weTPyHLIbQK5R8DKsYGIYGr7JYj8nk18
         OdyGU3wlM/IDb5EfIR8LpaUIs+YUSa69vZ4UB0ftBZiXJcja3kzppOYo70nusYERWAS/
         XjNA==
X-Gm-Message-State: AOJu0YxHAYEurADj0Avon6/pwJM5wEOoxQCfZ2iJblFntTnxTnrAC4j2
	aJByMGg91e1HrnFwpUVxO9dOk1Hx5MGJ3g==
X-Google-Smtp-Source: AGHT+IH1sAH1RUXIP7DjQNVAHdST7oR7mT24OIBd+gWvZXVas72o61+b25pqunGvVU+Vz6z5WhqhXQ==
X-Received: by 2002:adf:ce88:0:b0:336:7590:bd34 with SMTP id r8-20020adfce88000000b003367590bd34mr378455wrn.6.1704373330194;
        Thu, 04 Jan 2024 05:02:10 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:5b69:3768:8459:8fee])
        by smtp.gmail.com with ESMTPSA id w5-20020a5d5445000000b0033660f75d08sm32887387wrv.116.2024.01.04.05.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 05:02:09 -0800 (PST)
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
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RFC 5/9] PCI/pwrseq: add pwrseq core code
Date: Thu,  4 Jan 2024 14:01:19 +0100
Message-Id: <20240104130123.37115-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240104130123.37115-1-brgl@bgdev.pl>
References: <20240104130123.37115-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Some PCIe devices must be powered-on before they can be detected on the
bus. Introduce a simple framework built around the PCIe port driver
which now instantiates its child devices from device-tree.

The way this works is: a DT node representing a PCIe device connected to
the port can be matched against its power sequencing platform driver. If
the match succeeds, the driver is responsible for powering-up the device
and calling pcie_pwrseq_device_enable() which will trigger a PCI bus
rescan as well as subscribe to PCI bus notifications.

When the device is detected and created, we'll make it consume the same
DT node that the platform device did. When the device is bound, we'll
create a device link between it and the parent power sequencing device.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/pcie/Kconfig         |  2 +
 drivers/pci/pcie/Makefile        |  2 +
 drivers/pci/pcie/pwrseq/Kconfig  |  8 +++
 drivers/pci/pcie/pwrseq/Makefile |  3 ++
 drivers/pci/pcie/pwrseq/pwrseq.c | 83 ++++++++++++++++++++++++++++++++
 include/linux/pcie-pwrseq.h      | 24 +++++++++
 6 files changed, 122 insertions(+)
 create mode 100644 drivers/pci/pcie/pwrseq/Kconfig
 create mode 100644 drivers/pci/pcie/pwrseq/Makefile
 create mode 100644 drivers/pci/pcie/pwrseq/pwrseq.c
 create mode 100644 include/linux/pcie-pwrseq.h

diff --git a/drivers/pci/pcie/Kconfig b/drivers/pci/pcie/Kconfig
index 8999fcebde6a..064843ab6866 100644
--- a/drivers/pci/pcie/Kconfig
+++ b/drivers/pci/pcie/Kconfig
@@ -155,3 +155,5 @@ config PCIE_EDR
 	  the PCI Firmware Specification r3.2.  Enable this if you want to
 	  support hybrid DPC model which uses both firmware and OS to
 	  implement DPC.
+
+source "drivers/pci/pcie/pwrseq/Kconfig"
diff --git a/drivers/pci/pcie/Makefile b/drivers/pci/pcie/Makefile
index 8de4ed5f98f1..ace91384113d 100644
--- a/drivers/pci/pcie/Makefile
+++ b/drivers/pci/pcie/Makefile
@@ -13,3 +13,5 @@ obj-$(CONFIG_PCIE_PME)		+= pme.o
 obj-$(CONFIG_PCIE_DPC)		+= dpc.o
 obj-$(CONFIG_PCIE_PTM)		+= ptm.o
 obj-$(CONFIG_PCIE_EDR)		+= edr.o
+
+obj-$(CONFIG_PCIEPORTBUS)	+= pwrseq/
diff --git a/drivers/pci/pcie/pwrseq/Kconfig b/drivers/pci/pcie/pwrseq/Kconfig
new file mode 100644
index 000000000000..010e31f432c9
--- /dev/null
+++ b/drivers/pci/pcie/pwrseq/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menuconfig PCIE_PWRSEQ
+	bool "PCIe Power Sequencing support"
+	depends on PCIEPORTBUS
+	help
+	  Say yes here to enable support for PCIe power sequencing
+	  drivers.
diff --git a/drivers/pci/pcie/pwrseq/Makefile b/drivers/pci/pcie/pwrseq/Makefile
new file mode 100644
index 000000000000..da99566594f6
--- /dev/null
+++ b/drivers/pci/pcie/pwrseq/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_PCIE_PWRSEQ)		+= pwrseq.o
diff --git a/drivers/pci/pcie/pwrseq/pwrseq.c b/drivers/pci/pcie/pwrseq/pwrseq.c
new file mode 100644
index 000000000000..c4f7958074c9
--- /dev/null
+++ b/drivers/pci/pcie/pwrseq/pwrseq.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2024 Linaro Ltd.
+ */
+
+#include <linux/cleanup.h>
+#include <linux/device.h>
+#include <linux/export.h>
+#include <linux/kernel.h>
+#include <linux/pci.h>
+#include <linux/pcie-pwrseq.h>
+#include <linux/property.h>
+#include <linux/slab.h>
+
+static int pcie_pwrseq_notify(struct notifier_block *nb, unsigned long action,
+			      void *data)
+{
+	struct pcie_pwrseq *pwrseq = container_of(nb, struct pcie_pwrseq, nb);
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
+int pcie_pwrseq_device_enable(struct pcie_pwrseq *pwrseq)
+{
+	if (!pwrseq->dev)
+		return -ENODEV;
+
+	pwrseq->nb.notifier_call = pcie_pwrseq_notify;
+	bus_register_notifier(&pci_bus_type, &pwrseq->nb);
+
+	pci_lock_rescan_remove();
+	pci_rescan_bus(to_pci_dev(pwrseq->dev->parent)->bus);
+	pci_unlock_rescan_remove();
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pcie_pwrseq_device_enable);
+
+void pcie_pwrseq_device_disable(struct pcie_pwrseq *pwrseq)
+{
+	bus_unregister_notifier(&pci_bus_type, &pwrseq->nb);
+}
+EXPORT_SYMBOL_GPL(pcie_pwrseq_device_disable);
+
+static void devm_pcie_pwrseq_device_disable(void *data)
+{
+	struct pcie_pwrseq *pwrseq = data;
+
+	pcie_pwrseq_device_disable(pwrseq);
+}
+
+int devm_pcie_pwrseq_device_enable(struct device *dev,
+				   struct pcie_pwrseq *pwrseq)
+{
+	int ret;
+
+	ret = pcie_pwrseq_device_enable(pwrseq);
+	if (ret)
+		return ret;
+
+	return devm_add_action_or_reset(dev, devm_pcie_pwrseq_device_disable,
+					pwrseq);
+}
+EXPORT_SYMBOL_GPL(devm_pcie_pwrseq_device_enable);
diff --git a/include/linux/pcie-pwrseq.h b/include/linux/pcie-pwrseq.h
new file mode 100644
index 000000000000..6abb5796754e
--- /dev/null
+++ b/include/linux/pcie-pwrseq.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2024 Linaro Ltd.
+ */
+
+#ifndef __PCIE_PWRSEQ_H__
+#define __PCIE_PWRSEQ_H__
+
+#include <linux/notifier.h>
+
+struct device;
+
+struct pcie_pwrseq {
+	struct notifier_block nb;
+	struct device *dev;
+	struct device_link *link;
+};
+
+int pcie_pwrseq_device_enable(struct pcie_pwrseq *pwrseq);
+void pcie_pwrseq_device_disable(struct pcie_pwrseq *pwrseq);
+int devm_pcie_pwrseq_device_enable(struct device *dev,
+				   struct pcie_pwrseq *pwrseq);
+
+#endif /* __PCIE_PWRSEQ_H__ */
-- 
2.40.1


