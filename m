Return-Path: <devicetree+bounces-12138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4187F7D815B
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83D55B21048
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48C8156F9;
	Thu, 26 Oct 2023 10:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CRjbp2Kj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04229156D9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:54:02 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC4C1A7
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:53:54 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c509f2c46cso10333581fa.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698317633; x=1698922433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zo5XdKYRMiAvAI3BO12JZN9CkfUgpQW4yHwN2T/8f0I=;
        b=CRjbp2Kj8+HaIXlbWzY+tOSUAC14shPqWD3Gjlrkl2vltbQsDJ3F3QR5yr50f3C8Sr
         dvEj8IsVi0lFolUrJ0+H5o5fVcGHyS+wDSEYeZsSMaIvgENScW4qrHDmYrhgXjSzeOpE
         TfXizWfVXGPhD0KoaA++OstgPuVjZiWRdY+gBrGjX14JgtrNoDYYn3pkrpznyo5+en8c
         mZHUM9ppW00TnHyF6QTNwmC7a0L4X/b0QqdOPCJPLlJQASgsJvkAZOdh7PridJDVnH0B
         MBZnD4ry8WZVeU2zRU5fHo1LhdJwW+WCe9DZTkhqav3U5gej9Qedzap/C/X+9HRPuH3O
         7daQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698317633; x=1698922433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zo5XdKYRMiAvAI3BO12JZN9CkfUgpQW4yHwN2T/8f0I=;
        b=qb1MuXp9kDZaeBQLMAg98iXstk6WBIpX0T/4XA1jRRUs+p28MPzKSpS7rgePQ60tc8
         X5M0iRTlqVKTu6hfxP02YO8AvAztm6aEw6G2ArdEaP6QmIjQ+4sXH4uUUH3QDoRlIVcR
         MO4HaZjkhhiBc0S/OKVIg1I7QmpSupiYB73Aduf8/m9qZ9D5EghM048gbSVnrnjvjktB
         d35qC+xQEHLP3rKgRuHvzENw1xbyCzE51i8MzqLejZN4a93aHdMYC8Zmf3sGb6aFKFAj
         yaF8JUmU2wy7Rd5at1eIOWTBX4LzY5i2otMacra7k9kI4AfuQhnF4o+SBu4ffk+Drq8R
         82TQ==
X-Gm-Message-State: AOJu0YzTgH4Ff5xVz5mRGq7dQoaDi2Vqtv5S019vLvrgzP8a3PDFWXIm
	KYX/dgJ2dcClLGTudMEwvQevOw==
X-Google-Smtp-Source: AGHT+IH6UI3tzebrMVKMvlMhaB/xNC//ANy3Z51IKN83KmTn36dIaHxXqCHEiUNsnEiJ1neZthCvxw==
X-Received: by 2002:a2e:9882:0:b0:2c5:183d:42bf with SMTP id b2-20020a2e9882000000b002c5183d42bfmr12550659ljj.45.1698317632456;
        Thu, 26 Oct 2023 03:53:52 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id y9-20020a7bcd89000000b00407efbc4361sm2239465wmj.9.2023.10.26.03.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 03:53:52 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [RESEND PATCH v4 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC
Date: Thu, 26 Oct 2023 11:53:44 +0100
Message-Id: <20231026105345.3376-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the sc8280xp CAMCC driver which follows the sdm845 CAMCC lineage
with additional CCI and IFE blocks and more granular clock parentage.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/clk/qcom/Kconfig          |    9 +
 drivers/clk/qcom/Makefile         |    1 +
 drivers/clk/qcom/camcc-sc8280xp.c | 3044 +++++++++++++++++++++++++++++
 3 files changed, 3054 insertions(+)
 create mode 100644 drivers/clk/qcom/camcc-sc8280xp.c

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index ad1acd9b7426..e5f4c74addfc 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -427,6 +427,15 @@ config SC_CAMCC_7280
 	  Say Y if you want to support camera devices and functionality such as
 	  capturing pictures.
 
+config SC_CAMCC_8280XP
+	tristate "SC8280XP Camera Clock Controller"
+	select SC_GCC_8280XP
+	help
+	  Support for the camera clock controller on Qualcomm Technologies, Inc
+	  SC8280XP devices.
+	  Say Y if you want to support camera devices and functionality such as
+	  capturing pictures.
+
 config SC_DISPCC_7180
 	tristate "SC7180 Display Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index 17edd73f9839..8209eddf040e 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -68,6 +68,7 @@ obj-$(CONFIG_QCS_TURING_404) += turingcc-qcs404.o
 obj-$(CONFIG_QDU_GCC_1000) += gcc-qdu1000.o
 obj-$(CONFIG_SC_CAMCC_7180) += camcc-sc7180.o
 obj-$(CONFIG_SC_CAMCC_7280) += camcc-sc7280.o
+obj-$(CONFIG_SC_CAMCC_8280XP) += camcc-sc8280xp.o
 obj-$(CONFIG_SC_DISPCC_7180) += dispcc-sc7180.o
 obj-$(CONFIG_SC_DISPCC_7280) += dispcc-sc7280.o
 obj-$(CONFIG_SC_DISPCC_8280XP) += dispcc-sc8280xp.o
diff --git a/drivers/clk/qcom/camcc-sc8280xp.c b/drivers/clk/qcom/camcc-sc8280xp.c
new file mode 100644
index 000000000000..877341e7327e
--- /dev/null
+++ b/drivers/clk/qcom/camcc-sc8280xp.c
@@ -0,0 +1,3044 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2023, Linaro Ltd.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
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
+	DT_IFACE,
+	DT_BI_TCXO,
+	DT_BI_TCXO_AO,
+	DT_SLEEP_CLK,
+};
+
+enum {
+	P_BI_TCXO,
+	P_CAMCC_PLL0_OUT_EVEN,
+	P_CAMCC_PLL0_OUT_MAIN,
+	P_CAMCC_PLL0_OUT_ODD,
+	P_CAMCC_PLL1_OUT_EVEN,
+	P_CAMCC_PLL2_OUT_AUX,
+	P_CAMCC_PLL2_OUT_EARLY,
+	P_CAMCC_PLL3_OUT_EVEN,
+	P_CAMCC_PLL4_OUT_EVEN,
+	P_CAMCC_PLL5_OUT_EVEN,
+	P_CAMCC_PLL6_OUT_EVEN,
+	P_CAMCC_PLL7_OUT_EVEN,
+	P_CAMCC_PLL7_OUT_ODD,
+	P_SLEEP_CLK,
+};
+
+static struct pll_vco lucid_vco[] = {
+	{ 249600000, 1800000000, 0 },
+};
+
+static struct pll_vco zonda_vco[] = {
+	{ 595200000, 3600000000, 0 },
+};
+
+static struct alpha_pll_config camcc_pll0_config = {
+	.l = 0x3e,
+	.alpha = 0x8000,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00003100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll0 = {
+	.offset = 0x0,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll0",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll0_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll0_out_even = {
+	.offset = 0x0,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll0_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll0_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll0_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll0.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll0_out_odd[] = {
+	{ 0x3, 3 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll0_out_odd = {
+	.offset = 0x0,
+	.post_div_shift = 12,
+	.post_div_table = post_div_table_camcc_pll0_out_odd,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll0_out_odd),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll0_out_odd",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll0.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll1_config = {
+	.l = 0x21,
+	.alpha = 0x5555,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00000100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll1 = {
+	.offset = 0x1000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll1",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll1_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll1_out_even = {
+	.offset = 0x1000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll1_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll1_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll1_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll1.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll2_config = {
+	.l = 0x32,
+	.alpha = 0x0,
+	.config_ctl_val = 0x08200800,
+	.config_ctl_hi_val = 0x05028011,
+	.config_ctl_hi1_val = 0x08000000,
+};
+
+static struct clk_alpha_pll camcc_pll2 = {
+	.offset = 0x2000,
+	.vco_table = zonda_vco,
+	.num_vco = ARRAY_SIZE(zonda_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_ZONDA],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll2",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_zonda_ops,
+		},
+	},
+};
+
+static struct alpha_pll_config camcc_pll3_config = {
+	.l = 0x29,
+	.alpha = 0xaaaa,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00000100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll3 = {
+	.offset = 0x3000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll3",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll3_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll3_out_even = {
+	.offset = 0x3000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll3_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll3_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll3_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll3.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll4_config = {
+	.l = 0x29,
+	.alpha = 0xaaaa,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00000100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll4 = {
+	.offset = 0x4000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll4",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll4_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll4_out_even = {
+	.offset = 0x4000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll4_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll4_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll4_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll4.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll5_config = {
+	.l = 0x29,
+	.alpha = 0xaaaa,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00000100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll5 = {
+	.offset = 0x10000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll5",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll5_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll5_out_even = {
+	.offset = 0x10000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll5_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll5_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll5_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll5.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll6_config = {
+	.l = 0x29,
+	.alpha = 0xaaaa,
+	.config_ctl_val = 0x20486699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00000100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll6 = {
+	.offset = 0x11000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll6",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll6_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll6_out_even = {
+	.offset = 0x11000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll6_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll6_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll6_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll6.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static struct alpha_pll_config camcc_pll7_config = {
+	.l = 0x32,
+	.alpha = 0x0,
+	.config_ctl_val = 0x20485699,
+	.config_ctl_hi_val = 0x00002261,
+	.config_ctl_hi1_val = 0x2a9a699c,
+	.test_ctl_val = 0x00000000,
+	.test_ctl_hi_val = 0x00000000,
+	.test_ctl_hi1_val = 0x01800000,
+	.user_ctl_val = 0x00003100,
+	.user_ctl_hi_val = 0x00000805,
+	.user_ctl_hi1_val = 0x00000000,
+};
+
+static struct clk_alpha_pll camcc_pll7 = {
+	.offset = 0x12000,
+	.vco_table = lucid_vco,
+	.num_vco = ARRAY_SIZE(lucid_vco),
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr = {
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_pll7",
+			.parent_data = &(const struct clk_parent_data){
+				.index = DT_BI_TCXO,
+			},
+			.num_parents = 1,
+			.ops = &clk_alpha_pll_lucid_5lpe_ops,
+		},
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll7_out_even[] = {
+	{ 0x1, 2 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll7_out_even = {
+	.offset = 0x12000,
+	.post_div_shift = 8,
+	.post_div_table = post_div_table_camcc_pll7_out_even,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll7_out_even),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll7_out_even",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll7.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static const struct clk_div_table post_div_table_camcc_pll7_out_odd[] = {
+	{ 0x3, 3 },
+};
+
+static struct clk_alpha_pll_postdiv camcc_pll7_out_odd = {
+	.offset = 0x12000,
+	.post_div_shift = 12,
+	.post_div_table = post_div_table_camcc_pll7_out_odd,
+	.num_post_div = ARRAY_SIZE(post_div_table_camcc_pll7_out_odd),
+	.width = 4,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID],
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_pll7_out_odd",
+		.parent_hws = (const struct clk_hw*[]){
+			&camcc_pll7.clkr.hw,
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_alpha_pll_postdiv_lucid_ops,
+	},
+};
+
+static const struct parent_map camcc_parent_map_0[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL0_OUT_MAIN, 1 },
+	{ P_CAMCC_PLL0_OUT_EVEN, 2 },
+	{ P_CAMCC_PLL0_OUT_ODD, 3 },
+	{ P_CAMCC_PLL7_OUT_EVEN, 5 },
+};
+
+static const struct clk_parent_data camcc_parent_data_0[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll0.clkr.hw },
+	{ .hw = &camcc_pll0_out_even.clkr.hw },
+	{ .hw = &camcc_pll0_out_odd.clkr.hw },
+	{ .hw = &camcc_pll7_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_1[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL2_OUT_AUX, 2 },
+	{ P_CAMCC_PLL2_OUT_EARLY, 5 },
+};
+
+static const struct clk_parent_data camcc_parent_data_1[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll2.clkr.hw },
+	{ .hw = &camcc_pll2.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_2[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL0_OUT_MAIN, 1 },
+	{ P_CAMCC_PLL0_OUT_EVEN, 2 },
+	{ P_CAMCC_PLL0_OUT_ODD, 3 },
+	{ P_CAMCC_PLL7_OUT_ODD, 4 },
+	{ P_CAMCC_PLL7_OUT_EVEN, 5 },
+};
+
+static const struct clk_parent_data camcc_parent_data_2[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll0.clkr.hw },
+	{ .hw = &camcc_pll0_out_even.clkr.hw },
+	{ .hw = &camcc_pll0_out_odd.clkr.hw },
+	{ .hw = &camcc_pll7_out_odd.clkr.hw },
+	{ .hw = &camcc_pll7_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_3[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL0_OUT_MAIN, 1 },
+	{ P_CAMCC_PLL0_OUT_EVEN, 2 },
+	{ P_CAMCC_PLL0_OUT_ODD, 3 },
+	{ P_CAMCC_PLL7_OUT_EVEN, 5 },
+	{ P_CAMCC_PLL3_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data camcc_parent_data_3[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll0.clkr.hw },
+	{ .hw = &camcc_pll0_out_even.clkr.hw },
+	{ .hw = &camcc_pll0_out_odd.clkr.hw },
+	{ .hw = &camcc_pll7_out_even.clkr.hw },
+	{ .hw = &camcc_pll3_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_4[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL3_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data camcc_parent_data_4[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll3_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_5[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL4_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data camcc_parent_data_5[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll4_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_6[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL5_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data camcc_parent_data_6[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll5_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_7[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL6_OUT_EVEN, 6 },
+};
+
+static const struct clk_parent_data camcc_parent_data_7[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll6_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_8[] = {
+	{ P_BI_TCXO, 0 },
+	{ P_CAMCC_PLL1_OUT_EVEN, 4 },
+};
+
+static const struct clk_parent_data camcc_parent_data_8[] = {
+	{ .index = DT_BI_TCXO },
+	{ .hw = &camcc_pll1_out_even.clkr.hw },
+};
+
+static const struct parent_map camcc_parent_map_9[] = {
+	{ P_SLEEP_CLK, 0 },
+};
+
+static const struct clk_parent_data camcc_parent_data_9[] = {
+	{ .fw_name = "sleep_clk" },
+};
+
+static const struct parent_map camcc_parent_map_10[] = {
+	{ P_BI_TCXO, 0 },
+};
+
+static const struct clk_parent_data camcc_parent_data_10_ao[] = {
+	{ .fw_name = "bi_tcxo_ao" },
+};
+
+static const struct freq_tbl ftbl_camcc_bps_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(200000000, P_CAMCC_PLL0_OUT_ODD, 2, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+	F(760000000, P_CAMCC_PLL3_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_bps_clk_src = {
+	.cmd_rcgr = 0x7010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_3,
+	.freq_tbl = ftbl_camcc_bps_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_bps_clk_src",
+		.parent_data = camcc_parent_data_3,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_3),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_camnoc_axi_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(150000000, P_CAMCC_PLL0_OUT_EVEN, 4, 0, 0),
+	F(266666667, P_CAMCC_PLL0_OUT_ODD, 1.5, 0, 0),
+	F(320000000, P_CAMCC_PLL7_OUT_ODD, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_camnoc_axi_clk_src = {
+	.cmd_rcgr = 0xc170,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_camnoc_axi_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_camnoc_axi_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_cci_0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(37500000, P_CAMCC_PLL0_OUT_EVEN, 16, 0, 0),
+};
+
+static struct clk_rcg2 camcc_cci_0_clk_src = {
+	.cmd_rcgr = 0xc108,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_cci_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_cci_0_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_cci_1_clk_src = {
+	.cmd_rcgr = 0xc124,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_cci_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_cci_1_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_cci_2_clk_src = {
+	.cmd_rcgr = 0xc204,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_cci_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_cci_2_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_cci_3_clk_src = {
+	.cmd_rcgr = 0xc220,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_cci_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_cci_3_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_cphy_rx_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(240000000, P_CAMCC_PLL0_OUT_EVEN, 2.5, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_cphy_rx_clk_src = {
+	.cmd_rcgr = 0xa064,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_cphy_rx_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_cphy_rx_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_csi0phytimer_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(300000000, P_CAMCC_PLL0_OUT_EVEN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_csi0phytimer_clk_src = {
+	.cmd_rcgr = 0x6004,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_csi0phytimer_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_csi1phytimer_clk_src = {
+	.cmd_rcgr = 0x6028,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_csi1phytimer_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_csi2phytimer_clk_src = {
+	.cmd_rcgr = 0x604c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_csi2phytimer_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_csi3phytimer_clk_src = {
+	.cmd_rcgr = 0x6074,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_csi0phytimer_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_csi3phytimer_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_fast_ahb_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(100000000, P_CAMCC_PLL0_OUT_EVEN, 6, 0, 0),
+	F(200000000, P_CAMCC_PLL0_OUT_EVEN, 3, 0, 0),
+	F(300000000, P_CAMCC_PLL0_OUT_MAIN, 4, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_MAIN, 3, 0, 0),
+};
+
+static struct clk_rcg2 camcc_fast_ahb_clk_src = {
+	.cmd_rcgr = 0x703c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_fast_ahb_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_fast_ahb_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_icp_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_icp_clk_src = {
+	.cmd_rcgr = 0xc0b8,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_icp_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_icp_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(558000000, P_CAMCC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(637000000, P_CAMCC_PLL3_OUT_EVEN, 1, 0, 0),
+	F(760000000, P_CAMCC_PLL3_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_0_clk_src = {
+	.cmd_rcgr = 0xa010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_4,
+	.freq_tbl = ftbl_camcc_ife_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_0_clk_src",
+		.parent_data = camcc_parent_data_4,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_4),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_0_csid_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(75000000, P_CAMCC_PLL0_OUT_EVEN, 8, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_0_csid_clk_src = {
+	.cmd_rcgr = 0xa03c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_0_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_0_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_1_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(558000000, P_CAMCC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(637000000, P_CAMCC_PLL4_OUT_EVEN, 1, 0, 0),
+	F(760000000, P_CAMCC_PLL4_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_1_clk_src = {
+	.cmd_rcgr = 0xb010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_5,
+	.freq_tbl = ftbl_camcc_ife_1_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_1_clk_src",
+		.parent_data = camcc_parent_data_5,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_5),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_1_csid_clk_src = {
+	.cmd_rcgr = 0xb03c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_0_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_1_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_2_clk_src[] = {
+	F(400000000, P_CAMCC_PLL5_OUT_EVEN, 1, 0, 0),
+	F(558000000, P_CAMCC_PLL5_OUT_EVEN, 1, 0, 0),
+	F(637000000, P_CAMCC_PLL5_OUT_EVEN, 1, 0, 0),
+	F(760000000, P_CAMCC_PLL5_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_2_clk_src = {
+	.cmd_rcgr = 0xf010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_6,
+	.freq_tbl = ftbl_camcc_ife_2_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_2_clk_src",
+		.parent_data = camcc_parent_data_6,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_6),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_2_csid_clk_src[] = {
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_2_csid_clk_src = {
+	.cmd_rcgr = 0xf03c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_2_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_3_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(558000000, P_CAMCC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(637000000, P_CAMCC_PLL6_OUT_EVEN, 1, 0, 0),
+	F(760000000, P_CAMCC_PLL6_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_3_clk_src = {
+	.cmd_rcgr = 0xf07c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_7,
+	.freq_tbl = ftbl_camcc_ife_3_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_3_clk_src",
+		.parent_data = camcc_parent_data_7,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_7),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_3_csid_clk_src = {
+	.cmd_rcgr = 0xf0a8,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_3_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ife_lite_0_clk_src[] = {
+	F(320000000, P_CAMCC_PLL7_OUT_ODD, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ife_lite_0_clk_src = {
+	.cmd_rcgr = 0xc004,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_ife_lite_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_0_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_0_csid_clk_src = {
+	.cmd_rcgr = 0xc020,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_0_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_1_clk_src = {
+	.cmd_rcgr = 0xc048,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_ife_lite_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_1_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_1_csid_clk_src = {
+	.cmd_rcgr = 0xc064,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_1_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_2_clk_src = {
+	.cmd_rcgr = 0xc240,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_ife_lite_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_2_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_2_csid_clk_src = {
+	.cmd_rcgr = 0xc25c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_2_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_3_clk_src = {
+	.cmd_rcgr = 0xc284,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_ife_lite_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_3_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_ife_lite_3_csid_clk_src = {
+	.cmd_rcgr = 0xc2a0,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_ife_2_csid_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ife_lite_3_csid_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_ipe_0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(320000000, P_CAMCC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(475000000, P_CAMCC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(520000000, P_CAMCC_PLL1_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL1_OUT_EVEN, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_ipe_0_clk_src = {
+	.cmd_rcgr = 0x8010,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_8,
+	.freq_tbl = ftbl_camcc_ipe_0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_ipe_0_clk_src",
+		.parent_data = camcc_parent_data_8,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_8),
+		.flags = CLK_SET_RATE_PARENT,
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_jpeg_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(200000000, P_CAMCC_PLL0_OUT_ODD, 2, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_ODD, 1, 0, 0),
+	F(480000000, P_CAMCC_PLL7_OUT_EVEN, 1, 0, 0),
+	F(600000000, P_CAMCC_PLL0_OUT_MAIN, 2, 0, 0),
+};
+
+static struct clk_rcg2 camcc_jpeg_clk_src = {
+	.cmd_rcgr = 0xc08c,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_jpeg_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_jpeg_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_lrme_clk_src[] = {
+	F(240000000, P_CAMCC_PLL7_OUT_EVEN, 2, 0, 0),
+	F(300000000, P_CAMCC_PLL0_OUT_EVEN, 2, 0, 0),
+	F(320000000, P_CAMCC_PLL7_OUT_ODD, 1, 0, 0),
+	F(400000000, P_CAMCC_PLL0_OUT_MAIN, 3, 0, 0),
+};
+
+static struct clk_rcg2 camcc_lrme_clk_src = {
+	.cmd_rcgr = 0xc144,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_2,
+	.freq_tbl = ftbl_camcc_lrme_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_lrme_clk_src",
+		.parent_data = camcc_parent_data_2,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_2),
+		.ops = &clk_rcg2_shared_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_mclk0_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(24000000, P_CAMCC_PLL2_OUT_EARLY, 10, 1, 4),
+	F(64000000, P_CAMCC_PLL2_OUT_EARLY, 15, 0, 0),
+};
+
+static struct clk_rcg2 camcc_mclk0_clk_src = {
+	.cmd_rcgr = 0x5004,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk0_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk1_clk_src = {
+	.cmd_rcgr = 0x5024,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk1_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk2_clk_src = {
+	.cmd_rcgr = 0x5044,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk2_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk3_clk_src = {
+	.cmd_rcgr = 0x5064,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk3_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk4_clk_src = {
+	.cmd_rcgr = 0x5084,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk4_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk5_clk_src = {
+	.cmd_rcgr = 0x50a4,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk5_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk6_clk_src = {
+	.cmd_rcgr = 0x50c4,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk6_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_rcg2 camcc_mclk7_clk_src = {
+	.cmd_rcgr = 0x50e4,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_1,
+	.freq_tbl = ftbl_camcc_mclk0_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_mclk7_clk_src",
+		.parent_data = camcc_parent_data_1,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_1),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_sleep_clk_src[] = {
+	F(32000, P_SLEEP_CLK, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_sleep_clk_src = {
+	.cmd_rcgr = 0xc1e8,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_9,
+	.freq_tbl = ftbl_camcc_sleep_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_sleep_clk_src",
+		.parent_data = camcc_parent_data_9,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_9),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_slow_ahb_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+	F(80000000, P_CAMCC_PLL7_OUT_EVEN, 6, 0, 0),
+};
+
+static struct clk_rcg2 camcc_slow_ahb_clk_src = {
+	.cmd_rcgr = 0x7058,
+	.mnd_width = 8,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_0,
+	.freq_tbl = ftbl_camcc_slow_ahb_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_slow_ahb_clk_src",
+		.parent_data = camcc_parent_data_0,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_0),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static const struct freq_tbl ftbl_camcc_xo_clk_src[] = {
+	F(19200000, P_BI_TCXO, 1, 0, 0),
+};
+
+static struct clk_rcg2 camcc_xo_clk_src = {
+	.cmd_rcgr = 0xc1cc,
+	.mnd_width = 0,
+	.hid_width = 5,
+	.parent_map = camcc_parent_map_10,
+	.freq_tbl = ftbl_camcc_xo_clk_src,
+	.clkr.hw.init = &(struct clk_init_data){
+		.name = "camcc_xo_clk_src",
+		.parent_data = camcc_parent_data_10_ao,
+		.num_parents = ARRAY_SIZE(camcc_parent_data_10_ao),
+		.ops = &clk_rcg2_ops,
+	},
+};
+
+static struct clk_branch camcc_bps_ahb_clk = {
+	.halt_reg = 0x7070,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x7070,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_bps_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_bps_areg_clk = {
+	.halt_reg = 0x7054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x7054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_bps_areg_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_bps_axi_clk = {
+	.halt_reg = 0x7038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x7038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_bps_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_bps_clk = {
+	.halt_reg = 0x7028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x7028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_bps_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_bps_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_camnoc_axi_clk = {
+	.halt_reg = 0xc18c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc18c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_camnoc_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_camnoc_dcd_xo_clk = {
+	.halt_reg = 0xc194,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc194,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_camnoc_dcd_xo_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_xo_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_cci_0_clk = {
+	.halt_reg = 0xc120,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc120,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_cci_0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cci_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_cci_1_clk = {
+	.halt_reg = 0xc13c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc13c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_cci_1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cci_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_cci_2_clk = {
+	.halt_reg = 0xc21c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc21c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_cci_2_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cci_2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_cci_3_clk = {
+	.halt_reg = 0xc238,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc238,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_cci_3_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cci_3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_core_ahb_clk = {
+	.halt_reg = 0xc1c8,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0xc1c8,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_core_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_cpas_ahb_clk = {
+	.halt_reg = 0xc168,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc168,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_cpas_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csi0phytimer_clk = {
+	.halt_reg = 0x601c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x601c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csi0phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_csi0phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csi1phytimer_clk = {
+	.halt_reg = 0x6040,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6040,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csi1phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_csi1phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csi2phytimer_clk = {
+	.halt_reg = 0x6064,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6064,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csi2phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_csi2phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csi3phytimer_clk = {
+	.halt_reg = 0x608c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x608c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csi3phytimer_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_csi3phytimer_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csiphy0_clk = {
+	.halt_reg = 0x6020,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6020,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csiphy0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csiphy1_clk = {
+	.halt_reg = 0x6044,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6044,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csiphy1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csiphy2_clk = {
+	.halt_reg = 0x6068,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6068,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csiphy2_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_csiphy3_clk = {
+	.halt_reg = 0x6090,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x6090,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_csiphy3_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_gdsc_clk = {
+	.halt_reg = 0xc1e4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc1e4,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_gdsc_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_xo_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_icp_ahb_clk = {
+	.halt_reg = 0xc0d8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc0d8,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_icp_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_icp_clk = {
+	.halt_reg = 0xc0d0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc0d0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_icp_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_icp_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_0_axi_clk = {
+	.halt_reg = 0xa080,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xa080,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_0_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_0_clk = {
+	.halt_reg = 0xa028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xa028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_0_cphy_rx_clk = {
+	.halt_reg = 0xa07c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xa07c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_0_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_0_csid_clk = {
+	.halt_reg = 0xa054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xa054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_0_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_0_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_0_dsp_clk = {
+	.halt_reg = 0xa038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xa038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_0_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_1_axi_clk = {
+	.halt_reg = 0xb068,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb068,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_1_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_1_clk = {
+	.halt_reg = 0xb028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_1_cphy_rx_clk = {
+	.halt_reg = 0xb064,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb064,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_1_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_1_csid_clk = {
+	.halt_reg = 0xb054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_1_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_1_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_1_dsp_clk = {
+	.halt_reg = 0xb038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xb038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_1_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_2_axi_clk = {
+	.halt_reg = 0xf068,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf068,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_2_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_2_clk = {
+	.halt_reg = 0xf028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_2_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_2_cphy_rx_clk = {
+	.halt_reg = 0xf064,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf064,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_2_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_2_csid_clk = {
+	.halt_reg = 0xf054,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_2_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_2_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_2_dsp_clk = {
+	.halt_reg = 0xf038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_2_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_3_axi_clk = {
+	.halt_reg = 0xf0d4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf0d4,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_3_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_3_clk = {
+	.halt_reg = 0xf094,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf094,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_3_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_3_cphy_rx_clk = {
+	.halt_reg = 0xf0d0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf0d0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_3_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_3_csid_clk = {
+	.halt_reg = 0xf0c0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf0c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_3_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_3_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_3_dsp_clk = {
+	.halt_reg = 0xf0a4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xf0a4,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_3_dsp_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_0_clk = {
+	.halt_reg = 0xc01c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc01c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_0_cphy_rx_clk = {
+	.halt_reg = 0xc040,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc040,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_0_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_0_csid_clk = {
+	.halt_reg = 0xc038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_0_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_0_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_1_clk = {
+	.halt_reg = 0xc060,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc060,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_1_cphy_rx_clk = {
+	.halt_reg = 0xc084,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc084,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_1_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_1_csid_clk = {
+	.halt_reg = 0xc07c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc07c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_1_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_1_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_2_clk = {
+	.halt_reg = 0xc258,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc258,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_2_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_2_cphy_rx_clk = {
+	.halt_reg = 0xc27c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc27c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_2_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_2_csid_clk = {
+	.halt_reg = 0xc274,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc274,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_2_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_2_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_3_clk = {
+	.halt_reg = 0xc29c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc29c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_3_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_3_cphy_rx_clk = {
+	.halt_reg = 0xc2c0,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc2c0,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_3_cphy_rx_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_cphy_rx_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ife_lite_3_csid_clk = {
+	.halt_reg = 0xc2b8,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc2b8,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ife_lite_3_csid_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ife_lite_3_csid_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_0_ahb_clk = {
+	.halt_reg = 0x8040,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8040,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_0_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_0_areg_clk = {
+	.halt_reg = 0x803c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x803c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_0_areg_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_0_axi_clk = {
+	.halt_reg = 0x8038,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8038,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_0_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_0_clk = {
+	.halt_reg = 0x8028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ipe_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_1_ahb_clk = {
+	.halt_reg = 0x9028,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x9028,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_1_ahb_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_slow_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_1_areg_clk = {
+	.halt_reg = 0x9024,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x9024,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_1_areg_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_fast_ahb_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_1_axi_clk = {
+	.halt_reg = 0x9020,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x9020,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_1_axi_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_camnoc_axi_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_ipe_1_clk = {
+	.halt_reg = 0x9010,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x9010,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_ipe_1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_ipe_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_jpeg_clk = {
+	.halt_reg = 0xc0a4,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc0a4,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_jpeg_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_jpeg_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_lrme_clk = {
+	.halt_reg = 0xc15c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc15c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_lrme_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_lrme_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk0_clk = {
+	.halt_reg = 0x501c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x501c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk0_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk1_clk = {
+	.halt_reg = 0x503c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x503c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk1_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk2_clk = {
+	.halt_reg = 0x505c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x505c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk2_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk2_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk3_clk = {
+	.halt_reg = 0x507c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x507c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk3_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk3_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk4_clk = {
+	.halt_reg = 0x509c,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x509c,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk4_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk4_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk5_clk = {
+	.halt_reg = 0x50bc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x50bc,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk5_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk5_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk6_clk = {
+	.halt_reg = 0x50dc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x50dc,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk6_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk6_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_mclk7_clk = {
+	.halt_reg = 0x50fc,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x50fc,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_mclk7_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_mclk7_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch camcc_sleep_clk = {
+	.halt_reg = 0xc200,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0xc200,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "camcc_sleep_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&camcc_sleep_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct gdsc titan_top_gdsc;
+
+static struct gdsc bps_gdsc = {
+	.gdscr = 0x7004,
+	.pd = {
+		.name = "bps_gdsc",
+	},
+	.flags = HW_CTRL | RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ife_0_gdsc = {
+	.gdscr = 0xa004,
+	.pd = {
+		.name = "ife_0_gdsc",
+	},
+	.flags = RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ife_1_gdsc = {
+	.gdscr = 0xb004,
+	.pd = {
+		.name = "ife_1_gdsc",
+	},
+	.flags = RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ife_2_gdsc = {
+	.gdscr = 0xf004,
+	.pd = {
+		.name = "ife_2_gdsc",
+	},
+	.flags = RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ife_3_gdsc = {
+	.gdscr = 0xf070,
+	.pd = {
+		.name = "ife_3_gdsc",
+	},
+	.flags = RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ipe_0_gdsc = {
+	.gdscr = 0x8004,
+	.pd = {
+		.name = "ipe_0_gdsc",
+	},
+	.flags = HW_CTRL | RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc ipe_1_gdsc = {
+	.gdscr = 0x9004,
+	.pd = {
+		.name = "ipe_1_gdsc",
+	},
+	.flags = HW_CTRL | RETAIN_FF_ENABLE,
+	.parent = &titan_top_gdsc.pd,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct gdsc titan_top_gdsc = {
+	.gdscr = 0xc1bc,
+	.pd = {
+		.name = "titan_top_gdsc",
+	},
+	.flags = RETAIN_FF_ENABLE,
+	.pwrsts = PWRSTS_OFF_ON,
+};
+
+static struct clk_regmap *camcc_sc8280xp_clocks[] = {
+	[CAMCC_BPS_AHB_CLK] = &camcc_bps_ahb_clk.clkr,
+	[CAMCC_BPS_AREG_CLK] = &camcc_bps_areg_clk.clkr,
+	[CAMCC_BPS_AXI_CLK] = &camcc_bps_axi_clk.clkr,
+	[CAMCC_BPS_CLK] = &camcc_bps_clk.clkr,
+	[CAMCC_BPS_CLK_SRC] = &camcc_bps_clk_src.clkr,
+	[CAMCC_CAMNOC_AXI_CLK] = &camcc_camnoc_axi_clk.clkr,
+	[CAMCC_CAMNOC_AXI_CLK_SRC] = &camcc_camnoc_axi_clk_src.clkr,
+	[CAMCC_CAMNOC_DCD_XO_CLK] = &camcc_camnoc_dcd_xo_clk.clkr,
+	[CAMCC_CCI_0_CLK] = &camcc_cci_0_clk.clkr,
+	[CAMCC_CCI_0_CLK_SRC] = &camcc_cci_0_clk_src.clkr,
+	[CAMCC_CCI_1_CLK] = &camcc_cci_1_clk.clkr,
+	[CAMCC_CCI_1_CLK_SRC] = &camcc_cci_1_clk_src.clkr,
+	[CAMCC_CCI_2_CLK] = &camcc_cci_2_clk.clkr,
+	[CAMCC_CCI_2_CLK_SRC] = &camcc_cci_2_clk_src.clkr,
+	[CAMCC_CCI_3_CLK] = &camcc_cci_3_clk.clkr,
+	[CAMCC_CCI_3_CLK_SRC] = &camcc_cci_3_clk_src.clkr,
+	[CAMCC_CORE_AHB_CLK] = &camcc_core_ahb_clk.clkr,
+	[CAMCC_CPAS_AHB_CLK] = &camcc_cpas_ahb_clk.clkr,
+	[CAMCC_CPHY_RX_CLK_SRC] = &camcc_cphy_rx_clk_src.clkr,
+	[CAMCC_CSI0PHYTIMER_CLK] = &camcc_csi0phytimer_clk.clkr,
+	[CAMCC_CSI0PHYTIMER_CLK_SRC] = &camcc_csi0phytimer_clk_src.clkr,
+	[CAMCC_CSI1PHYTIMER_CLK] = &camcc_csi1phytimer_clk.clkr,
+	[CAMCC_CSI1PHYTIMER_CLK_SRC] = &camcc_csi1phytimer_clk_src.clkr,
+	[CAMCC_CSI2PHYTIMER_CLK] = &camcc_csi2phytimer_clk.clkr,
+	[CAMCC_CSI2PHYTIMER_CLK_SRC] = &camcc_csi2phytimer_clk_src.clkr,
+	[CAMCC_CSI3PHYTIMER_CLK] = &camcc_csi3phytimer_clk.clkr,
+	[CAMCC_CSI3PHYTIMER_CLK_SRC] = &camcc_csi3phytimer_clk_src.clkr,
+	[CAMCC_CSIPHY0_CLK] = &camcc_csiphy0_clk.clkr,
+	[CAMCC_CSIPHY1_CLK] = &camcc_csiphy1_clk.clkr,
+	[CAMCC_CSIPHY2_CLK] = &camcc_csiphy2_clk.clkr,
+	[CAMCC_CSIPHY3_CLK] = &camcc_csiphy3_clk.clkr,
+	[CAMCC_FAST_AHB_CLK_SRC] = &camcc_fast_ahb_clk_src.clkr,
+	[CAMCC_GDSC_CLK] = &camcc_gdsc_clk.clkr,
+	[CAMCC_ICP_AHB_CLK] = &camcc_icp_ahb_clk.clkr,
+	[CAMCC_ICP_CLK] = &camcc_icp_clk.clkr,
+	[CAMCC_ICP_CLK_SRC] = &camcc_icp_clk_src.clkr,
+	[CAMCC_IFE_0_AXI_CLK] = &camcc_ife_0_axi_clk.clkr,
+	[CAMCC_IFE_0_CLK] = &camcc_ife_0_clk.clkr,
+	[CAMCC_IFE_0_CLK_SRC] = &camcc_ife_0_clk_src.clkr,
+	[CAMCC_IFE_0_CPHY_RX_CLK] = &camcc_ife_0_cphy_rx_clk.clkr,
+	[CAMCC_IFE_0_CSID_CLK] = &camcc_ife_0_csid_clk.clkr,
+	[CAMCC_IFE_0_CSID_CLK_SRC] = &camcc_ife_0_csid_clk_src.clkr,
+	[CAMCC_IFE_0_DSP_CLK] = &camcc_ife_0_dsp_clk.clkr,
+	[CAMCC_IFE_1_AXI_CLK] = &camcc_ife_1_axi_clk.clkr,
+	[CAMCC_IFE_1_CLK] = &camcc_ife_1_clk.clkr,
+	[CAMCC_IFE_1_CLK_SRC] = &camcc_ife_1_clk_src.clkr,
+	[CAMCC_IFE_1_CPHY_RX_CLK] = &camcc_ife_1_cphy_rx_clk.clkr,
+	[CAMCC_IFE_1_CSID_CLK] = &camcc_ife_1_csid_clk.clkr,
+	[CAMCC_IFE_1_CSID_CLK_SRC] = &camcc_ife_1_csid_clk_src.clkr,
+	[CAMCC_IFE_1_DSP_CLK] = &camcc_ife_1_dsp_clk.clkr,
+	[CAMCC_IFE_2_AXI_CLK] = &camcc_ife_2_axi_clk.clkr,
+	[CAMCC_IFE_2_CLK] = &camcc_ife_2_clk.clkr,
+	[CAMCC_IFE_2_CLK_SRC] = &camcc_ife_2_clk_src.clkr,
+	[CAMCC_IFE_2_CPHY_RX_CLK] = &camcc_ife_2_cphy_rx_clk.clkr,
+	[CAMCC_IFE_2_CSID_CLK] = &camcc_ife_2_csid_clk.clkr,
+	[CAMCC_IFE_2_CSID_CLK_SRC] = &camcc_ife_2_csid_clk_src.clkr,
+	[CAMCC_IFE_2_DSP_CLK] = &camcc_ife_2_dsp_clk.clkr,
+	[CAMCC_IFE_3_AXI_CLK] = &camcc_ife_3_axi_clk.clkr,
+	[CAMCC_IFE_3_CLK] = &camcc_ife_3_clk.clkr,
+	[CAMCC_IFE_3_CLK_SRC] = &camcc_ife_3_clk_src.clkr,
+	[CAMCC_IFE_3_CPHY_RX_CLK] = &camcc_ife_3_cphy_rx_clk.clkr,
+	[CAMCC_IFE_3_CSID_CLK] = &camcc_ife_3_csid_clk.clkr,
+	[CAMCC_IFE_3_CSID_CLK_SRC] = &camcc_ife_3_csid_clk_src.clkr,
+	[CAMCC_IFE_3_DSP_CLK] = &camcc_ife_3_dsp_clk.clkr,
+	[CAMCC_IFE_LITE_0_CLK] = &camcc_ife_lite_0_clk.clkr,
+	[CAMCC_IFE_LITE_0_CLK_SRC] = &camcc_ife_lite_0_clk_src.clkr,
+	[CAMCC_IFE_LITE_0_CPHY_RX_CLK] = &camcc_ife_lite_0_cphy_rx_clk.clkr,
+	[CAMCC_IFE_LITE_0_CSID_CLK] = &camcc_ife_lite_0_csid_clk.clkr,
+	[CAMCC_IFE_LITE_0_CSID_CLK_SRC] = &camcc_ife_lite_0_csid_clk_src.clkr,
+	[CAMCC_IFE_LITE_1_CLK] = &camcc_ife_lite_1_clk.clkr,
+	[CAMCC_IFE_LITE_1_CLK_SRC] = &camcc_ife_lite_1_clk_src.clkr,
+	[CAMCC_IFE_LITE_1_CPHY_RX_CLK] = &camcc_ife_lite_1_cphy_rx_clk.clkr,
+	[CAMCC_IFE_LITE_1_CSID_CLK] = &camcc_ife_lite_1_csid_clk.clkr,
+	[CAMCC_IFE_LITE_1_CSID_CLK_SRC] = &camcc_ife_lite_1_csid_clk_src.clkr,
+	[CAMCC_IFE_LITE_2_CLK] = &camcc_ife_lite_2_clk.clkr,
+	[CAMCC_IFE_LITE_2_CLK_SRC] = &camcc_ife_lite_2_clk_src.clkr,
+	[CAMCC_IFE_LITE_2_CPHY_RX_CLK] = &camcc_ife_lite_2_cphy_rx_clk.clkr,
+	[CAMCC_IFE_LITE_2_CSID_CLK] = &camcc_ife_lite_2_csid_clk.clkr,
+	[CAMCC_IFE_LITE_2_CSID_CLK_SRC] = &camcc_ife_lite_2_csid_clk_src.clkr,
+	[CAMCC_IFE_LITE_3_CLK] = &camcc_ife_lite_3_clk.clkr,
+	[CAMCC_IFE_LITE_3_CLK_SRC] = &camcc_ife_lite_3_clk_src.clkr,
+	[CAMCC_IFE_LITE_3_CPHY_RX_CLK] = &camcc_ife_lite_3_cphy_rx_clk.clkr,
+	[CAMCC_IFE_LITE_3_CSID_CLK] = &camcc_ife_lite_3_csid_clk.clkr,
+	[CAMCC_IFE_LITE_3_CSID_CLK_SRC] = &camcc_ife_lite_3_csid_clk_src.clkr,
+	[CAMCC_IPE_0_AHB_CLK] = &camcc_ipe_0_ahb_clk.clkr,
+	[CAMCC_IPE_0_AREG_CLK] = &camcc_ipe_0_areg_clk.clkr,
+	[CAMCC_IPE_0_AXI_CLK] = &camcc_ipe_0_axi_clk.clkr,
+	[CAMCC_IPE_0_CLK] = &camcc_ipe_0_clk.clkr,
+	[CAMCC_IPE_0_CLK_SRC] = &camcc_ipe_0_clk_src.clkr,
+	[CAMCC_IPE_1_AHB_CLK] = &camcc_ipe_1_ahb_clk.clkr,
+	[CAMCC_IPE_1_AREG_CLK] = &camcc_ipe_1_areg_clk.clkr,
+	[CAMCC_IPE_1_AXI_CLK] = &camcc_ipe_1_axi_clk.clkr,
+	[CAMCC_IPE_1_CLK] = &camcc_ipe_1_clk.clkr,
+	[CAMCC_JPEG_CLK] = &camcc_jpeg_clk.clkr,
+	[CAMCC_JPEG_CLK_SRC] = &camcc_jpeg_clk_src.clkr,
+	[CAMCC_LRME_CLK] = &camcc_lrme_clk.clkr,
+	[CAMCC_LRME_CLK_SRC] = &camcc_lrme_clk_src.clkr,
+	[CAMCC_MCLK0_CLK] = &camcc_mclk0_clk.clkr,
+	[CAMCC_MCLK0_CLK_SRC] = &camcc_mclk0_clk_src.clkr,
+	[CAMCC_MCLK1_CLK] = &camcc_mclk1_clk.clkr,
+	[CAMCC_MCLK1_CLK_SRC] = &camcc_mclk1_clk_src.clkr,
+	[CAMCC_MCLK2_CLK] = &camcc_mclk2_clk.clkr,
+	[CAMCC_MCLK2_CLK_SRC] = &camcc_mclk2_clk_src.clkr,
+	[CAMCC_MCLK3_CLK] = &camcc_mclk3_clk.clkr,
+	[CAMCC_MCLK3_CLK_SRC] = &camcc_mclk3_clk_src.clkr,
+	[CAMCC_MCLK4_CLK] = &camcc_mclk4_clk.clkr,
+	[CAMCC_MCLK4_CLK_SRC] = &camcc_mclk4_clk_src.clkr,
+	[CAMCC_MCLK5_CLK] = &camcc_mclk5_clk.clkr,
+	[CAMCC_MCLK5_CLK_SRC] = &camcc_mclk5_clk_src.clkr,
+	[CAMCC_MCLK6_CLK] = &camcc_mclk6_clk.clkr,
+	[CAMCC_MCLK6_CLK_SRC] = &camcc_mclk6_clk_src.clkr,
+	[CAMCC_MCLK7_CLK] = &camcc_mclk7_clk.clkr,
+	[CAMCC_MCLK7_CLK_SRC] = &camcc_mclk7_clk_src.clkr,
+	[CAMCC_PLL0] = &camcc_pll0.clkr,
+	[CAMCC_PLL0_OUT_EVEN] = &camcc_pll0_out_even.clkr,
+	[CAMCC_PLL0_OUT_ODD] = &camcc_pll0_out_odd.clkr,
+	[CAMCC_PLL1] = &camcc_pll1.clkr,
+	[CAMCC_PLL1_OUT_EVEN] = &camcc_pll1_out_even.clkr,
+	[CAMCC_PLL2] = &camcc_pll2.clkr,
+	[CAMCC_PLL3] = &camcc_pll3.clkr,
+	[CAMCC_PLL3_OUT_EVEN] = &camcc_pll3_out_even.clkr,
+	[CAMCC_PLL4] = &camcc_pll4.clkr,
+	[CAMCC_PLL4_OUT_EVEN] = &camcc_pll4_out_even.clkr,
+	[CAMCC_PLL5] = &camcc_pll5.clkr,
+	[CAMCC_PLL5_OUT_EVEN] = &camcc_pll5_out_even.clkr,
+	[CAMCC_PLL6] = &camcc_pll6.clkr,
+	[CAMCC_PLL6_OUT_EVEN] = &camcc_pll6_out_even.clkr,
+	[CAMCC_PLL7] = &camcc_pll7.clkr,
+	[CAMCC_PLL7_OUT_EVEN] = &camcc_pll7_out_even.clkr,
+	[CAMCC_PLL7_OUT_ODD] = &camcc_pll7_out_odd.clkr,
+	[CAMCC_SLEEP_CLK] = &camcc_sleep_clk.clkr,
+	[CAMCC_SLEEP_CLK_SRC] = &camcc_sleep_clk_src.clkr,
+	[CAMCC_SLOW_AHB_CLK_SRC] = &camcc_slow_ahb_clk_src.clkr,
+	[CAMCC_XO_CLK_SRC] = &camcc_xo_clk_src.clkr,
+};
+
+static struct gdsc *camcc_sc8280xp_gdscs[] = {
+	[BPS_GDSC] = &bps_gdsc,
+	[IFE_0_GDSC] = &ife_0_gdsc,
+	[IFE_1_GDSC] = &ife_1_gdsc,
+	[IFE_2_GDSC] = &ife_2_gdsc,
+	[IFE_3_GDSC] = &ife_3_gdsc,
+	[IPE_0_GDSC] = &ipe_0_gdsc,
+	[IPE_1_GDSC] = &ipe_1_gdsc,
+	[TITAN_TOP_GDSC] = &titan_top_gdsc,
+};
+
+static const struct qcom_reset_map camcc_sc8280xp_resets[] = {
+	[CAMCC_BPS_BCR] = { 0x7000 },
+	[CAMCC_CAMNOC_BCR] = { 0xc16c },
+	[CAMCC_CCI_BCR] = { 0xc104 },
+	[CAMCC_CPAS_BCR] = { 0xc164 },
+	[CAMCC_CSI0PHY_BCR] = { 0x6000 },
+	[CAMCC_CSI1PHY_BCR] = { 0x6024 },
+	[CAMCC_CSI2PHY_BCR] = { 0x6048 },
+	[CAMCC_CSI3PHY_BCR] = { 0x6070 },
+	[CAMCC_ICP_BCR] = { 0xc0b4 },
+	[CAMCC_IFE_0_BCR] = { 0xa000 },
+	[CAMCC_IFE_1_BCR] = { 0xb000 },
+	[CAMCC_IFE_2_BCR] = { 0xf000 },
+	[CAMCC_IFE_3_BCR] = { 0xf06c },
+	[CAMCC_IFE_LITE_0_BCR] = { 0xc000 },
+	[CAMCC_IFE_LITE_1_BCR] = { 0xc044 },
+	[CAMCC_IFE_LITE_2_BCR] = { 0xc23c },
+	[CAMCC_IFE_LITE_3_BCR] = { 0xc280 },
+	[CAMCC_IPE_0_BCR] = { 0x8000 },
+	[CAMCC_IPE_1_BCR] = { 0x9000 },
+	[CAMCC_JPEG_BCR] = { 0xc088 },
+	[CAMCC_LRME_BCR] = { 0xc140 },
+};
+
+static const struct regmap_config camcc_sc8280xp_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x13020,
+	.fast_io = true,
+};
+
+static struct qcom_cc_desc camcc_sc8280xp_desc = {
+	.config = &camcc_sc8280xp_regmap_config,
+	.clks = camcc_sc8280xp_clocks,
+	.num_clks = ARRAY_SIZE(camcc_sc8280xp_clocks),
+	.resets = camcc_sc8280xp_resets,
+	.num_resets = ARRAY_SIZE(camcc_sc8280xp_resets),
+	.gdscs = camcc_sc8280xp_gdscs,
+	.num_gdscs = ARRAY_SIZE(camcc_sc8280xp_gdscs),
+};
+
+static const struct of_device_id camcc_sc8280xp_match_table[] = {
+	{ .compatible = "qcom,sc8280xp-camcc" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, camcc_sc8280xp_match_table);
+
+static int camcc_sc8280xp_probe(struct platform_device *pdev)
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
+	regmap = qcom_cc_map(pdev, &camcc_sc8280xp_desc);
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		goto err_put_rpm;
+	}
+
+	clk_lucid_pll_configure(&camcc_pll0, regmap, &camcc_pll0_config);
+	clk_lucid_pll_configure(&camcc_pll1, regmap, &camcc_pll1_config);
+	clk_zonda_pll_configure(&camcc_pll2, regmap, &camcc_pll2_config);
+	clk_lucid_pll_configure(&camcc_pll3, regmap, &camcc_pll3_config);
+	clk_lucid_pll_configure(&camcc_pll4, regmap, &camcc_pll4_config);
+	clk_lucid_pll_configure(&camcc_pll5, regmap, &camcc_pll5_config);
+	clk_lucid_pll_configure(&camcc_pll6, regmap, &camcc_pll6_config);
+	clk_lucid_pll_configure(&camcc_pll7, regmap, &camcc_pll7_config);
+
+	/*
+	 * Keep camcc_gdsc_clk always enabled:
+	 */
+	regmap_update_bits(regmap, 0xc1e4, BIT(0), 1);
+
+	ret = qcom_cc_really_probe(pdev, &camcc_sc8280xp_desc, regmap);
+	if (ret)
+		goto err_put_rpm;
+
+	pm_runtime_put(&pdev->dev);
+
+	return 0;
+
+err_put_rpm:
+	regmap_update_bits(regmap, 0xc1e4, BIT(0), 0);
+	pm_runtime_put_sync(&pdev->dev);
+
+	return ret;
+}
+
+static struct platform_driver camcc_sc8280xp_driver = {
+	.probe = camcc_sc8280xp_probe,
+	.driver = {
+		.name = "camcc-sc8280xp",
+		.of_match_table = camcc_sc8280xp_match_table,
+	},
+};
+
+module_platform_driver(camcc_sc8280xp_driver);
+
+MODULE_DESCRIPTION("QCOM CAMCC SC8280XP Driver");
+MODULE_LICENSE("GPL");
-- 
2.40.1


