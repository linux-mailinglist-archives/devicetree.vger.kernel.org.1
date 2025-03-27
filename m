Return-Path: <devicetree+bounces-161403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA17A73ECA
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B4C217DBA4
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6984C230BDB;
	Thu, 27 Mar 2025 19:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nWABESY1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED98D22F17B
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104196; cv=none; b=Sjv3zG57QFlatsNXSvgtcm1F2hCCpxECD7O+VkK/cZxO4SVfTf4pskjypHMk9iv02QW3RIelhm6BetiqEC/MPBYp4M4aQRDyNPuNpPdmwS5PRnowhW6c87isXp6ftCTgBU0eZ4MHVSNXAWgKKTlj9V1zCEi8r9k1NLndJ8qBGoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104196; c=relaxed/simple;
	bh=TY7VQ++DwDbKc+KgTEzmpo1NkCW47TSYjNk6GHcmkGo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ucoOXuXaj+krPS1SKs6y7hcWpKLE/CAOehjuaj2VnwWGPH3u/JEKzpyHAmSfrhwFrGm5xqUyDEWvZZfCsLgy7eqhrQ/ufyozDLCmUFXgqie87jjEpR69cZDk610GCsHglh3WMxkLSI1MpFNOGzSFInfU6VLj7W537SND55Xk0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nWABESY1; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3011737dda0so1785091a91.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1743104193; x=1743708993; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+uGGyRkYKjdJ+vw9b2EYMQ7VNOlGqoQjZ03lOaE3eUo=;
        b=nWABESY1/F0b6kkpU63oTSQHkgVy/pV/L7wbB3M9pCd0Um5dmBBkF0LG0O2/lE0UHm
         DJ8wfWSx/ZNCHUuFsMFxtqKOoeWShT5GyQkb5IssYkrOH38pEhG6fijSQQjPZhtdiN4L
         mHyp5VWdH9GCZKypDJFpHCQc7LkcT/pGE8s5dNm8OruNHf+0C1tcX1IDHBKdRKewgquB
         T0Kq5dkxi98BSKp7vq2YfrOLsD38+FXRSsYJ/7kU3/1vDXSstXnFiZUjwjH5ci2x7kR2
         xJOSeTQ5MgGSp//jG4AW/uLY7+TpcAzB9C4jqTz2cuRA7a61Zd6LEp5V9651xpjElzXx
         Qwwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104193; x=1743708993;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+uGGyRkYKjdJ+vw9b2EYMQ7VNOlGqoQjZ03lOaE3eUo=;
        b=WAIv5P2nV6WmYRnTe8Qj8SvZV1ipETQnXhtcEX/VSSqTiKqa/ZVV/TQHbVgvrremyQ
         noDHvwtipOWBiAGqzUCog40h5mqrFIIbofjr4VDj4ubUHilHFKSNiLBWN8u7mTtVTf0o
         yIUZ2FUDybmInMRcDxUABLKfuOvyud07ebtVDfRpMXETQxMC+e4XuzDjB/9PCPKq589+
         FBRh0w54+JYaMDRT4AlrFw1EI+BLpWCOEcaz84HDnERYHR/pOAdAbu9ipBRA/94ynwMe
         qA9nMR388+9aTXfdi8tLLcNgtavWQ7EW+HzvDDVxrAzKrfxDbNtP7yEc9Ytrm6HSVeni
         qIcg==
X-Forwarded-Encrypted: i=1; AJvYcCWYeJt2H4Oo3pdXk5NpNeoel7s/iKfnbd1cNYvSjJTJyoj4VkKDmeqXRQts7MykYJO5+9MM3fzPfTN0@vger.kernel.org
X-Gm-Message-State: AOJu0YxBHqKmu0eoEVAmmhVxrnvw1Czri/EY2sopnkmtkSwDqhp3yFkP
	kHwj555cUUQqRZFEVlb6nUfsoW/lj03b6LgIWMKCJZxkbGI0x6JtyDSVMUEC7j8=
X-Gm-Gg: ASbGnctLdwEwkHlkfSULgo8aG9MKrl+KOa4Vf9HlrQeKfcZl3Oo0aF6F+hxUzrA/dAg
	O01OC5bsS+t0kzN0fuq1gMO331Jriu+ExRsTQgRUUdGDukJwUj2vZSJHgjcNZeD4HIIhS8q1kq1
	oY1t3y8d5RC1XB6Nsms52yCUp+uxU621tkrJLwrCvrmpiMT7rC37dDtagucDCZ7iX0VEwU0sU2F
	XkMkYZn6B8Rg1x2eaw2SV3zkyvsljkrC9vSVNmA0tZrbLL3QEbwRCWw+3PJ+VVAfMDHxEfSmjjF
	34UKDa2TM0F8ZRetmqP8s3T74Ggf7FSHxzJGAGDzgqBsPAlFuf0ZhJU8kw==
X-Google-Smtp-Source: AGHT+IENDTi2wmd5guSAtbCl7ZVpJGH3loOpoV0kcjkWU+S0QZ+aC84U+Dd29pEp73mrXKIMPYoAPg==
X-Received: by 2002:a17:90b:2d46:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-303a6c35c4dmr8832996a91.0.1743104193005;
        Thu, 27 Mar 2025 12:36:33 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f6b638csm2624220a91.44.2025.03.27.12.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:36:32 -0700 (PDT)
From: Atish Patra <atishp@rivosinc.com>
Date: Thu, 27 Mar 2025 12:35:54 -0700
Subject: [PATCH v5 13/21] RISC-V: perf: Add a mechanism to defined legacy
 event encoding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-counter_delegation-v5-13-1ee538468d1b@rivosinc.com>
References: <20250327-counter_delegation-v5-0-1ee538468d1b@rivosinc.com>
In-Reply-To: <20250327-counter_delegation-v5-0-1ee538468d1b@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-42535

RISC-V ISA doesn't define any standard event encodings or specify
any event to counter mapping. Thus, event encoding information
and corresponding counter mapping fot those events needs to be
provided in the driver for each vendor.

Add a framework to support that. The individual platform events
will be added later.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu_dev.c   | 54 +++++++++++++++++++++++++++++++++++++++++-
 include/linux/perf/riscv_pmu.h | 13 ++++++++++
 2 files changed, 66 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index c0397bd68b91..6f64404a6e3d 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -317,6 +317,56 @@ static struct sbi_pmu_event_data pmu_cache_event_sbi_map[PERF_COUNT_HW_CACHE_MAX
 	},
 };
 
+/*
+ * Vendor specific PMU events.
+ */
+struct riscv_pmu_event {
+	u64 event_id;
+	u32 counter_mask;
+};
+
+struct riscv_vendor_pmu_events {
+	unsigned long vendorid;
+	unsigned long archid;
+	unsigned long implid;
+	const struct riscv_pmu_event *hw_event_map;
+	const struct riscv_pmu_event (*cache_event_map)[PERF_COUNT_HW_CACHE_OP_MAX]
+						       [PERF_COUNT_HW_CACHE_RESULT_MAX];
+};
+
+#define RISCV_VENDOR_PMU_EVENTS(_vendorid, _archid, _implid, _hw_event_map, _cache_event_map) \
+	{ .vendorid = _vendorid, .archid = _archid, .implid = _implid, \
+	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map },
+
+static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
+};
+
+const struct riscv_pmu_event *current_pmu_hw_event_map;
+const struct riscv_pmu_event (*current_pmu_cache_event_map)[PERF_COUNT_HW_CACHE_OP_MAX]
+							   [PERF_COUNT_HW_CACHE_RESULT_MAX];
+
+static void rvpmu_vendor_register_events(void)
+{
+	int cpu = raw_smp_processor_id();
+	unsigned long vendor_id = riscv_cached_mvendorid(cpu);
+	unsigned long impl_id = riscv_cached_mimpid(cpu);
+	unsigned long arch_id = riscv_cached_marchid(cpu);
+
+	for (int i = 0; i < ARRAY_SIZE(pmu_vendor_events_table); i++) {
+		if (pmu_vendor_events_table[i].vendorid == vendor_id &&
+		    pmu_vendor_events_table[i].implid == impl_id &&
+		    pmu_vendor_events_table[i].archid == arch_id) {
+			current_pmu_hw_event_map = pmu_vendor_events_table[i].hw_event_map;
+			current_pmu_cache_event_map = pmu_vendor_events_table[i].cache_event_map;
+			break;
+		}
+	}
+
+	if (!current_pmu_hw_event_map || !current_pmu_cache_event_map) {
+		pr_info("No default PMU events found\n");
+	}
+}
+
 static void rvpmu_sbi_check_event(struct sbi_pmu_event_data *edata)
 {
 	struct sbiret ret;
@@ -1552,8 +1602,10 @@ static int __init rvpmu_devinit(void)
 	 */
 	if (riscv_isa_extension_available(NULL, SSCCFG) &&
 	    riscv_isa_extension_available(NULL, SMCDELEG) &&
-	    riscv_isa_extension_available(NULL, SSCSRIND))
+	    riscv_isa_extension_available(NULL, SSCSRIND)) {
 		static_branch_enable(&riscv_pmu_cdeleg_available);
+		rvpmu_vendor_register_events();
+	}
 
 	if (!(riscv_pmu_sbi_available_boot() || riscv_pmu_cdeleg_available_boot()))
 		return 0;
diff --git a/include/linux/perf/riscv_pmu.h b/include/linux/perf/riscv_pmu.h
index 525acd6d96d0..a3e1fdd5084a 100644
--- a/include/linux/perf/riscv_pmu.h
+++ b/include/linux/perf/riscv_pmu.h
@@ -28,6 +28,19 @@
 
 #define RISCV_PMU_CONFIG1_GUEST_EVENTS 0x1
 
+#define HW_OP_UNSUPPORTED		0xFFFF
+#define CACHE_OP_UNSUPPORTED		0xFFFF
+
+#define PERF_MAP_ALL_UNSUPPORTED					\
+	[0 ... PERF_COUNT_HW_MAX - 1] = {HW_OP_UNSUPPORTED, 0x0}
+
+#define PERF_CACHE_MAP_ALL_UNSUPPORTED					\
+[0 ... C(MAX) - 1] = {							\
+	[0 ... C(OP_MAX) - 1] = {					\
+		[0 ... C(RESULT_MAX) - 1] = {CACHE_OP_UNSUPPORTED, 0x0}	\
+	},								\
+}
+
 struct cpu_hw_events {
 	/* currently enabled events */
 	int			n_events;

-- 
2.43.0


