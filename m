Return-Path: <devicetree+bounces-97770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2996373C
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 03:02:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B1361F2318B
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 01:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FCC36B0D;
	Thu, 29 Aug 2024 01:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CNcsp7sl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED26208A5
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 01:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724893320; cv=none; b=Vr8yOHroBWf4VFhROPlAX6CwQUpSfCzFJ0w4UxxuSz+r+A4LUSw8+zdRkIe2xmCK/w4jgxc32zCJNIjyvLWn29PQpqdJpI1e6lHCqElVnhTTalQpm5orsDNmKIhj7O/xjFEAbfe0UetcO6Nq9/ps6N4uUJ6yyC7ZeoKspcWFlhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724893320; c=relaxed/simple;
	bh=UJjhC6mwAByWdESGrSD/skLO6hngO0x/+geXvfRiNMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UfXwAOEx5Qme/P2fulqC7zObFYR+Wi+4/0OeY5Q0/gYoN6K5Ld6GfM7gwMd3qM2jTOMHvV0Xdkm6Zvl7Hkj3+f8xESE/Lw3ItMnGZIn840/kSeoqGwxa1qjIc2vZ4Lzwh0xPJGJ1K9RM0KKyi5WYWhjh0M12yXmHdLeToPa6keU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CNcsp7sl; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-714114be925so100286b3a.2
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 18:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1724893319; x=1725498119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LvnGAjQNY6ccaQDDneANEaSxBsVmyy75aYzWJepO5sk=;
        b=CNcsp7sl1D6T/h9A0/d3jhf/ACDAVfQTmPI/nrJU73FxBMiuSsSLgvGoh4vuDQ2CiZ
         nNyhWjY1Yi/04Nonegw8nmV31xLyuEDmOBSQQ8SGiuLrIvOmBbDXsJnod8ufSM5fbvs7
         FtcvCXMUcH7VVd9+ZT3b/JpFO6xogmJQLjeS1ABGGZXufxfMXMTp/Hjw0NQ1CktKXR5o
         c8va5NuXgn8MJDGDZsEeecqH0Wx6DmzVc5N9ASyiZJyOhx5QOYFVaoqqfkofkyd8lRTo
         pFhOFxb8Jsbo9COTJCLAVavDEeL60QgVynQKZ52lzfg6lO/aqaqQttmGzCwrLfJLKLor
         5n0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724893319; x=1725498119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LvnGAjQNY6ccaQDDneANEaSxBsVmyy75aYzWJepO5sk=;
        b=OwddhshduTjzfnplcUXE5KSJv1EYSlmET0ZJ6Vw+SzZNcZgf8VLQmxP6LTXeiurnmi
         NVFN17iSpSIoq9yg1M+fOckm1p9Xbwrwd5uhiYKG4UmDgftigV/kLzbE3Rsi/LRLl7Pd
         ggMkSw/6uVuXS6RL1MmbcDnVzvR4h07Gt/UQ0Vu94nSwaeqqnhBx6/MS5NtUk9n5b3DU
         svE6wDqClXC0EyHPP2rlQPF15mN3Tv1paxdkU5hlVr1T9Cv4PQR2DZtOFevEtZ0Q9MVX
         YAuitdZjopSWDQWSUkYg4n3/mUgMyQbb4kLuWJutCJpyrUEssXbHXSWG/ipX/eyzvxiQ
         1Ybg==
X-Gm-Message-State: AOJu0Yz47b/5uNxcTI3/Amige9+ypWQckxj5e8De+vaF6nO989PAlRz2
	q6RSP5bUXgx1bEj59DlFVEvEFDU2E+HGhHd/rGKCMUhJxfTl0dFWHWaBG0hYFw7AliavnDeX7FR
	Z
X-Google-Smtp-Source: AGHT+IEGopUyFxNYKdi1Fm00/px6XJ4FQ28S5BEmNcwqyBZ90BZIGqFp0Q1Tx11Ndv7+QQzMV9yqMA==
X-Received: by 2002:a05:6a21:3949:b0:1c8:92ed:7c5a with SMTP id adf61e73a8af0-1cce1011e48mr1298963637.22.1724893318753;
        Wed, 28 Aug 2024 18:01:58 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e5576a4dsm89670b3a.17.2024.08.28.18.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 18:01:58 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v4 03/10] riscv: Add CSR definitions for pointer masking
Date: Wed, 28 Aug 2024 18:01:25 -0700
Message-ID: <20240829010151.2813377-4-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240829010151.2813377-1-samuel.holland@sifive.com>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pointer masking is controlled via a two-bit PMM field, which appears in
various CSRs depending on which extensions are implemented. Smmpm adds
the field to mseccfg; Smnpm adds the field to menvcfg; Ssnpm adds the
field to senvcfg. If the H extension is implemented, Ssnpm also defines
henvcfg.PMM and hstatus.HUPMM.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v3)

Changes in v3:
 - Use shifts instead of large numbers in ENVCFG_PMM* macro definitions

Changes in v2:
 - Use the correct name for the hstatus.HUPMM field

 arch/riscv/include/asm/csr.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 25966995da04..fe5d4eb9adea 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -119,6 +119,10 @@
 
 /* HSTATUS flags */
 #ifdef CONFIG_64BIT
+#define HSTATUS_HUPMM		_AC(0x3000000000000, UL)
+#define HSTATUS_HUPMM_PMLEN_0	_AC(0x0000000000000, UL)
+#define HSTATUS_HUPMM_PMLEN_7	_AC(0x2000000000000, UL)
+#define HSTATUS_HUPMM_PMLEN_16	_AC(0x3000000000000, UL)
 #define HSTATUS_VSXL		_AC(0x300000000, UL)
 #define HSTATUS_VSXL_SHIFT	32
 #endif
@@ -195,6 +199,10 @@
 /* xENVCFG flags */
 #define ENVCFG_STCE			(_AC(1, ULL) << 63)
 #define ENVCFG_PBMTE			(_AC(1, ULL) << 62)
+#define ENVCFG_PMM			(_AC(0x3, ULL) << 32)
+#define ENVCFG_PMM_PMLEN_0		(_AC(0x0, ULL) << 32)
+#define ENVCFG_PMM_PMLEN_7		(_AC(0x2, ULL) << 32)
+#define ENVCFG_PMM_PMLEN_16		(_AC(0x3, ULL) << 32)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
 #define ENVCFG_CBIE_SHIFT		4
@@ -216,6 +224,12 @@
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
 
+/* mseccfg bits */
+#define MSECCFG_PMM			ENVCFG_PMM
+#define MSECCFG_PMM_PMLEN_0		ENVCFG_PMM_PMLEN_0
+#define MSECCFG_PMM_PMLEN_7		ENVCFG_PMM_PMLEN_7
+#define MSECCFG_PMM_PMLEN_16		ENVCFG_PMM_PMLEN_16
+
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
@@ -382,6 +396,8 @@
 #define CSR_MIP			0x344
 #define CSR_PMPCFG0		0x3a0
 #define CSR_PMPADDR0		0x3b0
+#define CSR_MSECCFG		0x747
+#define CSR_MSECCFGH		0x757
 #define CSR_MVENDORID		0xf11
 #define CSR_MARCHID		0xf12
 #define CSR_MIMPID		0xf13
-- 
2.45.1


