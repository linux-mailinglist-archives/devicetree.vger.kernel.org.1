Return-Path: <devicetree+bounces-141284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8D3A203CC
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5D961887C91
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441681F91C3;
	Tue, 28 Jan 2025 05:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sEDD9pkC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923BD14A62A
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040420; cv=none; b=hgmOm5EZeDkysRTvvTMJseCZKKG3ZTSnoHMWQGi4ri/inH7S5dLLD5abAeo+8b2ipDUeP8bgPiclKS31SDBGlhvtMGjnqmhqlymGkreCUwIR51iHmaJRaH/e726/5589rfjfdfhxxKFu+sQvymeOFJCUvriv4XKcTb/fSja31UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040420; c=relaxed/simple;
	bh=35UkcKfzaQAHaYAm8G2pZxEPgxiTRWZpmKzaOMWvgmo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Syx4nHptmIEdDcT+51Hixkkrip/7OS7nyz0nDAb0vPuhV3EqvNn9HCSaSIaE/zLwsGeCt7J2LqR+2oNKgACM/5DasivGlHNt+EKfPdjNSMzg3KhmGnDw9Yrr9ycoga9VQMxw4D5rnBQXfRTpfLmfUdu0KcNt9KmGjy+FQAdkAMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sEDD9pkC; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2eec9b3a1bbso7177315a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040417; x=1738645217; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QcgV78ON7bQjbj8rz+m5AxTl8xJOToNes7SYHJXciAs=;
        b=sEDD9pkC4pB7F/g/dmJa6hpT05I/mMrNNw0EuZthofTdMtUpyAg3axEpUgYd1G15E+
         rHtckDJQjODVbvJ5msOw8V0JmQfehJnC5jT0uI1H1DNLFZkD8wg+ssWHCMXN33OM0JSx
         D544BcvoVuj1RxHHwfitmH7LNghZ4DaBfwKh2TiLIjqWfp8M5j2EYx76CGJYDY7o3goC
         uG8wO1eVk8z6RC267mjOK0qliN5mpaVsKFT9r51wakbAOtkipYj2bzvbJ5EfAZiw2j7R
         sgqDyIVKkBYKpcyiTAiCNhLVDfp8ikBcrPrBEVl9EIWMjne5KR20VPoViYpSk0jyXlQZ
         5Ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040417; x=1738645217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QcgV78ON7bQjbj8rz+m5AxTl8xJOToNes7SYHJXciAs=;
        b=ucKdWqaR33ENO0MeN+6GeuyhBssDYKMS8szfn2Bg9Usy080IRavR4HNWD+5bL48ik/
         CjIzJctkLON8lHebW5Gb9tygCZ21KNtwEkpfbkDW47VChspRDt0u2VtTePYOR8F7DsXB
         WTsojJfwFrB8bhiCoB1sgOl3e6Zf2ncHDQtKYcMWD6cN2gs6buP3LdO90QD7ozJdjwp/
         b/PFoRjZzPFAqg2I1ysDcEBGOXcMuLuKqrVMuIuCMDXjM3GqCfRsuqHFzruTI5AiUODe
         qJra6njq3ISsuL67+nWCOyTDehYPT0VkzeQicETEhwkabRsKM/q5FUX9PlkyA+C5mv3F
         ghcw==
X-Forwarded-Encrypted: i=1; AJvYcCVleRNbP7Wq6PmRTvNacfPqmhcF1xIcohtET2CMgje1svfGLfORScf2VVDVRpt/KGoK5T/rYYmoeRPI@vger.kernel.org
X-Gm-Message-State: AOJu0YxytrPjWLmJLhMQvAB21mnyK+I8ZHi2Amfp4t3+u5VnBE5JWjLm
	K+GmpCSMpddV43Jn8VvWvyr54cNiNK0oYJzgABhUnySBJWJVZRY6UJC2zyJwA8s=
X-Gm-Gg: ASbGncvtJrcUW1UHHWmqnWyeKNbMfD9r1G9FAiWSIfwxDcBhYYQpJUHfetTqbgmwZdY
	uyrFOeRrYP7kXLSE6z5HkduBsphhcj54bHfpqG0dOd548QVEEAp5fHE4Jq1REmPIAY/j3to3/ul
	9KebxroWpRx1GJwNWdRSM8+YhO1OLCz2vV+UNjOcQ7z32qSlnjXQ1Zf19IFF12fh6mMwcz4ml0C
	5NCH5kXtqB9Z8UtP3DUD3ew/6wyelYclvQV3x1pbu409T7fvNFVfUjrW5q0mYi5M3MkMzke4Rfy
	qCu5qonCdwMJGhwJJC+WXEju1dMc
X-Google-Smtp-Source: AGHT+IGCm7GMS3VNtxEaZyWfkLMPbe+hI7KXpym5HHPhVJQX2ASsOYeeTikT15JA57Prj6Ttz9V96w==
X-Received: by 2002:a17:90b:524b:b0:2ee:a583:e616 with SMTP id 98e67ed59e1d1-2f782c8fd41mr65998400a91.9.1738040416850;
        Mon, 27 Jan 2025 21:00:16 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:16 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:58 -0800
Subject: [PATCH v3 17/21] RISC-V: perf: Add legacy event encodings via
 sysfs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-17-64894d7e16d5@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Define sysfs details for the legacy events so that any tool can
parse these to understand the minimum set of legacy events
supported by the platform. The sysfs entry will describe both event
encoding and corresponding counter map so that an perf event can be
programmed accordingly.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu_dev.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/riscv_pmu_dev.c b/drivers/perf/riscv_pmu_dev.c
index ab84f83df5e1..055011f07759 100644
--- a/drivers/perf/riscv_pmu_dev.c
+++ b/drivers/perf/riscv_pmu_dev.c
@@ -122,7 +122,20 @@ static struct attribute_group riscv_cdeleg_pmu_format_group = {
 	.attrs = riscv_cdeleg_pmu_formats_attr,
 };
 
+#define RVPMU_EVENT_ATTR_RESOLVE(m) #m
+#define RVPMU_EVENT_CMASK_ATTR(_name, _var, config, mask) \
+	PMU_EVENT_ATTR_STRING(_name, rvpmu_event_attr_##_var, \
+			      "event=" RVPMU_EVENT_ATTR_RESOLVE(config) \
+			      ",counterid_mask=" RVPMU_EVENT_ATTR_RESOLVE(mask) "\n")
+
+#define RVPMU_EVENT_ATTR_PTR(name) (&rvpmu_event_attr_##name.attr.attr)
+
+static struct attribute_group riscv_cdeleg_pmu_event_group __ro_after_init = {
+	.name = "events",
+};
+
 static const struct attribute_group *riscv_cdeleg_pmu_attr_groups[] = {
+	&riscv_cdeleg_pmu_event_group,
 	&riscv_cdeleg_pmu_format_group,
 	NULL,
 };
@@ -362,11 +375,14 @@ struct riscv_vendor_pmu_events {
 	const struct riscv_pmu_event *hw_event_map;
 	const struct riscv_pmu_event (*cache_event_map)[PERF_COUNT_HW_CACHE_OP_MAX]
 						       [PERF_COUNT_HW_CACHE_RESULT_MAX];
+	struct attribute **attrs_events;
 };
 
-#define RISCV_VENDOR_PMU_EVENTS(_vendorid, _archid, _implid, _hw_event_map, _cache_event_map) \
+#define RISCV_VENDOR_PMU_EVENTS(_vendorid, _archid, _implid, _hw_event_map, \
+				_cache_event_map, _attrs) \
 	{ .vendorid = _vendorid, .archid = _archid, .implid = _implid, \
-	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map },
+	  .hw_event_map = _hw_event_map, .cache_event_map = _cache_event_map, \
+	  .attrs_events = _attrs },
 
 static struct riscv_vendor_pmu_events pmu_vendor_events_table[] = {
 };
@@ -388,6 +404,8 @@ static void rvpmu_vendor_register_events(void)
 		    pmu_vendor_events_table[i].archid == arch_id) {
 			current_pmu_hw_event_map = pmu_vendor_events_table[i].hw_event_map;
 			current_pmu_cache_event_map = pmu_vendor_events_table[i].cache_event_map;
+			riscv_cdeleg_pmu_event_group.attrs =
+							pmu_vendor_events_table[i].attrs_events;
 			break;
 		}
 	}

-- 
2.34.1


