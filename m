Return-Path: <devicetree+bounces-161392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F2AA73EA6
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3875177EB2
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75EB621ADAB;
	Thu, 27 Mar 2025 19:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vWQhcYAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8701C84C3
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104178; cv=none; b=OdfX+g2YbRRomq6X7Yxci/u4fM4lA9GN6BDrD5QL3NxO+j0pbAKUsYydGm7oVio9/GtkEPzjTvmR9IPpe/E9nTRSa1vZKdC6R7Fo6tw3TwHJFgFKJ5uDqumCXf8Ekq91uzfsIKQ155RukLombCE24D7n4exbaGc/NWs4a/JB96s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104178; c=relaxed/simple;
	bh=lADlo4V1a03EPhWe2c//gfMZE1TxUc6AVp1nzH2o+xo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sqyDGSydHhU4rxaZ3dUwiJDS751//hx7btjtP3Boa/kDKIceAxpvZJG31xoLkgD+SKkdByCmJPVauyF0AFZCr3GhrfPjakrRzU3LX+b1lBLTOq8JWF2E3LFXPRsx3Eayj9czHThOJmcw4OXZwXnu01NGZ/hw16rjFkm7K61qiCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vWQhcYAB; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-303a66af07eso1936344a91.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1743104175; x=1743708975; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SNiDOpzl6VVeJNgjlyJ9nrrgFT7wIm7QDa1NpBXt1X8=;
        b=vWQhcYABUuZduRtg3+Y6XvbEJJ6Apl3UwocRUFru799z/D1KGOJtZoi70/FyLMGWZB
         KJpwxv7S8s5shZ6lcK8tTqy9CETfqwnOxUaVPe2OkY2FpyVumcmpCfmV4NNIo16clnSw
         mcfwWD1AhBw7F0iLoSwEHRN0129HODMsLX8tycuJXe2NJmTfXpnwRDuypW6tOZgtuulk
         lKEwAgX7dSG6lHWx2Nak0cw1StUUYbQVzLyUHEx1cVd8755mSGX8SRw2QRgQ+1KO7frc
         qQu1X9cOYn1e+4mR5vXXPqZgnC8XOsgglPPgQ+ddP/Kq+sA45UhnjmbBoNiwpzVkZ2FD
         ezmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104175; x=1743708975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNiDOpzl6VVeJNgjlyJ9nrrgFT7wIm7QDa1NpBXt1X8=;
        b=ivO0DB0DaGtdCUmbQdhF/B7xn4n+6sIWcRfgVq+27eyZBfyIxeNfD8kpnQhtKtUN5G
         u8CU9syBzETfQzABhJPZxZn+XWbbZlegI5cNN3PXKKKge0DdYERZ+aLO6D74AUecoo3y
         R5XzOKB6thNT0Us9/kGKVguf80BV8kkuujjgy8eYsIhbXiTYdL/+5HgpAPjwC4GzilIi
         4SErqXMH2MaJGx6lr0MOSXh0lUgfEwHVopYRrEfDILRoGmjU3M6n23ZLrwAlTsCBD7jW
         dtifLgYj19nFBfO8lZaahfbWVX/4s4squnGtVjBE4j53gRqHSI9/mmt/yv8a9Uq+Ch5v
         w7Xw==
X-Forwarded-Encrypted: i=1; AJvYcCX7gqo8D8IKnswf7IFrf4FLjMf3rkgNTXFWMy1jzodHhyx5jEG93pHoRmLgWy3CJBCtbxgLhzgPyF5z@vger.kernel.org
X-Gm-Message-State: AOJu0YzugfF3OoB9kHY+6YJ4Oui1dg6RAV7kP30lLkC9TE4ChXT2ieS3
	0L3zUwE6mK4Hag72nCyoBeY2q+jEpEXMPSTP4HIvQZ8jJyfLoQopOaf2VrNOCT0=
X-Gm-Gg: ASbGncsh3Myqw5eOuRLJTRihb/7So7UEneJn905QdYJEbscj/XiR6LopMLcWuEK1Lel
	TzgxGlD2Z8gSLqFLsF0KNQ1/GmBXTCtIaJ8OdXUb5o19MqRhZX/0iX8gfC7ByuVbYvVZazYnHn5
	o67kM3Nqy77Qw9K/tzjg9Z41ec5OSmi5zm1G43EAX+Jg7FNCrj+7GWgWoyO481dWX0N4fF3tpLW
	3Zkou6/UOpmiIS8BLRflp8haUT3J/L6bymbPVSf8RcG21BkACqK07Ej+2FILpFs+uYuPVLyRMOT
	5f2sgtR1xSC2jnZT6Jxoj0aJmGoS/7jboMVizkZz9Ox6P1jDfE9YqYd+mA==
X-Google-Smtp-Source: AGHT+IE+y9OOA1EBKtpBON1MPRGyOf1+3dniyWNGs1euEGYpPv+8H/XM0XTNXU8WsHLC0qF7ObKE3w==
X-Received: by 2002:a17:90a:d44f:b0:2ea:a9ac:eee1 with SMTP id 98e67ed59e1d1-303a7d6a7ffmr7665632a91.10.1743104174834;
        Thu, 27 Mar 2025 12:36:14 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f6b638csm2624220a91.44.2025.03.27.12.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:36:14 -0700 (PDT)
From: Atish Patra <atishp@rivosinc.com>
Date: Thu, 27 Mar 2025 12:35:43 -0700
Subject: [PATCH v5 02/21] RISC-V: Add Sxcsrind ISA extension CSR
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250327-counter_delegation-v5-2-1ee538468d1b@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>, Kaiwen Xue <kaiwenx@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>
X-Mailer: b4 0.15-dev-42535

From: Kaiwen Xue <kaiwenx@rivosinc.com>

This adds definitions of new CSRs and bits defined in Sxcsrind ISA
extension. These CSR enables indirect accesses mechanism to access
any CSRs in M-, S-, and VS-mode. The range of the select values
and ireg will be define by the ISA extension using Sxcsrind extension.

Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
Reviewed-by: Clément Léger <cleger@rivosinc.com>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 6fed42e37705..bce56a83c384 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -333,6 +333,12 @@
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
@@ -380,6 +386,14 @@
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
@@ -422,6 +436,12 @@
 /* Machine-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_MISELECT		0x350
 #define CSR_MIREG		0x351
+/* Machine-Level Window to Indirectly Accessed Registers (Sxcsrind) */
+#define CSR_MIREG2		0x352
+#define CSR_MIREG3		0x353
+#define CSR_MIREG4		0x355
+#define CSR_MIREG5		0x356
+#define CSR_MIREG6		0x357
 
 /* Machine-Level Interrupts (AIA) */
 #define CSR_MTOPEI		0x35c
@@ -467,6 +487,11 @@
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
@@ -492,6 +517,11 @@
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
2.43.0


