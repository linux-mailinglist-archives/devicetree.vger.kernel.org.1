Return-Path: <devicetree+bounces-143484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA2A2A233
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8AC83A78EA
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF3A22FDE5;
	Thu,  6 Feb 2025 07:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="KXH45sEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAA822F399
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826619; cv=none; b=aj+/RyBFz9dOB+/CZ/PPcLuR1G+o0m5Ek6IrNr+PEhJ7bnStQXBbFUx+3/czesDHxQbD7MatpZ1UKRj8VFB8W72wH+52EiuUYfTUQV8PYGWYHxA4G988Msh+6R93Ekp0/Z59U+dNFzEAMPo3PRbTjFXFbylXzXrbw61uwwZS2nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826619; c=relaxed/simple;
	bh=owUvB8mXQhCMAGqKKjj+GfpILC8p7EgqazERy09roN0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=faylvLE0B+9WZ6rxCswk+qxxxF4/wRPn4d36vvWisEOvqYCZy73TQZ87j0acPChfDyCTDR35RnCzwyAKQy5aQs+vNKGA16ILQc+1EWAmCeoED34xzT/OwFlNww6vfhqZ+DUB1+lGEto8KEfaLLjyRUHHqc0qsjcEhCaP3DBfE6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=KXH45sEb; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2f441791e40so770764a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826616; x=1739431416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LgFNQleQh/rKyQJtr5gK6tFb1jww+ogex5C6sOF/Bv0=;
        b=KXH45sEbUeXUsMtQE6UrKQESzsFsrh4e7yxFg1raXIxTjTVeMKY9VObcGU1Tj0d1Qx
         C8pMu3nvAGJrFgvR1Lr2YPp7ezAD7/rQWTakjrGaRq+HPSiOUF7mUVf7tQwiw9FDsnL5
         Kdk+ldAjnX5lbK6lXsawMvnpgsZcAoKb5CsCns51/14odF4QsgeUAjk9Pn/py3tXhpAf
         T7Tyfco2I4wwNG/NCG/1itTSKbs8yXy2seg3hsL+G4rdijfrc2xlxL5rplGlfGY5BIST
         bBbRRHnOxDprh48ZMB+T4aXf1t5fUhYkIaXs3NBxZI/RLM79lplR5o5JPAcrL9v0sEbg
         7ztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826616; x=1739431416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LgFNQleQh/rKyQJtr5gK6tFb1jww+ogex5C6sOF/Bv0=;
        b=IjTSDcKfrcNXI23QKr1+2pwhILjVCQ1LlHAWb+4/Qv0VoJ6bRELuZ2atlLHCfs/LXz
         Yl9/AiTPRWDG3ThsCHCyajrXBeWOZOybddRIZ/Q6RXl0U1EBpxnjZCTLqp2dg6XEVQqL
         sxlVWaQ2CgHxm8vhvtHmRcct6cufq0A85sh5lhujtgrELoKSVtFE7Fb2BYu6H9G2ZDFM
         hzNiOmiYxCbuO7m1ynxR4De4a6LldCn5tQYzoQhKGPczGGfpY3LeSliBHvPReNyLGP/2
         gZjWunR5mNdjh0G/I/f/M+TBcfeDGI158gfHTyoOxqvl/xr8pa8EgE2WvLURlusvAjEc
         xGMw==
X-Forwarded-Encrypted: i=1; AJvYcCUkb6I3cAs5Fm5yydU2rpZO6DVOJQJqjNQpGqoXyGRvlYtevVZW0K6aWTR+Ygd3rrcY9pWWrpJSoELh@vger.kernel.org
X-Gm-Message-State: AOJu0YwqceT6DxFEDntmeBTKhi+YhGS4V37bS/ankvZgOrhIdIZQsDj+
	Or8q32NSh3bZG9xzdAvuDNQXrwCAU6OEtNeCGXliQizzjX2v2vsB831iO2wrUUg=
X-Gm-Gg: ASbGnctyJON0AX4N2xvUsIxtorcN7uhJnLGupCO1rFJ9LV1nb45bFB1RYSk+RCC8K/c
	5A5du95fRbUSzeoVLHvWbYsTW2XzhccqhDzEmQbzbdPL1GwpXfq70G+ykfHGNXyjnLYB19W9l7j
	ypuv6ZX73n1CJg53C+EkTwxr7SWxnBaikLekFnWrM7KY2x0Cl9+pEZ/ozM1Auja3q5b5uEdfDwP
	tk6Y3huD7c9y5xx7r8CS3dYNYmE6KJQqA284jY9HE5ArcBwKhX9+dUbveoN536QngFoiZevEFYT
	mLdBUfGqJdyppC8J/oQK8qPjgpmo
X-Google-Smtp-Source: AGHT+IHC0uM6MKO6WJlQMIOHrq37adlEkVa8Q/0ld10wE8fTHq/Aau2QSOpqmWEdj7z9+naSpofcKQ==
X-Received: by 2002:a17:90b:2f85:b0:2ee:ab29:1a65 with SMTP id 98e67ed59e1d1-2f9e0753e18mr9830024a91.4.1738826616579;
        Wed, 05 Feb 2025 23:23:36 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:36 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:18 -0800
Subject: [PATCH v4 13/21] RISC-V: perf: Add a mechanism to defined legacy
 event encoding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-13-835cfa88e3b1@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

RISC-V ISA doesn't define any standard event encodings or specify
any event to counter mapping. Thus, event encoding information
and corresponding counter mapping fot those events needs to be
provided in the driver for each vendor.

Add a framework to support that. The individual platform events
will be added later.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu_dev.c   | 51 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/perf/riscv_pmu.h | 13 +++++++++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index 5ddf4924c5b3..2eb58b248c88 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -307,6 +307,56 @@ static struct sbi_pmu_event_data pmu_cache_event_sbi_map[PERF_COUNT_HW_CACHE_MAX
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
@@ -1547,6 +1597,7 @@ static int __init rvpmu_devinit(void)
 	    riscv_isa_extension_available(NULL, SSCSRIND)) {
 		static_branch_enable(&riscv_pmu_cdeleg_available);
 		cdeleg_available = true;
+		rvpmu_vendor_register_events();
 	}
 
 	if (!(sbi_available || cdeleg_available))
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


