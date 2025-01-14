Return-Path: <devicetree+bounces-138603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 842DEA114D5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C376163B7A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD1921D5A6;
	Tue, 14 Jan 2025 22:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mRpHszRX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B012422836E
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895532; cv=none; b=q4X+7jW3ait2e+Ha7UH32lFCVTLpYisHEfU1G17IXsW0BFIbE4Z4OkSRe+VNil81+8qLA3PPvL9qs0BJd9RWjJXfRvkPgf+6Juwx4kJjrcwEfL8Jmho6lUZvMFYArVYiIP7/I5tS/P1rDKxIC4sLI63+SD/BZ9AkFTOSNAiACw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895532; c=relaxed/simple;
	bh=KX+c6OZLcoeS98RkAUKLotKTlJrHqY7en1pLAwLRhK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mDYmodA8qpVIiagGazWkLk3h/cuzSgZ7rOv946a4Mmz5p+ahmNcBNP6zOVtoLGOk8cxdMB7oh3slo1b2Yz6Z/SP9uyXfvyGs/SwSK5hgSI8hNn2MkfyiWdoZzmcbYA75IFdVAnCywY1IfFyFMQkMT7jKcVszMZ6SQ5jsPxq+HeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mRpHszRX; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2161eb94cceso74722775ad.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895530; x=1737500330; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qntZYbhhaPOyc0opQ/xzbCXT2UPDrjgDrjtXnzGv1Lc=;
        b=mRpHszRX6ik/dBvFnqOgfexdZuIsP3u9Y4NIjN1p5e8ujRPU59C/lNHIgHqxrP+eA+
         jIU9a7ITmY46zrhBLYlYqhYKWYD/pjktFnLHFjpx3GGDK+vuLsAvOIUdyUIQNQtmKDqb
         IiAZDKi6gZiemqdf+cOk8DB8Fyl53wov3wkzwECVnIJPsrSfllEdV0XIKeLNcO52B/hn
         T/gV1o6ElybcHx9U1KWDpbPkUoxLora92bCoC3mfalgFqGCx0UFLbIETkmtjF7KO7+UF
         bG9084XOX1dAJwElF/ZBhg5guNP5em/sgu5tnnhGRaAS41ldsh6zD3v3DdkLX9d4C8KG
         SWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895530; x=1737500330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qntZYbhhaPOyc0opQ/xzbCXT2UPDrjgDrjtXnzGv1Lc=;
        b=Qp+UMsI/rBDbLcPV4/6UkXkvUkZFhgt+uLeUhrVJEvdVf5vPvKmLKtPdd45rhu+ugE
         4m0TwkKaf+W+HJv531D83RdXmB8Vh1rqd72j+jlrEImWeO7iqsPa/9NoWM5MIjas+tjH
         EcPl5J+IaYFCN/Eq+h4+utmzstSbS+Eg7WQnNfFp6UeoU5fQSmUwGM87qX337TmpFjOx
         J+X5VAkIpQGFxkaT0o/RPbdeHZ1ZEndlDaZnzt7aJOeh56OzO7gXaeW+OftB3zlxPobG
         j8y4CJg24m7DORBFMeVu8TXsNrUKGaGc3kDX4vxawPCEm3187UmzN6/czAvvt4dPixRd
         /cIg==
X-Forwarded-Encrypted: i=1; AJvYcCVJ6SVti0Q0w0dbh1eHMfQ/CSgix52oOYrbUxkAPWHLq8Sxky2mQSYnAk1H140puJx3oTz4ik+h4hAN@vger.kernel.org
X-Gm-Message-State: AOJu0YxSY1Y5eGScyS/4TrbBaIWid9fUWABSp9OrLCbkv2vIpbINxZ1W
	cYbQS2yRTh/6TrlC/Ei2+f3vy1s5g/tHrDAhJZvgv9cF06lq+AIg+hmp9lYA0B4=
X-Gm-Gg: ASbGncssjzvjB9lPx8TioL9929dVdiZ/Hht/kjdMAxw5zyGGxqpfSfHhKKM7bxT/1W+
	EDKxmpqOz4MWgGROHVd+Qp44jjMDdPh9wJ8e5ICGoxxmFq8itMcsoA/0P5ZzizBByXLk4lJSspf
	WeDkx+tnWxKzG0ra+HVWEGAyKfTHGUoU6wtVhQ3gQ+icK6b3z4ZoJbdwijyNMdDDHwMKOSxJGAz
	dS4G0QwAmPubHXrRciKW2TEBw1ZFS7wzjVEdvyvd2QEr2Lgd/Y3khZ9I83a139/NkFPBQ==
X-Google-Smtp-Source: AGHT+IGvBxZa4fPYf8i5v/l3b33jLbUOvTwVMUDT5oDU8+c/I1Eb7QvrJXcdFBnuK94wX8xRhTTgmw==
X-Received: by 2002:a17:902:ecc5:b0:216:45eb:5e4d with SMTP id d9443c01a7336-21a83f4b29dmr369677175ad.6.1736895529901;
        Tue, 14 Jan 2025 14:58:49 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:49 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:43 -0800
Subject: [PATCH v2 18/21] RISC-V: perf: Add Qemu virt machine events
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-18-8ba74cdb851b@rivosinc.com>
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

Qemu virt machine supports a very minimal set of legacy perf events.
Add them to the vendor table so that users can use them when
counter delegation is enabled.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/vendorid_list.h |  4 ++++
 drivers/perf/riscv_pmu_dev.c           | 36 ++++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
index 2f2bb0c84f9a..ef22b03552bc 100644
--- a/arch/riscv/include/asm/vendorid_list.h
+++ b/arch/riscv/include/asm/vendorid_list.h
@@ -9,4 +9,8 @@
 #define SIFIVE_VENDOR_ID	0x489
 #define THEAD_VENDOR_ID		0x5b7
 
+#define QEMU_VIRT_VENDOR_ID		0x000
+#define QEMU_VIRT_IMPL_ID		0x000
+#define QEMU_VIRT_ARCH_ID		0x000
+
 #endif
diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index 8c5598253af0..d28d60abaaf2 100644
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
@@ -384,7 +385,42 @@ struct riscv_vendor_pmu_events {
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
2.34.1


