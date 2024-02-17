Return-Path: <devicetree+bounces-43006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DEF858F84
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 14:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A1032828D1
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 13:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054717A733;
	Sat, 17 Feb 2024 13:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMlbF2Kb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE36657B6;
	Sat, 17 Feb 2024 13:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708174881; cv=none; b=bXXNnmz+WpQIcuwN2vXi67yNwsILTJNTlDK/WBkOhuvSXKmaFkPjMqJQmmZGC1Jf77H5YzbZoUQEWQXTmaWKVjrPTBzBm6dcxSISnMfAHye9x6u/6sLC5xFZrzipW9pNbH3qmAOF8c5bMvDIBFMvdLxUmoZSdHyVkgH2WlSftEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708174881; c=relaxed/simple;
	bh=tv2Xuz6CpMKcrJjZYSehkqKc6XHdPD8PJ9seVNpS/PM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fP9uxJWuDJyBo8xmXvJA8Wuwk6G9yZ0Z75QiTqDWju2NL3gyWVUACCS0n2gsQ/hPj0JPlFwmTDv9xgJKw/JCQujaHn0aIxLl/WrfAikhsXvuCa4vCIPr1M408KCYQh4y72YojPSmCngyL5ZctfAHojE/bBTntxjo9mO6gsKJa+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMlbF2Kb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D960C43390;
	Sat, 17 Feb 2024 13:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708174881;
	bh=tv2Xuz6CpMKcrJjZYSehkqKc6XHdPD8PJ9seVNpS/PM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BMlbF2KbqoYoHEVtGBltaGco5/Ej98kONYdbD4i1vqWWiLtWSVkrtprPAQgtFxwXQ
	 w749OOTlG0hP8f3NwZmp0MHzQGj1RYInid7wg+YDTSg8fupCytmGoX26z8DFBFuy0Q
	 yTwhynpQ5627OOP0dkjwBPF2BmB8Wndw8FYVod//eaAXWUd4Zhv8tZgj8tWonVk8m2
	 OLDG8nhgJDLteZtsabzNRy7qXnMH0mOYfor/nxoIuqqfFFAmWR4FowkmfyemR/rW5d
	 DkWs6ou+R6RMlVCbWTs8drNra6x9Yt16MsWwiJubJpDQ1MYKfJc+FO+QuAXpwDLuTR
	 Vlt3xjT+fs5ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84108C48BC3;
	Sat, 17 Feb 2024 13:01:21 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Sat, 17 Feb 2024 21:00:55 +0800
Subject: [PATCH v4 2/4] mmc: dw_mmc: add support for hi3798mv200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-b4-mmc-hi3798mv200-v4-2-0fdd9bd48532@outlook.com>
References: <20240217-b4-mmc-hi3798mv200-v4-0-0fdd9bd48532@outlook.com>
In-Reply-To: <20240217-b4-mmc-hi3798mv200-v4-0-0fdd9bd48532@outlook.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, 
 Jaehoon Chung <jh80.chung@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Igor Opaniuk <igor.opaniuk@linaro.org>, 
 tianshuliang <tianshuliang@hisilicon.com>, David Yang <mmyangfl@gmail.com>, 
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708174876; l=8914;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=ZXUq4LugZ7YohpARkO8qzS8uuAtt58OsC2QWLmIjkWE=;
 b=4Fe+/y8j5yWXjyNtSMK8tSzRpKFhjOrYlZ45n6bPI8cohsLsgcwZZNjwGb1DQ0UggPomVlcJ1
 XaVrMONJNGNBMIr+PokyN2gx7WN+MtTcMLaD4XEsiS83D70wkS/2hNH
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received:
 by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
Reply-To: <forbidden405@outlook.com>

From: Yang Xiwen <forbidden405@outlook.com>

Add support for Hi3798MV200 specific extension.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 drivers/mmc/host/Kconfig              |   9 ++
 drivers/mmc/host/Makefile             |   1 +
 drivers/mmc/host/dw_mmc-hi3798mv200.c | 235 ++++++++++++++++++++++++++++++++++
 3 files changed, 245 insertions(+)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 81f2c4e05287..aebc587f77a7 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -798,6 +798,15 @@ config MMC_DW_HI3798CV200
 	  Synopsys DesignWare Memory Card Interface driver. Select this option
 	  for platforms based on HiSilicon Hi3798CV200 SoC.
 
+config MMC_DW_HI3798MV200
+	tristate "Hi3798MV200 specific extensions for Synopsys DW Memory Card Interface"
+	depends on MMC_DW
+	select MMC_DW_PLTFM
+	help
+	  This selects support for HiSilicon Hi3798MV200 SoC specific extensions to the
+	  Synopsys DesignWare Memory Card Interface driver. Select this option
+	  for platforms based on HiSilicon Hi3798MV200 SoC.
+
 config MMC_DW_K3
 	tristate "K3 specific extensions for Synopsys DW Memory Card Interface"
 	depends on MMC_DW
diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
index d0be4465f3ec..f53f86d200ac 100644
--- a/drivers/mmc/host/Makefile
+++ b/drivers/mmc/host/Makefile
@@ -51,6 +51,7 @@ obj-$(CONFIG_MMC_DW_PLTFM)	+= dw_mmc-pltfm.o
 obj-$(CONFIG_MMC_DW_BLUEFIELD)	+= dw_mmc-bluefield.o
 obj-$(CONFIG_MMC_DW_EXYNOS)	+= dw_mmc-exynos.o
 obj-$(CONFIG_MMC_DW_HI3798CV200) += dw_mmc-hi3798cv200.o
+obj-$(CONFIG_MMC_DW_HI3798MV200) += dw_mmc-hi3798mv200.o
 obj-$(CONFIG_MMC_DW_K3)		+= dw_mmc-k3.o
 obj-$(CONFIG_MMC_DW_PCI)	+= dw_mmc-pci.o
 obj-$(CONFIG_MMC_DW_ROCKCHIP)	+= dw_mmc-rockchip.o
diff --git a/drivers/mmc/host/dw_mmc-hi3798mv200.c b/drivers/mmc/host/dw_mmc-hi3798mv200.c
new file mode 100644
index 000000000000..b7d1d1a31a3f
--- /dev/null
+++ b/drivers/mmc/host/dw_mmc-hi3798mv200.c
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Modified from dw_mmc-hi3798cv200.c
+ *
+ * Copyright (c) 2024 Yang Xiwen <forbidden405@outlook.com>
+ * Copyright (c) 2018 HiSilicon Technologies Co., Ltd.
+ */
+
+#include <linux/clk.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mmc/host.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include "dw_mmc.h"
+#include "dw_mmc-pltfm.h"
+
+#define SDMMC_TUNING_CTRL	0x118
+#define SDMMC_TUNING_FIND_EDGE	BIT(5)
+
+#define ALL_INT_CLR		0x1ffff
+
+/* DLL ctrl reg */
+#define SAP_DLL_CTRL_DLLMODE	BIT(16)
+
+struct dw_mci_hi3798mv200_priv {
+	struct clk *sample_clk;
+	struct clk *drive_clk;
+	struct regmap *sap_dll_reg;
+	struct mmc_clk_phase_map phase_map;
+};
+
+static void dw_mci_hi3798mv200_set_ios(struct dw_mci *host, struct mmc_ios *ios)
+{
+	struct dw_mci_hi3798mv200_priv *priv = host->priv;
+	struct mmc_clk_phase phase = priv->phase_map.phase[ios->timing];
+	u32 val;
+
+	val = mci_readl(host, ENABLE_SHIFT);
+	if (ios->timing == MMC_TIMING_MMC_DDR52
+	    || ios->timing == MMC_TIMING_UHS_DDR50)
+		val |= SDMMC_ENABLE_PHASE;
+	else
+		val &= ~SDMMC_ENABLE_PHASE;
+	mci_writel(host, ENABLE_SHIFT, val);
+
+	val = mci_readl(host, DDR_REG);
+	if (ios->timing == MMC_TIMING_MMC_HS400)
+		val |= SDMMC_DDR_HS400;
+	else
+		val &= ~SDMMC_DDR_HS400;
+	mci_writel(host, DDR_REG, val);
+
+	if (clk_set_rate(host->ciu_clk, ios->clock))
+		dev_warn(host->dev, "Failed to set rate to %u\n", ios->clock);
+	else
+		// CLK_MUX_ROUND_NEAREST is enabled for this clock
+		// The actual clock rate is not what we setted, but a rounded value
+		// so we should get the rate once again
+		host->bus_hz = clk_get_rate(host->ciu_clk);
+
+	if (phase.valid) {
+		clk_set_phase(priv->drive_clk, phase.out_deg);
+		clk_set_phase(priv->sample_clk, phase.in_deg);
+	} else {
+		dev_warn(host->dev,
+			 "The phase entry for timing mode %d is missing in device tree.\n",
+			 ios->timing);
+	}
+}
+
+static inline int dw_mci_hi3798mv200_enable_tuning(struct dw_mci_slot *slot)
+{
+	struct dw_mci_hi3798mv200_priv *priv = slot->host->priv;
+	struct regmap *dll_reg = priv->sap_dll_reg;
+
+	return regmap_clear_bits(dll_reg, 0, SAP_DLL_CTRL_DLLMODE);
+}
+
+static inline int dw_mci_hi3798mv200_disable_tuning(struct dw_mci_slot *slot)
+{
+	struct dw_mci_hi3798mv200_priv *priv = slot->host->priv;
+	struct regmap *dll_reg = priv->sap_dll_reg;
+
+	return regmap_set_bits(dll_reg, 0, SAP_DLL_CTRL_DLLMODE);
+}
+
+static int dw_mci_hi3798mv200_execute_tuning_mix_mode(struct dw_mci_slot *slot,
+					     u32 opcode)
+{
+	static const int degrees[] = { 0, 45, 90, 135, 180, 225, 270, 315 };
+	struct dw_mci *host = slot->host;
+	struct dw_mci_hi3798mv200_priv *priv = host->priv;
+	int raise_point = -1, fall_point = -1;
+	int err, prev_err = -1;
+	int found = 0;
+	int regval;
+	int i;
+	int ret;
+
+	// enable tuning
+	ret = dw_mci_hi3798mv200_enable_tuning(slot);
+	if (ret < 0)
+		return ret;
+	for (i = 0; i < ARRAY_SIZE(degrees); i++) {
+		clk_set_phase(priv->sample_clk, degrees[i]);
+		mci_writel(host, RINTSTS, ALL_INT_CLR);
+
+		err = mmc_send_tuning(slot->mmc, opcode, NULL);
+		if (!err) {
+			regval = mci_readl(host, TUNING_CTRL);
+			if (regval & SDMMC_TUNING_FIND_EDGE)
+				err = 1;
+			else
+				found = 1;
+		};
+
+		if (i > 0) {
+			if (err && !prev_err)
+				fall_point = i - 1;
+			if (!err && prev_err)
+				raise_point = i;
+		}
+
+		if (raise_point != -1 && fall_point != -1)
+			goto tuning_out;
+
+		prev_err = err;
+		err = 0;
+	}
+
+tuning_out:
+	ret = dw_mci_hi3798mv200_disable_tuning(slot);
+	if (ret < 0)
+		return ret;
+	if (found) {
+		if (raise_point == -1)
+			raise_point = 0;
+		if (fall_point == -1)
+			fall_point = ARRAY_SIZE(degrees) - 1;
+		if (fall_point < raise_point) {
+			if ((raise_point + fall_point) >
+			    (ARRAY_SIZE(degrees) - 1))
+				i = fall_point / 2;
+			else
+				i = (raise_point + ARRAY_SIZE(degrees) - 1) / 2;
+		} else {
+			i = (raise_point + fall_point) / 2;
+		}
+
+		// use the same phase table for both HS200 and HS400
+		priv->phase_map.phase[MMC_TIMING_MMC_HS200].in_deg = degrees[i];
+		priv->phase_map.phase[MMC_TIMING_MMC_HS400].in_deg = degrees[i];
+
+		clk_set_phase(priv->sample_clk, degrees[i]);
+		dev_dbg(host->dev, "Tuning clk_sample[%d, %d], set[%d]\n",
+			raise_point, fall_point, degrees[i]);
+		err = 0;
+	} else {
+		dev_err(host->dev, "No valid clk_sample shift! use default\n");
+		err = -EINVAL;
+	}
+
+	mci_writel(host, RINTSTS, ALL_INT_CLR);
+	return err;
+}
+
+static int dw_mci_hi3798mv200_init(struct dw_mci *host)
+{
+	struct dw_mci_hi3798mv200_priv *priv;
+	struct device_node *np = host->dev->of_node;
+
+	priv = devm_kzalloc(host->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	mmc_of_parse_clk_phase(host->dev, &priv->phase_map);
+
+	priv->sample_clk = devm_clk_get_enabled(host->dev, "ciu-sample");
+	if (IS_ERR(priv->sample_clk))
+		return dev_err_probe(host->dev, PTR_ERR(priv->sample_clk),
+				     "failed to get enabled ciu-sample clock\n");
+
+	priv->drive_clk = devm_clk_get_enabled(host->dev, "ciu-drive");
+	if (IS_ERR(priv->drive_clk))
+		return dev_err_probe(host->dev, PTR_ERR(priv->drive_clk),
+				     "failed to get enabled ciu-drive clock\n");
+
+	priv->sap_dll_reg = syscon_regmap_lookup_by_phandle(np, "hisilicon,sap-dll-reg");
+	if (IS_ERR(priv->sap_dll_reg))
+		return dev_err_probe(host->dev, PTR_ERR(priv->sap_dll_reg),
+				     "failed to get sap-dll-reg\n");
+
+	host->priv = priv;
+	return 0;
+}
+
+static const struct dw_mci_drv_data hi3798mv200_data = {
+	.common_caps = MMC_CAP_CMD23,
+	.init = dw_mci_hi3798mv200_init,
+	.set_ios = dw_mci_hi3798mv200_set_ios,
+	.execute_tuning = dw_mci_hi3798mv200_execute_tuning_mix_mode,
+};
+
+static const struct of_device_id dw_mci_hi3798mv200_match[] = {
+	{ .compatible = "hisilicon,hi3798mv200-dw-mshc" },
+	{},
+};
+
+static int dw_mci_hi3798mv200_probe(struct platform_device *pdev)
+{
+	return dw_mci_pltfm_register(pdev, &hi3798mv200_data);
+}
+
+static void dw_mci_hi3798mv200_remove(struct platform_device *pdev)
+{
+	dw_mci_pltfm_remove(pdev);
+}
+
+MODULE_DEVICE_TABLE(of, dw_mci_hi3798mv200_match);
+static struct platform_driver dw_mci_hi3798mv200_driver = {
+	.probe = dw_mci_hi3798mv200_probe,
+	.remove_new = dw_mci_hi3798mv200_remove,
+	.driver = {
+		.name = "dwmmc_hi3798mv200",
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
+		.of_match_table = dw_mci_hi3798mv200_match,
+	},
+};
+module_platform_driver(dw_mci_hi3798mv200_driver);
+
+MODULE_DESCRIPTION("HiSilicon Hi3798MV200 Specific DW-MSHC Driver Extension");
+MODULE_LICENSE("GPL");

-- 
2.43.0


