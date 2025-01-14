Return-Path: <devicetree+bounces-138592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E82A114A8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAEB9188294A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E72B2253E9;
	Tue, 14 Jan 2025 22:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sz2J17J9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE5C2248BF
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895512; cv=none; b=KwSsvc4m9dt0QCGep0gX/AVatKU6s/0NOgZaySRa7C37QWcJRKQjT8h9fLJGrBbg4FBSikSyR8/r3HxftS4wVvjY0esHTuTKJ8I26kWK+Yde+Ez3qMz5bWyE3vX7fzQ/2fUp+rhuz0Nr2AFMnRG9a+MBhHJfRXKGo4CJfcKACjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895512; c=relaxed/simple;
	bh=tJECrev6NZHKGqf5bDRKo7n5+d6HFqBv/teL58QYUO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QFLqSV2qEW3vB5qSnsEokWDe1stvZ/DZSXef5VCVMuqc7dZ3nX3bj+IgALpLH4thppZG5ShtCBLc2t+8b02WCul0DU33b7O4AkpXINj2IrePR/tNW5Z8ODeTRZU0rM+g5ydjaTYjaV/l7gFo6UZ9+dlNYbvlgD9X5sm7PzhQzMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sz2J17J9; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-21636268e43so142410875ad.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895510; x=1737500310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5mrMIkTEe6NxNBfmJmR1XKICEvWgZ9tUVZlETsQZaOc=;
        b=sz2J17J9NhiE9ZWAl11bxgHjJjlw4Sl46SWDnO0MTUH6tjNaI4Uhc/IZ5CDmJcIpOH
         ZDWVTdY2MjO+VKkDlPmSXYfPxDn5PuZz04VZOe/DZykny3AVOdEP3sS9QiLa63Ug5vse
         JWoNxpDXmaaLHhaE2IzriDu14dtF7J1Xwv88NWqIs3r6Gb98RfIXvI/aHc4C2VOszk7B
         VC8kES9YHwIe8bU59qWlQUgMAbIJdVh0IuSQaktBNbXgq+plxXwmUpLcSLTwZGA0qGJH
         RD+ELMNPnt1UXXMrVOVQ66iIazzxnuJNPOqAIZ0kvYnySuCGXMCHQA8Ad2M3rBVPI13t
         5Kpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895510; x=1737500310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5mrMIkTEe6NxNBfmJmR1XKICEvWgZ9tUVZlETsQZaOc=;
        b=SyWLuOtyIMv8vB3Xb7Q6RsCN1YYrz631M+Aewgq8YB91YHsFQIlqjacSYiWSSmcu0l
         iNHuhh6ubQhwjV7+YcmIWkTSzQzUjiol1+g6otvVJveF057uGMiO7IHsWEWc75BcdA9F
         WS6AySzfJBVeUo63SAfrwQg71K1fj5CHd/cRlmXj2SqnaQZ9YQpGE4YsCOhcfxjO92TT
         D9UqqTX2zeivF3I0G/AMI++S6P5bTfiyQ95G2oyi94DwcgZ0mAuGWMMkn4rE5jUfsfNo
         TnO3ziw1opUdmKamIE73K57F/pTw2xsMwQIOSvefKEhhT779bxy3hNQg8A66lO4dhdoF
         Dw3A==
X-Forwarded-Encrypted: i=1; AJvYcCVD/7Pr/SDStObtKQt3vwdgon6Jq2t6UOrqzlDdt+2U1eW/JsWYXGf0+8OluBxO4T34Q9S24S1I+fGV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy3rAt9UifPn9E+kw4CgO4nTu25ACruquTdQDnSABE0FO7WKg3
	+TO1s5fJcg3ulWgiwpVJywb95TES5FGdCKUhQAYxY8+9s8bWZrKz8heEVGa8zAA=
X-Gm-Gg: ASbGncsa9k28u8BAcCWI5tslgQv9A6RnoB2MzdKyZrPs4AtuXNCZ0OWjoovriI+Msth
	N6izC3oTs1xAFyh+Q/nlkoXo7RvAmqWDttX68hZYl1jHhCR+pYh03M7wgHcd8A6VO93n5kHIPij
	9D7okbIpBy7QtXv0JZ8T/QomDs+lVxulaKad/autDdKhAcqqjxntZ5JxwrWXn4g1cZxuWv6MnMd
	E+2Bm1eZQHI/HVIHsfV2/tZCaT1J0Yfvo+eqhrN7A1kZFH3tv6iMMWuQBb0Cv95vWV8wg==
X-Google-Smtp-Source: AGHT+IHxXDdAHPYokpxm47ueo2TdVOG0GfdEc0qqp9YuFJCqGs1f9K+cpyt7QXfGQGsnfIi5G6wVOw==
X-Received: by 2002:a17:902:e544:b0:216:50c6:6b47 with SMTP id d9443c01a7336-21a8400038bmr426908115ad.46.1736895509814;
        Tue, 14 Jan 2025 14:58:29 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:29 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:32 -0800
Subject: [PATCH v2 07/21] RISC-V: Add Ssccfg ISA extension definition and
 parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250114-counter_delegation-v2-7-8ba74cdb851b@rivosinc.com>
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

Ssccfg (‘Ss’ for Privileged architecture and Supervisor-level
extension, ‘ccfg’ for Counter Configuration) provides access to
delegated counters and new supervisor-level state.

This patch just enables the definitions and enable parsing.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 2 ++
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 3d6e706fc5b2..2f5ef1dee7ac 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -102,6 +102,8 @@
 #define RISCV_ISA_EXT_SVADU		93
 #define RISCV_ISA_EXT_SSCSRIND		94
 #define RISCV_ISA_EXT_SMCSRIND		95
+#define RISCV_ISA_EXT_SSCCFG            96
+#define RISCV_ISA_EXT_SMCDELEG          97
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index d3259b640115..b584aa2d5bc3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -390,12 +390,14 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
 	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smcdeleg, RISCV_ISA_EXT_SMCDELEG),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscsrind, RISCV_ISA_EXT_SSCSRIND),
+	__RISCV_ISA_EXT_DATA(ssccfg, RISCV_ISA_EXT_SSCCFG),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),

-- 
2.34.1


