Return-Path: <devicetree+bounces-143480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8D8A2A225
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA4EB166D40
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59BF22E3F0;
	Thu,  6 Feb 2025 07:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="CF2o03DB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D2122DF86
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826612; cv=none; b=XYbP/GDNvKc3cdtG56/wAs3YQmtxqGjfEpCnxhUcWIUwlz+R4DqkEYBOpJqiYE+7/uBeR9g0whQNYt2Cw89ewCBe/enYQqSPSKb+H7+/4qNoU0C5GxJUb1AS4/Hj3f1KIZLqCo5IvXus7ZFEY05det4d30XkVHkkwnQGm2Do+nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826612; c=relaxed/simple;
	bh=Cw8hFyaXgWy3bdMMjpJ7k6K4Vod4OUBAmQtKBzIis4Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p8dyOp3sdOVqVdmjlFRbP1hQx9KXJrCR3j7U23VvlR6Roq5vwTO3CwhE8Z3pR6PIeBFr39mScTLffzyTkA+tya/k3fZ9gIraIHhRL8pfNSdQL3wfAfcvJ7VxyP1g8qsq/SFLuGbPDwvyYQDsEHAr4KMhUDO6dzBDR0/+5xo4vzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=CF2o03DB; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2f43d17b0e3so988308a91.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826610; x=1739431410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYw8eDaBPoa3lZTMqvm38RPB8/mlpG4q3+7Mk5EH9kg=;
        b=CF2o03DBBQXjqy2rAabOZOI0ks1+kzNgDtZ+sh2plQt9LIT63z2tfyp2xTGewu/ZjO
         d2OvY2BJiko+sSlB+4htIYejV0wKgfj5zpzLjtrbzY0v7QElw2rFW0JgB2WfMMhfrhRa
         753pFhOVtBTJv1rWw2IsKSlivRZCnjlS8uGpvhD1OQUWoop1fg0n7YKttlcn/VJ5qiJw
         um6zeb30Sk8UI62aD63Kc62iJ66Y6FLGFob3PlkbSBpT7WpL+s8Zbd+Cnzekwdlp6eDN
         Ot7Uk5JZch3MJWxc55J0I9JYliJW2Rzvrw9QTSxE/SnHdfiggHXIVFRxz4P5tVb8UGqN
         WGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826610; x=1739431410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYw8eDaBPoa3lZTMqvm38RPB8/mlpG4q3+7Mk5EH9kg=;
        b=WzS/HPxSRBO/CswlE/ReWjktvDSBy1ZKA6AHYTjT+jgXubVSigLvusNooLYPx6JT3D
         gQ7GcAtiwMAGS+HooKOk8lncxBJMPaRO9m9jThNcCyq1jfbpYDDsKHvzqxhJpPEnxapF
         IppEUSVgFAeV96xBBSqFBhTf5xVYM0TL5moOvLOrEGYoVpect75LUiFo6HYYjkTKCzN6
         T1CPkiTFxy1nOWgoMCW2LelfpeMbp2jN1uSb1VbVZh9RKC6lSjRkhp6XRXIIKDoBdGiu
         uU8ZxvzDjhpFJa9bZ2Nduamc0fKkrwLqBd+Vx1XKLZS3furPDGApFumYgcrdxKqTVYZY
         +h5A==
X-Forwarded-Encrypted: i=1; AJvYcCVJaUsvQw3ZHYsOz7EUjmOVm6FrT7fZFuFtp9+bksz98QY0lqkNAz0NkJwttWyZT1J0LZ9JognXzuEV@vger.kernel.org
X-Gm-Message-State: AOJu0YzuX6fkz4jzB4Zndj85ctKheVQ5vwuKMyhI2902fBAA7mKugVqD
	glpKRMeaHkeXtteDMt9UFgqU9THziZnH/hymCqnaW3Pu1e2lAUe5tU66KWgOOek=
X-Gm-Gg: ASbGncv4z8BmkLKuTSMIU77I2e0/w/sMoYi6krr+Z34l2dAsWqERBryEGEchO8ZG4ng
	P1wA2bV2n7FdfX9qP1ENle8/Fj1F1VIViCCiXhAo7ZSiAZFq2llescdxS1iC3Pi5ub2kIwOyVic
	H0IORBTPXf/j1xUKh51z7yUOW9UPDAnIm1hqMX33HDdE4cEXCmODRYnbtBgCQzznJkCiz9v1GK3
	CCq52drhNZmitDex9pf0ay99ddEh8PWlojRN7AhzGet/6UkF8P2X4NWiKSyDwm0QDAJW92ouAF5
	y7/34QmG9/BoLJPSmn/WWHxeju9S
X-Google-Smtp-Source: AGHT+IFmp7b1yh0QEKdLgrjIIYD49wESbW2YfC1lavQg5SmkfBv2dPjIMLPytR1zKx8iqVccmwXu3w==
X-Received: by 2002:a17:90b:2b4d:b0:2ee:f687:6acb with SMTP id 98e67ed59e1d1-2f9e07673b6mr8850611a91.13.1738826610015;
        Wed, 05 Feb 2025 23:23:30 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:29 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:14 -0800
Subject: [PATCH v4 09/21] RISC-V: Add Ssccfg ISA extension definition and
 parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250205-counter_delegation-v4-9-835cfa88e3b1@rivosinc.com>
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
index b4eddcb57842..fa5e01bcb990 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -103,6 +103,8 @@
 #define RISCV_ISA_EXT_SSCSRIND		94
 #define RISCV_ISA_EXT_SMCSRIND		95
 #define RISCV_ISA_EXT_SMCNTRPMF         96
+#define RISCV_ISA_EXT_SSCCFG            97
+#define RISCV_ISA_EXT_SMCDELEG          98
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 8f225c9c3055..3cb208d4913e 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -390,12 +390,14 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
 	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smcdeleg, RISCV_ISA_EXT_SMCDELEG),
 	__RISCV_ISA_EXT_DATA(smcntrpmf, RISCV_ISA_EXT_SMCNTRPMF),
 	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
+	__RISCV_ISA_EXT_DATA(ssccfg, RISCV_ISA_EXT_SSCCFG),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sscsrind, RISCV_ISA_EXT_SSCSRIND),
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),

-- 
2.43.0


