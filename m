Return-Path: <devicetree+bounces-252679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B32EED02AB3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:38:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A68F8301D1D8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15ECB37FF64;
	Thu,  8 Jan 2026 08:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mQGHSmEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CB437A4AA
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862734; cv=none; b=OjzELOlBb8ZXTcymZcYKVTBc+Wg6I06vtTdfC9ROTv3NXeJbOf66pFmqye07DyI1lY0MJ21+g/9oXjBunhMcE+c6lCiyBPnr9qT7lyLhBJmdg0NIeZZgjKDVNnLEYP/eVUbPo5j73Bljz0lPwl3f6lzDED6KhM5lgYkVM2WWANg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862734; c=relaxed/simple;
	bh=sIkymDyCEmbvxV9ZGQHY++Ov+nqP2mtyu2/hVCGij0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XjY7lJmDCaBuHwA5csFW6tO9hQN3CqHq1aQMlbVXRgRZ2XHHOkevtcVI7zH0za5urkQFkp4RPpSm4/vL3Ue6v+JhC4deWrVq6+mcVg3GRsuz/C6atylrsZXQ0V527CuC05DFQFsA6IF6y6FkLnMVaB8zHZT7KfcxHuDX2gB3HrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mQGHSmEn; arc=none smtp.client-ip=74.125.82.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2ac3d5ab81bso1865846eec.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1767862721; x=1768467521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+qYO/gxPTzZ1gsudLMySBCma6iHYfPz33KQqAWsXtts=;
        b=mQGHSmEnic+S0mS7xgLg+o+6wdYRXY+vt1KLwNdWi3ebWIs4RzQU8a7QTxZiGHLuyD
         ZjG0ZbcHq/2TyuIcxp09X8FymPW8d0sznQogZikC0C1/ugNg4aS1X256mgLR9imOr+Ht
         NVvx5LFLoDuLgxMCC5RwXsRJjH1ksxbXPIQegQxFL5/z7esv1jZGTOewvIcUMOaj2Dsr
         x7DNyg6gs1Fm6COvrfCisZWVcCKEFG/x8muLeWOOHOwMfqr7fFbcll98jgjP/36MZn62
         EUyIeVhev/vI6uWH1Zz3i13dn3YOCUWf6vCyhUACXp+VqfP24lvi8LaF/RilD5pDYyXr
         eJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862721; x=1768467521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+qYO/gxPTzZ1gsudLMySBCma6iHYfPz33KQqAWsXtts=;
        b=Wtl1g5K+v0ZEVcjt8MLP5lnLi5TklkQon+5IFJOsSzLoiPe+Lr/u1UukG3FvSgXePR
         ctP02i8hUpLvAFRjXcWakrIVgJRmleOuEG8n72R9Cqk2u1zxKliBRbfznjMBt8XB7epJ
         nFGSwFx8zTVkMCBSLeR8Yg6bOxy6PE0WmxuvME+/UGk50a9bQndP55hNmvT5A4YT45xV
         V+v8vwjMxpSjcS6/RP4zUugzSB72Ws4HzU3YihmAcRvTwcpNJy1GEKKm9Z5rwFfUE/Sj
         RVLTRBL3JRMtYhApO6PVLTIYmqUqcQjpRfUU89xdOaf6f9O4U0jSsX26JLjxsTdw3kil
         nfvw==
X-Forwarded-Encrypted: i=1; AJvYcCWzM2iEOFhycG+oi4Xdyple/VC1XjKAYVFIg651bgpZ7sWwvGXgFsnle80oozGlJW/zHFEkYjZ3qxFP@vger.kernel.org
X-Gm-Message-State: AOJu0YzL19dtYkC6YcQHBXn9l0jZ5zadgIoBi73Sw1it2RTA7vraAuiT
	dIx2WeVzihlUOkvYaAd38K3lz2kb+PrmiPwbpNnbQoRJUYB3qJQeO96AwvUCvK6Jctk=
X-Gm-Gg: AY/fxX6E7SJdePLpvWQV4yTvBvVhS3EcA/GfpZGLESvK0S4HRAw7yfaRrgaoRD2Wl7R
	QvQZHM7Vewt2o7ZgwUy/SC52oeGAseiw4KFw1rHnTWdliwaBCQ+TgOlf1FiMFAqkY7XLScQBBZn
	hpNy3urOfg/GYIrXnv9k2lOBSApUAFIPSFzhutYgbbgolLUY/7lAbRBG0zKA9sCiGjT3tgqIuK7
	+DQoA+tKo0P69JAJSoV6dcAoSatP1IPoz18pURBSCogDpEi1CGYEcSXmt7xdJ1Y3niFhUN4VZnm
	4LWI6B2eMcaTTSuxm/nWsKRE1ZRSWbAgsW/DRvvxjwiXlBkpDuqsnxKgXpL4FrVlCjnJX3e+5XW
	b+A2w4sPAsJdbOU+qm/Q5Roj0kMW0U+RFpHrEtraRFWfslUMayV4ItJ7qEm1UaFS5yzYAikpXIV
	hB7AgqD0wWE/nxRAHuEl8Cmrg=
X-Google-Smtp-Source: AGHT+IE1ZYycZa8LfJgM/0T5ClhaC/Ln6YDrHSVxn+Bb2E0ZQUAhY5IK4YTUt16wFaSjFCweu0L/Dw==
X-Received: by 2002:a05:693c:40db:b0:2ae:55f1:8201 with SMTP id 5a478bee46e88-2b17d23964bmr4070425eec.1.1767862721007;
        Thu, 08 Jan 2026 00:58:41 -0800 (PST)
Received: from sw07.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170675076sm8833634eec.2.2026.01.08.00.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:40 -0800 (PST)
From: Nick Hu <nick.hu@sifive.com>
Date: Thu, 08 Jan 2026 00:58:26 -0800
Subject: [PATCH v4 3/3] cpuidle: Add SiFive power provider driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-sifive-pd-drivers-v4-3-2a523d7d51a0@sifive.com>
References: <20260108-sifive-pd-drivers-v4-0-2a523d7d51a0@sifive.com>
In-Reply-To: <20260108-sifive-pd-drivers-v4-0-2a523d7d51a0@sifive.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Anup Patel <anup@brainfault.org>, 
 Samuel Holland <samuel.holland@sifive.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Cyan Yang <cyan.yang@sifive.com>, 
 Nick Hu <nick.hu@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3

The SiFive DMC is the power provider of the devices that inside the
SiFive CPU power domains, which include Tile, Cluster and Core Complex
power domains. Before the cpu entering the firmware-based idle state,
each devices that inside the corresponding domain should be suspended
properly. this driver will create the power provider and set the correct
domain idle state.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
---
 drivers/cpuidle/Kconfig.riscv               |  12 +++
 drivers/cpuidle/Makefile                    |   1 +
 drivers/cpuidle/cpuidle-sifive-dmc-domain.c | 124 ++++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)

diff --git a/drivers/cpuidle/Kconfig.riscv b/drivers/cpuidle/Kconfig.riscv
index b813018ce401..2fe0912f8027 100644
--- a/drivers/cpuidle/Kconfig.riscv
+++ b/drivers/cpuidle/Kconfig.riscv
@@ -22,3 +22,15 @@ config RISCV_SBI_CPUIDLE_DOMAIN
 	  Select this option to enable RISC-V SBI firmware based CPU idle
 	  driver to use PM domains, which is needed to support the hierarchical
 	  DT based layout of the idle state.
+
+config SIFIVE_DMC_CPUIDLE_DOMAIN
+	bool "SiFive DMC CPU idle Domain"
+	depends on ARCH_SIFIVE
+	depends on RISCV_SBI_CPUIDLE
+	depends on PM_GENERIC_DOMAINS_OF
+	select DT_IDLE_GENPD
+	default y
+	help
+	  Select this option to enable RISC-V SBI firmware based CPU idle
+	  driver to use PM domains on SiFive Platforms, which is needed to
+	  support the hierarchical DT based layout of the idle state.
diff --git a/drivers/cpuidle/Makefile b/drivers/cpuidle/Makefile
index 82595849b75d..eead4c049414 100644
--- a/drivers/cpuidle/Makefile
+++ b/drivers/cpuidle/Makefile
@@ -43,3 +43,4 @@ obj-$(CONFIG_POWERNV_CPUIDLE)		+= cpuidle-powernv.o
 # RISC-V drivers
 obj-$(CONFIG_RISCV_SBI_CPUIDLE)		+= cpuidle-riscv-sbi.o
 obj-$(CONFIG_RISCV_SBI_CPUIDLE_DOMAIN)	+= cpuidle-riscv-sbi-domain.o
+obj-$(CONFIG_SIFIVE_DMC_CPUIDLE_DOMAIN)	+= cpuidle-sifive-dmc-domain.o
diff --git a/drivers/cpuidle/cpuidle-sifive-dmc-domain.c b/drivers/cpuidle/cpuidle-sifive-dmc-domain.c
new file mode 100644
index 000000000000..5174bc525a13
--- /dev/null
+++ b/drivers/cpuidle/cpuidle-sifive-dmc-domain.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SiFive CPUIDLE DMC driver
+ */
+
+#define pr_fmt(fmt) "sifive_dmc_cpuidle_domain: " fmt
+
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
+
+#include "cpuidle-riscv-sbi.h"
+#include "dt_idle_genpd.h"
+
+static bool use_osi = true;
+
+static int sifive_cpuidle_dmc_power_off(struct generic_pm_domain *pd)
+{
+	struct genpd_power_state *state = &pd->states[pd->state_idx];
+	u32 *pd_state;
+
+	if (!state->data)
+		return 0;
+
+	/* OSI mode is enabled, set the corresponding domain state. */
+	pd_state = state->data;
+	sbi_set_domain_state(*pd_state);
+
+	return 0;
+}
+
+static int sifive_dmc_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct of_phandle_args child, parent;
+	struct device *dev = &pdev->dev;
+	struct generic_pm_domain *pd;
+	int ret = -ENOMEM;
+
+	pd = dt_idle_pd_alloc(np, sbi_dt_parse_state_node);
+	if (!pd)
+		goto out;
+
+	pd->flags |= GENPD_FLAG_IRQ_SAFE | GENPD_FLAG_CPU_DOMAIN;
+	if (use_osi)
+		pd->power_off = sifive_cpuidle_dmc_power_off;
+	else
+		pd->flags |= GENPD_FLAG_ALWAYS_ON;
+
+	ret = pm_genpd_init(pd, &pm_domain_cpu_gov, false);
+	if (ret)
+		goto free_pd;
+
+	ret = of_genpd_add_provider_simple(np, pd);
+	if (ret)
+		goto remove_pd;
+
+	if (!of_parse_phandle_with_args(np, "power-domains", "#power-domain-cells", 0, &parent)) {
+		child.np = np;
+		child.args_count = 0;
+
+		ret = of_genpd_add_subdomain(&parent, &child);
+		of_node_put(parent.np);
+		if (ret) {
+			pr_err("%pOF failed to add subdomain: %pOF\n", parent.np, child.np);
+			goto remove_pd;
+		}
+	}
+
+	pm_runtime_enable(dev);
+	pr_info("init PM domain %s\n", dev_name(dev));
+	return 0;
+
+remove_pd:
+	pm_genpd_remove(pd);
+free_pd:
+	dt_idle_pd_free(pd);
+out:
+	pr_err("failed to init PM domain ret=%d %pOF\n", ret, np);
+	return ret;
+}
+
+static const struct of_device_id sifive_dmc_of_match[] = {
+	{ .compatible = "sifive,tmc1", },
+	{ .compatible = "sifive,tmc0", },
+	{ .compatible = "sifive,smc1", },
+	{ .compatible = "sifive,smc0", },
+	{ .compatible = "sifive,cmc2", },
+	{}
+};
+
+static struct platform_driver sifive_dmc_driver = {
+	.probe = sifive_dmc_probe,
+	.driver = {
+		.name = "sifive_dmc",
+		.of_match_table = sifive_dmc_of_match,
+		.suppress_bind_attrs = true,
+	},
+};
+
+static int __init sifive_dmc_domain_init(void)
+{
+	int cpu;
+
+	/* Detect OSI support based on CPU DT nodes */
+	for_each_possible_cpu(cpu) {
+		struct device_node *np __free(device_node) = of_cpu_device_node_get(cpu);
+		if (np &&
+		    of_property_present(np, "power-domains") &&
+		    of_property_present(np, "power-domain-names")) {
+			continue;
+		} else {
+			use_osi = false;
+			break;
+		}
+	}
+
+	sbi_set_osi_mode(use_osi);
+
+	/* Only probe the DMCs when OSI supported */
+	return platform_driver_register(&sifive_dmc_driver);
+}
+core_initcall(sifive_dmc_domain_init);

-- 
2.43.7


