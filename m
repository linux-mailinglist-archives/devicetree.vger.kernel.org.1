Return-Path: <devicetree+bounces-89702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0949C9427C8
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CD7D1C211EA
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 07:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19881A6197;
	Wed, 31 Jul 2024 07:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="TjFR2zVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB05F49644
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 07:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722410712; cv=none; b=L1zIgeyPQoDSPsU+WfHziRJpbtFVyFzH3+Z7Ci9+cZwD9FyM2zX928XSmMUuwfeH4z3efuN5NAG6Iy9K5Mbz1zSBnmT+LyRO/Ww3VluLRddHNgWCn6Txf/KRHSIXIqxe0g0sMlpDJxN9MVp3gIcNyu/1iQSHjPUoVdMMYaED1es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722410712; c=relaxed/simple;
	bh=dBnApgLI87Wkbe9d+F1T0DW2C4b8S01J6HpN3tZlLZ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hdkqQJqTsNkVUt1kw0t2kgeCUtBQPoscjB1k8ztJSUBFhh9owunjXyo7LakEKrop1Wy9dNFMEBWvDmpy8S6lynY99MAoWEUoaMlOA2Y1q8I2ze+O01MFlsT61ukonZsqlhxdpq22dMgVVgV8b/OEEhKwntcjf0XfCLq1tUEhEAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=TjFR2zVf; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42817bee9e8so31460095e9.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 00:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722410709; x=1723015509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vrgH74i2p3t2z7NFA5O4Z9Q/nrBRVoMRKy6jFwvD/Ug=;
        b=TjFR2zVfwcbo6+U5e0iqH2XjQkdOsWe8krx4LN5CkNWJbsE3gNXkEN7zul3zjjPmBc
         mbfi4U+xB9xwBsnL0fwgUmPATjMLjOE4FZ1h8W8jpQtyv/b2jf5Dhf//jJpxlnTzlfXk
         mjXEgEN9+om0NpcAtwKjw09wvr//EvWvpv8R00YcvKTc7tgdywnoi2K1Uta3xQMp0WGs
         XxQftpQIP486i7whP5AfYbQc9syTYsSPelLaohBDrMEBtjkeeDBldNTqWE57lKxaR2VR
         CDzN9DOCH3dKfCvmx2BFr1GtZX4DaAoVZpKsZL1Guj7xijY5hsSHzqsjJaiP+TMqHkJb
         EmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722410709; x=1723015509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vrgH74i2p3t2z7NFA5O4Z9Q/nrBRVoMRKy6jFwvD/Ug=;
        b=WxP6yAZVJTINVRs49NecvXPRLT2zv6x8X007IiNX9fUDtsiUBF0smgoda+cPudk+vF
         NBW+Jtl+YD0877JBPWnNI+/z7pgG3QCBa26f5wc+KHXzoEtmRGCcJPBBrgW4p4yhIsG1
         UwQGGkGsQ0Y05IEona/SxWcAySlcsG0Ogm700oelwEkX+/RxjuMNMbyh8ihJ4kmMTF3R
         DwgddHyLzmhY2pc5MDzVaRsbv2pqHrM/7zIq8lCUHlvNj/RQqmyIhDa+r7Ry76Jk+3PH
         Qu9V5LApiNvseOlVTzOLFvV8SPdznnhH2Qv3JCNy4s0+Lr19a+nhf15ZOy31c1uyJzR1
         S6GA==
X-Forwarded-Encrypted: i=1; AJvYcCVfIMITd7ktTVKV/ibarCjKYa0EnXslpXk6XHTgSZVtIqBdCjjlg8WncmASakEqeLdWedJ1HrMs+Bj0pMT80bPz1wVc5AksBicbug==
X-Gm-Message-State: AOJu0Yz4IFe4YwHb8xvT63iqv1fXLsxKNgSJ78aOPW7sklffRP140XEl
	pFMNQI8x6Iv3CRXv2HwsHsxEW+KuYatLX5mCFEMjdLZAwZdwTaviMJg0+S/nDrg=
X-Google-Smtp-Source: AGHT+IH2fhRxtLzhZGksxU10vpYRAvkVREwWprJnjJIWdgKEaDVtJYoKkJRwph0ht118TITdUlVmFw==
X-Received: by 2002:a05:600c:3511:b0:428:3b5:816b with SMTP id 5b1f17b1804b1-42811d6e2ddmr96720825e9.3.1722410708829;
        Wed, 31 Jul 2024 00:25:08 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282bb226b0sm10529075e9.46.2024.07.31.00.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 00:25:08 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v4 01/13] riscv: Move cpufeature.h macros into their own header
Date: Wed, 31 Jul 2024 09:23:53 +0200
Message-Id: <20240731072405.197046-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731072405.197046-1-alexghiti@rivosinc.com>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

asm/cmpxchg.h will soon need riscv_has_extension_unlikely() macros and
then needs to include asm/cpufeature.h which introduces a lot of header
circular dependencies.

So move the riscv_has_extension_XXX() macros into their own header which
prevents such circular dependencies by including a restricted number of
headers.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/cpufeature-macros.h | 66 ++++++++++++++++++++++
 arch/riscv/include/asm/cpufeature.h        | 56 +-----------------
 2 files changed, 67 insertions(+), 55 deletions(-)
 create mode 100644 arch/riscv/include/asm/cpufeature-macros.h

diff --git a/arch/riscv/include/asm/cpufeature-macros.h b/arch/riscv/include/asm/cpufeature-macros.h
new file mode 100644
index 000000000000..c5f0bf75e026
--- /dev/null
+++ b/arch/riscv/include/asm/cpufeature-macros.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2022-2024 Rivos, Inc
+ */
+
+#ifndef _ASM_CPUFEATURE_MACROS_H
+#define _ASM_CPUFEATURE_MACROS_H
+
+#include <asm/hwcap.h>
+#include <asm/alternative-macros.h>
+
+#define STANDARD_EXT		0
+
+bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, unsigned int bit);
+#define riscv_isa_extension_available(isa_bitmap, ext)	\
+	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
+
+static __always_inline bool __riscv_has_extension_likely(const unsigned long vendor,
+							 const unsigned long ext)
+{
+	asm goto(ALTERNATIVE("j	%l[l_no]", "nop", %[vendor], %[ext], 1)
+	:
+	: [vendor] "i" (vendor), [ext] "i" (ext)
+	:
+	: l_no);
+
+	return true;
+l_no:
+	return false;
+}
+
+static __always_inline bool __riscv_has_extension_unlikely(const unsigned long vendor,
+							   const unsigned long ext)
+{
+	asm goto(ALTERNATIVE("nop", "j	%l[l_yes]", %[vendor], %[ext], 1)
+	:
+	: [vendor] "i" (vendor), [ext] "i" (ext)
+	:
+	: l_yes);
+
+	return false;
+l_yes:
+	return true;
+}
+
+static __always_inline bool riscv_has_extension_unlikely(const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_EXT_MAX, "ext must be < RISCV_ISA_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_unlikely(STANDARD_EXT, ext);
+
+	return __riscv_isa_extension_available(NULL, ext);
+}
+
+static __always_inline bool riscv_has_extension_likely(const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_EXT_MAX, "ext must be < RISCV_ISA_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_likely(STANDARD_EXT, ext);
+
+	return __riscv_isa_extension_available(NULL, ext);
+}
+
+#endif
diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 45f9c1171a48..c991672bb401 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -11,6 +11,7 @@
 #include <asm/hwcap.h>
 #include <asm/alternative-macros.h>
 #include <asm/errno.h>
+#include <asm/cpufeature-macros.h>
 
 /*
  * These are probed via a device_initcall(), via either the SBI or directly
@@ -103,61 +104,6 @@ extern const size_t riscv_isa_ext_count;
 extern bool riscv_isa_fallback;
 
 unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
-
-#define STANDARD_EXT		0
-
-bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, unsigned int bit);
-#define riscv_isa_extension_available(isa_bitmap, ext)	\
-	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
-
-static __always_inline bool __riscv_has_extension_likely(const unsigned long vendor,
-							 const unsigned long ext)
-{
-	asm goto(ALTERNATIVE("j	%l[l_no]", "nop", %[vendor], %[ext], 1)
-	:
-	: [vendor] "i" (vendor), [ext] "i" (ext)
-	:
-	: l_no);
-
-	return true;
-l_no:
-	return false;
-}
-
-static __always_inline bool __riscv_has_extension_unlikely(const unsigned long vendor,
-							   const unsigned long ext)
-{
-	asm goto(ALTERNATIVE("nop", "j	%l[l_yes]", %[vendor], %[ext], 1)
-	:
-	: [vendor] "i" (vendor), [ext] "i" (ext)
-	:
-	: l_yes);
-
-	return false;
-l_yes:
-	return true;
-}
-
-static __always_inline bool riscv_has_extension_unlikely(const unsigned long ext)
-{
-	compiletime_assert(ext < RISCV_ISA_EXT_MAX, "ext must be < RISCV_ISA_EXT_MAX");
-
-	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
-		return __riscv_has_extension_unlikely(STANDARD_EXT, ext);
-
-	return __riscv_isa_extension_available(NULL, ext);
-}
-
-static __always_inline bool riscv_has_extension_likely(const unsigned long ext)
-{
-	compiletime_assert(ext < RISCV_ISA_EXT_MAX, "ext must be < RISCV_ISA_EXT_MAX");
-
-	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
-		return __riscv_has_extension_likely(STANDARD_EXT, ext);
-
-	return __riscv_isa_extension_available(NULL, ext);
-}
-
 static __always_inline bool riscv_cpu_has_extension_likely(int cpu, const unsigned long ext)
 {
 	compiletime_assert(ext < RISCV_ISA_EXT_MAX, "ext must be < RISCV_ISA_EXT_MAX");
-- 
2.39.2


