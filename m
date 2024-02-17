Return-Path: <devicetree+bounces-42907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CAF858C18
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 01:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C761282C57
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 00:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF04D53C;
	Sat, 17 Feb 2024 00:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="UEAeb3zJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C813D518
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 00:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708131501; cv=none; b=lscCSvw2x36X8JtHwZpg9owRp01WK0L7qR1zaeGquFdfCvmJkX3Dfx0KuLMDYyXbrClQKSSawuGIuJK4kyiPgOd4OjOjqjH0rwoQ4dlATwnF+c0JyRdKmp8c2MJLLA1YfaIwQtNh2yGvaDzY7p8vwPX8poNcR4b3nCz6t82MOgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708131501; c=relaxed/simple;
	bh=uw+8cPgjd8G1iN4gvlox/TQJ88GwuqEVjAxU45kCxcU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uB33A274MFkcA+GVtspnCMtWsa0BXr1HuY2tC8+Fm5KMM0n6EuCQ/gSFpjYWmVaC950Qmyge9N9aN4tNExOgW5mIjeQ3TM5eMAIqXTepn6RDcRtHH0zZrP0l4S6TJXbZs+LQLM/Jd3Y5yLV3fs+q7755ca0dhd6HrgIMegq3ydA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=UEAeb3zJ; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6e08dd0fa0bso2239306b3a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 16:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1708131499; x=1708736299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQNMm6dQ5GKoaAsA3+Ylkhz7wa/7Q2Lc0P2/ZDz1Yac=;
        b=UEAeb3zJa0rw2puyo+xqm52A5BUY1tXqI2D4doXG9YC4th8E3nLrBTlGSZBJekEszo
         nhE36qhc8f5dffk0a4uVhAZRDwRGTc/jXSs70uT4w3SulGSCs8cplj0uNFhwRespzSVZ
         81HpOMeaVua+or3ZXkSwt79K27KCxlZ3/b3TVCg+VT0aK4S7WaNpsBI5arXZkQ4VFJ8y
         /8utyrn4zJH4z90IsHYNe/1mFdOtzr8lV+zRp57R+l7Q28HJCVLylLwl4dT3Gf7QXOtu
         HgzkwoR6X0NzWeTXOjexH1/Ntd9KlrdkQMZDh5VK3L+MeGM7Ft1MkEWh6PHgUoKQgXpG
         honQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708131499; x=1708736299;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aQNMm6dQ5GKoaAsA3+Ylkhz7wa/7Q2Lc0P2/ZDz1Yac=;
        b=Gs19Gcaz2Ao2CdDHhC3Uvtb5JT5W7XZyd0+djUjVCEf4/c99fBr1FOd1Y/y46TJtf+
         FHp1NaIBaHtdtc0lexJ0Z2m8KE6lP8ou5Vn8EXhm2Jq9exwToxNxEwRR9gPp1sYiC6uo
         Bdqgs0SmLiWsMbgKfTDngUPFQ/95fR9riHeiIrMVuhN26OBNPUgAE5wMYXgAOjN7aCki
         nECMkBBglL2NbvZp9fTBbf1D6fd1iGPHkI9ImoZzwZkHQcNdbdTpUyOK8tZhIjcPGJ4A
         +Ezj3G64LJnFHDLp0oBGCw5yaWuUKIjm2qmhmWsFXRqRTCYv+lkq+QK1Btg3lzQ9j76O
         95XA==
X-Forwarded-Encrypted: i=1; AJvYcCVxfbOjCofVqGTJHAHf3VZglPcdh0BVIlilM0Yg/owi0QYd3pGrGf6CvV4LvGs55L8xCxPO5tPT729CEY5nz0uR2EKFOeNlfGoY5w==
X-Gm-Message-State: AOJu0YynaG7aIQeMVKsXPjsxDVUKO3ggdSlPhElWHJ87aiknnwL1MjD+
	1aMA+Va7Uv4plAe/h36LyKwCL+M73O1QF+YsWO4lXuaTmBsjJmDrTdS9dM9YazQ=
X-Google-Smtp-Source: AGHT+IHBAccR7wewW50qDb/5Fg2zOt9vMTs18qGTYlJw9BsFoZL8lyrT4M/cgU7xwOtlRTzAVrdVuQ==
X-Received: by 2002:a05:6a00:2451:b0:6e0:50cb:5f0a with SMTP id d17-20020a056a00245100b006e050cb5f0amr13240534pfj.12.1708131499011;
        Fri, 16 Feb 2024 16:58:19 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d188-20020a6336c5000000b005dc89957e06sm487655pga.71.2024.02.16.16.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 16:58:18 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
To: linux-kernel@vger.kernel.org
Cc: Atish Patra <atishp@rivosinc.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Christian Brauner <brauner@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	devicetree@vger.kernel.org,
	Evan Green <evan@rivosinc.com>,
	Guo Ren <guoren@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ian Rogers <irogers@google.com>,
	Ingo Molnar <mingo@redhat.com>,
	James Clark <james.clark@arm.com>,
	Jing Zhang <renyu.zj@linux.alibaba.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	John Garry <john.g.garry@oracle.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Kan Liang <kan.liang@linux.intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kvm-riscv@lists.infradead.org,
	kvm@vger.kernel.org,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	linux-doc@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Weilin Wang <weilin.wang@intel.com>,
	Will Deacon <will@kernel.org>,
	kaiwenxue1@gmail.com,
	Yang Jihong <yangjihong1@huawei.com>
Subject: [PATCH RFC 02/20] RISC-V: Add Sxcsrind ISA extension CSR definitions
Date: Fri, 16 Feb 2024 16:57:20 -0800
Message-Id: <20240217005738.3744121-3-atishp@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240217005738.3744121-1-atishp@rivosinc.com>
References: <20240217005738.3744121-1-atishp@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kaiwen Xue <kaiwenx@rivosinc.com>

This adds definitions of new CSRs and bits defined in Sxcsrind ISA
extension. These CSR enables indirect accesses mechanism to access
any CSRs in M-, S-, and VS-mode. The range of the select values
and ireg will be define by the ISA extension using Sxcsrind extension.

Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 510014051f5d..0a54856fd807 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -302,6 +302,12 @@
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
@@ -349,6 +355,14 @@
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
@@ -389,6 +403,12 @@
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
-- 
2.34.1


