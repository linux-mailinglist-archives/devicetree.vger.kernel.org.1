Return-Path: <devicetree+bounces-143477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AE7A2A21B
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:27:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6137916167F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2322122652D;
	Thu,  6 Feb 2025 07:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="KJ946uGm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CED22653B
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826608; cv=none; b=P7KK/fQF2PJWMMxtfP79jo8Rt4Aq56SB2c+deNBZ0cByRGtSIgRselS9ReYtk+k0Pn/HDzENh01hYEt/yc2mvSL4iSGe+sJLt6yLDFWPDGz1kcgeFKwc7+TSwXeeU00Ul2svAfug+wjSTr4mtew8C9r5UZ6PHDb+pPUGctJh2t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826608; c=relaxed/simple;
	bh=ClIsG2Lx2D+ejEOZiGO0Kg4tbTxKfRi3WIEvB1U1GKQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W2+o9Hax4di17KqAdtnWPxD0V3VL1NMatTRKdOMMqB5BNxd0hGO2XiojhBxC7Xo7tHHmkkSQDeuMWZY+HRm0wSW2zLi/TSCoXoVbBVXcOTRaWsJu49M6fbjUloZddva6f3VoU9rMgQAsUyzI4kYvddAZbACwdbuVBd1hfQm2150=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=KJ946uGm; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2166f1e589cso14575475ad.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826605; x=1739431405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5jEaYEVzjt3yKFEUjA3mSdxHjzs+ekk92pc880MhBaw=;
        b=KJ946uGmshr0cWcZofe8BsJUoVthUACwxK3OLkvGUYPbo3Wf+xhoKi0l/StgTxqV2t
         3AsfZsUocSm2I5DDj6Zd5WRx28xAGqGcMge0UBvjb4PPCu8AcPZzGEfdyZu7eSjgLAbF
         Q/qso0QRE6Fo12AeQzOua+TVzNyBDu7cay2VndUqIYttg9IMqeT0NNzt7LmtCetnETUI
         QxmKoNhQrrP63WF8JJP7+ZMH1m6Kkqk1lnvUwwUjLGg6peLJJzPzYAcg8C0O1xO9dgv+
         CsdMGTNsXB07s4CRwtjhzJJAWCDc2d4GIe2I+Y/MVlCjxKTdCOIMH9GLBYYuOU/wQDMB
         KSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826605; x=1739431405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5jEaYEVzjt3yKFEUjA3mSdxHjzs+ekk92pc880MhBaw=;
        b=VAMFKubuzqrSb89Pir40h4VHLeA0VBeozz7oNtlV1W6SgWbGQhrEMBx7mX5/irCAS/
         JlrDKAWzSITS0B9j1VsbwZz5dUuoYaOewLpSVfArVBm7QUPzLxSKRLE3q1aDt6/QAETL
         7tpq+eI6jeYQxTijo24nrocOmiBzBdfyNGchNvmuGstKNx3vjgLEVwL4VXfu5zsqCMTQ
         Jc2L1D7sMKL+3qh1dSnkjlhJUfNdJXLaGqKV9gi+XJBHQhWCuLh1q97NR/L0c0kaGu0K
         ZLNH9fNjyOWcBpug/ln5i2YBXpAkagcE3PYXGPw2PZg/TC6w+/rj9dhEcIqsql00KTZU
         xSuw==
X-Forwarded-Encrypted: i=1; AJvYcCWjKV2jsH+CfQ882ByjbgY+VVk+fOPTEgPE55P/9R4hQa6HCBfLuuXK6+cIk9EUj2M7uzwLS3FWOGxF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz62uET5J/slgLZpreQzbDxTdRpoQeke5FTlGxZ2FLvPztKiDeh
	LZbsv23z4I9NihkU2hayB5utgVZY4FuHsiiHeZZV8iH9+8rmXRhqo0aU8TGcezk=
X-Gm-Gg: ASbGnctUsWjN8QbRr27McfpKNgiB9EVhjYVIm990sEjmAsNyRhMNpMDJfy0OT6l9j5I
	RPZHNq5SJhU6+Zpbdv+zwHsaTsWPLimWFRxlF7IQ8T+jKccY95m+zy74MQi3wevI/WksbZEh5hS
	Jyrkk6Q6msRRXF5Mp3wfHHQu1ZnxdgL/UAMnhn5NzefqhWVywfOSCr+GPVjNbkmr4dKKz1pyaeb
	HmNdHVvZ8kbRSVXWDfh939mWn56BxwDbQ/qRw/6gZ4zGiwwla+vwFi0KY+13qpJRiMYeRtMGLmB
	q7X/HmggDikSzOCNJNXNbGFdtPXE
X-Google-Smtp-Source: AGHT+IHzp0J+mwXj/o4qdyn5Yi/oH9R23yiqLBnusAGlaJls5faLTlCjx6NHAGuTvmvHDO4dBQO+Rg==
X-Received: by 2002:a17:903:2f92:b0:215:b190:de6 with SMTP id d9443c01a7336-21f17e2c950mr98353905ad.3.1738826605265;
        Wed, 05 Feb 2025 23:23:25 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:25 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:11 -0800
Subject: [PATCH v4 06/21] RISC-V: Add Smcntrpmf extension parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-6-835cfa88e3b1@rivosinc.com>
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

Smcntrpmf extension allows M-mode to enable privilege mode filtering
for cycle/instret counters. However, the cyclecfg/instretcfg CSRs are
only available only in Ssccfg only Smcntrpmf is present.

That's why, kernel needs to detect presence of Smcntrpmf extension and
enable privilege mode filtering for cycle/instret counters.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 3d6e706fc5b2..b4eddcb57842 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -102,6 +102,7 @@
 #define RISCV_ISA_EXT_SVADU		93
 #define RISCV_ISA_EXT_SSCSRIND		94
 #define RISCV_ISA_EXT_SMCSRIND		95
+#define RISCV_ISA_EXT_SMCNTRPMF         96
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c6da81aa48aa..8f225c9c3055 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -390,6 +390,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
 	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smcntrpmf, RISCV_ISA_EXT_SMCNTRPMF),
 	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),

-- 
2.43.0


