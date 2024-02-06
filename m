Return-Path: <devicetree+bounces-39012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC084B27A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA7E61C2369D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC5412E1E6;
	Tue,  6 Feb 2024 10:28:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7761D12EBC6
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215292; cv=none; b=FGUrHkkL2k7bx+9MHmJu8iXuBKdxiyjIZAVQOFM3tWBOxngOSHOcrg2GpZQxtm78XM2HsLRiwbk2TFvg37nNzZP4MaR88pU047mxvIQhhUdRdu+84D0ADQyBUvvMx0CuHUjCm8eHrAah+Mt4r3Fk4CJq9Qz2cf0XokNMBvRMBCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215292; c=relaxed/simple;
	bh=JrGxCMXHRaVgE1hgKwrNQp1KyqgJTPamcOPCPrGUne8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EDQfvXMVWAO+ugvdB/OPfGroNIXIEjW3uR+cMHWpYy27q4IzjHN+Y2zm9mDkBeBcA8FuNFZiSFsUeWjGpCpuCWVtiCVgyR4mDlETEYms21pPlIvA4rGhO+GfoPpXR1/Vnkn3ahFHf6vacQOOokzR2axaHbaVCaSEs0it52sJP+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AB5ADA7;
	Tue,  6 Feb 2024 02:28:52 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 527DF3F641;
	Tue,  6 Feb 2024 02:28:08 -0800 (PST)
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
Subject: [PATCH v3 1/5] perf/arm_cspmu: Simplify initialisation
Date: Tue,  6 Feb 2024 10:27:54 +0000
Message-Id: <dd39718ee4890fd46a8e443c25303e87ae23f422.1706718007.git.robin.murphy@arm.com>
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

It's far simpler for implementations to literally override whichever
default ops they want to, by initialising to the default ops first. This
saves all the bother of checking what the impl_init_ops call has or
hasn't touched. Make the same clear distinction for the PMIIDR override
as well, in case we gain more sources for overriding that in future.

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_cspmu/arm_cspmu.c    | 55 +++++++++++----------------
 drivers/perf/arm_cspmu/nvidia_cspmu.c |  6 ---
 2 files changed, 22 insertions(+), 39 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index 50b89b989ce7..7c8a6bd940f4 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -100,13 +100,6 @@
 #define ARM_CSPMU_ACTIVE_CPU_MASK		0x0
 #define ARM_CSPMU_ASSOCIATED_CPU_MASK		0x1
 
-/* Check and use default if implementer doesn't provide attribute callback */
-#define CHECK_DEFAULT_IMPL_OPS(ops, callback)			\
-	do {							\
-		if (!ops->callback)				\
-			ops->callback = arm_cspmu_ ## callback;	\
-	} while (0)
-
 /*
  * Maximum poll count for reading counter value using high-low-high sequence.
  */
@@ -408,21 +401,32 @@ static struct arm_cspmu_impl_match *arm_cspmu_impl_match_get(u32 pmiidr)
 	return NULL;
 }
 
+#define DEFAULT_IMPL_OP(name)	.name = arm_cspmu_##name
+
 static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 {
 	int ret = 0;
-	struct arm_cspmu_impl_ops *impl_ops = &cspmu->impl.ops;
 	struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
 	struct arm_cspmu_impl_match *match;
 
-	/*
-	 * Get PMU implementer and product id from APMT node.
-	 * If APMT node doesn't have implementer/product id, try get it
-	 * from PMIIDR.
-	 */
-	cspmu->impl.pmiidr =
-		(apmt_node->impl_id) ? apmt_node->impl_id :
-				       readl(cspmu->base0 + PMIIDR);
+	/* Start with a default PMU implementation */
+	cspmu->impl.module = THIS_MODULE;
+	cspmu->impl.pmiidr = readl(cspmu->base0 + PMIIDR);
+	cspmu->impl.ops = (struct arm_cspmu_impl_ops) {
+		DEFAULT_IMPL_OP(get_event_attrs),
+		DEFAULT_IMPL_OP(get_format_attrs),
+		DEFAULT_IMPL_OP(get_identifier),
+		DEFAULT_IMPL_OP(get_name),
+		DEFAULT_IMPL_OP(is_cycle_counter_event),
+		DEFAULT_IMPL_OP(event_type),
+		DEFAULT_IMPL_OP(event_filter),
+		DEFAULT_IMPL_OP(set_ev_filter),
+		DEFAULT_IMPL_OP(event_attr_is_visible),
+	};
+
+	/* Firmware may override implementer/product ID from PMIIDR */
+	if (apmt_node->impl_id)
+		cspmu->impl.pmiidr = apmt_node->impl_id;
 
 	/* Find implementer specific attribute ops. */
 	match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
@@ -450,24 +454,9 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
 		}
 
 		mutex_unlock(&arm_cspmu_lock);
+	}
 
-		if (ret)
-			return ret;
-	} else
-		cspmu->impl.module = THIS_MODULE;
-
-	/* Use default callbacks if implementer doesn't provide one. */
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_event_attrs);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_format_attrs);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_identifier);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, get_name);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, is_cycle_counter_event);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_type);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_filter);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, event_attr_is_visible);
-	CHECK_DEFAULT_IMPL_OPS(impl_ops, set_ev_filter);
-
-	return 0;
+	return ret;
 }
 
 static struct attribute_group *
diff --git a/drivers/perf/arm_cspmu/nvidia_cspmu.c b/drivers/perf/arm_cspmu/nvidia_cspmu.c
index 0382b702f092..5b84b701ad62 100644
--- a/drivers/perf/arm_cspmu/nvidia_cspmu.c
+++ b/drivers/perf/arm_cspmu/nvidia_cspmu.c
@@ -388,12 +388,6 @@ static int nv_cspmu_init_ops(struct arm_cspmu *cspmu)
 	impl_ops->get_format_attrs		= nv_cspmu_get_format_attrs;
 	impl_ops->get_name			= nv_cspmu_get_name;
 
-	/* Set others to NULL to use default callback. */
-	impl_ops->event_type			= NULL;
-	impl_ops->event_attr_is_visible		= NULL;
-	impl_ops->get_identifier		= NULL;
-	impl_ops->is_cycle_counter_event	= NULL;
-
 	return 0;
 }
 
-- 
2.39.2.101.g768bb238c484.dirty


