Return-Path: <devicetree+bounces-25506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C7E81364E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F8F81C20C03
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A6D60B99;
	Thu, 14 Dec 2023 16:31:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2BAA1A6
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:31:29 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69E8B1596;
	Thu, 14 Dec 2023 08:32:14 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B35183F5A1;
	Thu, 14 Dec 2023 08:31:27 -0800 (PST)
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
Subject: [PATCH v2 5/5] perf/arm_cspmu: Add devicetree support
Date: Thu, 14 Dec 2023 16:31:08 +0000
Message-Id: <6858523689a214543224495fee22f9e31be2f767.1702571292.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
In-Reply-To: <cover.1702571292.git.robin.murphy@arm.com>
References: <cover.1702571292.git.robin.murphy@arm.com>
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

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2: Use APMT node to distinguish ACPI; adjust for binding change
---
 drivers/perf/arm_cspmu/arm_cspmu.c | 63 ++++++++++++++++++++++++------
 1 file changed, 52 insertions(+), 11 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index b64de4d800c7..6c76c135a0cf 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -27,6 +27,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/of.h>
 #include <linux/perf_event.h>
 #include <linux/platform_device.h>
 
@@ -310,6 +311,10 @@ static const char *arm_cspmu_get_name(const struct arm_cspmu *cspmu)
 
 	dev = cspmu->dev;
 	apmt_node = arm_cspmu_apmt_node(dev);
+	if (!apmt_node)
+		return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
+				      atomic_fetch_inc(&pmu_idx[0]));
+
 	pmu_type = apmt_node->type;
 
 	if (pmu_type >= ACPI_APMT_NODE_TYPE_COUNT) {
@@ -425,7 +430,7 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 	};
 
 	/* Firmware may override implementer/product ID from PMIIDR */
-	if (apmt_node->impl_id)
+	if (apmt_node && apmt_node->impl_id)
 		cspmu->impl.pmiidr = apmt_node->impl_id;
 
 	/* Find implementer specific attribute ops. */
@@ -940,7 +945,14 @@ static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
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
+	of_for_each_phandle(&it, ret, dev_of_node(cspmu->dev), "cpus", NULL, 0) {
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


