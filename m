Return-Path: <devicetree+bounces-25504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3842081364A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AA261C20CC1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88095D48F;
	Thu, 14 Dec 2023 16:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0FAB5114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:31:24 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5CC8E1595;
	Thu, 14 Dec 2023 08:32:09 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A65893F5A1;
	Thu, 14 Dec 2023 08:31:22 -0800 (PST)
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
Subject: [PATCH v2 3/5] perf/arm_cspmu: Simplify counter reset
Date: Thu, 14 Dec 2023 16:31:06 +0000
Message-Id: <625b6a5cb808377b070680f8c99a17346b48a5b5.1702571292.git.robin.murphy@arm.com>
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

arm_cspmu_reset_counters() inherently also stops them since it is
writing 0 to PMCR.E, so there should be no need to do that twice.
Also tidy up the reset routine itself for consistency with the start
and stop routines, and to be clear at first glance that it is simply
writing a constant value.

Reviewed-by: Ilkka Koskinen <ilkka@os.amperecomputing.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_cspmu/arm_cspmu.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c b/drivers/perf/arm_cspmu/arm_cspmu.c
index f7aa2ac5fd88..b64de4d800c7 100644
--- a/drivers/perf/arm_cspmu/arm_cspmu.c
+++ b/drivers/perf/arm_cspmu/arm_cspmu.c
@@ -525,11 +525,7 @@ static int arm_cspmu_alloc_attr_groups(struct arm_cspmu *cspmu)
 
 static inline void arm_cspmu_reset_counters(struct arm_cspmu *cspmu)
 {
-	u32 pmcr = 0;
-
-	pmcr |= PMCR_P;
-	pmcr |= PMCR_C;
-	writel(pmcr, cspmu->base0 + PMCR);
+	writel(PMCR_C | PMCR_P, cspmu->base0 + PMCR);
 }
 
 static inline void arm_cspmu_start_counters(struct arm_cspmu *cspmu)
@@ -1189,7 +1185,6 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
 	};
 
 	/* Hardware counter init */
-	arm_cspmu_stop_counters(cspmu);
 	arm_cspmu_reset_counters(cspmu);
 
 	ret = perf_pmu_register(&cspmu->pmu, cspmu->name, -1);
-- 
2.39.2.101.g768bb238c484.dirty


