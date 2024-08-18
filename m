Return-Path: <devicetree+bounces-94492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C156B955B5B
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E152C1C209D4
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE41D268;
	Sun, 18 Aug 2024 06:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yaRqC3H6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E68C14285
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963006; cv=none; b=q0yqr7krRFrXbUpfh3OP+5dqLxKQc90AhfoRRgBHvFrSA87lv3QKS1ma5cYT6ish8l4B7iu9npHrefqRG7mritl1LYvd4epeUONBktXNRVznZ/03UfNoBnDQ9NR8ng0MsLG9PT14cA8bQK6qnm//RFllZFM2wg0R3DTLCEF/50Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963006; c=relaxed/simple;
	bh=3vAJDoEpGiFg4mI/K3dJV6TDhU2SVBU3QlsfeYAyaSY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SRx8VkhwDtraCQ4jU1QAs7qnLtFrfzMCCD9vUFmOPFkr7BEaU6E67o5FNNdkpAPpXfHPxTf9rcVY1K/rfYDEagUt6aWQzQmWOd9RWNqqFVz3B2zvDotK35vlUMCQmpTnOTZQK60PV+18E0X0KGHGqga8soXCt1bK21aK575qt/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yaRqC3H6; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-371afae614aso585097f8f.0
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963003; x=1724567803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ll6PO6fq7jekV3yT3oRS1DwKakMdlEGxiDtEOFhGbwU=;
        b=yaRqC3H6BddAUcVAIIm5XKgPrKVM6Es6Rh9hwBvijOgOJ5DgscQDmRSs6NYazp1wxV
         5Txwp9nUhJpjIB2tFbMGj7lxchQ23HnDXoUNKNeYK57HtXTLUBrfeNrFKYscD2eFTyzB
         GCczJoK1HEFxtiJ3byYGW/Hm0BbL4O0tczOs15r6QYwQi5X1NS6xcd2C4PYgoqT4dXg5
         2P8DVlQ80pygGY8vMSYPv9w91DenJottsjPuWbHhBbu9CkoNQJtLhngonhwiTcfYy5eG
         vRDHc+eLSXbSFQ8AgUg0I8XIXYxs0U9CoMnMJBCh8tTs7oTATS+hWBdmM2pUxGWhKcQ0
         nglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963003; x=1724567803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ll6PO6fq7jekV3yT3oRS1DwKakMdlEGxiDtEOFhGbwU=;
        b=Dkj04IK6wKSK2sQIau2kcOT0upXUtpdnZPNUYKjBo2hrEkWpVsLpIbsG+0orI4Onze
         znFcJFR2XtgPQWMbFiFu1nlg4xtJWpEKw+2DVL5dwnEiLBFMqjWLtH7OTrWvyHwJphKe
         K5tqpoDk50FiKApNCEYRNnm319Syl1PCabjl5ZLRQNVW6UGyVVAkgvpQ/hNJ2TqmdBsl
         69dMO2cXwP2lM0MByWuLeh+i+E8/lLv2u/+NESnwPxkE81XJf49Cj2729F1u120bDjIJ
         jhVljRxlN0+oJIGecjUpM279ma7UUY78C2kVYhka2sH+ed6P/vKLz1x3xz5RvU/aHBH2
         navg==
X-Forwarded-Encrypted: i=1; AJvYcCWk4x7+rkqG/nOnXTO76uOw3yO37biJPPk6211T0WFJI4WGe7KeB73kxjluD7XcnMJiBAISia0uUz5kRxcNvRkjXTx1PavZSAekpA==
X-Gm-Message-State: AOJu0Yzdu62SztjLk86n6DY/xgWDWqyCv0aW16b4W1HtW7vedukB3OVk
	7h/ZEcluVMWXDDpHEGW6tDKZWcHLNk20tE8Iz8Wkm9AVOKALH74pySkkkqn0d38=
X-Google-Smtp-Source: AGHT+IEMupb/eaKm5/+VPG7gQL1BT1ElhtPyyJ9e/FdDd2FVBOCIDCIy/gU0Zn16LvTEMnl2YJ5n3Q==
X-Received: by 2002:a5d:4148:0:b0:368:5ba0:622 with SMTP id ffacd0b85a97d-371946a4203mr4585432f8f.44.1723963002780;
        Sat, 17 Aug 2024 23:36:42 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189896de9sm7251293f8f.75.2024.08.17.23.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:36:42 -0700 (PDT)
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
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>
Subject: [PATCH v5 01/13] riscv: Move cpufeature.h macros into their own header
Date: Sun, 18 Aug 2024 08:35:26 +0200
Message-Id: <20240818063538.6651-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240818063538.6651-1-alexghiti@rivosinc.com>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
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
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/include/asm/cpufeature-macros.h | 66 ++++++++++++++++++++++
 arch/riscv/include/asm/cpufeature.h        | 61 ++------------------
 2 files changed, 70 insertions(+), 57 deletions(-)
 create mode 100644 arch/riscv/include/asm/cpufeature-macros.h

diff --git a/arch/riscv/include/asm/cpufeature-macros.h b/arch/riscv/include/asm/cpufeature-macros.h
new file mode 100644
index 000000000000..a8103edbf51f
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
+#endif /* _ASM_CPUFEATURE_MACROS_H */
diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 45f9c1171a48..87ed88fc950d 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -8,9 +8,11 @@
 
 #include <linux/bitmap.h>
 #include <linux/jump_label.h>
+#include <linux/kconfig.h>
+#include <linux/percpu-defs.h>
+#include <linux/threads.h>
 #include <asm/hwcap.h>
-#include <asm/alternative-macros.h>
-#include <asm/errno.h>
+#include <asm/cpufeature-macros.h>
 
 /*
  * These are probed via a device_initcall(), via either the SBI or directly
@@ -103,61 +105,6 @@ extern const size_t riscv_isa_ext_count;
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


