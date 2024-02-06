Return-Path: <devicetree+bounces-39013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 884FD84B27C
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 392F81F24FB3
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A507712E1D1;
	Tue,  6 Feb 2024 10:28:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4CF12EBC8
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215293; cv=none; b=pjIcLATOWlafaXpnQk16YK6ofrDPIzGE7R2nZcogARsPIlTpJeB9dCNP/kdCZC46eo6xkATdfE1IYL5SlsqXBdsJiuPvGWaRW7sTjIOwukmPYTpqw3Oae2h2p8smEbfXRFiRfewkY6rWpKy4Ml5HUZB2wLuSiUVTDVrSBU3nOac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215293; c=relaxed/simple;
	bh=IyQVFo/D94B8v3aPi6JT9iMvH1rHtKMeD+Z3wWwC5ow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uY9kh2dCBZoxaTCzsrq2G5EneQ2vFl8/gaDdb4chmH/hGcyXv76kuNX57qataLFLvCI557sLHcH8FRSbmC8Pg5r+Gc8Vs2iiY2fJ8mD+BNHLRfBIbX9I3pzagNieOVmPlz+GbjSOFymDWi7BKtLEGNcuYbbuQ1Kl0Xs5uZdt8Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6680D12FC;
	Tue,  6 Feb 2024 02:28:53 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AE55D3F641;
	Tue,  6 Feb 2024 02:28:09 -0800 (PST)
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
Subject: [PATCH v3 2/5] perf/arm_cspmu: Simplify attribute groups
Date: Tue,  6 Feb 2024 10:27:55 +0000
Message-Id: <cf12b803114b0815438833fcb2495f20f2007761.1706718007.git.robin.murphy@arm.com>
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
index 7c8a6bd940f4..b888473ec71f 100644
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
@@ -1164,11 +1157,10 @@ static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
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
@@ -1190,7 +1182,7 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
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


