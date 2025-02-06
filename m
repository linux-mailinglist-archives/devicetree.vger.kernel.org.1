Return-Path: <devicetree+bounces-143486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09978A2A236
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3606B188394D
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C11C230269;
	Thu,  6 Feb 2025 07:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DwH4BTTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E8722FDF7
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826622; cv=none; b=VAFsC/AmxTjjsMzerNHq1YFFjrlNJTualAd0LJDQdrNXj4d/x4MGH9s7DwnE4i51TgNojIaHo3goBvRanOmBxpUhG5wchMCbG2FKle+7h5hES3nC1cBUMe42WnjZWSXTvysDaOWh8fpzw34VFT/xFk6Vc4qaSe93Iyhk8Mlud6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826622; c=relaxed/simple;
	bh=5pQU73YVC2BHWefCjWg3jVhPGLfz1UhgII0sPsu1PmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FWI3aeOgV7zQlRMmNRus9w7ssMiI8W595Oh5YWxJIc0ZqgCzt0pAgq8EGX9bJTXeZhTe8OuewSbKp/CLZbJPuWoBwx7lF6ejA2zyUSZYyNwdYtlyOy8J4aCCCD9uZu6O2H+nOVlU8yehEQaRmmTEtRm4bTn95eK9g2LxtDoIxig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DwH4BTTT; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2f9cd9601b8so953211a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826620; x=1739431420; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQ1bM+mdYO24XpbpY93Gza0u/hfSg2U52kt5rlPb2uw=;
        b=DwH4BTTTfB97psACzZZLJ4kL41CvAHVcTCNrB6muvDLq6DufiNZl/u9Vf0Pki9GsPs
         mNEbzZ+5x8fk93jAKDn/EZfyfwodGXb/KmUKeWqEOjDbc+1+KLVWkAR5TC1lkc2rkMJG
         /UGFPIMpxzKHlJDgR37tQxGPjj4DFGUeOd9r6roDMRDfZC1Jiv9vspSF8EBBu7bksHFA
         gY4deOt6OVs7s19VlEhkxTRILYyQjGM9W7dbuhGNE7Kc2XCDRqrhoWnMGHYhD85VfbUW
         hu+1gtbO3PZQ6LtteSRbZ17OkHjpxMwZKszdLSVKWAKnj3Q++36DrS8WS5EeigJgp8Xf
         LFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826620; x=1739431420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQ1bM+mdYO24XpbpY93Gza0u/hfSg2U52kt5rlPb2uw=;
        b=ahYUiRLmibaRx5rIky6o7JXtfZKUJ8ExgxJ2JehouNDYFDl1x4xPO/PjWcEFucv+nd
         Qb2/Uppf8Ln4wkf8JkeRx2PpeTnkibaQM68SBE1RAi8Mrx0cCKybzBZ/BFkNjh4FykNE
         RKZSe/CIvlamd7Rszyt2eZg6blqh3rX/+vQmDjNov6I2vvnBzT7b+GIL/zY1fa0bQw6u
         iX7H1YvRuZLy6pV0Qc3o2qi9vleB3n9xpfnTMEwEFeHeTXNFOsSVDf+B2VcJ1bZ65m7f
         TUFgU98ln5DH0T4EU/qLFBKWIyFWJwlrcN22GhmSr4PmTSrwfz0hr5x7jsByUZBS3vdQ
         MLIg==
X-Forwarded-Encrypted: i=1; AJvYcCVfUD/VPlrnKelMWkMgPsfv8Q4B8kQOY9ZRm3wSOs1wOhSsvfMkK6cbtS4mM6eyD7NKdBSqE1RQSg0a@vger.kernel.org
X-Gm-Message-State: AOJu0YzIo3fLksvNTTQ0cotl98XuQrTRy+jSTLJ5xZxrGlxzNonn29Jh
	xHINeYuSqZkOfwwJHRBP2IxI2JzbgihrnyjZZJ4xmabHopvB5zjDhydCb5W+NNY=
X-Gm-Gg: ASbGncvBTXwtU3J8kcf8UV4Fq5weNEF8EeBsLigO1fawUqqeLdF1pMT3ztyS8923Gq5
	3kOdNhm5dJYwNVcnld/VRAviqItcsjICMWHj/P0IiHpjMYhmSlgJtgaJ0NuIGGAfJ00/qqpWVv+
	DUd3Sy2Lg6Ph5u77cHglXO5X4NF4NbPXC43ctyEZAY0XFVj+GlwuD8tdz9YvlLicLzGSwwRfW/y
	Zn1pceDhvhUTv8GSV3fMmYGtPAn+obGmMWeRdWAFMMCLU0oOs/ouXBRcuyQ/SszD3DcQbAprhTu
	0mixDDlP7cc7/IKnBCVVHJNQDbKA
X-Google-Smtp-Source: AGHT+IHr3HVst/0GQEzeOnoyNAyzJUxG9J5qyTanVRpVP7lxbmu+OPESYtyRFZuabnz8KqnI9biZIQ==
X-Received: by 2002:a17:90b:4c43:b0:2ee:fdf3:390d with SMTP id 98e67ed59e1d1-2f9e084fcc0mr8578133a91.31.1738826619909;
        Wed, 05 Feb 2025 23:23:39 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:39 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:20 -0800
Subject: [PATCH v4 15/21] RISC-V: perf: Skip PMU SBI extension when not
 implemented
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-15-835cfa88e3b1@rivosinc.com>
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
In-Reply-To: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
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
 drivers/perf/riscv_pmu_dev.c | 46 ++++++++++++++++++++++++++------------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index 5112049b491c..219f65eb167c 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -410,18 +410,22 @@ static void rvpmu_sbi_check_event(struct sbi_pmu_event_data *edata)
 	}
 }
 
-static void rvpmu_sbi_check_std_events(struct work_struct *work)
+static void rvpmu_check_std_events(struct work_struct *work)
 {
-	for (int i = 0; i < ARRAY_SIZE(pmu_hw_event_sbi_map); i++)
-		rvpmu_sbi_check_event(&pmu_hw_event_sbi_map[i]);
-
-	for (int i = 0; i < ARRAY_SIZE(pmu_cache_event_sbi_map); i++)
-		for (int j = 0; j < ARRAY_SIZE(pmu_cache_event_sbi_map[i]); j++)
-			for (int k = 0; k < ARRAY_SIZE(pmu_cache_event_sbi_map[i][j]); k++)
-				rvpmu_sbi_check_event(&pmu_cache_event_sbi_map[i][j][k]);
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
@@ -1940,14 +1946,16 @@ static int __init rvpmu_devinit(void)
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
2.43.0


