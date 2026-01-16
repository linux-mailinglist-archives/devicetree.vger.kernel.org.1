Return-Path: <devicetree+bounces-255825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 152D5D29F8F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 03:14:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A75C5302C6EA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9C43396F0;
	Fri, 16 Jan 2026 02:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="T2tNuTft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734183376AC
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529465; cv=none; b=BOWhN5xFQ9I9gNUAJuQLJa7CAlcWRDNyYRmpFa++GnuMjfEtZNhr4Dr5kPsTAp0+h1MVsS2r8CTUOVFNntAwwsvpokuuGRPfPpEwvZeGN/7BwZDllEVwEu0IjIs/lgMzo7FzvIWsOxRbATwXqBr8HGJdILfXQUT29kVLl126W+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529465; c=relaxed/simple;
	bh=ong0g8BWW13j2+imyHoB4E24TMNHE1kNgiYLhqR3Y00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GvddscrNBaW1Es/lKw4plU0X9Jpp6M3t1wl5gRwvTZFBiiOq7YkQPA/C6P8pP7/57ZkxX5pSurZSB5FJZhBUA3bIq3hnjDu/ohhgu1R9BVKeCH094oXkkFk6FZl5Sja64+kO6QGIzLwr1Td22HBsP2Gba6QiCLHgItDFtw8BK5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=T2tNuTft; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-34ca40c1213so703814a91.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768529463; x=1769134263; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BXny++fuaUYh/9d0tAiw1EejR1b07lFNBxlkkPwo9D4=;
        b=T2tNuTftipbCkg3h+/OPUAHRxCb8UvzeS6VI5kffLByItNAnlMr2xKsPqP4ItHavp7
         i6ld5jv9V8c2gKqcV5f3vRWm1gMZxTUHAAiw+Wp60FoO4tPSj3ICsQ1wV2RobkTt2f3j
         I1xU48xhmVAZphhqUkT1oheBVK2mPfjseqadloey2dwQgeAnglvrzXkl6rJOBPHy25VK
         VA4PGp9ml6i/AbTaOkRggTcYhlm03bnmrnzzuTP+BPt3WvHM0dFw90viBGzeZX9ZuzN6
         NxXByEFrcubWFBjg0z2MObCLUv+xBNb8BD3DUihRA9PZyM84xrIyLECZqPY90MJOMEWE
         nxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768529463; x=1769134263;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BXny++fuaUYh/9d0tAiw1EejR1b07lFNBxlkkPwo9D4=;
        b=eTOV2aGRze+Y5HsXfyH19WukINbwrg1StV9jCdLbRy+GMG8mo6EORf7YY9e0/IZ2Ck
         GCVqC7LAkggbYU2CaU3kG2QAFaLdBKYW0akItP8jl6ysQZuzrTWLI8L7FnDGcorC/lOr
         HSYwvdpoEMF3cKSSON3Iu285bqZsPt68JqeCPt3zwuheehodGQoIvkXn19OUWXjSZIEd
         s1yXzWF5cb8dWZ71p40fQksEVgngXI35uKn1g+qMN6va8jZrfcoRYsEzjnFAA6z+zL2j
         4ibjtJUNCBL8/8wLum/1ZEOvr2vVzsOEnyj7i22us25H1D+gPv2VL765PFjNLTnGZwWZ
         uGWw==
X-Forwarded-Encrypted: i=1; AJvYcCUpJnl9jlBINPd8OM4FaTA/zQqNGxx1cVNNpEAOu4nNg+f2jgXKQrnorAby/W/LeJ4aMzE0CDxtXE2u@vger.kernel.org
X-Gm-Message-State: AOJu0YzADLswaN6QYmJFFfD3F/l2kecRy5tWVb+6oXT0SjAO5MGqbRDK
	rfMuvR+xUan8VsRyvv7H8+6N1HQulJmyqFONRQjmbF5BqNeW/DRobdyG8N4RQm1sB70=
X-Gm-Gg: AY/fxX4HMl0LDSpzF8jID9bmvCRB6S3xl4WeC8TAML5D4c6rfPJANbjBSS7nOo+xZ5/
	984WwZQ0KFm+KvLafEaOtDczN88+n3016DUHNF2ogfCVJ5vg1xc8M0TF09PUuYePgGlOrOT9CIr
	zhKvJaHNNWP8p2EvixdsPJcoQVj8Hfy6pdLqWDUuZqVG6xfqqQaC6/QuHVeiNoboGkREieTKWBw
	GTdTcrEGpxH0DOW6XjDjiANGWaNL6fUkh4/kh9voymvIv0TVLlZRIlr3aZnAkCDIUx79r0GPm7l
	F0VPvVtWd02P5zw5L3WdXnW/4LUgIWyQxADfxugLUffHN4KrATsqwYbLlEfKiMM+2Ngm4gP6gYh
	e/3CcXrrPWt9rnNOEN9187SCnEiyo/lPX3jPIwQ9Hvb7uHb5gV/sB/oquBA59rS0Ob5BU4JfiDQ
	ZzvULuilKdoF1Ikh8PYnNlHmBv/JahvHeLQrU1X3uZ2LaGTXNfb770SQ==
X-Received: by 2002:a17:90b:1e0b:b0:34c:f5b5:c1b6 with SMTP id 98e67ed59e1d1-35272f028a0mr1410360a91.12.1768529462750;
        Thu, 15 Jan 2026 18:11:02 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35273298968sm364317a91.0.2026.01.15.18.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 18:11:02 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 16 Jan 2026 10:10:32 +0800
Subject: [PATCH 2/3] riscv: cpufeature: Add ISA extension parsing for Supm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-supm-ext-id-v1-2-5fcf778ba4a6@riscstar.com>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
In-Reply-To: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Supm has been ratified in the RISC-V Pointer Masking specification
(Version 1.0, 10/2024) and is mandated in RVA23 Profiles (Version 1.0,
2024-10-17) for RVA23U64. Supm indicates userspace pointer masking
support.

Remove the previous macro aliasing of Supm to Ssnpm/Smnpm in hwcap.h,
treating Supm as a distinct RISC-V ISA extension ID.

Add ISA parsing logic for Supm, and implement a validator to ensure
that Supm is only reported as available if Kconfig allows it and the
underlying Ssnpm (for supervisor mode) or Smnpm (for machine mode)
extension is present. Supm relies on Ssnpm or Smnpm to provide the
underlying hardware implementation.

With this change, "supm" will be reported (when available) in
/proc/cpuinfo as part of the "isa" and "hart isa" string.

Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@spud/#r [1]
Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@sifive.com/#r [2]
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/include/asm/hwcap.h |  3 +--
 arch/riscv/kernel/cpufeature.c | 35 +++++++++++++++++++++++++++++++++--
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 4369a2338541..7653e5cff9ae 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -110,6 +110,7 @@
 #define RISCV_ISA_EXT_ZALASR		101
 #define RISCV_ISA_EXT_ZILSD		102
 #define RISCV_ISA_EXT_ZCLSD		103
+#define RISCV_ISA_EXT_SUPM		104
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
@@ -118,10 +119,8 @@
 
 #ifdef CONFIG_RISCV_M_MODE
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
-#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
 #else
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
-#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
 #endif
 
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index fa591aff9d33..39680280f858 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -296,6 +296,27 @@ static int riscv_ext_svadu_validate(const struct riscv_isa_ext_data *data,
 	return 0;
 }
 
+static int riscv_ext_supm_validate(const struct riscv_isa_ext_data *data,
+				   const unsigned long *isa_bitmap)
+{
+	if (!IS_ENABLED(CONFIG_RISCV_ISA_SUPM))
+		return -EINVAL;
+
+	/*
+	 * Supm requires Ssnpm for S-mode or Smnpm for M-mode to provide
+	 * pointer masking for the U-mode execution environment.
+	 */
+	if (IS_ENABLED(CONFIG_RISCV_M_MODE)) {
+		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SMNPM))
+			return 0;
+	} else {
+		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SSNPM))
+			return 0;
+	}
+
+	return -EPROBE_DEFER;
+}
+
 static const unsigned int riscv_a_exts[] = {
 	RISCV_ISA_EXT_ZAAMO,
 	RISCV_ISA_EXT_ZALRSC,
@@ -429,6 +450,15 @@ static const unsigned int riscv_c_exts[] = {
 	RISCV_ISA_EXT_ZCD,
 };
 
+/*
+ * Smnpm and Ssnpm provide pointer masking for the next lower privilege mode
+ * (U-mode), thus enabling Supm. Both extensions imply the same subset.
+ */
+static const unsigned int riscv_supm_exts[] = {
+	RISCV_ISA_EXT_XLINUXENVCFG,
+	RISCV_ISA_EXT_SUPM
+};
+
 /*
  * The canonical order of ISA extension names in the ISA string is defined in
  * chapter 27 of the unprivileged specification.
@@ -552,12 +582,13 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA_VALIDATE(zvkt, RISCV_ISA_EXT_ZVKT, riscv_ext_vector_crypto_validate),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
-	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_supm_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
-	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_supm_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
+	__RISCV_ISA_EXT_DATA_VALIDATE(supm, RISCV_ISA_EXT_SUPM, riscv_ext_supm_validate),
 	__RISCV_ISA_EXT_DATA(svade, RISCV_ISA_EXT_SVADE),
 	__RISCV_ISA_EXT_DATA_VALIDATE(svadu, RISCV_ISA_EXT_SVADU, riscv_ext_svadu_validate),
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),

-- 
2.43.0


