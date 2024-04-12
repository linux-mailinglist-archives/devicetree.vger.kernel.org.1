Return-Path: <devicetree+bounces-58500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E52A8A24D5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:13:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A85A21F239A2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1850545028;
	Fri, 12 Apr 2024 04:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="SQx4PJ0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAF340BEE
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895110; cv=none; b=XY4BytwTqDT20eG3H5O74gZ5YPsFVY0QgDgNkTVtD+xXok9hIIbveMzunqVbW/NCrZxc0rFDQ0karmwAWepk/W/2PYSfrC2HFRDhusjhs8b1xLNKcV7en9A0rfW2fxHxzYXVU9cWa0f2hcyZcQnUhw3NnAgeB0SDGQPMbKuFz50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895110; c=relaxed/simple;
	bh=64pk6E37QO5S3SRwN9eh9ZrF4BX2yhz4FRK88BWUVBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pCVLiRIK6o41o05tAukG4CG+u7eomPjvK8IKH03iDKG+SICvRhhqJI929HTodnn4gGYkSzKF6cMbIm9cGco71+QW6grhQieVU2oFT/ouXWKgwAls8f/R94VNtnY8UIx1c28hcGFFJNbBxL5UFDvi4+pPmIxFK6hVO1//h+C8Czs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=SQx4PJ0n; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6ee0642f718so698404b3a.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895108; x=1713499908; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=smqSZCJ24Vp+hpH8xB7ogKvsAS68KCVdW0c3RLG+3UU=;
        b=SQx4PJ0nvO9HGFPSx9sPmhFGQP6dR14KqJHCTVsFChAEdEa/udbJSFnsUm+K09Hg6P
         gsLz94Fh0weCp4WyNVchkhgUwdos5ogUdnADu7Y8FZWGnDDuwUcfeTUnlkTk9tT/PbjI
         52+JzbP9+pheawoLqaHWcfcUzwXxBIBfGIGX2LFgDGoGypqC8scKY+p99dL6Jc3L4dMU
         MQns7wXTHLDndRnqRYxPgVOvB0Gtwo6601n3+PIJ6/EoOfnywIY/aS9QCro31ZAfoMgg
         cWuV2sqUi9gDUm+7pXjpCNgp46o7I3GV62EwQ2CXjpy7xwB3pte80Rs3B8GLxI1+l8Tx
         3e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895108; x=1713499908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=smqSZCJ24Vp+hpH8xB7ogKvsAS68KCVdW0c3RLG+3UU=;
        b=svSqz6L2khdnP+pFvoJ7zLFVfAYPCDls7dmJ4dWxEEAhIhDv7++C4wYWjjcM4M31eo
         90zq9ub1UR6bh6Aih/NpMBo4YWHLgw67RxdvhID43DV17H7H683hvpgPLzy22WY05eTA
         3/R8KYhaf8JZfBySkNm7C7KQqmVtQDmU080uJ9dAV6yG52OUvvzSNlYXGqPagWuVoJPE
         UBr/Gnub0n9vFj+ArPqqOXfVo0VNdlo6+XIpC/BCWkVcHNueCRQiQLtB7MFL+Eipz2Zw
         Dz6TDjOo05g32/WWOPQyjqBOBUUug1Hq0qCEomuP8y8DdGZ8WzyIUhKX0zEQPj6/zVIX
         NzdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWsV+qMSIpgwYX3SNISjGOvBSlooqUVMuv3Iiz74Kgz3uuEvMkXJCvPrbbse+ROQXOB4ps65NGEVWOxn246OsMLoP5aZ2TrhoG1Q==
X-Gm-Message-State: AOJu0Yzc9d/YN62MEIHe8TOtTszr3LfB6wrceweBAEykmpRlEeZYXKOb
	RTAt9MsQnQcT2GIX/zAB/+MCwQ6o+TXmNpLBWOVlL5iEOCrrmTBZb1lejppRkoA=
X-Google-Smtp-Source: AGHT+IFiZ0DGcHzQFItI5jBd5zIcxNTnX+sOt7qSHbY5wXcJWZGMtR6akgBptNx9TAu3tH5snZwG7w==
X-Received: by 2002:a05:6a21:788e:b0:1a7:48de:b2a4 with SMTP id bf14-20020a056a21788e00b001a748deb2a4mr2224771pzc.6.1712895107910;
        Thu, 11 Apr 2024 21:11:47 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:47 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:14 -0700
Subject: [PATCH 08/19] riscv: Introduce vendor variants of extension
 helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-8-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=5326;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=64pk6E37QO5S3SRwN9eh9ZrF4BX2yhz4FRK88BWUVBY=;
 b=0XVt5QcwQKZb4xwhtLtda13ze969xaPxAmgG19AutCd4xCrSMhG8krDjHDYDpwgueJgcP0bBS
 g/h42ue5pTND4eLMRWrDk1/LSB4akM+FRwGR3iG8RgqZCiWv+mbA2pp
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

Create vendor variants of the existing extension helpers. If the
existing functions were instead modified to support vendor extensions, a
branch based on the ext value being greater than
RISCV_ISA_VENDOR_EXT_BASE would have to be introduced. This additional
branch would have an unnecessary performance impact.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/cpufeature.h | 54 +++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/cpufeature.c      | 34 ++++++++++++++++++++---
 2 files changed, 84 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index db2ab037843a..8f19e3681b4f 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -89,6 +89,10 @@ bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, unsigned i
 #define riscv_isa_extension_available(isa_bitmap, ext)	\
 	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
 
+bool __riscv_isa_vendor_extension_available(const unsigned long *vendor_isa_bitmap, unsigned int bit);
+#define riscv_isa_vendor_extension_available(isa_bitmap, ext)	\
+	__riscv_isa_vendor_extension_available(isa_bitmap, RISCV_ISA_VENDOR_EXT_##ext)
+
 static __always_inline bool
 __riscv_has_extension_likely_alternatives(const unsigned long ext)
 {
@@ -117,6 +121,8 @@ __riscv_has_extension_unlikely_alternatives(const unsigned long ext)
 	return true;
 }
 
+/* Standard extension helpers */
+
 static __always_inline bool
 riscv_has_extension_likely(const unsigned long ext)
 {
@@ -163,4 +169,52 @@ static __always_inline bool riscv_cpu_has_extension_unlikely(int cpu, const unsi
 		return __riscv_isa_extension_available(hart_isa[cpu].isa, ext);
 }
 
+/* Vendor extension helpers */
+
+static __always_inline bool
+riscv_has_vendor_extension_likely(const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_VENDOR_EXT_MAX,
+			   "ext must be < RISCV_ISA_VENDOR_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_likely_alternatives(ext);
+	else
+		return __riscv_isa_vendor_extension_available(NULL, ext);
+}
+
+static __always_inline bool
+riscv_has_vendor_extension_unlikely(const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_VENDOR_EXT_MAX,
+			   "ext must be < RISCV_ISA_VENDOR_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_unlikely_alternatives(ext);
+	else
+		return __riscv_isa_vendor_extension_available(NULL, ext);
+}
+
+static __always_inline bool riscv_cpu_has_vendor_extension_likely(int cpu, const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_VENDOR_EXT_MAX,
+			   "ext must be < RISCV_ISA_VENDOR_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_likely_alternatives(ext);
+	else
+		return __riscv_isa_vendor_extension_available(hart_isa_vendor[cpu].isa, ext);
+}
+
+static __always_inline bool riscv_cpu_has_vendor_extension_unlikely(int cpu, const unsigned long ext)
+{
+	compiletime_assert(ext < RISCV_ISA_VENDOR_EXT_MAX,
+			   "ext must be < RISCV_ISA_VENDOR_EXT_MAX");
+
+	if (IS_ENABLED(CONFIG_RISCV_ALTERNATIVE))
+		return __riscv_has_extension_unlikely_alternatives(ext);
+	else
+		return __riscv_isa_vendor_extension_available(hart_isa_vendor[cpu].isa, ext);
+}
+
 #endif
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index f72fbdd0d7f5..41a4d2028428 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -78,6 +78,29 @@ bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, unsigned i
 }
 EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
 
+/**
+ * __riscv_isa_vendor_extension_available() - Check whether given vendor
+ * extension is available or not
+ *
+ * @isa_bitmap: ISA bitmap to use
+ * @bit: bit position of the desired extension
+ * Return: true or false
+ *
+ * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
+ */
+bool __riscv_isa_vendor_extension_available(const unsigned long *isa_bitmap, unsigned int bit)
+{
+	const unsigned long *bmap = (isa_bitmap) ? isa_bitmap : riscv_isa_vendor;
+
+	bit -= RISCV_ISA_VENDOR_EXT_BASE;
+
+	if (bit < 0 || bit >= RISCV_ISA_VENDOR_EXT_MAX)
+		return false;
+
+	return test_bit(bit, bmap) ? true : false;
+}
+EXPORT_SYMBOL_GPL(__riscv_isa_vendor_extension_available);
+
 static bool riscv_isa_extension_check(int id)
 {
 	switch (id) {
@@ -930,14 +953,17 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
 
 		id = PATCH_ID_CPUFEATURE_ID(alt->patch_id);
 
-		if (id >= RISCV_ISA_EXT_MAX) {
+		if (id >= RISCV_ISA_VENDOR_EXT_BASE) {
+			if (!__riscv_isa_vendor_extension_available(NULL, id))
+				continue;
+		} else if (id < RISCV_ISA_EXT_MAX) {
+			if (!__riscv_isa_extension_available(NULL, id))
+				continue;
+		} else {
 			WARN(1, "This extension id:%d is not in ISA extension list", id);
 			continue;
 		}
 
-		if (!__riscv_isa_extension_available(NULL, id))
-			continue;
-
 		value = PATCH_ID_CPUFEATURE_VALUE(alt->patch_id);
 		if (!riscv_cpufeature_patch_check(id, value))
 			continue;

-- 
2.44.0


