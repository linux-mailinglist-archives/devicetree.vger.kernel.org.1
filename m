Return-Path: <devicetree+bounces-141273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD931A203A6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D2BD166284
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B231DFDBE;
	Tue, 28 Jan 2025 05:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rWvoqtiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2531DEFE4
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040401; cv=none; b=InLyT36Y47mZ/lxVFBaW5WXVmXk1z4zh+/IwybwMRQmKspOvrvS6HXmiTMXHoo9ekf/CamYUojPGDlmDN+IJeHHAW9a9FdG63+NZNQHeRcq7aqTbEFSDy2V8kcACCtMXS28W1GTvCy9W9OS05aBUKihHHmQ7KymCkdPKr07drHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040401; c=relaxed/simple;
	bh=D68shKs21+kEnfY1w7KDWjYLipkuW9L+m2trlxew00o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lpu8eiHf7rUu4+eW6Wun9gXe50OPm1x6MXVVuPuGwRAy1wu00aaHsuRzawhe+wPiqJI2waz9SuOJdyNDd61bbtcT03URbvvYWRSAKZOY4vWCRanhedpBzcWgSeY7NOjxWOmTGEswOj0jYbIAGhwYP3Eom6ihZQSt6+wJ9yWB8rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rWvoqtiH; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2efd81c7ca4so6882184a91.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040397; x=1738645197; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vL7HY0dEKrWKEMn+BoWLtPifTt6hhf+Eo5KcPrG96mI=;
        b=rWvoqtiHJF6Uqbzrl058lK83Ee1lMOUOQFr5xBtygdG1eRwif6aPE65cqI/1Q4eQp9
         prf9EHktOtYByKoETlf3ZaFPYF/S/FRz5BXELCzBerF4tdFzoR7h2OjbOTLiqxNRDWKv
         N/edfHX4dn9iDXfmc+67FIOMwQp9pAkuM3WUeHcdagQ3VwO9dv/NmgaRofyh8JoP2BVn
         WGEmGC7gwouSxzOKpvZ3hFrdZu6eHBfjjEcoxJyeTr+ibQOFR5i88sU+vH45xjvFGNGc
         xRmdAd5ucg1vplboFBEkWPGWPFeYZRX6M0+cfk9rxRHl6KTaVRrbDKZFcHsnMTJfUSi4
         7xiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040397; x=1738645197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vL7HY0dEKrWKEMn+BoWLtPifTt6hhf+Eo5KcPrG96mI=;
        b=KQr8ituTyOp3ExSIRkv34FO/gB6+v3xBOKhEwzIYbmuruzahxZCIlZUso4ynI5q4Bm
         gu9IxPCN8yyaDapyiTs2iQjhvBD0udZ+JxkEnwjYfSH74LHzzTnvV82AFoaxCQRed0L8
         KOxpUAvDfs11drojsyjefyhpot+FMkFVxeW1qVPvKcu+yQyyWgVdYnZ102RqkzF8z4Cx
         b1ud5EV1Fzqho9OF9L9OKH+fnWSbo2uCiVjB0Z86I9Bpj6D6gI6f7+gg1Gwm2FrVauSb
         x3q/HBOQpvF9Y/dRUAVDOEnrIpCkGz9yRbthmkOjjsxdsNucD241XNbHO9+c5SmV/wmS
         bc9g==
X-Forwarded-Encrypted: i=1; AJvYcCVhgBZ+VubjvBnyeoiE7nUwTEn23SybIk0GxkzsQwwJfAqJSafYh26fVB3ok341gDWes3+rJgLG11Js@vger.kernel.org
X-Gm-Message-State: AOJu0YxMWP5NJG5K2IvV6x+ukZqcUw3GtYTmVctdlFVbKVceJHcijFKo
	3JoOi346/Pgn2uWcD+iMo9f7ibNLakCGigjIm5gonECYPN2cZZsFQORsiEjia1M=
X-Gm-Gg: ASbGncsoPENAv4B4WBYT3XWLkDJglGJ+jszBRaUrqEjfwFbS8r3+FIzVeDm5ITu1W5a
	TeAtJ1B2Mjk14rWZXB9C+FMdIgbZKoq/mbYdXxTPCgdKc6iCnZGaXXKdwKF2EycxcoQvYV4JdCC
	2mkZlwqHNn2jIvlsgEd6yKkXyzu0GtvXymvr+SgXCkBAo2yPzfdFfoeNJ+xsqRjUIt7a+WjDIF6
	5ejtDO0MLiFrbverGb9sOr7D0MufMKwgwDIZbFpMAN75CpH8lH1EeqGyJ3jb8O/qa2uHx69AWO9
	TpDLE9A4SP5UqShdWv6ASosns2hs
X-Google-Smtp-Source: AGHT+IEydkqGnMas9EixfltXBAZwEmzDNcAGB6aZaVaiRCrDSr5UAXUAKLQCmfBM6LnRIdbwcEstgw==
X-Received: by 2002:a17:90a:da8e:b0:2ea:5e0c:2847 with SMTP id 98e67ed59e1d1-2f782d37703mr53064728a91.22.1738040397475;
        Mon, 27 Jan 2025 20:59:57 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:57 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:46 -0800
Subject: [PATCH v3 05/21] RISC-V: Define indirect CSR access helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-5-64894d7e16d5@rivosinc.com>
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


