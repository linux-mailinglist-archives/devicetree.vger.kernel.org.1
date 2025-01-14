Return-Path: <devicetree+bounces-138598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 817EFA114C6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6623D3A703B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7C022654A;
	Tue, 14 Jan 2025 22:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pAAw75lT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745AA22619F
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895523; cv=none; b=L6kL0e4ZZuWGfEgeieJ7CHDkjRYubyT9O/SmUnzjRCdM8BkRFV865zHbvWIjw5nKC2NMAtTFixdZ67pNqo6szIaU0SvTGJFWfshX1imBkyVNGZH2xWmTmmbhILvCpfd4feyMFZFIhKdnh0urstCGOfaLFX2HExR9XwcP/kjBhE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895523; c=relaxed/simple;
	bh=D26Mz7N1pZVpB7ZSRh7CV+vm7XrT3DFpbyMeC4eMdE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YoIgylAVO2emUHl8BSeigoZhOPElF9im+zfX8pUa1R/HTdVek4WawPifwElUxgYIG4QIfaJx+l6x6aAAUHIjBK5IpLDvcY17cBXYws+Jf+oa7rKWO6K2+SuhWvvXvMPsT3yWChVv/zzJBBMV3zBSrw9h1Qi7360w1ZEWjjNeQNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pAAw75lT; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2163b0c09afso111545255ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895521; x=1737500321; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xSrHfq1ODaepQOo+hHypeE7yxwo5oeqvpXeWUiwKXOQ=;
        b=pAAw75lTYphMOK1JXNYS7Ah4Y5mOm1qI+llUkBpnlVnOlXCTiFUECrvuMG050sam0n
         AS76uLhQBpimnzjCHm438hBtpWPj8uPbvMQ85GR+K7sQ0mOLe9XEN4NJl6cZvMnM8hhE
         UGTxWUsUy8X6d8WgLX7zm8i9e0dBMDffSqysCps3G+kdPCijY+DSUUs+7l84zcNgBvw+
         icngQ2dpMw/AZC1Asm58VGRxah0yCL73KUrjt8bcwh8+5XfPv5X9l87D+g4WczTMWa0V
         EhatGzqdw0108el2+/zmJirFfwjoU8TAPZKto56yozXh8Mc9m2bEFF5sRpaUwSL7USN3
         12Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895521; x=1737500321;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xSrHfq1ODaepQOo+hHypeE7yxwo5oeqvpXeWUiwKXOQ=;
        b=ui0y8nIMLYMwwVQFkPCRqnR1IXLIhDg+HRtbDTfA9N7XQ49VMmYNBZG0AvDjZTcvOe
         rbFC3uDLjcAq36/m30mqElkfUfGHjhoUz9lFpQy8aQWpqv2Tzl4iJ2TSkZeb6d8wy4V/
         GsH1uK9lDvyeQDnr7XKZNrCSlhWYbAZnclfZ1+ZZZJtGzZyiXPzN0cFgba73pr21FwMG
         wjBg1wYm1lWuxm5z/SITGQ99MKrEWyjmSyoWnR0t54EsJtmYN2lKQkvjtRoI0hfkCnA4
         djZYRespUpdISdSKjGoTscRbb2Qp83XMy/XYDTghZDwLB+X7SYK39iQl6WhfDx84hxGT
         EvQw==
X-Forwarded-Encrypted: i=1; AJvYcCWDssIEpARh5o20ynBKlH9v4duc9k+z5a+JBoFQUWiBbzhcKy2Rdd/tFr2HpnP9IpOaS4IHIxE+mgLO@vger.kernel.org
X-Gm-Message-State: AOJu0YzXpLa0Ygl/jRL2V/ldBasaccBNlA+4/E79ETIi2GtPtxiac2tc
	465pxOAp2P/++PRPxgRiqNhSzP90Tmb6OH4yeY840XkA5/zzZNAAZ81nkYlGv8M=
X-Gm-Gg: ASbGncs+NsqyvsyA4fJn9LjnZas5w4BVyQ+J+aHozelG1zq7IwK8NXhSh7cnGM5zAYn
	s7GCJUEqtAwpFLjLrt/8JJn1TwqMll/dGZpA2BvaLSGTAIEErQNv5+2QvRZgtgP5cJS/uuTGqL7
	MI0Vg3oQpkvr4TBaq8v42cVUVVLSVm7zQyisNw2buM0VKQPlhlGHD2n0SE0ful7gQ2TuxUzGTrS
	i8VA7Pk8GaoWDVKU34ngNAulKWabjD6e0+Q1EnOj0r4QLx/Y3tpxoDNXMbAwmnTezaCjg==
X-Google-Smtp-Source: AGHT+IGRbE9PP4sSJth3Mz+63UAwD8egHvRzP0t3VjOdXACcY1KJUtRtoWF3ulON7ndSDCLW6GT5WA==
X-Received: by 2002:a17:902:ec82:b0:216:2dc5:2310 with SMTP id d9443c01a7336-21a83fcf8bcmr435627195ad.48.1736895520852;
        Tue, 14 Jan 2025 14:58:40 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:40 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:38 -0800
Subject: [PATCH v2 13/21] RISC-V: perf: Add a mechanism to defined legacy
 event encoding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-13-8ba74cdb851b@rivosinc.com>
References: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
In-Reply-To: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, Atish Patra <atishp@rivosinc.com>
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
index c7adda948b5d..7742eb6d1ed2 100644
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
2.34.1


