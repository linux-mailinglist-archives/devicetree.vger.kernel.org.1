Return-Path: <devicetree+bounces-24099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C859E80DE86
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 23:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D9F91F219CF
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 22:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3795855C11;
	Mon, 11 Dec 2023 22:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aRVfLGoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1027E182
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:46:28 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50be03cc8a3so6632839e87.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702334786; x=1702939586; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FRUSbFeO8l9KJAiuD1dKzlVA1+R9PvN6I7Ra4mrYVBU=;
        b=aRVfLGoTl5u5yT70clYOcAljHsNnlZ82fVJEwYvPry3PSXiDq027xjWkafajJTyBia
         2BC8Jm6OJ+gCU9EjFUI3SaVzTzWEp4//twppLATaFZ3q19ghJbj4iLjL4yO7p1nr6nL0
         cqWAtKY/XC+Dwk58XVU50tST6FuXf0sgMLe4cww2tTVw0D4DAo65Z/MrK0/pGUau8UFS
         QWNn7M915QS7Pt7fhuaawbeWtQ8Asq6vGTUKqo6cIkNHAl21ykgCFszdqFv2lNz8nZYi
         sSWoqOM4K0hNL2ff3nRDGYMaFZo4IG7PmZyWVgoiZgMEbAvRLa/OuoR53pBua539efU3
         5cSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702334786; x=1702939586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FRUSbFeO8l9KJAiuD1dKzlVA1+R9PvN6I7Ra4mrYVBU=;
        b=Viu+u2sWdkz/MmQ6VO9zLmKGJ4h7jw6qu3axXvc91q47o1X0z13w7deLqICOJ+uYC1
         VoSOrHFl/k63an3kFE8JYT7J5KVeEsVbG9iUNiAgdMqLI30e213b4V5xBxkunB27O867
         oyOpPlH7Vq9gQKK/tMTWv4YwhHgB39I++lDIHIQ/LxWS259ZOR9h5EpCJP5qR5NXW6Tl
         BNvWpWrx8MAnywwbqZ/hNHaP9C6jkWJCqv6lqojtndP7UJbCRRujGm0qySo6eR07qW9a
         KeVjipLU+RiHoGx9ckmbBcAINXaNuVxe3jGxb2hcgimx8Ql469nqam2FYYqK+te4AjIE
         Npxw==
X-Gm-Message-State: AOJu0Yz6PeXjNMzOdLrdOXCfIjSzKhwqy26LYhPG5Aby+eOz65LZ9qKo
	OtrCFVyBVcdhg1bRQIQS5WpLeQ==
X-Google-Smtp-Source: AGHT+IGsckKgokplRuUH3JX+wRrWtQXP1UZevBJvPlPSzQxmheLmSgE4gVlvxNf9o2cdI6OBhRsYPQ==
X-Received: by 2002:a19:644f:0:b0:50c:bbb:ed7e with SMTP id b15-20020a19644f000000b0050c0bbbed7emr2062657lfj.3.1702334785874;
        Mon, 11 Dec 2023 14:46:25 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id if3-20020a0564025d8300b0054afcab0af2sm4091789edb.59.2023.12.11.14.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 14:46:25 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 12 Dec 2023 00:45:50 +0200
Subject: [PATCH 10/10] clk: qcom: Add camcc clock driver for x1e80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231212-x1e80100-clock-controllers-v1-10-0de1af44dcb3@linaro.org>
References: <20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org>
In-Reply-To: <20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Rajendra Nayak <quic_rjendra@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=73717; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=PTI33TRMU5pnddjl7YGFtRZgIxC7J6eyF3XugwSdb4U=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBld5ExYsQTUHefjI2fFDEW9I8Zq6YxgJ1z6Ww5f
 kJJkIT91WyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXeRMQAKCRAbX0TJAJUV
 VgdQD/0aJqvlozLTp9Ys8gNHoIZXww1G9MX/XtV4bh7bQbFNKU87zX9+nZKA/yLeuSfydXNADvt
 v/yibptCaetakRDi/MqK3LxRYzdXXIqQEkfxRBsbr4n9E2R/3uKEEsGYMafY32rQN2vyM7J/fIh
 YF7I45OcY45Dvput8yAE3G7DUqZTnz6OStnLgh6fzyUiFPiOcYL1FKKuTHBQAIrt1fpPmIA798H
 XJxAaHQJ6OzFglgirqHkM1UUsJM1k56vnYmK98Wkdm1ePyrZ5nsa4LYRGKjp0e+ibNu56dLfnwx
 Mbl1QBhFLpfmlsmOcsLClCxD7YIcvFcFP0XWyXRexMwvlUChEJL1L1Vj5yU8H/RgPOhgz7eJZVo
 S3y43XGKEMAzbDUXEUXn5fKGmzny4rbzM5cN1XXMFgZq6YHsJYEzlgICT5g7t5OTWGSHwl2J/GP
 lpR5lKjctKyicxa6PokKmoeKywY5g4Vd2HHSR8O9tER8eBVIxoJCBH4EQwUPsa5WJ4rFCPics5W
 59nVSSO4QjqOEXNf4bwRvyXLztzlOmTq0WZ/TVjCn3dYGJkjIDQAxg5v3Jfz5mpBWqOQ1PKbFwH
 OlgVf+8VIO2MSx2YeQ6l//UEtXA39nGr5IJZj7cvMK+sGtPGfdn0zfHLmdZni4gWIb25Lsirffq
 524U4uxpzoTscDg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Rajendra Nayak <quic_rjendra@quicinc.com>

Add the camcc clock driver for x1e80100

Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/clk/qcom/Kconfig          |    8 +
 drivers/clk/qcom/Makefile         |    1 +
 drivers/clk/qcom/camcc-x1e80100.c | 2489 +++++++++++++++++++++++++++++++++++++
 3 files changed, 2498 insertions(+)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 0633728c870c..4580edbd13ea 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -20,6 +20,14 @@ menuconfig COMMON_CLK_QCOM
 
 if COMMON_CLK_QCOM
 
+config CLK_X1E80100_CAMCC
+	tristate "X1E80100 Camera Clock Controller"
+	depends on ARM64 || COMPILE_TEST
+	select CLK_X1E80100_GCC
+	help
+	  Support for the camera clock controller on X1E80100 devices.
+	  Say Y if you want to support camera devices and camera functionality.
+
 config CLK_X1E80100_DISPCC
 	tristate "X1E80100 Display Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index 750b084553c6..1da65ca78e24 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -21,6 +21,7 @@ clk-qcom-$(CONFIG_QCOM_GDSC) += gdsc.o
 obj-$(CONFIG_APQ_GCC_8084) += gcc-apq8084.o
 obj-$(CONFIG_APQ_MMCC_8084) += mmcc-apq8084.o
 obj-$(CONFIG_CLK_GFM_LPASS_SM8250) += lpass-gfm-sm8250.o
+obj-$(CONFIG_CLK_X1E80100_CAMCC) += camcc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_DISPCC) += dispcc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_GCC) += gcc-x1e80100.o
 obj-$(CONFIG_CLK_X1E80100_GPUCC) += gpucc-x1e80100.o
diff --git a/drivers/clk/qcom/camcc-x1e80100.c b/drivers/clk/qcom/camcc-x1e80100.c
new file mode 100644
index 000000000000..50dc578692a1
--- /dev/null
+++ b/drivers/clk/qcom/camcc-x1e80100.c
@@ -0,0 +1,2489 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+
+#include "clk-alpha-pll.h"
+#include "clk-branch.h"
+#include "clk-rcg.h"
+#include "clk-regmap.h"
+#include "common.h"
+#include "gdsc.h"
+#include "reset.h"
+
+enum {
+	DT_BI_TCXO,
+	DT_BI_TCXO_AO,
+	DT_SLEEP_CLK,
+};
+
+enum {
+	P_BI_TCXO,
+	P_CAM_CC_PLL0_OUT_EVEN,
+	P_CAM_CC_PLL0_OUT_MAIN,
+	P_CAM_CC_PLL0_OUT_ODD,
+	P_CAM_CC_PLL1_OUT_EVEN,
+	P_CAM_CC_PLL2_OUT_EVEN,
+	P_CAM_CC_PLL2_OUT_MAIN,
+	P_CAM_CC_PLL3_OUT_EVEN,
+	P_CAM_CC_PLL4_OUT_EVEN,
+	P_CAM_CC_PLL6_OUT_EVEN,
+	P_CAM_CC_PLL8_OUT_EVEN,
+	P_SLEEP_CLK,
+};
+
+static const struct pll_vco lucid_ole_vco[] = {
+	{ 249600000, 2300000000, 0 },
+};
+
+static const struct pll_vco rivian_ole_vco[] = {
+	{ 777000000, 1285000000, 0 },
+};
+
+static const struct alpha_pll_config cam_cc_pll0_config = {
+	.l = 0x3E,
+	.alpha = 0x8000,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00008400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll0 = {
+	.offset = 0x0,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll0",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll0_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll0_out_even = {
+	.offset = 0x0,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll0_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll0_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll0_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll0.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll0_out_odd[] = {
+	{ 0x2, 3 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll0_out_odd = {
+	.offset = 0x0,
+	.post_div_shift = 14,
+	.post_div_table = post_div_table_cam_cc_pll0_out_odd,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll0_out_odd),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll0_out_odd",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll0.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll1_config = {
+	.l = 0x1F,
+	.alpha = 0xAAAA,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00000400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll1 = {
+	.offset = 0x1000,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll1",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll1_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll1_out_even = {
+	.offset = 0x1000,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll1_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll1_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll1_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll1.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll2_config = {
+	.l = 0x32,
+	.alpha = 0x0,
+	.config_ctl_val = 0x10000030,
+	.config_ctl_hi_val = 0x80890263,
+	.config_ctl_hi1_val = 0x00000217,
+	.user_ctl_val = 0x00000001,
+	.user_ctl_hi_val = 0x00000000,
+};
+
+static struct clk_alpha_pll cam_cc_pll2 = {
+	.offset = 0x2000,
+	.vco_table = rivian_ole_vco,
+	.num_vco = ARRAY_SIZE(rivian_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_RIVIAN_EVO],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll2",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_rivian_evo_ops,
+		},
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll3_config = {
+	.l = 0x24,
+	.alpha = 0x0,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00000400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll3 = {
+	.offset = 0x3000,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll3",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll3_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll3_out_even = {
+	.offset = 0x3000,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll3_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll3_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll3_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll3.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll4_config = {
+	.l = 0x24,
+	.alpha = 0x0,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00000400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll4 = {
+	.offset = 0x4000,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll4",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll4_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll4_out_even = {
+	.offset = 0x4000,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll4_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll4_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll4_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll4.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll6_config = {
+	.l = 0x24,
+	.alpha = 0x0,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00000400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll6 = {
+	.offset = 0x6000,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll6",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll6_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll6_out_even = {
+	.offset = 0x6000,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll6_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll6_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll6_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll6.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct alpha_pll_config cam_cc_pll8_config = {
+	.l = 0x32,
+	.alpha = 0x0,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00182261,
+	.config_ctl_hi1_val = 0x82AA299C,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000003,
+	.test_ctl_hi1_val = 0x00009000,
+	.test_ctl_hi2_val = 0x00000034,
+	.user_ctl_val = 0x00000400,
+	.user_ctl_hi_val = 0x00000005,
+};
+
+static struct clk_alpha_pll cam_cc_pll8 = {
+	.offset = 0x8000,
+	.vco_table = lucid_ole_vco,
+	.num_vco = ARRAY_SIZE(lucid_ole_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_pll8",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_evo_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_cam_cc_pll8_out_even[] = {
+	{ 0x1, 2 },
+	{ }
+};
+
+static struct clk_alpha_pll_postdiv cam_cc_pll8_out_even = {
+	.offset = 0x8000,
+	.post_div_shift = 10,
+	.post_div_table = post_div_table_cam_cc_pll8_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_cam_cc_pll8_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_pll8_out_even",
+		.parent_hws = (const struct clk_hw*[]) {
+			&cam_cc_pll8.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ole_ops,
+	},
+};
+
+static const struct parent_map cam_cc_parent_map_0[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL0_OUT_MAIN, 1 },
+	{ P_CAM_CC_PLL0_OUT_EVEN, 2 },
+	{ P_CAM_CC_PLL0_OUT_ODD, 3 },
+	{ P_CAM_CC_PLL8_OUT_EVEN, 5 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_0[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll0.clkr.hw },
+	{ .hw = &cam_cc_pll0_out_even.clkr.hw },
+	{ .hw = &cam_cc_pll0_out_odd.clkr.hw },
+	{ .hw = &cam_cc_pll8_out_even.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_1[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL2_OUT_EVEN, 3 },
+	{ P_CAM_CC_PLL2_OUT_MAIN, 5 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_1[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll2.clkr.hw },
+	{ .hw = &cam_cc_pll2.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_2[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL3_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_2[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll3_out_even.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_3[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL4_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_3[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll4_out_even.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_4[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL1_OUT_EVEN, 4 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_4[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll1_out_even.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_5[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAM_CC_PLL6_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_5[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &cam_cc_pll6_out_even.clkr.hw },
+};
+
+static const struct parent_map cam_cc_parent_map_6[] = {
+	{ P_SLEEP_CLK, 0 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_6_ao[] = {
+	{ .index = DT_SLEEP_CLK },
+};
+
+static const struct parent_map cam_cc_parent_map_7[] = {
+	{ P_BI_TCXO, 0 },
+};
+
+static const struct clk_parent_data cam_cc_parent_data_7_ao[] = {
+	{ .index = DT_BI_TCXO_AO },
+};
+
+static const struct freq_tbl ftbl_cam_cc_bps_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(160000000, P_CAM_CC_PLL0_OUT_ODD, 2.5, 0, 0),
+	F(200000000, P_CAM_CC_PLL0_OUT_ODD, 2, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	F(600000000, P_CAM_CC_PLL0_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_bps_clk_src = {
+	.cmd_rcgr = 0x10278,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_bps_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_bps_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_camnoc_axi_rt_clk_src[] = {
+	F(240000000, P_CAM_CC_PLL0_OUT_EVEN, 2.5, 0, 0),
+	F(300000000, P_CAM_CC_PLL0_OUT_EVEN, 2, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_camnoc_axi_rt_clk_src = {
+	.cmd_rcgr = 0x138f8,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_camnoc_axi_rt_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_camnoc_axi_rt_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_cci_0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(30000000, P_CAM_CC_PLL8_OUT_EVEN, 16, 0, 0),
+	F(37500000, P_CAM_CC_PLL0_OUT_EVEN, 16, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_cci_0_clk_src = {
+	.cmd_rcgr = 0x1365c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_cci_0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_cci_0_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_cci_1_clk_src = {
+	.cmd_rcgr = 0x1378c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_cci_0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_cci_1_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_cphy_rx_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(300000000, P_CAM_CC_PLL0_OUT_MAIN, 4, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	F(480000000, P_CAM_CC_PLL0_OUT_MAIN, 2.5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_cphy_rx_clk_src = {
+	.cmd_rcgr = 0x11164,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_cphy_rx_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_cphy_rx_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_csi0phytimer_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(266666667, P_CAM_CC_PLL0_OUT_ODD, 1.5, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_csi0phytimer_clk_src = {
+	.cmd_rcgr = 0x150e0,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi0phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_csi1phytimer_clk_src = {
+	.cmd_rcgr = 0x15104,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi1phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_csi2phytimer_clk_src = {
+	.cmd_rcgr = 0x15124,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi2phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_csi3phytimer_clk_src = {
+	.cmd_rcgr = 0x15258,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi3phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_csi4phytimer_clk_src = {
+	.cmd_rcgr = 0x1538c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi4phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_csi5phytimer_clk_src = {
+	.cmd_rcgr = 0x154c0,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csi5phytimer_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_csid_clk_src[] = {
+	F(300000000, P_CAM_CC_PLL0_OUT_MAIN, 4, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	F(480000000, P_CAM_CC_PLL0_OUT_MAIN, 2.5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_csid_clk_src = {
+	.cmd_rcgr = 0x138d4,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_csid_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_csid_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_fast_ahb_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(80000000, P_CAM_CC_PLL0_OUT_EVEN, 7.5, 0, 0),
+	F(100000000, P_CAM_CC_PLL0_OUT_EVEN, 6, 0, 0),
+	F(200000000, P_CAM_CC_PLL0_OUT_EVEN, 3, 0, 0),
+	F(300000000, P_CAM_CC_PLL0_OUT_MAIN, 4, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_fast_ahb_clk_src = {
+	.cmd_rcgr = 0x10018,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_fast_ahb_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_fast_ahb_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_icp_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(300000000, P_CAM_CC_PLL0_OUT_EVEN, 2, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAM_CC_PLL8_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAM_CC_PLL0_OUT_MAIN, 2, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_icp_clk_src = {
+	.cmd_rcgr = 0x13520,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_icp_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_icp_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_ife_0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(345600000, P_CAM_CC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(432000000, P_CAM_CC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(594000000, P_CAM_CC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(675000000, P_CAM_CC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(727000000, P_CAM_CC_PLL3_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_ife_0_clk_src = {
+	.cmd_rcgr = 0x11018,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_2,
+	.freq_tbl = ftbl_cam_cc_ife_0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_ife_0_clk_src",
+		.parent_data = cam_cc_parent_data_2,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_2),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_ife_1_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(345600000, P_CAM_CC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(432000000, P_CAM_CC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(594000000, P_CAM_CC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(675000000, P_CAM_CC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(727000000, P_CAM_CC_PLL4_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_ife_1_clk_src = {
+	.cmd_rcgr = 0x12018,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_3,
+	.freq_tbl = ftbl_cam_cc_ife_1_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_ife_1_clk_src",
+		.parent_data = cam_cc_parent_data_3,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_3),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_ife_lite_clk_src[] = {
+	F(266666667, P_CAM_CC_PLL0_OUT_ODD, 1.5, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAM_CC_PLL8_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_ife_lite_clk_src = {
+	.cmd_rcgr = 0x13000,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_ife_lite_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_ife_lite_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_ife_lite_csid_clk_src = {
+	.cmd_rcgr = 0x1313c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_ife_lite_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_ife_lite_csid_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_ipe_nps_clk_src[] = {
+	F(304000000, P_CAM_CC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(364000000, P_CAM_CC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(500000000, P_CAM_CC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAM_CC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(700000000, P_CAM_CC_PLL1_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_ipe_nps_clk_src = {
+	.cmd_rcgr = 0x103cc,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_4,
+	.freq_tbl = ftbl_cam_cc_ipe_nps_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_ipe_nps_clk_src",
+		.parent_data = cam_cc_parent_data_4,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_4),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_jpeg_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(160000000, P_CAM_CC_PLL0_OUT_ODD, 2.5, 0, 0),
+	F(200000000, P_CAM_CC_PLL0_OUT_ODD, 2, 0, 0),
+	F(400000000, P_CAM_CC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAM_CC_PLL8_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAM_CC_PLL0_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_jpeg_clk_src = {
+	.cmd_rcgr = 0x133dc,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_jpeg_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_jpeg_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_mclk0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(24000000, P_CAM_CC_PLL2_OUT_MAIN, 10, 1, 4),
+	F(68571429, P_CAM_CC_PLL2_OUT_MAIN, 14, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_mclk0_clk_src = {
+	.cmd_rcgr = 0x15000,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk0_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk1_clk_src = {
+	.cmd_rcgr = 0x1501c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk1_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk2_clk_src = {
+	.cmd_rcgr = 0x15038,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk2_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk3_clk_src = {
+	.cmd_rcgr = 0x15054,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk3_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk4_clk_src = {
+	.cmd_rcgr = 0x15070,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk4_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk5_clk_src = {
+	.cmd_rcgr = 0x1508c,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk5_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk6_clk_src = {
+	.cmd_rcgr = 0x150a8,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk6_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 cam_cc_mclk7_clk_src = {
+	.cmd_rcgr = 0x150c4,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_1,
+	.freq_tbl = ftbl_cam_cc_mclk0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_mclk7_clk_src",
+		.parent_data = cam_cc_parent_data_1,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_1),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_sfe_0_clk_src[] = {
+	F(345600000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(432000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(594000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(675000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(727000000, P_CAM_CC_PLL6_OUT_EVEN, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_sfe_0_clk_src = {
+	.cmd_rcgr = 0x13294,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_5,
+	.freq_tbl = ftbl_cam_cc_sfe_0_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_sfe_0_clk_src",
+		.parent_data = cam_cc_parent_data_5,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_5),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_sleep_clk_src[] = {
+	F(32000, P_SLEEP_CLK, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_sleep_clk_src = {
+	.cmd_rcgr = 0x13aa0,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_6,
+	.freq_tbl = ftbl_cam_cc_sleep_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_sleep_clk_src",
+		.parent_data = cam_cc_parent_data_6_ao,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_6_ao),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_slow_ahb_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(64000000, P_CAM_CC_PLL8_OUT_EVEN, 7.5, 0, 0),
+	F(80000000, P_CAM_CC_PLL0_OUT_EVEN, 7.5, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_slow_ahb_clk_src = {
+	.cmd_rcgr = 0x10148,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_0,
+	.freq_tbl = ftbl_cam_cc_slow_ahb_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_slow_ahb_clk_src",
+		.parent_data = cam_cc_parent_data_0,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_0),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_cam_cc_xo_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	{ }
+};
+
+static struct clk_rcg2 cam_cc_xo_clk_src = {
+	.cmd_rcgr = 0x13a84,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = cam_cc_parent_map_7,
+	.freq_tbl = ftbl_cam_cc_xo_clk_src,
+	.clkr.hw.init = &(const struct clk_init_data) {
+		.name = "cam_cc_xo_clk_src",
+		.parent_data = cam_cc_parent_data_7_ao,
+		.num_parents = ARRAY_SIZE(cam_cc_parent_data_7_ao),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_branch cam_cc_bps_ahb_clk = {
+	.halt_reg = 0x10274,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10274,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_bps_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_bps_clk = {
+	.halt_reg = 0x103a4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x103a4,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_bps_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_bps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_bps_fast_ahb_clk = {
+	.halt_reg = 0x10144,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10144,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_bps_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_camnoc_axi_nrt_clk = {
+	.halt_reg = 0x13920,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13920,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_camnoc_axi_nrt_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_camnoc_axi_rt_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_camnoc_axi_rt_clk = {
+	.halt_reg = 0x13910,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13910,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_camnoc_axi_rt_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_camnoc_axi_rt_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_camnoc_dcd_xo_clk = {
+	.halt_reg = 0x1392c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1392c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_camnoc_dcd_xo_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_xo_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_camnoc_xo_clk = {
+	.halt_reg = 0x13930,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13930,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_camnoc_xo_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_xo_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cci_0_clk = {
+	.halt_reg = 0x13788,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13788,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cci_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cci_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cci_1_clk = {
+	.halt_reg = 0x138b8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x138b8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cci_1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cci_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_core_ahb_clk = {
+	.halt_reg = 0x13a80,
+	.halt_check = BRANCH_HALT_VOTED,
+	.clkr = {
+		.enable_reg = 0x13a80,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_core_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_ahb_clk = {
+	.halt_reg = 0x138bc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x138bc,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_bps_clk = {
+	.halt_reg = 0x103b0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x103b0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_bps_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_bps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_fast_ahb_clk = {
+	.halt_reg = 0x138c8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x138c8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_ife_0_clk = {
+	.halt_reg = 0x11150,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x11150,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_ife_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_ife_1_clk = {
+	.halt_reg = 0x1203c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1203c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_ife_1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_ife_lite_clk = {
+	.halt_reg = 0x13138,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13138,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_ife_lite_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_lite_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_ipe_nps_clk = {
+	.halt_reg = 0x10504,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10504,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_ipe_nps_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ipe_nps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_cpas_sfe_0_clk = {
+	.halt_reg = 0x133cc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x133cc,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_cpas_sfe_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_sfe_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi0phytimer_clk = {
+	.halt_reg = 0x150f8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x150f8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi0phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi0phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi1phytimer_clk = {
+	.halt_reg = 0x1511c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1511c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi1phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi1phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi2phytimer_clk = {
+	.halt_reg = 0x15250,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15250,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi2phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi2phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi3phytimer_clk = {
+	.halt_reg = 0x15384,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15384,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi3phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi3phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi4phytimer_clk = {
+	.halt_reg = 0x154b8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x154b8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi4phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi4phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csi5phytimer_clk = {
+	.halt_reg = 0x155ec,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x155ec,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csi5phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csi5phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csid_clk = {
+	.halt_reg = 0x138ec,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x138ec,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csid_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csid_csiphy_rx_clk = {
+	.halt_reg = 0x15100,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15100,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csid_csiphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy0_clk = {
+	.halt_reg = 0x150fc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x150fc,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy1_clk = {
+	.halt_reg = 0x15120,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15120,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy2_clk = {
+	.halt_reg = 0x15254,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15254,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy2_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy3_clk = {
+	.halt_reg = 0x15388,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15388,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy3_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy4_clk = {
+	.halt_reg = 0x154bc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x154bc,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy4_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_csiphy5_clk = {
+	.halt_reg = 0x155f0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x155f0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_csiphy5_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_icp_ahb_clk = {
+	.halt_reg = 0x13658,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13658,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_icp_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_icp_clk = {
+	.halt_reg = 0x1364c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1364c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_icp_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_icp_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_0_clk = {
+	.halt_reg = 0x11144,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x11144,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_0_dsp_clk = {
+	.halt_reg = 0x11154,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x11154,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_0_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_0_fast_ahb_clk = {
+	.halt_reg = 0x11160,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x11160,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_0_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_1_clk = {
+	.halt_reg = 0x12030,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x12030,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_1_dsp_clk = {
+	.halt_reg = 0x12040,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x12040,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_1_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_1_fast_ahb_clk = {
+	.halt_reg = 0x1204c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1204c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_1_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_lite_ahb_clk = {
+	.halt_reg = 0x13278,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13278,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_lite_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_lite_clk = {
+	.halt_reg = 0x1312c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1312c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_lite_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_lite_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_lite_cphy_rx_clk = {
+	.halt_reg = 0x13274,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13274,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_lite_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ife_lite_csid_clk = {
+	.halt_reg = 0x13268,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13268,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ife_lite_csid_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ife_lite_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ipe_nps_ahb_clk = {
+	.halt_reg = 0x1051c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1051c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ipe_nps_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ipe_nps_clk = {
+	.halt_reg = 0x104f8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x104f8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ipe_nps_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ipe_nps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ipe_nps_fast_ahb_clk = {
+	.halt_reg = 0x10520,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10520,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ipe_nps_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ipe_pps_clk = {
+	.halt_reg = 0x10508,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10508,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ipe_pps_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_ipe_nps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_ipe_pps_fast_ahb_clk = {
+	.halt_reg = 0x10524,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x10524,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_ipe_pps_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_jpeg_clk = {
+	.halt_reg = 0x13508,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x13508,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_jpeg_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_jpeg_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk0_clk = {
+	.halt_reg = 0x15018,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15018,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk1_clk = {
+	.halt_reg = 0x15034,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15034,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk2_clk = {
+	.halt_reg = 0x15050,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15050,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk2_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk3_clk = {
+	.halt_reg = 0x1506c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x1506c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk3_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk4_clk = {
+	.halt_reg = 0x15088,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x15088,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk4_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk4_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk5_clk = {
+	.halt_reg = 0x150a4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x150a4,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk5_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk5_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk6_clk = {
+	.halt_reg = 0x150c0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x150c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk6_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk6_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_mclk7_clk = {
+	.halt_reg = 0x150dc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x150dc,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_mclk7_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_mclk7_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_sfe_0_clk = {
+	.halt_reg = 0x133c0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x133c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_sfe_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_sfe_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch cam_cc_sfe_0_fast_ahb_clk = {
+	.halt_reg = 0x133d8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x133d8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "cam_cc_sfe_0_fast_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&cam_cc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct gdsc cam_cc_bps_gdsc = {
+	.gdscr = 0x10004,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_bps_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct gdsc cam_cc_ife_0_gdsc = {
+	.gdscr = 0x11004,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_ife_0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct gdsc cam_cc_ife_1_gdsc = {
+	.gdscr = 0x12004,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_ife_1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct gdsc cam_cc_ipe_0_gdsc = {
+	.gdscr = 0x103b8,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_ipe_0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct gdsc cam_cc_sfe_0_gdsc = {
+	.gdscr = 0x13280,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_sfe_0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct gdsc cam_cc_titan_top_gdsc = {
+	.gdscr = 0x13a6c,
+	.en_rest_wait_val = 0x2,
+	.en_few_wait_val = 0x2,
+	.clk_dis_wait_val = 0xf,
+	.pd = {
+		.name = "cam_cc_titan_top_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
+};
+
+static struct clk_regmap *cam_cc_x1e80100_clocks[] = {
+	[CAM_CC_BPS_AHB_CLK] = &cam_cc_bps_ahb_clk.clkr,
+	[CAM_CC_BPS_CLK] = &cam_cc_bps_clk.clkr,
+	[CAM_CC_BPS_CLK_SRC] = &cam_cc_bps_clk_src.clkr,
+	[CAM_CC_BPS_FAST_AHB_CLK] = &cam_cc_bps_fast_ahb_clk.clkr,
+	[CAM_CC_CAMNOC_AXI_NRT_CLK] = &cam_cc_camnoc_axi_nrt_clk.clkr,
+	[CAM_CC_CAMNOC_AXI_RT_CLK] = &cam_cc_camnoc_axi_rt_clk.clkr,
+	[CAM_CC_CAMNOC_AXI_RT_CLK_SRC] = &cam_cc_camnoc_axi_rt_clk_src.clkr,
+	[CAM_CC_CAMNOC_DCD_XO_CLK] = &cam_cc_camnoc_dcd_xo_clk.clkr,
+	[CAM_CC_CAMNOC_XO_CLK] = &cam_cc_camnoc_xo_clk.clkr,
+	[CAM_CC_CCI_0_CLK] = &cam_cc_cci_0_clk.clkr,
+	[CAM_CC_CCI_0_CLK_SRC] = &cam_cc_cci_0_clk_src.clkr,
+	[CAM_CC_CCI_1_CLK] = &cam_cc_cci_1_clk.clkr,
+	[CAM_CC_CCI_1_CLK_SRC] = &cam_cc_cci_1_clk_src.clkr,
+	[CAM_CC_CORE_AHB_CLK] = &cam_cc_core_ahb_clk.clkr,
+	[CAM_CC_CPAS_AHB_CLK] = &cam_cc_cpas_ahb_clk.clkr,
+	[CAM_CC_CPAS_BPS_CLK] = &cam_cc_cpas_bps_clk.clkr,
+	[CAM_CC_CPAS_FAST_AHB_CLK] = &cam_cc_cpas_fast_ahb_clk.clkr,
+	[CAM_CC_CPAS_IFE_0_CLK] = &cam_cc_cpas_ife_0_clk.clkr,
+	[CAM_CC_CPAS_IFE_1_CLK] = &cam_cc_cpas_ife_1_clk.clkr,
+	[CAM_CC_CPAS_IFE_LITE_CLK] = &cam_cc_cpas_ife_lite_clk.clkr,
+	[CAM_CC_CPAS_IPE_NPS_CLK] = &cam_cc_cpas_ipe_nps_clk.clkr,
+	[CAM_CC_CPAS_SFE_0_CLK] = &cam_cc_cpas_sfe_0_clk.clkr,
+	[CAM_CC_CPHY_RX_CLK_SRC] = &cam_cc_cphy_rx_clk_src.clkr,
+	[CAM_CC_CSI0PHYTIMER_CLK] = &cam_cc_csi0phytimer_clk.clkr,
+	[CAM_CC_CSI0PHYTIMER_CLK_SRC] = &cam_cc_csi0phytimer_clk_src.clkr,
+	[CAM_CC_CSI1PHYTIMER_CLK] = &cam_cc_csi1phytimer_clk.clkr,
+	[CAM_CC_CSI1PHYTIMER_CLK_SRC] = &cam_cc_csi1phytimer_clk_src.clkr,
+	[CAM_CC_CSI2PHYTIMER_CLK] = &cam_cc_csi2phytimer_clk.clkr,
+	[CAM_CC_CSI2PHYTIMER_CLK_SRC] = &cam_cc_csi2phytimer_clk_src.clkr,
+	[CAM_CC_CSI3PHYTIMER_CLK] = &cam_cc_csi3phytimer_clk.clkr,
+	[CAM_CC_CSI3PHYTIMER_CLK_SRC] = &cam_cc_csi3phytimer_clk_src.clkr,
+	[CAM_CC_CSI4PHYTIMER_CLK] = &cam_cc_csi4phytimer_clk.clkr,
+	[CAM_CC_CSI4PHYTIMER_CLK_SRC] = &cam_cc_csi4phytimer_clk_src.clkr,
+	[CAM_CC_CSI5PHYTIMER_CLK] = &cam_cc_csi5phytimer_clk.clkr,
+	[CAM_CC_CSI5PHYTIMER_CLK_SRC] = &cam_cc_csi5phytimer_clk_src.clkr,
+	[CAM_CC_CSID_CLK] = &cam_cc_csid_clk.clkr,
+	[CAM_CC_CSID_CLK_SRC] = &cam_cc_csid_clk_src.clkr,
+	[CAM_CC_CSID_CSIPHY_RX_CLK] = &cam_cc_csid_csiphy_rx_clk.clkr,
+	[CAM_CC_CSIPHY0_CLK] = &cam_cc_csiphy0_clk.clkr,
+	[CAM_CC_CSIPHY1_CLK] = &cam_cc_csiphy1_clk.clkr,
+	[CAM_CC_CSIPHY2_CLK] = &cam_cc_csiphy2_clk.clkr,
+	[CAM_CC_CSIPHY3_CLK] = &cam_cc_csiphy3_clk.clkr,
+	[CAM_CC_CSIPHY4_CLK] = &cam_cc_csiphy4_clk.clkr,
+	[CAM_CC_CSIPHY5_CLK] = &cam_cc_csiphy5_clk.clkr,
+	[CAM_CC_FAST_AHB_CLK_SRC] = &cam_cc_fast_ahb_clk_src.clkr,
+	[CAM_CC_ICP_AHB_CLK] = &cam_cc_icp_ahb_clk.clkr,
+	[CAM_CC_ICP_CLK] = &cam_cc_icp_clk.clkr,
+	[CAM_CC_ICP_CLK_SRC] = &cam_cc_icp_clk_src.clkr,
+	[CAM_CC_IFE_0_CLK] = &cam_cc_ife_0_clk.clkr,
+	[CAM_CC_IFE_0_CLK_SRC] = &cam_cc_ife_0_clk_src.clkr,
+	[CAM_CC_IFE_0_DSP_CLK] = &cam_cc_ife_0_dsp_clk.clkr,
+	[CAM_CC_IFE_0_FAST_AHB_CLK] = &cam_cc_ife_0_fast_ahb_clk.clkr,
+	[CAM_CC_IFE_1_CLK] = &cam_cc_ife_1_clk.clkr,
+	[CAM_CC_IFE_1_CLK_SRC] = &cam_cc_ife_1_clk_src.clkr,
+	[CAM_CC_IFE_1_DSP_CLK] = &cam_cc_ife_1_dsp_clk.clkr,
+	[CAM_CC_IFE_1_FAST_AHB_CLK] = &cam_cc_ife_1_fast_ahb_clk.clkr,
+	[CAM_CC_IFE_LITE_AHB_CLK] = &cam_cc_ife_lite_ahb_clk.clkr,
+	[CAM_CC_IFE_LITE_CLK] = &cam_cc_ife_lite_clk.clkr,
+	[CAM_CC_IFE_LITE_CLK_SRC] = &cam_cc_ife_lite_clk_src.clkr,
+	[CAM_CC_IFE_LITE_CPHY_RX_CLK] = &cam_cc_ife_lite_cphy_rx_clk.clkr,
+	[CAM_CC_IFE_LITE_CSID_CLK] = &cam_cc_ife_lite_csid_clk.clkr,
+	[CAM_CC_IFE_LITE_CSID_CLK_SRC] = &cam_cc_ife_lite_csid_clk_src.clkr,
+	[CAM_CC_IPE_NPS_AHB_CLK] = &cam_cc_ipe_nps_ahb_clk.clkr,
+	[CAM_CC_IPE_NPS_CLK] = &cam_cc_ipe_nps_clk.clkr,
+	[CAM_CC_IPE_NPS_CLK_SRC] = &cam_cc_ipe_nps_clk_src.clkr,
+	[CAM_CC_IPE_NPS_FAST_AHB_CLK] = &cam_cc_ipe_nps_fast_ahb_clk.clkr,
+	[CAM_CC_IPE_PPS_CLK] = &cam_cc_ipe_pps_clk.clkr,
+	[CAM_CC_IPE_PPS_FAST_AHB_CLK] = &cam_cc_ipe_pps_fast_ahb_clk.clkr,
+	[CAM_CC_JPEG_CLK] = &cam_cc_jpeg_clk.clkr,
+	[CAM_CC_JPEG_CLK_SRC] = &cam_cc_jpeg_clk_src.clkr,
+	[CAM_CC_MCLK0_CLK] = &cam_cc_mclk0_clk.clkr,
+	[CAM_CC_MCLK0_CLK_SRC] = &cam_cc_mclk0_clk_src.clkr,
+	[CAM_CC_MCLK1_CLK] = &cam_cc_mclk1_clk.clkr,
+	[CAM_CC_MCLK1_CLK_SRC] = &cam_cc_mclk1_clk_src.clkr,
+	[CAM_CC_MCLK2_CLK] = &cam_cc_mclk2_clk.clkr,
+	[CAM_CC_MCLK2_CLK_SRC] = &cam_cc_mclk2_clk_src.clkr,
+	[CAM_CC_MCLK3_CLK] = &cam_cc_mclk3_clk.clkr,
+	[CAM_CC_MCLK3_CLK_SRC] = &cam_cc_mclk3_clk_src.clkr,
+	[CAM_CC_MCLK4_CLK] = &cam_cc_mclk4_clk.clkr,
+	[CAM_CC_MCLK4_CLK_SRC] = &cam_cc_mclk4_clk_src.clkr,
+	[CAM_CC_MCLK5_CLK] = &cam_cc_mclk5_clk.clkr,
+	[CAM_CC_MCLK5_CLK_SRC] = &cam_cc_mclk5_clk_src.clkr,
+	[CAM_CC_MCLK6_CLK] = &cam_cc_mclk6_clk.clkr,
+	[CAM_CC_MCLK6_CLK_SRC] = &cam_cc_mclk6_clk_src.clkr,
+	[CAM_CC_MCLK7_CLK] = &cam_cc_mclk7_clk.clkr,
+	[CAM_CC_MCLK7_CLK_SRC] = &cam_cc_mclk7_clk_src.clkr,
+	[CAM_CC_PLL0] = &cam_cc_pll0.clkr,
+	[CAM_CC_PLL0_OUT_EVEN] = &cam_cc_pll0_out_even.clkr,
+	[CAM_CC_PLL0_OUT_ODD] = &cam_cc_pll0_out_odd.clkr,
+	[CAM_CC_PLL1] = &cam_cc_pll1.clkr,
+	[CAM_CC_PLL1_OUT_EVEN] = &cam_cc_pll1_out_even.clkr,
+	[CAM_CC_PLL2] = &cam_cc_pll2.clkr,
+	[CAM_CC_PLL3] = &cam_cc_pll3.clkr,
+	[CAM_CC_PLL3_OUT_EVEN] = &cam_cc_pll3_out_even.clkr,
+	[CAM_CC_PLL4] = &cam_cc_pll4.clkr,
+	[CAM_CC_PLL4_OUT_EVEN] = &cam_cc_pll4_out_even.clkr,
+	[CAM_CC_PLL6] = &cam_cc_pll6.clkr,
+	[CAM_CC_PLL6_OUT_EVEN] = &cam_cc_pll6_out_even.clkr,
+	[CAM_CC_PLL8] = &cam_cc_pll8.clkr,
+	[CAM_CC_PLL8_OUT_EVEN] = &cam_cc_pll8_out_even.clkr,
+	[CAM_CC_SFE_0_CLK] = &cam_cc_sfe_0_clk.clkr,
+	[CAM_CC_SFE_0_CLK_SRC] = &cam_cc_sfe_0_clk_src.clkr,
+	[CAM_CC_SFE_0_FAST_AHB_CLK] = &cam_cc_sfe_0_fast_ahb_clk.clkr,
+	[CAM_CC_SLEEP_CLK_SRC] = &cam_cc_sleep_clk_src.clkr,
+	[CAM_CC_SLOW_AHB_CLK_SRC] = &cam_cc_slow_ahb_clk_src.clkr,
+	[CAM_CC_XO_CLK_SRC] = &cam_cc_xo_clk_src.clkr,
+};
+
+static struct gdsc *cam_cc_x1e80100_gdscs[] = {
+	[CAM_CC_BPS_GDSC] = &cam_cc_bps_gdsc,
+	[CAM_CC_IFE_0_GDSC] = &cam_cc_ife_0_gdsc,
+	[CAM_CC_IFE_1_GDSC] = &cam_cc_ife_1_gdsc,
+	[CAM_CC_IPE_0_GDSC] = &cam_cc_ipe_0_gdsc,
+	[CAM_CC_SFE_0_GDSC] = &cam_cc_sfe_0_gdsc,
+	[CAM_CC_TITAN_TOP_GDSC] = &cam_cc_titan_top_gdsc,
+};
+
+static const struct qcom_reset_map cam_cc_x1e80100_resets[] = {
+	[CAM_CC_BPS_BCR] = { 0x10000 },
+	[CAM_CC_ICP_BCR] = { 0x1351c },
+	[CAM_CC_IFE_0_BCR] = { 0x11000 },
+	[CAM_CC_IFE_1_BCR] = { 0x12000 },
+	[CAM_CC_IPE_0_BCR] = { 0x103b4 },
+	[CAM_CC_SFE_0_BCR] = { 0x1327c },
+};
+
+static const struct regmap_config cam_cc_x1e80100_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x1603c,
+	.fast_io = true,
+};
+
+static const struct qcom_cc_desc cam_cc_x1e80100_desc = {
+	.config = &cam_cc_x1e80100_regmap_config,
+	.clks = cam_cc_x1e80100_clocks,
+	.num_clks = ARRAY_SIZE(cam_cc_x1e80100_clocks),
+	.resets = cam_cc_x1e80100_resets,
+	.num_resets = ARRAY_SIZE(cam_cc_x1e80100_resets),
+	.gdscs = cam_cc_x1e80100_gdscs,
+	.num_gdscs = ARRAY_SIZE(cam_cc_x1e80100_gdscs),
+};
+
+static const struct of_device_id cam_cc_x1e80100_match_table[] = {
+	{ .compatible = "qcom,x1e80100-camcc" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, cam_cc_x1e80100_match_table);
+
+static int cam_cc_x1e80100_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap;
+	int ret;
+
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
+
+	regmap = qcom_cc_map(pdev, &cam_cc_x1e80100_desc);
+	if (IS_ERR(regmap)) {
+		pm_runtime_put(&pdev->dev);
+		return PTR_ERR(regmap);
+	}
+
+	clk_lucid_ole_pll_configure(&cam_cc_pll0, regmap, &cam_cc_pll0_config);
+	clk_lucid_ole_pll_configure(&cam_cc_pll1, regmap, &cam_cc_pll1_config);
+	clk_rivian_evo_pll_configure(&cam_cc_pll2, regmap, &cam_cc_pll2_config);
+	clk_lucid_ole_pll_configure(&cam_cc_pll3, regmap, &cam_cc_pll3_config);
+	clk_lucid_ole_pll_configure(&cam_cc_pll4, regmap, &cam_cc_pll4_config);
+	clk_lucid_ole_pll_configure(&cam_cc_pll6, regmap, &cam_cc_pll6_config);
+	clk_lucid_ole_pll_configure(&cam_cc_pll8, regmap, &cam_cc_pll8_config);
+
+	/*
+	 * Keep clocks always enabled:
+	 *	cam_cc_gdsc_clk
+	 *	cam_cc_sleep_clk
+	 */
+	regmap_update_bits(regmap, 0x13a9c, BIT(0), BIT(0));
+	regmap_update_bits(regmap, 0x13ab8, BIT(0), BIT(0));
+
+	ret = qcom_cc_really_probe(pdev, &cam_cc_x1e80100_desc, regmap);
+
+	pm_runtime_put(&pdev->dev);
+
+	return ret;
+}
+
+static struct platform_driver cam_cc_x1e80100_driver = {
+	.probe = cam_cc_x1e80100_probe,
+	.driver = {
+		.name = "cam_cc-x1e80100",
+		.of_match_table = cam_cc_x1e80100_match_table,
+	},
+};
+
+module_platform_driver(cam_cc_x1e80100_driver);
+
+MODULE_DESCRIPTION("QTI CAM_CC x1e80100 Driver");
+MODULE_LICENSE("GPL");

-- 
2.34.1


