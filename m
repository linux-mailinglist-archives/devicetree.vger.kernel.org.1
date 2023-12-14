Return-Path: <devicetree+bounces-25503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BF881364B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39B0FB20B40
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74275FF19;
	Thu, 14 Dec 2023 16:31:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2CC62A6
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:31:22 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C4A211FB;
	Thu, 14 Dec 2023 08:32:07 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B5B5F3F5A1;
	Thu, 14 Dec 2023 08:31:20 -0800 (PST)
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
Subject: [PATCH v2 2/5] perf/arm_cspmu: Simplify attribute groups
Date: Thu, 14 Dec 2023 16:31:05 +0000
Message-Id: <1b02b2a40fda2216b9aef5169d73eaa944ef54f8.1702571292.git.robin.murphy@arm.com>
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

The attribute group array itself is always the same, so there's no
need to allocate it separately. Storing it directly in our instance
data saves memory and gives us one less point of failure.

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_cspmu/arm_cspmu.c | 26 +++++++++-----------------
 drivers/perf/arm_cspmu/arm_cspmu.h |  1 +
 2 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index a3347b1287e6..f7aa2ac5fd88 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -501,23 +501,16 @@ arm_cspmu_alloc_format_attr_group(struct arm_cspmu *cspmu)
 	return format_group;
 }
 
-static struct attribute_group **
-arm_cspmu_alloc_attr_group(struct arm_cspmu *cspmu)
+static int arm_cspmu_alloc_attr_groups(struct arm_cspmu *cspmu)
 {
-	struct attribute_group **attr_groups = NULL;
-	struct device *dev = cspmu->dev;
+	const struct attribute_group **attr_groups = cspmu->attr_groups;
 	const struct arm_cspmu_impl_ops *impl_ops = &cspmu->impl.ops;
 
 	cspmu->identifier = impl_ops->get_identifier(cspmu);
 	cspmu->name = impl_ops->get_name(cspmu);
 
 	if (!cspmu->identifier || !cspmu->name)
-		return NULL;
-
-	attr_groups = devm_kcalloc(dev, 5, sizeof(struct attribute_group *),
-				   GFP_KERNEL);
-	if (!attr_groups)
-		return NULL;
+		return -ENOMEM;
 
 	attr_groups[0] = arm_cspmu_alloc_event_attr_group(cspmu);
 	attr_groups[1] = arm_cspmu_alloc_format_attr_group(cspmu);
@@ -525,9 +518,9 @@ arm_cspmu_alloc_attr_group(struct arm_cspmu *cspmu)
 	attr_groups[3] = &arm_cspmu_cpumask_attr_group;
 
 	if (!attr_groups[0] || !attr_groups[1])
-		return NULL;
+		return -ENOMEM;
 
-	return attr_groups;
+	return 0;
 }
 
 static inline void arm_cspmu_reset_counters(struct arm_cspmu *cspmu)
@@ -1166,11 +1159,10 @@ static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
 static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
 {
 	int ret, capabilities;
-	struct attribute_group **attr_groups;
 
-	attr_groups = arm_cspmu_alloc_attr_group(cspmu);
-	if (!attr_groups)
-		return -ENOMEM;
+	ret = arm_cspmu_alloc_attr_groups(cspmu);
+	if (ret)
+		return ret;
 
 	ret = cpuhp_state_add_instance(arm_cspmu_cpuhp_state,
 				       &cspmu->cpuhp_node);
@@ -1192,7 +1184,7 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
 		.start		= arm_cspmu_start,
 		.stop		= arm_cspmu_stop,
 		.read		= arm_cspmu_read,
-		.attr_groups	= (const struct attribute_group **)attr_groups,
+		.attr_groups	= cspmu->attr_groups,
 		.capabilities	= capabilities,
 	};
 
diff --git a/drivers/perf/arm_cspmu/arm_cspmu.h b/drivers/perf/arm_cspmu/arm_cspmu.h
index 2fe723555a6b..c9163acfe810 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.h
+++ b/drivers/perf/arm_cspmu/arm_cspmu.h
@@ -157,6 +157,7 @@ struct arm_cspmu {
 	int cycle_counter_logical_idx;
 
 	struct arm_cspmu_hw_events hw_events;
+	const struct attribute_group *attr_groups[5];
 
 	struct arm_cspmu_impl impl;
 };
-- 
2.39.2.101.g768bb238c484.dirty


