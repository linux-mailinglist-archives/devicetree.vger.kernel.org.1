Return-Path: <devicetree+bounces-138590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FFDA11485
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:59:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9329E188272D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 22:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580B522489A;
	Tue, 14 Jan 2025 22:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="z78hADgw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE41A21C9EE
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895509; cv=none; b=tEBksQDGPrFGpxKTZaKrItC4VS1tZ7JUxsTcBb38Tkz4QQKPq0Zo3/W440X/0NAKnMK6zGz/PGncD6IYMyHYWDZiCjf2WzcZy1FT/CE+JFIjLzfSTYl43u+T/ryv6FPK5fbhoP+jYdqodDllG7lWLBDAmwgAz/VLatQI3kYCUuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895509; c=relaxed/simple;
	bh=D68shKs21+kEnfY1w7KDWjYLipkuW9L+m2trlxew00o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QZ/KjaLdYhz2u1BJDJx4ZSsnsFED48shUIeL8ATWWDWwoBCGKOqCYgs3c7e0dD37QuRrOZ9jp3H8U8G9lF4Alh0mOsbIxJTvw6MGUf4Yz5AU+4Yd7IVDSXceRyeMFfAX/CZnlOB5LNmOPPd1WiCNl/NXmtEnsZSk4cWOuc9BpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=z78hADgw; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2166651f752so136852235ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895506; x=1737500306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vL7HY0dEKrWKEMn+BoWLtPifTt6hhf+Eo5KcPrG96mI=;
        b=z78hADgwLxpEusLbp9FSTWSftxZzaPHS1NF7ZfWr072TjVH0SdLlbOfVx7MIijmLLM
         ogXPDoQ/rwMg4wARGkG0nAX6XUMgy8sYDHxucujPQs+0LtzqPIKma38WSP2NhvPCMO7t
         lNhjZwjD/ih1b1g8EAvxV/AOZ/G5NwgXqBqfG06V8BkmFP+o8rwmpQzChLnWnmKED10Z
         8C0IJZmZp+cLFwathbbGp42nH3LrvzN+dKuAzdljdNAVYof29yH/Gdz+Fl6nB6jpa2ji
         76aVX952RPzzHmuifn0Fzk8GMtRmXF/tQ8LAjPYHxAbkDe86HRE8M95r4HUjBqw4CHXe
         KUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895506; x=1737500306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vL7HY0dEKrWKEMn+BoWLtPifTt6hhf+Eo5KcPrG96mI=;
        b=n3vSF3B3ZUFFEeuzalqfquJ0xoc/c8Otj8E+L1GEADDfndWIz6rgeVvscjzYilfsAV
         poJvnC/8C/r2qZMbeqijQ2LMoN6jzbL8uzsGWCMMjS5mkQ7mslRzag7460+NVHwZwkqO
         7fz3AF2e36+dK4YTpa6zNUvT1O4cDEPzmjIQlZkdggyvoUOmiPPddkWsFoS282KFNT/q
         ftz2lN77RtTDA+Ez/f8P+K4MFTFUdl0V+9mWJ++Lx1OmF48qgPH5Q4xidgW4LsIP0YsV
         caYvKnkihPz656fZNmaN5pP0xakPiVp40trTSmnXpYV4r0ZV+YHDohqGl3Wj/d2D6Hst
         9owQ==
X-Forwarded-Encrypted: i=1; AJvYcCVO8FJJ1/zduoiB/u8A4nlyzVcwxeHJETuX6EeNH+AaYHbrxvWgBzQn55dFxo3W0LzwnIvt0yDJiRSb@vger.kernel.org
X-Gm-Message-State: AOJu0YyrnorxGLGzkxdb15O95Q9Igt+uI+XekHhv2vfoBowpe60NfHuk
	KzXgTwQfadRJDeCRKQAzaxipJ7mrltdJmaB01FJDFiGgXdCgokvy79G3nZhB5Go=
X-Gm-Gg: ASbGncsik+BSR3FpaGgibE15/EHLLYJ3g7gk5kTPxdSIyxJhP2ftfJ2sdmFefnbj4Zn
	Vn3sg2eAuugVoClibmddPSHHWrFBofQLm2WT98MOD8578MyjP0hecrvjNolB15If9Cz2AZawq2K
	B0BTW3xEcrrxA3T31c9MVkEUoWVLcAY9KdOg7dv2J4/Y/BA7wfAX4mIVmglzXl/t5pTlO47bOag
	bTMUXxV18mqdsGSXW0N/XNSSAaV5sj3EmrhMzundfTUoLaV2CMwuecx6NNKvShj3tBnPQ==
X-Google-Smtp-Source: AGHT+IGcOgG1DqtPgRuq87OenfYeI7iqhHkrnix8fM+hMVbZ5ICFTggWxOV4+kwRFEcps2WSmP9bRg==
X-Received: by 2002:a17:902:f685:b0:216:7761:cc36 with SMTP id d9443c01a7336-21a83fe4b6fmr435625665ad.43.1736895506247;
        Tue, 14 Jan 2025 14:58:26 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:25 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:30 -0800
Subject: [PATCH v2 05/21] RISC-V: Define indirect CSR access helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-5-8ba74cdb851b@rivosinc.com>
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

The indriect CSR requires multiple instructions to read/write CSR.
Add a few helper functions for ease of usage.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr_ind.h | 42 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/riscv/include/asm/csr_ind.h b/arch/riscv/include/asm/csr_ind.h
new file mode 100644
index 000000000000..d36e1e06ed2b
--- /dev/null
+++ b/arch/riscv/include/asm/csr_ind.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2024 Rivos Inc.
+ */
+
+#ifndef _ASM_RISCV_CSR_IND_H
+#define _ASM_RISCV_CSR_IND_H
+
+#include <asm/csr.h>
+
+#define csr_ind_read(iregcsr, iselbase, iseloff) ({	\
+	unsigned long value = 0;			\
+	unsigned long flags;				\
+	local_irq_save(flags);				\
+	csr_write(CSR_ISELECT, iselbase + iseloff);	\
+	value = csr_read(iregcsr);			\
+	local_irq_restore(flags);			\
+	value;						\
+})
+
+#define csr_ind_write(iregcsr, iselbase, iseloff, value) ({	\
+	unsigned long flags;					\
+	local_irq_save(flags);					\
+	csr_write(CSR_ISELECT, iselbase + iseloff);		\
+	csr_write(iregcsr, value);				\
+	local_irq_restore(flags);				\
+})
+
+#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
+	unsigned long old_val = 0, value = 0;			\
+	unsigned long flags;					\
+	local_irq_save(flags);					\
+	csr_write(CSR_ISELECT, iselbase + iseloff);		\
+	old_val = csr_read(iregcsr);				\
+	csr_write(iregcsr, warl_val);				\
+	value = csr_read(iregcsr);				\
+	csr_write(iregcsr, old_val);				\
+	local_irq_restore(flags);				\
+	value;							\
+})
+
+#endif

-- 
2.34.1


