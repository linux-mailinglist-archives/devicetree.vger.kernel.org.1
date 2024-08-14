Return-Path: <devicetree+bounces-93533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F1951654
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4F9D1C21D4F
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64C6142E70;
	Wed, 14 Aug 2024 08:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="NAaHfk4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE5F1422D3
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623284; cv=none; b=mkYQt7kMswsGO3GtVI8K5e94uPZ25UF4DPsEam/I1386W3aMMMNEx6We+nxafCi0xD3VfKZ89s4pBRcY0lPrc6o1KlyFEuKhfWAZ73lWea5a6ZZsYHxAiOlH5kZNRUkkmSRa/iVNbohQmL1e1FA6wF3L/ARfEhofsphxWUvy7Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623284; c=relaxed/simple;
	bh=bWRUPKaBCAepxJb/nx46InbXzDqKmciFWUI76EG4SMM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BLQKC/ft6H31Rm1b535WSQmcMGXr0yp6UijGA91NmmRjWWwkRVk8f9IyPTxLWAPRiOF2caD1MUnQBKvxIiWUSdIsbjB4IF2EYl5WLAQWjKKh1e4W7veMV1hnZRhZ0K6/r6j9k7prjLa+4NRIK0rEHMzI8Apxvz3fcn/y4kCMKOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=NAaHfk4b; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fec34f94abso55171685ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623283; x=1724228083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MEQw5iaWeTmNPlPoMjn14hYPwuqLggUjPikbJBTJ9LE=;
        b=NAaHfk4bxCoGekDjITscXso1KL+SOJ7Q8pIZFx1MFeAqIvAA6KcQdLcmXQ0lxjV5/V
         bWwPl5MPKM4eJiMp4AQpvfv2UgMTSGcZkYL5DnklYBSz+REr8jjM1oeTeY0Gjp5Pj6Kt
         ZnlL/XNbRVFNcPHe6MqXzjMbUcpkGVsiY08v0rLtiXN0QAlbo1Cjdxw28ANaLczBxpTV
         b9ZI7P0H9nk70a+2hTYhEYo5bux4bVf8QLKxqWE25Wsb8/jj3YBR+xDydJMa3EnSdCkV
         P7MAFLXLXc+D7JTNasp42ep4nYuIiEYObsm+1X9QVsxxsAnrbJQ0F75iRUjGE8WxReMQ
         Ywfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623283; x=1724228083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEQw5iaWeTmNPlPoMjn14hYPwuqLggUjPikbJBTJ9LE=;
        b=oIQ890JIryq2AsHQZtnrrT1dab+sjA32XdoV0FVyHNk6aQgIHnj+dWRJEgvzI3dOe1
         xSvPKIrrh8zxPqntm7s4fesNt1w/9i37rRKx0oxDy3ApFEUHaRHc5sxvh+vGVq3peWS3
         93R6Fnqf2BFWlayeZIcZIKeyCj7SQA+ZH+oE0XCRfvpCqKmOanmws2cJu8+Dg0fmXBU0
         hegoPxGhQwnM1yg7V7INXH+0jx0AGWJzILaHB79GhlqEdKFfPOGunb4WJzunCX7OfZpv
         g13wOazZ1VLqgIQ5PH7zYlLBOOAymJzRuoMtxifmQUpcbBpeQmO7+njw8kQk/3+Q+4aX
         hn1A==
X-Gm-Message-State: AOJu0Yw00Cdwxp60IKG8ARkTZizxMrVJYz2kc1sHasmg37qvlv/LoFPF
	KJ4BKa/kL1mngvdnYnIJKgvUEOPcRilszGg6NCWoY0rrGWLo97BLWmgKHE0NCJY=
X-Google-Smtp-Source: AGHT+IEcmQD/T7vtGlaVu0Q1HEccmE5Hnh2PFCTQZYTL5V2cFC70GH7Xpcj3f6WIrZqy6t2xP38Q5w==
X-Received: by 2002:a17:902:c402:b0:201:e49e:aae9 with SMTP id d9443c01a7336-201e49eda06mr363875ad.44.1723623282655;
        Wed, 14 Aug 2024 01:14:42 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:42 -0700 (PDT)
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
Subject: [PATCH v3 02/10] riscv: Add ISA extension parsing for pointer masking
Date: Wed, 14 Aug 2024 01:13:29 -0700
Message-ID: <20240814081437.956855-3-samuel.holland@sifive.com>
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

The RISC-V Pointer Masking specification defines three extensions:
Smmpm, Smnpm, and Ssnpm. Add support for parsing each of them. The
specific extension which provides pointer masking support to userspace
(Supm) depends on the kernel's privilege mode, so provide a macro to
abstract this selection.

Smmpm implies the existence of the mseccfg CSR. As it is the only user
of this CSR so far, there is no need for an Xlinuxmseccfg extension.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Rebase on riscv/for-next (ISA extension list conflicts)
 - Remove RISCV_ISA_EXT_SxPM, which was not used anywhere

Changes in v2:
 - Provide macros for the extension affecting the kernel and userspace

 arch/riscv/include/asm/hwcap.h | 5 +++++
 arch/riscv/kernel/cpufeature.c | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 5a0bd27fd11a..aff21c6fc9b6 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -92,6 +92,9 @@
 #define RISCV_ISA_EXT_ZCF		83
 #define RISCV_ISA_EXT_ZCMOP		84
 #define RISCV_ISA_EXT_ZAWRS		85
+#define RISCV_ISA_EXT_SMMPM		86
+#define RISCV_ISA_EXT_SMNPM		87
+#define RISCV_ISA_EXT_SSNPM		88
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
@@ -100,8 +103,10 @@
 
 #ifdef CONFIG_RISCV_M_MODE
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
+#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
 #else
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
+#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
 #endif
 
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b3b9735cb19a..ba3dc16e14dc 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -377,9 +377,12 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
 	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
+	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
+	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
+	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
-- 
2.45.1


