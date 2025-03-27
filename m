Return-Path: <devicetree+bounces-161395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C2A73EB0
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4B0B17BA3C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA07B2206B5;
	Thu, 27 Mar 2025 19:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="c4IpcaFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9381328EC
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104182; cv=none; b=Y6RzDkgjxVdjttsgcZtKM7/VSSxnZ7RZ+fY4gDe1lR/9EAgNcYO9K7UsgQGWRiRP5nJV5A951coYsXn/gebJS+9qA14+eCVdqH38nM+Gxj7Mdmuo1ys0wGj67MrJrilzEIrCsFDNF4IDUmScvvcwba4vcft/FZfM78j9KQQuKJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104182; c=relaxed/simple;
	bh=w+WG3/hTVbYWnKFaU0I9UFeLZ3mNLhg68etVPwj0GZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nqpnkKgvQULVnwYYy8MHkOz55ZwZT9NWhP2EkP3McuLFz6xBsAVcFFVmJ+G6NHbEouoSbGP1GE3fjLFAqDYmEIFcYLKrlhK+zLK/BOTB6l6fVn5tJF3y0zIMxt1vbVZLaDlp424SFhuk139oIK8FZ+3lUZ4/f9nIjXAaavhM5GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=c4IpcaFB; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-227d6b530d8so28999305ad.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1743104180; x=1743708980; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zw3zbGTAqHMsJs8YvOYpRy60tVdSbXNH77zwDO4GVCI=;
        b=c4IpcaFBL76BLHBVNgKS1L1650FF/45ql8tkIYu9zfIr2Anf7xsj3B3Yn/j7cL6Toe
         5Wu7KgxfJF3PNDYSckTjGAATSdtcHhL9auMyXxR4l8ZsWivDGEpEPtk8/44vk+fCSiTz
         OTtDgMwhfMwcV29vbP/Q1d4bpPM3M4npr5tux8CbB5l3w1Qp20Y8TuJprVQKipsPHIHH
         Ev84V0PwtoU2OYn44JoiRpohwtLW4aEZ8c4OyH7/eBYemKePQyxkmhQDC+mhwx55cw4D
         UB7VQitGDrGkNetkqCV2yWblMmNGpnyDb0xud7f9x6w8Vaeu75bPAQs7/ns90nMhSw/G
         Vw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104180; x=1743708980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zw3zbGTAqHMsJs8YvOYpRy60tVdSbXNH77zwDO4GVCI=;
        b=nkRvqDPrQFV1ownkig2GR0zA0K+KB6VXpghSYrdpA1cv7TOXgTaSgILF3HzWMWF5kv
         yDtPMrwHUeoFp/GovP0kNxZoGzIiLhL4wBGXLIq+BQmZ9CfB0emyMJ4/YkPqefnlE7qe
         yrqHJ1YwsoNr25Es+3/o2iLQ0KKtySIW8SIPCQOrGXFPrn4rO3qNMx9c7R/JjHz768N/
         7vGyX4nnjFywbN21wh6w1sF417613PrXDCRTILUUlZ+nHO4IxgPV1N4RDNtZXcK5f5iN
         kmh+DQHDMDd/lY4oNmxVFE1c1Lenkk1OWqN5Lgxj3LdmJ8N7YGn6uIwfje17tfbtR0lK
         aUiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWtE0Ixd4eg5E1WPKnWYeTEoyKXc1U/sZrAl62cwY+Tuw/muEr5NQtntSR/YDzUs094vaD9fKtj6mh@vger.kernel.org
X-Gm-Message-State: AOJu0YxaqjHT5Z3himRUZd+HGvgSm5VCfeIJh5r5UmRsCDddUa2RuwbP
	SUsS67ee2MZ6kRMwCKv8x5AaELneesK/GsCCLL7hdqOI4uV4M4pbRkq2u82pGwQ=
X-Gm-Gg: ASbGncv+RLV6zNFNWzsflSw+kYVePrc+f0Txr1pXeK0BxjqPicVeiwHoB5VM060lz2i
	zA28TqwKdBvNK21NgzKulaW025SF0uJ/vTd9y/GgsLxVYsy62a+e7OUDfoBSz+p219XaPq2oO4+
	06k7ybSUkiAtQRG/WK290aAple4GDj3o4ha72B/Iz6gGhDuBQWzkRQnHuqfrsmak419OMQgKjyp
	xkAbzN8CXt+yRUnEnf2Tvk20LljmrkK3GGNu2X3fNCZ7n+Li+QobF5E3Zzuid/iNlZ/J3VAFHIT
	nU2IQ6BmPfpTNT6ste85eUdzZfZWNOa2Sq8R6y0gwvhFXBx8mu3ShhCYJA==
X-Google-Smtp-Source: AGHT+IHpWwO+ALT63AnEQfROc0MsU9HJIU94/2wnOwykaqK6qJLji7kuLw7H0FVEp+QuB62Asb9xXA==
X-Received: by 2002:a17:90b:5827:b0:2fe:a336:fe65 with SMTP id 98e67ed59e1d1-303a7d64066mr7195102a91.10.1743104179797;
        Thu, 27 Mar 2025 12:36:19 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f6b638csm2624220a91.44.2025.03.27.12.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:36:19 -0700 (PDT)
From: Atish Patra <atishp@rivosinc.com>
Date: Thu, 27 Mar 2025 12:35:46 -0700
Subject: [PATCH v5 05/21] RISC-V: Define indirect CSR access helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-counter_delegation-v5-5-1ee538468d1b@rivosinc.com>
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


