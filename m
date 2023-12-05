Return-Path: <devicetree+bounces-21937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF1805A7C
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 17:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F4E51F2171B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB51660BB1;
	Tue,  5 Dec 2023 16:52:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 41A54D64
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:52:13 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B1A91576;
	Tue,  5 Dec 2023 08:52:59 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D6A3F3F5A1;
	Tue,  5 Dec 2023 08:52:11 -0800 (PST)
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
Subject: [PATCH 5/5] perf/arm_cspmu: Add devicetree support
Date: Tue,  5 Dec 2023 16:51:58 +0000
Message-Id: <7000cdf3a22afe684793863e81a1d96bbddb5db1.1701793996.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1701793996.git.robin.murphy@arm.com>
References: <cover.1701793996.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hook up devicetree probing support. For now let's hope that people
implement PMIIDR properly and we don't need an override mechanism.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_cspmu/arm_cspmu.c | 71 +++++++++++++++++++++++-------
 1 file changed, 56 insertions(+), 15 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index b64de4d800c7..80b5fc417ee3 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -27,6 +27,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/of.h>
 #include <linux/perf_event.h>
 #include <linux/platform_device.h>
 
@@ -309,6 +310,10 @@ static const char *arm_cspmu_get_name(const struct arm_cspmu *cspmu)
 	static atomic_t pmu_idx[ACPI_APMT_NODE_TYPE_COUNT] = { 0 };
 
 	dev = cspmu->dev;
+	if (!has_acpi_companion(dev))
+		return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
+				      atomic_fetch_inc(&pmu_idx[0]));
+
 	apmt_node = arm_cspmu_apmt_node(dev);
 	pmu_type = apmt_node->type;
 
@@ -406,7 +411,6 @@ static struct arm_cspmu_impl_match *arm_cspmu_impl_match_get(u32 pmiidr)
 static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 {
 	int ret = 0;
-	struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
 	struct arm_cspmu_impl_match *match;
 
 	/* Start with a default PMU implementation */
@@ -425,8 +429,12 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 	};
 
 	/* Firmware may override implementer/product ID from PMIIDR */
-	if (apmt_node->impl_id)
-		cspmu->impl.pmiidr = apmt_node->impl_id;
+	if (has_acpi_companion(cspmu->dev)) {
+		struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
+
+		if (apmt_node->impl_id)
+			cspmu->impl.pmiidr = apmt_node->impl_id;
+	}
 
 	/* Find implementer specific attribute ops. */
 	match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
@@ -928,7 +936,6 @@ static void arm_cspmu_read(struct perf_event *event)
 
 static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
 {
-	struct acpi_apmt_node *apmt_node;
 	struct arm_cspmu *cspmu;
 	struct device *dev = &pdev->dev;
 
@@ -939,8 +946,13 @@ static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
 	cspmu->dev = dev;
 	platform_set_drvdata(pdev, cspmu);
 
-	apmt_node = arm_cspmu_apmt_node(dev);
-	cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
+	if (has_acpi_companion(dev)) {
+		struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(dev);
+
+		cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
+	} else {
+		cspmu->has_atomic_dword = device_property_read_bool(dev, "arm,64-bit-atomic");
+	}
 
 	return cspmu;
 }
@@ -1133,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
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
@@ -1147,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu *cspmu)
 }
 #endif
 
+static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
+{
+	struct of_phandle_iterator it;
+	int ret, cpu;
+
+	of_for_each_phandle(&it, ret, cspmu->dev->of_node, "cpus", NULL, 0) {
+		cpu = of_cpu_node_to_id(it.node);
+		if (cpu < 0)
+			continue;
+		cpumask_set_cpu(cpu, &cspmu->associated_cpus);
+	}
+	return ret;
+}
+
 static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
 {
-	return arm_cspmu_acpi_get_cpus(cspmu);
+	int ret = 0;
+
+	if (has_acpi_companion(cspmu->dev))
+		ret = arm_cspmu_acpi_get_cpus(cspmu);
+	else if (of_property_present(cspmu->dev->of_node, "cpus"))
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
@@ -1246,11 +1280,18 @@ static const struct platform_device_id arm_cspmu_id[] = {
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


