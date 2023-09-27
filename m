Return-Path: <devicetree+bounces-3769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8A77B0155
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7692D282D73
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61453273D0;
	Wed, 27 Sep 2023 10:08:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F07733F1
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:08:18 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61481192;
	Wed, 27 Sep 2023 03:08:15 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 60E887F98;
	Wed, 27 Sep 2023 18:08:08 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 18:08:08 +0800
Received: from ubuntu.localdomain (113.72.144.128) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 18:08:07 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Daire McNamara <daire.mcnamara@microchip.com>, Conor Dooley
	<conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pci@vger.kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>, Minda Chen
	<minda.chen@starfivetech.com>
Subject: [PATCH v7 02/19] PCI: microchip: Move pcie-microchip-host.c to plda directory
Date: Wed, 27 Sep 2023 18:07:45 +0800
Message-ID: <20230927100802.46620-3-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230927100802.46620-1-minda.chen@starfivetech.com>
References: <20230927100802.46620-1-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [113.72.144.128]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

For Microchip Polarfire PCIe host is PLDA XpressRich IP,
move to plda directory. Prepare for refactor the codes.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 MAINTAINERS                                        |  4 ++--
 drivers/pci/controller/Kconfig                     |  9 +--------
 drivers/pci/controller/Makefile                    |  2 +-
 drivers/pci/controller/plda/Kconfig                | 14 ++++++++++++++
 drivers/pci/controller/plda/Makefile               |  2 ++
 .../controller/{ => plda}/pcie-microchip-host.c    |  2 +-
 6 files changed, 21 insertions(+), 12 deletions(-)
 create mode 100644 drivers/pci/controller/plda/Kconfig
 create mode 100644 drivers/pci/controller/plda/Makefile
 rename drivers/pci/controller/{ => plda}/pcie-microchip-host.c (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index b19995690904..30bdfceaf974 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16647,7 +16647,7 @@ M:	Daire McNamara <daire.mcnamara@microchip.com>
 L:	linux-pci@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/pci/microchip*
-F:	drivers/pci/controller/*microchip*
+F:	drivers/pci/controller/plda/*microchip*
 
 PCIE DRIVER FOR QUALCOMM MSM
 M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
@@ -18444,7 +18444,7 @@ F:	drivers/char/hw_random/mpfs-rng.c
 F:	drivers/clk/microchip/clk-mpfs*.c
 F:	drivers/i2c/busses/i2c-microchip-corei2c.c
 F:	drivers/mailbox/mailbox-mpfs.c
-F:	drivers/pci/controller/pcie-microchip-host.c
+F:	drivers/pci/controller/plda/pcie-microchip-host.c
 F:	drivers/pwm/pwm-microchip-core.c
 F:	drivers/reset/reset-mpfs.c
 F:	drivers/rtc/rtc-mpfs.c
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index c0c3f2824990..80e23013c229 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -215,14 +215,6 @@ config PCIE_MT7621
 	help
 	  This selects a driver for the MediaTek MT7621 PCIe Controller.
 
-config PCIE_MICROCHIP_HOST
-	tristate "Microchip AXI PCIe controller"
-	depends on PCI_MSI && OF
-	select PCI_HOST_COMMON
-	help
-	  Say Y here if you want kernel to support the Microchip AXI PCIe
-	  Host Bridge driver.
-
 config PCI_HYPERV_INTERFACE
 	tristate "Microsoft Hyper-V PCI Interface"
 	depends on ((X86 && X86_64) || ARM64) && HYPERV && PCI_MSI
@@ -345,4 +337,5 @@ config PCIE_XILINX_CPM
 source "drivers/pci/controller/cadence/Kconfig"
 source "drivers/pci/controller/dwc/Kconfig"
 source "drivers/pci/controller/mobiveil/Kconfig"
+source "drivers/pci/controller/plda/Kconfig"
 endmenu
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index 37c8663de7fe..93236dc97b21 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -32,7 +32,6 @@ obj-$(CONFIG_PCIE_ROCKCHIP_EP) += pcie-rockchip-ep.o
 obj-$(CONFIG_PCIE_ROCKCHIP_HOST) += pcie-rockchip-host.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
 obj-$(CONFIG_PCIE_MEDIATEK_GEN3) += pcie-mediatek-gen3.o
-obj-$(CONFIG_PCIE_MICROCHIP_HOST) += pcie-microchip-host.o
 obj-$(CONFIG_VMD) += vmd.o
 obj-$(CONFIG_PCIE_BRCMSTB) += pcie-brcmstb.o
 obj-$(CONFIG_PCI_LOONGSON) += pci-loongson.o
@@ -43,6 +42,7 @@ obj-$(CONFIG_PCIE_MT7621) += pcie-mt7621.o
 # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
 obj-y				+= dwc/
 obj-y				+= mobiveil/
+obj-y				+= plda/
 
 
 # The following drivers are for devices that use the generic ACPI
diff --git a/drivers/pci/controller/plda/Kconfig b/drivers/pci/controller/plda/Kconfig
new file mode 100644
index 000000000000..5cb3be4fc98c
--- /dev/null
+++ b/drivers/pci/controller/plda/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menu "PLDA-based PCIe controllers"
+	depends on PCI
+
+config PCIE_MICROCHIP_HOST
+	tristate "Microchip AXI PCIe controller"
+	depends on PCI_MSI && OF
+	select PCI_HOST_COMMON
+	help
+	  Say Y here if you want kernel to support the Microchip AXI PCIe
+	  Host Bridge driver.
+
+endmenu
diff --git a/drivers/pci/controller/plda/Makefile b/drivers/pci/controller/plda/Makefile
new file mode 100644
index 000000000000..e1a265cbf91c
--- /dev/null
+++ b/drivers/pci/controller/plda/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PCIE_MICROCHIP_HOST) += pcie-microchip-host.o
diff --git a/drivers/pci/controller/pcie-microchip-host.c b/drivers/pci/controller/plda/pcie-microchip-host.c
similarity index 99%
rename from drivers/pci/controller/pcie-microchip-host.c
rename to drivers/pci/controller/plda/pcie-microchip-host.c
index 137fb8570ba2..cb09a8137e25 100644
--- a/drivers/pci/controller/pcie-microchip-host.c
+++ b/drivers/pci/controller/plda/pcie-microchip-host.c
@@ -18,7 +18,7 @@
 #include <linux/pci-ecam.h>
 #include <linux/platform_device.h>
 
-#include "../pci.h"
+#include "../../pci.h"
 
 /* Number of MSI IRQs */
 #define MC_MAX_NUM_MSI_IRQS			32
-- 
2.17.1


