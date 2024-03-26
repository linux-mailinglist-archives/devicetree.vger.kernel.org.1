Return-Path: <devicetree+bounces-53656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F54B88CFAA
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 22:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DFBF1C34DF6
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866FA13DBA8;
	Tue, 26 Mar 2024 21:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="waZ1R31y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A9913D898
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 21:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711487323; cv=none; b=WlJueu7hj0p09T8I/13xQTAfN1bsZ0KOJrpWE5eZuzjSrajIcPr+LYpxMePWQ622Zm3B0ZtmjwmujFYlIb5RmGBxuoQxollUX0cljn50pvVm7++ZWPAfCF3YRcdNb/Xg9owqULASTKcMtvSB0WVVqVkeok7fTeInsV7N+i9F/xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711487323; c=relaxed/simple;
	bh=3GxICnwlFxPTq7M5fbgnwZ7b5zkJd08JGwQSsk7alcs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WBCbOyaKMXu4k/vkYeu3TRGo6TxuKw6vNzD0/3OoSbDR1qZIfBOxAs4fkXB6fJr3UsmlL/jcT4ILGRUBd7r+YVWfqgpR3O7MWTx5JWuy5YqQWWMAIS+v1GR+jx99H7mo8beBAIK81C8uURjtWYz9p54Z/VkrUanMSeVABMjS9ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=waZ1R31y; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a47385a4379so43031766b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711487318; x=1712092118; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KZis7wApwGgg62TFLLEl2EnnA/zDwZbS8BmWgHbI4sI=;
        b=waZ1R31yB7mOa+kpBbUv67qkWIM3q0mGX+iVV7rRthN5+e9zRv/VwIrnOwIMrTARH6
         gKa1hg6wex49ioWub24kimLVc8WiWLlKO2NDB0VigD+1JaN9Z/ZldcIegvMRIJJPZR9W
         309F1OtbXMim2sKaS/8sc6HB8I8Z5IODBtbBZf0ZTizPX9LfmMdOcNKs4VptS9m6ROhC
         N95IlFuPemGhxKHaB2DX8iocBsH6qkl1fSlV7VPKzYiBudnvB8S7dSnQRES2+B73G/Wu
         RA8RGeoXUj018C+GLPeZEu32K/LhGJ6db10BhmJz4nCp9uJw0cVPmzFncE+CdXMATov1
         03tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711487318; x=1712092118;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZis7wApwGgg62TFLLEl2EnnA/zDwZbS8BmWgHbI4sI=;
        b=oItr9skUTuNt3+91E1KhnE5ywsf4gCNqXUKplL60Ijbhx8KTBfp3tudEOW3LLuQWUZ
         b+pFW2sUe56RhrncoI8+hNs+TOI2SyHdaAvQAJpIvEbzDKtryN+LBnYmhnmeb+UgwNeD
         oRHzvUAdq1Pkbv7F1QNaizycIxy3hiXFLBy4l/HTzQBJSi7GOz3INKL81ngfu01mAt6H
         7XVaUhhkFXGxo7Qo6zpNMm7WADa5KYqaqggpdBgl2BYiw8lAsX3hjsCBojqdTnf++SFZ
         7HiiS0vBmDLweHacM5g5iDXa66ExxRnpNup/Q+5qTDideaQAKz/WcwaWLC+ilMBq+t6G
         x1/A==
X-Forwarded-Encrypted: i=1; AJvYcCXn3Jn95vYnNRLM3unpXZHbYuKShw63yWqiU3g7FfSNyrOnfBvvAsROx38b1eWrI5WiosciYIXC2Z+oEJP/hccQzi18S54p/d6rwQ==
X-Gm-Message-State: AOJu0YxsTwKx2lsiIamWAp2yxW/42VknxeQzqq8HkSVMWeK4h5h04CKb
	U2aaP9hyRMR0hKkGsAR9DCo+MjBCb8q4i+GiZDfcH3wRgmKQdu5pc5wuinHVvjY=
X-Google-Smtp-Source: AGHT+IF/5f47mhZaYp8rnwCF8pFXdYL8rlrsENZmIG1lZ0rioIcTmGj58XawRSzhDhdk6bplUJ3LkA==
X-Received: by 2002:a17:906:169a:b0:a4c:ea23:1e4a with SMTP id s26-20020a170906169a00b00a4cea231e4amr2185527ejd.30.1711487318451;
        Tue, 26 Mar 2024 14:08:38 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090612d300b00a46cffe6d06sm4621697ejb.42.2024.03.26.14.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 14:08:38 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Mar 2024 22:08:25 +0100
Subject: [PATCH v3 3/5] clk: qcom: Add QCM2290 GPU clock controller driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240219-topic-rb1_gpu-v3-3-86f67786539a@linaro.org>
References: <20240219-topic-rb1_gpu-v3-0-86f67786539a@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v3-0-86f67786539a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711487311; l=13178;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3GxICnwlFxPTq7M5fbgnwZ7b5zkJd08JGwQSsk7alcs=;
 b=bZdU+gOzTqtfJTwjYGyL6849lNCPzKmxZRjJRfPTsNc7Zk85YInEuKeoM+vwYQckOIn2Jq4HZ
 DKM7ybAz/D6DG36Of8XVt/Vj5g6QFeZxDd/kLH1zRrG5fG79/2iDJ6W
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Add a driver for the GPU clock controller block found on the QCM2290 SoC.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/Kconfig         |   9 +
 drivers/clk/qcom/Makefile        |   1 +
 drivers/clk/qcom/gpucc-qcm2290.c | 423 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 433 insertions(+)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 8ab08e7b5b6c..c7ec41a6bd7f 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -65,6 +65,15 @@ config CLK_X1E80100_TCSRCC
 	  Support for the TCSR clock controller on X1E80100 devices.
 	  Say Y if you want to use peripheral devices such as SD/UFS.
 
+config CLK_QCM2290_GPUCC
+	tristate "QCM2290 Graphics Clock Controller"
+	depends on ARM64 || COMPILE_TEST
+	select CLK_QCM2290_GCC
+	help
+	  Support for the graphics clock controller on QCM2290 devices.
+	  Say Y if you want to support graphics controller devices and
+	  functionality such as 3D graphics.
+
 config QCOM_A53PLL
 	tristate "MSM8916 A53 PLL"
 	help
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index dec5b6db6860..cee261eb5144 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CLK_X1E80100_DISPCC) += dispcc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_GCC) += gcc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_GPUCC) += gpucc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_TCSRCC) += tcsrcc-x1e80100.o
+obj-$(CONFIG_CLK_QCM2290_GPUCC) += gpucc-qcm2290.o
 obj-$(CONFIG_IPQ_APSS_PLL) += apss-ipq-pll.o
 obj-$(CONFIG_IPQ_APSS_6018) += apss-ipq6018.o
 obj-$(CONFIG_IPQ_GCC_4019) += gcc-ipq4019.o
diff --git a/drivers/clk/qcom/gpucc-qcm2290.c b/drivers/clk/qcom/gpucc-qcm2290.c
new file mode 100644
index 000000000000..b6e20d63ac85
--- /dev/null
+++ b/drivers/clk/qcom/gpucc-qcm2290.c
@@ -0,0 +1,423 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2024, Linaro Limited
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_clock.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
+
+#include "clk-alpha-pll.h"
+#include "clk-branch.h"
+#include "clk-rcg.h"
+#include "clk-regmap.h"
+#include "clk-regmap-divider.h"
+#include "clk-regmap-mux.h"
+#include "clk-regmap-phy-mux.h"
+#include "gdsc.h"
+#include "reset.h"
+
+enum {
+	DT_GCC_AHB_CLK,
+	DT_BI_TCXO,
+	DT_GCC_GPU_GPLL0_CLK_SRC,
+	DT_GCC_GPU_GPLL0_DIV_CLK_SRC,
+};
+
+enum {
+	P_BI_TCXO,
+	P_GPLL0_OUT_MAIN,
+	P_GPLL0_OUT_MAIN_DIV,
+	P_GPU_CC_PLL0_2X_DIV_CLK_SRC,
+	P_GPU_CC_PLL0_OUT_AUX,
+	P_GPU_CC_PLL0_OUT_AUX2,
+	P_GPU_CC_PLL0_OUT_MAIN,
+};
+
+static const struct pll_vco huayra_vco[] = {
+	{ 600000000, 3300000000, 0 },
+	{ 600000000, 2200000000, 1 },
+};
+
+static const struct alpha_pll_config gpu_cc_pll0_config = {
+	.l = 0x25,
+	.config_ctl_val = 0x200d4828,
+	.config_ctl_hi_val = 0x6,
+	.test_ctl_val = GENMASK(28, 26),
+	.test_ctl_hi_val = BIT(14),
+	.user_ctl_val = 0xf,
+};
+
+static struct clk_alpha_pll gpu_cc_pll0 = {
+	.offset = 0x0,
+	.vco_table = huayra_vco,
+	.num_vco = ARRAY_SIZE(huayra_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA_2290],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_pll0",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_huayra_ops,
+		},
+	},
+};
+
+static const struct parent_map gpu_cc_parent_map_0[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPU_CC_PLL0_OUT_MAIN, 1 },
+	{ P_GPLL0_OUT_MAIN, 5 },
+	{ P_GPLL0_OUT_MAIN_DIV, 6 },
+};
+
+static const struct clk_parent_data gpu_cc_parent_data_0[] = {
+	{ .index = DT_BI_TCXO, },
+	{ .hw = &gpu_cc_pll0.clkr.hw, },
+	{ .index = DT_GCC_GPU_GPLL0_CLK_SRC, },
+	{ .index = DT_GCC_GPU_GPLL0_DIV_CLK_SRC, },
+};
+
+static const struct parent_map gpu_cc_parent_map_1[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_GPU_CC_PLL0_2X_DIV_CLK_SRC, 1 },
+	{ P_GPU_CC_PLL0_OUT_AUX2, 2 },
+	{ P_GPU_CC_PLL0_OUT_AUX, 3 },
+	{ P_GPLL0_OUT_MAIN, 5 },
+};
+
+static const struct clk_parent_data gpu_cc_parent_data_1[] = {
+	{ .index = DT_BI_TCXO, },
+	{ .hw = &gpu_cc_pll0.clkr.hw, },
+	{ .hw = &gpu_cc_pll0.clkr.hw, },
+	{ .hw = &gpu_cc_pll0.clkr.hw, },
+	{ .index = DT_GCC_GPU_GPLL0_CLK_SRC, },
+};
+
+static const struct freq_tbl ftbl_gpu_cc_gmu_clk_src[] = {
+	F(200000000, P_GPLL0_OUT_MAIN, 3, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gpu_cc_gmu_clk_src = {
+	.cmd_rcgr = 0x1120,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gpu_cc_parent_map_0,
+	.freq_tbl = ftbl_gpu_cc_gmu_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gpu_cc_gmu_clk_src",
+		.parent_data = gpu_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(gpu_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_gpu_cc_gx_gfx3d_clk_src[] = {
+	F(355200000, P_GPU_CC_PLL0_OUT_AUX, 2, 0, 0),
+	F(537600000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	F(672000000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	F(844800000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	F(921600000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	F(1017600000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	F(1123200000, P_GPU_CC_PLL0_OUT_AUX2, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 gpu_cc_gx_gfx3d_clk_src = {
+	.cmd_rcgr = 0x101c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = gpu_cc_parent_map_1,
+	.freq_tbl = ftbl_gpu_cc_gx_gfx3d_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "gpu_cc_gx_gfx3d_clk_src",
+		.parent_data = gpu_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(gpu_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_branch gpu_cc_ahb_clk = {
+	.halt_reg = 0x1078,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x1078,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_ahb_clk",
+			.flags = CLK_IS_CRITICAL,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_crc_ahb_clk = {
+	.halt_reg = 0x107c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x107c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_crc_ahb_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_cx_gfx3d_clk = {
+	.halt_reg = 0x10a4,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x10a4,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_cx_gfx3d_clk",
+			.parent_data = &(const struct clk_parent_data){
+				.hw = &gpu_cc_gx_gfx3d_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_cx_gmu_clk = {
+	.halt_reg = 0x1098,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1098,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_cx_gmu_clk",
+			.parent_data = &(const struct clk_parent_data){
+				.hw = &gpu_cc_gmu_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_cx_snoc_dvm_clk = {
+	.halt_reg = 0x108c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x108c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_cx_snoc_dvm_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_cxo_aon_clk = {
+	.halt_reg = 0x1004,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x1004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_cxo_aon_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_cxo_clk = {
+	.halt_reg = 0x109c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x109c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_cxo_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_gx_gfx3d_clk = {
+	.halt_reg = 0x1054,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x1054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_gx_gfx3d_clk",
+			.parent_data = &(const struct clk_parent_data){
+				.hw = &gpu_cc_gx_gfx3d_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_sleep_clk = {
+	.halt_reg = 0x1090,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x1090,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gpu_cc_sleep_clk",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gpu_cc_hlos1_vote_gpu_smmu_clk = {
+	.halt_reg = 0x5000,
+	.halt_check = BRANCH_VOTED,
+	.clkr = {
+		.enable_reg = 0x5000,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			 .name = "gpu_cc_hlos1_vote_gpu_smmu_clk",
+			 .ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct gdsc gpu_cx_gdsc = {
+	.gdscr = 0x106c,
+	.gds_hw_ctrl = 0x1540,
+	.pd = {
+		.name = "gpu_cx_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc gpu_gx_gdsc = {
+	.gdscr = 0x100c,
+	.clamp_io_ctrl = 0x1508,
+	.resets = (unsigned int []){ GPU_GX_BCR },
+	.reset_count = 1,
+	.pd = {
+		.name = "gpu_gx_gdsc",
+	},
+	.parent = &gpu_cx_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = CLAMP_IO | AON_RESET | SW_RESET,
+};
+
+static struct clk_regmap *gpu_cc_qcm2290_clocks[] = {
+	[GPU_CC_AHB_CLK] = &gpu_cc_ahb_clk.clkr,
+	[GPU_CC_CRC_AHB_CLK] = &gpu_cc_crc_ahb_clk.clkr,
+	[GPU_CC_CX_GFX3D_CLK] = &gpu_cc_cx_gfx3d_clk.clkr,
+	[GPU_CC_CX_GMU_CLK] = &gpu_cc_cx_gmu_clk.clkr,
+	[GPU_CC_CX_SNOC_DVM_CLK] = &gpu_cc_cx_snoc_dvm_clk.clkr,
+	[GPU_CC_CXO_AON_CLK] = &gpu_cc_cxo_aon_clk.clkr,
+	[GPU_CC_CXO_CLK] = &gpu_cc_cxo_clk.clkr,
+	[GPU_CC_GMU_CLK_SRC] = &gpu_cc_gmu_clk_src.clkr,
+	[GPU_CC_GX_GFX3D_CLK] = &gpu_cc_gx_gfx3d_clk.clkr,
+	[GPU_CC_GX_GFX3D_CLK_SRC] = &gpu_cc_gx_gfx3d_clk_src.clkr,
+	[GPU_CC_PLL0] = &gpu_cc_pll0.clkr,
+	[GPU_CC_SLEEP_CLK] = &gpu_cc_sleep_clk.clkr,
+	[GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK] = &gpu_cc_hlos1_vote_gpu_smmu_clk.clkr,
+};
+
+static const struct qcom_reset_map gpu_cc_qcm2290_resets[] = {
+	[GPU_GX_BCR] = { 0x1008 },
+};
+
+static struct gdsc *gpu_cc_qcm2290_gdscs[] = {
+	[GPU_CX_GDSC] = &gpu_cx_gdsc,
+	[GPU_GX_GDSC] = &gpu_gx_gdsc,
+};
+
+static const struct regmap_config gpu_cc_qcm2290_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x9000,
+	.fast_io = true,
+};
+
+
+static const struct qcom_cc_desc gpu_cc_qcm2290_desc = {
+	.config = &gpu_cc_qcm2290_regmap_config,
+	.clks = gpu_cc_qcm2290_clocks,
+	.num_clks = ARRAY_SIZE(gpu_cc_qcm2290_clocks),
+	.resets = gpu_cc_qcm2290_resets,
+	.num_resets = ARRAY_SIZE(gpu_cc_qcm2290_resets),
+	.gdscs = gpu_cc_qcm2290_gdscs,
+	.num_gdscs = ARRAY_SIZE(gpu_cc_qcm2290_gdscs),
+};
+
+static const struct of_device_id gpu_cc_qcm2290_match_table[] = {
+	{ .compatible = "qcom,qcm2290-gpucc" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, gpu_cc_qcm2290_match_table);
+
+static int gpu_cc_qcm2290_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap;
+	int ret;
+
+	regmap = qcom_cc_map(pdev, &gpu_cc_qcm2290_desc);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = devm_pm_clk_create(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_clk_add(&pdev->dev, NULL);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to acquire ahb clock\n");
+		return ret;
+	}
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
+
+	clk_huayra_2290_pll_configure(&gpu_cc_pll0, regmap, &gpu_cc_pll0_config);
+
+	regmap_update_bits(regmap, 0x1060, BIT(0), BIT(0)); /* GPU_CC_GX_CXO_CLK */
+
+	ret = qcom_cc_really_probe(pdev, &gpu_cc_qcm2290_desc, regmap);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register display clock controller\n");
+		goto out_pm_runtime_put;
+	}
+
+out_pm_runtime_put:
+	pm_runtime_put_sync(&pdev->dev);
+
+	return 0;
+}
+
+static struct platform_driver gpu_cc_qcm2290_driver = {
+	.probe = gpu_cc_qcm2290_probe,
+	.driver = {
+		.name = "gpucc-qcm2290",
+		.of_match_table = gpu_cc_qcm2290_match_table,
+	},
+};
+module_platform_driver(gpu_cc_qcm2290_driver);
+
+MODULE_DESCRIPTION("QTI QCM2290 GPU clock controller driver");
+MODULE_LICENSE("GPL");

-- 
2.44.0


