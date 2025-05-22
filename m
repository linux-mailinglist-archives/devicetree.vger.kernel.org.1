Return-Path: <devicetree+bounces-179775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 87399AC17FA
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 01:30:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 987AB7BB192
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 23:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE80B271A60;
	Thu, 22 May 2025 23:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FPwVHT6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CB72D3A7E
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747956386; cv=none; b=kRyaMChjsoMCyj1EudSZG9RGFCJK9NEGTf10g1I4c/COOgU1qy8WvLQIjuku0W8cVR8DBhRvOiXCUdvdp72owTQmqbL19wIpybX7E7n8kR8UU7czpcrUxnL0RFeiz4XljsKK6oPOh5rNigHjuFHIrbRaBg3uXAh4SBOo2B+OIiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747956386; c=relaxed/simple;
	bh=P0rRRLXHPd36tAaXY4UVfPZybaxsXmDGzadqOkqrzE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XgfPGWgZue8HTeMkrvFBkxQDOM+MYCJVFjrwYrWpv74Oig1F637HilR6I4GXXS9xXZnONEbRpnGvO4QIda5QZFKS/TiJG5GqFCVQl+dVwwXuHO3GucMWctmYlT0mpd5bUnztoWn8spy47aFmqC3QsaC8/zcxFU51mt8zWFjohmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=FPwVHT6t; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-442ec3ce724so71772595e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 16:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1747956382; x=1748561182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iB4a0Cbh2NjKnWpwZFuK+rtkyVkQIkFS80E49Qu0ieA=;
        b=FPwVHT6t86ufO1066QgPLJ67I1DJILsnY4M9gX1uZUHEGPmFs4gsAAy0RrSSdaSTt0
         yTt1F+GxJNrEqshI0peR50IGWFol1vegAFHSjf0wGRfPOf4GweTLaZR3FL0UUSL2n1an
         rOQ6Xvj8w7rnjeeBF+pBX4Lwv7wzIBPfVJE4XDjC7QCpHyHBZQRxXRidcnZ9mQydf4lp
         X3M/4dChEzT6kWKwPA4SM/uujRPuS1sjf9CXVxxP6/SutYF6OMLrqqEE49ndOLA2P0nC
         fPYLoNeCpkA32/K0nMZ+bLswwy65SjvF50S0Cd+Dnv+JNn1V2jbyt6Rnjm14t3PJwG9x
         qIww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747956382; x=1748561182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iB4a0Cbh2NjKnWpwZFuK+rtkyVkQIkFS80E49Qu0ieA=;
        b=ZbsT2axzcgu3xPJYQYSGN3bDZmMQvCrwXSoRcSo8Riabrw5p+TDN7V9LJc1z0aETHt
         dIIr3AfhXK1/rtLU4XwhfwCq3WMq3JJuDAHTfzH2NaWmmxaKfhUWZM70W8FyoVEsx/UD
         pgoP4tnFkTYCWoa3x0JfjbtuEQUmedkI0skpiaFjaFuVrxNJl8cdwUUhIzbIRb+nTyQG
         xUkVC+8XKvCg/gBZTe0YoZu8Wo9vGkgHUdplND77gYQGhmHMBDyEjlE7PRTK2EAGb7rt
         0H8WRWfccKyecWjbneATyMesQGRcCzmYOl7W1uqXiK+aQFh4NGKO/1uMIe2pmy72ksq/
         CZfA==
X-Forwarded-Encrypted: i=1; AJvYcCXYIozlfIQuiQRDkmJXM9vFSYWTFLTT6SmR4gcRPZ23vEREJnve2zpBtPGGelWXDcSaDtFJiCCCNMNP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1CC0Z7iV7QmiSO4edAxxi77opxhOYSxDyj4AC2K8+Xn29G7iF
	sGCkW4hE0PFCAB3PeK+fdP+LCz+rhWBEM8Kb82Cdluv8cvUdfeH3cMSkYsrGkGiKdLE=
X-Gm-Gg: ASbGnct8D2TwGE1T0iPEp0ncDrinvoM89IIoWbUV55u+i6ULG5FBSvgeVj8cRSZ6m9T
	MT+ALJZXYc346rKTPHZUM2T/45KXYpSTD4PxhR0o4EyOYAGq5NoDb1MGskE6iZSyl8U7en9Xu1F
	zs+BP7ZsdolorLf466/3Ba1cdRr8c2ZbgPyX62448bcZgyVNDc0dbPI7mTyJu0Oxm/rWA+brcOg
	ppHMVjQQgmAsecE0XqY5UFif4eYOOU1io+lY0NX6+EFu/2yO5bP0jtnNMRrtXGXMpyhP4BT6XHy
	6/cA2XjxmpDHslQbed6SG0B7X+6UsDDKY4lDHE666wmk4um3Lfniuw==
X-Google-Smtp-Source: AGHT+IGE6jY2JmFj2M+Ketq4VLKj1dDV4Tagl9qnZaoCfDb1MRZkhunSbxJSEeTZaqOhTSm2kAWnnw==
X-Received: by 2002:a05:600c:5247:b0:442:f4a3:b5f2 with SMTP id 5b1f17b1804b1-442fd60b4e8mr228193215e9.6.1747956382192;
        Thu, 22 May 2025 16:26:22 -0700 (PDT)
Received: from [127.0.1.1] ([2a02:c7c:75ac:6300:c05a:35d:17ae:e731])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f6f04334sm117825395e9.10.2025.05.22.16.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 16:26:21 -0700 (PDT)
From: Rajnesh Kanwal <rkanwal@rivosinc.com>
Date: Fri, 23 May 2025 00:25:12 +0100
Subject: [PATCH v3 6/7] riscv: pmu: Integrate CTR Ext support in
 riscv_pmu_dev driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250523-b4-ctr_upstream_v3-v3-6-ad355304ba1c@rivosinc.com>
References: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
In-Reply-To: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Atish Kumar Patra <atishp@rivosinc.com>, 
 Anup Patel <anup@brainfault.org>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beeman Strong <beeman@rivosinc.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, Rajnesh Kanwal <rkanwal@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747956375; l=6642;
 i=rkanwal@rivosinc.com; s=20250522; h=from:subject:message-id;
 bh=P0rRRLXHPd36tAaXY4UVfPZybaxsXmDGzadqOkqrzE4=;
 b=2qqrKnwDcn0slIAzGVFAAbSi8ELDFNsa8LcbAOZDrVPPJHUaNgQod52uFcLIegOjFZCCRAY0f
 Pkw9TZixbyHDopUhF+k3fCLpS5iahzM/Eo8247LJfXAX+vKraTAvgut
X-Developer-Key: i=rkanwal@rivosinc.com; a=ed25519;
 pk=aw8nvncslGKHEmTBTJqvkP/4tj6pijL8fwRRym/GuS8=

This integrates recently added CTR ext support in riscv_pmu_dev driver
to enable branch stack sampling using PMU events.

This mainly adds CTR enable/disable callbacks in rvpmu_ctr_stop()
and rvpmu_ctr_start() function to start/stop branch recording along
with the event.

PMU overflow handler rvpmu_ovf_handler() is also updated to sample
CTR entries in case of the overflow for the particular event programmed
to records branches. The recorded entries are fed to core perf for
further processing.

Signed-off-by: Rajnesh Kanwal <rkanwal@rivosinc.com>
---
 drivers/perf/riscv_pmu_common.c |  3 +-
 drivers/perf/riscv_pmu_dev.c    | 67 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 67 insertions(+), 3 deletions(-)

diff --git a/drivers/perf/riscv_pmu_common.c b/drivers/perf/riscv_pmu_common.c
index b2dc78cbbb93926964f81f30be9ef4a1c02501df..0b032b8d8762e77d2b553643b0f9064e7c789cfe 100644
--- a/drivers/perf/riscv_pmu_common.c
+++ b/drivers/perf/riscv_pmu_common.c
@@ -329,8 +329,7 @@ static int riscv_pmu_event_init(struct perf_event *event)
 	u64 event_config = 0;
 	uint64_t cmask;
 
-	/* driver does not support branch stack sampling */
-	if (has_branch_stack(event))
+	if (needs_branch_stack(event) && !riscv_pmu_ctr_supported(rvpmu))
 		return -EOPNOTSUPP;
 
 	hwc->flags = 0;
diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index 95e6dd272db69f53b679e5fc3450785e45d5e8b9..b0c616fb939fcc61f7493877a8801916069f16f7 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -1038,7 +1038,7 @@ static void rvpmu_sbi_ctr_stop(struct perf_event *event, unsigned long flag)
 static void pmu_sched_task(struct perf_event_pmu_context *pmu_ctx,
 			   bool sched_in)
 {
-	/* Call CTR specific Sched hook. */
+	riscv_pmu_ctr_sched_task(pmu_ctx, sched_in);
 }
 
 static int rvpmu_sbi_find_num_ctrs(void)
@@ -1370,6 +1370,13 @@ static irqreturn_t rvpmu_ovf_handler(int irq, void *dev)
 		hw_evt->state |= PERF_HES_UPTODATE;
 		perf_sample_data_init(&data, 0, hw_evt->last_period);
 		if (riscv_pmu_event_set_period(event)) {
+			if (needs_branch_stack(event)) {
+				riscv_pmu_ctr_consume(cpu_hw_evt, event);
+				perf_sample_save_brstack(
+					&data, event,
+					&cpu_hw_evt->branches->branch_stack, NULL);
+			}
+
 			/*
 			 * Unlike other ISAs, RISC-V don't have to disable interrupts
 			 * to avoid throttling here. As per the specification, the
@@ -1569,16 +1576,23 @@ static int rvpmu_deleg_ctr_get_idx(struct perf_event *event)
 
 static void rvpmu_ctr_add(struct perf_event *event, int flags)
 {
+	if (needs_branch_stack(event))
+		riscv_pmu_ctr_add(event);
 }
 
 static void rvpmu_ctr_del(struct perf_event *event, int flags)
 {
+	if (needs_branch_stack(event))
+		riscv_pmu_ctr_del(event);
 }
 
 static void rvpmu_ctr_start(struct perf_event *event, u64 ival)
 {
 	struct hw_perf_event *hwc = &event->hw;
 
+	if (needs_branch_stack(event))
+		riscv_pmu_ctr_enable(event);
+
 	if (riscv_pmu_cdeleg_available() && !pmu_sbi_is_fw_event(event))
 		rvpmu_deleg_ctr_start(event, ival);
 	else
@@ -1593,6 +1607,9 @@ static void rvpmu_ctr_stop(struct perf_event *event, unsigned long flag)
 {
 	struct hw_perf_event *hwc = &event->hw;
 
+	if (needs_branch_stack(event) && flag != RISCV_PMU_STOP_FLAG_RESET)
+		riscv_pmu_ctr_disable(event);
+
 	if ((hwc->flags & PERF_EVENT_FLAG_USER_ACCESS) &&
 	    (hwc->flags & PERF_EVENT_FLAG_USER_READ_CNT))
 		rvpmu_reset_scounteren((void *)event);
@@ -1650,6 +1667,9 @@ static u32 rvpmu_find_ctrs(void)
 
 static int rvpmu_event_map(struct perf_event *event, u64 *econfig)
 {
+	if (needs_branch_stack(event) && !riscv_pmu_ctr_valid(event))
+		return -EOPNOTSUPP;
+
 	if (riscv_pmu_cdeleg_available() && !pmu_sbi_is_fw_event(event))
 		return rvpmu_cdeleg_event_map(event, econfig);
 	else
@@ -1696,6 +1716,8 @@ static int rvpmu_starting_cpu(unsigned int cpu, struct hlist_node *node)
 		enable_percpu_irq(riscv_pmu_irq, IRQ_TYPE_NONE);
 	}
 
+	riscv_pmu_ctr_starting_cpu();
+
 	if (sbi_pmu_snapshot_available())
 		return pmu_sbi_snapshot_setup(pmu, cpu);
 
@@ -1710,6 +1732,7 @@ static int rvpmu_dying_cpu(unsigned int cpu, struct hlist_node *node)
 
 	/* Disable all counters access for user mode now */
 	csr_write(CSR_SCOUNTEREN, 0x0);
+	riscv_pmu_ctr_dying_cpu();
 
 	if (sbi_pmu_snapshot_available())
 		return pmu_sbi_snapshot_disable();
@@ -1833,6 +1856,29 @@ static void riscv_pmu_destroy(struct riscv_pmu *pmu)
 	cpuhp_state_remove_instance(CPUHP_AP_PERF_RISCV_STARTING, &pmu->node);
 }
 
+static int branch_records_alloc(struct riscv_pmu *pmu)
+{
+	struct branch_records __percpu *tmp_alloc_ptr;
+	struct branch_records *records;
+	struct cpu_hw_events *events;
+	int cpu;
+
+	if (!riscv_pmu_ctr_supported(pmu))
+		return 0;
+
+	tmp_alloc_ptr = alloc_percpu_gfp(struct branch_records, GFP_KERNEL);
+	if (!tmp_alloc_ptr)
+		return -ENOMEM;
+
+	for_each_possible_cpu(cpu) {
+		events = per_cpu_ptr(pmu->hw_events, cpu);
+		records = per_cpu_ptr(tmp_alloc_ptr, cpu);
+		events->branches = records;
+	}
+
+	return 0;
+}
+
 static void rvpmu_event_init(struct perf_event *event)
 {
 	/*
@@ -1845,6 +1891,9 @@ static void rvpmu_event_init(struct perf_event *event)
 		event->hw.flags |= PERF_EVENT_FLAG_USER_ACCESS;
 	else
 		event->hw.flags |= PERF_EVENT_FLAG_LEGACY;
+
+	if (branch_sample_call_stack(event))
+		event->attach_state |= PERF_ATTACH_TASK_DATA;
 }
 
 static void rvpmu_event_mapped(struct perf_event *event, struct mm_struct *mm)
@@ -1992,6 +2041,15 @@ static int rvpmu_device_probe(struct platform_device *pdev)
 		pmu->pmu.attr_groups = riscv_cdeleg_pmu_attr_groups;
 	else
 		pmu->pmu.attr_groups = riscv_sbi_pmu_attr_groups;
+
+	ret = riscv_pmu_ctr_init(pmu);
+	if (ret)
+		goto out_free;
+
+	ret = branch_records_alloc(pmu);
+	if (ret)
+		goto out_ctr_finish;
+
 	pmu->cmask = cmask;
 	pmu->ctr_add = rvpmu_ctr_add;
 	pmu->ctr_del = rvpmu_ctr_del;
@@ -2008,6 +2066,10 @@ static int rvpmu_device_probe(struct platform_device *pdev)
 	pmu->csr_index = rvpmu_csr_index;
 	pmu->sched_task = pmu_sched_task;
 
+	ret = cpuhp_state_add_instance(CPUHP_AP_PERF_RISCV_STARTING, &pmu->node);
+	if (ret)
+		goto out_ctr_finish;
+
 	ret = riscv_pm_pmu_register(pmu);
 	if (ret)
 		goto out_unregister;
@@ -2057,6 +2119,9 @@ static int rvpmu_device_probe(struct platform_device *pdev)
 out_unregister:
 	riscv_pmu_destroy(pmu);
 
+out_ctr_finish:
+	riscv_pmu_ctr_finish(pmu);
+
 out_free:
 	kfree(pmu);
 	return ret;

-- 
2.43.0


