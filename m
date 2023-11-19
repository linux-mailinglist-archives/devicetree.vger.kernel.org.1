Return-Path: <devicetree+bounces-16915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAB37F0667
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CEDB1C20754
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54B58831;
	Sun, 19 Nov 2023 13:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLTZp+OH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEC963F
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBB94C433C7;
	Sun, 19 Nov 2023 13:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700400359;
	bh=gn56HK2d1OyTTEnjGs+yYxtFyImiBagPEv90zBmniFw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oLTZp+OHJtnhUROcIaDB4jhD9RrNHCEhHnfAWQQxyYURjFadduuvoaO3BWrfdFnjY
	 1/fiM4Y3bPBexCvrmCyJ5wg56/23OwBF46k27Q9R0mS0xCMcmqgSiULEWr+8pPJjrq
	 GrUz5kAVVgQKIQzhb/cUzAeZbOEFZqjmI/AkR0i/zCPlVEOx7q8fJVkjwnIId4vBtx
	 H1Bwz7LR097OfmJCam7jext9XkfuSwMkPSWcadp6eSK/V1zp3tuXbtQdOlNQGIvBbb
	 n4fjHW5bQAAtnkzJNjLNK6zIA7MCcsRKrz6P7KljeyrNy13f6bdbYT+26R47W1y4wl
	 6Z/2Kl35JMTUg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH 2/2] nvmem: Add Sophgo eFuse driver
Date: Sun, 19 Nov 2023 21:13:32 +0800
Message-Id: <20231119131332.999-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231119131332.999-1-jszhang@kernel.org>
References: <20231119131332.999-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sophgo SoCs such as CV1800B contain eFuses used to store
factory-programmed data such as calibration values for the built-in
ethernet PHY.

As for CV1800B, HW automatically loads the eFuse content into CONTENT
base registers which are organized as 32bit values exposed as MMIO.

Currently, add read support for the eFuse. This is a preparation step
for supporting the built-in ethernet phy.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 drivers/nvmem/Kconfig        | 13 +++++
 drivers/nvmem/Makefile       |  2 +
 drivers/nvmem/sophgo-efuse.c | 97 ++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 drivers/nvmem/sophgo-efuse.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 5bc9c4874fe3..f2de7338c6e9 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -298,6 +298,19 @@ config NVMEM_SNVS_LPGPR
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem-snvs-lpgpr.
 
+config NVMEM_SOPHGO_EFUSE
+	tristate "Sophgo eFuse support"
+	depends on ARCH_SOPHGO || COMPILE_TEST
+	default ARCH_SOPHGO
+	help
+	  Say y here to enable support for reading eFuses on Sophgo SoCs
+	  such as the CV1800B. These are e.g. used to store factory programmed
+	  calibration data required for the builtin ethernet PHY.
+
+	  This driver can also be built as a module. If so, the module will
+	  be called nvmem-sophgo-efuse.
+
+
 config NVMEM_SPMI_SDAM
 	tristate "SPMI SDAM Support"
 	depends on SPMI
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 423baf089515..f3602bb16efc 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -60,6 +60,8 @@ obj-$(CONFIG_NVMEM_SC27XX_EFUSE)	+= nvmem-sc27xx-efuse.o
 nvmem-sc27xx-efuse-y			:= sc27xx-efuse.o
 obj-$(CONFIG_NVMEM_SNVS_LPGPR)		+= nvmem_snvs_lpgpr.o
 nvmem_snvs_lpgpr-y			:= snvs_lpgpr.o
+obj-$(CONFIG_NVMEM_SOPHGO_EFUSE)	+= nvmem-sophgo-efuse.o
+nvmem-sophgo-efuse-y			:= sophgo-efuse.o
 obj-$(CONFIG_NVMEM_SPMI_SDAM)		+= nvmem_qcom-spmi-sdam.o
 nvmem_qcom-spmi-sdam-y			+= qcom-spmi-sdam.o
 obj-$(CONFIG_NVMEM_SPRD_EFUSE)		+= nvmem_sprd_efuse.o
diff --git a/drivers/nvmem/sophgo-efuse.c b/drivers/nvmem/sophgo-efuse.c
new file mode 100644
index 000000000000..3b4eb4d097e3
--- /dev/null
+++ b/drivers/nvmem/sophgo-efuse.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Sophgo SoC eFuse driver
+ *
+ * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
+ */
+
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/platform_device.h>
+
+#define CV1800B_EFUSE_CONTENT_BASE	0x100
+#define CV1800B_EFUSE_CONTENT_SIZE	0x100
+
+struct sophgo_efuses_priv {
+	void __iomem *base;
+	struct clk *clk;
+};
+
+static int sophgo_efuses_read(void *context, unsigned int offset, void *val,
+			     size_t bytes)
+{
+	struct sophgo_efuses_priv *priv = context;
+	u32 *dst = val;
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret < 0)
+		return ret;
+
+	while (bytes >= sizeof(u32)) {
+		*dst++ = readl_relaxed(priv->base + CV1800B_EFUSE_CONTENT_BASE + offset);
+		bytes -= sizeof(u32);
+		offset += sizeof(u32);
+	}
+
+	clk_disable_unprepare(priv->clk);
+
+	return 0;
+}
+
+static int sophgo_efuses_probe(struct platform_device *pdev)
+{
+	struct sophgo_efuses_priv *priv;
+	struct resource *res;
+	struct nvmem_config config = {
+		.dev = &pdev->dev,
+		.add_legacy_fixed_of_cells = true,
+		.read_only = true,
+		.reg_read = sophgo_efuses_read,
+		.stride = sizeof(u32),
+		.word_size = sizeof(u32),
+		.name = "sophgo_efuse_nvmem",
+		.id = NVMEM_DEVID_AUTO,
+		.root_only = true,
+	};
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	config.priv = priv;
+	config.size = CV1800B_EFUSE_CONTENT_SIZE;
+
+	return PTR_ERR_OR_ZERO(devm_nvmem_register(config.dev, &config));
+}
+
+static const struct of_device_id sophgo_efuses_of_match[] = {
+	{ .compatible = "sophgo,cv1800b-efuse", },
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, sophgo_efuses_of_match);
+
+static struct platform_driver sophgo_efuses_driver = {
+	.driver = {
+		.name = "sophgo_efuse",
+		.of_match_table = sophgo_efuses_of_match,
+	},
+	.probe = sophgo_efuses_probe,
+};
+
+module_platform_driver(sophgo_efuses_driver);
+
+MODULE_AUTHOR("Jisheng Zhang <jszhang@kernel.org>");
+MODULE_LICENSE("GPL");
-- 
2.42.0


