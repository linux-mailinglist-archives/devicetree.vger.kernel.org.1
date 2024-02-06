Return-Path: <devicetree+bounces-39016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D37684B27F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B06531C23ACB
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414D112E1FB;
	Tue,  6 Feb 2024 10:28:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15CBA12E1F5
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215298; cv=none; b=aEUX0nCyyaVKFXAQu998ySGTwzQf9CiPWraiw4Rlfc1g9uwIKBzvR7xtSJT3YYbIXDqsqnIHYWMNUZLV3u+GpKG4t+hpn/pEvBPbOqLNezOQu8aza9RezJlC50amW20sq/7zCVWUM4d7nhHeGNioMDly7Cc/YraaTpsTT3eqdnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215298; c=relaxed/simple;
	bh=TqA7/5imErFJw003RcBl+WKnX/LdJIyKLH79409c2bM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qCzgCTegHdAT5fWk8aSdkp1LFW0howpUJKiyaSHxcKqW9uey8359m510uRqxYETYqSogVuQSkhfnYnG58Ym38tTyDbpuCAVDMDSqB+3tRFp8sGkcEuGqo3mw1zV7fCF3zGBt9CZdSdWDPEFZ8p74GYvgMJ8uIS2PmdwH8EMLBv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC58B1474;
	Tue,  6 Feb 2024 02:28:57 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E75A23F641;
	Tue,  6 Feb 2024 02:28:13 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Cc: mark.rutland@arm.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	suzuki.poulose@arm.com,
	ilkka@os.amperecomputing.com,
	bwicaksono@nvidia.com,
	YWan@nvidia.com,
	rwiley@nvidia.com
Subject: [PATCH v3 5/5] perf/arm_cspmu: Add devicetree support
Date: Tue,  6 Feb 2024 10:27:58 +0000
Message-Id: <836722034302ff62f2df56aaeb0036e71945a5d1.1706718007.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1706718007.git.robin.murphy@arm.com>
References: <cover.1706718007.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hook up devicetree probing support. For now let's hope that people
implement PMIIDR properly and we don't need an override property or
match data mechanism.

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2: Use APMT node to distinguish ACPI; adjust for binding change
v3: Handle NULL APMT node properly, fix phandle iteration.
---
 drivers/perf/arm_cspmu/arm_cspmu.c | 67 ++++++++++++++++++++++++------
 1 file changed, 55 insertions(+), 12 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index b54dc7fd6ca5..6bc21ef96250 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -27,6 +27,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/of.h>
 #include <linux/perf_event.h>
 #include <linux/platform_device.h>
 
@@ -114,7 +115,9 @@ static void arm_cspmu_set_ev_filter(struct arm_cspmu *cspmu,
 
 static struct acpi_apmt_node *arm_cspmu_apmt_node(struct device *dev)
 {
-	return *(struct acpi_apmt_node **)dev_get_platdata(dev);
+	struct acpi_apmt_node **ptr = dev_get_platdata(dev);
+
+	return ptr ? *ptr : NULL;
 }
 
 /*
@@ -310,6 +313,10 @@ static const char *arm_cspmu_get_name(const struct arm_cspmu *cspmu)
 
 	dev = cspmu->dev;
 	apmt_node = arm_cspmu_apmt_node(dev);
+	if (!apmt_node)
+		return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
+				      atomic_fetch_inc(&pmu_idx[0]));
+
 	pmu_type = apmt_node->type;
 
 	if (pmu_type >= ACPI_APMT_NODE_TYPE_COUNT) {
@@ -425,7 +432,7 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 	};
 
 	/* Firmware may override implementer/product ID from PMIIDR */
-	if (apmt_node->impl_id)
+	if (apmt_node && apmt_node->impl_id)
 		cspmu->impl.pmiidr = apmt_node->impl_id;
 
 	/* Find implementer specific attribute ops. */
@@ -940,7 +947,14 @@ static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
 	platform_set_drvdata(pdev, cspmu);
 
 	apmt_node = arm_cspmu_apmt_node(dev);
-	cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
+	if (apmt_node) {
+		cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
+	} else {
+		u32 width = 0;
+
+		device_property_read_u32(dev, "reg-io-width", &width);
+		cspmu->has_atomic_dword = (width == 8);
+	}
 
 	return cspmu;
 }
@@ -1131,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
 		}
 	}
 
-	if (cpumask_empty(&cspmu->associated_cpus)) {
-		dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
-		return -ENODEV;
-	}
-
 	return 0;
 }
 #else
@@ -1145,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
 }
 #endif
 
+static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
+{
+	struct of_phandle_iterator it;
+	int ret, cpu;
+
+	of_for_each_phandle(&it, ret, dev_of_node(cspmu->dev), "cpus", NULL, 0) {
+		cpu = of_cpu_node_to_id(it.node);
+		if (cpu < 0)
+			continue;
+		cpumask_set_cpu(cpu, &cspmu->associated_cpus);
+	}
+	return ret == -ENOENT ? 0 : ret;
+}
+
 static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
 {
-	return arm_cspmu_acpi_get_cpus(cspmu);
+	int ret = 0;
+
+	if (arm_cspmu_apmt_node(cspmu->dev))
+		ret = arm_cspmu_acpi_get_cpus(cspmu);
+	else if (device_property_present(cspmu->dev, "cpus"))
+		ret = arm_cspmu_of_get_cpus(cspmu);
+	else
+		cpumask_copy(&cspmu->associated_cpus, cpu_possible_mask);
+
+	if (!ret && cpumask_empty(&cspmu->associated_cpus)) {
+		dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
+		ret = -ENODEV;
+	}
+	return ret;
 }
 
 static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
@@ -1244,11 +1280,18 @@ static const struct platform_device_id arm_cspmu_id[] = {
 };
 MODULE_DEVICE_TABLE(platform, arm_cspmu_id);
 
+static const struct of_device_id arm_cspmu_of_match[] = {
+	{ .compatible = "arm,coresight-pmu" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, arm_cspmu_of_match);
+
 static struct platform_driver arm_cspmu_driver = {
 	.driver = {
-			.name = DRVNAME,
-			.suppress_bind_attrs = true,
-		},
+		.name = DRVNAME,
+		.of_match_table = arm_cspmu_of_match,
+		.suppress_bind_attrs = true,
+	},
 	.probe = arm_cspmu_device_probe,
 	.remove = arm_cspmu_device_remove,
 	.id_table = arm_cspmu_id,
-- 
2.39.2.101.g768bb238c484.dirty


