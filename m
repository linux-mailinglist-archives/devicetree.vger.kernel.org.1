Return-Path: <devicetree+bounces-314262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /kJUGevsOGqOkAcAu9opvQ
	(envelope-from <devicetree+bounces-314262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:06:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9F66AD7FE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:06:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=oIPacT9L;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314262-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314262-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1CB93035A8A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE8438E8B8;
	Mon, 22 Jun 2026 08:04:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FB938E121
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 08:04:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782115469; cv=none; b=mCVmPLnC17scOVlBHraDiQLLPm8EiswouyMP5QCOwZn774WZwv9bLpkI0qQfwJ3IY5vgJHnOlHSbFlsDuDylnoPskUjfiFn0OiccEdnVCeJKMpYILYuruBavDcipLnoiFNfgMez1puyHM0r1W4BEY9kC6965XFsoQgEGONt57L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782115469; c=relaxed/simple;
	bh=9Tk+BjDMZVLgUkQD9/m8RvzVlg/d0pDQ+TwUx3JZ3AE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XyVcH2pA9g7vBJC06oOtfMG04wypHz+YXGS8S7+Hzn+wumP6Leh1NUhJNpfmxWnS9McmCULDpr7ObJckx/AIswdQHqn/qYRO5Gb2/1Zp6keUENLatYNhtA7VeR1BVNsF+uBrR9vcPm5o8FjibnWLpZWPBBtvAaEbthi5VjtpYx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=oIPacT9L; arc=none smtp.client-ip=91.218.175.185
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782115466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v62h5jXmmPgvQdyVU89RGQkLc6ReYrJW9QcdYlcnl1s=;
	b=oIPacT9Lz4/fnsnqclJUcIdL5JYt78goTvHHcxVnY3JyTxFwB6WIVcRgxLZdgrEVuKOcjK
	EIKKZXitc5H1EtSSz37N+7DkT86VZTFd93gzatYrtTDplcBLU27t9V5AchyTisc+3M50Dw
	zo4lBUuX/HyZ3BRKFGdssr0SZeN81eo=
From: Atish Patra <atish.patra@linux.dev>
Date: Mon, 22 Jun 2026 01:04:13 -0700
Subject: [PATCH v7 01/22] RISC-V: perf: fix resource cleanup on driver
 probe failure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260622-counter_delegation-v7-1-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
In-Reply-To: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
To: Jiri Olsa <jolsa@kernel.org>, James Clark <james.clark@linaro.org>, 
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Rob Herring <robh@kernel.org>, 
 Ian Rogers <irogers@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Anup Patel <anup@brainfault.org>, Paul Walmsley <pjw@kernel.org>, 
 Atish Patra <atish.patra@linux.dev>, Namhyung Kim <namhyung@kernel.org>
Cc: devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jolsa@kernel.org,m:james.clark@linaro.org,m:mark.rutland@arm.com,m:will@kernel.org,m:acme@kernel.org,m:robh@kernel.org,m:irogers@google.com,m:krzk+dt@kernel.org,m:anup@brainfault.org,m:pjw@kernel.org,m:atish.patra@linux.dev,m:namhyung@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314262-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atish.patra@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:dkim,linux.dev:from_mime,meta.com:mid,meta.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE9F66AD7FE

From: Atish Patra <atishp@meta.com>

Sashiko pointed out various UAF and memory leak issues around
pmu_sbi_device_probe() error paths.

If the probe fails, here are list of cleanups needed.
a. Already registered pmu must be freed
b. per cpu IRQ must be released
c. pmu_ctr_list data structure must be freed
d. cpu hotplug state must be cleaned up only if added.

Fix the resource cleanup by reorganizing the code around probe failure.

Reported-by: Sashiko AI <sashiko-bot@kernel.org>
Signed-off-by: Atish Patra <atishp@meta.com>
---
 drivers/perf/riscv_pmu_sbi.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
index 385af5e6e6d0..8753007cc57e 100644
--- a/drivers/perf/riscv_pmu_sbi.c
+++ b/drivers/perf/riscv_pmu_sbi.c
@@ -1302,7 +1302,8 @@ static void riscv_pmu_destroy(struct riscv_pmu *pmu)
 		}
 	}
 	riscv_pm_pmu_unregister(pmu);
-	cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARTING, &pmu->node);
+	if (!hlist_unhashed(&pmu->node))
+		cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARTING, &pmu->node);
 }
 
 static void pmu_sbi_event_init(struct perf_event *event)
@@ -1424,6 +1425,7 @@ static int pmu_sbi_device_probe(struct platform_device *pdev)
 	struct riscv_pmu *pmu = NULL;
 	int ret = -ENODEV;
 	int num_counters;
+	bool irq_requested = false;
 
 	pr_info("SBI PMU extension is available\n");
 	pmu = riscv_pmu_alloc();
@@ -1452,6 +1454,7 @@ static int pmu_sbi_device_probe(struct platform_device *pdev)
 		pmu->pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;
 		pmu->pmu.capabilities |= PERF_PMU_CAP_NO_EXCLUDE;
 	}
+	irq_requested = (ret == 0);
 
 	pmu->pmu.attr_groups = riscv_pmu_attr_groups;
 	pmu->pmu.parent = &pdev->dev;
@@ -1470,11 +1473,11 @@ static int pmu_sbi_device_probe(struct platform_device *pdev)
 
 	ret = riscv_pm_pmu_register(pmu);
 	if (ret)
-		goto out_unregister;
+		goto out_destroy;
 
 	ret = perf_pmu_register(&pmu->pmu, "cpu", PERF_TYPE_RAW);
 	if (ret)
-		goto out_unregister;
+		goto out_destroy;
 
 	/* SBI PMU Snapsphot is only available in SBI v2.0 */
 	if (sbi_v2_available) {
@@ -1515,9 +1518,17 @@ static int pmu_sbi_device_probe(struct platform_device *pdev)
 	return 0;
 
 out_unregister:
+	perf_pmu_unregister(&pmu->pmu);
+
+out_destroy:
 	riscv_pmu_destroy(pmu);
+	if (irq_requested)
+		free_percpu_irq(riscv_pmu_irq, pmu->hw_events);
 
 out_free:
+	free_percpu(pmu->hw_events);
+	kfree(pmu_ctr_list);
+	pmu_ctr_list = NULL;
 	kfree(pmu);
 	return ret;
 }

-- 
2.53.0-Meta


