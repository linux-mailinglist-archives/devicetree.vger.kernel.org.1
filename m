Return-Path: <devicetree+bounces-143488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ACDA2A23D
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 478EC7A1588
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0A09230D17;
	Thu,  6 Feb 2025 07:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FRoNQCLD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4B1230997
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826625; cv=none; b=PvaKZQjaQ63N2GbuINEiEQk6zzO/tHphSKTuDwSgKlxqh8EetF6yf/3J0zg/KbrfSq5CvGGWEe6we/wBE8OpU9OujRXTMX1gFZrwv1OaXcwXZ4q0/bAdg84j7/2kYlnmGmAt5RmX8fjwvR2wte9XIQUS++F9x+XVyaHITK+dcls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826625; c=relaxed/simple;
	bh=bauPhqyei9pIckq60+acDhLOvCgCVkJ2prJTWUYShkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C8YKiEa2nQSjfcnWC/nJejpJ2KxqxxhtTawhhic4neawMKa+6xMSnFJ7L+WkwHkQwZQUeTihO6VFFPmyP+afBwroD4JIzuphTO2RbampGb8gfB6XrU019dZsRHQwWYO9JRoZzbhEdpFbbuS0L32lH5Cvd33ZlPlnVRdaZCi6H1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=FRoNQCLD; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2f9ef7a3c3cso1922153a91.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826623; x=1739431423; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mLt3uQ+5mVFCD4CpzivJzFeQzs8sYQp9bQK+aL0eLxQ=;
        b=FRoNQCLDl7hQKV0PAYQPopxyu93tgJQ+aiq8Yj4QGOJy6OfR5/eittKuAFDHIoYl2l
         cWH211hz59ZbZWJ/c5heePDXhd4koF2fuUG5lNehUyAMIZG0IOsMOxGo2vYj2V0brQVG
         DaEw1C+GUViUzz7NT0zrMLeItR44sCQ0g9+vBC+xW+z+qzeUKfELQaP/e9qU12nCtKAN
         cV3/hkQCFmYTjKNaW3JJxwKcClXdiKZzGKbVRehbI6+iAAFqZ3fq504o726ra3ri9RLn
         fFR4eWQtS9tUqGDCeAIYdVTPWSdYNhBY/OiMJIliobxrcNMSvj9knLhKgq9WMaVT5W+C
         v2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826623; x=1739431423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLt3uQ+5mVFCD4CpzivJzFeQzs8sYQp9bQK+aL0eLxQ=;
        b=h1qBMNp/8C+IbnR2HuaTNV15f7YjKx5uwSpqkPCSOy38WAoMi+fEa0pHnvWRFXIciV
         FVevdz2WMB5wXC42JhwMd+rO7I5NQR3/wxaw6+tEIQP3dgNBvnXD+ryS3iZnAWWgiG3n
         eRlRgJagrI3ridTcjH5DIvcBazhz11Qb6NaTIr7tuUb4KDzPryYiU9zSwr3+bAXpBjdh
         aFAIBvd+hJ2UKY57B6o7GITbZw62nxE2w4VH3gICqb3miC/1ZyF34PIaijGixp9u/172
         lAbeyrMLa7AMXk9cBBFG7JO37DqMih8fxS6Xj4uivdqGDbwLnNeXsIa75NZiIPcgeqTu
         t6Hg==
X-Forwarded-Encrypted: i=1; AJvYcCWpt2H1t/LvOEdMLvu+8kN6ti0e79JC+zFzlAWBB8uWlzJwKdm9sHNLcF0QNrGc5LpzIsL1/vkWYuc2@vger.kernel.org
X-Gm-Message-State: AOJu0YzEyytUHdm5mVj505wtcT2RHYaucUGUZcYu8sOPhJsWp8/Oi5vN
	BldRfUf7WwZ9AkFM1uCaN8PLWavrGH5SuWHyvcewWBmvPCIlC+u33rSWJOgU/m4=
X-Gm-Gg: ASbGnctxjTKVo/3+p+p/Udq1MTLmuRooCwV/eWD7r7uHjzI/vZrIIcPq9TOzhDfuSfy
	h9HoN7IOZzav/ru9vMHAraXRWfBRqOZrNbfzRD+jxA56WH+uCLoYDh0x0hfRRqD88n1CKXoYC/K
	TotB1vu8LNlzn3FVyr8OirfuWWEcfPLGV4Er712MF0Ac/bQJpq9A796/U9yjoLhF1RqM9LSq99o
	iZPa/6HLjdsWEbhSzVKKCMSp8qOj4aRN3ICaf/EqSI5Q8H1wqEMA06XAWpaAx6bh5KXRQcGxwC/
	TC6kBzk7L0LRdWMtxGgfTETobmp3
X-Google-Smtp-Source: AGHT+IE+zm5bTYTXugTwpHU711moyOZkgKemcMPApk5i6Nyzgk504/702jQ6OsU4eVbUvVfR2YHglw==
X-Received: by 2002:a17:90b:4fd1:b0:2f9:e730:1601 with SMTP id 98e67ed59e1d1-2f9ff8a1befmr4045975a91.7.1738826623101;
        Wed, 05 Feb 2025 23:23:43 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:42 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:22 -0800
Subject: [PATCH v4 17/21] RISC-V: perf: Add legacy event encodings via
 sysfs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-17-835cfa88e3b1@rivosinc.com>
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
index bbf5bcff51fc..dd4627055e7a 100644
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
2.43.0


