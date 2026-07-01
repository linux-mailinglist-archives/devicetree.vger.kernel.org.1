Return-Path: <devicetree+bounces-318258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Jt2IJa7URGpU1goAu9opvQ
	(envelope-from <devicetree+bounces-318258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:49:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBCB6EB45C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 10:49:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=HAtekGoX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318258-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318258-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FF99305B727
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 08:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030283F1AA2;
	Wed,  1 Jul 2026 08:48:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149F23F1655
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 08:48:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782895700; cv=none; b=W/9ksmq4NCSkSE745Df06M4RJPPssghPSCYrLJIUOuK2ncXQVvtPQEA8FofQx5sF0uM1KazQzeFWyqFWYq/LpyEbKi5wjZOSLUvb5VxJPOqA4LEgyKurDXLf1I0yTKHVC4VreUE09Ut9Db04W6TW+sXBCZJxMX6QXWigOuATLaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782895700; c=relaxed/simple;
	bh=CrawCWTeE/Q9CTbk39eP0maK8Ji7gPI1W3QcvTx6p2A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d8+EDq0714DqGGwabEOQsd0zOzupbb+JF+FMmfL4pXnlhYD5k9/kOK7KSYsSJJyKKp2SZx3gKOCjquF3zwp4rjYIrCQoCXhxa/3nC5xple0+xmlBbuikkpU7YWuNv8j3MmFI8qo3PkZZw1fJK5wtTGkEeDD0p6b+S5QbQgcBH+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=HAtekGoX; arc=none smtp.client-ip=95.215.58.171
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1782895697;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EtqTOgDlLTl3/J04XYK88Q4DQK5pQiwKnJeyPQRo3/Q=;
	b=HAtekGoXjhlhMx5H1+9v5OlzPy9w6d4f/aM2YI783FKHavo9IdCabyZLfd4Fdnh6XrZu4j
	NPBlB34AZGc1mlpI2kIetNNnmiDgnXY3DKEKwJhXSpuZzvcx2QdYgzpcqfVQRAFd+k6pkv
	CCupG0gGsb34+h2zYqJpR5KNb9PuhNs=
From: Atish Patra <atish.patra@linux.dev>
Date: Wed, 01 Jul 2026 01:47:00 -0700
Subject: [PATCH v8 12/22] RISC-V: perf: Modify the counter discovery
 mechanism
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-counter_delegation-v8-12-7909f863a645@meta.com>
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
In-Reply-To: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
To: Jiri Olsa <jolsa@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
 Anup Patel <anup@brainfault.org>, Namhyung Kim <namhyung@kernel.org>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Atish Patra <atish.patra@linux.dev>, Ian Rogers <irogers@google.com>, 
 Will Deacon <will@kernel.org>, James Clark <james.clark@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-perf-users@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jolsa@kernel.org,m:pjw@kernel.org,m:mark.rutland@arm.com,m:robh@kernel.org,m:anup@brainfault.org,m:namhyung@kernel.org,m:acme@kernel.org,m:krzk+dt@kernel.org,m:atish.patra@linux.dev,m:irogers@google.com,m:will@kernel.org,m:james.clark@linaro.org,m:linux-arm-kernel@lists.infradead.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318258-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:mid,linux.dev:dkim,linux.dev:from_mime,rivosinc.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DBCB6EB45C

From: Atish Patra <atishp@rivosinc.com>

If both counter delegation and SBI PMU is present, the counter
delegation will be used for hardware pmu counters while the SBI PMU
will be used for firmware counters. Thus, the driver has to probe
the counters info via SBI PMU to distinguish the firmware counters.

The hybrid scheme also requires improvements of the informational
logging messages to indicate the user about underlying interface
used for each use case.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu_sbi.c | 139 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 104 insertions(+), 35 deletions(-)

diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
index 74d934238821..c20f1e33c65d 100644
--- a/drivers/perf/riscv_pmu_sbi.c
+++ b/drivers/perf/riscv_pmu_sbi.c
@@ -67,6 +67,20 @@ static bool sbi_v3_available;
 static DEFINE_STATIC_KEY_FALSE(sbi_pmu_snapshot_available);
 #define sbi_pmu_snapshot_available() \
 	static_branch_unlikely(&sbi_pmu_snapshot_available)
+static DEFINE_STATIC_KEY_FALSE(riscv_pmu_sbi_available);
+static DEFINE_STATIC_KEY_FALSE(riscv_pmu_cdeleg_available);
+
+/* Avoid unnecessary code patching in the one time booting path*/
+#define riscv_pmu_cdeleg_available_boot() \
+	static_key_enabled(&riscv_pmu_cdeleg_available)
+#define riscv_pmu_sbi_available_boot() \
+	static_key_enabled(&riscv_pmu_sbi_available)
+
+/* Perform a runtime code patching with static key */
+#define riscv_pmu_cdeleg_available() \
+	static_branch_unlikely(&riscv_pmu_cdeleg_available)
+#define riscv_pmu_sbi_available() \
+		static_branch_likely(&riscv_pmu_sbi_available)
 
 static struct attribute *riscv_arch_formats_attr[] = {
 	&format_attr_event.attr,
@@ -89,7 +103,8 @@ static int sysctl_perf_user_access __read_mostly = SYSCTL_USER_ACCESS;
 
 /*
  * This structure is SBI specific but counter delegation also require counter
- * width, csr mapping. Reuse it for now.
+ * width, csr mapping. Reuse it for now we can have firmware counters for
+ * platfroms with counter delegation support.
  * RISC-V doesn't have heterogeneous harts yet. This need to be part of
  * per_cpu in case of harts with different pmu counters
  */
@@ -101,6 +116,8 @@ static unsigned int riscv_pmu_irq;
 
 /* Cache the available counters in a bitmask */
 static unsigned long cmask;
+/* Cache the available firmware counters in another bitmask */
+static unsigned long firmware_cmask;
 
 static int sbi_pmu_event_find_cache(u64 config);
 struct sbi_pmu_event_data {
@@ -868,34 +885,38 @@ static int rvpmu_sbi_find_num_ctrs(void)
 		return sbi_err_map_linux_errno(ret.error);
 }
 
-static int rvpmu_sbi_get_ctrinfo(int nctr, unsigned long *mask)
+static u32 rvpmu_deleg_find_ctrs(void)
+{
+	/* TODO */
+	return 0;
+}
+
+static int rvpmu_sbi_get_ctrinfo(u32 nsbi_ctr, u32 *num_fw_ctr, u32 *num_hw_ctr)
 {
 	struct sbiret ret;
-	int i, num_hw_ctr = 0, num_fw_ctr = 0;
+	int i;
 	union sbi_pmu_ctr_info cinfo;
 
-	pmu_ctr_list = kzalloc_objs(*pmu_ctr_list, nctr);
-	if (!pmu_ctr_list)
-		return -ENOMEM;
-
-	for (i = 0; i < nctr; i++) {
+	for (i = 0; i < nsbi_ctr; i++) {
 		ret = sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_GET_INFO, i, 0, 0, 0, 0, 0);
 		if (ret.error)
 			/* The logical counter ids are not expected to be contiguous */
 			continue;
 
-		*mask |= BIT(i);
-
 		cinfo.value = ret.value;
-		if (cinfo.type == SBI_PMU_CTR_TYPE_FW)
-			num_fw_ctr++;
-		else
-			num_hw_ctr++;
-		pmu_ctr_list[i].value = cinfo.value;
+		if (cinfo.type == SBI_PMU_CTR_TYPE_FW) {
+			/* Track firmware counters in a different mask */
+			firmware_cmask |= BIT(i);
+			pmu_ctr_list[i].value = cinfo.value;
+			*num_fw_ctr = *num_fw_ctr + 1;
+		} else if (cinfo.type == SBI_PMU_CTR_TYPE_HW &&
+			   !riscv_pmu_cdeleg_available_boot()) {
+			*num_hw_ctr = *num_hw_ctr + 1;
+			cmask |= BIT(i);
+			pmu_ctr_list[i].value = cinfo.value;
+		}
 	}
 
-	pr_info("%d firmware and %d hardware counters\n", num_fw_ctr, num_hw_ctr);
-
 	return 0;
 }
 
@@ -906,7 +927,7 @@ static inline void rvpmu_sbi_stop_all(struct riscv_pmu *pmu)
 	 * which may include counters that are not enabled yet.
 	 */
 	sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_STOP,
-		  0, pmu->cmask, SBI_PMU_STOP_FLAG_RESET, 0, 0, 0);
+		  0, pmu->cmask | firmware_cmask, SBI_PMU_STOP_FLAG_RESET, 0, 0, 0);
 }
 
 static inline void rvpmu_sbi_stop_hw_ctrs(struct riscv_pmu *pmu)
@@ -1159,16 +1180,48 @@ static void rvpmu_ctr_stop(struct perf_event *event, unsigned long flag)
 	/* TODO: Counter delegation implementation */
 }
 
-static int rvpmu_find_num_ctrs(void)
+static int rvpmu_find_ctrs(void)
 {
-	return rvpmu_sbi_find_num_ctrs();
-	/* TODO: Counter delegation implementation */
-}
+	int num_sbi_counters = 0;
+	u32 num_deleg_counters = 0;
+	u32 num_hw_ctr = 0, num_fw_ctr = 0, num_ctr = 0;
+	/*
+	 * We don't know how many firmware counters are available. Just allocate
+	 * for maximum counters the driver can support. The default is 64 anyways.
+	 */
+	pmu_ctr_list = kcalloc(RISCV_MAX_COUNTERS, sizeof(*pmu_ctr_list),
+			       GFP_KERNEL);
+	if (!pmu_ctr_list)
+		return -ENOMEM;
 
-static int rvpmu_get_ctrinfo(int nctr, unsigned long *mask)
-{
-	return rvpmu_sbi_get_ctrinfo(nctr, mask);
-	/* TODO: Counter delegation implementation */
+	if (riscv_pmu_cdeleg_available_boot())
+		num_deleg_counters = rvpmu_deleg_find_ctrs();
+
+	/* This is required for firmware counters even if the above is true */
+	if (riscv_pmu_sbi_available_boot()) {
+		num_sbi_counters = rvpmu_sbi_find_num_ctrs();
+		if (num_sbi_counters < 0) {
+			kfree(pmu_ctr_list);
+			pmu_ctr_list = NULL;
+			return num_sbi_counters;
+		}
+		if (num_sbi_counters > RISCV_MAX_COUNTERS)
+			num_sbi_counters = RISCV_MAX_COUNTERS;
+	}
+
+	/* cache all the information about counters now */
+	if (riscv_pmu_sbi_available_boot())
+		rvpmu_sbi_get_ctrinfo(num_sbi_counters, &num_fw_ctr, &num_hw_ctr);
+
+	if (riscv_pmu_cdeleg_available_boot()) {
+		pr_info("%u firmware and %u hardware counters\n", num_fw_ctr, num_deleg_counters);
+		num_ctr = num_fw_ctr + num_deleg_counters;
+	} else {
+		pr_info("%u firmware and %u hardware counters\n", num_fw_ctr, num_hw_ctr);
+		num_ctr = num_sbi_counters;
+	}
+
+	return num_ctr;
 }
 
 static int rvpmu_event_map(struct perf_event *event, u64 *econfig)
@@ -1478,12 +1531,21 @@ static int rvpmu_device_probe(struct platform_device *pdev)
 	int num_counters;
 	bool irq_requested = false;
 
-	pr_info("SBI PMU extension is available\n");
+	if (riscv_pmu_cdeleg_available_boot()) {
+		pr_info("hpmcounters will use the counter delegation ISA extension\n");
+		if (riscv_pmu_sbi_available_boot())
+			pr_info("Firmware counters will use SBI PMU extension\n");
+		else
+			pr_info("Firmware counters will not be available as SBI PMU extension is not present\n");
+	} else if (riscv_pmu_sbi_available_boot()) {
+		pr_info("Both hpmcounters and firmware counters will use SBI PMU extension\n");
+	}
+
 	pmu = riscv_pmu_alloc();
 	if (!pmu)
 		return -ENOMEM;
 
-	num_counters = rvpmu_find_num_ctrs();
+	num_counters = rvpmu_find_ctrs();
 	if (num_counters < 0) {
 		pr_err("SBI PMU extension doesn't provide any counters\n");
 		goto out_free;
@@ -1495,9 +1557,6 @@ static int rvpmu_device_probe(struct platform_device *pdev)
 		pr_info("SBI returned more than maximum number of counters. Limiting the number of counters to %d\n", num_counters);
 	}
 
-	/* cache all the information about counters now */
-	if (rvpmu_get_ctrinfo(num_counters, &cmask))
-		goto out_free;
 
 	ret = rvpmu_setup_irqs(pmu, pdev);
 	if (ret < 0) {
@@ -1599,13 +1658,23 @@ static int __init rvpmu_devinit(void)
 	int ret;
 	struct platform_device *pdev;
 
-	if (sbi_spec_version < sbi_mk_version(0, 3) ||
-	    !sbi_probe_extension(SBI_EXT_PMU)) {
-		return 0;
-	}
+	if (sbi_spec_version >= sbi_mk_version(0, 3) &&
+	    sbi_probe_extension(SBI_EXT_PMU))
+		static_branch_enable(&riscv_pmu_sbi_available);
 
 	if (sbi_spec_version >= sbi_mk_version(2, 0))
 		sbi_v2_available = true;
+	/*
+	 * We need all three extensions to be present to access the counters
+	 * in S-mode via Supervisor Counter delegation.
+	 */
+	if (riscv_isa_extension_available(NULL, SSCCFG) &&
+	    riscv_isa_extension_available(NULL, SMCDELEG) &&
+	    riscv_isa_extension_available(NULL, SSCSRIND))
+		static_branch_enable(&riscv_pmu_cdeleg_available);
+
+	if (!(riscv_pmu_sbi_available_boot() || riscv_pmu_cdeleg_available_boot()))
+		return 0;
 
 	if (sbi_spec_version >= sbi_mk_version(3, 0))
 		sbi_v3_available = true;

-- 
2.53.0-Meta


