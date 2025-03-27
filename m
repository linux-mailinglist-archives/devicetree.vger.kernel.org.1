Return-Path: <devicetree+bounces-161408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A69A4A73EE2
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D40733BF1C5
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA959235BE4;
	Thu, 27 Mar 2025 19:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="cJ/kO0gA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E04623534F
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104204; cv=none; b=ui4jzJAwlUAimQscflsRXD0RI5TCIiamTo+GP9dD+615Hg6UWgLEyuTeDVXV/bQwo47krBEnghwz6jXb0tom4AGoXxJupMgQ+wTTkkJfKRU7RxGKbJqCKjxOkrUpXrlnEn95Chp3nXGIJCRb3FQ1H2qWIFJ2AMWzXH1GxtR5o8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104204; c=relaxed/simple;
	bh=auE616haf3BtwIVYBeV0AcKnHT3Mx+z984kGPzp89Eg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TVIH+NWd10zvYOV/Q9BdKEYt+CmBykANZGcZ6NZ12scOHOT3MQirQkAvqX6TdZkM5MC4VuEtslN1QUo0cRHcSWoVHygcvsTJZiBSt/zje11tu7VJSoVXztoWnKVOZXi6ikw0zwQ4dyyopzxBnQ8+/nOToe+0dnb9X103EiH45L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=cJ/kO0gA; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2ff85fec403so5156711a91.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1743104201; x=1743709001; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKAfCqQ7Qjy4MJYkAdCHV9zfU4kl+sMGOwwGVOQa3Ms=;
        b=cJ/kO0gAi7z7HWIG7rx7grjO6H/Gh9NbN5D+9TGxlsb+3ib1284fXRG92JKLrMtonO
         E/VWMpx46kllUvnoIdyMQTvHC/1OpAK26DFzSZ4uufcnfuOHsKp9irDNFH0LXwzZAv22
         JkB2BdoW8mLb+Y4G2sXD3ksFWbuY8utEYPjwQaqEEsdbRWVmG9v5ypS2jCGm0f0kCbaO
         zSoVt0tTOX2JHh0qQTek1GVLrMZa0jLPKjprW14/6Bs2r2fw6p9iTk/69JyQYi87fc/Q
         qnZbJcksN+ppX2Jaj2E24mw8g6lWG4MoXTPIhYjD0A4vtMAvc6Zc9DIQjKvxIX5liPtF
         fJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104201; x=1743709001;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nKAfCqQ7Qjy4MJYkAdCHV9zfU4kl+sMGOwwGVOQa3Ms=;
        b=Sf5QuIB98/gaf3t3OkrigNmTMQkRHyNIOIcFu2jApibGYlKT6EhQTxowu19gkT28Zv
         JFgMFa85Pzel3rhsTWV7nGU/kSi3zfpmAY/TIwjFngX5HcZJCiLpiwymrmdFVcwpKzVn
         TpLg4SaqqfK2a8mgH7GZoVTj0cq7lqLI59PtNj5zMc+Zk0xGT2KczZYhl1XX5PIU3tHw
         GPVpCkFTHQXCjpMs5aXshoRDQfC30HBlKJ3hpgNKF3cPnmO4fUOVMr7BeGXL5vBhpoOM
         lXhnLfIqae2vYiv7losJqfQIS1ojPCHWELJOqgSZiw45SmzTbfrBtt3SXlByQBdR9sac
         Ycyw==
X-Forwarded-Encrypted: i=1; AJvYcCWPtMsA3OJ+tVYGEaJrwetRRHhKFkm6vmiRBU00TekGwMhTnIPARtIgUJzy70wiH3qeenCyMnp+2eLt@vger.kernel.org
X-Gm-Message-State: AOJu0YyOBpm+or1eIBBIDHV7uA5rzN0LyyTKnLxb2Uj3YMUjP4a7OIBY
	mJ7Kr3vqhzdWtH9gdMlgLaDM15kjBxqa/jjPM+4rnpH4QvsihU3KQ8SDyg8k19w=
X-Gm-Gg: ASbGncuvVDisHbjPvRQvxrgu5QWWbd/8/hBYgWLh8Eg9tbvvkEJQhMaSEI8ZlYDL0Pg
	5855IzTng7yA61LujjjZP5pcFgI4DjkH23lOQ6qWSmZSzLdQsEy+aiTq+gMeB0cQqWxFqlwiNTm
	toZ0yBYgLIyq84ADcT8e/FxWPiCjsBEb7v2iNehJ8fwttyY0QV5z8VyQzkpnFxU7LT8nYiSFtgR
	g5B/4nPcj0+wyMokYDZs6beqdnHQqVUDooP51jao7FYFmgjlDVRmmlIj6mAd0kAcMDXiHP1d1da
	Gr5JnhVogLMdFkl6LyINz7Sz5KH+OVfQPWBqPIJVnbRcxWbrL8n+ccvheA==
X-Google-Smtp-Source: AGHT+IHMf2f5UBv5DVE142wh0oBPFx9moUIGj7INCFxWN59jTOUXk2pfw5aEvm/YJFqWLspysjUW3w==
X-Received: by 2002:a17:90a:dfc7:b0:2fa:42f3:e3e4 with SMTP id 98e67ed59e1d1-3051c85e607mr159363a91.3.1743104201222;
        Thu, 27 Mar 2025 12:36:41 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f6b638csm2624220a91.44.2025.03.27.12.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:36:40 -0700 (PDT)
From: Atish Patra <atishp@rivosinc.com>
Date: Thu, 27 Mar 2025 12:35:59 -0700
Subject: [PATCH v5 18/21] RISC-V: perf: Add Qemu virt machine events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-counter_delegation-v5-18-1ee538468d1b@rivosinc.com>
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

Qemu virt machine supports a very minimal set of legacy perf events.
Add them to the vendor table so that users can use them when
counter delegation is enabled.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/vendorid_list.h |  4 ++++
 drivers/perf/riscv_pmu_dev.c           | 36 ++++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
index a5150cdf34d8..0eefc844923e 100644
--- a/arch/riscv/include/asm/vendorid_list.h
+++ b/arch/riscv/include/asm/vendorid_list.h
@@ -10,4 +10,8 @@
 #define SIFIVE_VENDOR_ID	0x489
 #define THEAD_VENDOR_ID		0x5b7
 
+#define QEMU_VIRT_VENDOR_ID		0x000
+#define QEMU_VIRT_IMPL_ID		0x000
+#define QEMU_VIRT_ARCH_ID		0x000
+
 #endif
diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index 8a079949e3a4..cd2ac4cf34f1 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -26,6 +26,7 @@
 #include <asm/sbi.h>
 #include <asm/cpufeature.h>
 #include <asm/vendor_extensions.h>
+#include <asm/vendorid_list.h>
 #include <asm/vendor_extensions/andes.h>
 #include <asm/hwcap.h>
 #include <asm/csr_ind.h>
@@ -391,7 +392,42 @@ struct riscv_vendor_pmu_events {
 	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map, \
 	  .attrs_events = _attrs },
 
+/* QEMU virt PMU events */
+static const struct riscv_pmu_event qemu_virt_hw_event_map[PERF_COUNT_HW_MAX] = {
+	PERF_MAP_ALL_UNSUPPORTED,
+	[PERF_COUNT_HW_CPU_CYCLES]		= {0x01, 0xFFFFFFF8},
+	[PERF_COUNT_HW_INSTRUCTIONS]		= {0x02, 0xFFFFFFF8}
+};
+
+static const struct riscv_pmu_event qemu_virt_cache_event_map[PERF_COUNT_HW_CACHE_MAX]
+						[PERF_COUNT_HW_CACHE_OP_MAX]
+						[PERF_COUNT_HW_CACHE_RESULT_MAX] = {
+	PERF_CACHE_MAP_ALL_UNSUPPORTED,
+	[C(DTLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10019, 0xFFFFFFF8},
+	[C(DTLB)][C(OP_WRITE)][C(RESULT_MISS)]	= {0x1001B, 0xFFFFFFF8},
+
+	[C(ITLB)][C(OP_READ)][C(RESULT_MISS)]	= {0x10021, 0xFFFFFFF8},
+};
+
+RVPMU_EVENT_CMASK_ATTR(cycles, cycles, 0x01, 0xFFFFFFF8);
+RVPMU_EVENT_CMASK_ATTR(instructions, instructions, 0x02, 0xFFFFFFF8);
+RVPMU_EVENT_CMASK_ATTR(dTLB-load-misses, dTLB_load_miss, 0x10019, 0xFFFFFFF8);
+RVPMU_EVENT_CMASK_ATTR(dTLB-store-misses, dTLB_store_miss, 0x1001B, 0xFFFFFFF8);
+RVPMU_EVENT_CMASK_ATTR(iTLB-load-misses, iTLB_load_miss, 0x10021, 0xFFFFFFF8);
+
+static struct attribute *qemu_virt_event_group[] = {
+	RVPMU_EVENT_ATTR_PTR(cycles),
+	RVPMU_EVENT_ATTR_PTR(instructions),
+	RVPMU_EVENT_ATTR_PTR(dTLB_load_miss),
+	RVPMU_EVENT_ATTR_PTR(dTLB_store_miss),
+	RVPMU_EVENT_ATTR_PTR(iTLB_load_miss),
+	NULL,
+};
+
 static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
+	RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, QEMU_VIRT_IMPL_ID,
+				qemu_virt_hw_event_map, qemu_virt_cache_event_map,
+				qemu_virt_event_group)
 };
 
 const struct riscv_pmu_event *current_pmu_hw_event_map;

-- 
2.43.0


