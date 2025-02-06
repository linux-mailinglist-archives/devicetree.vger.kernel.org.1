Return-Path: <devicetree+bounces-143476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A95E7A2A219
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 862941881860
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8435022A4F2;
	Thu,  6 Feb 2025 07:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="r1mieA6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E82922618A
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826606; cv=none; b=jCSOjXICXsk+kslXSoHBbnt6UmTuT2onBCCbZY5EumMhLCwKBR14XnyH75+DRyEfra04PmtG1Pqi5irinZO7lYz8R99bDpAynf6jN+jU8AIseBhoHLF+g1rnb0TCFUMtzscZbcvNwP7Jm+9mR4Cvj31aBs5LI8R8RZ/b9gwaj5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826606; c=relaxed/simple;
	bh=w+WG3/hTVbYWnKFaU0I9UFeLZ3mNLhg68etVPwj0GZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wy+rrL5WE5Yn8mS1arW7Q/IAYnjxv9Dmc4UEK8IYyqvXEyJDIlmPxX18EbKn7YVSkDwCV635+E8qs7LdqfPUZDJvNiYYHzVA98Wy/7odds9eVOZN8SL14j1ilqMq6ypX9HTZfT0vA21xsS2eLy/I9Qxk6dr7ZyiRbxClv5DGVtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=r1mieA6W; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ef72924e53so1067733a91.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826604; x=1739431404; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zw3zbGTAqHMsJs8YvOYpRy60tVdSbXNH77zwDO4GVCI=;
        b=r1mieA6WPzMFNUNCiwIXCQkPVgAVonI0YM89bZnNMmIr5/QB6MHBW9nqPqjPefzqB3
         9hZP9/E15Paw1kYUqGPDdReyDr3E7I9lOalma3daSPtPm3pXlbChcVnO9LqPBFdr/713
         z2SAHiXvjsVkVICaEBMuDCdBJo/ZO2+WhqCGNrF57oXSf9fRHhasI/UCFBDn4VcVTPkd
         Gu65MoLB2Ou8lSrmFSXveD//assCdMB/lC0z+E/T0XIinLpJLvrW6AA5YYTMu8X4+KaI
         2ZRU7HIUfV0y9pVoQiD28oilbFxsxjkhHiM/STmThSt+f0z+0JKV8U8+yccuCJWPbxyW
         L0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826604; x=1739431404;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zw3zbGTAqHMsJs8YvOYpRy60tVdSbXNH77zwDO4GVCI=;
        b=Zo94q7oudFSiM4oQkBXN0LaeYI9C1N/NIJcKVoJe/V+VCgi7p0NYqQ0pMM6JfAO33B
         O9qFETTkTU9Q5XxdZFBHyR9XnC1WfKD8ZY42VXsirZY/eyqMp4qi/YXIcrDVQk67bDGD
         c2x+YvLQr2I48FQlTpLuRTs86Js4/qFta0tf/Q21EbY6C2G2GieTzF+aPTzIzvBx8pSk
         uWfd9K1BFjUUU4wwwZCm14XFeh0vRZ55FUpn/fwNDCjeCLcKb7SkzG6pzYjHDH8vpbE/
         0husABK0lC+MGYuDNM9Ngg9HxyzdMFLFk+IbP6e51Rn0LZg7Fi27BHRvovgBF6XuQTNx
         m66g==
X-Forwarded-Encrypted: i=1; AJvYcCWzeaDTLayjBsN/5dqw1ZoK2Cop5MYARBLga8LN0iitGbLIXxHt7ceAYUaR3PYUk9qXu5nvW0ut+kLO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtrqmh7eDhBwNfQ14QK1MrwwdqjWFLfvT599RCkdaXUz9Dbv5O
	tSBy8LF3JhuUKNhgNr86DaiTq9PcmFWPX+syM3tE6t51HVnUJiai0BtMJ6dfSgE=
X-Gm-Gg: ASbGnctEb4dCSwty24bWZUcHCYIYWN1EmUvMZdQJfoW1hmznaxG/0wdw3W7LhhjUDGz
	aIC0iaOd5riZC40zteSYHz8p6xTu07xoh55FB1s9AscTwJ6Wj1wyx/HYhoU1sjR5fx1VxLDq6AA
	ASsLTuyZkQjay/+y2fQcD4wjSHb+ghDko9IpX0YoNBLPu5po+8ktoHCXU29yAGekt01fZ5a1jRZ
	O/x0jN5myTpQDrc3dUqnwH3lWNu7UgXxCyGaHtLjxRuVDLH+qUUYuWVtOViUN6Bv65/7tjOgAca
	68vYEVnb0rHpOx2HFbeosFaj3IPp
X-Google-Smtp-Source: AGHT+IG32go+lZuwjCgg/zbLptZ9A9o5+Wocjk0VyZkgS2Pr3FK1vOOJ1tss0czCWnqvvWKX+hfRsQ==
X-Received: by 2002:a17:90b:4c4b:b0:2ee:aed6:9ec2 with SMTP id 98e67ed59e1d1-2f9e075fa50mr10140486a91.14.1738826603728;
        Wed, 05 Feb 2025 23:23:23 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:23 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:10 -0800
Subject: [PATCH v4 05/21] RISC-V: Define indirect CSR access helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-5-835cfa88e3b1@rivosinc.com>
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
2.43.0


