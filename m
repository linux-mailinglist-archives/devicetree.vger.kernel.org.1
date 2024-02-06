Return-Path: <devicetree+bounces-39014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4B084B27D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BD4028CE33
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 10:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F0812EBC3;
	Tue,  6 Feb 2024 10:28:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D156112E1EA
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215294; cv=none; b=RMETAqh2q0Fm9iG/zClJ3VrRffMqgCQxXTLgGcVE9M1tiaAONL3zTo6CoRRMjHSUPxmMNoJgNN4fEgQQQ1iSSki+xDvTVYiWkZPr0tqJxmdJ0SpwYyqk9FUEQCM3dNSnD2LeF6HsN+uHljDr9s7X8NrCMayqCBMLuVjnhWv9ogA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215294; c=relaxed/simple;
	bh=DuaXUo9hHWKOPU/3Mz68cNlV8vKzCqAtwS1dMFOqWVo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WRKyJ5rscgdAVSnmI4GAoBELz+KmaHa2giFvmuQmSE2sUzKXZHT3BhBKpVAq7bzWBeLY3WMkWaZzFWZ+ry6jPVQyWu/euTE6z3VXkp58UwzqkHDRbObXS8yRfZbhMJhpEQvPycpOJKwW/ou74cAgTAgC3PpK7g9UIHm0UA2ZcoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C453E139F;
	Tue,  6 Feb 2024 02:28:54 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 15F963F641;
	Tue,  6 Feb 2024 02:28:10 -0800 (PST)
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
Subject: [PATCH v3 3/5] perf/arm_cspmu: Simplify counter reset
Date: Tue,  6 Feb 2024 10:27:56 +0000
Message-Id: <3105815327989f6bb7bb068994d0eb4096b4ef64.1706718007.git.robin.murphy@arm.com>
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
index b888473ec71f..b54dc7fd6ca5 100644
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
@@ -1187,7 +1183,6 @@ static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
 	};
 
 	/* Hardware counter init */
-	arm_cspmu_stop_counters(cspmu);
 	arm_cspmu_reset_counters(cspmu);
 
 	ret = perf_pmu_register(&cspmu->pmu, cspmu->name, -1);
-- 
2.39.2.101.g768bb238c484.dirty


