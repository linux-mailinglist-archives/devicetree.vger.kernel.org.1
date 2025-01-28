Return-Path: <devicetree+bounces-141270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF294A20398
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAFD27A3B5F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4251DDC11;
	Tue, 28 Jan 2025 04:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="AU31rmzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB171DC9A3
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040395; cv=none; b=uk/erXkDvuIcUbgzLkyK19P3ZsCKqpBmC0ixVwI6ADL9brBg5daSTS2AlTfp8Q/mAFk3oLBxbJqrufRkyGtneW+vMzpcc/y8iBitUhxQPtFqiLT3XErz3gbb0rsmcEXlGXXPpKmx7BCUw22/IHpKOkipNIXRUoUXrgHQdqORh4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040395; c=relaxed/simple;
	bh=dEycrqPujNQoyCH4UD+bkihtlTfJcGr4YH26Pdpa3s4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dn4sVkM3+5UFxA9g6G703P6RLw+/axNgxxD6Pmcz3GSPr+5kHKy3C6gT5pgtG7QiqhXky3Lf/JLvbahAF63cfvjgfJgBYU3pGaLzEbkuM8sgRMfByVmWIGjeHYSVNddNPcD6a7n2h4as0nJ63gI4XK2dDhrRpoAutMRexm+kLxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=AU31rmzJ; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2f441791e40so6858660a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040393; x=1738645193; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxfKG65dTTWELGQSY1XBUvmc4ww6DrMBB5fk3tB2Lpw=;
        b=AU31rmzJPv33n0Qc7iBSxAFKIxLtsNsPEz67yEHrAMy3XbNCV7q071sHPEsoJwiTHO
         gOPu2zz8qwSrCotGu+HOcgv0T1VlUf84a67LLdeBRMRkg8TWPeOMmTOLCmL+YTTp7hbC
         Wkpbj75fQx+nJ3Y3Qx/tMIZjwCYWyuIAbS+UmbpFm1HcVRuboYtzyidaoyogHZgql1m6
         vRninQExaOY/ztj7q1KQVM8JAtJrLnWRL+34RyHC6KeGvDzGaCgKNyurlZRbU0ZdCzzM
         NGjIY4Qq3mmbi/U6fnDBmrL32frml7uECn5T0s0VTyk1CJObavktRh8KXn4mdgAE/P5R
         OlGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040393; x=1738645193;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxfKG65dTTWELGQSY1XBUvmc4ww6DrMBB5fk3tB2Lpw=;
        b=dtG4DV4XFHo9rv9f8+MicR0+m5Bbg+ULqB32csT1w+9B1dhV3wgrDXv6IZ3MV9DI4T
         L40AyP/kh1jgnsGJaa/ez0VRBCVbyKDUvqwGPJJNQmYRdoq3Q0yW0xI7Eac59cRB/6De
         5/qUGDIIE72svVS4Xpumi68FDLHqRYfDtSS5HnaBL7WkEsXw7Sq+lejmqNLMbMuOIVBT
         odyc4eWY0ilkNpOlvzMPgPtjifl9xkiLwOf6rv82sQ/qE2OZH0K7CHWRMRj2909I71pN
         QsHFdDdGGrQ5RVFKvEZidtuupFMs5uH3K/Iqybyd7oNzHGc+dEy7X9nAqGEQtDUM3hUt
         a4xg==
X-Forwarded-Encrypted: i=1; AJvYcCXKhKUL0eRv+4stFTaijhHD04tXZ/U2iCLLHsbBl0NI3rLr37awB4zS0CkBtK4ysae4Te+JzGM8/Iiq@vger.kernel.org
X-Gm-Message-State: AOJu0YxwGRXdD4ConTEgFEq57idFU04dqGbso/97eZCUMIC+B14BC5nu
	w3OC81OWbVsg+ftJfXAd9+oQy9/Id+baVvrdGgNNSCnOZBcV1GBIyL8jvU4lTPI=
X-Gm-Gg: ASbGnctMu7gRrVmRUZS11s8QohJ8pHcA1VbMGKMzI6NNEyRHmstQpWS7gkl4pIM1we9
	t0PICiPePziKXtJAR2lIQBlf467o6sEMkRvQOLP2ah3nzdIAxjkCgzg6I/OxNixj91Jk8vCvtVi
	GDGP/edTWrBasc0TU/X2U4hFj8NQ527n6ITvwSy/A6AjNQUMZoRC5zxCO/SOsEMiihrj/XvjeNJ
	UXbHoER8eJRcTW4FhHcYjBKmy5K3oVXFsch3sg4/0a/bVvs34NfBPo/rwaDJFHfdgCsTVRSn8b2
	S1JlHO5KaSwrWrdkYouaJ8+FMTK4QcqqYuLYxwA=
X-Google-Smtp-Source: AGHT+IESukFvE4jgQHaD3G8e0OnXfuu3U2xg6/y3jZ2pizirle7LkpWlYPqExckDpakmelWJ9tr/CQ==
X-Received: by 2002:a17:90b:4d04:b0:2ee:8619:210b with SMTP id 98e67ed59e1d1-2f782d97e04mr58425837a91.29.1738040392749;
        Mon, 27 Jan 2025 20:59:52 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:52 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:43 -0800
Subject: [PATCH v3 02/21] RISC-V: Add Sxcsrind ISA extension CSR
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-2-64894d7e16d5@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>, Kaiwen Xue <kaiwenx@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

From: Kaiwen Xue <kaiwenx@rivosinc.com>

This adds definitions of new CSRs and bits defined in Sxcsrind ISA
extension. These CSR enables indirect accesses mechanism to access
any CSRs in M-, S-, and VS-mode. The range of the select values
and ireg will be define by the ISA extension using Sxcsrind extension.

Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 37bdea65bbd8..2ad2d492e6b4 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -318,6 +318,12 @@
 /* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_SISELECT		0x150
 #define CSR_SIREG		0x151
+/* Supervisor-Level Window to Indirectly Accessed Registers (Sxcsrind) */
+#define CSR_SIREG2		0x152
+#define CSR_SIREG3		0x153
+#define CSR_SIREG4		0x155
+#define CSR_SIREG5		0x156
+#define CSR_SIREG6		0x157
 
 /* Supervisor-Level Interrupts (AIA) */
 #define CSR_STOPEI		0x15c
@@ -365,6 +371,14 @@
 /* VS-Level Window to Indirectly Accessed Registers (H-extension with AIA) */
 #define CSR_VSISELECT		0x250
 #define CSR_VSIREG		0x251
+/*
+ * VS-Level Window to Indirectly Accessed Registers (H-extension with Sxcsrind)
+ */
+#define CSR_VSIREG2		0x252
+#define CSR_VSIREG3		0x253
+#define CSR_VSIREG4		0x255
+#define CSR_VSIREG5		0x256
+#define CSR_VISREG6		0x257
 
 /* VS-Level Interrupts (H-extension with AIA) */
 #define CSR_VSTOPEI		0x25c
@@ -407,6 +421,12 @@
 /* Machine-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_MISELECT		0x350
 #define CSR_MIREG		0x351
+/* Machine-Level Window to Indrecitly Accessed Registers (Sxcsrind) */
+#define CSR_MIREG2		0x352
+#define CSR_MIREG3		0x353
+#define CSR_MIREG4		0x355
+#define CSR_MIREG5		0x356
+#define CSR_MIREG6		0x357
 
 /* Machine-Level Interrupts (AIA) */
 #define CSR_MTOPEI		0x35c
@@ -452,6 +472,11 @@
 # define CSR_IEH		CSR_MIEH
 # define CSR_ISELECT	CSR_MISELECT
 # define CSR_IREG	CSR_MIREG
+# define CSR_IREG2	CSR_MIREG2
+# define CSR_IREG3	CSR_MIREG3
+# define CSR_IREG4	CSR_MIREG4
+# define CSR_IREG5	CSR_MIREG5
+# define CSR_IREG6	CSR_MIREG6
 # define CSR_IPH		CSR_MIPH
 # define CSR_TOPEI	CSR_MTOPEI
 # define CSR_TOPI	CSR_MTOPI
@@ -477,6 +502,11 @@
 # define CSR_IEH		CSR_SIEH
 # define CSR_ISELECT	CSR_SISELECT
 # define CSR_IREG	CSR_SIREG
+# define CSR_IREG2	CSR_SIREG2
+# define CSR_IREG3	CSR_SIREG3
+# define CSR_IREG4	CSR_SIREG4
+# define CSR_IREG5	CSR_SIREG5
+# define CSR_IREG6	CSR_SIREG6
 # define CSR_IPH		CSR_SIPH
 # define CSR_TOPEI	CSR_STOPEI
 # define CSR_TOPI	CSR_STOPI

-- 
2.34.1


