Return-Path: <devicetree+bounces-93534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29273951657
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7E171F2367D
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82AA7143C5F;
	Wed, 14 Aug 2024 08:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="W42RiHeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141AC143738
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623286; cv=none; b=EY7xkDbj9v5+0A3OysNgThPKn6WYmNaXGdJ63L8BkDGkCMTmrppW1gnrWFckg07euI9pvYoI+lUwybHBWubIPA8Qxd2GhMvUGRuUGOeEhGA9vl39WSZi7/qXMqyWe9CgqI0N6PM//bGQUnwslVkgNJtoyRvGF3rx8l8K+l0zt80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623286; c=relaxed/simple;
	bh=wv7ju32JlNOyS4iPT+M/JCXiJ4u+CCbb5zDIs4Yosns=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UG2InEyHoeRUkAT1mtkUgn6MkMBWhifcmoOZJjTMkWvbCn+pil7yhBtv08Ac429pWLj00tBs8zKjYgmBXKal+OBOyLBArxNbkeqGuTMzCszp3uBxbZ1sKZEG723Nm41tFReYv0nw8/XPYkztu6O6zYr200SOn23kNQjLvE8NN/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=W42RiHeb; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1ff1cd07f56so53178535ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623284; x=1724228084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSgZOujLUXDH9o1etb/5haehfTStX4t+faWX1F0nYt8=;
        b=W42RiHebbZcSbkwEn7xFP1OhQpGfpoUHUOIX4TeVEFi1zShWokLFaj1bJByucahZ/J
         yC7IBprwoR28Xmq6JUguK5zXXEwBPqRUehtAdDxUxleryYhdHPVQqsQiMQG09qIwZDmv
         Ks72Hc7BNV4QZKr3wNdFaXOFfMTn6R3i7ZbJ9fJm7F8ag7Ar3P5RhlCbEtT+17ENhiwW
         L/ApkrqLrNA8JRUwbyUU8pMJetVXkJhDszFVMvihHLvnV85bzc+vMftvZw7+lm7Cnlx2
         AXIW2CmuawLM8RiQbLYUJGdya6vEbPIIt/UM4Hc7V9riVR3q1gnGPmmyuvPEi3nOK4FQ
         nBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623284; x=1724228084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZSgZOujLUXDH9o1etb/5haehfTStX4t+faWX1F0nYt8=;
        b=IywOHaGbWdiiSTJIkB/5VqU/tPhGpMGlUHXx1UYszIKkzzB69cf6YH6dnQuDQYxppG
         hCvQa0S4PnVg8pAGFXH4HPrjEWT2gzoJ6LYFDiwRpQRotumwSV+pgMI6NKAroy7W4lZV
         1PocrvJ734XHplFa4BHN0PeeiTkY6Pri1gc8/hIFClCequtLNdazpR5iyRbSX2e/lOs0
         vDZKKipvaUx8HgsGlSdyj4JjYZsSQ0xkkHRIYrMn1LkpVU7XLzvE/ZWmlJxB5nWKkHpG
         EwLTGO5KjE4ZgUtG6JHMFkUsQW1mzGCyLsVqZFX03pbKtHDvYRHm51nxf+w20aHr9EQB
         cwbQ==
X-Gm-Message-State: AOJu0Yyi4hhthls+yg2RkqpetH65IdnUTMJgxUYbvMezfYgjdUA6PIg3
	jZLMgWLEsJLGU9M5ZXdr/tlmtcWHd0sbIKhzp0S+dWdmA3/tyd3FS6/HXRvW82o=
X-Google-Smtp-Source: AGHT+IG+a2m+/9sMeNFVsmOPDs6cpFe3Chf10rX/9ctWB1qlB00BUSlmUsaT4HBT1vf9N63Oh33I5A==
X-Received: by 2002:a17:902:ecd1:b0:201:de37:349d with SMTP id d9443c01a7336-201de373639mr4868195ad.54.1723623284293;
        Wed, 14 Aug 2024 01:14:44 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:43 -0700 (PDT)
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
Subject: [PATCH v3 03/10] riscv: Add CSR definitions for pointer masking
Date: Wed, 14 Aug 2024 01:13:30 -0700
Message-ID: <20240814081437.956855-4-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240814081437.956855-1-samuel.holland@sifive.com>
References: <20240814081437.956855-1-samuel.holland@sifive.com>
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


