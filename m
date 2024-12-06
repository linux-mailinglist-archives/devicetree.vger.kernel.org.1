Return-Path: <devicetree+bounces-128164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2339D9E7A84
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 22:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89BFE16BFCB
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C91212F98;
	Fri,  6 Dec 2024 21:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cCoQRExH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8553213E76;
	Fri,  6 Dec 2024 21:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733519791; cv=none; b=hbERyXMKr3G268dxXZKAVw4eKs2WvRoFHsvTT2m0xG848yvz7OMqWR7ktopRt7JrYDUHqhXCtOfx2ltyzfB5eyvvqyWtD9v7PyoVferQv3YCHHkFlqgnPhF2qS/aKm7A/nwwwA8bDS/XRbc+UkzmZgkU0iUj9mvE2UimgIdpyHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733519791; c=relaxed/simple;
	bh=9PVfdKsPXyNDi0Mvxj1Gxdbz/ENj+JiukpaSylX3siU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mk6WFCmKHBW92ipwRYG35eUI6xo/EmaOLLlVKl9wix2XtiWlnEBiKTRSM9dg0XAHy9wtXpfl0lIWQrTgNRFMw+6ue4QLMoKc1PdO9q/6Fzow7ohghIsMuUiLECssVVzgYoDezLRWTHXydcUGfZrbm16wV0nEsuVSUSa/lPxRy4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cCoQRExH; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a766b475so24433295e9.1;
        Fri, 06 Dec 2024 13:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733519787; x=1734124587; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQ774mXwgVeiYfbHPouQ8yLYPlEdURfb4mguZt/P8ag=;
        b=cCoQRExHykXqZ7i4uAB3mDablk+AqBCJTX5uM4gTJGVZlcWrI33G92H2M9QfPJz1un
         y90f1io4S8yHzUdq/i4rLy5QUy1gv5PyPWW3j8283zWDl86g/hlE1GkZdbVurF9KbymU
         CHUVFuy1wCx5rwo9bgD/z7AT0vNqPToR5Han3yVuFuoJ+qtO8nAL509nCAix5xlxsCJK
         4h9bn6AREGLbhM6K+hDZWMedPKbzPDyoRusQFWM+qu1W8QtedKePsfqFOuM23A1iPjgq
         CG4288mPw5yMdc9AiFeTqal4yt45CSCm2BxPYHQrvCSLpncnFXeHlSg0UdgnzsebGGJ/
         hvkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733519787; x=1734124587;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQ774mXwgVeiYfbHPouQ8yLYPlEdURfb4mguZt/P8ag=;
        b=w0UNW4ZG1XSBzyKI3VNPi7mwK9IH+tpzwtwHET2Oj344C8TzOdunABL/AO4qqkieXH
         ojOS4EkjL5AlZNp/jC+gfIQmoekoi9/UjpDxVLZH36pxZKI/VaYTjuXxJXhuDyy3+ldp
         qp5lssBkmO6a6P7ZzxpU6CSPG7w4A9OSbrRQM8jUtL3OpQURc5tUL8Qqrib7GNkVVAjb
         RhuiCuJKW0UJkwwrBdmduuI1gFN59XjOOr09NdymwBXiGwrBQfebpJ6bMEpGKix7DnDa
         MDY8S0DXpAu6nnu8rCYafXPcwPh4rAqazyA3Rg9DhKtpcoDoAV++2/J/8d2uQwQJKBdT
         sLgQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6OYh7Cf8azC56FQqsjQm2p20iAP+HMzk+mm9ya+StBzk5L4puPQ3p6T2yZNcRtEKDi9m+KvToa20cHOpS@vger.kernel.org, AJvYcCWO1RshynjJN9+kKnMENt9XFQyos83JFWxiUVoRFT5yxBN58GUJqzkg8B0xvt3bY+uN9IPmDlF7qRc=@vger.kernel.org, AJvYcCWVhxSJB8kzrmzNX8P5m3EnprJ6ItfcViPE2T/ogf0ER2Kk2Ad6U0GmicF2eEv8Nnyirfe9WQ6Fkqlf@vger.kernel.org
X-Gm-Message-State: AOJu0YxrheGqn3NlXRnBZf8HQ21HDBBt03u66BgBggEv/j6pzI9zqM82
	prjfj/qrzpwLEE25cO0OZY1hypkEeWvSQwsBsjbZiAtp5LO9T5Gu
X-Gm-Gg: ASbGncssPSEubCuhRuaiRBstBWUkNdSsnJ1f0zC8P+Xytr+KKUHGkYuLAdOTiTIEgpq
	m2s5lPS33sb36kK/nbMGI9tMM2qzSrh+IqxsE68iWMcG1K4zSOKT75txQjvSsi1ke6RBX/z0nIm
	wj9HnimnQ/ptREya8T8VZCJdt9sOgiADKl5YZUlGt19kCe5/W1ZRQFJ8VMztKCF8dCB4vDFIwHm
	3HDrowAil1HL+Wn0pByZ66IwY4F3HdEj69mqNbh0m3VQBsIK+EKyPwCYsv9Ku9K0lcu2V8Qc+vs
	LKIWQfJqNtO5kBZ+FC4=
X-Google-Smtp-Source: AGHT+IGdWphX24+lrmbxiZVvOlYYxPMx6dojKKbztDpyZcVKiSkKOm0bgTD4AsFnJ5uzz8hAmPtZaA==
X-Received: by 2002:a05:600c:a41:b0:42c:b52b:4335 with SMTP id 5b1f17b1804b1-434ddeb43e6mr46736215e9.10.1733519786866;
        Fri, 06 Dec 2024 13:16:26 -0800 (PST)
Received: from localhost.localdomain (93-34-91-161.ip49.fastwebnet.it. [93.34.91.161])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434d526b375sm105978835e9.9.2024.12.06.13.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 13:16:26 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH v7 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Date: Fri,  6 Dec 2024 22:11:25 +0100
Message-ID: <20241206211145.2823-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241206211145.2823-1-ansuelsmth@gmail.com>
References: <20241206211145.2823-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add simple CPU Freq driver for Airoha EN7581 SoC that control CPU
frequency scaling with SMC APIs and register a generic "cpufreq-dt"
device.

CPUFreq driver registers a get-only clock to get the current global CPU
frequency from SMC and a Power Domain to configure the performance state
for each OPP to apply the requested frequency from cpufreq-dt. This is
needed as SMC use index instead of raw frequency.

All CPU share the same frequency and can't be controlled independently.
Current shared CPU frequency is returned by the related SMC command.

Add SoC compatible to cpufreq-dt-plat block list as a dedicated cpufreq
driver is needed with OPP v2 nodes declared in DTS.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v7:
- No changes
Changes v6:
- Improve Kconfig depends logic
- Select PM (PM_GENERIC_DOMAINS depends on it)
- Drop (int) cast for 
Changes v5:
- Rename cpu_pd to perf for power domain name
- Use remove instead of remove_new
Changes v4:
- Rework to clk-only + PM set_performance_state implementation
Changes v3:
- Adapt to new cpufreq-dt APIs
- Register cpufreq-dt instead of custom freq driver
Changes v2:
- Fix kernel bot error with missing slab.h and bitfield.h header
- Limit COMPILE_TEST to ARM64 due to smcc 1.2

 drivers/cpufreq/Kconfig.arm          |  10 ++
 drivers/cpufreq/Makefile             |   1 +
 drivers/cpufreq/airoha-cpufreq.c     | 222 +++++++++++++++++++++++++++
 drivers/cpufreq/cpufreq-dt-platdev.c |   2 +
 4 files changed, 235 insertions(+)
 create mode 100644 drivers/cpufreq/airoha-cpufreq.c

diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
index 5f7e13e60c80..8494faac58ae 100644
--- a/drivers/cpufreq/Kconfig.arm
+++ b/drivers/cpufreq/Kconfig.arm
@@ -15,6 +15,16 @@ config ARM_ALLWINNER_SUN50I_CPUFREQ_NVMEM
 	  To compile this driver as a module, choose M here: the
 	  module will be called sun50i-cpufreq-nvmem.
 
+config ARM_AIROHA_SOC_CPUFREQ
+	tristate "Airoha EN7581 SoC CPUFreq support"
+	depends on ARM64 && (ARCH_AIROHA || COMPILE_TEST)
+	select PM
+	select PM_OPP
+	select PM_GENERIC_DOMAINS
+	default ARCH_AIROHA
+	help
+	  This adds the CPUFreq driver for Airoha EN7581 SoCs.
+
 config ARM_APPLE_SOC_CPUFREQ
 	tristate "Apple Silicon SoC CPUFreq support"
 	depends on ARCH_APPLE || (COMPILE_TEST && 64BIT)
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index d35a28dd9463..890fff99f37d 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -53,6 +53,7 @@ obj-$(CONFIG_X86_AMD_FREQ_SENSITIVITY)	+= amd_freq_sensitivity.o
 
 ##################################################################################
 # ARM SoC drivers
+obj-$(CONFIG_ARM_AIROHA_SOC_CPUFREQ)	+= airoha-cpufreq.o
 obj-$(CONFIG_ARM_APPLE_SOC_CPUFREQ)	+= apple-soc-cpufreq.o
 obj-$(CONFIG_ARM_ARMADA_37XX_CPUFREQ)	+= armada-37xx-cpufreq.o
 obj-$(CONFIG_ARM_ARMADA_8K_CPUFREQ)	+= armada-8k-cpufreq.o
diff --git a/drivers/cpufreq/airoha-cpufreq.c b/drivers/cpufreq/airoha-cpufreq.c
new file mode 100644
index 000000000000..29738f61f401
--- /dev/null
+++ b/drivers/cpufreq/airoha-cpufreq.c
@@ -0,0 +1,222 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/arm-smccc.h>
+#include <linux/bitfield.h>
+#include <linux/cpufreq.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
+#include <linux/slab.h>
+
+#include "cpufreq-dt.h"
+
+#define AIROHA_SIP_AVS_HANDLE			0x82000301
+#define AIROHA_AVS_OP_BASE			0xddddddd0
+#define AIROHA_AVS_OP_MASK			GENMASK(1, 0)
+#define AIROHA_AVS_OP_FREQ_DYN_ADJ		(AIROHA_AVS_OP_BASE | \
+						 FIELD_PREP(AIROHA_AVS_OP_MASK, 0x1))
+#define AIROHA_AVS_OP_GET_FREQ			(AIROHA_AVS_OP_BASE | \
+						 FIELD_PREP(AIROHA_AVS_OP_MASK, 0x2))
+
+struct airoha_cpufreq_priv {
+	struct clk_hw hw;
+	struct generic_pm_domain pd;
+
+	int opp_token;
+	struct dev_pm_domain_list *pd_list;
+	struct platform_device *cpufreq_dt;
+};
+
+static long airoha_cpufreq_clk_round(struct clk_hw *hw, unsigned long rate,
+				     unsigned long *parent_rate)
+{
+	return rate;
+}
+
+static unsigned long airoha_cpufreq_clk_get(struct clk_hw *hw,
+					    unsigned long parent_rate)
+{
+	const struct arm_smccc_1_2_regs args = {
+		.a0 = AIROHA_SIP_AVS_HANDLE,
+		.a1 = AIROHA_AVS_OP_GET_FREQ,
+	};
+	struct arm_smccc_1_2_regs res;
+
+	arm_smccc_1_2_smc(&args, &res);
+
+	/* SMCCC returns freq in MHz */
+	return res.a0 * 1000 * 1000;
+}
+
+/* Airoha CPU clk SMCC is always enabled */
+static int airoha_cpufreq_clk_is_enabled(struct clk_hw *hw)
+{
+	return true;
+}
+
+static const struct clk_ops airoha_cpufreq_clk_ops = {
+	.recalc_rate = airoha_cpufreq_clk_get,
+	.is_enabled = airoha_cpufreq_clk_is_enabled,
+	.round_rate = airoha_cpufreq_clk_round,
+};
+
+static const char * const airoha_cpufreq_clk_names[] = { "cpu", NULL };
+
+/* NOP function to disable OPP from setting clock */
+static int airoha_cpufreq_config_clks_nop(struct device *dev,
+					  struct opp_table *opp_table,
+					  struct dev_pm_opp *opp,
+					  void *data, bool scaling_down)
+{
+	return 0;
+}
+
+static const char * const airoha_cpufreq_pd_names[] = { "perf" };
+
+static int airoha_cpufreq_set_performance_state(struct generic_pm_domain *domain,
+						unsigned int state)
+{
+	const struct arm_smccc_1_2_regs args = {
+		.a0 = AIROHA_SIP_AVS_HANDLE,
+		.a1 = AIROHA_AVS_OP_FREQ_DYN_ADJ,
+		.a3 = state,
+	};
+	struct arm_smccc_1_2_regs res;
+
+	arm_smccc_1_2_smc(&args, &res);
+
+	/* SMC signal correct apply by unsetting BIT 0 */
+	return res.a0 & BIT(0) ? -EINVAL : 0;
+}
+
+static int airoha_cpufreq_probe(struct platform_device *pdev)
+{
+	const struct dev_pm_domain_attach_data attach_data = {
+		.pd_names = airoha_cpufreq_pd_names,
+		.num_pd_names = ARRAY_SIZE(airoha_cpufreq_pd_names),
+		.pd_flags = PD_FLAG_DEV_LINK_ON | PD_FLAG_REQUIRED_OPP,
+	};
+	struct dev_pm_opp_config config = {
+		.clk_names = airoha_cpufreq_clk_names,
+		.config_clks = airoha_cpufreq_config_clks_nop,
+	};
+	struct platform_device *cpufreq_dt;
+	struct airoha_cpufreq_priv *priv;
+	struct device *dev = &pdev->dev;
+	const struct clk_init_data init = {
+		.name = "cpu",
+		.ops = &airoha_cpufreq_clk_ops,
+		/* Clock with no set_rate, can't cache */
+		.flags = CLK_GET_RATE_NOCACHE,
+	};
+	struct generic_pm_domain *pd;
+	struct device *cpu_dev;
+	int ret;
+
+	/* CPUs refer to the same OPP table */
+	cpu_dev = get_cpu_device(0);
+	if (!cpu_dev)
+		return -ENODEV;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/* Init and register a get-only clk for Cpufreq */
+	priv->hw.init = &init;
+	ret = devm_clk_hw_register(dev, &priv->hw);
+	if (ret)
+		return ret;
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					  &priv->hw);
+	if (ret)
+		return ret;
+
+	/* Init and register a PD for Cpufreq */
+	pd = &priv->pd;
+	pd->name = "cpu_pd";
+	pd->flags = GENPD_FLAG_ALWAYS_ON;
+	pd->set_performance_state = airoha_cpufreq_set_performance_state;
+
+	ret = pm_genpd_init(pd, NULL, false);
+	if (ret)
+		return ret;
+
+	ret = of_genpd_add_provider_simple(dev->of_node, pd);
+	if (ret)
+		goto err_add_provider;
+
+	/* Set OPP table conf with NOP config_clks */
+	priv->opp_token = dev_pm_opp_set_config(cpu_dev, &config);
+	if (priv->opp_token < 0) {
+		ret = priv->opp_token;
+		dev_err(dev, "Failed to set OPP config\n");
+		goto err_set_config;
+	}
+
+	/* Attach PM for OPP */
+	ret = dev_pm_domain_attach_list(cpu_dev, &attach_data,
+					&priv->pd_list);
+	if (ret)
+		goto err_attach_pm;
+
+	cpufreq_dt = platform_device_register_simple("cpufreq-dt", -1, NULL, 0);
+	ret = PTR_ERR_OR_ZERO(cpufreq_dt);
+	if (ret) {
+		dev_err(dev, "failed to create cpufreq-dt device: %d\n", ret);
+		goto err_register_cpufreq;
+	}
+
+	priv->cpufreq_dt = cpufreq_dt;
+	platform_set_drvdata(pdev, priv);
+
+	return 0;
+
+err_register_cpufreq:
+	dev_pm_domain_detach_list(priv->pd_list);
+err_attach_pm:
+	dev_pm_opp_clear_config(priv->opp_token);
+err_set_config:
+	of_genpd_del_provider(dev->of_node);
+err_add_provider:
+	pm_genpd_remove(pd);
+
+	return ret;
+}
+
+static void airoha_cpufreq_remove(struct platform_device *pdev)
+{
+	struct airoha_cpufreq_priv *priv = platform_get_drvdata(pdev);
+
+	platform_device_unregister(priv->cpufreq_dt);
+
+	dev_pm_domain_detach_list(priv->pd_list);
+
+	dev_pm_opp_clear_config(priv->opp_token);
+
+	of_genpd_del_provider(pdev->dev.of_node);
+	pm_genpd_remove(&priv->pd);
+}
+
+static const struct of_device_id airoha_cpufreq_of_match[] = {
+	{ .compatible = "airoha,en7581-cpufreq" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, airoha_cpufreq_of_match);
+
+static struct platform_driver airoha_cpufreq_driver = {
+	.probe = airoha_cpufreq_probe,
+	.remove = airoha_cpufreq_remove,
+	.driver = {
+		.name = "airoha-cpufreq",
+		.of_match_table = airoha_cpufreq_of_match,
+	},
+};
+module_platform_driver(airoha_cpufreq_driver);
+
+MODULE_AUTHOR("Christian Marangi <ansuelsmth@gmail.com>");
+MODULE_DESCRIPTION("CPUfreq driver for Airoha SoCs");
+MODULE_LICENSE("GPL");
diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 9c198bd4f7e9..2aa00769cf09 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -103,6 +103,8 @@ static const struct of_device_id allowlist[] __initconst = {
  * platforms using "operating-points-v2" property.
  */
 static const struct of_device_id blocklist[] __initconst = {
+	{ .compatible = "airoha,en7581", },
+
 	{ .compatible = "allwinner,sun50i-a100" },
 	{ .compatible = "allwinner,sun50i-h6", },
 	{ .compatible = "allwinner,sun50i-h616", },
-- 
2.45.2


