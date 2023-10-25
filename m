Return-Path: <devicetree+bounces-11576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 908AC7D62F7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C47EBB20FC4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B2318621;
	Wed, 25 Oct 2023 07:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cg6oDycC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C34C18622
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:33:11 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68F81701
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:58 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50816562320so638655e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219175; x=1698823975; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bv3Oe/wR1YKcq+0w4lKxaTCNNwseuaDotRFQctBFz6w=;
        b=Cg6oDycCYOU8xS8uMp6tOVaDBo+30nDevWrhP6T+h9tNLWGkOxrYIAZNharrxiB5Yy
         Lb17rsDz5aUHUIQrNFIKomo7tMkaMscNXa2YAuvFBw9p1yDQuBaESBN5ICdc72V+pdzg
         M0RVcxCkacqrNUVIoFpmCWcZySWeTDBRUXAeEUI0+ANpBjRhU9gC08bhUT9KbZuJE0Vt
         AHWitpEy59CXQeyFCKTZqNBzP2ZE2wLJ5aL5jQkCSHBdqvXSJQIM4+CDnpGPjYwvfiSZ
         jBPP79L57vmXSkCaY2chTWW1wShOmzsTB9C63CEin2mZV7sUttMu0cSTbLXClcZ0DTTm
         VHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219175; x=1698823975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bv3Oe/wR1YKcq+0w4lKxaTCNNwseuaDotRFQctBFz6w=;
        b=U3XlFv6Oq+mnAMY6aeP/aliS8LJ6NFpRs2608P+glOz9TU7EuFrzlPzropiJnIUM36
         NR+zIT+SptL6+5gjvKPDv5mkkFp21ANmpQND/S9iniZjwlO0CADDjRTx9SjH1fgyTdul
         5jPVK3+8m5prBynSZU3pzU+86ega1smKzIwJnDP1ndDtzIQlOo8rvqNcUxMHs0GAhHWr
         /Tm2Ad6f+F6fhfQ3kboQM6LKi8GPN8iITRhlLovrxy0431GD4i3UAmeiIHLpHaNivXvK
         cFnEIX5fJd2ZOoODClqQpc8zD59ILxIe2vUOj//vA8s+MeKDIRTbnNwBUO2lf2iwx9++
         kzyQ==
X-Gm-Message-State: AOJu0YyWtk7oW6MBYT17yz1pazlzJM6Vfwj8390ldIV9/cpl5lHp3se4
	oh36P7TveT/DXtrouyQVMF7m/Q==
X-Google-Smtp-Source: AGHT+IGHUZ+1CygbBELhDgOyuPN3mfY5hqwcAnYMb9liAqbqSXDTEfgVZkFuWw3/SBc32ituozjE1g==
X-Received: by 2002:ac2:5470:0:b0:503:1b83:e352 with SMTP id e16-20020ac25470000000b005031b83e352mr9863682lfn.52.1698219174905;
        Wed, 25 Oct 2023 00:32:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c15d200b004063d8b43e7sm18422239wmf.48.2023.10.25.00.32.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:44 +0200
Subject: [PATCH 07/10] clk: qcom: add the SM8650 TCSR Clock Controller
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-clocks-v1-7-c89b59594caf@linaro.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6871;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yft5QrTvY0J0WzqfSuJs9eXuc2sdEMikECsESMZ9r9g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMSbJYCfIe3ouE4H6D8JwxY8fGhRbiMuoQTLCkvI
 Kz6mV1OJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEmwAKCRB33NvayMhJ0ayvEA
 CFhlzK3WNFjKYqfyki+Gf8PsDGaoks1RDhuLDek0FreJDPo2vcliQrF4XQQcFl33ATCE79SBZndqj5
 Rx4OG9i05SeUWS9Z/HgHz/EyXEXn7wpNQj5vXMAQPBlERADN8dQgapuYsryhkaO9+SUIh5VbNv0uxn
 oqmw93Gbf/lZ5td/4fU58bRcfUp0wlxVVSh7F2aAfb3rU0ImkAH2Kqmqo0Zik1eKG/sPrCAfceskp+
 rAmFvFRlfP3fB5HynZ5JKc2bSLy4snUcgiouPKqsBha7GY6FzSBbVg7vGD2eksk3nqqIp/k5P34OJj
 dzURyN8LaVHvDXoafNdAQQdOx4lboQeZHUL011BwZMKEOHdaPHIvEk9Pa1I4KYkzYTBpGpEBQGzwy9
 Kig4uFzzbILup+TapD2uSbNIAId0jnvcR9tazYbdDueX1DPC/OllIjeLSMFRU2Jv3TKNPaGYKzv/Bm
 A5p5sil5LVVfqd1smawHJUQVYpg21BaQu+EBShc+UDOdPSt2Q8DV7VSShWl0s+2HQSg+lgrFQARhAF
 sovWck1GMJv5c20+723AnUP65ZX+ZCriuK1qhKi9wTNqEJnOUahMC6dEsjL9UZhMUHpdLk8ZLO5xt2
 Ab59pAn2gkXQjuNylYp3ANJ1waHqLnRINcg5GdKQCMnyH0qEzdF0YU894gXg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add TCSR Clock Controller support for SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/qcom/Kconfig         |   7 ++
 drivers/clk/qcom/Makefile        |   1 +
 drivers/clk/qcom/tcsrcc-sm8650.c | 192 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 200 insertions(+)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index f554545e6f89..c04b6526f4f3 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1035,6 +1035,13 @@ config SM_TCSRCC_8550
 	  Support for the TCSR clock controller on SM8550 devices.
 	  Say Y if you want to use peripheral devices such as SD/UFS.
 
+config SM_TCSRCC_8650
+	tristate "SM8650 TCSR Clock Controller"
+	select QCOM_GDSC
+	help
+	  Support for the TCSR clock controller on SM8650 devices.
+	  Say Y if you want to use peripheral devices such as SD/UFS.
+
 config SM_VIDEOCC_8150
 	tristate "SM8150 Video Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index 5363ba13f89b..6ec026a137ec 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -132,6 +132,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
 obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
 obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
 obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
+obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
 obj-$(CONFIG_SM_VIDEOCC_8150) += videocc-sm8150.o
 obj-$(CONFIG_SM_VIDEOCC_8250) += videocc-sm8250.o
 obj-$(CONFIG_SM_VIDEOCC_8350) += videocc-sm8350.o
diff --git a/drivers/clk/qcom/tcsrcc-sm8650.c b/drivers/clk/qcom/tcsrcc-sm8650.c
new file mode 100644
index 000000000000..969f7bbc668b
--- /dev/null
+++ b/drivers/clk/qcom/tcsrcc-sm8650.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2022, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,sm8650-tcsr.h>
+
+#include "clk-alpha-pll.h"
+#include "clk-branch.h"
+#include "clk-pll.h"
+#include "clk-rcg.h"
+#include "clk-regmap.h"
+#include "clk-regmap-divider.h"
+#include "clk-regmap-mux.h"
+#include "common.h"
+#include "reset.h"
+
+enum {
+	DT_BI_TCXO_PAD,
+};
+
+static struct clk_branch tcsr_pcie_0_clkref_en = {
+	.halt_reg = 0x31100,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31100,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_pcie_0_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_1_clkref_en = {
+	.halt_reg = 0x31114,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31114,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_pcie_1_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_ufs_clkref_en = {
+	.halt_reg = 0x31110,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31110,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_ufs_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_ufs_pad_clkref_en = {
+	.halt_reg = 0x31104,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31104,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_ufs_pad_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_clkref_en = {
+	.halt_reg = 0x31118,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31118,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_usb2_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb3_clkref_en = {
+	.halt_reg = 0x31108,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x31108,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "tcsr_usb3_clkref_en",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO_PAD,
+			},
+			.num_parents = 1,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_regmap *tcsr_cc_sm8650_clocks[] = {
+	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
+	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
+	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
+	[TCSR_UFS_PAD_CLKREF_EN] = &tcsr_ufs_pad_clkref_en.clkr,
+	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
+	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
+};
+
+static const struct regmap_config tcsr_cc_sm8650_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x3b000,
+	.fast_io = true,
+};
+
+static const struct qcom_cc_desc tcsr_cc_sm8650_desc = {
+	.config = &tcsr_cc_sm8650_regmap_config,
+	.clks = tcsr_cc_sm8650_clocks,
+	.num_clks = ARRAY_SIZE(tcsr_cc_sm8650_clocks),
+};
+
+static const struct of_device_id tcsr_cc_sm8650_match_table[] = {
+	{ .compatible = "qcom,sm8650-tcsr" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, tcsr_cc_sm8650_match_table);
+
+static int tcsr_cc_sm8650_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap;
+
+	regmap = qcom_cc_map(pdev, &tcsr_cc_sm8650_desc);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return qcom_cc_really_probe(pdev, &tcsr_cc_sm8650_desc, regmap);
+}
+
+static struct platform_driver tcsr_cc_sm8650_driver = {
+	.probe = tcsr_cc_sm8650_probe,
+	.driver = {
+		.name = "tcsr_cc-sm8650",
+		.of_match_table = tcsr_cc_sm8650_match_table,
+	},
+};
+
+static int __init tcsr_cc_sm8650_init(void)
+{
+	return platform_driver_register(&tcsr_cc_sm8650_driver);
+}
+subsys_initcall(tcsr_cc_sm8650_init);
+
+static void __exit tcsr_cc_sm8650_exit(void)
+{
+	platform_driver_unregister(&tcsr_cc_sm8650_driver);
+}
+module_exit(tcsr_cc_sm8650_exit);
+
+MODULE_DESCRIPTION("QTI TCSRCC SM8650 Driver");
+MODULE_LICENSE("GPL");

-- 
2.34.1


