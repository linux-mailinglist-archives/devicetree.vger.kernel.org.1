Return-Path: <devicetree+bounces-141282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244AA203C2
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 691DE18835C3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF8C51F8674;
	Tue, 28 Jan 2025 05:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="uwpmWINs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAB1DC9AD
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040416; cv=none; b=ggId0MpAZfVSuDFsCHHwe5Ao3A6tpqhBm1+32Q0NJymogbYtGJaym4/huax+/Dq5IdZZGF3YlhlwGu3TkC9WnQKLzlfqw4dWQMcH1kGPQFwxvFBbgtuvjWpMMQzLzY1YeZFHBTfeixuAG2yt0osqiFt7PVUng9bl4iPyV+AUOOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040416; c=relaxed/simple;
	bh=ZCYEBVqxpbzQ+9XIJos03qUFz14KllynHzMk3UmVHLQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UnDA17rn8n2pWfy8sNuEo2XneUqrzBbYMEVtXPQDM1FaG2E4GPbdJggqKyTY+rFcPA6GquDgOQa0zugnCK6bw5yDZVJsoPNu9rhBlAhrUnva/B2aMzjzO8dLtGg4l+nqpQjlVTqHLkkHhLG5iovrS0QijDwWmLltG3zQLTvr7Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=uwpmWINs; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2eed82ca5b4so8830849a91.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040414; x=1738645214; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6U8xZqyjao8QAwlfpahdSahI9u3EBcxYiljZLY35B4=;
        b=uwpmWINsAqOD8kk/KDZQLBsrZPimng6Z5OhOrrrmARQ+PNlg9nQHmUY4go1YKFwg3I
         dOghwWOSbR49c1TsV575Lp33M3FjZUyBp6yG8Yw/jvSEDqySfl5oCdU5aXaUxzJScine
         Endnuj4TQXY1jPUWv1NcxRRZBmYGB0yZ67N+hPZ+eYXmShyT2dADFpe5qeORbr657ACN
         OwXX1TgWP7n0CZ/8bOR9AWnOCeEIFe/eGH946COF1Uj0uZN9oHBs7dywDQ+3qmQFK3rU
         uMwinwhlBkFhvoMY6YIHGyB35Az35QTuEiFLwAp8ZZFUvECNgaXfcu1+ziykDIsh7x4z
         qEaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040414; x=1738645214;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6U8xZqyjao8QAwlfpahdSahI9u3EBcxYiljZLY35B4=;
        b=rGibAespigflCxha53bcMCU+VoSF+I8arUN7rXclc3umGV7cdlkjCAUfkubwaG9Tsg
         ueZ8ARk0b1dONvJdQi5qEd7X14eF3ERnJaMAoaY4cuvojmihMpU8g9GedfmjfxaTIiYE
         iN1UcuQ8ISILVSkiW65+h5xL7CT4Ht+fjCASzX1aKFec7My+uAtcU8mLiLDmss+gQcFo
         vLKuxeEs0c/Cy+4ZSIYm5Rci2lsLN0UbVIBB/9fEVqk8eUnxDWDU2auZPE2LzyyPw0vL
         CCDWQAlWVVCyPXsKe7cyC1BYNe+mlr/uqJbNIGFtByywynEajmJyUA1vZHzh14Eg9IcT
         D/iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgtmuYfy5Ue09PVPpRDrn05cHfFup/+s5CFs1enh1hGVKpzGuUe5jAKQ1etQePQbN+uEgfFf3jrq9I@vger.kernel.org
X-Gm-Message-State: AOJu0YyC7a9AxScwwZulxnaEJa7YRKnGN2ed/w71D+/n26q2zqhYGuDT
	jdBkUX7GU/Q4uyaa+6+T9c2tScalAEZXBjUVwrw1n9r7s7BVvtq46ie6LAtAXpA=
X-Gm-Gg: ASbGncsDbVv1CVa+VRbqWDval7kPu72HYk8+NkGOgYFRBoDzxiblzbBZ34O0i73yIma
	zl+CjDYhGcJGAR8NocDA1u3tVL1aAFs2h5fR9F0I/hJ5EHmKMIeR7roGkjKxN5hGLPjwy5YDClU
	rSduKxB6j8uIghYtfy98ZXZbBRRDsiRQ6kncNWpYuRXToJ+20pPkOh7jUM0S7BhM/DFKbuaEF0w
	5ZWuVOp7nawjO4ZCq7xRNU3FuAlrNpAZYU4lx/FAOfgc81hQr0rHdFWZ0ECXuAsxxAmWWwYp4Zw
	VyxleNcwVlnex3owEDDYvljHkZ8/
X-Google-Smtp-Source: AGHT+IFgdohYqccPp8BM6+1NKCY6Ks2M+aFjD71kBC5/Uka5+FjgMiLBaROCKnbBuozTYd+KOO+EXw==
X-Received: by 2002:a17:90b:524b:b0:2ea:3d2e:a0d7 with SMTP id 98e67ed59e1d1-2f782c9846fmr65179131a91.15.1738040413684;
        Mon, 27 Jan 2025 21:00:13 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:13 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:56 -0800
Subject: [PATCH v3 15/21] RISC-V: perf: Skip PMU SBI extension when not
 implemented
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-15-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>, Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

From: Charlie Jenkins <charlie@rivosinc.com>

When the PMU SBI extension is not implemented, sbi_v2_available should
not be set to true. The SBI implementation for counter config matching
and firmware counter read  should also be skipped when the SBI extension
is not implemented.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 drivers/perf/riscv_pmu_dev.c | 49 +++++++++++++++++++++++++-------------------
 1 file changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index e075d0d15221..52d927576c9b 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -410,18 +410,22 @@ static void rvpmu_sbi_check_event(struct sbi_pmu_event_data *edata)
 	}
 }
 
-static void rvpmu_sbi_check_std_events(struct work_struct *work)
+static void rvpmu_check_std_events(struct work_struct *work)
 {
-	for (int i = 0; i < ARRAY_SIZE(pmu_hw_event_map); i++)
-		rvpmu_sbi_check_event(&pmu_hw_event_map[i]);
-
-	for (int i = 0; i < ARRAY_SIZE(pmu_cache_event_map); i++)
-		for (int j = 0; j < ARRAY_SIZE(pmu_cache_event_map[i]); j++)
-			for (int k = 0; k < ARRAY_SIZE(pmu_cache_event_map[i][j]); k++)
-				rvpmu_sbi_check_event(&pmu_cache_event_map[i][j][k]);
+	if (riscv_pmu_sbi_available()) {
+		for (int i = 0; i < ARRAY_SIZE(pmu_hw_event_sbi_map); i++)
+			rvpmu_sbi_check_event(&pmu_hw_event_sbi_map[i]);
+
+		for (int i = 0; i < ARRAY_SIZE(pmu_cache_event_sbi_map); i++)
+			for (int j = 0; j < ARRAY_SIZE(pmu_cache_event_sbi_map[i]); j++)
+				for (int k = 0; k < ARRAY_SIZE(pmu_cache_event_sbi_map[i][j]); k++)
+					rvpmu_sbi_check_event(&pmu_cache_event_sbi_map[i][j][k]);
+	} else {
+		DO_ONCE_LITE_IF(1, pr_err, "Boot time config matching not required for smcdeleg\n");
+	}
 }
 
-static DECLARE_WORK(check_std_events_work, rvpmu_sbi_check_std_events);
+static DECLARE_WORK(check_std_events_work, rvpmu_check_std_events);
 
 static ssize_t rvpmu_format_show(struct device *dev,
 				 struct device_attribute *attr, char *buf)
@@ -549,6 +553,9 @@ static int rvpmu_sbi_ctr_get_idx(struct perf_event *event)
 
 	cflags = rvpmu_sbi_get_filter_flags(event);
 
+	if (!riscv_pmu_sbi_available())
+		return -ENOENT;
+
 	/*
 	 * In legacy mode, we have to force the fixed counters for those events
 	 * but not in the user access mode as we want to use the other counters
@@ -562,10 +569,9 @@ static int rvpmu_sbi_ctr_get_idx(struct perf_event *event)
 			cflags |= SBI_PMU_CFG_FLAG_SKIP_MATCH;
 			ctr_mask = BIT(CSR_INSTRET - CSR_CYCLE);
 		}
-	}
-
-	if (pmu_sbi_is_fw_event(event) && cdeleg_available)
+	} else if (pmu_sbi_is_fw_event(event) && cdeleg_available) {
 		ctr_mask = firmware_cmask;
+	}
 
 	/* retrieve the available counter index */
 #if defined(CONFIG_32BIT)
@@ -871,7 +877,7 @@ static u64 rvpmu_ctr_read(struct perf_event *event)
 		return val;
 	}
 
-	if (pmu_sbi_is_fw_event(event)) {
+	if (pmu_sbi_is_fw_event(event) && riscv_pmu_sbi_available()) {
 		ret = sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_FW_READ,
 				hwc->idx, 0, 0, 0, 0, 0);
 		if (ret.error)
@@ -1524,9 +1530,8 @@ static int rvpmu_event_map(struct perf_event *event, u64 *econfig)
 	config1 = event->attr.config1;
 	if (riscv_pmu_cdeleg_available() && !pmu_sbi_is_fw_event(event))
 		return rvpmu_cdeleg_event_map(event, econfig);
-	} else {
+	else
 		return rvpmu_sbi_event_map(event, econfig);
-	}
 }
 
 static int rvpmu_ctr_get_idx(struct perf_event *event)
@@ -1944,14 +1949,16 @@ static int __init rvpmu_devinit(void)
 	int ret;
 	struct platform_device *pdev;
 
-	if (sbi_spec_version >= sbi_mk_version(0, 3) &&
-	    sbi_probe_extension(SBI_EXT_PMU)) {
-		static_branch_enable(&riscv_pmu_sbi_available);
-		sbi_available = true;
+	if (sbi_probe_extension(SBI_EXT_PMU)) {
+		if (sbi_spec_version >= sbi_mk_version(0, 3)) {
+			static_branch_enable(&riscv_pmu_sbi_available);
+			sbi_available = true;
+		}
+
+		if (sbi_spec_version >= sbi_mk_version(2, 0))
+			sbi_v2_available = true;
 	}
 
-	if (sbi_spec_version >= sbi_mk_version(2, 0))
-		sbi_v2_available = true;
 	/*
 	 * We need all three extensions to be present to access the counters
 	 * in S-mode via Supervisor Counter delegation.

-- 
2.34.1


