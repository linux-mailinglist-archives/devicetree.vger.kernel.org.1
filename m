Return-Path: <devicetree+bounces-107585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1898098F112
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 16:06:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2234283999
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 14:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DDA1A4E77;
	Thu,  3 Oct 2024 14:04:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [195.130.132.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5721A0B08
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 14:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727964289; cv=none; b=UcZsTRJX9sHlYpaYFib+mKswvZ7sorj/O4cGDrfzCzn7vywWK/jMzs5J7NYpQDzFDqQUkko9t7tl4ypAv1EKZ4slNWmTwcKvObcZSLvIyW3+TPu59xDATvHZhajJSbNK8YlMbkM00yRHCvDfU//z5XxK/TQF7ktzXvxHe2IqDdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727964289; c=relaxed/simple;
	bh=hOxylLVaYXdqYeZ6bRMoXYpQnP+Ov4wputxrANxU09s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jQvzH0YCOpIgXgYuzQvOjhG5s+JURPfTl/P0X3mCghomRuSANUCwYFK/4cDFQG5OEtE7UvThl93pofmnI6CL2HeDwKuHLsd6EM2KOTp7XPqhOB0+gOf7EibGENUJK4NYS7f1YYptkL1KO4u4FKz6ktnXeYybG/TJ+LClz/wUnK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:d4db:7463:4f08:3c82])
	by baptiste.telenet-ops.be with cmsmtp
	id Kq4d2D0085K8SYz01q4d5G; Thu, 03 Oct 2024 16:04:39 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swMRR-001CGX-3b;
	Thu, 03 Oct 2024 16:04:37 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swMRZ-006e9j-CQ;
	Thu, 03 Oct 2024 16:04:37 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v3 resend 2/7] nvmem: Add R-Car E-FUSE driver
Date: Thu,  3 Oct 2024 16:04:26 +0200
Message-Id: <563d35a3613c3356536978c0e5dc5ad5e47bbd7d.1727963347.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727963347.git.geert+renesas@glider.be>
References: <cover.1727963347.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

R-Car Gen4 SoCs contain fuses indicating hardware support or hardware
(e.g. tuning) parameters.  Add a driver to access the state of the
fuses.  This supports two types of hardware fuse providers:
  1. E-FUSE non-volatile memory accessible through the Pin Function
     Controller on R-Car V3U and S4-8,
  2. E-FUSE non-volatile memory accessible through OTP_MEM on R-Car V4H
     and V4M.

The state of the cells can be read using the NVMEM framework, either
from kernel space (e.g. by the Renesas UFSHCD driver), or from
userspace.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
v3:
  - Drop superfluous semicolon,
  - Drop the custom rcar_fuse_read() kernel API, in favor of the
    standard nvmem_cell_*() API,
  - Drop support for explicitly-instantiated platform devices with
    accompanying platform data, which would be needed to support fuses
    tightly integrated with the Pin Function Controller on R-Car Gen3
    SoCs.  It can be added when a use case shows up.
  - Move from drivers/soc/renesas/ to drivers/nvmem/,
  - Register the full register block that contains the E-FUSE data
    registers with the nvmem subsystem, but use keepouts to ignore all
    registers before the first or after the last documented data
    register.  Undocumented registers in between are still accessible.
  - Replace offset/nregs in rcar_fuse_data by start/end,
  - Use __ioread32_copy() helper,
  - Initialize most fields of struct nvmem_config in its declaration,
  - Rename nvmem device from "fuse" to "rcar-fuse",
  - Use NVMEM_DEVID_NONE,
  - Add an entry to the MAINTAINERS file,

v2:
  - Add Reviewed-by.
---
 MAINTAINERS                |   1 +
 drivers/nvmem/Kconfig      |  11 +++
 drivers/nvmem/Makefile     |   2 +
 drivers/nvmem/rcar-efuse.c | 142 +++++++++++++++++++++++++++++++++++++
 4 files changed, 156 insertions(+)
 create mode 100644 drivers/nvmem/rcar-efuse.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 2437c49c19440a96..b7ef2becb402f921 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2930,6 +2930,7 @@ F:	arch/arm/mach-shmobile/
 F:	arch/arm/mach-shmobile/
 F:	arch/arm64/boot/dts/renesas/
 F:	arch/riscv/boot/dts/renesas/
+F:	drivers/nvmem/rcar-efuse.c
 F:	drivers/pmdomain/renesas/
 F:	drivers/soc/renesas/
 F:	include/linux/soc/renesas/
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d2c384f58028dce4..8671b7c974b933e1 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -246,6 +246,17 @@ config NVMEM_RAVE_SP_EEPROM
 	help
 	  Say y here to enable Rave SP EEPROM support.
 
+config NVMEM_RCAR_EFUSE
+	tristate "Renesas R-Car Gen4 E-FUSE support"
+	depends on (ARCH_RENESAS && ARM64) || COMPILE_TEST
+	depends on NVMEM
+	help
+	  Enable support for reading the fuses in the E-FUSE or OTP
+	  non-volatile memory block on Renesas R-Car Gen4 SoCs.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called nvmem-rcar-efuse.
+
 config NVMEM_RMEM
 	tristate "Reserved Memory Based Driver Support"
 	depends on HAS_IOMEM
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index cdd01fbf1313b58c..5b77bbb6488bf89b 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -52,6 +52,8 @@ obj-$(CONFIG_NVMEM_QCOM_SEC_QFPROM)	+= nvmem_sec_qfprom.o
 nvmem_sec_qfprom-y			:= sec-qfprom.o
 obj-$(CONFIG_NVMEM_RAVE_SP_EEPROM)	+= nvmem-rave-sp-eeprom.o
 nvmem-rave-sp-eeprom-y			:= rave-sp-eeprom.o
+obj-$(CONFIG_NVMEM_RCAR_EFUSE)		+= nvmem-rcar-efuse.o
+nvmem-rcar-efuse-y			:= rcar-efuse.o
 obj-$(CONFIG_NVMEM_RMEM) 		+= nvmem-rmem.o
 nvmem-rmem-y				:= rmem.o
 obj-$(CONFIG_NVMEM_ROCKCHIP_EFUSE)	+= nvmem_rockchip_efuse.o
diff --git a/drivers/nvmem/rcar-efuse.c b/drivers/nvmem/rcar-efuse.c
new file mode 100644
index 0000000000000000..f24bdb9cb5a7296f
--- /dev/null
+++ b/drivers/nvmem/rcar-efuse.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Renesas R-Car E-FUSE/OTP Driver
+ *
+ * Copyright (C) 2024 Glider bv
+ */
+
+#include <linux/device.h>
+#include <linux/export.h>
+#include <linux/io.h>
+#include <linux/mod_devicetable.h>
+#include <linux/nvmem-provider.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/property.h>
+
+struct rcar_fuse {
+	struct nvmem_keepout keepouts[2];
+	struct nvmem_device *nvmem;
+	struct device *dev;
+	void __iomem *base;
+};
+
+struct rcar_fuse_data {
+	unsigned int bank;	/* 0: PFC + E-FUSE, 1: OPT_MEM + E-FUSE */
+	unsigned int start;	/* inclusive */
+	unsigned int end;	/* exclusive */
+};
+
+static int rcar_fuse_reg_read(void *priv, unsigned int offset, void *val,
+			      size_t bytes)
+{
+	struct rcar_fuse *fuse = priv;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(fuse->dev);
+	if (ret < 0)
+		return ret;
+
+	__ioread32_copy(val, fuse->base + offset, bytes / 4);
+
+	pm_runtime_put(fuse->dev);
+
+	return 0;
+}
+
+static int rcar_fuse_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	const struct rcar_fuse_data *data = device_get_match_data(dev);
+	struct nvmem_config config = {
+		.dev = dev,
+		.name = "rcar-fuse",
+		.id = NVMEM_DEVID_NONE,
+		.owner = THIS_MODULE,
+		.type = NVMEM_TYPE_OTP,
+		.read_only = true,
+		.root_only = true,
+		.reg_read = rcar_fuse_reg_read,
+		.word_size = 4,
+		.stride = 4,
+	};
+	struct rcar_fuse *fuse;
+	struct resource *res;
+	int ret;
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret < 0)
+		return ret;
+
+	fuse = devm_kzalloc(dev, sizeof(*fuse), GFP_KERNEL);
+	if (!fuse)
+		return -ENOMEM;
+
+	fuse->base = devm_platform_get_and_ioremap_resource(pdev, data->bank,
+							    &res);
+	if (IS_ERR(fuse->base))
+		return PTR_ERR(fuse->base);
+
+	fuse->dev = dev;
+	fuse->keepouts[0].start = 0;
+	fuse->keepouts[0].end = data->start;
+	fuse->keepouts[1].start = data->end;
+	fuse->keepouts[1].end = resource_size(res);
+
+	config.keepout = fuse->keepouts;
+	config.nkeepout = ARRAY_SIZE(fuse->keepouts);
+	config.size = resource_size(res);
+	config.priv = fuse;
+
+	fuse->nvmem = devm_nvmem_register(dev, &config);
+	if (IS_ERR(fuse->nvmem))
+		return dev_err_probe(dev, PTR_ERR(fuse->nvmem),
+				     "Failed to register NVMEM device\n");
+
+	return 0;
+}
+
+static const struct rcar_fuse_data rcar_fuse_v3u = {
+	.bank = 0,
+	.start = 0x0c0,
+	.end = 0x0e8,
+};
+
+static const struct rcar_fuse_data rcar_fuse_s4 = {
+	.bank = 0,
+	.start = 0x0c0,
+	.end = 0x14c,
+};
+
+static const struct rcar_fuse_data rcar_fuse_v4h = {
+	.bank = 1,
+	.start = 0x100,
+	.end = 0x1a0,
+};
+
+static const struct rcar_fuse_data rcar_fuse_v4m = {
+	.bank = 1,
+	.start = 0x100,
+	.end = 0x110,
+};
+
+static const struct of_device_id rcar_fuse_match[] = {
+	{ .compatible = "renesas,r8a779a0-efuse", .data = &rcar_fuse_v3u },
+	{ .compatible = "renesas,r8a779f0-efuse", .data = &rcar_fuse_s4 },
+	{ .compatible = "renesas,r8a779g0-otp", .data = &rcar_fuse_v4h },
+	{ .compatible = "renesas,r8a779h0-otp", .data = &rcar_fuse_v4m },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver rcar_fuse_driver = {
+	.probe = rcar_fuse_probe,
+	.driver = {
+		.name = "rcar_fuse",
+		.of_match_table = rcar_fuse_match,
+	},
+};
+module_platform_driver(rcar_fuse_driver);
+
+MODULE_DESCRIPTION("Renesas R-Car E-FUSE/OTP driver");
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Geert Uytterhoeven");
-- 
2.34.1


